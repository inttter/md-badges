import { useRef } from 'react'
import { useVirtualizer } from '@tanstack/react-virtual'
import BadgeRow from './BadgeRow'

export default function VirtualBadgeList({ items, selected, toggle }) {
    const parentRef = useRef(null)

    const rowVirtualizer = useVirtualizer({
        count: items.length,
        getScrollElement: () => parentRef.current,
        estimateSize: () => 56,
        overscan: 6,
    })

    return (
        <div
            ref={parentRef}
            style={{
                height: 400,
                overflow: 'auto',
                border: '1px solid #eee',
            }}
        >
            <div
                style={{
                    height: rowVirtualizer.getTotalSize(),
                    position: 'relative',
                }}
            >
                {rowVirtualizer.getVirtualItems().map(vRow => {
                    const item = items[vRow.index]

                    return (
                        <div
                            key={item.code_md}
                            style={{
                                position: 'absolute',
                                top: 0,
                                left: 0,
                                width: '100%',
                                transform: `translateY(${vRow.start}px)`,
                            }}
                        >
                            <BadgeRow
                                item={item}
                                checked={selected.has(item.code_md)}
                                toggle={toggle}
                            />
                        </div>
                    )
                })}
            </div>
        </div>
    )
}
