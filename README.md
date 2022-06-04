# Cryptony Blockchains Data

Cryptony Blockchains Data

[Cryptony Website](https://cryptony.app)


[Bitcoin blocks](bitcoin-blocks)

[Bitcoin blocks tsv](bitcoin-blocks/tsv)

[Bitcoin blocks README](bitcoin-blocks/README.md)

<strong>Table descriptions</strong>

<p>Further the documentation describes each of the supported tables. Each documentation section contains a general description, and a table listing the table columns (fields) in the following format:</p>

| Column | Type | Description | Q? | S? | A? | C? |
| --- | --- | --- | --- | --- | --- | --- |
| Column name | Column type | Column description | Is it possible to filter by this column? | Is it possible to sort by this column? | Is it possible to group by this column? | Is it possible to apply aggregation functions (like sum) to this column? |

<p>The following marks are possible for the <code>Q?</code> column:</p>

<ul>
<li><code>=</code> — possible to use equalities only</li>
<li><code>*</code> — possible to use both equalities and inequalities</li>
<li><code>⌘</code> — possible to use special format (applies to timestamp fields)</li>
<li><code>~</code> — possible to use the <code>LIKE</code> operator</li>
<li><code>^</code> — possible to use the <code>STARTS WITH</code> operator</li>
<li><code>*≈</code> — possible to use both equalities and inequalities, may return some results which are a bit out of the set range (this is used to swiftly search over  the Ethereum blockchain that uses too long wei numbers for transfer amounts)</li>
</ul>

<p>For the <code>S?</code>, <code>A?</code>, and <code>C?</code> columns it's either <code>+</code> (which means "yes") or nothing. <code>⌘</code> means some additional options may be available (in case of aggregation it may either mean additional fields like <code>year</code> are available, or in case of functions — only <code>min</code> and <code>max</code> are available).</p>

<h2>Tables</h2>
