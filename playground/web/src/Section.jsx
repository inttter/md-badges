import BadgeList from './VirtualBadgeList'

export default function Section({ section, selected, toggle }) {
    return (
        <section style={{ marginBottom: 32 }}>
            <h3>{section.title}</h3>

            <BadgeList
                items={section.items}
                selected={selected}
                toggle={toggle}
            />
        </section>
    )
}
