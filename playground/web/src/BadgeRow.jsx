import React from 'react'

const BadgeRow = React.memo(({ item, checked, toggle }) => {
    return (
        <div
            style={{
                display: 'grid',
                gridTemplateColumns: '32px 160px 1fr',
                alignItems: 'center',
                padding: '6px 8px',
                gap: 8,
                borderBottom: '1px solid #eee',
            }}
        >
            <input
                type="checkbox"
                checked={checked}
                onChange={() => toggle(item.code_md)}
            />

            <img
                src={item.preview_url_md}
                alt=""
                height={20}
                loading="lazy"
                draggable={false}
            />

            <code style={{ fontSize: 12 }}>
                {item.code_md}
            </code>
        </div>
    )
})

export default BadgeRow
