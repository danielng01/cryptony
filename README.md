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

<h3><a name="link_102"></a> <code>blocks</code> table</h3>

<table>
<thead>
<tr><th>Column</th><th>Type</th><th>Description</th><th>Q?</th><th>S?</th><th>A?</th><th>C?</th></tr>
</thead>
<tbody>
<tr><td>id</td><td>int</td><td>Block height</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>⌘</code></td></tr>
<tr><td>hash</td><td>string <code>[0-9a-f]{64}</code></td><td>Block hash</td><td><code>=</code></td><td><code>+</code></td><td></td><td></td></tr>
<tr><td>date</td><td>string <code>YYYY-MM-DD</code></td><td>Block date (UTC)</td><td></td><td></td><td><code>⌘</code></td><td></td></tr>
<tr><td>time</td><td>string <code>YYYY-MM-DD HH:ii:ss</code></td><td>Block time (UTC)</td><td><code>⌘</code></td><td><code>+</code></td><td></td><td></td></tr>
<tr><td>median_time</td><td>string <code>YYYY-MM-DD HH:ii:ss</code></td><td>Block median time (UTC)</td><td></td><td><code>+</code></td><td></td><td></td></tr>
<tr><td>size</td><td>int</td><td>Block size in bytes</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>stripped_size †</td><td>int</td><td>Block size in bytes without taking witness information into account</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>weight †</td><td>int</td><td>Block weight in weight units</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>version</td><td>int</td><td>Version field</td><td><code>*</code></td><td><code>+</code></td><td><code>+</code></td><td></td></tr>
<tr><td>version_hex</td><td>string <code>[0-9a-f]*</code></td><td>Version field in hex</td><td></td><td></td><td></td><td></td></tr>
<tr><td>version_bits</td><td>string <code>[01]{30}</code></td><td>Version field in binary format</td><td></td><td></td><td></td><td></td></tr>
<tr><td>merkle_root</td><td><code>[0-9a-f]{64}</code></td><td>Merkle root hash</td><td></td><td></td><td></td><td></td></tr>
<tr><td>final_sapling_root §</td><td><code>[0-9a-f]{64}</code></td><td>Sapling root hash</td><td></td><td></td><td></td><td></td></tr>
<tr><td>nonce</td><td>int</td><td>Nonce value</td><td><code>*</code></td><td><code>+</code></td><td></td><td></td></tr>
<tr><td>solution §</td><td><code>[0-9a-f]*</code></td><td>Solution value</td><td></td><td></td><td></td><td></td></tr>
<tr><td>anchor §</td><td><code>[0-9a-f]*</code></td><td>Anchor value</td><td></td><td></td><td></td><td></td></tr>
<tr><td>bits</td><td>int</td><td>Bits field</td><td><code>*</code></td><td><code>+</code></td><td></td><td></td></tr>
<tr><td>difficulty</td><td>float</td><td>Difficulty</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>chainwork</td><td>string <code>[0-9a-f]{64}</code></td><td>Chainwork field</td><td></td><td></td><td></td><td></td></tr>
<tr><td>coinbase_data_hex</td><td>string <code>[0-9a-f]*</code></td><td>Hex information contained in the input of the coinbase transaction</td><td><code>^</code></td><td></td><td></td><td></td></tr>
<tr><td>transaction_count</td><td>int</td><td>Number of transactions in the block</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>witness_count †</td><td>int</td><td>Number of transactions in the block containing witness information</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>input_count</td><td>int</td><td>Number of inputs in all block transactions</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>output_count</td><td>int</td><td>Number of outputs in all block transactions</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>input_total</td><td>int</td><td>Sum of inputs in satoshi</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>input_total_usd</td><td>float</td><td>Sum of outputs in USD</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>output_total</td><td>int</td><td>Sum of outputs in satoshi</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>output_total_usd</td><td>float</td><td>Sum of outputs in USD</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>fee_total</td><td>int</td><td>Total fee in Satoshi</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>fee_total_usd</td><td>float</td><td>Total fee in USD</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>fee_per_kb</td><td>float</td><td>Fee per kilobyte (1000 bytes of data) in satoshi</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>fee_per_kb_usd</td><td>float</td><td>Fee for kilobyte of data in USD</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>fee_per_kwu †</td><td>float</td><td>Fee for 1000 weight units of data in satoshi</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>fee_per_kwu_usd †</td><td>float</td><td>Fee for 1000 weight units of data in USD</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>cdd_total</td><td>float</td><td>Number of coindays destroyed by all transactions of the block</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>generation</td><td>int</td><td>Miner reward for the block in satoshi</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>generation_usd</td><td>float</td><td>Miner reward for the block in USD</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>reward</td><td>int</td><td>Miner total reward (reward + total fee) in satoshi</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>reward_usd</td><td>float</td><td>Miner total reward  (reward + total fee) in USD</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
<tr><td>guessed_miner</td><td>string <code>.*</code></td><td>The supposed name of the miner who found the block (the heuristic is based on <code>coinbase_data_bin</code> and the addresses to which the reward goes)</td><td><code>=</code></td><td><code>+</code></td><td><code>+</code></td><td></td></tr>
<tr><td>is_aux ‡</td><td>boolean</td><td>Whether a block was mined using AuxPoW</td><td><code>=</code></td><td></td><td><code>+</code></td><td></td></tr>
<tr><td>cbtx ※</td><td>string <code>.*</code></td><td>Coinbase transaction data (encoded JSON)</td><td></td><td></td><td></td><td></td></tr>
<tr><td>shielded_value_delta_total §</td><td>int</td><td>Amount transferred into the shielded pool</td><td><code>*</code></td><td><code>+</code></td><td></td><td><code>+</code></td></tr>
</tbody>
</table>
