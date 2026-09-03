Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/node_javascript?download=true
inline.NumInlined: 5003
inline.NumDeleted: 1111
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0
@.str.1101 = private unnamed_addr constant [2497 x i8] c"// Copyright 2017 the V8 project authors. All rights reserved.\0A// Use of this source code is governed by a BSD-style license that can be\0A// found in the LICENSE file.\0A\0Aexport class BaseArgumentsProcessor {\0A  constructor(args) {\0A    this.args_ = args.slice();\0A    this.result_ = this.getDefaultResults();\0A    console.assert(this.result_ !== undefined)\0A    console.assert(this.result_.logFileName !== undefined);\0A    this.argsDispatch_ = this.getArgsDispatch();\0A    console.assert(this.argsDispatch_ !== undefined);\0A  }\0A\0A  getDefaultResults() {\0A    throw \22Implement in getDefaultResults in subclass\22;\0A  }\0A\0A  getArgsDispatch() {\0A    throw \22Implement getArgsDispatch in subclass\22;\0A  }\0A\0A  result() { return this.result_ }\0A\0A  static process(args) {\0A    const processor = new this(args);\0A    if (processor.parse()) {\0A      return processor.result();\0A    } else {\0A      processor.printUsageAndExit();\0A      return false;\0A    }\0A  }\0A\0A  printUsageAndExit() {\0A    console.log('Cmdline args: [options] [log-file-name]\\n' +\0A          'Default log file name is \22' +\0A          this.result_.logFileName + '\22.\\n');\0A          console.log('Options:');\0A    for (const arg in this.argsDispatch_) {\0A      const synonyms = [arg];\0A      const dispatch = this.argsDispatch_[arg];\0A      for (const synArg in this.argsDispatch_) {\0A        if (arg !== synArg && dispatch === this.argsDispatch_[synArg]) {\0A          synonyms.push(synArg);\0A          delete this.argsDispatch_[synArg];\0A        }\0A      }\0A      console.log(`  ${synonyms.join(', ').padEnd(20)} ${dispatch[2]}`);\0A    }\0A    quit(2);\0A  }\0A\0A  parse() {\0A    while (this.args_.length) {\0A      let arg = this.args_.shift();\0A      if (arg.charAt(0) != '-') {\0A        this.result_.logFileName = arg;\0A        continue;\0A      }\0A      let userValue = null;\0A      const eqPos = arg.indexOf('=');\0A      if (eqPos != -1) {\0A        userValue = arg.substr(eqPos + 1);\0A        arg = arg.substr(0, eqPos);\0A      }\0A      if (arg in this.argsDispatch_) {\0A        const dispatch = this.argsDispatch_[arg];\0A        const property = dispatch[0];\0A        const defaultValue = dispatch[1];\0A        if (typeof defaultValue == \22function\22) {\0A          userValue = defaultValue(userValue);\0A        } else if (userValue == null) {\0A          userValue = defaultValue;\0A        }\0A        this.result_[property] = userValue;\0A      } else {\0A        return false;\0A      }\0A    }\0A    return true;\0A  }\0A}\0A\0Aexport function parseBool(str) {\0A  if (str == \22true\22 || str == \221\22) return true;\0A  return false;\0A}\0A\00", align 1
@.str.1102 = private unnamed_addr constant [9844 x i8] c"// Copyright 2009 the V8 project authors. All rights reserved.\0A// Redistribution and use in source and binary forms, with or without\0A// modification, are permitted provided that the following conditions are\0A// met:\0A//\0A//     * Redistributions of source code must retain the above copyright\0A//       notice, this list of conditions and the following disclaimer.\0A//     * Redistributions in binary form must reproduce the above\0A//       copyright notice, this list of conditions and the following\0A//       disclaimer in the documentation and/or other materials provided\0A//       with the distribution.\0A//     * Neither the name of Google Inc. nor the names of its\0A//       contributors may be used to endorse or promote products derived\0A//       from this software without specific prior written permission.\0A//\0A// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS\0A// \22AS IS\22 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\0A// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR\0A// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT\0A// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,\0A// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT\0A// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\0A// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\0A// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\0A// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\0A// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\0A\0Aimport { SplayTree } from \22./splaytree.mjs\22;\0A\0A/**\0A* The number of alignment bits in a page address.\0A*/\0Aconst kPageAlignment = 12;\0A/**\0A* Page size in bytes.\0A*/\0Aconst kPageSize =  1 << kPageAlignment;\0A\0A/**\0A * Constructs a mapper that maps addresses into code entries.\0A */\0Aexport class CodeMap {\0A  /**\0A   * Dynamic code entries. Used for JIT compiled code.\0A   */\0A  dynamics_ = new SplayTree();\0A\0A  /**\0A   * Name generator for entries having duplicate names.\0A   */\0A  dynamicsNameGen_ = new NameGenerator();\0A\0A  /**\0A   * Static code entries. Used for statically compiled code.\0A   */\0A  statics_ = new SplayTree();\0A\0A  /**\0A   * Libraries entries. Used for the whole static code libraries.\0A   */\0A  libraries_ = new SplayTree();\0A\0A  /**\0A   * Map of memory pages occupied with static code.\0A   */\0A  pages_ = new Set();\0A\0A  constructor(useBigIntAddresses=false) {\0A    this.useBigIntAddresses = useBigIntAddresses;\0A    this.kPageSize = useBigIntAddresses ? BigInt(kPageSize) : kPageSize;\0A    this.kOne = useBigIntAddresses ? 1n : 1;\0A    this.kZero = useBigIntAddresses ? 0n : 0;\0A  }\0A\0A  /**\0A   * Adds a code entry that might overlap with static code (e.g. for builtins).\0A   *\0A   * @param {number} start The starting address.\0A   * @param {CodeEntry} codeEntry Code entry object.\0A   */\0A  addAnyCode(start, codeEntry) {\0A    const pageAddr = (start / this.kPageSize) | this.kZero;\0A    if (!this.pages_.has(pageAddr)) return this.addCode(start, codeEntry);\0A    // We might have loaded static code (builtins, bytecode handlers)\0A    // and we get more information later in v8.log with code-creation events.\0A    // Overwrite the existing entries in this case.\0A    let result = this.findInTree_(this.statics_, start);\0A    if (result === null) return this.addCode(start, codeEntry);\0A\0A    const removedNode = this.statics_.remove(start);\0A    this.deleteAllCoveredNodes_(\0A        this.statics_, start, start + removedNode.value.size);\0A    this.statics_.insert(start, codeEntry);\0A  }\0A\0A\0A  /**\0A   * Adds a dynamic (i.e. moveable and discardable) code entry.\0A   *\0A   * @param {number} start The starting address.\0A   * @param {CodeEntry} codeEntry Code entry object.\0A   */\0A  addCode(start, codeEntry) {\0A    this.deleteAllCoveredNodes_(this.dynamics_, start, start + codeEntry.size);\0A    this.dynamics_.insert(start, codeEntry);\0A  }\0A\0A  /**\0A   * Moves a dynamic code entry. Throws an exception if there is no dynamic\0A   * code entry with the specified starting address.\0A   *\0A   * @param {number} from The starting address of the entry being moved.\0A   * @param {number} to The destination address.\0A   */\0A  moveCode(from, to) {\0A    const removedNode = this.dynamics_.remove(from);\0A    this.deleteAllCoveredNodes_(this.dynamics_, to, to + removedNode.value.size);\0A    this.dynamics_.insert(to, removedNode.value);\0A  }\0A\0A  /**\0A   * Discards a dynamic code entry. Throws an exception if there is no dynamic\0A   * code entry with the specified starting address.\0A   *\0A   * @param {number} start The starting address of the entry being deleted.\0A   */\0A  deleteCode(start) {\0A    const removedNode = this.dynamics_.remove(start);\0A  }\0A\0A  /**\0A   * Adds a library entry.\0A   *\0A   * @param {number} start The starting address.\0A   * @param {CodeEntry} codeEntry Code entry object.\0A   */\0A  addLibrary(start, codeEntry) {\0A    this.markPages_(start, start + codeEntry.size);\0A    this.libraries_.insert(start, codeEntry);\0A  }\0A\0A  /**\0A   * Adds a static code entry.\0A   *\0A   * @param {number} start The starting address.\0A   * @param {CodeEntry} codeEntry Code entry object.\0A   */\0A  addStaticCode(start, codeEntry) {\0A    this.statics_.insert(start, codeEntry);\0A  }\0A\0A  /**\0A   * @private\0A   */\0A  markPages_(start, end) {\0A    for (let addr = start; addr <= end; addr += this.kPageSize) {\0A      this.pages_.add((addr / this.kPageSize) | this.kZero);\0A    }\0A  }\0A\0A  /**\0A   * @private\0A   */\0A  deleteAllCoveredNodes_(tree, start, end) {\0A    const to_delete = [];\0A    let addr = end - this.kOne;\0A    while (addr >= start) {\0A      const node = tree.findGreatestLessThan(addr);\0A      if (node === null) break;\0A      const start2 = node.key, end2 = start2 + node.value.size;\0A      if (start2 < end && start < end2) to_delete.push(start2);\0A      addr = start2 - this.kOne;\0A    }\0A    for (let i = 0, l = to_delete.length; i < l; ++i) tree.remove(to_delete[i]);\0A  }\0A\0A  /**\0A   * @private\0A   */\0A  isAddressBelongsTo_(addr, node) {\0A    return addr >= node.key && addr < (node.key + node.value.size);\0A  }\0A\0A  /**\0A   * @private\0A   */\0A  findInTree_(tree, addr) {\0A    const node = tree.findGreatestLessThan(addr);\0A    return node !== null && this.isAddressBelongsTo_(addr, node) ? node : null;\0A  }\0A\0A  /**\0A   * Finds a code entry that contains the specified address. Both static and\0A   * dynamic code entries are considered. Returns the code entry and the offset\0A   * within the entry.\0A   *\0A   * @param {number} addr Address.\0A   */\0A  findAddress(addr) {\0A    const pageAddr = (addr / this.kPageSize) | this.kZero;\0A    if (this.pages_.has(pageAddr)) {\0A      // Static code entries can contain \22holes\22 of unnamed code.\0A      // In this case, the whole library is assigned to this address.\0A      let result = this.findInTree_(this.statics_, addr);\0A      if (result === null) {\0A        result = this.findInTree_(this.libraries_, addr);\0A        if (result === null) return null;\0A      }\0A      return {entry: result.value, offset: addr - result.key};\0A    }\0A    const max = this.dynamics_.findMax();\0A    if (max === null) return null;\0A    const min = this.dynamics_.findMin();\0A    if (addr >= min.key && addr < (max.key + max.value.size)) {\0A      const dynaEntry = this.findInTree_(this.dynamics_, addr);\0A      if (dynaEntry === null) return null;\0A      // Dedupe entry name.\0A      const entry = dynaEntry.value;\0A      if (!entry.nameUpdated_) {\0A        entry.name = this.dynamicsNameGen_.getName(entry.name);\0A        entry.nameUpdated_ = true;\0A      }\0A      return {entry, offset: addr - dynaEntry.key};\0A    }\0A    return null;\0A  }\0A\0A  /**\0A   * Finds a code entry that contains the specified address. Both static and\0A   * dynamic code entries are considered.\0A   *\0A   * @param {number} addr Address.\0A   */\0A  findEntry(addr) {\0A    const result = this.findAddress(addr);\0A    return result !== null ? result.entry : null;\0A  }\0A\0A  /**\0A   * Returns a dynamic code entry using its starting address.\0A   *\0A   * @param {number} addr Address.\0A   */\0A  findDynamicEntryByStartAddress(addr) {\0A    const node = this.dynamics_.find(addr);\0A    return node !== null ? node.value : null;\0A  }\0A\0A  /**\0A   * Returns an array of all dynamic code entries.\0A   */\0A  getAllDynamicEntries() {\0A    return this.dynamics_.exportValues();\0A  }\0A\0A  /**\0A   * Returns an array of pairs of all dynamic code entries and their addresses.\0A   */\0A  getAllDynamicEntriesWithAddresses() {\0A    return this.dynamics_.exportKeysAndValues();\0A  }\0A\0A  /**\0A   * Returns an array of all static code entries.\0A   */\0A  getAllStaticEntries() {\0A    return this.statics_.exportValues();\0A  }\0A\0A  /**\0A   * Returns an array of pairs of all static code entries and their addresses.\0A   */\0A  getAllStaticEntriesWithAddresses() {\0A    return this.statics_.exportKeysAndValues();\0A  }\0A\0A  /**\0A   * Returns an array of all library entries.\0A   */\0A  getAllLibraryEntries() {\0A    return this.libraries_.exportValues();\0A  }\0A\0A  /**\0A   * Returns an array of pairs of all library entries and their addresses.\0A   */\0A  getAllLibraryEntriesWithAddresses() {\0A    return this.libraries_.exportKeysAndValues();\0A  }\0A}\0A\0A\0Aexport class CodeEntry {\0A  constructor(size, opt_name, opt_type) {\0A    /** @type {number} */\0A    this.size = size;\0A    /** @type {string} */\0A    this.name = opt_name || '';\0A    /** @type {string} */\0A    this.type = opt_type || '';\0A    this.nameUpdated_ = false;\0A    /** @type {?string} */\0A    this.source = undefined;\0A  }\0A\0A  getName() {\0A    return this.name;\0A  }\0A\0A  toString() {\0A    return this.name + ': ' + this.size.toString(16);\0A  }\0A\0A  getSourceCode() {\0A    return '';\0A  }\0A\0A  get sourcePosition() {\0A    return this.logEntry.sourcePosition;\0A  }\0A}\0A\0Aclass NameGenerator {\0A  knownNames_ = { __proto__:null }\0A  getName(name) {\0A    if (!(name in this.knownNames_)) {\0A      this.knownNames_[name] = 0;\0A      return name;\0A    }\0A    const count = ++this.knownNames_[name];\0A    return name + ' {' + count + '}';\0A  };\0A}\0A\00", align 1
@.str.1103 = private unnamed_addr constant [3234 x i8] c"// Copyright 2009 the V8 project authors. All rights reserved.\0A// Redistribution and use in source and binary forms, with or without\0A// modification, are permitted provided that the following conditions are\0A// met:\0A//\0A//     * Redistributions of source code must retain the above copyright\0A//       notice, this list of conditions and the following disclaimer.\0A//     * Redistributions in binary form must reproduce the above\0A//       copyright notice, this list of conditions and the following\0A//       disclaimer in the documentation and/or other materials provided\0A//       with the distribution.\0A//     * Neither the name of Google Inc. nor the names of its\0A//       contributors may be used to endorse or promote products derived\0A//       from this software without specific prior written permission.\0A//\0A// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS\0A// \22AS IS\22 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\0A// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR\0A// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT\0A// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,\0A// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT\0A// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\0A// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\0A// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\0A// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\0A// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\0A\0A\0A/**\0A * Constructs a ConsArray object. It is used mainly for tree traversal.\0A * In this use case we have lots of arrays that we need to iterate\0A * sequentally. The internal Array implementation is horribly slow\0A * when concatenating on large (10K items) arrays due to memory copying.\0A * That's why we avoid copying memory and insead build a linked list\0A * of arrays to iterate through.\0A *\0A * @constructor\0A */\0Aexport class ConsArray {\0A  constructor() {\0A    this.tail_ = new ConsArrayCell(null, null);\0A    this.currCell_ = this.tail_;\0A    this.currCellPos_ = 0;\0A  }\0A  /**\0A   * Concatenates another array for iterating. Empty arrays are ignored.\0A   * This operation can be safely performed during ongoing ConsArray\0A   * iteration.\0A   *\0A   * @param {Array} arr Array to concatenate.\0A   */\0A  concat(arr) {\0A    if (arr.length > 0) {\0A      this.tail_.data = arr;\0A      this.tail_ = this.tail_.next = new ConsArrayCell(null, null);\0A    }\0A  }\0A\0A  /**\0A   * Whether the end of iteration is reached.\0A   */\0A  atEnd() {\0A    return this.currCell_ === null ||\0A        this.currCell_.data === null ||\0A        this.currCellPos_ >= this.currCell_.data.length;\0A  }\0A\0A  /**\0A   * Returns the current item, moves to the next one.\0A   */\0A  next() {\0A    const result = this.currCell_.data[this.currCellPos_++];\0A    if (this.currCellPos_ >= this.currCell_.data.length) {\0A      this.currCell_ = this.currCell_.next;\0A      this.currCellPos_ = 0;\0A    }\0A    return result;\0A  }\0A}\0A\0A\0A/**\0A * A cell object used for constructing a list in ConsArray.\0A *\0A * @constructor\0A */\0Aclass ConsArrayCell {\0A  constructor(data, next) {\0A    this.data = data;\0A    this.next = next;\0A  }\0A}\0A\00", align 1
@.str.1104 = private unnamed_addr constant [3863 x i8] c"// Copyright 2009 the V8 project authors. All rights reserved.\0A// Redistribution and use in source and binary forms, with or without\0A// modification, are permitted provided that the following conditions are\0A// met:\0A//\0A//     * Redistributions of source code must retain the above copyright\0A//       notice, this list of conditions and the following disclaimer.\0A//     * Redistributions in binary form must reproduce the above\0A//       copyright notice, this list of conditions and the following\0A//       disclaimer in the documentation and/or other materials provided\0A//       with the distribution.\0A//     * Neither the name of Google Inc. nor the names of its\0A//       contributors may be used to endorse or promote products derived\0A//       from this software without specific prior written permission.\0A//\0A// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS\0A// \22AS IS\22 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\0A// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR\0A// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT\0A// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,\0A// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT\0A// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\0A// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\0A// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\0A// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\0A// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\0A\0A\0A/**\0A * Creates a CSV lines parser.\0A */\0Aexport class CsvParser {\0A  /**\0A   * Converts \\x00 and \\u0000 escape sequences in the given string.\0A   *\0A   * @param {string} input field.\0A   **/\0A  escapeField(string) {\0A    let nextPos = string.indexOf(\22\\\\\22);\0A    if (nextPos === -1) return string;\0A    let result = [string.substring(0, nextPos)];\0A    // Escape sequences of the form \\x00 and \\u0000;\0A    let pos = 0;\0A    while (nextPos !== -1) {\0A      const escapeIdentifier = string[nextPos + 1];\0A      pos = nextPos + 2;\0A      if (escapeIdentifier === 'n') {\0A        result.push('\\n');\0A        nextPos = pos;\0A      } else if (escapeIdentifier === '\\\\') {\0A        result.push('\\\\');\0A        nextPos = pos;\0A      } else {\0A        if (escapeIdentifier === 'x') {\0A          // \\x00 ascii range escapes consume 2 chars.\0A          nextPos = pos + 2;\0A        } else {\0A          // \\u0000 unicode range escapes consume 4 chars.\0A          nextPos = pos + 4;\0A        }\0A        // Convert the selected escape sequence to a single character.\0A        const escapeChars = string.substring(pos, nextPos);\0A        if (escapeChars === '2C') {\0A            result.push(',');\0A        } else {\0A          result.push(String.fromCharCode(parseInt(escapeChars, 16)));\0A        }\0A      }\0A\0A      // Continue looking for the next escape sequence.\0A      pos = nextPos;\0A      nextPos = string.indexOf(\22\\\\\22, pos);\0A      // If there are no more escape sequences consume the rest of the string.\0A      if (nextPos === -1) {\0A        result.push(string.substr(pos));\0A        break;\0A      } else if (pos !== nextPos) {\0A        result.push(string.substring(pos, nextPos));\0A      }\0A    }\0A    return result.join('');\0A  }\0A\0A  /**\0A   * Parses a line of CSV-encoded values. Returns an array of fields.\0A   *\0A   * @param {string} line Input line.\0A   */\0A  parseLine(line) {\0A    let pos = 0;\0A    const endPos = line.length;\0A    const fields = [];\0A    if (endPos == 0) return fields;\0A    let nextPos = 0;\0A    while(nextPos !== -1) {\0A      nextPos = line.indexOf(',', pos);\0A      let field;\0A      if (nextPos === -1) {\0A        field = line.substr(pos);\0A      } else {\0A        field = line.substring(pos, nextPos);\0A      }\0A      fields.push(this.escapeField(field));\0A      pos = nextPos + 1;\0A    };\0A    return fields\0A  }\0A}\0A\00", align 1
@.str.1105 = private unnamed_addr constant [8731 x i8] c"// Copyright 2011 the V8 project authors. All rights reserved.\0A// Redistribution and use in source and binary forms, with or without\0A// modification, are permitted provided that the following conditions are\0A// met:\0A//\0A//     * Redistributions of source code must retain the above copyright\0A//       notice, this list of conditions and the following disclaimer.\0A//     * Redistributions in binary form must reproduce the above\0A//       copyright notice, this list of conditions and the following\0A//       disclaimer in the documentation and/or other materials provided\0A//       with the distribution.\0A//     * Neither the name of Google Inc. nor the names of its\0A//       contributors may be used to endorse or promote products derived\0A//       from this software without specific prior written permission.\0A//\0A// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS\0A// \22AS IS\22 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\0A// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR\0A// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT\0A// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,\0A// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT\0A// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\0A// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\0A// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\0A// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\0A// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\0A\0A/**\0A * @fileoverview Log Reader is used to process log file produced by V8.\0A */\0A import { CsvParser } from \22./csvparser.mjs\22;\0A\0A\0A// Parses dummy variable for readability;\0Aexport function parseString(field) { return field };\0Aexport const parseVarArgs = 'parse-var-args';\0A\0A// Checks fields for numbers that are not safe integers. Returns true if any are\0A// found.\0Afunction containsUnsafeInts(fields) {\0A  for (let i = 0; i < fields.length; i++) {\0A    let field = fields[i];\0A    if ('number' == typeof(field) && !Number.isSafeInteger(field)) return true;\0A  }\0A  return false;\0A}\0A\0A/**\0A * Base class for processing log files.\0A *\0A * @param {boolean} timedRange Ignore ticks outside timed range.\0A * @param {boolean} pairwiseTimedRange Ignore ticks outside pairs of timer\0A *     markers.\0A * @constructor\0A */\0Aexport class LogReader {\0A  constructor(\0A        timedRange=false, pairwiseTimedRange=false, useBigIntAddresses=false) {\0A    this.dispatchTable_ = new Map();\0A    this.timedRange_ = timedRange;\0A    this.pairwiseTimedRange_ = pairwiseTimedRange;\0A    if (pairwiseTimedRange) this.timedRange_ = true;\0A    this.lineNum_ = 0;\0A    this.csvParser_ = new CsvParser();\0A    // Variables for tracking of 'current-time' log entries:\0A    this.hasSeenTimerMarker_ = false;\0A    this.logLinesSinceLastTimerMarker_ = [];\0A    // Flag to parse all numeric fields as BigInt to avoid arithmetic errors\0A    // caused by memory addresses being greater than MAX_SAFE_INTEGER\0A    this.useBigIntAddresses = useBigIntAddresses;\0A    this.parseFrame = useBigIntAddresses ? BigInt : parseInt;\0A    this.hasSeenUnsafeIntegers = false;\0A  }\0A\0A/**\0A * @param {Object} table A table used for parsing and processing\0A *     log records.\0A *     exampleDispatchTable = {\0A *       \22log-entry-XXX\22: {\0A *          parser: [parseString, parseInt, ..., parseVarArgs],\0A *          processor: this.processXXX.bind(this)\0A *        },\0A *        ...\0A *      }\0A */\0A  setDispatchTable(table) {\0A    if (Object.getPrototypeOf(table) !== null) {\0A      throw new Error(\22Dispatch expected table.__proto__=null for speedup\22);\0A    }\0A    for (let name in table) {\0A      const parser = table[name];\0A      if (parser === undefined) continue;\0A      if (!parser.isAsync) parser.isAsync = false;\0A      if (!Array.isArray(parser.parsers)) {\0A        throw new Error(`Invalid parsers: dispatchTable['${\0A            name}'].parsers should be an Array.`);\0A      }\0A      let type = typeof parser.processor;\0A      if (type !== 'function') {\0A       throw new Error(`Invalid processor: typeof dispatchTable['${\0A          name}'].processor is '${type}' instead of 'function'`);\0A      }\0A      if (!parser.processor.name.startsWith('bound ')) {\0A        parser.processor = parser.processor.bind(this);\0A      }\0A      this.dispatchTable_.set(name, parser);\0A    }\0A  }\0A\0A\0A  /**\0A   * A thin wrapper around shell's 'read' function showing a file name on error.\0A   */\0A  readFile(fileName) {\0A    try {\0A      return read(fileName);\0A    } catch (e) {\0A      printErr(`file=\22${fileName}\22: ${e.message || e}`);\0A      throw e;\0A    }\0A  }\0A\0A  /**\0A   * Used for printing error messages.\0A   *\0A   * @param {string} str Error message.\0A   */\0A  printError(str) {\0A    // Do nothing.\0A  }\0A\0A  /**\0A   * Processes a portion of V8 profiler event log.\0A   *\0A   * @param {string} chunk A portion of log.\0A   */\0A  async processLogChunk(chunk) {\0A    let end = chunk.length;\0A    let current = 0;\0A    // Kept for debugging in case of parsing errors.\0A    let lineNumber = 0;\0A    while (current < end) {\0A      const next = chunk.indexOf(\22\\n\22, current);\0A      if (next === -1) break;\0A      lineNumber++;\0A      const line = chunk.substring(current, next);\0A      current = next + 1;\0A      await this.processLogLine(line);\0A    }\0A  }\0A\0A  /**\0A   * Processes a line of V8 profiler event log.\0A   *\0A   * @param {string} line A line of log.\0A   */\0A  async processLogLine(line) {\0A    if (!this.timedRange_) {\0A      await this.processLogLine_(line);\0A      return;\0A    }\0A    if (line.startsWith(\22current-time\22)) {\0A      if (this.hasSeenTimerMarker_) {\0A        await this.processLog_(this.logLinesSinceLastTimerMarker_);\0A        this.logLinesSinceLastTimerMarker_ = [];\0A        // In pairwise mode, a \22current-time\22 line ends the timed range.\0A        if (this.pairwiseTimedRange_) {\0A          this.hasSeenTimerMarker_ = false;\0A        }\0A      } else {\0A        this.hasSeenTimerMarker_ = true;\0A      }\0A    } else {\0A      if (this.hasSeenTimerMarker_) {\0A        this.logLinesSinceLastTimerMarker_.push(line);\0A      } else if (!line.startsWith(\22tick\22)) {\0A        await this.processLogLine_(line);\0A      }\0A    }\0A  }\0A\0A  /**\0A   * Processes stack record.\0A   *\0A   * @param {number} pc Program counter.\0A   * @param {number} func JS Function.\0A   * @param {string[]} stack String representation of a stack.\0A   * @return {number[]} Processed stack.\0A   */\0A  processStack(pc, func, stack) {\0A    const fullStack = func ? [pc, func] : [pc];\0A    let prevFrame = pc;\0A    const length = stack.length;\0A    for (let i = 0, n = length; i < n; ++i) {\0A      const frame = stack[i];\0A      const firstChar = frame[0];\0A      if (firstChar === '+' || firstChar === '-') {\0A        // An offset from the previous frame.\0A        prevFrame += this.parseFrame(frame);\0A        fullStack.push(prevFrame);\0A      // Filter out possible 'overflow' string.\0A      } else if (firstChar !== 'o') {\0A        fullStack.push(this.parseFrame(frame));\0A      } else {\0A        console.error(`Dropping unknown tick frame: ${frame}`);\0A      }\0A    }\0A    return fullStack;\0A  }\0A\0A  /**\0A   * Does a dispatch of a log record.\0A   *\0A   * @param {string[]} fields Log record.\0A   * @private\0A   */\0A  async dispatchLogRow_(fields) {\0A    // Obtain the dispatch.\0A    const command = fields[0];\0A    const dispatch = this.dispatchTable_.get(command);\0A    if (dispatch === undefined) return;\0A    const parsers = dispatch.parsers;\0A    const length = parsers.length;\0A    // Parse fields.\0A    const parsedFields = new Array(length);\0A    for (let i = 0; i < length; ++i) {\0A      const parser = parsers[i];\0A      if (parser === parseVarArgs) {\0A        parsedFields[i] = fields.slice(1 + i);\0A        break;\0A      } else {\0A        parsedFields[i] = parser(fields[1 + i]);\0A      }\0A    }\0A    if (!this.useBigIntAddresses) {\0A      if (!this.hasSeenUnsafeIntegers && containsUnsafeInts(parsedFields)) {\0A        console.warn(`Log line contains unsafe integers: ${fields}`);\0A        this.hasSeenUnsafeIntegers = true;\0A      }\0A    }\0A    // Run the processor.\0A    await dispatch.processor(...parsedFields);\0A  }\0A\0A  /**\0A   * Processes log lines.\0A   *\0A   * @param {string[]} lines Log lines.\0A   * @private\0A   */\0A  async processLog_(lines) {\0A    for (let i = 0, n = lines.length; i < n; ++i) {\0A      await this.processLogLine_(lines[i]);\0A    }\0A  }\0A\0A  /**\0A   * Processes a single log line.\0A   *\0A   * @param {String} a log line\0A   * @private\0A   */\0A  async processLogLine_(line) {\0A    if (line.length > 0) {\0A      try {\0A        const fields = this.csvParser_.parseLine(line);\0A        await this.dispatchLogRow_(fields);\0A      } catch (e) {\0A        this.printError(`line ${this.lineNum_ + 1}: ${e.message || e}\\n${e.stack}`);\0A      }\0A    }\0A    this.lineNum_++;\0A  }\0A}\0A\00", align 1
@.str.1106 = private unnamed_addr constant [41312 x i8] c"// Copyright 2009 the V8 project authors. All rights reserved.\0A// Redistribution and use in source and binary forms, with or without\0A// modification, are permitted provided that the following conditions are\0A// met:\0A//\0A//     * Redistributions of source code must retain the above copyright\0A//       notice, this list of conditions and the following disclaimer.\0A//     * Redistributions in binary form must reproduce the above\0A//       copyright notice, this list of conditions and the following\0A//       disclaimer in the documentation and/or other materials provided\0A//       with the distribution.\0A//     * Neither the name of Google Inc. nor the names of its\0A//       contributors may be used to endorse or promote products derived\0A//       from this software without specific prior written permission.\0A//\0A// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS\0A// \22AS IS\22 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\0A// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR\0A// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT\0A// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,\0A// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT\0A// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\0A// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\0A// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\0A// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\0A// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\0A\0Aimport { CodeMap, CodeEntry } from \22./codemap.mjs\22;\0Aimport { ConsArray } from \22./consarray.mjs\22;\0Aimport { WebInspector } from \22./sourcemap.mjs\22;\0A\0A// Used to associate log entries with source positions in scripts.\0A// TODO: move to separate modules\0Aexport class SourcePosition {\0A  script = null;\0A  line = -1;\0A  column = -1;\0A  entries = [];\0A  isFunction = false;\0A  originalPosition = undefined;\0A\0A  constructor(script, line, column) {\0A    this.script = script;\0A    this.line = line;\0A    this.column = column;\0A  }\0A\0A  addEntry(entry) {\0A    this.entries.push(entry);\0A  }\0A\0A  toString() {\0A    return `${this.script.name}:${this.line}:${this.column}`;\0A  }\0A\0A  get functionPosition() {\0A    // TODO(cbruni)\0A    return undefined;\0A  }\0A\0A  get toolTipDict() {\0A    return {\0A      title: this.toString(),\0A      __this__: this,\0A      script: this.script,\0A      entries: this.entries,\0A    }\0A  }\0A}\0A\0Aexport class Script {\0A  url;\0A  source = \22\22;\0A  name;\0A  sourcePosition = undefined;\0A  // Map<line, Map<column, SourcePosition>>\0A  lineToColumn = new Map();\0A  _entries = [];\0A  _sourceMapState = \22unknown\22;\0A\0A  constructor(id) {\0A    this.id = id;\0A    this.sourcePositions = [];\0A  }\0A\0A  update(url, source) {\0A    this.url = url;\0A    this.name = Script.getShortestUniqueName(url, this);\0A    this.source = source;\0A  }\0A\0A  get length() {\0A    return this.source.length;\0A  }\0A\0A  get entries() {\0A    return this._entries;\0A  }\0A\0A  get startLine() {\0A    return this.sourcePosition?.line ?? 1;\0A  }\0A\0A  get sourceMapState() {\0A    return this._sourceMapState;\0A  }\0A\0A  findFunctionSourcePosition(sourcePosition) {\0A    // TODO(cbruni): implement\0A    return undefined;\0A  }\0A\0A  addSourcePosition(line, column, entry) {\0A    let sourcePosition = this.lineToColumn.get(line)?.get(column);\0A    if (sourcePosition === undefined) {\0A      sourcePosition = new SourcePosition(this, line, column,)\0A      this._addSourcePosition(line, column, sourcePosition);\0A    }\0A    if (this.sourcePosition === undefined && entry.entry?.type === \22Script\22) {\0A      // Mark the source position of scripts, for inline scripts which don't\0A      // start at line 1.\0A      this.sourcePosition = sourcePosition;\0A    }\0A    sourcePosition.addEntry(entry);\0A    this._entries.push(entry);\0A    return sourcePosition;\0A  }\0A\0A  _addSourcePosition(line, column, sourcePosition) {\0A    let columnToSourcePosition;\0A    if (this.lineToColumn.has(line)) {\0A      columnToSourcePosition = this.lineToColumn.get(line);\0A    } else {\0A      columnToSourcePosition = new Map();\0A      this.lineToColumn.set(line, columnToSourcePosition);\0A    }\0A    this.sourcePositions.push(sourcePosition);\0A    columnToSourcePosition.set(column, sourcePosition);\0A  }\0A\0A  toString() {\0A    return `Script(${this.id}): ${this.name}`;\0A  }\0A\0A  get toolTipDict() {\0A    return {\0A      title: this.toString(),\0A      __this__: this,\0A      id: this.id,\0A      url: this.url,\0A      source: this.source,\0A      sourcePositions: this.sourcePositions\0A    }\0A  }\0A\0A  static getShortestUniqueName(url, script) {\0A    const parts = url.split('/');\0A    const filename = parts[parts.length -1];\0A    const dict = this._dict ?? (this._dict = new Map());\0A    const matchingScripts = dict.get(filename);\0A    if (matchingScripts == undefined) {\0A      dict.set(filename, [script]);\0A      return filename;\0A    }\0A    // TODO: find shortest unique substring\0A    // Update all matching scripts to have a unique filename again.\0A    for (let matchingScript of matchingScripts) {\0A      matchingScript.name = script.url\0A    }\0A    matchingScripts.push(script);\0A    return url;\0A  }\0A\0A  ensureSourceMapCalculated(sourceMapFetchPrefix=undefined) {\0A    if (this._sourceMapState !== \22unknown\22) return;\0A\0A    const sourceMapURLMatch =\0A        this.source.match(/\\/\\/# sourceMappingURL=(.*)\\n/);\0A    if (!sourceMapURLMatch) {\0A      this._sourceMapState = \22none\22;\0A      return;\0A    }\0A\0A    this._sourceMapState = \22loading\22;\0A    let sourceMapURL = sourceMapURLMatch[1];\0A    (async () => {\0A      try {\0A        let sourceMapPayload;\0A        const options = { timeout: 15 };\0A        try {\0A          sourceMapPayload = await fetch(sourceMapURL, options);\0A        } catch (e) {\0A          if (e instanceof TypeError && sourceMapFetchPrefix) {\0A            // Try again with fetch prefix.\0A            // TODO(leszeks): Remove the retry once the prefix is\0A            // configurable.\0A            sourceMapPayload =\0A                await fetch(sourceMapFetchPrefix + sourceMapURL, options);\0A          } else {\0A            throw e;\0A          }\0A        }\0A        sourceMapPayload = await sourceMapPayload.text();\0A\0A        if (sourceMapPayload.startsWith(')]}')) {\0A          sourceMapPayload =\0A              sourceMapPayload.substring(sourceMapPayload.indexOf('\\n'));\0A        }\0A        sourceMapPayload = JSON.parse(sourceMapPayload);\0A        const sourceMap =\0A            new WebInspector.SourceMap(sourceMapURL, sourceMapPayload);\0A\0A        const startLine = this.startLine;\0A        for (const sourcePosition of this.sourcePositions) {\0A          const line = sourcePosition.line - startLine;\0A          const column = sourcePosition.column - 1;\0A          const mapping = sourceMap.findEntry(line, column);\0A          if (mapping) {\0A            sourcePosition.originalPosition = {\0A              source: new URL(mapping[2], sourceMapURL).href,\0A              line: mapping[3] + 1,\0A              column: mapping[4] + 1\0A            };\0A          } else {\0A            sourcePosition.originalPosition = {source: null, line:0, column:0};\0A          }\0A        }\0A        this._sourceMapState = \22loaded\22;\0A      } catch (e) {\0A        console.error(e);\0A        this._sourceMapState = \22failed\22;\0A      }\0A    })();\0A  }\0A}\0A\0A\0Aconst kOffsetPairRegex = /C([0-9]+)O([0-9]+)/g;\0Aclass SourcePositionTable {\0A  constructor(encodedTable) {\0A    this._offsets = [];\0A    while (true) {\0A      const regexResult = kOffsetPairRegex.exec(encodedTable);\0A      if (!regexResult) break;\0A      const codeOffset = parseInt(regexResult[1]);\0A      const scriptOffset = parseInt(regexResult[2]);\0A      if (isNaN(codeOffset) || isNaN(scriptOffset)) continue;\0A      this._offsets.push({code: codeOffset, script: scriptOffset});\0A    }\0A  }\0A\0A  getScriptOffset(codeOffset) {\0A    if (codeOffset < 0) {\0A      throw new Exception(`Invalid codeOffset=${codeOffset}, should be >= 0`);\0A    }\0A    for (let i = this.offsetTable.length - 1; i >= 0; i--) {\0A      const offset = this._offsets[i];\0A      if (offset.code <= codeOffset) {\0A        return offset.script;\0A      }\0A    }\0A    return this._offsets[0].script;\0A  }\0A}\0A\0A\0Aclass SourceInfo {\0A  script;\0A  start;\0A  end;\0A  positions;\0A  inlined;\0A  fns;\0A  disassemble;\0A\0A  setSourcePositionInfo(\0A        script, startPos, endPos, sourcePositionTableData, inliningPositions,\0A        inlinedSFIs) {\0A    this.script = script;\0A    this.start = startPos;\0A    this.end = endPos;\0A    this.positions = sourcePositionTableData;\0A    this.inlined = inliningPositions;\0A    this.fns = inlinedSFIs;\0A    this.sourcePositionTable = new SourcePositionTable(sourcePositionTableData);\0A  }\0A\0A  get sfis() {\0A    return this.fns;\0A  }\0A\0A  setDisassemble(code) {\0A    this.disassemble = code;\0A  }\0A\0A  getSourceCode() {\0A    return this.script.source?.substring(this.start, this.end);\0A  }\0A}\0A\0Aconst kProfileOperationMove = 0;\0Aconst kProfileOperationDelete = 1;\0Aconst kProfileOperationTick = 2;\0A\0A/**\0A * Creates a profile object for processing profiling-related events\0A * and calculating function execution times.\0A *\0A * @constructor\0A */\0Aexport class Profile {\0A  topDownTree_ = new CallTree();\0A  bottomUpTree_ = new CallTree();\0A  c_entries_ = {__proto__:null};\0A  scripts_ = [];\0A  urlToScript_ = new Map();\0A  warnings = new Set();\0A\0A  constructor(useBigIntAddresses=false) {\0A    this.useBigIntAddresses = useBigIntAddresses;\0A    this.codeMap_ = new CodeMap(useBigIntAddresses);\0A  }\0A\0A  serializeVMSymbols() {\0A    let result = this.codeMap_.getAllStaticEntriesWithAddresses();\0A    result.concat(this.codeMap_.getAllLibraryEntriesWithAddresses())\0A    return result.map(([startAddress, codeEntry]) => {\0A      return [codeEntry.getName(), startAddress, startAddress + codeEntry.size]\0A    });\0A  }\0A\0A  /**\0A   * Returns whether a function with the specified name must be skipped.\0A   * Should be overridden by subclasses.\0A   *\0A   * @param {string} name Function name.\0A   */\0A  skipThisFunction(name) {\0A    return false;\0A  }\0A\0A  /**\0A   * Enum for profiler operations that involve looking up existing\0A   * code entries.\0A   *\0A   * @enum {number}\0A   */\0A  static Operation = {\0A    MOVE: kProfileOperationMove,\0A    DELETE: kProfileOperationDelete,\0A    TICK: kProfileOperationTick\0A  }\0A\0A  /**\0A   * Enum for code state regarding its dynamic optimization.\0A   *\0A   * @enum {number}\0A   */\0A  static CodeState = {\0A    COMPILED: 0,\0A    IGNITION: 1,\0A    SPARKPLUG: 2,\0A    MAGLEV: 4,\0A    TURBOFAN: 5,\0A  }\0A\0A  static VMState = {\0A    JS: 0,\0A    GC: 1,\0A    PARSER: 2,\0A    BYTECODE_COMPILER: 3,\0A    // TODO(cbruni): add SPARKPLUG_COMPILER\0A    COMPILER: 4,\0A    OTHER: 5,\0A    EXTERNAL: 6,\0A    ATOMICS_WAIT: 7,\0A    IDLE: 8,\0A    LOGGING: 9,\0A    IDLE_EXTERNAL: 10,\0A  }\0A\0A  static CodeType = {\0A    CPP: 0,\0A    SHARED_LIB: 1\0A  }\0A\0A  /**\0A   * Parser for dynamic code optimization state.\0A   */\0A  static parseState(s) {\0A    switch (s) {\0A      case '':\0A        return this.CodeState.COMPILED;\0A      case '~':\0A        return this.CodeState.IGNITION;\0A      case '^':\0A        return this.CodeState.SPARKPLUG;\0A      case '+':\0A      case '+\\'':\0A        return this.CodeState.MAGLEV;\0A      case '*':\0A      case '*\\'':\0A        return this.CodeState.TURBOFAN;\0A    }\0A    throw new Error(`unknown code state: ${s}`);\0A  }\0A\0A  static getKindFromState(state) {\0A    if (state === this.CodeState.COMPILED) {\0A      return \22Builtin\22;\0A    } else if (state === this.CodeState.IGNITION) {\0A      return \22Unopt\22;\0A    } else if (state === this.CodeState.SPARKPLUG) {\0A      return \22Sparkplug\22;\0A    } else if (state === this.CodeState.MAGLEV) {\0A      return \22Maglev\22;\0A    } else if (state === this.CodeState.TURBOFAN) {\0A      return \22Opt\22;\0A    }\0A    throw new Error(`unknown code state: ${state}`);\0A  }\0A\0A  static vmStateString(state) {\0A    switch (state) {\0A      case this.VMState.JS:\0A        return 'JS';\0A      case this.VMState.GC:\0A        return 'GC';\0A      case this.VMState.PARSER:\0A        return 'Parse';\0A      case this.VMState.BYTECODE_COMPILER:\0A        return 'Compile Bytecode';\0A      case this.VMState.COMPILER:\0A        return 'Compile';\0A      case this.VMState.OTHER:\0A        return 'Other';\0A      case this.VMState.EXTERNAL:\0A        return 'External';\0A      case this.VMState.EXTERNAL_IDLE:\0A        return 'ExternalIdle';\0A      case this.VMState.IDLE:\0A        return 'Idle';\0A    }\0A    return 'unknown';\0A  }\0A\0A  /**\0A   * Called whenever the specified operation has failed finding a function\0A   * containing the specified address. Should be overridden by subclasses.\0A   * See the Profile.Operation enum for the list of\0A   * possible operations.\0A   *\0A   * @param {number} operation Operation.\0A   * @param {number} addr Address of the unknown code.\0A   * @param {number} opt_stackPos If an unknown address is encountered\0A   *     during stack strace processing, specifies a position of the frame\0A   *     containing the address.\0A   */\0A  handleUnknownCode(operation, addr, opt_stackPos) { }\0A\0A  /**\0A   * Registers a library.\0A   *\0A   * @param {string} name Code entry name.\0A   * @param {number} startAddr Starting address.\0A   * @param {number} endAddr Ending address.\0A   */\0A  addLibrary(name, startAddr, endAddr) {\0A    const entry = new CodeEntry(endAddr - startAddr, name, 'SHARED_LIB');\0A    this.codeMap_.addLibrary(startAddr, entry);\0A    return entry;\0A  }\0A\0A  /**\0A   * Registers statically compiled code entry.\0A   *\0A   * @param {string} name Code entry name.\0A   * @param {number} startAddr Starting address.\0A   * @param {number} endAddr Ending address.\0A   */\0A  addStaticCode(name, startAddr, endAddr) {\0A    const entry = new CodeEntry(endAddr - startAddr, name, 'CPP');\0A    this.codeMap_.addStaticCode(startAddr, entry);\0A    return entry;\0A  }\0A\0A  /**\0A   * Registers dynamic (JIT-compiled) code entry.\0A   *\0A   * @param {string} type Code entry type.\0A   * @param {string} name Code entry name.\0A   * @param {number} start Starting address.\0A   * @param {number} size Code entry size.\0A   */\0A  addCode(type, name, timestamp, start, size) {\0A    const entry = new DynamicCodeEntry(size, type, name);\0A    this.codeMap_.addCode(start, entry);\0A    return entry;\0A  }\0A\0A  /**\0A   * Registers dynamic (JIT-compiled) code entry or entries that overlap with\0A   * static entries (like builtins).\0A   *\0A   * @param {string} type Code entry type.\0A   * @param {string} name Code entry name.\0A   * @param {number} start Starting address.\0A   * @param {number} size Code entry size.\0A   */\0A  addAnyCode(type, name, timestamp, start, size) {\0A    const entry = new DynamicCodeEntry(size, type, name);\0A    this.codeMap_.addAnyCode(start, entry);\0A    return entry;\0A  }\0A\0A  /**\0A   * Registers dynamic (JIT-compiled) code entry.\0A   *\0A   * @param {string} type Code entry type.\0A   * @param {string} name Code entry name.\0A   * @param {number} start Starting address.\0A   * @param {number} size Code entry size.\0A   * @param {number} sfiAddr Shared function object address.\0A   * @param {Profile.CodeState} state Optimization state.\0A   */\0A  addFuncCode(type, name, timestamp, start, size, sfiAddr, state) {\0A    // As code and functions are in the same address space,\0A    // it is safe to put them in a single code map.\0A    let sfi = this.codeMap_.findDynamicEntryByStartAddress(sfiAddr);\0A    // Overwrite any old (unused) code objects that overlap with the new SFI.\0A    const new_sfi_old_code = !(sfi instanceof SharedFunctionInfoEntry)\0A    if (sfi === null || new_sfi_old_code) {\0A      sfi = new SharedFunctionInfoEntry(name, this.useBigIntAddresses);\0A      this.codeMap_.addCode(sfiAddr, sfi);\0A    } else if (sfi.name !== name) {\0A      // SFI object has been overwritten with a new one.\0A      sfi.name = name;\0A    }\0A    let entry = this.codeMap_.findDynamicEntryByStartAddress(start);\0A    if (entry !== null) {\0A      if (entry.size === size && entry.sfi === sfi) {\0A        // Entry state has changed.\0A        entry.state = state;\0A      } else {\0A        this.codeMap_.deleteCode(start);\0A        entry = null;\0A      }\0A    }\0A    if (entry === null) {\0A      entry = new DynamicFuncCodeEntry(size, type, sfi, state);\0A      this.codeMap_.addCode(start, entry);\0A    }\0A    return entry;\0A  }\0A\0A  /**\0A   * Reports about moving of a dynamic code entry.\0A   *\0A   * @param {number} from Current code entry address.\0A   * @param {number} to New code entry address.\0A   */\0A  moveCode(from, to) {\0A    try {\0A      this.codeMap_.moveCode(from, to);\0A    } catch (e) {\0A      this.handleUnknownCode(kProfileOperationMove, from);\0A    }\0A  }\0A\0A  deoptCode(timestamp, code, inliningId, scriptOffset, bailoutType,\0A    sourcePositionText, deoptReasonText) {\0A  }\0A\0A  /**\0A   * Reports about deletion of a dynamic code entry.\0A   *\0A   * @param {number} start Starting address.\0A   */\0A  deleteCode(start) {\0A    try {\0A      this.codeMap_.deleteCode(start);\0A    } catch (e) {\0A      this.handleUnknownCode(kProfileOperationDelete, start);\0A    }\0A  }\0A\0A  /**\0A   * Adds source positions for given code.\0A   */\0A  addSourcePositions(start, scriptId, startPos, endPos, sourcePositionTable,\0A        inliningPositions, inlinedSFIs) {\0A    const script = this.getOrCreateScript(scriptId);\0A    const entry = this.codeMap_.findDynamicEntryByStartAddress(start);\0A    if (entry === null) return;\0A    // Resolve the inlined SharedFunctionInfo list.\0A    if (inlinedSFIs.length > 0) {\0A      inlinedSFIs = inlinedSFIs.substring(1).split(\22S\22);\0A      for (let i = 0; i < inlinedSFIs.length; i++) {\0A        const sfiAddr = parseInt(inlinedSFIs[i]);\0A        const sfi = this.codeMap_.findDynamicEntryByStartAddress(sfiAddr);\0A        if (sfi === null || sfi.funcId === undefined) {\0A          // TODO: fix\0A          this.warnings.add(`Could not find function ${inlinedSFIs[i]}`);\0A          inlinedSFIs[i] = null;\0A        } else {\0A          inlinedSFIs[i] = sfi.funcId;\0A        }\0A      }\0A    } else {\0A      inlinedSFIs = [];\0A    }\0A\0A    this.getOrCreateSourceInfo(entry).setSourcePositionInfo(\0A      script, startPos, endPos, sourcePositionTable, inliningPositions,\0A      inlinedSFIs);\0A  }\0A\0A  addDisassemble(start, kind, disassemble) {\0A    const entry = this.codeMap_.findDynamicEntryByStartAddress(start);\0A    if (entry !== null) {\0A      this.getOrCreateSourceInfo(entry).setDisassemble(disassemble);\0A    }\0A    return entry;\0A  }\0A\0A  getOrCreateSourceInfo(entry) {\0A    return entry.source ?? (entry.source = new SourceInfo());\0A  }\0A\0A  addScriptSource(id, url, source) {\0A    const script = this.getOrCreateScript(id);\0A    script.update(url, source);\0A    this.urlToScript_.set(url, script);\0A  }\0A\0A  getOrCreateScript(id) {\0A    let script = this.scripts_[id];\0A    if (script === undefined) {\0A      script = new Script(id);\0A      this.scripts_[id] = script;\0A    }\0A    return script;\0A  }\0A\0A  getScript(url) {\0A    return this.urlToScript_.get(url);\0A  }\0A\0A  /**\0A   * Reports about moving of a dynamic code entry.\0A   *\0A   * @param {number} from Current code entry address.\0A   * @param {number} to New code entry address.\0A   */\0A  moveSharedFunctionInfo(from, to) {\0A    if (this.codeMap_.findDynamicEntryByStartAddress(from)) {\0A      this.codeMap_.moveCode(from, to);\0A    }\0A  }\0A\0A  /**\0A   * Retrieves a code entry by an address.\0A   *\0A   * @param {number} addr Entry address.\0A   */\0A  findEntry(addr) {\0A    return this.codeMap_.findEntry(addr);\0A  }\0A\0A  /**\0A   * Records a tick event. Stack must contain a sequence of\0A   * addresses starting with the program counter value.\0A   *\0A   * @param {number[]} stack Stack sample.\0A   */\0A  recordTick(time_ns, vmState, stack) {\0A    const {nameStack, entryStack} = this.resolveAndFilterFuncs_(stack);\0A    this.bottomUpTree_.addPath(nameStack);\0A    nameStack.reverse();\0A    this.topDownTree_.addPath(nameStack);\0A    return entryStack;\0A  }\0A\0A  /**\0A   * Translates addresses into function names and filters unneeded\0A   * functions.\0A   *\0A   * @param {number[]} stack Stack sample.\0A   */\0A  resolveAndFilterFuncs_(stack) {\0A    const nameStack = [];\0A    const entryStack = [];\0A    let last_seen_c_function = '';\0A    let look_for_first_c_function = false;\0A    for (let i = 0; i < stack.length; ++i) {\0A      const pc = stack[i];\0A      const entry = this.codeMap_.findEntry(pc);\0A      if (entry !== null) {\0A        entryStack.push(entry);\0A        const name = entry.getName();\0A        if (i === 0 && (entry.type === 'CPP' || entry.type === 'SHARED_LIB')) {\0A          look_for_first_c_function = true;\0A        }\0A        if (look_for_first_c_function && entry.type === 'CPP') {\0A          last_seen_c_function = name;\0A        }\0A        if (!this.skipThisFunction(name)) {\0A          nameStack.push(name);\0A        }\0A      } else {\0A        this.handleUnknownCode(kProfileOperationTick, pc, i);\0A        if (i === 0) nameStack.push(\22UNKNOWN\22);\0A        entryStack.push(pc);\0A      }\0A      if (look_for_first_c_function && i > 0 &&\0A          (entry === null || entry.type !== 'CPP')\0A          && last_seen_c_function !== '') {\0A        if (this.c_entries_[last_seen_c_function] === undefined) {\0A          this.c_entries_[last_seen_c_function] = 0;\0A        }\0A        this.c_entries_[last_seen_c_function]++;\0A        look_for_first_c_function = false;  // Found it, we're done.\0A      }\0A    }\0A    return {nameStack, entryStack};\0A  }\0A\0A  /**\0A   * Performs a BF traversal of the top down call graph.\0A   *\0A   * @param {function(CallTreeNode)} f Visitor function.\0A   */\0A  traverseTopDownTree(f) {\0A    this.topDownTree_.traverse(f);\0A  }\0A\0A  /**\0A   * Performs a BF traversal of the bottom up call graph.\0A   *\0A   * @param {function(CallTreeNode)} f Visitor function.\0A   */\0A  traverseBottomUpTree(f) {\0A    this.bottomUpTree_.traverse(f);\0A  }\0A\0A  /**\0A   * Calculates a top down profile for a node with the specified label.\0A   * If no name specified, returns the whole top down calls tree.\0A   *\0A   * @param {string} opt_label Node label.\0A   */\0A  getTopDownProfile(opt_label) {\0A    return this.getTreeProfile_(this.topDownTree_, opt_label);\0A  }\0A\0A  /**\0A   * Calculates a bottom up profile for a node with the specified label.\0A   * If no name specified, returns the whole bottom up calls tree.\0A   *\0A   * @param {string} opt_label Node label.\0A   */\0A  getBottomUpProfile(opt_label) {\0A    return this.getTreeProfile_(this.bottomUpTree_, opt_label);\0A  }\0A\0A  /**\0A   * Helper function for calculating a tree profile.\0A   *\0A   * @param {Profile.CallTree} tree Call tree.\0A   * @param {string} opt_label Node label.\0A   */\0A  getTreeProfile_(tree, opt_label) {\0A    if (!opt_label) {\0A      tree.computeTotalWeights();\0A      return tree;\0A    } else {\0A      const subTree = tree.cloneSubtree(opt_label);\0A      subTree.computeTotalWeights();\0A      return subTree;\0A    }\0A  }\0A\0A  /**\0A   * Calculates a flat profile of callees starting from a node with\0A   * the specified label. If no name specified, starts from the root.\0A   *\0A   * @param {string} opt_label Starting node label.\0A   */\0A  getFlatProfile(opt_label) {\0A    const counters = new CallTree();\0A    const rootLabel = opt_label || CallTree.ROOT_NODE_LABEL;\0A    const precs = {__proto__:null};\0A    precs[rootLabel] = 0;\0A    const root = counters.findOrAddChild(rootLabel);\0A\0A    this.topDownTree_.computeTotalWeights();\0A    this.topDownTree_.traverseInDepth(\0A      function onEnter(node) {\0A        if (!(node.label in precs)) {\0A          precs[node.label] = 0;\0A        }\0A        const nodeLabelIsRootLabel = node.label == rootLabel;\0A        if (nodeLabelIsRootLabel || precs[rootLabel] > 0) {\0A          if (precs[rootLabel] == 0) {\0A            root.selfWeight += node.selfWeight;\0A            root.totalWeight += node.totalWeight;\0A          } else {\0A            const rec = root.findOrAddChild(node.label);\0A            rec.selfWeight += node.selfWeight;\0A            if (nodeLabelIsRootLabel || precs[node.label] == 0) {\0A              rec.totalWeight += node.totalWeight;\0A            }\0A          }\0A          precs[node.label]++;\0A        }\0A      },\0A      function onExit(node) {\0A        if (node.label == rootLabel || precs[rootLabel] > 0) {\0A          precs[node.label]--;\0A        }\0A      },\0A      null);\0A\0A    if (!opt_label) {\0A      // If we have created a flat profile for the whole program, we don't\0A      // need an explicit root in it. Thus, replace the counters tree\0A      // root with the node corresponding to the whole program.\0A      counters.root_ = root;\0A    } else {\0A      // Propagate weights so percents can be calculated correctly.\0A      counters.getRoot().selfWeight = root.selfWeight;\0A      counters.getRoot().totalWeight = root.totalWeight;\0A    }\0A    return counters;\0A  }\0A\0A  getCEntryProfile() {\0A    const result = [new CEntryNode(\22TOTAL\22, 0)];\0A    let total_ticks = 0;\0A    for (let f in this.c_entries_) {\0A      const ticks = this.c_entries_[f];\0A      total_ticks += ticks;\0A      result.push(new CEntryNode(f, ticks));\0A    }\0A    result[0].ticks = total_ticks;  // Sorting will keep this at index 0.\0A    result.sort((n1, n2) => n2.ticks - n1.ticks || (n2.name < n1.name ? -1 : 1));\0A    return result;\0A  }\0A\0A\0A  /**\0A   * Cleans up function entries that are not referenced by code entries.\0A   */\0A  cleanUpFuncEntries() {\0A    const referencedFuncEntries = [];\0A    const entries = this.codeMap_.getAllDynamicEntriesWithAddresses();\0A    for (let i = 0, l = entries.length; i < l; ++i) {\0A      if (entries[i][1].constructor === SharedFunctionInfoEntry) {\0A        entries[i][1].used = false;\0A      }\0A    }\0A    for (let i = 0, l = entries.length; i < l; ++i) {\0A      if (\22sfi\22 in entries[i][1]) {\0A        entries[i][1].sfi.used = true;\0A      }\0A    }\0A    for (let i = 0, l = entries.length; i < l; ++i) {\0A      if (entries[i][1].constructor === SharedFunctionInfoEntry &&\0A        !entries[i][1].used) {\0A        this.codeMap_.deleteCode(entries[i][0]);\0A      }\0A    }\0A  }\0A}\0A\0Aclass CEntryNode {\0A  constructor(name, ticks) {\0A    this.name = name;\0A    this.ticks = ticks;\0A  }\0A}\0A\0A\0A/**\0A * Creates a dynamic code entry.\0A *\0A * @param {number} size Code size.\0A * @param {string} type Code type.\0A * @param {string} name Function name.\0A * @constructor\0A */\0Aclass DynamicCodeEntry extends CodeEntry {\0A  constructor(size, type, name) {\0A    super(size, name, type);\0A  }\0A\0A  getName() {\0A    return this.type + ': ' + this.name;\0A  }\0A\0A  /**\0A   * Returns raw node name (without type decoration).\0A   */\0A  getRawName() {\0A    return this.name;\0A  }\0A\0A  isJSFunction() {\0A    return false;\0A  }\0A\0A  toString() {\0A    return this.getName() + ': ' + this.size.toString(16);\0A  }\0A}\0A\0A\0A/**\0A * Creates a dynamic code entry.\0A *\0A * @param {number} size Code size.\0A * @param {string} type Code type.\0A * @param {SharedFunctionInfoEntry} sfi Shared function entry.\0A * @param {Profile.CodeState} state Code optimization state.\0A * @constructor\0A */\0Aclass DynamicFuncCodeEntry extends CodeEntry {\0A  constructor(size, type, sfi, state) {\0A    super(size, '', type);\0A    this.sfi = sfi;\0A    sfi.addDynamicCode(this);\0A    this.state = state;\0A  }\0A\0A  get functionName() {\0A    return this.sfi.functionName;\0A  }\0A\0A  getSourceCode() {\0A    return this.source?.getSourceCode();\0A  }\0A\0A  static STATE_PREFIX = [\22\22, \22~\22, \22^\22, \22-\22, \22+\22, \22*\22];\0A  getState() {\0A    return DynamicFuncCodeEntry.STATE_PREFIX[this.state];\0A  }\0A\0A  getName() {\0A    const name = this.sfi.getName();\0A    return this.type + ': ' + this.getState() + name;\0A  }\0A\0A  /**\0A   * Returns raw node name (without type decoration).\0A   */\0A  getRawName() {\0A    return this.sfi.getName();\0A  }\0A\0A  isJSFunction() {\0A    return true;\0A  }\0A\0A  toString() {\0A    return this.getName() + ': ' + this.size.toString(16);\0A  }\0A}\0A\0A/**\0A * Creates a shared function object entry.\0A *\0A * @param {string} name Function name.\0A * @constructor\0A */\0Aclass SharedFunctionInfoEntry extends CodeEntry {\0A\0A  // Contains the list of generated code for this function.\0A  /** @type {Set<DynamicCodeEntry>} */\0A  _codeEntries = new Set();\0A\0A  constructor(name, useBigIntAddresses=false) {\0A    super(useBigIntAddresses ? 0n : 0, name);\0A    const index = name.lastIndexOf(' ');\0A    this.functionName = 1 <= index ? name.substring(0, index) : '<anonymous>';\0A  }\0A\0A  addDynamicCode(code) {\0A    if (code.sfi != this) {\0A      throw new Error(\22Adding dynamic code to wrong function\22);\0A    }\0A    this._codeEntries.add(code);\0A  }\0A\0A  getSourceCode() {\0A    // All code entries should map to the same source positions.\0A    return this._codeEntries.values().next().value.getSourceCode();\0A  }\0A\0A  get codeEntries() {\0A    return this._codeEntries;\0A  }\0A\0A  /**\0A   * Returns node name.\0A   */\0A  getName() {\0A    let name = this.name;\0A    if (name.length == 0) {\0A      return '<anonymous>';\0A    } else if (name.charAt(0) == ' ') {\0A      // An anonymous function with location: \22 aaa.js:10\22.\0A      return `<anonymous>${name}`;\0A    }\0A    return name;\0A  }\0A}\0A\0A/**\0A * Constructs a call graph.\0A *\0A * @constructor\0A */\0Aclass CallTree {\0A  root_ = new CallTreeNode(CallTree.ROOT_NODE_LABEL);\0A  totalsComputed_ = false;\0A\0A  /**\0A   * The label of the root node.\0A   */\0A  static ROOT_NODE_LABEL = '';\0A\0A  /**\0A   * Returns the tree root.\0A   */\0A  getRoot() {\0A    return this.root_;\0A  }\0A\0A  /**\0A   * Adds the specified call path, constructing nodes as necessary.\0A   *\0A   * @param {string[]} path Call path.\0A   */\0A  addPath(path) {\0A    if (path.length == 0) return;\0A    let curr = this.root_;\0A    for (let i = 0; i < path.length; ++i) {\0A      curr = curr.findOrAddChild(path[i]);\0A    }\0A    curr.selfWeight++;\0A    this.totalsComputed_ = false;\0A  }\0A\0A  /**\0A   * Finds an immediate child of the specified parent with the specified\0A   * label, creates a child node if necessary. If a parent node isn't\0A   * specified, uses tree root.\0A   *\0A   * @param {string} label Child node label.\0A   */\0A  findOrAddChild(label) {\0A    return this.root_.findOrAddChild(label);\0A  }\0A\0A  /**\0A   * Creates a subtree by cloning and merging all subtrees rooted at nodes\0A   * with a given label. E.g. cloning the following call tree on label 'A'\0A   * will give the following result:\0A   *\0A   *           <A>--<B>                                     <B>\0A   *          /                                            /\0A   *     <root>             == clone on 'A' ==>  <root>--<A>\0A   *          \\                                            \\\0A   *           <C>--<A>--<D>                                <D>\0A   *\0A   * And <A>'s selfWeight will be the sum of selfWeights of <A>'s from the\0A   * source call tree.\0A   *\0A   * @param {string} label The label of the new root node.\0A   */\0A  cloneSubtree(label) {\0A    const subTree = new CallTree();\0A    this.traverse((node, parent) => {\0A      if (!parent && node.label != label) {\0A        return null;\0A      }\0A      const child = (parent ? parent : subTree).findOrAddChild(node.label);\0A      child.selfWeight += node.selfWeight;\0A      return child;\0A    });\0A    return subTree;\0A  }\0A\0A  /**\0A   * Computes total weights in the call graph.\0A   */\0A  computeTotalWeights() {\0A    if (this.totalsComputed_) return;\0A    this.root_.computeTotalWeight();\0A    this.totalsComputed_ = true;\0A  }\0A\0A  /**\0A   * Traverses the call graph in preorder. This function can be used for\0A   * building optionally modified tree clones. This is the boilerplate code\0A   * for this scenario:\0A   *\0A   * callTree.traverse(function(node, parentClone) {\0A   *   var nodeClone = cloneNode(node);\0A   *   if (parentClone)\0A   *     parentClone.addChild(nodeClone);\0A   *   return nodeClone;\0A   * });\0A   *\0A   * @param {function(CallTreeNode, *)} f Visitor function.\0A   *    The second parameter is the result of calling 'f' on the parent node.\0A   */\0A  traverse(f) {\0A    const pairsToProcess = new ConsArray();\0A    pairsToProcess.concat([{ node: this.root_, param: null }]);\0A    while (!pairsToProcess.atEnd()) {\0A      const pair = pairsToProcess.next();\0A      const node = pair.node;\0A      const newParam = f(node, pair.param);\0A      const morePairsToProcess = [];\0A      node.forEachChild((child) => {\0A        morePairsToProcess.push({ node: child, param: newParam });\0A      });\0A      pairsToProcess.concat(morePairsToProcess);\0A    }\0A  }\0A\0A  /**\0A   * Performs an indepth call graph traversal.\0A   *\0A   * @param {function(CallTreeNode)} enter A function called\0A   *     prior to visiting node's children.\0A   * @param {function(CallTreeNode)} exit A function called\0A   *     after visiting node's children.\0A   */\0A  traverseInDepth(enter, exit) {\0A    function traverse(node) {\0A      enter(node);\0A      node.forEachChild(traverse);\0A      exit(node);\0A    }\0A    traverse(this.root_);\0A  }\0A}\0A\0A\0A/**\0A * Constructs a call graph node.\0A *\0A * @param {string} label Node label.\0A * @param {CallTreeNode} opt_parent Node parent.\0A */\0Aclass CallTreeNode {\0A\0A  constructor(label, opt_parent) {\0A    // Node self weight (how many times this node was the last node in\0A    // a call path).\0A    this.selfWeight = 0;\0A    // Node total weight (includes weights of all children).\0A    this.totalWeight = 0;\0A    this. children = { __proto__:null };\0A    this.label = label;\0A    this.parent = opt_parent;\0A  }\0A\0A\0A  /**\0A   * Adds a child node.\0A   *\0A   * @param {string} label Child node label.\0A   */\0A  addChild(label) {\0A    const child = new CallTreeNode(label, this);\0A    this.children[label] = child;\0A    return child;\0A  }\0A\0A  /**\0A   * Computes node's total weight.\0A   */\0A  computeTotalWeight() {\0A    let totalWeight = this.selfWeight;\0A    this.forEachChild(function (child) {\0A      totalWeight += child.computeTotalWeight();\0A    });\0A    return this.totalWeight = totalWeight;\0A  }\0A\0A  /**\0A   * Returns all node's children as an array.\0A   */\0A  exportChildren() {\0A    const result = [];\0A    this.forEachChild(function (node) { result.push(node); });\0A    return result;\0A  }\0A\0A  /**\0A   * Finds an immediate child with the specified label.\0A   *\0A   * @param {string} label Child node label.\0A   */\0A  findChild(label) {\0A    const found = this.children[label];\0A    return found === undefined ? null : found;\0A  }\0A\0A  /**\0A   * Finds an immediate child with the specified label, creates a child\0A   * node if necessary.\0A   *\0A   * @param {string} label Child node label.\0A   */\0A  findOrAddChild(label) {\0A    const found = this.findChild(label)\0A    if (found === null) return this.addChild(label);\0A    return found;\0A  }\0A\0A  /**\0A   * Calls the specified function for every child.\0A   *\0A   * @param {function(CallTreeNode)} f Visitor function.\0A   */\0A  forEachChild(f) {\0A    for (let c in this.children) {\0A      f(this.children[c]);\0A    }\0A  }\0A\0A  /**\0A   * Walks up from the current node up to the call tree root.\0A   *\0A   * @param {function(CallTreeNode)} f Visitor function.\0A   */\0A  walkUpToRoot(f) {\0A    for (let curr = this; curr !== null; curr = curr.parent) {\0A      f(curr);\0A    }\0A  }\0A\0A  /**\0A   * Tries to find a node with the specified path.\0A   *\0A   * @param {string[]} labels The path.\0A   * @param {function(CallTreeNode)} opt_f Visitor function.\0A   */\0A  descendToChild(labels, opt_f) {\0A    let curr = this;\0A    for (let pos = 0; pos < labels.length && curr != null; pos++) {\0A      const child = curr.findChild(labels[pos]);\0A      if (opt_f) {\0A        opt_f(child, pos);\0A      }\0A      curr = child;\0A    }\0A    return curr;\0A  }\0A}\0A\0Aexport function JsonProfile(useBigIntAddresses=false) {\0A  this.codeMap_ = new CodeMap(useBigIntAddresses);\0A  this.codeEntries_ = [];\0A  this.functionEntries_ = [];\0A  this.ticks_ = [];\0A  this.scripts_ = [];\0A}\0A\0AJsonProfile.prototype.addLibrary = function (\0A  name, startAddr, endAddr) {\0A  const entry = new CodeEntry(\0A    endAddr - startAddr, name, 'SHARED_LIB');\0A  this.codeMap_.addLibrary(startAddr, entry);\0A\0A  entry.codeId = this.codeEntries_.length;\0A  this.codeEntries_.push({ name: entry.name, type: entry.type });\0A  return entry;\0A};\0A\0AJsonProfile.prototype.addStaticCode = function (\0A  name, startAddr, endAddr) {\0A  const entry = new CodeEntry(\0A    endAddr - startAddr, name, 'CPP');\0A  this.codeMap_.addStaticCode(startAddr, entry);\0A\0A  entry.codeId = this.codeEntries_.length;\0A  this.codeEntries_.push({ name: entry.name, type: entry.type });\0A  return entry;\0A};\0A\0AJsonProfile.prototype.addCode = function (\0A  kind, name, timestamp, start, size) {\0A  let codeId = this.codeEntries_.length;\0A  // Find out if we have a static code entry for the code. If yes, we will\0A  // make sure it is written to the JSON file just once.\0A  let staticEntry = this.codeMap_.findAddress(start);\0A  if (staticEntry && staticEntry.entry.type === 'CPP') {\0A    codeId = staticEntry.entry.codeId;\0A  }\0A\0A  const entry = new CodeEntry(size, name, 'CODE');\0A  this.codeMap_.addCode(start, entry);\0A\0A  entry.codeId = codeId;\0A  this.codeEntries_[codeId] = {\0A    name: entry.name,\0A    timestamp: timestamp,\0A    type: entry.type,\0A    kind: kind,\0A  };\0A\0A  return entry;\0A};\0A\0AJsonProfile.prototype.addFuncCode = function (\0A  kind, name, timestamp, start, size, sfiAddr, state) {\0A  // As code and functions are in the same address space,\0A  // it is safe to put them in a single code map.\0A  let sfi = this.codeMap_.findDynamicEntryByStartAddress(sfiAddr);\0A  if (!sfi) {\0A    sfi = new CodeEntry(0, name, 'SFI');\0A    this.codeMap_.addCode(sfiAddr, sfi);\0A\0A    sfi.funcId = this.functionEntries_.length;\0A    this.functionEntries_.push({ name, codes: [] });\0A  } else if (sfi.name !== name) {\0A    // Function object has been overwritten with a new one.\0A    sfi.name = name;\0A\0A    sfi.funcId = this.functionEntries_.length;\0A    this.functionEntries_.push({ name, codes: [] });\0A  }\0A  // TODO(jarin): Insert the code object into the SFI's code list.\0A  let entry = this.codeMap_.findDynamicEntryByStartAddress(start);\0A  if (entry) {\0A    if (entry.size === size && entry.sfi === sfi) {\0A      // Entry state has changed.\0A      entry.state = state;\0A    } else {\0A      this.codeMap_.deleteCode(start);\0A      entry = null;\0A    }\0A  }\0A  if (!entry) {\0A    entry = new CodeEntry(size, name, 'JS');\0A    this.codeMap_.addCode(start, entry);\0A\0A    entry.codeId = this.codeEntries_.length;\0A\0A    this.functionEntries_[sfi.funcId].codes.push(entry.codeId);\0A\0A    kind = Profile.getKindFromState(state);\0A\0A    this.codeEntries_.push({\0A      name: entry.name,\0A      type: entry.type,\0A      kind: kind,\0A      func: sfi.funcId,\0A      tm: timestamp,\0A    });\0A  }\0A  return entry;\0A};\0A\0AJsonProfile.prototype.moveCode = function (from, to) {\0A  try {\0A    this.codeMap_.moveCode(from, to);\0A  } catch (e) {\0A    printErr(`Move: unknown source ${from}`);\0A  }\0A};\0A\0AJsonProfile.prototype.addSourcePositions = function (\0A  start, script, startPos, endPos, sourcePositions, inliningPositions,\0A  inlinedSFIs) {\0A  const entry = this.codeMap_.findDynamicEntryByStartAddress(start);\0A  if (!entry) return;\0A  const codeId = entry.codeId;\0A\0A  // Resolve the inlined functions list.\0A  if (inlinedSFIs.length > 0) {\0A    inlinedSFIs = inlinedSFIs.substring(1).split(\22S\22);\0A    for (let i = 0; i < inlinedSFIs.length; i++) {\0A      const sfiAddr = parseInt(inlinedSFIs[i]);\0A      const sfi = this.codeMap_.findDynamicEntryByStartAddress(sfiAddr);\0A      if (!sfi || sfi.funcId === undefined) {\0A        printErr(`Could not find SFI ${inlinedSFIs[i]}`);\0A        inlinedSFIs[i] = null;\0A      } else {\0A        inlinedSFIs[i] = sfi.funcId;\0A      }\0A    }\0A  } else {\0A    inlinedSFIs = [];\0A  }\0A\0A  this.codeEntries_[entry.codeId].source = {\0A    script: script,\0A    start: startPos,\0A    end: endPos,\0A    positions: sourcePositions,\0A    inlined: inliningPositions,\0A    fns: inlinedSFIs\0A  };\0A};\0A\0AJsonProfile.prototype.addScriptSource = function (id, url, source) {\0A  const script = new Script(id);\0A  script.update(url, source);\0A  this.scripts_[id] = script;\0A};\0A\0AJsonProfile.prototype.deoptCode = function (\0A  timestamp, code, inliningId, scriptOffset, bailoutType,\0A  sourcePositionText, deoptReasonText) {\0A  let entry = this.codeMap_.findDynamicEntryByStartAddress(code);\0A  if (entry) {\0A    let codeId = entry.codeId;\0A    if (!this.codeEntries_[codeId].deopt) {\0A      // Only add the deopt if there was no deopt before.\0A      // The subsequent deoptimizations should be lazy deopts for\0A      // other on-stack activations.\0A      this.codeEntries_[codeId].deopt = {\0A        tm: timestamp,\0A        inliningId: inliningId,\0A        scriptOffset: scriptOffset,\0A        posText: sourcePositionText,\0A        reason: deoptReasonText,\0A        bailoutType: bailoutType,\0A      };\0A    }\0A  }\0A};\0A\0AJsonProfile.prototype.deleteCode = function (start) {\0A  try {\0A    this.codeMap_.deleteCode(start);\0A  } catch (e) {\0A    printErr(`Delete: unknown address ${start}`);\0A  }\0A};\0A\0AJsonProfile.prototype.moveSharedFunctionInfo = function (from, to) {\0A  if (this.codeMap_.findDynamicEntryByStartAddress(from)) {\0A    this.codeMap_.moveCode(from, to);\0A  }\0A};\0A\0AJsonProfile.prototype.findEntry = function (addr) {\0A  return this.codeMap_.findEntry(addr);\0A};\0A\0AJsonProfile.prototype.recordTick = function (time_ns, vmState, stack) {\0A  // TODO(jarin) Resolve the frame-less case (when top of stack is\0A  // known code).\0A  const processedStack = [];\0A  for (let i = 0; i < stack.length; i++) {\0A    const resolved = this.codeMap_.findAddress(stack[i]);\0A    if (resolved) {\0A      processedStack.push(resolved.entry.codeId, resolved.offset);\0A    } else {\0A      processedStack.push(-1, stack[i]);\0A    }\0A  }\0A  this.ticks_.push({ tm: time_ns, vm: vmState, s: processedStack });\0A};\0A\0Afunction writeJson(s) {\0A  write(JSON.stringify(s, null, 2));\0A}\0A\0AJsonProfile.prototype.writeJson = function () {\0A  // Write out the JSON in a partially manual way to avoid creating too-large\0A  // strings in one JSON.stringify call when there are a lot of ticks.\0A  write('{\\n')\0A\0A  write('  \22code\22: ');\0A  writeJson(this.codeEntries_);\0A  write(',\\n');\0A\0A  write('  \22functions\22: ');\0A  writeJson(this.functionEntries_);\0A  write(',\\n');\0A\0A  write('  \22ticks\22: [\\n');\0A  for (let i = 0; i < this.ticks_.length; i++) {\0A    write('    ');\0A    writeJson(this.ticks_[i]);\0A    if (i < this.ticks_.length - 1) {\0A      write(',\\n');\0A    } else {\0A      write('\\n');\0A    }\0A  }\0A  write('  ],\\n');\0A\0A  write('  \22scripts\22: ');\0A  writeJson(this.scripts_);\0A\0A  write('}\\n');\0A};\0A\00", align 1
@.str.1107 = private unnamed_addr constant [6363 x i8] c"// Copyright 2009 the V8 project authors. All rights reserved.\0A// Redistribution and use in source and binary forms, with or without\0A// modification, are permitted provided that the following conditions are\0A// met:\0A//\0A//     * Redistributions of source code must retain the above copyright\0A//       notice, this list of conditions and the following disclaimer.\0A//     * Redistributions in binary form must reproduce the above\0A//       copyright notice, this list of conditions and the following\0A//       disclaimer in the documentation and/or other materials provided\0A//       with the distribution.\0A//     * Neither the name of Google Inc. nor the names of its\0A//       contributors may be used to endorse or promote products derived\0A//       from this software without specific prior written permission.\0A//\0A// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS\0A// \22AS IS\22 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\0A// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR\0A// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT\0A// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,\0A// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT\0A// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\0A// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\0A// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\0A// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\0A// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\0A\0Aimport { ConsArray } from \22./consarray.mjs\22;\0A\0A/**\0A * Creates a Profile View builder object.\0A *\0A * @param {number} samplingRate Number of ms between profiler ticks.\0A * @constructor\0A */\0Aexport function ViewBuilder(samplingRate) {\0A  this.samplingRate = samplingRate;\0A};\0A\0A\0A/**\0A * Builds a profile view for the specified call tree.\0A *\0A * @param {CallTree} callTree A call tree.\0A * @param {boolean} opt_bottomUpViewWeights Whether remapping\0A *     of self weights for a bottom up view is needed.\0A */\0AViewBuilder.prototype.buildView = function(\0A    callTree, opt_bottomUpViewWeights) {\0A  let head;\0A  const samplingRate = this.samplingRate;\0A  const createViewNode = this.createViewNode;\0A  callTree.traverse(function(node, viewParent) {\0A    const totalWeight = node.totalWeight * samplingRate;\0A    let selfWeight = node.selfWeight * samplingRate;\0A    if (opt_bottomUpViewWeights === true) {\0A      if (viewParent === head) {\0A        selfWeight = totalWeight;\0A      } else {\0A        selfWeight = 0;\0A      }\0A    }\0A    const viewNode = createViewNode(node.label, totalWeight, selfWeight, head);\0A    if (viewParent) {\0A      viewParent.addChild(viewNode);\0A    } else {\0A      head = viewNode;\0A    }\0A    return viewNode;\0A  });\0A  const view = this.createView(head);\0A  return view;\0A};\0A\0A\0A/**\0A * Factory method for a profile view.\0A *\0A * @param {ProfileView.Node} head View head node.\0A * @return {ProfileView} Profile view.\0A */\0AViewBuilder.prototype.createView = head => new ProfileView(head);\0A\0A\0A/**\0A * Factory method for a profile view node.\0A *\0A * @param {string} internalFuncName A fully qualified function name.\0A * @param {number} totalTime Amount of time that application spent in the\0A *     corresponding function and its descendants (not that depending on\0A *     profile they can be either callees or callers.)\0A * @param {number} selfTime Amount of time that application spent in the\0A *     corresponding function only.\0A * @param {ProfileView.Node} head Profile view head.\0A * @return {ProfileView.Node} Profile view node.\0A */\0AViewBuilder.prototype.createViewNode = (\0A    funcName, totalTime, selfTime, head) =>\0A  new ProfileView.Node(\0A      funcName, totalTime, selfTime, head)\0A;\0A\0A\0A/**\0A * Creates a Profile View object. It allows to perform sorting\0A * and filtering actions on the profile.\0A *\0A * @param {ProfileView.Node} head Head (root) node.\0A * @constructor\0A */\0Aexport function ProfileView(head) {\0A  this.head = head;\0A};\0A\0A\0A/**\0A * Sorts the profile view using the specified sort function.\0A *\0A * @param {function(ProfileView.Node,\0A *     ProfileView.Node):number} sortFunc A sorting\0A *     functions. Must comply with Array.sort sorting function requirements.\0A */\0AProfileView.prototype.sort = function(sortFunc) {\0A  this.traverse(function (node) {\0A    node.sortChildren(sortFunc);\0A  });\0A};\0A\0A\0A/**\0A * Traverses profile view nodes in preorder.\0A *\0A * @param {function(ProfileView.Node)} f Visitor function.\0A */\0AProfileView.prototype.traverse = function(f) {\0A  const nodesToTraverse = new ConsArray();\0A  nodesToTraverse.concat([this.head]);\0A  while (!nodesToTraverse.atEnd()) {\0A    const node = nodesToTraverse.next();\0A    f(node);\0A    nodesToTraverse.concat(node.children);\0A  }\0A};\0A\0A\0A/**\0A * Constructs a Profile View node object. Each node object corresponds to\0A * a function call.\0A *\0A * @param {string} internalFuncName A fully qualified function name.\0A * @param {number} totalTime Amount of time that application spent in the\0A *     corresponding function and its descendants (not that depending on\0A *     profile they can be either callees or callers.)\0A * @param {number} selfTime Amount of time that application spent in the\0A *     corresponding function only.\0A * @param {ProfileView.Node} head Profile view head.\0A * @constructor\0A */\0AProfileView.Node = function(\0A    internalFuncName, totalTime, selfTime, head) {\0A  this.internalFuncName = internalFuncName;\0A  this.totalTime = totalTime;\0A  this.selfTime = selfTime;\0A  this.head = head;\0A  this.parent = null;\0A  this.children = [];\0A};\0A\0A\0A/**\0A * Returns a share of the function's total time in its parent's total time.\0A */\0AProfileView.Node.prototype.__defineGetter__(\0A    'parentTotalPercent',\0A    function() { return this.totalTime /\0A      (this.parent ? this.parent.totalTime : this.totalTime) * 100.0; });\0A\0A\0A/**\0A * Adds a child to the node.\0A *\0A * @param {ProfileView.Node} node Child node.\0A */\0AProfileView.Node.prototype.addChild = function(node) {\0A  node.parent = this;\0A  this.children.push(node);\0A};\0A\0A\0A/**\0A * Sorts all the node's children recursively.\0A *\0A * @param {function(ProfileView.Node,\0A *     ProfileView.Node):number} sortFunc A sorting\0A *     functions. Must comply with Array.sort sorting function requirements.\0A */\0AProfileView.Node.prototype.sortChildren = function(\0A    sortFunc) {\0A  this.children.sort(sortFunc);\0A};\0A\00", align 1
@.str.1108 = private unnamed_addr constant [13701 x i8] c"// Copyright 2013 the V8 project authors. All rights reserved.\0A// Redistribution and use in source and binary forms, with or without\0A// modification, are permitted provided that the following conditions are\0A// met:\0A//\0A//     * Redistributions of source code must retain the above copyright\0A//       notice, this list of conditions and the following disclaimer.\0A//     * Redistributions in binary form must reproduce the above\0A//       copyright notice, this list of conditions and the following\0A//       disclaimer in the documentation and/or other materials provided\0A//       with the distribution.\0A//     * Neither the name of Google Inc. nor the names of its\0A//       contributors may be used to endorse or promote products derived\0A//       from this software without specific prior written permission.\0A//\0A// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS\0A// \22AS IS\22 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\0A// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR\0A// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT\0A// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,\0A// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT\0A// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\0A// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\0A// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\0A// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\0A// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\0A\0A// This is a copy from blink dev tools, see:\0A// http://src.chromium.org/viewvc/blink/trunk/Source/devtools/front_end/SourceMap.js\0A// revision: 153407\0A\0A// Added to make the file work without dev tools\0Aexport const WebInspector = {};\0AWebInspector.ParsedURL = {};\0AWebInspector.ParsedURL.completeURL = function(){};\0A// start of original file content\0A\0A/*\0A * Copyright (C) 2012 Google Inc. All rights reserved.\0A *\0A * Redistribution and use in source and binary forms, with or without\0A * modification, are permitted provided that the following conditions are\0A * met:\0A *\0A *     * Redistributions of source code must retain the above copyright\0A * notice, this list of conditions and the following disclaimer.\0A *     * Redistributions in binary form must reproduce the above\0A * copyright notice, this list of conditions and the following disclaimer\0A * in the documentation and/or other materials provided with the\0A * distribution.\0A *     * Neither the name of Google Inc. nor the names of its\0A * contributors may be used to endorse or promote products derived from\0A * this software without specific prior written permission.\0A *\0A * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS\0A * \22AS IS\22 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\0A * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR\0A * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT\0A * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,\0A * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT\0A * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\0A * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\0A * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\0A * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\0A * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\0A */\0A\0A/**\0A * Implements Source Map V3 model. See http://code.google.com/p/closure-compiler/wiki/SourceMaps\0A * for format description.\0A * @constructor\0A * @param {string} sourceMappingURL\0A * @param {SourceMapV3} payload\0A */\0AWebInspector.SourceMap = function(sourceMappingURL, payload)\0A{\0A    if (!WebInspector.SourceMap.prototype._base64Map) {\0A        const base64Digits = \22ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\22;\0A        WebInspector.SourceMap.prototype._base64Map = {};\0A        for (let i = 0; i < base64Digits.length; ++i)\0A            WebInspector.SourceMap.prototype._base64Map[base64Digits.charAt(i)] = i;\0A    }\0A\0A    this._sourceMappingURL = sourceMappingURL;\0A    this._reverseMappingsBySourceURL = {};\0A    this._mappings = [];\0A    this._sources = {};\0A    this._sourceContentByURL = {};\0A    this._parseMappingPayload(payload);\0A}\0A\0A/**\0A * @param {string} sourceMapURL\0A * @param {string} compiledURL\0A * @param {function(WebInspector.SourceMap)} callback\0A */\0AWebInspector.SourceMap.load = function(sourceMapURL, compiledURL, callback)\0A{\0A    NetworkAgent.loadResourceForFrontend(WebInspector.resourceTreeModel.mainFrame.id, sourceMapURL, undefined, contentLoaded.bind(this));\0A\0A    /**\0A     * @param {?Protocol.Error} error\0A     * @param {number} statusCode\0A     * @param {NetworkAgent.Headers} headers\0A     * @param {string} content\0A     */\0A    function contentLoaded(error, statusCode, headers, content)\0A    {\0A        if (error || !content || statusCode >= 400) {\0A            console.error(`Could not load content for ${sourceMapURL} : ${error || (`HTTP status code: ${statusCode}`)}`);\0A            callback(null);\0A            return;\0A        }\0A\0A        if (content.slice(0, 3) === \22)]}\22)\0A            content = content.substring(content.indexOf('\\n'));\0A        try {\0A            const payload = /** @type {SourceMapV3} */ (JSON.parse(content));\0A            const baseURL = sourceMapURL.startsWith(\22data:\22) ? compiledURL : sourceMapURL;\0A            callback(new WebInspector.SourceMap(baseURL, payload));\0A        } catch(e) {\0A            console.error(e.message);\0A            callback(null);\0A        }\0A    }\0A}\0A\0AWebInspector.SourceMap.prototype = {\0A    /**\0A     * @return {string[]}\0A     */\0A    sources()\0A    {\0A        return Object.keys(this._sources);\0A    },\0A\0A    /**\0A     * @param {string} sourceURL\0A     * @return {string|undefined}\0A     */\0A    sourceContent(sourceURL)\0A    {\0A        return this._sourceContentByURL[sourceURL];\0A    },\0A\0A    /**\0A     * @param {string} sourceURL\0A     * @param {WebInspector.ResourceType} contentType\0A     * @return {WebInspector.ContentProvider}\0A     */\0A    sourceContentProvider(sourceURL, contentType)\0A    {\0A        const lastIndexOfDot = sourceURL.lastIndexOf(\22.\22);\0A        const extension = lastIndexOfDot !== -1 ? sourceURL.substr(lastIndexOfDot + 1) : \22\22;\0A        const mimeType = WebInspector.ResourceType.mimeTypesForExtensions[extension.toLowerCase()];\0A        const sourceContent = this.sourceContent(sourceURL);\0A        if (sourceContent)\0A            return new WebInspector.StaticContentProvider(contentType, sourceContent, mimeType);\0A        return new WebInspector.CompilerSourceMappingContentProvider(sourceURL, contentType, mimeType);\0A    },\0A\0A    /**\0A     * @param {SourceMapV3} mappingPayload\0A     */\0A    _parseMappingPayload(mappingPayload)\0A    {\0A        if (mappingPayload.sections)\0A            this._parseSections(mappingPayload.sections);\0A        else\0A            this._parseMap(mappingPayload, 0, 0);\0A    },\0A\0A    /**\0A     * @param {Array.<SourceMapV3.Section>} sections\0A     */\0A    _parseSections(sections)\0A    {\0A        for (let i = 0; i < sections.length; ++i) {\0A            const section = sections[i];\0A            this._parseMap(section.map, section.offset.line, section.offset.column);\0A        }\0A    },\0A\0A    /**\0A     * @param {number} lineNumber in compiled resource\0A     * @param {number} columnNumber in compiled resource\0A     * @return {?Array}\0A     */\0A    findEntry(lineNumber, columnNumber)\0A    {\0A        let first = 0;\0A        let count = this._mappings.length;\0A        while (count > 1) {\0A          const step = count >> 1;\0A          const middle = first + step;\0A          const mapping = this._mappings[middle];\0A          if (lineNumber < mapping[0] || (lineNumber === mapping[0] && columnNumber < mapping[1]))\0A              count = step;\0A          else {\0A              first = middle;\0A              count -= step;\0A          }\0A        }\0A        const entry = this._mappings[first];\0A        if (!first && entry && (lineNumber < entry[0] || (lineNumber === entry[0] && columnNumber < entry[1])))\0A            return null;\0A        return entry;\0A    },\0A\0A    /**\0A     * @param {string} sourceURL of the originating resource\0A     * @param {number} lineNumber in the originating resource\0A     * @return {Array}\0A     */\0A    findEntryReversed(sourceURL, lineNumber)\0A    {\0A        const mappings = this._reverseMappingsBySourceURL[sourceURL];\0A        for ( ; lineNumber < mappings.length; ++lineNumber) {\0A            const mapping = mappings[lineNumber];\0A            if (mapping)\0A                return mapping;\0A        }\0A        return this._mappings[0];\0A    },\0A\0A    /**\0A     * @override\0A     */\0A    _parseMap(map, lineNumber, columnNumber)\0A    {\0A        let sourceIndex = 0;\0A        let sourceLineNumber = 0;\0A        let sourceColumnNumber = 0;\0A        let nameIndex = 0;\0A\0A        const sources = [];\0A        const originalToCanonicalURLMap = {};\0A        for (let i = 0; i < map.sources.length; ++i) {\0A            const originalSourceURL = map.sources[i];\0A            let sourceRoot = map.sourceRoot || \22\22;\0A            if (sourceRoot && !sourceRoot.endsWith(\22/\22)) sourceRoot += \22/\22;\0A            const href = sourceRoot + originalSourceURL;\0A            const url = WebInspector.ParsedURL.completeURL(this._sourceMappingURL, href) || href;\0A            originalToCanonicalURLMap[originalSourceURL] = url;\0A            sources.push(url);\0A            this._sources[url] = true;\0A\0A            if (map.sourcesContent && map.sourcesContent[i]) {\0A                this._sourceContentByURL[url] = map.sourcesContent[i];\0A            }\0A        }\0A\0A        const stringCharIterator = new WebInspector.SourceMap.StringCharIterator(map.mappings);\0A        let sourceURL = sources[sourceIndex];\0A\0A        while (true) {\0A            if (stringCharIterator.peek() === \22,\22)\0A                stringCharIterator.next();\0A            else {\0A                while (stringCharIterator.peek() === \22;\22) {\0A                    lineNumber += 1;\0A                    columnNumber = 0;\0A                    stringCharIterator.next();\0A                }\0A                if (!stringCharIterator.hasNext())\0A                    break;\0A            }\0A\0A            columnNumber += this._decodeVLQ(stringCharIterator);\0A            if (this._isSeparator(stringCharIterator.peek())) {\0A                this._mappings.push([lineNumber, columnNumber]);\0A                continue;\0A            }\0A\0A            const sourceIndexDelta = this._decodeVLQ(stringCharIterator);\0A            if (sourceIndexDelta) {\0A                sourceIndex += sourceIndexDelta;\0A                sourceURL = sources[sourceIndex];\0A            }\0A            sourceLineNumber += this._decodeVLQ(stringCharIterator);\0A            sourceColumnNumber += this._decodeVLQ(stringCharIterator);\0A            if (!this._isSeparator(stringCharIterator.peek()))\0A                nameIndex += this._decodeVLQ(stringCharIterator);\0A\0A            this._mappings.push([lineNumber, columnNumber, sourceURL, sourceLineNumber, sourceColumnNumber]);\0A        }\0A\0A        for (let i = 0; i < this._mappings.length; ++i) {\0A            const mapping = this._mappings[i];\0A            const url = mapping[2];\0A            if (!url) continue;\0A            if (!this._reverseMappingsBySourceURL[url]) {\0A                this._reverseMappingsBySourceURL[url] = [];\0A            }\0A            const reverseMappings = this._reverseMappingsBySourceURL[url];\0A            const sourceLine = mapping[3];\0A            if (!reverseMappings[sourceLine]) {\0A                reverseMappings[sourceLine] = [mapping[0], mapping[1]];\0A            }\0A        }\0A    },\0A\0A    /**\0A     * @param {string} char\0A     * @return {boolean}\0A     */\0A    _isSeparator(char)\0A    {\0A        return char === \22,\22 || char === \22;\22;\0A    },\0A\0A    /**\0A     * @param {WebInspector.SourceMap.StringCharIterator} stringCharIterator\0A     * @return {number}\0A     */\0A    _decodeVLQ(stringCharIterator)\0A    {\0A        // Read unsigned value.\0A        let result = 0;\0A        let shift = 0;\0A        let digit;\0A        do {\0A            digit = this._base64Map[stringCharIterator.next()];\0A            result += (digit & this._VLQ_BASE_MASK) << shift;\0A            shift += this._VLQ_BASE_SHIFT;\0A        } while (digit & this._VLQ_CONTINUATION_MASK);\0A\0A        // Fix the sign.\0A        const negate = result & 1;\0A        // Use unsigned right shift, so that the 32nd bit is properly shifted\0A        // to the 31st, and the 32nd becomes unset.\0A        result >>>= 1;\0A        if (negate) {\0A          // We need to OR 0x80000000 here to ensure the 32nd bit (the sign bit\0A          // in a 32bit int) is always set for negative numbers. If `result`\0A          // were 1, (meaning `negate` is true and all other bits were zeros),\0A          // `result` would now be 0. But -0 doesn't flip the 32nd bit as\0A          // intended. All other numbers will successfully set the 32nd bit\0A          // without issue, so doing this is a noop for them.\0A          return -result | 0x80000000;\0A        }\0A        return result;\0A    },\0A\0A    _VLQ_BASE_SHIFT: 5,\0A    _VLQ_BASE_MASK: (1 << 5) - 1,\0A    _VLQ_CONTINUATION_MASK: 1 << 5\0A}\0A\0A/**\0A * @constructor\0A * @param {string} string\0A */\0AWebInspector.SourceMap.StringCharIterator = function(string)\0A{\0A    this._string = string;\0A    this._position = 0;\0A}\0A\0AWebInspector.SourceMap.StringCharIterator.prototype = {\0A    /**\0A     * @return {string}\0A     */\0A    next()\0A    {\0A        return this._string.charAt(this._position++);\0A    },\0A\0A    /**\0A     * @return {string}\0A     */\0A    peek()\0A    {\0A        return this._string.charAt(this._position);\0A    },\0A\0A    /**\0A     * @return {boolean}\0A     */\0A    hasNext()\0A    {\0A        return this._position < this._string.length;\0A    }\0A}\0A\00", align 1
@.str.1109 = private unnamed_addr constant [8860 x i8] c"// Copyright 2009 the V8 project authors. All rights reserved.\0A// Redistribution and use in source and binary forms, with or without\0A// modification, are permitted provided that the following conditions are\0A// met:\0A//\0A//     * Redistributions of source code must retain the above copyright\0A//       notice, this list of conditions and the following disclaimer.\0A//     * Redistributions in binary form must reproduce the above\0A//       copyright notice, this list of conditions and the following\0A//       disclaimer in the documentation and/or other materials provided\0A//       with the distribution.\0A//     * Neither the name of Google Inc. nor the names of its\0A//       contributors may be used to endorse or promote products derived\0A//       from this software without specific prior written permission.\0A//\0A// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS\0A// \22AS IS\22 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\0A// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR\0A// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT\0A// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,\0A// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT\0A// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\0A// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\0A// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\0A// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\0A// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\0A\0A\0A/**\0A * Constructs a Splay tree.  A splay tree is a self-balancing binary\0A * search tree with the additional property that recently accessed\0A * elements are quick to access again. It performs basic operations\0A * such as insertion, look-up and removal in O(log(n)) amortized time.\0A *\0A * @constructor\0A */\0Aexport class SplayTree {\0A\0A  /**\0A   * Pointer to the root node of the tree.\0A   *\0A   * @type {SplayTreeNode}\0A   * @private\0A   */\0A  root_ = null;\0A\0A\0A  /**\0A   * @return {boolean} Whether the tree is empty.\0A   */\0A  isEmpty() {\0A    return this.root_ === null;\0A  }\0A\0A  /**\0A   * Inserts a node into the tree with the specified key and value if\0A   * the tree does not already contain a node with the specified key. If\0A   * the value is inserted, it becomes the root of the tree.\0A   *\0A   * @param {number} key Key to insert into the tree.\0A   * @param {*} value Value to insert into the tree.\0A   */\0A  insert(key, value) {\0A    if (this.isEmpty()) {\0A      this.root_ = new SplayTreeNode(key, value);\0A      return;\0A    }\0A    // Splay on the key to move the last node on the search path for\0A    // the key to the root of the tree.\0A    this.splay_(key);\0A    if (this.root_.key == key) return;\0A\0A    const node = new SplayTreeNode(key, value);\0A    if (key > this.root_.key) {\0A      node.left = this.root_;\0A      node.right = this.root_.right;\0A      this.root_.right = null;\0A    } else {\0A      node.right = this.root_;\0A      node.left = this.root_.left;\0A      this.root_.left = null;\0A    }\0A    this.root_ = node;\0A  }\0A\0A  /**\0A   * Removes a node with the specified key from the tree if the tree\0A   * contains a node with this key. The removed node is returned. If the\0A   * key is not found, an exception is thrown.\0A   *\0A   * @param {number} key Key to find and remove from the tree.\0A   * @return {SplayTreeNode} The removed node.\0A   */\0A  remove(key) {\0A    if (this.isEmpty()) {\0A      throw Error(`Key not found: ${key}`);\0A    }\0A    this.splay_(key);\0A    if (this.root_.key != key) {\0A      throw Error(`Key not found: ${key}`);\0A    }\0A    const removed = this.root_;\0A    if (this.root_.left === null) {\0A      this.root_ = this.root_.right;\0A    } else {\0A      const { right } = this.root_;\0A      this.root_ = this.root_.left;\0A      // Splay to make sure that the new root has an empty right child.\0A      this.splay_(key);\0A      // Insert the original right child as the right child of the new\0A      // root.\0A      this.root_.right = right;\0A    }\0A    return removed;\0A  }\0A\0A  /**\0A   * Returns the node having the specified key or null if the tree doesn't contain\0A   * a node with the specified key.\0A   *\0A   * @param {number} key Key to find in the tree.\0A   * @return {SplayTreeNode} Node having the specified key.\0A   */\0A  find(key) {\0A    if (this.isEmpty()) return null;\0A    this.splay_(key);\0A    return this.root_.key == key ? this.root_ : null;\0A  }\0A\0A  /**\0A   * @return {SplayTreeNode} Node having the minimum key value.\0A   */\0A  findMin() {\0A    if (this.isEmpty()) return null;\0A    let current = this.root_;\0A    while (current.left !== null) {\0A      current = current.left;\0A    }\0A    return current;\0A  }\0A\0A  /**\0A   * @return {SplayTreeNode} Node having the maximum key value.\0A   */\0A  findMax(opt_startNode) {\0A    if (this.isEmpty()) return null;\0A    let current = opt_startNode || this.root_;\0A    while (current.right !== null) {\0A      current = current.right;\0A    }\0A    return current;\0A  }\0A\0A  /**\0A   * @return {SplayTreeNode} Node having the maximum key value that\0A   *     is less or equal to the specified key value.\0A   */\0A  findGreatestLessThan(key) {\0A    if (this.isEmpty()) return null;\0A    // Splay on the key to move the node with the given key or the last\0A    // node on the search path to the top of the tree.\0A    this.splay_(key);\0A    // Now the result is either the root node or the greatest node in\0A    // the left subtree.\0A    if (this.root_.key <= key) {\0A      return this.root_;\0A    } else if (this.root_.left !== null) {\0A      return this.findMax(this.root_.left);\0A    } else {\0A      return null;\0A    }\0A  }\0A\0A  /**\0A   * @return {Array<*>} An array containing all the values of tree's nodes paired\0A   *     with keys.\0A   */\0A  exportKeysAndValues() {\0A    const result = [];\0A    this.traverse_(function(node) { result.push([node.key, node.value]); });\0A    return result;\0A  }\0A\0A  /**\0A   * @return {Array<*>} An array containing all the values of tree's nodes.\0A   */\0A  exportValues() {\0A    const result = [];\0A    this.traverse_(function(node) { result.push(node.value) });\0A    return result;\0A  }\0A\0A  /**\0A   * Perform the splay operation for the given key. Moves the node with\0A   * the given key to the top of the tree.  If no node has the given\0A   * key, the last node on the search path is moved to the top of the\0A   * tree. This is the simplified top-down splaying algorithm from:\0A   * \22Self-adjusting Binary Search Trees\22 by Sleator and Tarjan\0A   *\0A   * @param {number} key Key to splay the tree on.\0A   * @private\0A   */\0A  splay_(key) {\0A    if (this.isEmpty()) return;\0A    // Create a dummy node.  The use of the dummy node is a bit\0A    // counter-intuitive: The right child of the dummy node will hold\0A    // the L tree of the algorithm.  The left child of the dummy node\0A    // will hold the R tree of the algorithm.  Using a dummy node, left\0A    // and right will always be nodes and we avoid special cases.\0A    let dummy, left, right;\0A    dummy = left = right = new SplayTreeNode(null, null);\0A    let current = this.root_;\0A    while (true) {\0A      if (key < current.key) {\0A        if (current.left === null) break;\0A        if (key < current.left.key) {\0A          // Rotate right.\0A          const tmp = current.left;\0A          current.left = tmp.right;\0A          tmp.right = current;\0A          current = tmp;\0A          if (current.left === null) break;\0A        }\0A        // Link right.\0A        right.left = current;\0A        right = current;\0A        current = current.left;\0A      } else if (key > current.key) {\0A        if (current.right === null) break;\0A        if (key > current.right.key) {\0A          // Rotate left.\0A          const tmp = current.right;\0A          current.right = tmp.left;\0A          tmp.left = current;\0A          current = tmp;\0A          if (current.right === null) break;\0A        }\0A        // Link left.\0A        left.right = current;\0A        left = current;\0A        current = current.right;\0A      } else {\0A        break;\0A      }\0A    }\0A    // Assemble.\0A    left.right = current.left;\0A    right.left = current.right;\0A    current.left = dummy.right;\0A    current.right = dummy.left;\0A    this.root_ = current;\0A  }\0A\0A  /**\0A   * Performs a preorder traversal of the tree.\0A   *\0A   * @param {function(SplayTreeNode)} f Visitor function.\0A   * @private\0A   */\0A  traverse_(f) {\0A    const nodesToVisit = [this.root_];\0A    while (nodesToVisit.length > 0) {\0A      const node = nodesToVisit.shift();\0A      if (node === null) continue;\0A      f(node);\0A      nodesToVisit.push(node.left);\0A      nodesToVisit.push(node.right);\0A    }\0A  }\0A}\0A\0A/**\0A * Constructs a Splay tree node.\0A *\0A * @param {number} key Key.\0A * @param {*} value Value.\0A */\0Aclass SplayTreeNode {\0A  constructor(key, value) {\0A    this.key = key;\0A    this.value = value;\0A    /**\0A     * @type {SplayTreeNode}\0A     */\0A    this.left = null;\0A    /**\0A     * @type {SplayTreeNode}\0A     */\0A    this.right = null;\0A  }\0A};\0A\00", align 1
@.str.1110 = private unnamed_addr constant [2009 x i8] c"// Copyright 2012 the V8 project authors. All rights reserved.\0A// Redistribution and use in source and binary forms, with or without\0A// modification, are permitted provided that the following conditions are\0A// met:\0A//\0A//     * Redistributions of source code must retain the above copyright\0A//       notice, this list of conditions and the following disclaimer.\0A//     * Redistributions in binary form must reproduce the above\0A//       copyright notice, this list of conditions and the following\0A//       disclaimer in the documentation and/or other materials provided\0A//       with the distribution.\0A//     * Neither the name of Google Inc. nor the names of its\0A//       contributors may be used to endorse or promote products derived\0A//       from this software without specific prior written permission.\0A//\0A// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS\0A// \22AS IS\22 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\0A// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR\0A// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT\0A// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,\0A// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT\0A// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\0A// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\0A// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\0A// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\0A// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\0A\0Aimport { ArgumentsProcessor, TickProcessor } from \22./tickprocessor.mjs\22;\0A\0Aconst params = ArgumentsProcessor.process(arguments);\0A// TODO(cbruni): Use common Processor from processor.mjs\0Aconst tickProcessor = TickProcessor.fromParams(params);\0Aawait tickProcessor.processLogFile(params.logFileName);\0Aif (params.serializeVMSymbols) {\0A  tickProcessor.printVMSymbols();\0A} else {\0A  tickProcessor.printStatistics();\0A}\0A\00", align 1
@.str.1111 = private unnamed_addr constant [37285 x i8] c"// Copyright 2012 the V8 project authors. All rights reserved.\0A// Redistribution and use in source and binary forms, with or without\0A// modification, are permitted provided that the following conditions are\0A// met:\0A//\0A//     * Redistributions of source code must retain the above copyright\0A//       notice, this list of conditions and the following disclaimer.\0A//     * Redistributions in binary form must reproduce the above\0A//       copyright notice, this list of conditions and the following\0A//       disclaimer in the documentation and/or other materials provided\0A//       with the distribution.\0A//     * Neither the name of Google Inc. nor the names of its\0A//       contributors may be used to endorse or promote products derived\0A//       from this software without specific prior written permission.\0A//\0A// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS\0A// \22AS IS\22 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\0A// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR\0A// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT\0A// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,\0A// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT\0A// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\0A// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\0A// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\0A// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\0A// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\0A\0Aimport { LogReader, parseString, parseVarArgs } from \22./logreader.mjs\22;\0Aimport { BaseArgumentsProcessor, parseBool } from \22./arguments.mjs\22;\0Aimport { Profile, JsonProfile } from \22./profile.mjs\22;\0Aimport { ViewBuilder } from \22./profile_view.mjs\22;\0Aimport { WebInspector} from \22./sourcemap.mjs\22;\0A\0A\0Aclass V8Profile extends Profile {\0A  static IC_RE =\0A      /^(LoadGlobalIC: )|(Handler: )|(?:CallIC|LoadIC|StoreIC)|(?:Builtin: (?:Keyed)?(?:Load|Store)IC_)/;\0A  static BYTECODES_RE = /^(BytecodeHandler: )/;\0A  static SPARKPLUG_HANDLERS_RE = /^(Builtin: .*Baseline.*)/;\0A  static BUILTINS_RE = /^(Builtin: )/;\0A  static STUBS_RE = /^(Stub: )/;\0A\0A  constructor(separateIc, separateBytecodes, separateBuiltins, separateStubs,\0A        separateSparkplugHandlers, useBigIntAddresses=false) {\0A    super(useBigIntAddresses);\0A    const regexps = [];\0A    if (!separateIc) regexps.push(V8Profile.IC_RE);\0A    if (!separateBytecodes) regexps.push(V8Profile.BYTECODES_RE);\0A    if (!separateBuiltins) regexps.push(V8Profile.BUILTINS_RE);\0A    if (!separateStubs) regexps.push(V8Profile.STUBS_RE);\0A    if (regexps.length > 0) {\0A      this.skipThisFunction = function(name) {\0A        for (let i = 0; i < regexps.length; i++) {\0A          if (regexps[i].test(name)) return true;\0A        }\0A        return false;\0A      };\0A    }\0A  }\0A}\0A\0Aclass CppEntriesProvider {\0A  constructor(useBigIntAddresses=false) {\0A    this._isEnabled = true;\0A    this.parseAddr = useBigIntAddresses ? BigInt : parseInt;\0A    this.parseHexAddr = useBigIntAddresses ?\0A        (str) => BigInt(parseInt(str, 16)) :\0A        (str) => parseInt(str, 16);\0A\0A  }\0A\0A  inRange(funcInfo, start, end) {\0A    return funcInfo.start >= start && funcInfo.end <= end;\0A  }\0A\0A  async parseVmSymbols(libName, libStart, libEnd, libASLRSlide, processorFunc) {\0A    if (!this._isEnabled) return;\0A    await this.loadSymbols(libName);\0A\0A    let lastUnknownSize;\0A    let lastAdded;\0A\0A    let addEntry = (funcInfo) => {\0A      // Several functions can be mapped onto the same address. To avoid\0A      // creating zero-sized entries, skip such duplicates.\0A      // Also double-check that function belongs to the library address space.\0A\0A      if (lastUnknownSize &&\0A        lastUnknownSize.start < funcInfo.start) {\0A        // Try to update lastUnknownSize based on new entries start position.\0A        lastUnknownSize.end = funcInfo.start;\0A        if ((!lastAdded ||\0A            !this.inRange(lastUnknownSize, lastAdded.start, lastAdded.end)) &&\0A            this.inRange(lastUnknownSize, libStart, libEnd)) {\0A          processorFunc(\0A              lastUnknownSize.name, lastUnknownSize.start, lastUnknownSize.end);\0A          lastAdded = lastUnknownSize;\0A        }\0A      }\0A      lastUnknownSize = undefined;\0A\0A      if (funcInfo.end) {\0A        // Skip duplicates that have the same start address as the last added.\0A        if ((!lastAdded || lastAdded.start != funcInfo.start) &&\0A          this.inRange(funcInfo, libStart, libEnd)) {\0A          processorFunc(funcInfo.name, funcInfo.start, funcInfo.end);\0A          lastAdded = funcInfo;\0A        }\0A      } else {\0A        // If a funcInfo doesn't have an end, try to match it up with the next\0A        // entry.\0A        lastUnknownSize = funcInfo;\0A      }\0A    }\0A\0A    while (true) {\0A      const funcInfo = this.parseNextLine();\0A      if (funcInfo === null) continue;\0A      if (funcInfo === false) break;\0A      if (funcInfo.start < libStart &&\0A        funcInfo.start < libEnd - libStart) {\0A        funcInfo.start += libStart;\0A      } else {\0A        funcInfo.start += libASLRSlide;\0A      }\0A      if (funcInfo.size) {\0A        funcInfo.end = funcInfo.start + funcInfo.size;\0A      }\0A      addEntry(funcInfo);\0A    }\0A    addEntry({ name: '', start: libEnd });\0A  }\0A\0A  async loadSymbols(libName) {}\0A\0A  async loadSymbolsRemote(platform, libName) {\0A    this.parsePos = 0;\0A    const url = new URL(\22http://localhost:8000/v8/loadVMSymbols\22);\0A    url.searchParams.set('libName', libName);\0A    url.searchParams.set('platform', platform);\0A    this._setRemoteQueryParams(url.searchParams);\0A    let response;\0A    let json;\0A    try {\0A      response = await fetch(url, { timeout: 20 });\0A      if (response.status == 404) {\0A        throw new Error(\0A          `Local symbol server returned 404: ${await response.text()}`);\0A      }\0A      json = await response.json();\0A      if (json.error) console.warn(json.error);\0A    } catch (e) {\0A      if (!response || response.status == 404) {\0A        // Assume that the local symbol server is not reachable.\0A        console.warn(\22Disabling remote symbol loading:\22, e);\0A        this._isEnabled = false;\0A        return;\0A      }\0A    }\0A    this._handleRemoteSymbolsResult(json);\0A  }\0A\0A  _setRemoteQueryParams(searchParams) {\0A    // Subclass responsibility.\0A  }\0A\0A  _handleRemoteSymbolsResult(json) {\0A    this.symbols = json.symbols;\0A  }\0A\0A  parseNextLine() { return false }\0A}\0A\0Aexport class LinuxCppEntriesProvider extends CppEntriesProvider {\0A  constructor(\0A        nmExec, objdumpExec, readelfExec, targetRootFS, apkEmbeddedLibrary,\0A        useBigIntAddresses=false) {\0A    super(useBigIntAddresses);\0A    this.symbols = [];\0A    // File offset of a symbol minus the virtual address of a symbol found in\0A    // the symbol table.\0A    this.fileOffsetMinusVma = useBigIntAddresses ? 0n : 0;\0A    this.parsePos = 0;\0A    this.nmExec = nmExec;\0A    this.objdumpExec = objdumpExec;\0A    this.readelfExec = readelfExec;\0A    this.targetRootFS = targetRootFS;\0A    this.apkEmbeddedLibrary = apkEmbeddedLibrary;\0A    this.FUNC_RE = /^([0-9a-fA-F]{8,16}) ([0-9a-fA-F]{8,16} )?[tTwW] (.*)$/;\0A  }\0A\0A  _setRemoteQueryParams(searchParams) {\0A    super._setRemoteQueryParams(searchParams);\0A    searchParams.set('targetRootFS', this.targetRootFS ?? \22\22);\0A    searchParams.set('apkEmbeddedLibrary', this.apkEmbeddedLibrary);\0A  }\0A\0A  _handleRemoteSymbolsResult(json) {\0A    super._handleRemoteSymbolsResult(json);\0A    this.fileOffsetMinusVma = json.fileOffsetMinusVma;\0A  }\0A\0A  async loadSymbols(libName) {\0A    this.parsePos = 0;\0A    if (this.apkEmbeddedLibrary && libName.endsWith('.apk')) {\0A      libName = this.apkEmbeddedLibrary;\0A    }\0A    if (this.targetRootFS) {\0A      libName = libName.substring(libName.lastIndexOf('/') + 1);\0A      libName = this.targetRootFS + libName;\0A    }\0A    try {\0A      this.symbols = [\0A        os.system(this.nmExec, ['-C', '-n', '-S', libName], -1, -1),\0A        os.system(this.nmExec, ['-C', '-n', '-S', '-D', libName], -1, -1)\0A      ];\0A\0A      try {\0A        // Try to find separate debug symbols for the library in\0A        // /usr/lib/debug/.build-id, getting the build-id from the binary\0A        // notes using readelf.\0A        const binaryNotes = os.system(this.readelfExec, ['-n', libName], -1, -1)\0A        const buildId = /Build ID: ([a-zA-Z0-9]+)/.exec(binaryNotes)?.[1]?.toLowerCase() ?? null;\0A\0A        if (buildId) {\0A          const debugLibName = `/usr/lib/debug/.build-id/${buildId.slice(0, 2)}/${buildId.slice(2)}.debug`;\0A          this.symbols.push(\0A            os.system(this.nmExec, ['-C', '-n', '-S', debugLibName], -1, -1),\0A            os.system(this.nmExec, ['-C', '-n', '-S', '-D', debugLibName], -1, -1)\0A          );\0A        }\0A      } catch {\0A        // Ignore errors.\0A      }\0A\0A      const objdumpOutput = os.system(this.objdumpExec, ['-h', libName], -1, -1);\0A      for (const line of objdumpOutput.split('\\n')) {\0A        const [, sectionName, , vma, , fileOffset] = line.trim().split(/\\s+/);\0A        if (sectionName === \22.text\22) {\0A          this.fileOffsetMinusVma =\0A              this.parseHexAddr(fileOffset) - this.parseHexAddr(vma);\0A        }\0A      }\0A    } catch (e) {\0A      // If the library cannot be found on this system let's not panic.\0A      this.symbols = ['', ''];\0A    }\0A  }\0A\0A  parseNextLine() {\0A    if (this.symbols.length == 0) return false;\0A    const lineEndPos = this.symbols[0].indexOf('\\n', this.parsePos);\0A    if (lineEndPos == -1) {\0A      this.symbols.shift();\0A      this.parsePos = 0;\0A      return this.parseNextLine();\0A    }\0A\0A    const line = this.symbols[0].substring(this.parsePos, lineEndPos);\0A    this.parsePos = lineEndPos + 1;\0A    const fields = line.match(this.FUNC_RE);\0A    if (fields === null) return null;\0A\0A    const funcInfo = {\0A      name: fields[3],\0A      start: this.parseHexAddr(fields[1]) + this.fileOffsetMinusVma\0A    };\0A    if (fields[2]) {\0A      funcInfo.size = this.parseHexAddr(fields[2]);\0A    }\0A    return funcInfo;\0A  }\0A}\0A\0Aexport class RemoteLinuxCppEntriesProvider extends LinuxCppEntriesProvider {\0A  async loadSymbols(libName) {\0A    return this.loadSymbolsRemote('linux', libName);\0A  }\0A}\0A\0Aexport class MacOSCppEntriesProvider extends LinuxCppEntriesProvider {\0A  constructor(\0A        nmExec, objdumpExec, readelfExec, targetRootFS, apkEmbeddedLibrary,\0A        useBigIntAddresses=false) {\0A    super(\0A        nmExec, objdumpExec, readelfExec, targetRootFS, apkEmbeddedLibrary,\0A        useBigIntAddresses);\0A    // Note an empty group. It is required, as LinuxCppEntriesProvider expects 3 groups.\0A    this.FUNC_RE = /^([0-9a-fA-F]{8,16})() (.*)$/;\0A  }\0A\0A  async loadSymbols(libName) {\0A    this.parsePos = 0;\0A    libName = this.targetRootFS + libName;\0A\0A    // It seems that in OS X `nm` thinks that `-f` is a format option, not a\0A    // \22flat\22 display option flag.\0A    try {\0A      this.symbols = [\0A        os.system(this.nmExec, ['--demangle', '-n', libName], -1, -1), ''\0A      ];\0A    } catch (e) {\0A      // If the library cannot be found on this system let's not panic.\0A      this.symbols = '';\0A    }\0A  }\0A}\0A\0Aexport class RemoteMacOSCppEntriesProvider extends LinuxCppEntriesProvider {\0A  async loadSymbols(libName) {\0A    return this.loadSymbolsRemote('macos', libName);\0A  }\0A}\0A\0A\0Aexport class WindowsCppEntriesProvider extends CppEntriesProvider {\0A\0A  static FILENAME_RE = /^(.*)\\.([^.]+)$/;\0A  static FUNC_RE =\0A    /^\\s+0001:[0-9a-fA-F]{8}\\s+([_\\?@$0-9a-zA-Z]+)\\s+([0-9a-fA-F]{8}).*$/;\0A  static IMAGE_BASE_RE =\0A    /^\\s+0000:00000000\\s+___ImageBase\\s+([0-9a-fA-F]{8}).*$/;\0A\0A  constructor(\0A        _ignored_nmExec, _ignored_objdumpExec, _ignored_readelfExec,\0A        targetRootFS, _ignored_apkEmbeddedLibrary, useBigIntAddresses) {\0A    super(useBigIntAddresses);\0A    this.targetRootFS = targetRootFS;\0A    this.symbols = '';\0A    this.parsePos = 0;\0A    // This is almost a constant on Windows.\0A    this.EXE_IMAGE_BASE = this.parseAddr(0x00400000);\0A  }\0A\0A  loadSymbols(libName) {\0A    libName = this.targetRootFS + libName;\0A    const fileNameFields = libName.match(WindowsCppEntriesProvider.FILENAME_RE);\0A    if (fileNameFields === null) return;\0A    const mapFileName = `${fileNameFields[1]}.map`;\0A    this.moduleType_ = fileNameFields[2].toLowerCase();\0A    try {\0A      this.symbols = read(mapFileName);\0A    } catch (e) {\0A      // If .map file cannot be found let's not panic.\0A      this.symbols = '';\0A    }\0A  }\0A\0A  parseNextLine() {\0A    const lineEndPos = this.symbols.indexOf('\\r\\n', this.parsePos);\0A    if (lineEndPos === -1) {\0A      return false;\0A    }\0A\0A    const line = this.symbols.substring(this.parsePos, lineEndPos);\0A    this.parsePos = lineEndPos + 2;\0A\0A    // Image base entry is above all other symbols, so we can just\0A    // terminate parsing.\0A    const imageBaseFields = line.match(WindowsCppEntriesProvider.IMAGE_BASE_RE);\0A    if (imageBaseFields !== null) {\0A      const imageBase = this.parseHexAddr(imageBaseFields[1]);\0A      if ((this.moduleType_ === 'exe') !=\0A        (imageBase === this.EXE_IMAGE_BASE)) {\0A        return false;\0A      }\0A    }\0A\0A    const fields = line.match(WindowsCppEntriesProvider.FUNC_RE);\0A    if (fields === null) return null\0A    return {\0A      name: this.unmangleName(fields[1]),\0A      start: this.parseHexAddr(fields[2])\0A    };\0A  }\0A\0A  /**\0A   * Performs very simple unmangling of C++ names.\0A   *\0A   * Does not handle arguments and template arguments. The mangled names have\0A   * the form:\0A   *\0A   *   ?LookupInDescriptor@JSObject@internal@v8@@...arguments info...\0A   */\0A  unmangleName(name) {\0A    // Empty or non-mangled name.\0A    if (name.length < 1 || name.charAt(0) != '?') return name;\0A    const nameEndPos = name.indexOf('@@');\0A    const components = name.substring(1, nameEndPos).split('@');\0A    components.reverse();\0A    return components.join('::');\0A  }\0A}\0A\0A\0Aexport class ArgumentsProcessor extends BaseArgumentsProcessor {\0A  getArgsDispatch() {\0A    let dispatch = {\0A      __proto__:null,\0A      '-ni': ['negativeStateFilter', TickProcessor.VmStates.IDLE,\0A              'Ignore ticks from the IDLE VM state'],\0A      '-j': ['stateFilter', TickProcessor.VmStates.JS,\0A        'Show only ticks from JS VM state'],\0A      '-g': ['stateFilter', TickProcessor.VmStates.GC,\0A        'Show only ticks from GC VM state'],\0A      '-p': ['stateFilter', TickProcessor.VmStates.PARSER,\0A        'Show only ticks from PARSER VM state'],\0A      '-b': ['stateFilter', TickProcessor.VmStates.BYTECODE_COMPILER,\0A        'Show only ticks from BYTECODE_COMPILER VM state'],\0A      '-c': ['stateFilter', TickProcessor.VmStates.COMPILER,\0A        'Show only ticks from COMPILER VM state'],\0A      '-o': ['stateFilter', TickProcessor.VmStates.OTHER,\0A        'Show only ticks from OTHER VM state'],\0A      '-e': ['stateFilter', TickProcessor.VmStates.EXTERNAL,\0A        'Show only ticks from EXTERNAL VM state'],\0A      '--filter-runtime-timer': ['runtimeTimerFilter', null,\0A        'Show only ticks matching the given runtime timer scope'],\0A      '--call-graph-size': ['callGraphSize', TickProcessor.CALL_GRAPH_SIZE,\0A        'Set the call graph size'],\0A      '--ignore-unknown': ['ignoreUnknown', true,\0A        'Exclude ticks of unknown code entries from processing'],\0A      '--separate-ic': ['separateIc', parseBool,\0A        'Separate IC entries'],\0A      '--separate-bytecodes': ['separateBytecodes', parseBool,\0A        'Separate Bytecode entries'],\0A      '--separate-builtins': ['separateBuiltins', parseBool,\0A        'Separate Builtin entries'],\0A      '--separate-stubs': ['separateStubs', parseBool,\0A        'Separate Stub entries'],\0A      '--separate-sparkplug-handlers': ['separateSparkplugHandlers', parseBool,\0A        'Separate Sparkplug Handler entries'],\0A      '--linux': ['platform', 'linux',\0A        'Specify that we are running on *nix platform'],\0A      '--windows': ['platform', 'windows',\0A        'Specify that we are running on Windows platform'],\0A      '--mac': ['platform', 'macos',\0A        'Specify that we are running on Mac OS X platform'],\0A      '--nm': ['nm', 'nm',\0A        'Specify the \\'nm\\' executable to use (e.g. --nm=/my_dir/nm)'],\0A      '--objdump': ['objdump', 'objdump',\0A        'Specify the \\'objdump\\' executable to use (e.g. --objdump=/my_dir/objdump)'],\0A      '--readelf': ['readelf', 'readelf',\0A        'Specify the \\'readelf\\' executable to use (e.g. --readelf=/my_dir/readelf)'],\0A      '--target': ['targetRootFS', '',\0A        'Specify the target root directory for cross environment'],\0A      '--apk-embedded-library': ['apkEmbeddedLibrary', '',\0A        'Specify the path of the embedded library for Android traces'],\0A      '--range': ['range', 'auto,auto',\0A        'Specify the range limit as [start],[end]'],\0A      '--distortion': ['distortion', 0,\0A        'Specify the logging overhead in picoseconds'],\0A      '--source-map': ['sourceMap', null,\0A        'Specify the source map that should be used for output'],\0A      '--timed-range': ['timedRange', true,\0A        'Ignore ticks before first and after last Date.now() call'],\0A      '--pairwise-timed-range': ['pairwiseTimedRange', true,\0A        'Ignore ticks outside pairs of Date.now() calls'],\0A      '--only-summary': ['onlySummary', true,\0A        'Print only tick summary, exclude other information'],\0A      '--serialize-vm-symbols': ['serializeVMSymbols', true,\0A        'Print all C++ symbols and library addresses as JSON data'],\0A      '--preprocess': ['preprocessJson', true,\0A        'Preprocess for consumption with web interface'],\0A      '--use-bigint-addresses': ['useBigIntAddresses', true,\0A        'Use slower BigInts to precisely handle large addresses.']\0A    };\0A    dispatch['--js'] = dispatch['-j'];\0A    dispatch['--gc'] = dispatch['-g'];\0A    dispatch['--compiler'] = dispatch['-c'];\0A    dispatch['--other'] = dispatch['-o'];\0A    dispatch['--external'] = dispatch['-e'];\0A    dispatch['--ptr'] = dispatch['--pairwise-timed-range'];\0A    dispatch['--bigint-addresses'] = dispatch['--use-bigint-addresses'];\0A    return dispatch;\0A  }\0A\0A  getDefaultResults() {\0A    return {\0A      logFileName: 'v8.log',\0A      platform: 'linux',\0A      stateFilter: null,\0A      negativeStateFilter: null,\0A      callGraphSize: 5,\0A      ignoreUnknown: false,\0A      separateIc: true,\0A      separateBytecodes: false,\0A      separateBuiltins: true,\0A      separateStubs: true,\0A      separateSparkplugHandlers: false,\0A      preprocessJson: null,\0A      sourceMap: null,\0A      targetRootFS: '',\0A      nm: 'nm',\0A      objdump: 'objdump',\0A      readelf: 'readelf',\0A      range: 'auto,auto',\0A      distortion: 0,\0A      timedRange: false,\0A      pairwiseTimedRange: false,\0A      onlySummary: false,\0A      runtimeTimerFilter: null,\0A      serializeVMSymbols: false,\0A      useBigIntAddresses: false,\0A    };\0A  }\0A}\0A\0A\0Aexport class TickProcessor extends LogReader {\0A  static EntriesProvider = {\0A    'linux': LinuxCppEntriesProvider,\0A    'windows': WindowsCppEntriesProvider,\0A    'macos': MacOSCppEntriesProvider\0A  };\0A\0A  static fromParams(params, entriesProvider) {\0A    if (entriesProvider == undefined) {\0A      entriesProvider = new this.EntriesProvider[params.platform](\0A          params.nm, params.objdump, params.readelf, params.targetRootFS,\0A          params.apkEmbeddedLibrary);\0A    }\0A    return new TickProcessor(\0A      entriesProvider,\0A      params.separateIc,\0A      params.separateBytecodes,\0A      params.separateBuiltins,\0A      params.separateStubs,\0A      params.separateSparkplugHandlers,\0A      params.callGraphSize,\0A      params.ignoreUnknown,\0A      params.stateFilter,\0A      params.negativeStateFilter,\0A      params.distortion,\0A      params.range,\0A      params.sourceMap,\0A      params.timedRange,\0A      params.pairwiseTimedRange,\0A      params.onlySummary,\0A      params.runtimeTimerFilter,\0A      params.preprocessJson,\0A      params.useBigIntAddresses);\0A  }\0A\0A  constructor(\0A    cppEntriesProvider,\0A    separateIc,\0A    separateBytecodes,\0A    separateBuiltins,\0A    separateStubs,\0A    separateSparkplugHandlers,\0A    callGraphSize,\0A    ignoreUnknown,\0A    stateFilter,\0A    negativeStateFilter,\0A    distortion,\0A    range,\0A    sourceMap,\0A    timedRange,\0A    pairwiseTimedRange,\0A    onlySummary,\0A    runtimeTimerFilter,\0A    preprocessJson,\0A    useBigIntAddresses) {\0A    super(timedRange, pairwiseTimedRange, useBigIntAddresses);\0A    this.useBigIntAddresses = useBigIntAddresses;\0A    this.parseAddr = useBigIntAddresses ? BigInt : parseInt;\0A    this.parseSize = this.parseAddr;\0A    this.setDispatchTable({\0A      __proto__: null,\0A      'shared-library': {\0A        parsers: [parseString, this.parseAddr, this.parseAddr, parseInt],\0A        processor: this.processSharedLibrary\0A      },\0A      'code-creation': {\0A        parsers: [parseString, parseInt, parseInt, this.parseAddr,\0A            this.parseSize, parseString, parseVarArgs],\0A        processor: this.processCodeCreation\0A      },\0A      'code-deopt': {\0A        parsers: [parseInt, this.parseSize, this.parseAddr, parseInt, parseInt,\0A          parseString, parseString, parseString],\0A        processor: this.processCodeDeopt\0A      },\0A      'code-move': {\0A        parsers: [this.parseAddr, this.parseAddr,],\0A        processor: this.processCodeMove\0A      },\0A      'code-source-info': {\0A        parsers: [this.parseAddr, parseInt, parseInt, parseInt, parseString,\0A          parseString, parseString],\0A        processor: this.processCodeSourceInfo\0A      },\0A      'script-source': {\0A        parsers: [parseInt, parseString, parseString],\0A        processor: this.processScriptSource\0A      },\0A      'sfi-move': {\0A        parsers: [this.parseAddr, this.parseAddr],\0A        processor: this.processSFIMove\0A      },\0A      'active-runtime-timer': {\0A        parsers: [parseString],\0A        processor: this.processRuntimeTimerEvent\0A      },\0A      'tick': {\0A        parsers: [this.parseAddr, parseInt, parseInt,\0A          this.parseAddr, parseInt, parseVarArgs],\0A        processor: this.processTick\0A      },\0A      'heap-sample-begin': {\0A        parsers: [parseString, parseString, parseInt],\0A        processor: this.processHeapSampleBegin\0A      },\0A      'heap-sample-end': {\0A        parsers: [parseString, parseString],\0A        processor: this.processHeapSampleEnd\0A      },\0A      'timer-event-start': {\0A        parsers: [parseString, parseString, parseString],\0A        processor: this.advanceDistortion\0A      },\0A      'timer-event-end': {\0A        parsers: [parseString, parseString, parseString],\0A        processor: this.advanceDistortion\0A      },\0A      // Ignored events.\0A      'profiler': undefined,\0A      'function-creation': undefined,\0A      'function-move': undefined,\0A      'function-delete': undefined,\0A      'heap-sample-item': undefined,\0A      'current-time': undefined,  // Handled specially, not parsed.\0A      // Obsolete row types.\0A      'code-allocate': undefined,\0A      'begin-code-region': undefined,\0A      'end-code-region': undefined\0A    });\0A\0A    this.preprocessJson = preprocessJson;\0A    this.cppEntriesProvider_ = cppEntriesProvider;\0A    this.callGraphSize_ = callGraphSize;\0A    this.ignoreUnknown_ = ignoreUnknown;\0A    this.stateFilter_ = stateFilter;\0A    this.negativeStateFilter_ = negativeStateFilter;\0A    this.runtimeTimerFilter_ = runtimeTimerFilter;\0A    this.sourceMap = this.loadSourceMap(sourceMap);\0A    const ticks = this.ticks_ =\0A      { total: 0, unaccounted: 0, excluded: 0, gc: 0 };\0A\0A    distortion = parseInt(distortion);\0A    // Convert picoseconds to nanoseconds.\0A    this.distortion_per_entry = isNaN(distortion) ? 0 : (distortion / 1000);\0A    this.distortion = 0;\0A    const rangelimits = range ? range.split(\22,\22) : [];\0A    const range_start = parseInt(rangelimits[0]);\0A    const range_end = parseInt(rangelimits[1]);\0A    // Convert milliseconds to nanoseconds.\0A    this.range_start = isNaN(range_start) ? -Infinity : (range_start * 1000);\0A    this.range_end = isNaN(range_end) ? Infinity : (range_end * 1000)\0A\0A    V8Profile.prototype.handleUnknownCode = function (\0A      operation, addr, opt_stackPos) {\0A      const op = Profile.Operation;\0A      switch (operation) {\0A        case op.MOVE:\0A          printErr(`Code move event for unknown code: 0x${addr.toString(16)}`);\0A          break;\0A        case op.DELETE:\0A          printErr(`Code delete event for unknown code: 0x${addr.toString(16)}`);\0A          break;\0A        case op.TICK:\0A          // Only unknown PCs (the first frame) are reported as unaccounted,\0A          // otherwise tick balance will be corrupted (this behavior is compatible\0A          // with the original tickprocessor.py script.)\0A          if (opt_stackPos == 0) {\0A            ticks.unaccounted++;\0A          }\0A          break;\0A      }\0A    };\0A\0A    if (preprocessJson) {\0A      this.profile_ = new JsonProfile(useBigIntAddresses);\0A    } else {\0A      this.profile_ = new V8Profile(separateIc, separateBytecodes,\0A          separateBuiltins, separateStubs, separateSparkplugHandlers,\0A          useBigIntAddresses);\0A    }\0A    this.codeTypes_ = {};\0A    // Count each tick as a time unit.\0A    this.viewBuilder_ = new ViewBuilder(1);\0A    this.lastLogFileName_ = null;\0A\0A    this.generation_ = 1;\0A    this.currentProducerProfile_ = null;\0A    this.onlySummary_ = onlySummary;\0A  }\0A\0A  loadSourceMap(sourceMap) {\0A    if (!sourceMap) return null;\0A    // Overwrite the load function to load scripts synchronously.\0A    WebInspector.SourceMap.load = (sourceMapURL) => {\0A      const content = d8.file.read(sourceMapURL);\0A      const sourceMapObject = JSON.parse(content);\0A      return new SourceMap(sourceMapURL, sourceMapObject);\0A    };\0A    return WebInspector.SourceMap.load(sourceMap);\0A  }\0A\0A  static VmStates = {\0A    JS: 0,\0A    GC: 1,\0A    PARSER: 2,\0A    BYTECODE_COMPILER: 3,\0A    // TODO(cbruni): add SPARKPLUG_COMPILER\0A    COMPILER: 4,\0A    OTHER: 5,\0A    EXTERNAL: 6,\0A    ATOMICS_WAIT: 7,\0A    IDLE: 8,\0A    LOGGING: 9,\0A    IDLE_EXTERNAL: 10,\0A  };\0A\0A  static CodeTypes = {\0A    CPP: 0,\0A    SHARED_LIB: 1\0A  };\0A  // Otherwise, this is JS-related code. We are not adding it to\0A  // codeTypes_ map because there can be zillions of them.\0A\0A  static CALL_PROFILE_CUTOFF_PCT = 1.0;\0A  static CALL_GRAPH_SIZE = 5;\0A\0A  /**\0A   * @override\0A   */\0A  printError(str) {\0A    printErr(str);\0A  }\0A\0A  setCodeType(name, type) {\0A    this.codeTypes_[name] = TickProcessor.CodeTypes[type];\0A  }\0A\0A  isSharedLibrary(name) {\0A    return this.codeTypes_[name] == TickProcessor.CodeTypes.SHARED_LIB;\0A  }\0A\0A  isCppCode(name) {\0A    return this.codeTypes_[name] == TickProcessor.CodeTypes.CPP;\0A  }\0A\0A  isJsCode(name) {\0A    return name !== \22UNKNOWN\22 && !(name in this.codeTypes_);\0A  }\0A\0A  async processLogFile(fileName) {\0A    this.lastLogFileName_ = fileName;\0A    let line;\0A    while (line = readline()) {\0A      await this.processLogLine(line);\0A    }\0A  }\0A\0A  async processLogFileInTest(fileName) {\0A    // Hack file name to avoid dealing with platform specifics.\0A    this.lastLogFileName_ = 'v8.log';\0A    const contents = d8.file.read(fileName);\0A    await this.processLogChunk(contents);\0A  }\0A\0A  processSharedLibrary(name, startAddr, endAddr, aslrSlide) {\0A    const entry = this.profile_.addLibrary(name, startAddr, endAddr);\0A    this.setCodeType(entry.getName(), 'SHARED_LIB');\0A    this.cppEntriesProvider_.parseVmSymbols(\0A      name, startAddr, endAddr, aslrSlide, (fName, fStart, fEnd) => {\0A        this.profile_.addStaticCode(fName, fStart, fEnd);\0A        this.setCodeType(fName, 'CPP');\0A      });\0A  }\0A\0A  processCodeCreation(type, kind, timestamp, start, size, name, maybe_func) {\0A    if (type != 'RegExp' && maybe_func.length) {\0A      const sfiAddr = this.parseAddr(maybe_func[0]);\0A      const state = Profile.parseState(maybe_func[1]);\0A      this.profile_.addFuncCode(type, name, timestamp, start, size, sfiAddr, state);\0A    } else {\0A      this.profile_.addCode(type, name, timestamp, start, size);\0A    }\0A  }\0A\0A  processCodeDeopt(\0A      timestamp, size, code, inliningId, scriptOffset, bailoutType,\0A      sourcePositionText, deoptReasonText) {\0A    this.profile_.deoptCode(timestamp, code, inliningId, scriptOffset,\0A      bailoutType, sourcePositionText, deoptReasonText);\0A  }\0A\0A  processCodeMove(from, to) {\0A    this.profile_.moveCode(from, to);\0A  }\0A\0A  processCodeDelete(start) {\0A    this.profile_.deleteCode(start);\0A  }\0A\0A  processCodeSourceInfo(\0A      start, script, startPos, endPos, sourcePositions, inliningPositions,\0A      inlinedFunctions) {\0A    this.profile_.addSourcePositions(start, script, startPos,\0A      endPos, sourcePositions, inliningPositions, inlinedFunctions);\0A  }\0A\0A  processScriptSource(script, url, source) {\0A    this.profile_.addScriptSource(script, url, source);\0A  }\0A\0A  processSFIMove(from, to) {\0A    this.profile_.moveSharedFunctionInfo(from, to);\0A  }\0A\0A  includeTick(vmState) {\0A    if (this.negativeStateFilter_ != null) {\0A      return this.negativeStateFilter_ != vmState;\0A    } else if (this.stateFilter_ !== null) {\0A      return this.stateFilter_ == vmState;\0A    } else if (this.runtimeTimerFilter_ !== null) {\0A      return this.currentRuntimeTimer == this.runtimeTimerFilter_;\0A    }\0A    return true;\0A  }\0A\0A  processRuntimeTimerEvent(name) {\0A    this.currentRuntimeTimer = name;\0A  }\0A\0A  processTick(\0A        pc, ns_since_start, is_external_callback, tos_or_external_callback,\0A        vmState, stack) {\0A    this.distortion += this.distortion_per_entry;\0A    ns_since_start -= this.distortion;\0A    if (ns_since_start < this.range_start || ns_since_start > this.range_end) {\0A      return;\0A    }\0A    this.ticks_.total++;\0A    if (vmState == TickProcessor.VmStates.GC) this.ticks_.gc++;\0A    if (!this.includeTick(vmState)) {\0A      this.ticks_.excluded++;\0A      return;\0A    }\0A    if (is_external_callback) {\0A      // Don't use PC when in external callback code, as it can point\0A      // inside callback's code, and we will erroneously report\0A      // that a callback calls itself. Instead we use tos_or_external_callback,\0A      // as simply resetting PC will produce unaccounted ticks.\0A      pc = tos_or_external_callback;\0A      tos_or_external_callback = 0;\0A    } else if (tos_or_external_callback) {\0A      // Find out, if top of stack was pointing inside a JS function\0A      // meaning that we have encountered a frameless invocation.\0A      const funcEntry = this.profile_.findEntry(tos_or_external_callback);\0A      if (!funcEntry || !funcEntry.isJSFunction || !funcEntry.isJSFunction()) {\0A        tos_or_external_callback = 0;\0A      }\0A    }\0A\0A    this.profile_.recordTick(\0A      ns_since_start, vmState,\0A      this.processStack(pc, tos_or_external_callback, stack));\0A  }\0A\0A  advanceDistortion() {\0A    this.distortion += this.distortion_per_entry;\0A  }\0A\0A  processHeapSampleBegin(space, state, ticks) {\0A    if (space != 'Heap') return;\0A    this.currentProducerProfile_ = new CallTree();\0A  }\0A\0A  processHeapSampleEnd(space, state) {\0A    if (space != 'Heap' || !this.currentProducerProfile_) return;\0A\0A    print(`Generation ${this.generation_}:`);\0A    const tree = this.currentProducerProfile_;\0A    tree.computeTotalWeights();\0A    const producersView = this.viewBuilder_.buildView(tree);\0A    // Sort by total time, desc, then by name, desc.\0A    producersView.sort((rec1, rec2) =>\0A      rec2.totalTime - rec1.totalTime ||\0A      (rec2.internalFuncName < rec1.internalFuncName ? -1 : 1));\0A    this.printHeavyProfile(producersView.head.children);\0A\0A    this.currentProducerProfile_ = null;\0A    this.generation_++;\0A  }\0A\0A  printVMSymbols() {\0A    console.log(\0A      JSON.stringify(this.profile_.serializeVMSymbols()));\0A  }\0A\0A  printStatistics() {\0A    if (this.preprocessJson) {\0A      this.profile_.writeJson();\0A      return;\0A    }\0A\0A    print(`Statistical profiling result from ${this.lastLogFileName_}` +\0A      `, (${this.ticks_.total} ticks, ${this.ticks_.unaccounted} unaccounted, ` +\0A      `${this.ticks_.excluded} excluded).`);\0A\0A\0A    if (this.ticks_.total == 0) return;\0A\0A    const flatProfile = this.profile_.getFlatProfile();\0A    const flatView = this.viewBuilder_.buildView(flatProfile);\0A    // Sort by self time, desc, then by name, desc.\0A    flatView.sort((rec1, rec2) =>\0A      rec2.selfTime - rec1.selfTime ||\0A      (rec2.internalFuncName < rec1.internalFuncName ? -1 : 1));\0A    let totalTicks = this.ticks_.total;\0A    if (this.ignoreUnknown_) {\0A      totalTicks -= this.ticks_.unaccounted;\0A    }\0A    const printAllTicks = !this.onlySummary_;\0A\0A    // Count library ticks\0A    const flatViewNodes = flatView.head.children;\0A\0A    let libraryTicks = 0;\0A    if (printAllTicks) this.printHeader('Shared libraries');\0A    this.printEntries(flatViewNodes, totalTicks, null,\0A      name => this.isSharedLibrary(name),\0A      (rec) => { libraryTicks += rec.selfTime; }, printAllTicks);\0A    const nonLibraryTicks = totalTicks - libraryTicks;\0A\0A    let jsTicks = 0;\0A    if (printAllTicks) this.printHeader('JavaScript');\0A    this.printEntries(flatViewNodes, totalTicks, nonLibraryTicks,\0A      name => this.isJsCode(name),\0A      (rec) => { jsTicks += rec.selfTime; }, printAllTicks);\0A\0A    let cppTicks = 0;\0A    if (printAllTicks) this.printHeader('C++');\0A    this.printEntries(flatViewNodes, totalTicks, nonLibraryTicks,\0A      name => this.isCppCode(name),\0A      (rec) => { cppTicks += rec.selfTime; }, printAllTicks);\0A\0A    this.printHeader('Summary');\0A    this.printLine('JavaScript', jsTicks, totalTicks, nonLibraryTicks);\0A    this.printLine('C++', cppTicks, totalTicks, nonLibraryTicks);\0A    this.printLine('GC', this.ticks_.gc, totalTicks, nonLibraryTicks);\0A    this.printLine('Shared libraries', libraryTicks, totalTicks, null);\0A    if (!this.ignoreUnknown_ && this.ticks_.unaccounted > 0) {\0A      this.printLine('Unaccounted', this.ticks_.unaccounted,\0A        this.ticks_.total, null);\0A    }\0A\0A    if (printAllTicks) {\0A      print('\\n [C++ entry points]:');\0A      print('   ticks    cpp   total   name');\0A      const c_entry_functions = this.profile_.getCEntryProfile();\0A      const total_c_entry = c_entry_functions[0].ticks;\0A      for (let i = 1; i < c_entry_functions.length; i++) {\0A        const c = c_entry_functions[i];\0A        this.printLine(c.name, c.ticks, total_c_entry, totalTicks);\0A      }\0A\0A      this.printHeavyProfHeader();\0A      const heavyProfile = this.profile_.getBottomUpProfile();\0A      const heavyView = this.viewBuilder_.buildView(heavyProfile);\0A      // To show the same percentages as in the flat profile.\0A      heavyView.head.totalTime = totalTicks;\0A      // Sort by total time, desc, then by name, desc.\0A      heavyView.sort((rec1, rec2) =>\0A        rec2.totalTime - rec1.totalTime ||\0A        (rec2.internalFuncName < rec1.internalFuncName ? -1 : 1));\0A      this.printHeavyProfile(heavyView.head.children);\0A    }\0A  }\0A\0A  printHeader(headerTitle) {\0A    print(`\\n [${headerTitle}]:`);\0A    print('   ticks  total  nonlib   name');\0A  }\0A\0A  printLine(\0A    entry, ticks, totalTicks, nonLibTicks) {\0A    const pct = ticks * 100 / totalTicks;\0A    const nonLibPct = nonLibTicks != null\0A      ? `${(ticks * 100 / nonLibTicks).toFixed(1).toString().padStart(5)}%  `\0A      : '        ';\0A    print(`${`  ${ticks.toString().padStart(5)}  ` +\0A      pct.toFixed(1).toString().padStart(5)}%  ${nonLibPct}${entry}`);\0A  }\0A\0A  printHeavyProfHeader() {\0A    print('\\n [Bottom up (heavy) profile]:');\0A    print('  Note: percentage shows a share of a particular caller in the ' +\0A      'total\\n' +\0A      '  amount of its parent calls.');\0A    print(`  Callers occupying less than ${TickProcessor.CALL_PROFILE_CUTOFF_PCT.toFixed(1)}% are not shown.\\n`);\0A    print('   ticks parent  name');\0A  }\0A\0A  processProfile(profile, filterP, func) {\0A    for (let i = 0, n = profile.length; i < n; ++i) {\0A      const rec = profile[i];\0A      if (!filterP(rec.internalFuncName)) {\0A        continue;\0A      }\0A      func(rec);\0A    }\0A  }\0A\0A  getLineAndColumn(name) {\0A    const re = /:([0-9]+):([0-9]+)$/;\0A    const array = re.exec(name);\0A    if (!array) {\0A      return null;\0A    }\0A    return { line: array[1], column: array[2] };\0A  }\0A\0A  hasSourceMap() {\0A    return this.sourceMap != null;\0A  }\0A\0A  formatFunctionName(funcName) {\0A    if (!this.hasSourceMap()) {\0A      return funcName;\0A    }\0A    const lc = this.getLineAndColumn(funcName);\0A    if (lc == null) {\0A      return funcName;\0A    }\0A    // in source maps lines and columns are zero based\0A    const lineNumber = lc.line - 1;\0A    const column = lc.column - 1;\0A    const entry = this.sourceMap.findEntry(lineNumber, column);\0A    const sourceFile = entry[2];\0A    const sourceLine = entry[3] + 1;\0A    const sourceColumn = entry[4] + 1;\0A\0A    return `${sourceFile}:${sourceLine}:${sourceColumn} -> ${funcName}`;\0A  }\0A\0A  printEntries(\0A        profile, totalTicks, nonLibTicks, filterP, callback, printAllTicks) {\0A    this.processProfile(profile, filterP, (rec) => {\0A      if (rec.selfTime == 0) return;\0A      callback(rec);\0A      const funcName = this.formatFunctionName(rec.internalFuncName);\0A      if (printAllTicks) {\0A        this.printLine(funcName, rec.selfTime, totalTicks, nonLibTicks);\0A      }\0A    });\0A  }\0A\0A  printHeavyProfile(profile, opt_indent) {\0A    const indent = opt_indent || 0;\0A    const indentStr = ''.padStart(indent);\0A    this.processProfile(profile, () => true, (rec) => {\0A      // Cut off too infrequent callers.\0A      if (rec.parentTotalPercent < TickProcessor.CALL_PROFILE_CUTOFF_PCT) return;\0A      const funcName = this.formatFunctionName(rec.internalFuncName);\0A      print(`${`  ${rec.totalTime.toString().padStart(5)}  ` +\0A        rec.parentTotalPercent.toFixed(1).toString().padStart(5)}%  ${indentStr}${funcName}`);\0A      // Limit backtrace depth.\0A      if (indent < 2 * this.callGraphSize_) {\0A        this.printHeavyProfile(rec.children, indent + 2);\0A      }\0A      // Delimit top-level functions.\0A      if (indent == 0) print('');\0A    });\0A  }\0A}\0A\00", align 1
@.str.1112 = private unnamed_addr constant [19056 x i8] c"{\0A  \22variables\22: {\0A    \22use_ccache_win\22: 0,\0A    \22clang\22: 1,\0A    \22llvm_version\22: \2223.0\22,\0A    \22node_prefix\22: \22/usr/local\22,\0A    \22node_install_npm\22: true,\0A    \22node_install_corepack\22: false,\0A    \22control_flow_guard\22: false,\0A    \22node_use_amaro\22: true,\0A    \22debug_node\22: false,\0A    \22debug_symbols\22: false,\0A    \22build_type%\22: \22Release\22,\0A    \22error_on_warn\22: false,\0A    \22suppress_all_error_on_warn\22: false,\0A    \22use_prefix_to_find_headers\22: false,\0A    \22host_arch\22: \22x64\22,\0A    \22target_arch\22: \22x64\22,\0A    \22node_byteorder\22: \22little\22,\0A    \22want_separate_host_toolset\22: 0,\0A    \22node_use_node_snapshot\22: true,\0A    \22node_use_node_code_cache\22: true,\0A    \22node_write_snapshot_as_array_literals\22: false,\0A    \22node_enable_v8_vtunejit\22: false,\0A    \22enable_pgo_generate\22: false,\0A    \22enable_pgo_use\22: false,\0A    \22enable_lto\22: false,\0A    \22single_executable_application\22: true,\0A    \22node_use_lief\22: true,\0A    \22node_with_ltcg\22: false,\0A    \22node_tag\22: \22\22,\0A    \22node_release_urlbase\22: \22\22,\0A    \22node_debug_lib\22: false,\0A    \22debug_nghttp2\22: false,\0A    \22node_no_browser_globals\22: false,\0A    \22node_shared\22: false,\0A    \22libdir\22: \22lib\22,\0A    \22node_module_version\22: 141,\0A    \22shlib_suffix\22: \22so.141\22,\0A    \22asan\22: 0,\0A    \22ubsan\22: 0,\0A    \22coverage\22: false,\0A    \22node_target_type\22: \22executable\22,\0A    \22node_library_files\22: [\0A      \22lib/_http_agent.js\22,\0A      \22lib/_http_client.js\22,\0A      \22lib/_http_common.js\22,\0A      \22lib/_http_incoming.js\22,\0A      \22lib/_http_outgoing.js\22,\0A      \22lib/_http_server.js\22,\0A      \22lib/_stream_duplex.js\22,\0A      \22lib/_stream_passthrough.js\22,\0A      \22lib/_stream_readable.js\22,\0A      \22lib/_stream_transform.js\22,\0A      \22lib/_stream_wrap.js\22,\0A      \22lib/_stream_writable.js\22,\0A      \22lib/_tls_common.js\22,\0A      \22lib/_tls_wrap.js\22,\0A      \22lib/assert.js\22,\0A      \22lib/assert/strict.js\22,\0A      \22lib/async_hooks.js\22,\0A      \22lib/buffer.js\22,\0A      \22lib/child_process.js\22,\0A      \22lib/cluster.js\22,\0A      \22lib/console.js\22,\0A      \22lib/constants.js\22,\0A      \22lib/crypto.js\22,\0A      \22lib/dgram.js\22,\0A      \22lib/diagnostics_channel.js\22,\0A      \22lib/dns.js\22,\0A      \22lib/dns/promises.js\22,\0A      \22lib/domain.js\22,\0A      \22lib/events.js\22,\0A      \22lib/fs.js\22,\0A      \22lib/fs/promises.js\22,\0A      \22lib/http.js\22,\0A      \22lib/http2.js\22,\0A      \22lib/https.js\22,\0A      \22lib/inspector.js\22,\0A      \22lib/inspector/promises.js\22,\0A      \22lib/internal/abort_controller.js\22,\0A      \22lib/internal/assert.js\22,\0A      \22lib/internal/assert/assertion_error.js\22,\0A      \22lib/internal/assert/myers_diff.js\22,\0A      \22lib/internal/assert/utils.js\22,\0A      \22lib/internal/async_context_frame.js\22,\0A      \22lib/internal/async_hooks.js\22,\0A      \22lib/internal/async_local_storage/async_context_frame.js\22,\0A      \22lib/internal/async_local_storage/async_hooks.js\22,\0A      \22lib/internal/blob.js\22,\0A      \22lib/internal/blocklist.js\22,\0A      \22lib/internal/bootstrap/node.js\22,\0A      \22lib/internal/bootstrap/realm.js\22,\0A      \22lib/internal/bootstrap/shadow_realm.js\22,\0A      \22lib/internal/bootstrap/switches/does_not_own_process_state.js\22,\0A      \22lib/internal/bootstrap/switches/does_own_process_state.js\22,\0A      \22lib/internal/bootstrap/switches/is_main_thread.js\22,\0A      \22lib/internal/bootstrap/switches/is_not_main_thread.js\22,\0A      \22lib/internal/bootstrap/web/exposed-wildcard.js\22,\0A      \22lib/internal/bootstrap/web/exposed-window-or-worker.js\22,\0A      \22lib/internal/buffer.js\22,\0A      \22lib/internal/child_process.js\22,\0A      \22lib/internal/child_process/serialization.js\22,\0A      \22lib/internal/cli_table.js\22,\0A      \22lib/internal/cluster/child.js\22,\0A      \22lib/internal/cluster/primary.js\22,\0A      \22lib/internal/cluster/round_robin_handle.js\22,\0A      \22lib/internal/cluster/shared_handle.js\22,\0A      \22lib/internal/cluster/utils.js\22,\0A      \22lib/internal/cluster/worker.js\22,\0A      \22lib/internal/console/constructor.js\22,\0A      \22lib/internal/console/global.js\22,\0A      \22lib/internal/constants.js\22,\0A      \22lib/internal/crypto/aes.js\22,\0A      \22lib/internal/crypto/argon2.js\22,\0A      \22lib/internal/crypto/certificate.js\22,\0A      \22lib/internal/crypto/cfrg.js\22,\0A      \22lib/internal/crypto/chacha20_poly1305.js\22,\0A      \22lib/internal/crypto/cipher.js\22,\0A      \22lib/internal/crypto/diffiehellman.js\22,\0A      \22lib/internal/crypto/ec.js\22,\0A      \22lib/internal/crypto/hash.js\22,\0A      \22lib/internal/crypto/hashnames.js\22,\0A      \22lib/internal/crypto/hkdf.js\22,\0A      \22lib/internal/crypto/kem.js\22,\0A      \22lib/internal/crypto/keygen.js\22,\0A      \22lib/internal/crypto/keys.js\22,\0A      \22lib/internal/crypto/mac.js\22,\0A      \22lib/internal/crypto/ml_dsa.js\22,\0A      \22lib/internal/crypto/ml_kem.js\22,\0A      \22lib/internal/crypto/pbkdf2.js\22,\0A      \22lib/internal/crypto/random.js\22,\0A      \22lib/internal/crypto/rsa.js\22,\0A      \22lib/internal/crypto/scrypt.js\22,\0A      \22lib/internal/crypto/sig.js\22,\0A      \22lib/internal/crypto/util.js\22,\0A      \22lib/internal/crypto/webcrypto.js\22,\0A      \22lib/internal/crypto/webidl.js\22,\0A      \22lib/internal/crypto/x509.js\22,\0A      \22lib/internal/data_url.js\22,\0A      \22lib/internal/debugger/inspect.js\22,\0A      \22lib/internal/debugger/inspect_client.js\22,\0A      \22lib/internal/debugger/inspect_repl.js\22,\0A      \22lib/internal/dgram.js\22,\0A      \22lib/internal/dns/callback_resolver.js\22,\0A      \22lib/internal/dns/promises.js\22,\0A      \22lib/internal/dns/utils.js\22,\0A      \22lib/internal/encoding.js\22,\0A      \22lib/internal/encoding/single-byte.js\22,\0A      \22lib/internal/encoding/util.js\22,\0A      \22lib/internal/error_serdes.js\22,\0A      \22lib/internal/errors.js\22,\0A      \22lib/internal/errors/error_source.js\22,\0A      \22lib/internal/event_target.js\22,\0A      \22lib/internal/events/abort_listener.js\22,\0A      \22lib/internal/events/symbols.js\22,\0A      \22lib/internal/file.js\22,\0A      \22lib/internal/fixed_queue.js\22,\0A      \22lib/internal/freelist.js\22,\0A      \22lib/internal/freeze_intrinsics.js\22,\0A      \22lib/internal/fs/cp/cp-sync.js\22,\0A      \22lib/internal/fs/cp/cp.js\22,\0A      \22lib/internal/fs/dir.js\22,\0A      \22lib/internal/fs/glob.js\22,\0A      \22lib/internal/fs/promises.js\22,\0A      \22lib/internal/fs/read/context.js\22,\0A      \22lib/internal/fs/recursive_watch.js\22,\0A      \22lib/internal/fs/rimraf.js\22,\0A      \22lib/internal/fs/streams.js\22,\0A      \22lib/internal/fs/sync_write_stream.js\22,\0A      \22lib/internal/fs/utils.js\22,\0A      \22lib/internal/fs/watchers.js\22,\0A      \22lib/internal/heap_utils.js\22,\0A      \22lib/internal/histogram.js\22,\0A      \22lib/internal/http.js\22,\0A      \22lib/internal/http2/compat.js\22,\0A      \22lib/internal/http2/core.js\22,\0A      \22lib/internal/http2/util.js\22,\0A      \22lib/internal/inspector/network.js\22,\0A      \22lib/internal/inspector/network_http.js\22,\0A      \22lib/internal/inspector/network_http2.js\22,\0A      \22lib/internal/inspector/network_resources.js\22,\0A      \22lib/internal/inspector/network_undici.js\22,\0A      \22lib/internal/inspector_async_hook.js\22,\0A      \22lib/internal/inspector_network_tracking.js\22,\0A      \22lib/internal/js_stream_socket.js\22,\0A      \22lib/internal/legacy/processbinding.js\22,\0A      \22lib/internal/linkedlist.js\22,\0A      \22lib/internal/locks.js\22,\0A      \22lib/internal/main/check_syntax.js\22,\0A      \22lib/internal/main/embedding.js\22,\0A      \22lib/internal/main/eval_stdin.js\22,\0A      \22lib/internal/main/eval_string.js\22,\0A      \22lib/internal/main/inspect.js\22,\0A      \22lib/internal/main/mksnapshot.js\22,\0A      \22lib/internal/main/print_help.js\22,\0A      \22lib/internal/main/prof_process.js\22,\0A      \22lib/internal/main/repl.js\22,\0A      \22lib/internal/main/run_main_module.js\22,\0A      \22lib/internal/main/test_runner.js\22,\0A      \22lib/internal/main/watch_mode.js\22,\0A      \22lib/internal/main/worker_thread.js\22,\0A      \22lib/internal/mime.js\22,\0A      \22lib/internal/modules/cjs/loader.js\22,\0A      \22lib/internal/modules/customization_hooks.js\22,\0A      \22lib/internal/modules/esm/assert.js\22,\0A      \22lib/internal/modules/esm/create_dynamic_module.js\22,\0A      \22lib/internal/modules/esm/get_format.js\22,\0A      \22lib/internal/modules/esm/hooks.js\22,\0A      \22lib/internal/modules/esm/load.js\22,\0A      \22lib/internal/modules/esm/loader.js\22,\0A      \22lib/internal/modules/esm/module_job.js\22,\0A      \22lib/internal/modules/esm/module_map.js\22,\0A      \22lib/internal/modules/esm/resolve.js\22,\0A      \22lib/internal/modules/esm/shared_constants.js\22,\0A      \22lib/internal/modules/esm/translators.js\22,\0A      \22lib/internal/modules/esm/utils.js\22,\0A      \22lib/internal/modules/esm/worker.js\22,\0A      \22lib/internal/modules/helpers.js\22,\0A      \22lib/internal/modules/package_json_reader.js\22,\0A      \22lib/internal/modules/run_main.js\22,\0A      \22lib/internal/modules/typescript.js\22,\0A      \22lib/internal/navigator.js\22,\0A      \22lib/internal/net.js\22,\0A      \22lib/internal/options.js\22,\0A      \22lib/internal/per_context/domexception.js\22,\0A      \22lib/internal/per_context/messageport.js\22,\0A      \22lib/internal/per_context/primordials.js\22,\0A      \22lib/internal/perf/event_loop_delay.js\22,\0A      \22lib/internal/perf/event_loop_utilization.js\22,\0A      \22lib/internal/perf/nodetiming.js\22,\0A      \22lib/internal/perf/observe.js\22,\0A      \22lib/internal/perf/performance.js\22,\0A      \22lib/internal/perf/performance_entry.js\22,\0A      \22lib/internal/perf/resource_timing.js\22,\0A      \22lib/internal/perf/timerify.js\22,\0A      \22lib/internal/perf/usertiming.js\22,\0A      \22lib/internal/perf/utils.js\22,\0A      \22lib/internal/priority_queue.js\22,\0A      \22lib/internal/process/execution.js\22,\0A      \22lib/internal/process/finalization.js\22,\0A      \22lib/internal/process/per_thread.js\22,\0A      \22lib/internal/process/permission.js\22,\0A      \22lib/internal/process/pre_execution.js\22,\0A      \22lib/internal/process/promises.js\22,\0A      \22lib/internal/process/report.js\22,\0A      \22lib/internal/process/signal.js\22,\0A      \22lib/internal/process/task_queues.js\22,\0A      \22lib/internal/process/warning.js\22,\0A      \22lib/internal/process/worker_thread_only.js\22,\0A      \22lib/internal/promise_hooks.js\22,\0A      \22lib/internal/querystring.js\22,\0A      \22lib/internal/quic/quic.js\22,\0A      \22lib/internal/quic/state.js\22,\0A      \22lib/internal/quic/stats.js\22,\0A      \22lib/internal/quic/symbols.js\22,\0A      \22lib/internal/readline/callbacks.js\22,\0A      \22lib/internal/readline/emitKeypressEvents.js\22,\0A      \22lib/internal/readline/interface.js\22,\0A      \22lib/internal/readline/promises.js\22,\0A      \22lib/internal/readline/utils.js\22,\0A      \22lib/internal/repl.js\22,\0A      \22lib/internal/repl/await.js\22,\0A      \22lib/internal/repl/completion.js\22,\0A      \22lib/internal/repl/history.js\22,\0A      \22lib/internal/repl/utils.js\22,\0A      \22lib/internal/socket_list.js\22,\0A      \22lib/internal/socketaddress.js\22,\0A      \22lib/internal/source_map/prepare_stack_trace.js\22,\0A      \22lib/internal/source_map/source_map.js\22,\0A      \22lib/internal/source_map/source_map_cache.js\22,\0A      \22lib/internal/source_map/source_map_cache_map.js\22,\0A      \22lib/internal/stream_base_commons.js\22,\0A      \22lib/internal/streams/add-abort-signal.js\22,\0A      \22lib/internal/streams/compose.js\22,\0A      \22lib/internal/streams/destroy.js\22,\0A      \22lib/internal/streams/duplex.js\22,\0A      \22lib/internal/streams/duplexify.js\22,\0A      \22lib/internal/streams/duplexpair.js\22,\0A      \22lib/internal/streams/end-of-stream.js\22,\0A      \22lib/internal/streams/fast-utf8-stream.js\22,\0A      \22lib/internal/streams/from.js\22,\0A      \22lib/internal/streams/lazy_transform.js\22,\0A      \22lib/internal/streams/legacy.js\22,\0A      \22lib/internal/streams/operators.js\22,\0A      \22lib/internal/streams/passthrough.js\22,\0A      \22lib/internal/streams/pipeline.js\22,\0A      \22lib/internal/streams/readable.js\22,\0A      \22lib/internal/streams/state.js\22,\0A      \22lib/internal/streams/transform.js\22,\0A      \22lib/internal/streams/utils.js\22,\0A      \22lib/internal/streams/writable.js\22,\0A      \22lib/internal/test/binding.js\22,\0A      \22lib/internal/test/transfer.js\22,\0A      \22lib/internal/test_runner/assert.js\22,\0A      \22lib/internal/test_runner/coverage.js\22,\0A      \22lib/internal/test_runner/harness.js\22,\0A      \22lib/internal/test_runner/mock/loader.js\22,\0A      \22lib/internal/test_runner/mock/mock.js\22,\0A      \22lib/internal/test_runner/mock/mock_timers.js\22,\0A      \22lib/internal/test_runner/reporter/dot.js\22,\0A      \22lib/internal/test_runner/reporter/junit.js\22,\0A      \22lib/internal/test_runner/reporter/lcov.js\22,\0A      \22lib/internal/test_runner/reporter/rerun.js\22,\0A      \22lib/internal/test_runner/reporter/spec.js\22,\0A      \22lib/internal/test_runner/reporter/tap.js\22,\0A      \22lib/internal/test_runner/reporter/utils.js\22,\0A      \22lib/internal/test_runner/reporter/v8-serializer.js\22,\0A      \22lib/internal/test_runner/runner.js\22,\0A      \22lib/internal/test_runner/snapshot.js\22,\0A      \22lib/internal/test_runner/test.js\22,\0A      \22lib/internal/test_runner/tests_stream.js\22,\0A      \22lib/internal/test_runner/utils.js\22,\0A      \22lib/internal/timers.js\22,\0A      \22lib/internal/tls/common.js\22,\0A      \22lib/internal/tls/secure-context.js\22,\0A      \22lib/internal/tls/wrap.js\22,\0A      \22lib/internal/trace_events_async_hooks.js\22,\0A      \22lib/internal/tty.js\22,\0A      \22lib/internal/url.js\22,\0A      \22lib/internal/util.js\22,\0A      \22lib/internal/util/colors.js\22,\0A      \22lib/internal/util/comparisons.js\22,\0A      \22lib/internal/util/debuglog.js\22,\0A      \22lib/internal/util/diff.js\22,\0A      \22lib/internal/util/inspect.js\22,\0A      \22lib/internal/util/inspector.js\22,\0A      \22lib/internal/util/parse_args/parse_args.js\22,\0A      \22lib/internal/util/parse_args/utils.js\22,\0A      \22lib/internal/util/trace_sigint.js\22,\0A      \22lib/internal/util/types.js\22,\0A      \22lib/internal/v8/startup_snapshot.js\22,\0A      \22lib/internal/v8_prof_polyfill.js\22,\0A      \22lib/internal/validators.js\22,\0A      \22lib/internal/vm.js\22,\0A      \22lib/internal/vm/module.js\22,\0A      \22lib/internal/wasm_web_api.js\22,\0A      \22lib/internal/watch_mode/files_watcher.js\22,\0A      \22lib/internal/watchdog.js\22,\0A      \22lib/internal/webidl.js\22,\0A      \22lib/internal/webstorage.js\22,\0A      \22lib/internal/webstreams/adapters.js\22,\0A      \22lib/internal/webstreams/compression.js\22,\0A      \22lib/internal/webstreams/encoding.js\22,\0A      \22lib/internal/webstreams/queuingstrategies.js\22,\0A      \22lib/internal/webstreams/readablestream.js\22,\0A      \22lib/internal/webstreams/transfer.js\22,\0A      \22lib/internal/webstreams/transformstream.js\22,\0A      \22lib/internal/webstreams/util.js\22,\0A      \22lib/internal/webstreams/writablestream.js\22,\0A      \22lib/internal/worker.js\22,\0A      \22lib/internal/worker/clone_dom_exception.js\22,\0A      \22lib/internal/worker/io.js\22,\0A      \22lib/internal/worker/js_transferable.js\22,\0A      \22lib/internal/worker/messaging.js\22,\0A      \22lib/module.js\22,\0A      \22lib/net.js\22,\0A      \22lib/os.js\22,\0A      \22lib/path.js\22,\0A      \22lib/path/posix.js\22,\0A      \22lib/path/win32.js\22,\0A      \22lib/perf_hooks.js\22,\0A      \22lib/process.js\22,\0A      \22lib/punycode.js\22,\0A      \22lib/querystring.js\22,\0A      \22lib/quic.js\22,\0A      \22lib/readline.js\22,\0A      \22lib/readline/promises.js\22,\0A      \22lib/repl.js\22,\0A      \22lib/sea.js\22,\0A      \22lib/sqlite.js\22,\0A      \22lib/stream.js\22,\0A      \22lib/stream/consumers.js\22,\0A      \22lib/stream/promises.js\22,\0A      \22lib/stream/web.js\22,\0A      \22lib/string_decoder.js\22,\0A      \22lib/sys.js\22,\0A      \22lib/test.js\22,\0A      \22lib/test/reporters.js\22,\0A      \22lib/timers.js\22,\0A      \22lib/timers/promises.js\22,\0A      \22lib/tls.js\22,\0A      \22lib/trace_events.js\22,\0A      \22lib/tty.js\22,\0A      \22lib/url.js\22,\0A      \22lib/util.js\22,\0A      \22lib/util/types.js\22,\0A      \22lib/v8.js\22,\0A      \22lib/vm.js\22,\0A      \22lib/wasi.js\22,\0A      \22lib/worker_threads.js\22,\0A      \22lib/zlib.js\22\0A    ],\0A    \22node_cctest_sources\22: [\0A      \22src/node_snapshot_stub.cc\22,\0A      \22test/cctest/inspector/test_network_requests_buffer.cc\22,\0A      \22test/cctest/inspector/test_node_protocol.cc\22,\0A      \22test/cctest/node_test_fixture.cc\22,\0A      \22test/cctest/test_aliased_buffer.cc\22,\0A      \22test/cctest/test_base64.cc\22,\0A      \22test/cctest/test_base_object_ptr.cc\22,\0A      \22test/cctest/test_cppgc.cc\22,\0A      \22test/cctest/test_crypto_clienthello.cc\22,\0A      \22test/cctest/test_dataqueue.cc\22,\0A      \22test/cctest/test_diagnostics_channel.cc\22,\0A      \22test/cctest/test_environment.cc\22,\0A      \22test/cctest/test_inspector_socket.cc\22,\0A      \22test/cctest/test_inspector_socket_server.cc\22,\0A      \22test/cctest/test_json_utils.cc\22,\0A      \22test/cctest/test_linked_binding.cc\22,\0A      \22test/cctest/test_lru_cache.cc\22,\0A      \22test/cctest/test_node_api.cc\22,\0A      \22test/cctest/test_node_crypto.cc\22,\0A      \22test/cctest/test_node_crypto_env.cc\22,\0A      \22test/cctest/test_node_postmortem_metadata.cc\22,\0A      \22test/cctest/test_node_task_runner.cc\22,\0A      \22test/cctest/test_path.cc\22,\0A      \22test/cctest/test_per_process.cc\22,\0A      \22test/cctest/test_platform.cc\22,\0A      \22test/cctest/test_quic_cid.cc\22,\0A      \22test/cctest/test_quic_error.cc\22,\0A      \22test/cctest/test_quic_preferredaddress.cc\22,\0A      \22test/cctest/test_quic_tokens.cc\22,\0A      \22test/cctest/test_report.cc\22,\0A      \22test/cctest/test_sockaddr.cc\22,\0A      \22test/cctest/test_string_bytes.cc\22,\0A      \22test/cctest/test_traced_value.cc\22,\0A      \22test/cctest/test_util.cc\22,\0A      \22test/cctest/node_test_fixture.h\22\0A    ],\0A    \22napi_build_version\22: \2210\22,\0A    \22node_shared_zlib\22: false,\0A    \22node_shared_http_parser\22: false,\0A    \22node_shared_libuv\22: false,\0A    \22node_shared_ada\22: false,\0A    \22node_shared_simdjson\22: false,\0A    \22node_shared_simdutf\22: false,\0A    \22node_shared_brotli\22: false,\0A    \22node_shared_cares\22: false,\0A    \22node_shared_gtest\22: false,\0A    \22node_shared_hdr_histogram\22: false,\0A    \22node_shared_merve\22: false,\0A    \22node_shared_nbytes\22: false,\0A    \22node_shared_nghttp2\22: false,\0A    \22node_shared_nghttp3\22: false,\0A    \22node_shared_ngtcp2\22: false,\0A    \22node_shared_lief\22: false,\0A    \22node_use_sqlite\22: true,\0A    \22node_shared_sqlite\22: false,\0A    \22node_shared_temporal_capi\22: false,\0A    \22node_shared_uvwasi\22: false,\0A    \22node_shared_zstd\22: false,\0A    \22v8_enable_webassembly\22: 1,\0A    \22v8_enable_javascript_promise_hooks\22: 1,\0A    \22v8_enable_lite_mode\22: 0,\0A    \22v8_enable_gdbjit\22: 1,\0A    \22v8_optimized_debug\22: 1,\0A    \22dcheck_always_on\22: 0,\0A    \22v8_enable_object_print\22: 1,\0A    \22v8_random_seed\22: 0,\0A    \22v8_promise_internal_field_count\22: 1,\0A    \22v8_use_siphash\22: 1,\0A    \22v8_enable_maglev\22: 1,\0A    \22v8_enable_pointer_compression\22: 0,\0A    \22v8_enable_sandbox\22: 0,\0A    \22v8_enable_pointer_compression_shared_cage\22: 0,\0A    \22v8_enable_external_code_space\22: 0,\0A    \22v8_enable_31bit_smis_on_64bit_arch\22: 0,\0A    \22v8_enable_extensible_ro_snapshot\22: 0,\0A    \22v8_enable_temporal_support\22: 0,\0A    \22v8_trace_maps\22: 0,\0A    \22node_use_v8_platform\22: true,\0A    \22node_use_bundled_v8\22: true,\0A    \22force_dynamic_crt\22: 0,\0A    \22node_enable_d8\22: false,\0A    \22node_enable_v8windbg\22: false,\0A    \22v8_enable_hugepage\22: 0,\0A    \22v8_enable_short_builtin_calls\22: 1,\0A    \22v8_enable_wasm_simd256_revec\22: 1,\0A    \22node_use_openssl\22: true,\0A    \22node_shared_openssl\22: false,\0A    \22openssl_is_fips\22: false,\0A    \22node_fipsinstall\22: false,\0A    \22node_without_node_options\22: false,\0A    \22openssl_version\22: 810549343,\0A    \22node_use_quic\22: false,\0A    \22icu_small\22: false,\0A    \22v8_enable_i18n_support\22: 1,\0A    \22icu_gyp_path\22: \22tools/icu/icu-generic.gyp\22,\0A    \22icu_path\22: \22deps/icu-small\22,\0A    \22icu_ver_major\22: \2278\22,\0A    \22icu_endianness\22: \22l\22,\0A    \22icu_data_in\22: \22../../deps/icu-tmp/icudt78l.dat\22,\0A    \22v8_enable_inspector\22: 1,\0A    \22node_section_ordering_info\22: \22\22,\0A    \22node_builtin_shareable_builtins\22: [\0A      \22deps/undici/undici.js\22,\0A      \22deps/amaro/dist/index.js\22\0A    ],\0A    \22ossfuzz\22: false,\0A    \22v8_enable_v8_checks\22: 0\0A  },\0A  \22target_defaults\22: {\0A    \22include_dirs\22: [],\0A    \22libraries\22: [],\0A    \22defines\22: [\0A      \22NODE_OPENSSL_CONF_NAME=nodejs_conf\22,\0A      \22ICU_NO_USER_DATA_OVERRIDE\22\0A    ],\0A    \22cflags\22: [],\0A    \22conditions\22: [],\0A    \22default_configuration\22: \22Release\22,\0A    \22configurations\22: {\0A      \22Release\22: {},\0A      \22Debug\22: {}\0A    }\0A  }\0A}\0A\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN4node21ThreadsafeCopyOnWriteISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8builtins13BuiltinSourceESt4lessIS8_ESaISt4pairIKS8_SA_EEEE4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node21ThreadsafeCopyOnWriteISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8builtins13BuiltinSourceESt4lessIS8_ESaISt4pairIKS8_SA_EEEE4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node21ThreadsafeCopyOnWriteISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8builtins13BuiltinSourceESt4lessIS8_ESaISt4pairIKS8_SA_EEEE4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node21ThreadsafeCopyOnWriteISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8builtins13BuiltinSourceESt4lessIS8_ESaISt4pairIKS8_SA_EEEE4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node21ThreadsafeCopyOnWriteISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8builtins13BuiltinSourceESt4lessIS8_ESaISt4pairIKS8_SA_EEEE4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZZN4node9MutexBaseINS_17LibuvRwlockTraitsEEC1EvE20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.1113, ptr @.str.1114, ptr @.str.1115 }, comdat, align 8
@.str.1113 = private unnamed_addr constant [27 x i8] c"../../src/node_mutex.h:254\00", align 1
@.str.1114 = private unnamed_addr constant [37 x i8] c"(0) == (Traits::mutex_init(&mutex_))\00", align 1
@.str.1115 = private unnamed_addr constant [89 x i8] c"node::MutexBase<node::LibuvRwlockTraits>::MutexBase() [Traits = node::LibuvRwlockTraits]\00", align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr dso_local constant [16 x i8] zeroinitializer, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN4node8builtins11BuiltinInfo13parameter_mapB5cxx11E }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_node_javascript.cc, ptr null }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN4node8builtins11BuiltinInfo13parameter_mapB5cxx11E], section "llvm.metadata"

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN8simdjson14fractured_jsonINS_3dom7elementEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.simdjson::fractured_json_options", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 120, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 80, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  store double 8.000000e-01, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i8 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 10, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i8 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 81
  store i8 1, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 82
  store i8 1, ptr %i.l, align 2
  call void @_ZN8simdjson14fractured_jsonINS_3dom7elementEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_RKNS_22fractured_json_optionsE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(83) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN8simdjson14fractured_jsonINS_3dom7elementEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_RKNS_22fractured_json_optionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(83) %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.simdjson::dom::element", align 8 ; 3 uses
  %5 = alloca %"class.simdjson::internal::fractured_string_builder", align 8 ; 15 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %5, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  store ptr %5, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 64, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i32 3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.g, i8 0, i64 17, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.i, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  call void @_ZN8simdjson8internal24fractured_string_builder6appendERKNS_3dom7elementE(ptr noundef nonnull align 8 dereferenceable(336) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.j = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.k = load i64, ptr %i.c, align 8              ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.l, ptr %0, align 8
  %i.m = icmp eq ptr %i.j, null
  %i.n = icmp ne i64 %i.k, 0
  %or.cond.i = and i1 %i.m, %i.n
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.738) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = icmp ugt i64 %i.k, 15
  br i1 %i.o, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.p = icmp slt i64 %i.k, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.739) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = add nuw i64 %i.k, 1                      ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !23

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.f
  %i.s = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #24 ; 2 uses
  store ptr %i.s, ptr %0, align 8
  store i64 %i.k, ptr %i.l, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.c
  %i.t = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  switch i64 %i.k, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.u = load i8, ptr %i.j, align 1
  store i8 %i.u, ptr %i.t, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %i.j, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.k
  store i8 0, ptr %i.w, align 1
  %i.x = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  %i.ad = load ptr, ptr %i.b, align 8             ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.ad, %5
  %i.ae = icmp eq ptr %i.ad, null
  %or.cond.i.i.i.i.i = or i1 %.not.i.i.i1.i.i, %i.ae
  br i1 %or.cond.i.i.i.i.i, label %_ZN8simdjson8internal24fractured_string_builderD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #25
  br label %_ZN8simdjson8internal24fractured_string_builderD2Ev.exit

_ZN8simdjson8internal24fractured_string_builderD2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8simdjson8internal24fractured_string_builder6appendERKNS_3dom7elementE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.simdjson::dom::array", align 8 ; 6 uses
  %3 = alloca %"class.simdjson::dom::object", align 8 ; 6 uses
  %4 = alloca %"struct.simdjson::internal::element_metrics", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  store ptr %i.b, ptr %i.a, align 8, !noalias !36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.c = load ptr, ptr %1, align 8, !noalias !38  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !38 ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !noalias !38
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load i64, ptr %i.g, align 8, !noalias !38 ; 3 uses
  %i.i = lshr i64 %i.h, 56                        ; 2 uses
  %5 = icmp eq i64 %i.i, 102
  %i.j = trunc nuw i64 %i.i to i8
  %trunc.i.i = select i1 %5, i8 116, i8 %i.j
  switch i8 %trunc.i.i, label %bb.d [
    i8 91, label %bb.b
    i8 123, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !38
  %.mask.i.i.i = and i64 %i.h, -72057594037927936
  %cond.i.i.i = icmp eq i64 %.mask.i.i.i, 6557241057451442176
  br i1 %cond.i.i.i, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit.thread19.i.i, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit.i.i

_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit.thread19.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.c, ptr %2, align 8, !noalias !38
  store i64 %i.e, ptr %i.k, align 8, !noalias !38
  call void @_ZN8simdjson8internal18structure_analyzer13analyze_arrayERKNS_3dom5arrayEm(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::internal::element_metrics") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0) #26, !inline_history !39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !38
  br label %_ZN8simdjson8internal18structure_analyzer7analyzeERKNS_3dom7elementERKNS_22fractured_json_optionsE.exit

_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !38
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !38
  %.mask.i9.i.i = and i64 %i.h, -72057594037927936
  %cond.i10.i.i = icmp eq i64 %.mask.i9.i.i, 8863084066665136128
  br i1 %cond.i10.i.i, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread21.i.i, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.i.i

_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread21.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %3, align 8, !noalias !38
  store i64 %i.e, ptr %i.l, align 8, !noalias !38
  call void @_ZN8simdjson8internal18structure_analyzer14analyze_objectERKNS_3dom6objectEm(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::internal::element_metrics") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef 0) #26, !inline_history !39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !38
  br label %_ZN8simdjson8internal18structure_analyzer7analyzeERKNS_3dom7elementERKNS_22fractured_json_optionsE.exit

_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !38
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @_ZN8simdjson8internal18structure_analyzer14analyze_scalarERKNS_3dom7elementE(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::internal::element_metrics") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !39
  br label %_ZN8simdjson8internal18structure_analyzer7analyzeERKNS_3dom7elementERKNS_22fractured_json_optionsE.exit

bb.e:                                             ; preds = %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.i.i, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %4, i8 0, i64 26, i1 false), !alias.scope !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false), !alias.scope !38
  store i32 3, ptr %i.n, align 8, !alias.scope !38
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false), !alias.scope !38
  br label %_ZN8simdjson8internal18structure_analyzer7analyzeERKNS_3dom7elementERKNS_22fractured_json_optionsE.exit

_ZN8simdjson8internal18structure_analyzer7analyzeERKNS_3dom7elementERKNS_22fractured_json_optionsE.exit: ; preds = %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit.thread19.i.i, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread21.i.i, %bb.d, %bb.e
  call void @_ZN8simdjson8internal24fractured_string_builder14format_elementERKNS_3dom7elementERKNS0_15element_metricsEm(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %4, i64 noundef 0)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.s = load ptr, ptr %i.r, align 8
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8simdjson8internal15element_metricsEEEvT_S6_(ptr noundef %i.q, ptr noundef %i.s), !inline_history !0
  %i.t = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN8simdjson8internal18structure_analyzer7analyzeERKNS_3dom7elementERKNS_22fractured_json_optionsE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25, !inline_history !1
  br label %_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EED2Ev.exit.i: ; preds = %bb.f, %_ZN8simdjson8internal18structure_analyzer7analyzeERKNS_3dom7elementERKNS_22fractured_json_optionsE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.aa, %_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EED2Ev.exit.i ] ; 3 uses
  %i.ad = load ptr, ptr %.05.i.i.i.i, align 8     ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ag = load i64, ptr %i.ae, align 8
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #25, !inline_history !2
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ai, %i.ac
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.z, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EED2Ev.exit.i
  %i.aj = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.aa, %_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i.i, label %_ZN8simdjson8internal15element_metricsD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #25, !inline_history !2
  br label %_ZN8simdjson8internal15element_metricsD2Ev.exit

_ZN8simdjson8internal15element_metricsD2Ev.exit:  ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN8simdjson14fractured_jsonINS_3dom5arrayEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.simdjson::fractured_json_options", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 120, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 80, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  store double 8.000000e-01, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i8 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 10, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i8 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 81
  store i8 1, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 82
  store i8 1, ptr %i.l, align 2
  call void @_ZN8simdjson14fractured_jsonINS_3dom5arrayEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_RKNS_22fractured_json_optionsE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(83) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN8simdjson14fractured_jsonINS_3dom5arrayEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_RKNS_22fractured_json_optionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(83) %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.simdjson::dom::array", align 8 ; 3 uses
  %5 = alloca %"class.simdjson::internal::fractured_string_builder", align 8 ; 15 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %5, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  store ptr %5, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 64, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i32 3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.g, i8 0, i64 17, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.i, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  call void @_ZN8simdjson8internal24fractured_string_builder6appendERKNS_3dom5arrayE(ptr noundef nonnull align 8 dereferenceable(336) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.j = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.k = load i64, ptr %i.c, align 8              ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.l, ptr %0, align 8
  %i.m = icmp eq ptr %i.j, null
  %i.n = icmp ne i64 %i.k, 0
  %or.cond.i = and i1 %i.m, %i.n
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.738) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = icmp ugt i64 %i.k, 15
end_hunk_0
begin_hunk_1_@_ZN4node8builtins52RegisterExternalReferencesForInternalizedBuiltinCodeEPNS_25ExternalReferenceRegistryE:bb.a
  %i.lhd = icmp sgt i64 %i.lgt, 0
  br i1 %i.lhd, label %bb.bqp, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i3248

bb.bqp:                                           ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i3245
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lhb, ptr align 8 %i.lgq, i64 %i.lgt, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i3248

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i3248: ; preds = %bb.bqp, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i3245
  %i.lhe = getelementptr inbounds nuw i8, ptr %i.lhc, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i3249 = icmp eq ptr %i.lgq, null
  br i1 %.not.i17.i.i.i.i.i3249, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i3250, label %bb.bqq

bb.bqq:                                           ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i3248
  %i.lhf = load ptr, ptr %i.d, align 8
  %i.lhg = ptrtoint ptr %i.lhf to i64
  %i.lhh = sub i64 %i.lhg, %i.lgs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lgq, i64 noundef %i.lhh) #25
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i3250

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i3250: ; preds = %bb.bqq, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i3248
  store ptr %i.lhb, ptr %i.a, align 8
  store ptr %i.lhe, ptr %i.b, align 8
  %i.lhi = getelementptr inbounds nuw [8 x i8], ptr %i.lhb, i64 %i.lgz ; 2 uses
  store ptr %i.lhi, ptr %i.d, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPKN2v86String26ExternalStringResourceBaseE.exit3251

_ZN4node25ExternalReferenceRegistry8RegisterEPKN2v86String26ExternalStringResourceBaseE.exit3251: ; preds = %bb.bqm, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i3250
  %i.lhj = phi ptr [ %.pre3628, %bb.bqm ], [ %i.lhi, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i3250 ] ; 2 uses
  %i.lhk = phi ptr [ %i.lgp, %bb.bqm ], [ %i.lhe, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i3250 ] ; 2 uses
  %.not.i.i.i.i3252 = icmp eq ptr %i.lhk, %i.lhj
  br i1 %.not.i.i.i.i3252, label %bb.bqs, label %bb.bqr

bb.bqr:                                           ; preds = %_ZN4node25ExternalReferenceRegistry8RegisterEPKN2v86String26ExternalStringResourceBaseE.exit3251
  store i64 ptrtoint (ptr @_ZN4node8builtinsL52internal_deps_v8_tools_tickprocessor_driver_resourceE to i64), ptr %i.lhk, align 8
  %i.lhl = load ptr, ptr %i.b, align 8
  %i.lhm = getelementptr inbounds nuw i8, ptr %i.lhl, i64 8 ; 2 uses
  store ptr %i.lhm, ptr %i.b, align 8
  %.pre3629 = load ptr, ptr %i.d, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPKN2v86String26ExternalStringResourceBaseE.exit3259

bb.bqs:                                           ; preds = %_ZN4node25ExternalReferenceRegistry8RegisterEPKN2v86String26ExternalStringResourceBaseE.exit3251
  %i.lhn = load ptr, ptr %i.a, align 8            ; 4 uses
  %i.lho = ptrtoint ptr %i.lhj to i64
  %i.lhp = ptrtoint ptr %i.lhn to i64             ; 2 uses
  %i.lhq = sub i64 %i.lho, %i.lhp                 ; 5 uses
  %i.lhr = icmp eq i64 %i.lhq, 9223372036854775800
  br i1 %i.lhr, label %bb.bqt, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i3253

bb.bqt:                                           ; preds = %bb.bqs
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.740) #23
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i3253: ; preds = %bb.bqs
  %i.lhs = ashr exact i64 %i.lhq, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i3254 = tail call i64 @llvm.umax.i64(i64 %i.lhs, i64 1)
  %i.lht = add nsw i64 %.sroa.speculated.i.i.i.i.i.i3254, %i.lhs ; 2 uses
  %i.lhu = icmp ult i64 %i.lht, %i.lhs
  %i.lhv = tail call i64 @llvm.umin.i64(i64 %i.lht, i64 1152921504606846975)
  %i.lhw = select i1 %i.lhu, i64 1152921504606846975, i64 %i.lhv ; 3 uses
  %.not.i.i.i.i.i.i3255 = icmp ne i64 %i.lhw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i3255)
  %i.lhx = shl nuw nsw i64 %i.lhw, 3
  %i.lhy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lhx) #24 ; 4 uses
  %i.lhz = getelementptr inbounds i8, ptr %i.lhy, i64 %i.lhq ; 2 uses
  store i64 ptrtoint (ptr @_ZN4node8builtinsL52internal_deps_v8_tools_tickprocessor_driver_resourceE to i64), ptr %i.lhz, align 8
  %i.lia = icmp sgt i64 %i.lhq, 0
  br i1 %i.lia, label %bb.bqu, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i3256

bb.bqu:                                           ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i3253
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lhy, ptr align 8 %i.lhn, i64 %i.lhq, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i3256

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i3256: ; preds = %bb.bqu, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i3253
  %i.lib = getelementptr inbounds nuw i8, ptr %i.lhz, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i3257 = icmp eq ptr %i.lhn, null
  br i1 %.not.i17.i.i.i.i.i3257, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i3258, label %bb.bqv

bb.bqv:                                           ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i3256
  %i.lic = load ptr, ptr %i.d, align 8
  %i.lid = ptrtoint ptr %i.lic to i64
  %i.lie = sub i64 %i.lid, %i.lhp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lhn, i64 noundef %i.lie) #25
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i3258

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i3258: ; preds = %bb.bqv, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i3256
  store ptr %i.lhy, ptr %i.a, align 8
  store ptr %i.lib, ptr %i.b, align 8
  %i.lif = getelementptr inbounds nuw [8 x i8], ptr %i.lhy, i64 %i.lhw ; 2 uses
  store ptr %i.lif, ptr %i.d, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPKN2v86String26ExternalStringResourceBaseE.exit3259

_ZN4node25ExternalReferenceRegistry8RegisterEPKN2v86String26ExternalStringResourceBaseE.exit3259: ; preds = %bb.bqr, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i3258
  %i.lig = phi ptr [ %.pre3629, %bb.bqr ], [ %i.lif, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i3258 ] ; 2 uses
  %i.lih = phi ptr [ %i.lhm, %bb.bqr ], [ %i.lib, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i3258 ] ; 2 uses
  %.not.i.i.i.i3260 = icmp eq ptr %i.lih, %i.lig
  br i1 %.not.i.i.i.i3260, label %bb.bqx, label %bb.bqw

bb.bqw:                                           ; preds = %_ZN4node25ExternalReferenceRegistry8RegisterEPKN2v86String26ExternalStringResourceBaseE.exit3259
  store i64 ptrtoint (ptr @_ZN4node8builtinsL45internal_deps_v8_tools_tickprocessor_resourceE to i64), ptr %i.lih, align 8
  %i.lii = load ptr, ptr %i.b, align 8
  %i.lij = getelementptr inbounds nuw i8, ptr %i.lii, i64 8
  store ptr %i.lij, ptr %i.b, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPKN2v86String26ExternalStringResourceBaseE.exit3267

bb.bqx:                                           ; preds = %_ZN4node25ExternalReferenceRegistry8RegisterEPKN2v86String26ExternalStringResourceBaseE.exit3259
  %i.lik = load ptr, ptr %i.a, align 8            ; 4 uses
  %i.lil = ptrtoint ptr %i.lig to i64
  %i.lim = ptrtoint ptr %i.lik to i64             ; 2 uses
  %i.lin = sub i64 %i.lil, %i.lim                 ; 5 uses
  %i.lio = icmp eq i64 %i.lin, 9223372036854775800
  br i1 %i.lio, label %bb.bqy, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i3261

bb.bqy:                                           ; preds = %bb.bqx
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.740) #23
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i3261: ; preds = %bb.bqx
  %i.lip = ashr exact i64 %i.lin, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i3262 = tail call i64 @llvm.umax.i64(i64 %i.lip, i64 1)
  %i.liq = add nsw i64 %.sroa.speculated.i.i.i.i.i.i3262, %i.lip ; 2 uses
  %i.lir = icmp ult i64 %i.liq, %i.lip
  %i.lis = tail call i64 @llvm.umin.i64(i64 %i.liq, i64 1152921504606846975)
  %i.lit = select i1 %i.lir, i64 1152921504606846975, i64 %i.lis ; 3 uses
  %.not.i.i.i.i.i.i3263 = icmp ne i64 %i.lit, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i3263)
  %i.liu = shl nuw nsw i64 %i.lit, 3
  %i.liv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.liu) #24 ; 4 uses
  %i.liw = getelementptr inbounds i8, ptr %i.liv, i64 %i.lin ; 2 uses
  store i64 ptrtoint (ptr @_ZN4node8builtinsL45internal_deps_v8_tools_tickprocessor_resourceE to i64), ptr %i.liw, align 8
  %i.lix = icmp sgt i64 %i.lin, 0
  br i1 %i.lix, label %bb.bqz, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i3264

bb.bqz:                                           ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i3261
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.liv, ptr align 8 %i.lik, i64 %i.lin, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i3264

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i3264: ; preds = %bb.bqz, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.i3261
  %i.liy = getelementptr inbounds nuw i8, ptr %i.liw, i64 8
  %.not.i17.i.i.i.i.i3265 = icmp eq ptr %i.lik, null
  br i1 %.not.i17.i.i.i.i.i3265, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i3266, label %bb.bra

bb.bra:                                           ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i3264
  %i.liz = load ptr, ptr %i.d, align 8
  %i.lja = ptrtoint ptr %i.liz to i64
  %i.ljb = sub i64 %i.lja, %i.lim
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lik, i64 noundef %i.ljb) #25
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i3266

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i3266: ; preds = %bb.bra, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.i3264
  store ptr %i.liv, ptr %i.a, align 8
  store ptr %i.liy, ptr %i.b, align 8
  %i.ljc = getelementptr inbounds nuw [8 x i8], ptr %i.liv, i64 %i.lit
  store ptr %i.ljc, ptr %i.d, align 8
  br label %_ZN4node25ExternalReferenceRegistry8RegisterEPKN2v86String26ExternalStringResourceBaseE.exit3267

_ZN4node25ExternalReferenceRegistry8RegisterEPKN2v86String26ExternalStringResourceBaseE.exit3267: ; preds = %bb.bqw, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i3266
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, ptr } @_ZN4node8builtins13BuiltinLoader9GetConfigEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #5 align 2 {
bb.a:
  ret { ptr, ptr } { ptr @_ZN4node8builtinsL15config_resourceE, ptr null }
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8simdjson8internal24fractured_string_builder14format_elementERKNS_3dom7elementERKNS0_15element_metricsEm(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.simdjson::dom::array", align 8 ; 8 uses
  %5 = alloca %"class.simdjson::dom::object", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = lshr i64 %i.f, 56                        ; 2 uses
  %6 = icmp eq i64 %i.g, 102
  %i.h = trunc nuw i64 %i.g to i8
  %trunc = select i1 %6, i8 116, i8 %i.h
  switch i8 %trunc, label %bb.l [
    i8 91, label %bb.b
    i8 123, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %.mask.i = and i64 %i.f, -72057594037927936
  %cond.i = icmp eq i64 %.mask.i, 6557241057451442176
  br i1 %cond.i, label %bb.c, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %4, align 8
  store i64 %i.c, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load i32, ptr %i.j, align 8
  switch i32 %i.k, label %bb.g [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  call void @_ZN8simdjson8internal24fractured_string_builder19format_array_inlineERKNS_3dom5arrayERKNS0_15element_metricsE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(88) %2), !inline_history !4
  br label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZN8simdjson8internal24fractured_string_builder30format_array_compact_multilineERKNS_3dom5arrayERKNS0_15element_metricsEm(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 noundef %3), !inline_history !4
  br label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit

bb.f:                                             ; preds = %bb.c
  call void @_ZN8simdjson8internal24fractured_string_builder21format_array_as_tableERKNS_3dom5arrayERKNS0_15element_metricsEm(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 noundef %3), !inline_history !4
  br label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit

bb.g:                                             ; preds = %bb.c
  call void @_ZN8simdjson8internal24fractured_string_builder21format_array_expandedERKNS_3dom5arrayERKNS0_15element_metricsEm(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 noundef %3), !inline_history !4
  br label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit

_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %.mask.i9 = and i64 %i.f, -72057594037927936
  %cond.i10 = icmp eq i64 %.mask.i9, 8863084066665136128
  br i1 %cond.i10, label %bb.i, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %5, align 8
  store i64 %i.c, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp eq i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load i8, ptr %i.p, align 8, !range !25
  %i.r = trunc nuw i8 %i.q to i1
  %or.cond.i = select i1 %i.o, i1 true, i1 %i.r
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZN8simdjson8internal24fractured_string_builder20format_object_inlineERKNS_3dom6objectERKNS0_15element_metricsE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(88) %2), !inline_history !5
  br label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZN8simdjson8internal24fractured_string_builder22format_object_expandedERKNS_3dom6objectERKNS0_15element_metricsEm(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 noundef %3), !inline_history !5
  br label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit

_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit: ; preds = %bb.k, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN8simdjson8internal24fractured_string_builder13format_scalarERKNS_3dom7elementE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8simdjson8internal18structure_analyzer15analyze_elementERKNS_3dom7elementEm(ptr dead_on_unwind noalias writable sret(%"struct.simdjson::internal::element_metrics") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.simdjson::dom::array", align 8 ; 6 uses
  %5 = alloca %"class.simdjson::dom::object", align 8 ; 6 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = lshr i64 %i.f, 56                        ; 2 uses
  %6 = icmp eq i64 %i.g, 102
  %i.h = trunc nuw i64 %i.g to i8
  %trunc = select i1 %6, i8 116, i8 %i.h
  switch i8 %trunc, label %bb.d [
    i8 91, label %bb.b
    i8 123, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %.mask.i = and i64 %i.f, -72057594037927936
  %cond.i = icmp eq i64 %.mask.i, 6557241057451442176
  br i1 %cond.i, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit.thread19, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit

_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit.thread19: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %4, align 8
  store i64 %i.c, ptr %i.i, align 8
  call void @_ZN8simdjson8internal18structure_analyzer13analyze_arrayERKNS_3dom5arrayEm(ptr dead_on_unwind writable sret(%"struct.simdjson::internal::element_metrics") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.f

_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %.mask.i9 = and i64 %i.f, -72057594037927936
  %cond.i10 = icmp eq i64 %.mask.i9, 8863084066665136128
  br i1 %cond.i10, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread21, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit

_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread21: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %5, align 8
  store i64 %i.c, ptr %i.j, align 8
  call void @_ZN8simdjson8internal18structure_analyzer14analyze_objectERKNS_3dom6objectEm(ptr dead_on_unwind writable sret(%"struct.simdjson::internal::element_metrics") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.f

_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN8simdjson8internal18structure_analyzer14analyze_scalarERKNS_3dom7elementE(ptr dead_on_unwind writable sret(%"struct.simdjson::internal::element_metrics") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.f

bb.e:                                             ; preds = %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %0, i8 0, i64 26, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  store i32 3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread21, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit.thread19, %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8simdjson8internal18structure_analyzer13analyze_arrayERKNS_3dom5arrayEm(ptr dead_on_unwind noalias writable sret(%"struct.simdjson::internal::element_metrics") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.simdjson::dom::element", align 8 ; 5 uses
  %5 = alloca %"struct.simdjson::internal::element_metrics", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 0, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store i32 3, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.f, align 8
  %i.g = load ptr, ptr %2, align 8                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = lshr i64 %i.m, 56
  %trunc.i.i = trunc nuw i64 %i.n to i8
  switch i8 %trunc.i.i, label %_ZNK8simdjson3dom5array3endEv.exit [
    i8 91, label %bb.b
    i8 123, label %bb.b
    i8 117, label %bb.c
    i8 108, label %bb.c
    i8 100, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.o = and i64 %i.m, 4294967295
  br label %_ZNK8simdjson3dom5array3endEv.exit

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.p = add i64 %i.i, 2
  br label %_ZNK8simdjson3dom5array3endEv.exit

_ZNK8simdjson3dom5array3endEv.exit:               ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.p, %bb.c ], [ %i.o, %bb.b ], [ %i.j, %bb.a ]
  %i.q = add i64 %.0.i.i, -1                      ; 2 uses
  %.not2425 = icmp eq i64 %i.j, %i.q
  br i1 %.not2425, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK8simdjson3dom5array3endEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = add i64 %3, 1
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN8simdjson3dom5array8iteratorppEv.exit, %_ZNK8simdjson3dom5array3endEv.exit
  %.023.lcssa = phi i64 [ 0, %_ZNK8simdjson3dom5array3endEv.exit ], [ %.sroa.speculated, %_ZN8simdjson3dom5array8iteratorppEv.exit ] ; 2 uses
  %i.ad = add i64 %.023.lcssa, 1                  ; 2 uses
  store i64 %i.ad, ptr %0, align 8
  %i.ae = load ptr, ptr %1, align 8               ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8
  %.not = icmp ugt i64 %i.ad, %i.ag
  br i1 %.not, label %bb.o, label %bb.n

bb.d:                                             ; preds = %.lr.ph, %_ZN8simdjson3dom5array8iteratorppEv.exit
  %.028 = phi i1 [ true, %.lr.ph ], [ false, %_ZN8simdjson3dom5array8iteratorppEv.exit ]
  %.sroa.5.027 = phi i64 [ %i.j, %.lr.ph ], [ %.0.i.i14, %_ZN8simdjson3dom5array8iteratorppEv.exit ] ; 4 uses
  %.02326 = phi i64 [ 0, %.lr.ph ], [ %.sroa.speculated, %_ZN8simdjson3dom5array8iteratorppEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.g, ptr %4, align 8
  store i64 %.sroa.5.027, ptr %i.r, align 8
  br i1 %.028, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load i64, ptr %i.e, align 8
  %i.ai = add i64 %i.ah, 2
  store i64 %i.ai, ptr %i.e, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN8simdjson8internal18structure_analyzer15analyze_elementERKNS_3dom7elementEm(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::internal::element_metrics") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.s)
  %i.aj = load i64, ptr %i.t, align 8
  %i.ak = load i64, ptr %5, align 8
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %.02326, i64 %i.ak) ; 2 uses
  %i.al = load <2 x i64>, ptr %i.e, align 8
  %i.am = insertelement <2 x i64> <i64 poison, i64 1>, i64 %i.aj, i64 0
  %i.an = add <2 x i64> %i.al, %i.am
  store <2 x i64> %i.an, ptr %i.e, align 8
  %i.ao = load ptr, ptr %i.u, align 8             ; 10 uses
  %i.ap = load ptr, ptr %i.v, align 8
  %.not.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ao, ptr noundef nonnull align 8 dereferenceable(88) %5, i64 26, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.ar = load ptr, ptr %i.w, align 8
  store ptr %i.ar, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.at = load ptr, ptr %i.x, align 8
  store ptr %i.at, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.av = load ptr, ptr %i.y, align 8
  store ptr %i.av, ptr %i.au, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.ax = load i32, ptr %i.z, align 8
  store i32 %i.ax, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.az = load ptr, ptr %i.aa, align 8
  store ptr %i.az, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.bb = load ptr, ptr %i.ab, align 8
  store ptr %i.bb, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.bd = load ptr, ptr %i.ac, align 8
  store ptr %i.bd, ptr %i.bc, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %i.be = load ptr, ptr %i.u, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  store ptr %i.bf, ptr %i.u, align 8
  br label %_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EE9push_backEOS2_.exit

bb.h:                                             ; preds = %bb.f
  call void @_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.ao, ptr noundef nonnull align 8 dereferenceable(88) %5)
  %.pre = load ptr, ptr %i.aa, align 8
  %.pre29 = load ptr, ptr %i.ab, align 8
  br label %_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.g, %bb.h
  %i.bg = phi ptr [ null, %bb.g ], [ %.pre29, %bb.h ]
end_hunk_1
begin_hunk_2_@_ZN8simdjson8internal18structure_analyzer14analyze_objectERKNS_3dom6objectEm:bb.a
  %switch.selectcmp.case2.i = icmp eq i8 %.fr.i, 34
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %i.bq = or i1 %i.bp, %switch.selectcmp.i
  %.sink.i = select i1 %i.bq, i64 2, i64 1
  %i.br = add i64 %.sink.i, %.01619.i             ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.020.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.bs, %i.at
  br i1 %.not.i, label %_ZNK8simdjson8internal18structure_analyzer22estimate_string_lengthESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit, label %.lr.ph.i, !llvm.loop !58

_ZNK8simdjson8internal18structure_analyzer22estimate_string_lengthESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i64 [ %i.bn, %middle.block ], [ %i.br, %.lr.ph.i ]
  %i.bt = add i64 %.lcssa, 2
  br label %_ZNK8simdjson8internal18structure_analyzer22estimate_string_lengthESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZNK8simdjson8internal18structure_analyzer22estimate_string_lengthESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNK8simdjson8internal18structure_analyzer22estimate_string_lengthESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit, %bb.f
  %.016.lcssa.i = phi i64 [ 4, %bb.f ], [ %i.bt, %_ZNK8simdjson8internal18structure_analyzer22estimate_string_lengthESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit ]
  %i.bu = load i64, ptr %i.e, align 8
  %i.bv = add i64 %.016.lcssa.i, %i.bu
  store i64 %i.bv, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN8simdjson8internal18structure_analyzer15analyze_elementERKNS_3dom7elementEm(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::internal::element_metrics") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 noundef %i.t)
  %i.bw = load i64, ptr %i.u, align 8
  %i.bx = load i64, ptr %5, align 8
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %.01922, i64 %i.bx) ; 2 uses
  %i.by = load <2 x i64>, ptr %i.e, align 8
  %i.bz = insertelement <2 x i64> <i64 poison, i64 1>, i64 %i.bw, i64 0
  %i.ca = add <2 x i64> %i.by, %i.bz
  store <2 x i64> %i.ca, ptr %i.e, align 8
  %i.cb = load ptr, ptr %i.v, align 8             ; 10 uses
  %i.cc = load ptr, ptr %i.w, align 8
  %.not.i.i = icmp eq ptr %i.cb, %i.cc
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK8simdjson8internal18structure_analyzer22estimate_string_lengthESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cb, ptr noundef nonnull align 8 dereferenceable(88) %5, i64 26, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.ce = load ptr, ptr %i.x, align 8
  store ptr %i.ce, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cg = load ptr, ptr %i.y, align 8
  store ptr %i.cg, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.ci = load ptr, ptr %i.z, align 8
  store ptr %i.ci, ptr %i.ch, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.ck = load i32, ptr %i.aa, align 8
  store i32 %i.ck, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cm = load ptr, ptr %i.ab, align 8
  store ptr %i.cm, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  %i.co = load ptr, ptr %i.ac, align 8
  store ptr %i.co, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %i.cq = load ptr, ptr %i.ad, align 8
  store ptr %i.cq, ptr %i.cp, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %i.cr = load ptr, ptr %i.v, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 88
  store ptr %i.cs, ptr %i.v, align 8
  br label %_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EE9push_backEOS2_.exit

bb.h:                                             ; preds = %_ZNK8simdjson8internal18structure_analyzer22estimate_string_lengthESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.cb, ptr noundef nonnull align 8 dereferenceable(88) %5)
  %.pre = load ptr, ptr %i.ab, align 8
  %.pre25 = load ptr, ptr %i.ac, align 8
  br label %_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.g, %bb.h
  %i.ct = phi ptr [ null, %bb.g ], [ %.pre25, %bb.h ]
  %i.cu = phi ptr [ null, %bb.g ], [ %.pre, %bb.h ]
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8simdjson8internal15element_metricsEEEvT_S6_(ptr noundef %i.cu, ptr noundef %i.ct), !inline_history !0
  %i.cv = load ptr, ptr %i.ab, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EE9push_backEOS2_.exit
  %i.cw = load ptr, ptr %i.ad, align 8
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.cz) #25, !inline_history !1
  br label %_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EED2Ev.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EE9push_backEOS2_.exit
  %i.da = load ptr, ptr %i.x, align 8             ; 3 uses
  %i.db = load ptr, ptr %i.y, align 8             ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.da, %i.db
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.da, %_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EED2Ev.exit.i ] ; 3 uses
  %i.dc = load ptr, ptr %.05.i.i.i.i, align 8     ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.df = load i64, ptr %i.dd, align 8
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #25, !inline_history !2
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dh, %i.db
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.x, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EED2Ev.exit.i
  %i.di = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.da, %_ZNSt6vectorIN8simdjson8internal15element_metricsESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i1.i.i, label %_ZN8simdjson8internal15element_metricsD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  %i.dj = load ptr, ptr %i.z, align 8
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.di to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dm) #25, !inline_history !2
  br label %_ZN8simdjson8internal15element_metricsD2Ev.exit

_ZN8simdjson8internal15element_metricsD2Ev.exit:  ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.dn = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.aq
  %i.dp = load i64, ptr %i.do, align 8            ; 2 uses
  %i.dq = lshr i64 %i.dp, 56
  %trunc.i.i10 = trunc nuw i64 %i.dq to i8
  switch i8 %trunc.i.i10, label %bb.m [
    i8 91, label %bb.k
    i8 123, label %bb.k
    i8 117, label %bb.l
    i8 108, label %bb.l
    i8 100, label %bb.l
  ]

bb.k:                                             ; preds = %_ZN8simdjson8internal15element_metricsD2Ev.exit, %_ZN8simdjson8internal15element_metricsD2Ev.exit
  %i.dr = and i64 %i.dp, 4294967295
  br label %_ZN8simdjson3dom6object8iteratorppEv.exit

bb.l:                                             ; preds = %_ZN8simdjson8internal15element_metricsD2Ev.exit, %_ZN8simdjson8internal15element_metricsD2Ev.exit, %_ZN8simdjson8internal15element_metricsD2Ev.exit
  %i.ds = add i64 %.sroa.5.023, 3
  br label %_ZN8simdjson3dom6object8iteratorppEv.exit

bb.m:                                             ; preds = %_ZN8simdjson8internal15element_metricsD2Ev.exit
  %i.dt = add i64 %.sroa.5.023, 2
  br label %_ZN8simdjson3dom6object8iteratorppEv.exit

_ZN8simdjson3dom6object8iteratorppEv.exit:        ; preds = %bb.k, %bb.l, %bb.m
  %.0.i.i11 = phi i64 [ %i.dt, %bb.m ], [ %i.dr, %bb.k ], [ %i.ds, %bb.l ] ; 2 uses
  %.not20 = icmp eq i64 %.0.i.i11, %i.q
  br i1 %.not20, label %._crit_edge.loopexit, label %bb.d

bb.n:                                             ; preds = %._crit_edge
  %i.du = load i64, ptr %i.e, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = icmp ule i64 %i.du, %i.dw
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %i.dy = phi i1 [ false, %._crit_edge ], [ %i.dx, %bb.n ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ea = zext i1 %i.dy to i8
  store i8 %i.ea, ptr %i.dz, align 8
  %i.eb = load i64, ptr %i.f, align 8
  %i.ec = icmp eq i64 %i.eb, 0
  %or.cond = select i1 %i.ec, i1 true, i1 %i.dy
  %. = select i1 %or.cond, i32 0, i32 3
  store i32 %., ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8simdjson8internal18structure_analyzer14analyze_scalarERKNS_3dom7elementE(ptr dead_on_unwind noalias writable sret(%"struct.simdjson::internal::element_metrics") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.d, i8 0, i64 18, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.f, align 8
  store i32 0, ptr %i.c, align 8
  %i.g = load ptr, ptr %2, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i ; 8 uses
  %i.l = load i64, ptr %i.k, align 8              ; 8 uses
  %i.m = lshr i64 %i.l, 56                        ; 2 uses
  %3 = icmp eq i64 %i.m, 102
  %i.n = trunc nuw i64 %i.m to i8
  %trunc = select i1 %3, i8 116, i8 %i.n
  switch i8 %trunc, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit [
    i8 34, label %bb.b
    i8 108, label %bb.d
    i8 117, label %bb.i
    i8 100, label %bb.m
    i8 116, label %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit
    i8 110, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %.mask.i = and i64 %i.l, -72057594037927936
  %cond.i = icmp eq i64 %.mask.i, 2449958197289549824
  br i1 %cond.i, label %bb.c, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

bb.c:                                             ; preds = %bb.b
  %i.o = and i64 %i.l, 72057594037927935
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !66
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 4 uses
  %.0.copyload.i.i.i = load i32, ptr %i.r, align 1, !noalias !66 ; 3 uses
  %i.t = zext i32 %.0.copyload.i.i.i to i64       ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %.not18.i = icmp eq i32 %.0.copyload.i.i.i, 0
  br i1 %.not18.i, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit.sink.split, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %min.iters.check = icmp ult i32 %.0.copyload.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader124, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.t, 4294967292               ; 3 uses
  %i.v = getelementptr i8, ptr %i.s, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ <i64 2, i64 0>, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi122 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.s, i64 %index ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1
  %wide.load123 = load <2 x i8>, ptr %i.w, align 1
  %i.x = freeze <2 x i8> %wide.load               ; 3 uses
  %i.y = freeze <2 x i8> %wide.load123            ; 3 uses
  %i.z = icmp ult <2 x i8> %i.x, splat (i8 32)
  %i.aa = icmp ult <2 x i8> %i.y, splat (i8 32)
  %i.ab = icmp eq <2 x i8> %i.x, splat (i8 92)
  %i.ac = icmp eq <2 x i8> %i.y, splat (i8 92)
  %i.ad = icmp eq <2 x i8> %i.x, splat (i8 34)
  %i.ae = icmp eq <2 x i8> %i.y, splat (i8 34)
  %i.af = or <2 x i1> %i.ab, %i.ad
  %i.ag = or <2 x i1> %i.ac, %i.ae
  %i.ah = or <2 x i1> %i.z, %i.af
  %i.ai = or <2 x i1> %i.aa, %i.ag
  %i.aj = select <2 x i1> %i.ah, <2 x i64> splat (i64 2), <2 x i64> splat (i64 1)
  %i.ak = select <2 x i1> %i.ai, <2 x i64> splat (i64 2), <2 x i64> splat (i64 1)
  %i.al = add <2 x i64> %i.aj, %vec.phi           ; 2 uses
  %i.am = add <2 x i64> %i.ak, %vec.phi122        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.am, %i.al
  %i.ao = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.t
  br i1 %cmp.n, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit.sink.split, label %.lr.ph.i.preheader124

.lr.ph.i.preheader124:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.020.i.ph = phi ptr [ %i.s, %.lr.ph.i.preheader ], [ %i.v, %middle.block ]
  %.01619.i.ph = phi i64 [ 2, %.lr.ph.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader124, %.lr.ph.i
  %.020.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.020.i.ph, %.lr.ph.i.preheader124 ] ; 2 uses
  %.01619.i = phi i64 [ %i.as, %.lr.ph.i ], [ %.01619.i.ph, %.lr.ph.i.preheader124 ]
  %i.ap = load i8, ptr %.020.i, align 1
  %.fr.i = freeze i8 %i.ap                        ; 3 uses
  %i.aq = icmp ult i8 %.fr.i, 32
  %switch.selectcmp.case1.i = icmp eq i8 %.fr.i, 92
  %switch.selectcmp.case2.i = icmp eq i8 %.fr.i, 34
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %i.ar = or i1 %i.aq, %switch.selectcmp.i
  %.sink.i22 = select i1 %i.ar, i64 2, i64 1
  %i.as = add i64 %.sink.i22, %.01619.i           ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.020.i, i64 1 ; 2 uses
  %.not.i23 = icmp eq ptr %i.at, %i.u
  br i1 %.not.i23, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit.sink.split, label %.lr.ph.i, !llvm.loop !63

bb.d:                                             ; preds = %bb.a
  switch i64 %i.l, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit [
    i64 7782220156096217088, label %bb.f
    i64 8430738502437568512, label %bb.e
  ], !prof !30

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr i8, ptr %i.k, i64 8
  %.0.copyload.i.i = load i64, ptr %i.au, align 8 ; 2 uses
  %i.av = icmp slt i64 %.0.copyload.i.i, 0
  br i1 %i.av, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aw = getelementptr i8, ptr %i.k, i64 8
  %.0.copyload.i2.i = load i64, ptr %i.aw, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.063.ph = phi i64 [ %.0.copyload.i2.i, %bb.f ], [ %.0.copyload.i.i, %bb.e ] ; 3 uses
  switch i64 %.063.ph, label %.lr.ph.preheader.i [
    i64 0, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit.sink.split
    i64 -9223372036854775808, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit.sink.split

.lr.ph.preheader.i:                               ; preds = %bb.g
  %.lobit.i = lshr i64 %.063.ph, 63
  %i.ax = tail call i64 @llvm.abs.i64(i64 %.063.ph, i1 true)
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.lr.ph.i24, %.lr.ph.preheader.i
  %.016.i = phi i64 [ %i.az, %.lr.ph.i24 ], [ %i.ax, %.lr.ph.preheader.i ] ; 2 uses
  %.01115.i = phi i64 [ %i.ay, %.lr.ph.i24 ], [ %.lobit.i, %.lr.ph.preheader.i ]
  %i.ay = add i64 %.01115.i, 1                    ; 2 uses
  %i.az = udiv i64 %.016.i, 10
  %.not.i25 = icmp samesign ult i64 %.016.i, 10
  br i1 %.not.i25, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit.sink.split, label %.lr.ph.i24, !llvm.loop !64

bb.i:                                             ; preds = %bb.a
  switch i64 %i.l, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit [
    i64 8430738502437568512, label %bb.k
    i64 7782220156096217088, label %bb.j
  ], !prof !30

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr i8, ptr %i.k, i64 8
  %.0.copyload.i2.i26 = load i64, ptr %i.ba, align 8 ; 2 uses
  %i.bb = icmp slt i64 %.0.copyload.i2.i26, 0
  br i1 %i.bb, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bc = getelementptr i8, ptr %i.k, i64 8
  %.0.copyload.i.i33 = load i64, ptr %i.bc, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.062.ph = phi i64 [ %.0.copyload.i.i33, %bb.k ], [ %.0.copyload.i2.i26, %bb.j ] ; 2 uses
  %i.bd = icmp eq i64 %.062.ph, 0
  br i1 %i.bd, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l, %.preheader.i
  %.010.i = phi i64 [ %i.be, %.preheader.i ], [ 0, %bb.l ]
  %.069.i = phi i64 [ %i.bf, %.preheader.i ], [ %.062.ph, %bb.l ] ; 2 uses
  %i.be = add i64 %.010.i, 1                      ; 2 uses
  %i.bf = udiv i64 %.069.i, 10
  %.not.i34 = icmp ult i64 %.069.i, 10
  br i1 %.not.i34, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit.sink.split, label %.preheader.i, !llvm.loop !65

bb.m:                                             ; preds = %bb.a
  switch i64 %i.l, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit [
    i64 7205759403792793600, label %bb.p
    i64 8430738502437568512, label %bb.n
    i64 7782220156096217088, label %bb.o
  ], !prof !31

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr i8, ptr %i.k, i64 8
  %.0.copyload.i.i39 = load i64, ptr %i.bg, align 8
  %i.bh = uitofp i64 %.0.copyload.i.i39 to double
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.bi = getelementptr i8, ptr %i.k, i64 8
  %.0.copyload.i1.i = load i64, ptr %i.bi, align 8
  %i.bj = sitofp i64 %.0.copyload.i1.i to double
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.bk = getelementptr i8, ptr %i.k, i64 8
  %.0.copyload.i2.i40 = load double, ptr %i.bk, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.o
  %.061.ph = phi double [ %.0.copyload.i2.i40, %bb.p ], [ %i.bh, %bb.n ], [ %i.bj, %bb.o ] ; 2 uses
  %i.bl = tail call double @llvm.fabs.f64(double %.061.ph)
  %or.cond.i = fcmp ueq double %i.bl, +inf
  br i1 %or.cond.i, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.742, double noundef %.061.ph) #22 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  %narrow.i = select i1 %i.bn, i32 %i.bm, i32 20
  %i.bo = zext nneg i32 %narrow.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit.sink.split

_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit: ; preds = %bb.a
  %switch.selectcmp.i41 = icmp eq i64 %i.l, 7349874591868649472
  %switch.select.i = select i1 %switch.selectcmp.i41, i64 0, i64 73014444032
  %switch.selectcmp7.i = icmp eq i64 %i.l, 8358680908399640576
  %switch.select8.i = select i1 %switch.selectcmp7.i, i64 1, i64 %switch.select.i ; 2 uses
  %.sroa.442.0.extract.shift.mask = and i64 %switch.select8.i, 73014444032
  %.not.i21 = icmp eq i64 %.sroa.442.0.extract.shift.mask, 0
  br i1 %.not.i21, label %bb.s, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

bb.s:                                             ; preds = %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit
  %i.bp = xor i64 %switch.select8.i, 5
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit.sink.split

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit.sink.split: ; preds = %.preheader.i, %.lr.ph.i24, %.lr.ph.i, %middle.block, %bb.a, %bb.r, %bb.q, %bb.l, %bb.h, %bb.g, %bb.c, %bb.s
  %.sink = phi i64 [ %i.bp, %bb.s ], [ %i.as, %.lr.ph.i ], [ %i.ay, %.lr.ph.i24 ], [ 4, %bb.a ], [ 4, %bb.q ], [ 2, %bb.c ], [ 1, %bb.g ], [ 20, %bb.h ], [ 1, %bb.l ], [ %i.bo, %bb.r ], [ %i.ao, %middle.block ], [ %i.be, %.preheader.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.bq, align 8
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit: ; preds = %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit.sink.split, %bb.m, %bb.i, %bb.j, %bb.d, %bb.e, %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8simdjson8internal18structure_analyzer22check_array_uniformityERKNS_3dom5arrayERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %5 = alloca %"class.std::set", align 8          ; 14 uses
  %6 = alloca %"class.simdjson::dom::object", align 8 ; 5 uses
  %7 = alloca %"class.simdjson::dom::object", align 8 ; 9 uses
  %8 = alloca %"class.std::set", align 8          ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::set", align 8         ; 9 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i.i, align 8      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.a, ptr %i.b, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 11 uses
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr null, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 7 uses
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 7 uses
  store ptr %i.j, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 6 uses
  store i64 0, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %1, align 8                ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = add i64 %i.q, 1                          ; 3 uses
  %i.s = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = lshr i64 %i.u, 56
  %trunc.i.i = trunc nuw i64 %i.v to i8
  switch i8 %trunc.i.i, label %_ZNK8simdjson3dom5array3endEv.exit [
    i8 91, label %bb.b
    i8 123, label %bb.b
    i8 117, label %bb.c
    i8 108, label %bb.c
    i8 100, label %bb.c
  ]

bb.b:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.w = and i64 %i.u, 4294967295
  br label %_ZNK8simdjson3dom5array3endEv.exit

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.x = add i64 %i.q, 2
  br label %_ZNK8simdjson3dom5array3endEv.exit

_ZNK8simdjson3dom5array3endEv.exit:               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.x, %bb.c ], [ %i.w, %bb.b ], [ %i.r, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit ]
  %i.y = add i64 %.0.i.i, -1                      ; 2 uses
  %.not142150 = icmp eq i64 %i.r, %i.y
  br i1 %.not142150, label %.thread136, label %.lr.ph154

.lr.ph154:                                        ; preds = %_ZNK8simdjson3dom5array3endEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph154, %_ZN8simdjson3dom5array8iteratorppEv.exit
  %i.ar = phi ptr [ %i.s, %.lr.ph154 ], [ %i.fn, %_ZN8simdjson3dom5array8iteratorppEv.exit ]
  %.029153 = phi i1 [ false, %.lr.ph154 ], [ true, %_ZN8simdjson3dom5array8iteratorppEv.exit ]
  %.034152 = phi i64 [ 0, %.lr.ph154 ], [ %i.fl, %_ZN8simdjson3dom5array8iteratorppEv.exit ]
  %.sroa.5113.0151 = phi i64 [ %i.r, %.lr.ph154 ], [ %.0.i.i81, %_ZN8simdjson3dom5array8iteratorppEv.exit ] ; 8 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.sroa.5113.0151
  %i.at = load i64, ptr %i.as, align 8
  %.mask = and i64 %i.at, -72057594037927936
  %.not143 = icmp eq i64 %.mask, 8863084066665136128
  br i1 %.not143, label %bb.e, label %.thread136

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.au = load ptr, ptr %i.o, align 8, !noalias !73
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.sroa.5113.0151
  %i.aw = load i64, ptr %i.av, align 8, !noalias !73
  %.mask.i = and i64 %i.aw, -72057594037927936
  %cond.i = icmp eq i64 %.mask.i, 8863084066665136128
  br i1 %cond.i, label %bb.f, label %.thread127

.thread127:                                       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.thread136

bb.f:                                             ; preds = %bb.e
  store ptr %i.o, ptr %7, align 8
  store i64 %.sroa.5113.0151, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store i32 0, ptr %i.aa, align 8
  store ptr null, ptr %i.ab, align 8
  store ptr %i.aa, ptr %i.ac, align 8
  store ptr %i.aa, ptr %i.ad, align 8
  store i64 0, ptr %i.ae, align 8
  %i.ax = add i64 %.sroa.5113.0151, 1             ; 4 uses
  %i.ay = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.5113.0151
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = lshr i64 %i.ba, 56
  %trunc.i.i51 = trunc nuw i64 %i.bb to i8
  switch i8 %trunc.i.i51, label %_ZNK8simdjson3dom6object3endEv.exit [
    i8 91, label %bb.g
    i8 123, label %bb.g
    i8 117, label %bb.h
    i8 108, label %bb.h
    i8 100, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.bc = and i64 %i.ba, 4294967295
  br label %_ZNK8simdjson3dom6object3endEv.exit

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.bd = add i64 %.sroa.5113.0151, 2
  br label %_ZNK8simdjson3dom6object3endEv.exit

_ZNK8simdjson3dom6object3endEv.exit:              ; preds = %bb.f, %bb.g, %bb.h
  %.0.i.i52 = phi i64 [ %i.bd, %bb.h ], [ %i.bc, %bb.g ], [ %i.ax, %bb.f ]
  %i.be = add i64 %.0.i.i52, -1                   ; 2 uses
  %.not148 = icmp eq i64 %i.ax, %i.be
  br i1 %.not148, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN8simdjson3dom6object8iteratorppEv.exit, %_ZNK8simdjson3dom6object3endEv.exit
  br i1 %.029153, label %bb.y, label %bb.t

.lr.ph:                                           ; preds = %_ZNK8simdjson3dom6object3endEv.exit, %_ZN8simdjson3dom6object8iteratorppEv.exit
  %i.bf = phi ptr [ %i.ds, %_ZN8simdjson3dom6object8iteratorppEv.exit ], [ %i.ay, %_ZNK8simdjson3dom6object3endEv.exit ]
  %.sroa.5.0149 = phi i64 [ %.0.i.i60, %_ZN8simdjson3dom6object8iteratorppEv.exit ], [ %i.ax, %_ZNK8simdjson3dom6object3endEv.exit ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.sroa.5.0149
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !74
  %i.bi = and i64 %i.bh, 72057594037927935
  %i.bj = load ptr, ptr %i.aq, align 8, !noalias !74
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %.0.copyload.i.i.i.i = load i32, ptr %i.bk, align 1, !noalias !74 ; 3 uses
  %i.bm = zext i32 %.0.copyload.i.i.i.i to i64    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %i.af, ptr %9, align 8
  %i.bn = icmp ugt i32 %.0.copyload.i.i.i.i, 15
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, label %._crit_edge.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %.lr.ph
  %i.bo = add nuw nsw i64 %i.bm, 1
  %i.bp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #24 ; 2 uses
  store ptr %i.bp, ptr %9, align 8
  store i64 %i.bm, ptr %i.af, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.lr.ph
  %i.bq = phi ptr [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.af, %.lr.ph ] ; 3 uses
  switch i32 %.0.copyload.i.i.i.i, label %bb.j [
    i32 1, label %bb.i
end_hunk_2
begin_hunk_3_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyISt23_Rb_tree_const_iteratorIS5_EEEPS5_mT_SC_:bb.a
  %i.a = icmp ugt i64 %1, 288230376151711743
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 576460752303423487
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = shl nuw nsw i64 %1, 5
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 2 uses
  %i.f = icmp eq ptr %2, %3
  br i1 %i.f, label %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS6_S6_ET0_T_SA_S9_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.v, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.e, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 5 uses
  %.sroa.04.09.i.i.i.i = phi ptr [ %i.u, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %2, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i.i, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.h, ptr %.010.i.i.i.i, align 8
  %i.i = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i.i, i64 40
  %i.k = load i64, ptr %i.j, align 8              ; 8 uses
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %bb.f, label %._crit_edge.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.m = icmp slt i64 %i.k, 0
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.739) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = add nuw i64 %i.k, 1                      ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i, !prof !23

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 2 uses
  store ptr %i.p, ptr %.010.i.i.i.i, align 8
  store i64 %i.k, ptr %i.h, align 8
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.q = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i ] ; 3 uses
  switch i64 %i.k, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.r = load i8, ptr %i.i, align 1
  store i8 %i.r, ptr %i.q, align 1
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  store i64 %i.k, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  store i8 0, ptr %i.t, align 1
  %i.u = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.04.09.i.i.i.i) #27 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32
  %i.w = icmp eq ptr %i.u, %3
  br i1 %i.w, label %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS6_S6_ET0_T_SA_S9_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS6_S6_ET0_T_SA_S9_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 9 uses
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load i64, ptr %i.d, align 8
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.739) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !23

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #24 ; 2 uses
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.q = load i64, ptr %i.d, align 8
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #25
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  store ptr %i.n, ptr %0, align 8
  store i64 %.0, ptr %i.d, align 8
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8
  store i8 0, ptr %i.c, align 1
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.t = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8                ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.v = load i8, ptr %i.u, align 1
  store i8 %i.v, ptr %i.t, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.w, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.b
  store i8 0, ptr %i.y, align 1
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8simdjson8internal24fractured_string_builder13format_scalarERKNS_3dom7elementE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 4 uses
  %i.b = alloca [20 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 16               ; 6 uses
  %i.d = alloca [24 x i8], align 16               ; 5 uses
  %i.e = alloca [24 x i8], align 16               ; 10 uses
  %.sroa.4 = alloca i56, align 8                  ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h ; 8 uses
  %i.k = load i64, ptr %i.j, align 8              ; 8 uses
  %i.l = lshr i64 %i.k, 56                        ; 2 uses
  %2 = icmp eq i64 %i.l, 102
  %i.m = trunc nuw i64 %i.l to i8
  %trunc = select i1 %2, i8 116, i8 %i.m
  switch i8 %trunc, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit [
    i8 34, label %bb.b
    i8 108, label %bb.ax
    i8 117, label %bb.bk
    i8 100, label %bb.bw
    i8 116, label %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit
    i8 110, label %bb.co
  ]

bb.b:                                             ; preds = %bb.a
  %.mask.i = and i64 %i.k, -72057594037927936
  %cond.i = icmp eq i64 %.mask.i, 2449958197289549824
  br i1 %cond.i, label %bb.c, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

bb.c:                                             ; preds = %bb.b
  %i.n = and i64 %i.k, 72057594037927935
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !107
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 5 uses
  %.0.copyload.i.i.i = load i32, ptr %i.q, align 1, !noalias !107 ; 2 uses
  %i.s = zext i32 %.0.copyload.i.i.i to i64       ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 14 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 28 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = add i64 %i.w, 1                          ; 2 uses
  %i.y = icmp ult i64 %i.u, %i.x
  br i1 %i.y, label %bb.d, label %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit.i_crit_edge

._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit.i_crit_edge: ; preds = %bb.c
  %.phi.trans.insert208 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre209 = load ptr, ptr %.phi.trans.insert208, align 8
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.z = shl i64 %i.u, 1                          ; 2 uses
  %i.aa = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #24 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 5 uses
  %i.ad = load i64, ptr %i.v, align 8             ; 4 uses
  %i.ae = icmp sgt i64 %i.ad, 1
  br i1 %i.ae, label %bb.e, label %bb.f, !prof !26

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.af = icmp eq i64 %i.ad, 1
  br i1 %i.af, label %bb.g, label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ag = load i8, ptr %i.ac, align 1
  store i8 %i.ag, ptr %i.aa, align 1
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.g, %bb.f, %bb.e
  %.not.i.i = icmp eq ptr %i.ac, %0
  %i.ah = icmp eq ptr %i.ac, null
  %or.cond.i.i = or i1 %.not.i.i, %i.ah
  br i1 %or.cond.i.i, label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #25
  %.pre210.pre = load i64, ptr %i.v, align 8
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit

_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit: ; preds = %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i, %bb.h
  %.pre210 = phi i64 [ %i.ad, %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i ], [ %.pre210.pre, %bb.h ] ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8
  store i64 %i.z, ptr %i.t, align 8
  %.pre235 = add i64 %.pre210, 1
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit.i

_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit.i: ; preds = %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit.i_crit_edge, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit
  %.pre-phi = phi i64 [ %i.x, %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit.i_crit_edge ], [ %.pre235, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit ]
  %i.ai = phi i64 [ %i.w, %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit.i_crit_edge ], [ %.pre210, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit ]
  %i.aj = phi ptr [ %.pre209, %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit.i_crit_edge ], [ %i.aa, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 18 uses
  store i64 %.pre-phi, ptr %i.v, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 34, ptr %i.al, align 1
  %i.am = and i64 %i.s, 4294967288                ; 2 uses
  %.not.i21316 = icmp ult i32 %.0.copyload.i.i.i, 8
  br i1 %.not.i21316, label %._crit_edge320, label %.lr.ph318

bb.i:                                             ; preds = %.lr.ph318
  %i.an = add nuw nsw i64 %i.ao, 8                ; 2 uses
  %.not.i21 = icmp samesign ugt i64 %i.an, %i.s
  br i1 %.not.i21, label %._crit_edge320, label %.lr.ph318, !llvm.loop !9

.lr.ph318:                                        ; preds = %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit.i, %bb.i
  %i.ao = phi i64 [ %i.an, %bb.i ], [ 8, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit.i ] ; 2 uses
  %.0.i317 = phi i64 [ %i.ao, %bb.i ], [ 0, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 %.0.i317 ; 8 uses
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6stringESt17basic_string_viewIcSt11char_traitsIcEEE14needs_escaping, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6stringESt17basic_string_viewIcSt11char_traitsIcEEE14needs_escaping, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = or i8 %i.ay, %i.at
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6stringESt17basic_string_viewIcSt11char_traitsIcEEE14needs_escaping, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = or i8 %i.az, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @_ZZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6stringESt17basic_string_viewIcSt11char_traitsIcEEE14needs_escaping, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = or i8 %i.bf, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6stringESt17basic_string_viewIcSt11char_traitsIcEEE14needs_escaping, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = or i8 %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6stringESt17basic_string_viewIcSt11char_traitsIcEEE14needs_escaping, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = or i8 %i.br, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 6
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @_ZZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6stringESt17basic_string_viewIcSt11char_traitsIcEEE14needs_escaping, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = or i8 %i.bx, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ap, i64 7
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @_ZZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6stringESt17basic_string_viewIcSt11char_traitsIcEEE14needs_escaping, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = or i8 %i.cd, %i.ci
  %.not25.i = icmp eq i8 %i.cj, 0
  br i1 %.not25.i, label %bb.i, label %._crit_edge319, !llvm.loop !9

._crit_edge319:                                   ; preds = %.lr.ph318
  br label %._crit_edge320, !llvm.loop !9

._crit_edge320:                                   ; preds = %bb.i, %._crit_edge319, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit.i
  %.0.i.lcssa = phi i64 [ %.0.i317, %._crit_edge319 ], [ %i.am, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit.i ], [ %i.am, %bb.i ] ; 3 uses
  %i.ck = icmp samesign ult i64 %.0.i.lcssa, %i.s
  br i1 %i.ck, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge320, %bb.j
  %.1.i185 = phi i64 [ %i.cq, %bb.j ], [ %.0.i.lcssa, %._crit_edge320 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 %.1.i185
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr @_ZZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6stringESt17basic_string_viewIcSt11char_traitsIcEEE14needs_escaping, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1
  %.not26.i = icmp eq i8 %i.cp, 0
  br i1 %.not26.i, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %.lr.ph
  %i.cq = add nuw nsw i64 %.1.i185, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cq, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.j, %.lr.ph, %._crit_edge320
  %.1.i.lcssa = phi i64 [ %.0.i.lcssa, %._crit_edge320 ], [ %.1.i185, %.lr.ph ], [ %i.s, %bb.j ] ; 6 uses
  %i.cr = load i64, ptr %i.v, align 8             ; 2 uses
  %i.cs = add i64 %i.cr, %.1.i.lcssa              ; 4 uses
  %i.ct = load i64, ptr %i.t, align 8             ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  br i1 %i.cu, label %bb.k, label %._crit_edge._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer6appendEPKcS6_.exit23_crit_edge

._crit_edge._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer6appendEPKcS6_.exit23_crit_edge: ; preds = %._crit_edge
  %.pre211 = load ptr, ptr %i.ak, align 8
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer6appendEPKcS6_.exit23

bb.k:                                             ; preds = %._crit_edge
  %i.cv = shl i64 %i.ct, 1
  %..i22 = tail call i64 @llvm.umax.i64(i64 %i.cs, i64 %i.cv) ; 2 uses
  %i.cw = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %..i22) #24 ; 4 uses
  %i.cx = load ptr, ptr %i.ak, align 8            ; 5 uses
  %i.cy = load i64, ptr %i.v, align 8             ; 4 uses
  %i.cz = icmp sgt i64 %i.cy, 1
  br i1 %i.cz, label %bb.l, label %bb.m, !prof !26

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cw, ptr align 1 %i.cx, i64 %i.cy, i1 false)
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i34

bb.m:                                             ; preds = %bb.k
  %i.da = icmp eq i64 %i.cy, 1
  br i1 %i.da, label %bb.n, label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i34

bb.n:                                             ; preds = %bb.m
  %i.db = load i8, ptr %i.cx, align 1
  store i8 %i.db, ptr %i.cw, align 1
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i34

_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i34:             ; preds = %bb.n, %bb.m, %bb.l
  %.not.i.i35 = icmp eq ptr %i.cx, %0
  %i.dc = icmp eq ptr %i.cx, null
  %or.cond.i.i36 = or i1 %.not.i.i35, %i.dc
  br i1 %or.cond.i.i36, label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit37, label %bb.o
end_hunk_3
begin_hunk_4_@_ZN8simdjson8internal24fractured_string_builder13format_scalarERKNS_3dom7elementE:bb.a

_ZN8simdjson12_GLOBAL__N_19fast_itoaEPcm.exit:    ; preds = %.lr.ph.i73, %bb.bn
  %.012.lcssa.i = phi ptr [ %i.im, %bb.bn ], [ %i.ir, %.lr.ph.i73 ] ; 3 uses
  %.0.lcssa.i = phi i64 [ %.0132.ph, %bb.bn ], [ %i.is, %.lr.ph.i73 ]
  %i.iu = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.iv = trunc nuw nsw i64 %.0.lcssa.i to i8
  %i.iw = or disjoint i8 %i.iv, 48
  store i8 %i.iw, ptr %.012.lcssa.i, align 1
  %i.ix = ptrtoint ptr %i.iu to i64
  %i.iy = ptrtoint ptr %.012.lcssa.i to i64
  %i.iz = sub i64 %i.ix, %i.iy                    ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %.012.lcssa.i, i64 %i.iz, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.jb = load i64, ptr %i.ja, align 8            ; 2 uses
  %i.jc = add i64 %i.jb, %i.iz                    ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8            ; 2 uses
  %i.jf = icmp ult i64 %i.je, %i.jc
  br i1 %i.jf, label %bb.bo, label %_ZN8simdjson12_GLOBAL__N_19fast_itoaEPcm.exit._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6numberEm.exit_crit_edge

_ZN8simdjson12_GLOBAL__N_19fast_itoaEPcm.exit._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6numberEm.exit_crit_edge: ; preds = %_ZN8simdjson12_GLOBAL__N_19fast_itoaEPcm.exit
  %.phi.trans.insert202 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre203 = load ptr, ptr %.phi.trans.insert202, align 8
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6numberEm.exit

bb.bo:                                            ; preds = %_ZN8simdjson12_GLOBAL__N_19fast_itoaEPcm.exit
  %i.jg = shl i64 %i.je, 1
  %..i.i30 = call i64 @llvm.umax.i64(i64 %i.jc, i64 %i.jg) ; 2 uses
  %i.jh = call noalias noundef nonnull ptr @_Znam(i64 noundef %..i.i30) #24 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8            ; 5 uses
  %i.jk = load i64, ptr %i.ja, align 8            ; 4 uses
  %i.jl = icmp sgt i64 %i.jk, 1
  br i1 %i.jl, label %bb.bp, label %bb.bq, !prof !26

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.jh, ptr align 1 %i.jj, i64 %i.jk, i1 false)
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i74

bb.bq:                                            ; preds = %bb.bo
  %i.jm = icmp eq i64 %i.jk, 1
  br i1 %i.jm, label %bb.br, label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i74

bb.br:                                            ; preds = %bb.bq
  %i.jn = load i8, ptr %i.jj, align 1
  store i8 %i.jn, ptr %i.jh, align 1
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i74

_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i74:             ; preds = %bb.br, %bb.bq, %bb.bp
  %.not.i.i75 = icmp eq ptr %i.jj, %0
  %i.jo = icmp eq ptr %i.jj, null
  %or.cond.i.i76 = or i1 %.not.i.i75, %i.jo
  br i1 %or.cond.i.i76, label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit77, label %bb.bs

bb.bs:                                            ; preds = %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i74
  call void @_ZdaPv(ptr noundef nonnull %i.jj) #25
  %.pre204.pre = load i64, ptr %i.ja, align 8
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit77

_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit77: ; preds = %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i74, %bb.bs
  %.pre204 = phi i64 [ %i.jk, %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i74 ], [ %.pre204.pre, %bb.bs ]
  store ptr %i.jh, ptr %i.ji, align 8
  store i64 %..i.i30, ptr %i.jd, align 8
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6numberEm.exit

_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6numberEm.exit: ; preds = %_ZN8simdjson12_GLOBAL__N_19fast_itoaEPcm.exit._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6numberEm.exit_crit_edge, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit77
  %i.jp = phi i64 [ %i.jb, %_ZN8simdjson12_GLOBAL__N_19fast_itoaEPcm.exit._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6numberEm.exit_crit_edge ], [ %.pre204, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit77 ]
  %i.jq = phi ptr [ %.pre203, %_ZN8simdjson12_GLOBAL__N_19fast_itoaEPcm.exit._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6numberEm.exit_crit_edge ], [ %i.jh, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit77 ]
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jp ; 2 uses
  %i.js = icmp sgt i64 %i.iz, 1
  br i1 %i.js, label %bb.bt, label %bb.bu, !prof !26

bb.bt:                                            ; preds = %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6numberEm.exit
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jr, ptr nonnull align 16 %i.d, i64 %i.iz, i1 false)
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit78

bb.bu:                                            ; preds = %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6numberEm.exit
  %i.jt = icmp eq i64 %i.iz, 1
  br i1 %i.jt, label %bb.bv, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit78

bb.bv:                                            ; preds = %bb.bu
  %.0..0. = load i8, ptr %i.d, align 16
  store i8 %.0..0., ptr %i.jr, align 1
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit78

_ZSt4copyIPKcPcET0_T_S4_S3_.exit78:               ; preds = %bb.bt, %bb.bu, %bb.bv
  store i64 %i.jc, ptr %i.ja, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

bb.bw:                                            ; preds = %bb.a
  switch i64 %i.k, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit [
    i64 7205759403792793600, label %bb.bz
    i64 8430738502437568512, label %bb.bx
    i64 7782220156096217088, label %bb.by
  ], !prof !31

bb.bx:                                            ; preds = %bb.bw
  %i.ju = getelementptr i8, ptr %i.j, i64 8
  %.0.copyload.i.i83 = load i64, ptr %i.ju, align 8
  %i.jv = uitofp i64 %.0.copyload.i.i83 to double
  br label %bb.ca

bb.by:                                            ; preds = %bb.bw
  %i.jw = getelementptr i8, ptr %i.j, i64 8
  %.0.copyload.i1.i = load i64, ptr %i.jw, align 8
  %i.jx = sitofp i64 %.0.copyload.i1.i to double
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bw
  %i.jy = getelementptr i8, ptr %i.j, i64 8
  %.0.copyload.i2.i84 = load double, ptr %i.jy, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bx, %bb.by
  %.0131.ph = phi double [ %.0.copyload.i2.i84, %bb.bz ], [ %i.jv, %bb.bx ], [ %i.jx, %bb.by ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.jz = call noundef ptr @_ZN8simdjson8internal8to_charsEPcPKcd(ptr noundef nonnull %i.c, ptr noundef null, double noundef %.0131.ph) #22
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.kb = load i64, ptr %i.ka, align 8            ; 2 uses
  %i.kc = ptrtoint ptr %i.jz to i64
  %i.kd = ptrtoint ptr %i.c to i64
  %i.ke = sub i64 %i.kc, %i.kd                    ; 4 uses
  %i.kf = add i64 %i.ke, %i.kb                    ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8            ; 2 uses
  %i.ki = icmp ult i64 %i.kh, %i.kf
  br i1 %i.ki, label %bb.cb, label %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6numberEd.exit_crit_edge

._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6numberEd.exit_crit_edge: ; preds = %bb.ca
  %.phi.trans.insert199 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre200 = load ptr, ptr %.phi.trans.insert199, align 8
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6numberEd.exit

bb.cb:                                            ; preds = %bb.ca
  %i.kj = shl i64 %i.kh, 1
  %..i.i31 = call i64 @llvm.umax.i64(i64 %i.kf, i64 %i.kj) ; 2 uses
  %i.kk = call noalias noundef nonnull ptr @_Znam(i64 noundef %..i.i31) #24 ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8            ; 5 uses
  %i.kn = load i64, ptr %i.ka, align 8            ; 4 uses
  %i.ko = icmp sgt i64 %i.kn, 1
  br i1 %i.ko, label %bb.cc, label %bb.cd, !prof !26

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.kk, ptr align 1 %i.km, i64 %i.kn, i1 false)
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i85

bb.cd:                                            ; preds = %bb.cb
  %i.kp = icmp eq i64 %i.kn, 1
  br i1 %i.kp, label %bb.ce, label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i85

bb.ce:                                            ; preds = %bb.cd
  %i.kq = load i8, ptr %i.km, align 1
  store i8 %i.kq, ptr %i.kk, align 1
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i85

_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i85:             ; preds = %bb.ce, %bb.cd, %bb.cc
  %.not.i.i86 = icmp eq ptr %i.km, %0
  %i.kr = icmp eq ptr %i.km, null
  %or.cond.i.i87 = or i1 %.not.i.i86, %i.kr
  br i1 %or.cond.i.i87, label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit88, label %bb.cf

bb.cf:                                            ; preds = %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i85
  call void @_ZdaPv(ptr noundef nonnull %i.km) #25
  %.pre201.pre = load i64, ptr %i.ka, align 8
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit88

_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit88: ; preds = %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i85, %bb.cf
  %.pre201 = phi i64 [ %i.kn, %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i85 ], [ %.pre201.pre, %bb.cf ]
  store ptr %i.kk, ptr %i.kl, align 8
  store i64 %..i.i31, ptr %i.kg, align 8
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6numberEd.exit

_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6numberEd.exit: ; preds = %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6numberEd.exit_crit_edge, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit88
  %i.ks = phi i64 [ %i.kb, %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6numberEd.exit_crit_edge ], [ %.pre201, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit88 ]
  %i.kt = phi ptr [ %.pre200, %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6numberEd.exit_crit_edge ], [ %i.kk, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit88 ]
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.ks ; 2 uses
  %i.kv = icmp sgt i64 %i.ke, 1
  br i1 %i.kv, label %bb.cg, label %bb.ch, !prof !26

bb.cg:                                            ; preds = %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6numberEd.exit
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ku, ptr nonnull align 16 %i.c, i64 %i.ke, i1 false)
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit89

bb.ch:                                            ; preds = %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6numberEd.exit
  %i.kw = icmp eq i64 %i.ke, 1
  br i1 %i.kw, label %bb.ci, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit89

bb.ci:                                            ; preds = %bb.ch
  %i.kx = load i8, ptr %i.c, align 16
  store i8 %i.kx, ptr %i.ku, align 1
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit89

_ZSt4copyIPKcPcET0_T_S4_S3_.exit89:               ; preds = %bb.cg, %bb.ch, %bb.ci
  store i64 %i.kf, ptr %i.ka, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit: ; preds = %bb.a
  %switch.selectcmp.i = icmp eq i64 %i.k, 7349874591868649472
  %switch.select.i = select i1 %switch.selectcmp.i, i64 0, i64 73014444032
  %switch.selectcmp7.i = icmp eq i64 %i.k, 8358680908399640576
  %switch.select8.i = select i1 %switch.selectcmp7.i, i64 1, i64 %switch.select.i ; 2 uses
  %.sroa.494.0.extract.shift.mask = and i64 %switch.select8.i, 73014444032
  %.not.i20 = icmp eq i64 %.sroa.494.0.extract.shift.mask, 0
  br i1 %.not.i20, label %bb.cj, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

bb.cj:                                            ; preds = %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit
  %i.ky = trunc nuw i64 %switch.select8.i to i1
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.la = load i64, ptr %i.kz, align 8            ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.lc = load i64, ptr %i.lb, align 8            ; 4 uses
  br i1 %i.ky, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %i.ld = add i64 %i.la, 4                        ; 3 uses
  %i.le = icmp ult i64 %i.lc, %i.ld
  br i1 %i.le, label %bb.cl, label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE9true_atomEv.exit

bb.cl:                                            ; preds = %bb.ck
  %i.lf = shl i64 %i.lc, 1
  %..i.i32 = tail call i64 @llvm.umax.i64(i64 %i.ld, i64 %i.lf)
  tail call void @_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %..i.i32)
  %.pre198 = load i64, ptr %i.kz, align 8
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE9true_atomEv.exit

_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE9true_atomEv.exit: ; preds = %bb.ck, %bb.cl
  %i.lg = phi i64 [ %i.la, %bb.ck ], [ %.pre198, %bb.cl ]
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lg
  store i32 1702195828, ptr %i.lj, align 1
  store i64 %i.ld, ptr %i.kz, align 8
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

bb.cm:                                            ; preds = %bb.cj
  %i.lk = add i64 %i.la, 5                        ; 3 uses
  %i.ll = icmp ult i64 %i.lc, %i.lk
  br i1 %i.ll, label %bb.cn, label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE10false_atomEv.exit

bb.cn:                                            ; preds = %bb.cm
  %i.lm = shl i64 %i.lc, 1
  %..i.i33 = tail call i64 @llvm.umax.i64(i64 %i.lk, i64 %i.lm)
  tail call void @_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %..i.i33)
  %.pre197 = load i64, ptr %i.kz, align 8
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE10false_atomEv.exit

_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE10false_atomEv.exit: ; preds = %bb.cm, %bb.cn
  %i.ln = phi i64 [ %i.la, %bb.cm ], [ %.pre197, %bb.cn ]
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.lp = load ptr, ptr %i.lo, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.ln
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.lq, ptr noundef nonnull align 1 dereferenceable(5) @.str.747, i64 5, i1 false)
  store i64 %i.lk, ptr %i.kz, align 8
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

bb.co:                                            ; preds = %bb.a
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ls = load i64, ptr %i.lr, align 8            ; 2 uses
  %i.lt = add i64 %i.ls, 4                        ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.lv = load i64, ptr %i.lu, align 8            ; 2 uses
  %i.lw = icmp ult i64 %i.lv, %i.lt
  br i1 %i.lw, label %bb.cp, label %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer6appendEPKcS6_.exit_crit_edge

._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer6appendEPKcS6_.exit_crit_edge: ; preds = %bb.co
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer6appendEPKcS6_.exit

bb.cp:                                            ; preds = %bb.co
  %i.lx = shl i64 %i.lv, 1
  %..i = tail call i64 @llvm.umax.i64(i64 %i.lt, i64 %i.lx) ; 2 uses
  %i.ly = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %..i) #24 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8            ; 5 uses
  %i.mb = load i64, ptr %i.lr, align 8            ; 4 uses
  %i.mc = icmp sgt i64 %i.mb, 1
  br i1 %i.mc, label %bb.cq, label %bb.cr, !prof !26

bb.cq:                                            ; preds = %bb.cp
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ly, ptr align 1 %i.ma, i64 %i.mb, i1 false)
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i90

bb.cr:                                            ; preds = %bb.cp
  %i.md = icmp eq i64 %i.mb, 1
  br i1 %i.md, label %bb.cs, label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i90

bb.cs:                                            ; preds = %bb.cr
  %i.me = load i8, ptr %i.ma, align 1
  store i8 %i.me, ptr %i.ly, align 1
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i90

_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i90:             ; preds = %bb.cs, %bb.cr, %bb.cq
  %.not.i.i91 = icmp eq ptr %i.ma, %0
  %i.mf = icmp eq ptr %i.ma, null
  %or.cond.i.i92 = or i1 %.not.i.i91, %i.mf
  br i1 %or.cond.i.i92, label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit93, label %bb.ct

bb.ct:                                            ; preds = %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i90
  tail call void @_ZdaPv(ptr noundef nonnull %i.ma) #25
  %.pre196.pre = load i64, ptr %i.lr, align 8
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit93

_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit93: ; preds = %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i90, %bb.ct
  %.pre196 = phi i64 [ %i.mb, %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i90 ], [ %.pre196.pre, %bb.ct ]
  store ptr %i.ly, ptr %i.lz, align 8
  store i64 %..i, ptr %i.lu, align 8
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer6appendEPKcS6_.exit

_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer6appendEPKcS6_.exit: ; preds = %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer6appendEPKcS6_.exit_crit_edge, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit93
  %i.mg = phi i64 [ %i.ls, %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer6appendEPKcS6_.exit_crit_edge ], [ %.pre196, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit93 ]
  %i.mh = phi ptr [ %.pre, %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer6appendEPKcS6_.exit_crit_edge ], [ %i.ly, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit93 ]
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mg
  store i32 1819047278, ptr %i.mi, align 1
  store i64 %i.lt, ptr %i.lr, align 8
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit: ; preds = %bb.bw, %bb.bk, %bb.bl, %bb.ax, %bb.ay, %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE10false_atomEv.exit, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE9true_atomEv.exit, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit89, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit78, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit64, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6stringESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.b, %bb.a, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer6appendEPKcS6_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8simdjson8internal24fractured_string_builder19format_array_inlineERKNS_3dom5arrayERKNS0_15element_metricsE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.simdjson::dom::element", align 8 ; 5 uses
  %4 = alloca %"struct.simdjson::internal::element_metrics", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  store i32 0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 12 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 24 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = add i64 %i.f, 1                          ; 2 uses
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit_crit_edge

._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit

bb.b:                                             ; preds = %bb.a
  %i.i = shl i64 %i.d, 1                          ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 5 uses
  %i.m = load i64, ptr %i.e, align 8              ; 4 uses
  %i.n = icmp sgt i64 %i.m, 1
  br i1 %i.n, label %bb.c, label %bb.d, !prof !26

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.l, i64 %i.m, i1 false)
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %i.m, 1
  br i1 %i.o, label %bb.e, label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.l, align 1
  store i8 %i.p, ptr %i.j, align 1
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.e, %bb.d, %bb.c
  %.not.i.i = icmp eq ptr %i.l, %0
  %i.q = icmp eq ptr %i.l, null
  %or.cond.i.i = or i1 %.not.i.i, %i.q
  br i1 %or.cond.i.i, label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #25
  %.pre55.pre = load i64, ptr %i.e, align 8
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit

_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit: ; preds = %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i, %bb.f
  %.pre55 = phi i64 [ %i.m, %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i ], [ %.pre55.pre, %bb.f ] ; 2 uses
  store ptr %i.j, ptr %i.k, align 8
  store i64 %i.i, ptr %i.c, align 8
  %.pre72 = add i64 %.pre55, 1
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit

_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit: ; preds = %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit_crit_edge, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit
  %.pre-phi = phi i64 [ %i.g, %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit_crit_edge ], [ %.pre72, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit ]
  %i.r = phi i64 [ %i.f, %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit_crit_edge ], [ %.pre55, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit ]
  %i.s = phi ptr [ %.pre, %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit_crit_edge ], [ %i.j, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 15 uses
  store i64 %.pre-phi, ptr %i.e, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store i8 91, ptr %i.u, align 1
  %i.v = load ptr, ptr %1, align 8                ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = add i64 %i.x, 1                          ; 3 uses
  %i.z = load ptr, ptr %i.v, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = lshr i64 %i.ab, 56
  %trunc.i.i = trunc nuw i64 %i.ac to i8
  switch i8 %trunc.i.i, label %_ZNK8simdjson3dom5array3endEv.exit [
    i8 91, label %bb.g
    i8 123, label %bb.g
    i8 117, label %bb.h
    i8 108, label %bb.h
    i8 100, label %bb.h
  ]

bb.g:                                             ; preds = %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit
  %i.ad = and i64 %i.ab, 4294967295
  br label %_ZNK8simdjson3dom5array3endEv.exit

bb.h:                                             ; preds = %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit
  %i.ae = add i64 %i.x, 2
  br label %_ZNK8simdjson3dom5array3endEv.exit

_ZNK8simdjson3dom5array3endEv.exit:               ; preds = %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit, %bb.g, %bb.h
  %.0.i.i = phi i64 [ %i.ae, %bb.h ], [ %i.ad, %bb.g ], [ %i.y, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit ]
  %i.af = add i64 %.0.i.i, -1                     ; 2 uses
  %.not51.not = icmp eq i64 %i.y, %i.af
  br i1 %.not51.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK8simdjson3dom5array3endEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 330
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN8simdjson3dom5array8iteratorppEv.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.au = load i8, ptr %i.at, align 8, !range !25, !noundef !27
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.an, label %._crit_edge.thread

bb.i:                                             ; preds = %.lr.ph, %_ZN8simdjson3dom5array8iteratorppEv.exit
  %.0.not54 = phi i1 [ false, %.lr.ph ], [ true, %_ZN8simdjson3dom5array8iteratorppEv.exit ]
  %.01353 = phi i64 [ 0, %.lr.ph ], [ %i.dy, %_ZN8simdjson3dom5array8iteratorppEv.exit ] ; 3 uses
  %.sroa.5.052 = phi i64 [ %i.y, %.lr.ph ], [ %.0.i.i38, %_ZN8simdjson3dom5array8iteratorppEv.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.v, ptr %3, align 8
  store i64 %.sroa.5.052, ptr %i.ag, align 8
  br i1 %.0.not54, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.aw = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ax = load i64, ptr %i.e, align 8             ; 2 uses
  %i.ay = add i64 %i.ax, 1                        ; 2 uses
  %i.az = icmp ult i64 %i.aw, %i.ay
  br i1 %i.az, label %bb.k, label %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit15_crit_edge

._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit15_crit_edge: ; preds = %bb.j
  %.pre58 = load ptr, ptr %i.t, align 8
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit15

bb.k:                                             ; preds = %bb.j
  %i.ba = shl i64 %i.aw, 1                        ; 2 uses
  %i.bb = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ba) #24 ; 4 uses
  %i.bc = load ptr, ptr %i.t, align 8             ; 5 uses
  %i.bd = load i64, ptr %i.e, align 8             ; 4 uses
  %i.be = icmp sgt i64 %i.bd, 1
  br i1 %i.be, label %bb.l, label %bb.m, !prof !26

bb.l:                                             ; preds = %bb.k
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr align 1 %i.bc, i64 %i.bd, i1 false)
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i24

bb.m:                                             ; preds = %bb.k
  %i.bf = icmp eq i64 %i.bd, 1
  br i1 %i.bf, label %bb.n, label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i24

bb.n:                                             ; preds = %bb.m
  %i.bg = load i8, ptr %i.bc, align 1
  store i8 %i.bg, ptr %i.bb, align 1
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i24

_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i24:             ; preds = %bb.n, %bb.m, %bb.l
  %.not.i.i25 = icmp eq ptr %i.bc, %0
  %i.bh = icmp eq ptr %i.bc, null
  %or.cond.i.i26 = or i1 %.not.i.i25, %i.bh
  br i1 %or.cond.i.i26, label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit27, label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i24
  call void @_ZdaPv(ptr noundef nonnull %i.bc) #25
  %.pre59.pre = load i64, ptr %i.e, align 8
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit27

_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit27: ; preds = %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i24, %bb.o
  %.pre59 = phi i64 [ %i.bd, %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i24 ], [ %.pre59.pre, %bb.o ] ; 2 uses
  store ptr %i.bb, ptr %i.t, align 8
  store i64 %i.ba, ptr %i.c, align 8
  %.pre73 = add i64 %.pre59, 1
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit15

_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit15: ; preds = %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit15_crit_edge, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit27
  %.pre-phi74 = phi i64 [ %i.ay, %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit15_crit_edge ], [ %.pre73, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit27 ]
  %i.bi = phi i64 [ %i.ax, %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit15_crit_edge ], [ %.pre59, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit27 ]
  %i.bj = phi ptr [ %.pre58, %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit15_crit_edge ], [ %i.bb, %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer4growEm.exit27 ]
  store i64 %.pre-phi74, ptr %i.e, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 44, ptr %i.bk, align 1
  %i.bl = load i8, ptr %i.aj, align 2, !range !25, !noundef !27
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.p, label %bb.ac

bb.p:                                             ; preds = %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE24vector_with_small_buffer9push_backEc.exit15
  %i.bn = load i64, ptr %i.c, align 8             ; 2 uses
  %i.bo = load i64, ptr %i.e, align 8             ; 2 uses
  %i.bp = add i64 %i.bo, 1                        ; 2 uses
  %i.bq = icmp ult i64 %i.bn, %i.bp
end_hunk_4
begin_hunk_5_@_ZSt10_ConstructIN8simdjson8internal15element_metricsEJRKS2_EEvPT_DpOT0_:bb.a
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #24
  br label %_ZNSt12_Vector_baseIN8simdjson8internal15element_metricsESaIS2_EEC2EmRKS3_.exit

_ZNSt12_Vector_baseIN8simdjson8internal15element_metricsESaIS2_EEC2EmRKS3_.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN8simdjson8internal15element_metricsEE8allocateEmPKv.exit.i.i.i
  %i.q = phi ptr [ %i.p, %_ZNSt15__new_allocatorIN8simdjson8internal15element_metricsEE8allocateEmPKv.exit.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.q, ptr %i.f, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.m
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.s, ptr %i.t, align 8
  %i.u = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8simdjson8internal15element_metricsESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIN8simdjson8internal15element_metricsESaIS2_EEC2EmRKS3_.exit, %.lr.ph
  %.0.i.i.i7 = phi ptr [ %i.y, %.lr.ph ], [ %i.q, %_ZNSt12_Vector_baseIN8simdjson8internal15element_metricsESaIS2_EEC2EmRKS3_.exit ] ; 2 uses
  %.sroa.03.06 = phi ptr [ %i.x, %.lr.ph ], [ %i.u, %_ZNSt12_Vector_baseIN8simdjson8internal15element_metricsESaIS2_EEC2EmRKS3_.exit ] ; 2 uses
  tail call void @_ZSt10_ConstructIN8simdjson8internal15element_metricsEJRKS2_EEvPT_DpOT0_(ptr noundef %.0.i.i.i7, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.03.06), !inline_history !117
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.03.06, i64 88 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i7, i64 88 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.v
  br i1 %i.z, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8simdjson8internal15element_metricsESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph, !llvm.loop !14

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8simdjson8internal15element_metricsESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %.lr.ph, %_ZNSt12_Vector_baseIN8simdjson8internal15element_metricsESaIS2_EEC2EmRKS3_.exit
  %.0.i.i.i.lcssa = phi ptr [ %i.q, %_ZNSt12_Vector_baseIN8simdjson8internal15element_metricsESaIS2_EEC2EmRKS3_.exit ], [ %i.y, %.lr.ph ]
  store ptr %.0.i.i.i.lcssa, ptr %i.r, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK8simdjson8internal24fractured_string_builder23calculate_column_widthsERKNS_3dom5arrayERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(336) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %3, align 8                ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 5                   ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %bb.b, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.741) #23
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.loopexit

_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.loopexit:   ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.k = ashr exact i64 %i.g, 2                   ; 3 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #24 ; 5 uses
  store ptr %i.l, ptr %0, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8
  %i.o = and i64 %i.k, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  br label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.loopexit, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i
  %i.q = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %i.l, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.loopexit ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %i.p, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.loopexit ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.r, align 8
  %i.s = load ptr, ptr %2, align 8                ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 3 uses
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %i.w = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = lshr i64 %i.y, 56
  %trunc.i.i = trunc nuw i64 %i.z to i8
  switch i8 %trunc.i.i, label %_ZNK8simdjson3dom5array3endEv.exit [
    i8 91, label %bb.c
    i8 123, label %bb.c
    i8 117, label %bb.d
    i8 108, label %bb.d
    i8 100, label %bb.d
  ]

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.aa = and i64 %i.y, 4294967295
  br label %_ZNK8simdjson3dom5array3endEv.exit

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ab = add i64 %i.u, 2
  br label %_ZNK8simdjson3dom5array3endEv.exit

_ZNK8simdjson3dom5array3endEv.exit:               ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, %bb.c, %bb.d
  %.0.i.i = phi i64 [ %i.ab, %bb.d ], [ %i.aa, %bb.c ], [ %i.v, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ]
  %i.ac = add i64 %.0.i.i, -1                     ; 2 uses
  %.not78 = icmp eq i64 %i.v, %i.ac
  br i1 %.not78, label %._crit_edge, label %.lr.ph80

.lr.ph80:                                         ; preds = %_ZNK8simdjson3dom5array3endEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN8simdjson3dom5array8iteratorppEv.exit, %_ZNK8simdjson3dom5array3endEv.exit
  ret void

bb.e:                                             ; preds = %.lr.ph80, %_ZN8simdjson3dom5array8iteratorppEv.exit
  %i.ae = phi ptr [ %i.w, %.lr.ph80 ], [ %i.ec, %_ZN8simdjson3dom5array8iteratorppEv.exit ] ; 3 uses
  %.sroa.558.079 = phi i64 [ %i.v, %.lr.ph80 ], [ %.0.i.i39, %_ZN8simdjson3dom5array8iteratorppEv.exit ] ; 7 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.sroa.558.079
  %i.ag = load i64, ptr %i.af, align 8, !noalias !127 ; 3 uses
  %.mask.i = and i64 %i.ag, -72057594037927936
  %cond.i = icmp eq i64 %.mask.i, 8863084066665136128 ; 2 uses
  %.sink5.i = select i1 %cond.i, i64 %.sroa.558.079, i64 0
  br i1 %cond.i, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.preheader, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread

_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.preheader: ; preds = %bb.e
  %i.ah = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.ai = load ptr, ptr %3, align 8               ; 3 uses
  %.not81 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not81, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread, label %.lr.ph77

.lr.ph77:                                         ; preds = %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.preheader
  %i.aj = add i64 %.sroa.558.079, 1               ; 3 uses
  %i.ak = add i64 %.sroa.558.079, 2
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph77, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit
  %.pre8893 = phi ptr [ %i.ai, %.lr.ph77 ], [ %.pre8894, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit ] ; 18 uses
  %.pre90 = phi ptr [ %i.ah, %.lr.ph77 ], [ %.pre91, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit ] ; 18 uses
  %i.al = phi ptr [ %i.ai, %.lr.ph77 ], [ %i.dt, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit ] ; 3 uses
  %i.am = phi ptr [ %i.ah, %.lr.ph77 ], [ %i.du, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit ] ; 2 uses
  %.02075 = phi i64 [ 0, %.lr.ph77 ], [ %i.dv, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit ] ; 3 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %.02075 ; 2 uses
  %i.ao = load ptr, ptr %i.s, align 8             ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.sink5.i
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = lshr i64 %i.aq, 56
  %trunc.i.i27 = trunc nuw i64 %i.ar to i8
  switch i8 %trunc.i.i27, label %_ZNK8simdjson3dom6object3endEv.exit [
    i8 91, label %bb.g
    i8 123, label %bb.g
    i8 117, label %bb.h
    i8 108, label %bb.h
    i8 100, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.as = and i64 %i.aq, 4294967295
  br label %_ZNK8simdjson3dom6object3endEv.exit

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f
  br label %_ZNK8simdjson3dom6object3endEv.exit

_ZNK8simdjson3dom6object3endEv.exit:              ; preds = %bb.f, %bb.g, %bb.h
  %.0.i.i28 = phi i64 [ %i.ak, %bb.h ], [ %i.as, %bb.g ], [ %i.aj, %bb.f ]
  %i.at = add i64 %.0.i.i28, -1                   ; 2 uses
  %.not6673 = icmp eq i64 %i.aj, %i.at
  br i1 %.not6673, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK8simdjson3dom6object3endEv.exit
  %i.au = load ptr, ptr %i.ad, align 8, !noalias !128 ; 2 uses
  %i.av = load ptr, ptr %i.an, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ax = load i64, ptr %i.aw, align 8            ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN8simdjson3dom6object8iteratorppEv.exit
  %.sroa.544.074 = phi i64 [ %i.aj, %.lr.ph ], [ %.0.i.i37, %_ZN8simdjson3dom6object8iteratorppEv.exit ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.sroa.544.074
  %i.az = load i64, ptr %i.ay, align 8, !noalias !128
  %i.ba = and i64 %i.az, 72057594037927935
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %.0.copyload.i.i.i.i = load i32, ptr %i.bb, align 1, !noalias !128 ; 2 uses
  %i.bd = zext i32 %.0.copyload.i.i.i.i to i64
  %i.be = add i64 %.sroa.544.074, 1               ; 2 uses
  %i.bf = icmp eq i64 %i.ax, %i.bd
  br i1 %i.bf, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp eq i32 %.0.copyload.i.i.i.i, 0
  br i1 %i.bg, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.j
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.bc, ptr %i.av, i64 %i.ax)
  %i.bh = icmp eq i32 %bcmp.i, 0
  br i1 %i.bh, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %.critedge

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.j
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.be ; 8 uses
  %i.bj = load i64, ptr %i.bi, align 8            ; 8 uses
  %i.bk = lshr i64 %i.bj, 56                      ; 2 uses
  %4 = icmp eq i64 %i.bk, 102
  %i.bl = trunc nuw i64 %i.bk to i8
  %trunc.i = select i1 %4, i8 116, i8 %i.bl
  switch i8 %trunc.i, label %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit [
    i8 34, label %bb.k
    i8 108, label %bb.m
    i8 117, label %bb.r
    i8 100, label %bb.u
    i8 116, label %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit.i
  ]

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %.mask.i.i = and i64 %i.bj, -72057594037927936
  %cond.i.i = icmp eq i64 %.mask.i.i, 2449958197289549824
  br i1 %cond.i.i, label %bb.l, label %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit

bb.l:                                             ; preds = %bb.k
  %i.bm = and i64 %i.bj, 72057594037927935
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 4 uses
  %.0.copyload.i.i.i.i34 = load i32, ptr %i.bn, align 1, !noalias !129 ; 3 uses
  %i.bp = zext i32 %.0.copyload.i.i.i.i34 to i64  ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  %.not48148.i = icmp eq i32 %.0.copyload.i.i.i.i34, 0
  br i1 %.not48148.i, label %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit, label %.lr.ph151.i.preheader

.lr.ph151.i.preheader:                            ; preds = %bb.l
  %min.iters.check = icmp ult i32 %.0.copyload.i.i.i.i34, 4
  br i1 %min.iters.check, label %.lr.ph151.i.preheader119, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph151.i.preheader
  %n.vec = and i64 %i.bp, 4294967292              ; 3 uses
  %i.br = getelementptr i8, ptr %i.bo, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ <i64 2, i64 0>, %vector.ph ], [ %i.ch, %vector.body ]
  %vec.phi117 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ci, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.bo, i64 %index ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1
  %wide.load118 = load <2 x i8>, ptr %i.bs, align 1
  %i.bt = freeze <2 x i8> %wide.load              ; 3 uses
  %i.bu = freeze <2 x i8> %wide.load118           ; 3 uses
  %i.bv = icmp ult <2 x i8> %i.bt, splat (i8 32)
  %i.bw = icmp ult <2 x i8> %i.bu, splat (i8 32)
  %i.bx = icmp eq <2 x i8> %i.bt, splat (i8 92)
  %i.by = icmp eq <2 x i8> %i.bu, splat (i8 92)
  %i.bz = icmp eq <2 x i8> %i.bt, splat (i8 34)
  %i.ca = icmp eq <2 x i8> %i.bu, splat (i8 34)
  %i.cb = or <2 x i1> %i.bx, %i.bz
  %i.cc = or <2 x i1> %i.by, %i.ca
  %i.cd = or <2 x i1> %i.bv, %i.cb
  %i.ce = or <2 x i1> %i.bw, %i.cc
  %i.cf = select <2 x i1> %i.cd, <2 x i64> splat (i64 2), <2 x i64> splat (i64 1)
  %i.cg = select <2 x i1> %i.ce, <2 x i64> splat (i64 2), <2 x i64> splat (i64 1)
  %i.ch = add <2 x i64> %i.cf, %vec.phi           ; 2 uses
  %i.ci = add <2 x i64> %i.cg, %vec.phi117        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ci, %i.ch
  %i.ck = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bp
  br i1 %cmp.n, label %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit, label %.lr.ph151.i.preheader119

.lr.ph151.i.preheader119:                         ; preds = %.lr.ph151.i.preheader, %middle.block
  %.039150.i.ph = phi i64 [ 2, %.lr.ph151.i.preheader ], [ %i.ck, %middle.block ]
  %.042149.i.ph = phi ptr [ %i.bo, %.lr.ph151.i.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph151.i

.lr.ph151.i:                                      ; preds = %.lr.ph151.i.preheader119, %.lr.ph151.i
  %.039150.i = phi i64 [ %i.co, %.lr.ph151.i ], [ %.039150.i.ph, %.lr.ph151.i.preheader119 ]
  %.042149.i = phi ptr [ %i.cp, %.lr.ph151.i ], [ %.042149.i.ph, %.lr.ph151.i.preheader119 ] ; 2 uses
  %i.cl = load i8, ptr %.042149.i, align 1
  %.fr.i = freeze i8 %i.cl                        ; 3 uses
  %i.cm = icmp ult i8 %.fr.i, 32
  %switch.selectcmp.case1.i = icmp eq i8 %.fr.i, 92
  %switch.selectcmp.case2.i = icmp eq i8 %.fr.i, 34
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %i.cn = or i1 %i.cm, %switch.selectcmp.i
  %.sink.i35 = select i1 %i.cn, i64 2, i64 1
  %i.co = add i64 %.sink.i35, %.039150.i          ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.042149.i, i64 1 ; 2 uses
  %.not48.i = icmp eq ptr %i.cp, %i.bq
  br i1 %.not48.i, label %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit, label %.lr.ph151.i, !llvm.loop !125

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  switch i64 %i.bj, label %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit [
    i64 7782220156096217088, label %bb.o
    i64 8430738502437568512, label %bb.n
  ], !prof !30

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr i8, ptr %i.bi, i64 8
  %.0.copyload.i.i.i = load i64, ptr %i.cq, align 8 ; 2 uses
  %i.cr = icmp slt i64 %.0.copyload.i.i.i, 0
  br i1 %i.cr, label %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cs = getelementptr i8, ptr %i.bi, i64 8
  %.0.copyload.i2.i.i = load i64, ptr %i.cs, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.093.ph.i = phi i64 [ %.0.copyload.i2.i.i, %bb.o ], [ %.0.copyload.i.i.i, %bb.n ] ; 3 uses
  switch i64 %.093.ph.i, label %.lr.ph.preheader.i [
    i64 0, label %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit
    i64 -9223372036854775808, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  br label %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit

.lr.ph.preheader.i:                               ; preds = %bb.p
  %.lobit.i = lshr i64 %.093.ph.i, 63
  %i.ct = tail call i64 @llvm.abs.i64(i64 %.093.ph.i, i1 true)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.043147.i = phi i64 [ %i.cv, %.lr.ph.i ], [ %i.ct, %.lr.ph.preheader.i ] ; 2 uses
  %.044146.i = phi i64 [ %i.cu, %.lr.ph.i ], [ %.lobit.i, %.lr.ph.preheader.i ]
  %i.cu = add i64 %.044146.i, 1                   ; 2 uses
  %i.cv = udiv i64 %.043147.i, 10
  %.not47.i = icmp samesign ult i64 %.043147.i, 10
  br i1 %.not47.i, label %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit, label %.lr.ph.i, !llvm.loop !16

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  switch i64 %i.bj, label %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit [
    i64 8430738502437568512, label %bb.t
    i64 7782220156096217088, label %bb.s
  ], !prof !30

bb.s:                                             ; preds = %bb.r
  %i.cw = getelementptr i8, ptr %i.bi, i64 8
  %.0.copyload.i2.i54.i = load i64, ptr %i.cw, align 8 ; 2 uses
  %i.cx = icmp slt i64 %.0.copyload.i2.i54.i, 0
  br i1 %i.cx, label %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit, label %_ZNO8simdjson8internal20simdjson_result_baseImE3tieERmRNS_10error_codeE.exit.i

bb.t:                                             ; preds = %bb.r
  %i.cy = getelementptr i8, ptr %i.bi, i64 8
  %.0.copyload.i.i61.i = load i64, ptr %i.cy, align 8
  br label %_ZNO8simdjson8internal20simdjson_result_baseImE3tieERmRNS_10error_codeE.exit.i

_ZNO8simdjson8internal20simdjson_result_baseImE3tieERmRNS_10error_codeE.exit.i: ; preds = %bb.t, %bb.s
  %.192.i = phi i64 [ %.0.copyload.i.i61.i, %bb.t ], [ %.0.copyload.i2.i54.i, %bb.s ] ; 2 uses
  %i.cz = icmp eq i64 %.192.i, 0
  br i1 %i.cz, label %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNO8simdjson8internal20simdjson_result_baseImE3tieERmRNS_10error_codeE.exit.i, %.preheader.i
  %.041144.i = phi i64 [ %i.da, %.preheader.i ], [ 0, %_ZNO8simdjson8internal20simdjson_result_baseImE3tieERmRNS_10error_codeE.exit.i ]
  %.091143.i = phi i64 [ %i.db, %.preheader.i ], [ %.192.i, %_ZNO8simdjson8internal20simdjson_result_baseImE3tieERmRNS_10error_codeE.exit.i ] ; 2 uses
  %i.da = add i64 %.041144.i, 1                   ; 2 uses
  %i.db = udiv i64 %.091143.i, 10
  %.not.i33 = icmp ult i64 %.091143.i, 10
  br i1 %.not.i33, label %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit, label %.preheader.i, !llvm.loop !17

bb.u:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  switch i64 %i.bj, label %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit [
    i64 7205759403792793600, label %bb.x
    i64 8430738502437568512, label %bb.v
    i64 7782220156096217088, label %bb.w
  ], !prof !31

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr i8, ptr %i.bi, i64 8
  %.0.copyload.i.i66.i = load i64, ptr %i.dc, align 8
  %i.dd = uitofp i64 %.0.copyload.i.i66.i to double
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.de = getelementptr i8, ptr %i.bi, i64 8
  %.0.copyload.i1.i.i = load i64, ptr %i.de, align 8
  %i.df = sitofp i64 %.0.copyload.i1.i.i to double
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.dg = getelementptr i8, ptr %i.bi, i64 8
  %.0.copyload.i2.i67.i = load double, ptr %i.dg, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.090.ph.i = phi double [ %.0.copyload.i2.i67.i, %bb.x ], [ %i.dd, %bb.v ], [ %i.df, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.dh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.742, double noundef %.090.ph.i) #22
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.dh, i32 1)
  %i.di = zext nneg i32 %narrow.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.pre.pre = load ptr, ptr %i.b, align 8
  %.pre88.pre = load ptr, ptr %3, align 8
  br label %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit

_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %switch.selectcmp.i.i = icmp eq i64 %i.bj, 7349874591868649472
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i64 0, i64 73014444032
  %switch.selectcmp7.i.i = icmp eq i64 %i.bj, 8358680908399640576
  %switch.select8.i.i = select i1 %switch.selectcmp7.i.i, i64 1, i64 %switch.select.i.i ; 2 uses
  %.sroa.468.0.extract.shift.mask.i = and i64 %switch.select8.i.i, 73014444032
  %.not.i53.i = icmp eq i64 %.sroa.468.0.extract.shift.mask.i, 0
  %i.dj = and i64 %switch.select8.i.i, 1
  %i.dk = xor i64 %i.dj, 5
  %.4.i = select i1 %.not.i53.i, i64 %i.dk, i64 5
  br label %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit

_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit: ; preds = %.preheader.i, %.lr.ph.i, %.lr.ph151.i, %middle.block, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, %bb.k, %bb.l, %bb.m, %bb.n, %bb.p, %bb.q, %bb.r, %bb.s, %_ZNO8simdjson8internal20simdjson_result_baseImE3tieERmRNS_10error_codeE.exit.i, %bb.u, %bb.y, %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit.i
  %.pre88 = phi ptr [ %.pre8893, %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit.i ], [ %.pre8893, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit ], [ %.pre8893, %bb.k ], [ %.pre8893, %bb.s ], [ %.pre8893, %bb.m ], [ %.pre8893, %bb.u ], [ %.pre8893, %.lr.ph.i ], [ %.pre8893, %bb.q ], [ %.pre8893, %bb.p ], [ %.pre8893, %middle.block ], [ %.pre8893, %_ZNO8simdjson8internal20simdjson_result_baseImE3tieERmRNS_10error_codeE.exit.i ], [ %.pre88.pre, %bb.y ], [ %.pre8893, %bb.n ], [ %.pre8893, %bb.r ], [ %.pre8893, %bb.l ], [ %.pre8893, %.lr.ph151.i ], [ %.pre8893, %.preheader.i ] ; 2 uses
  %.pre = phi ptr [ %.pre90, %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit.i ], [ %.pre90, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit ], [ %.pre90, %bb.k ], [ %.pre90, %bb.s ], [ %.pre90, %bb.m ], [ %.pre90, %bb.u ], [ %.pre90, %.lr.ph.i ], [ %.pre90, %bb.q ], [ %.pre90, %bb.p ], [ %.pre90, %middle.block ], [ %.pre90, %_ZNO8simdjson8internal20simdjson_result_baseImE3tieERmRNS_10error_codeE.exit.i ], [ %.pre.pre, %bb.y ], [ %.pre90, %bb.n ], [ %.pre90, %bb.r ], [ %.pre90, %bb.l ], [ %.pre90, %.lr.ph151.i ], [ %.pre90, %.preheader.i ] ; 2 uses
  %.5.i = phi i64 [ %.4.i, %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit.i ], [ 4, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit ], [ 2, %bb.k ], [ 1, %bb.s ], [ 1, %bb.m ], [ 1, %bb.u ], [ %i.cu, %.lr.ph.i ], [ 20, %bb.q ], [ 1, %bb.p ], [ %i.ck, %middle.block ], [ 1, %_ZNO8simdjson8internal20simdjson_result_baseImE3tieERmRNS_10error_codeE.exit.i ], [ %i.di, %bb.y ], [ 1, %bb.n ], [ 1, %bb.r ], [ 2, %bb.l ], [ %i.co, %.lr.ph151.i ], [ %i.da, %.preheader.i ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.02075 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.dm, i64 %.5.i)
  store i64 %.sroa.speculated, ptr %i.dl, align 8
  br label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit

.critedge:                                        ; preds = %bb.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.be
  %i.do = load i64, ptr %i.dn, align 8            ; 2 uses
  %i.dp = lshr i64 %i.do, 56
  %trunc.i.i36 = trunc nuw i64 %i.dp to i8
  switch i8 %trunc.i.i36, label %bb.ab [
    i8 91, label %bb.z
    i8 123, label %bb.z
    i8 117, label %bb.aa
    i8 108, label %bb.aa
    i8 100, label %bb.aa
  ]

bb.z:                                             ; preds = %.critedge, %.critedge
  %i.dq = and i64 %i.do, 4294967295
  br label %_ZN8simdjson3dom6object8iteratorppEv.exit

bb.aa:                                            ; preds = %.critedge, %.critedge, %.critedge
  %i.dr = add i64 %.sroa.544.074, 3
  br label %_ZN8simdjson3dom6object8iteratorppEv.exit

bb.ab:                                            ; preds = %.critedge
  %i.ds = add i64 %.sroa.544.074, 2
  br label %_ZN8simdjson3dom6object8iteratorppEv.exit

_ZN8simdjson3dom6object8iteratorppEv.exit:        ; preds = %bb.z, %bb.aa, %bb.ab
  %.0.i.i37 = phi i64 [ %i.ds, %bb.ab ], [ %i.dq, %bb.z ], [ %i.dr, %bb.aa ] ; 2 uses
  %.not66 = icmp eq i64 %.0.i.i37, %i.at
  br i1 %.not66, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit, label %bb.i

_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit: ; preds = %_ZN8simdjson3dom6object8iteratorppEv.exit, %_ZNK8simdjson3dom6object3endEv.exit, %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit
  %.pre8894 = phi ptr [ %.pre88, %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit ], [ %.pre8893, %_ZNK8simdjson3dom6object3endEv.exit ], [ %.pre8893, %_ZN8simdjson3dom6object8iteratorppEv.exit ]
  %.pre91 = phi ptr [ %.pre, %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit ], [ %.pre90, %_ZNK8simdjson3dom6object3endEv.exit ], [ %.pre90, %_ZN8simdjson3dom6object8iteratorppEv.exit ]
  %i.dt = phi ptr [ %.pre88, %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit ], [ %i.al, %_ZNK8simdjson3dom6object3endEv.exit ], [ %i.al, %_ZN8simdjson3dom6object8iteratorppEv.exit ] ; 2 uses
  %i.du = phi ptr [ %.pre, %_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE.exit ], [ %i.am, %_ZNK8simdjson3dom6object3endEv.exit ], [ %i.am, %_ZN8simdjson3dom6object8iteratorppEv.exit ] ; 2 uses
  %i.dv = add nuw i64 %.02075, 1                  ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 5
  %i.ea = icmp ult i64 %i.dv, %i.dz
  br i1 %i.ea, label %bb.f, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread.loopexit, !llvm.loop !126

_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread.loopexit: ; preds = %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit
  %.pre89 = load ptr, ptr %i.s, align 8           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre89, i64 %.sroa.558.079
  %.pre96 = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread

_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread: ; preds = %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread.loopexit, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.preheader, %bb.e
  %i.eb = phi i64 [ %.pre96, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread.loopexit ], [ %i.ag, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.preheader ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ec = phi ptr [ %.pre89, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread.loopexit ], [ %i.ae, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.preheader ], [ %i.ae, %bb.e ]
  %i.ed = lshr i64 %i.eb, 56
  %trunc.i.i38 = trunc nuw i64 %i.ed to i8
  switch i8 %trunc.i.i38, label %bb.ae [
    i8 91, label %bb.ac
    i8 123, label %bb.ac
    i8 117, label %bb.ad
    i8 108, label %bb.ad
    i8 100, label %bb.ad
  ]

bb.ac:                                            ; preds = %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread
  %i.ee = and i64 %i.eb, 4294967295
  br label %_ZN8simdjson3dom5array8iteratorppEv.exit

bb.ad:                                            ; preds = %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread
  %i.ef = add i64 %.sroa.558.079, 2
  br label %_ZN8simdjson3dom5array8iteratorppEv.exit

bb.ae:                                            ; preds = %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit.thread
  %i.eg = add i64 %.sroa.558.079, 1
  br label %_ZN8simdjson3dom5array8iteratorppEv.exit

_ZN8simdjson3dom5array8iteratorppEv.exit:         ; preds = %bb.ac, %bb.ad, %bb.ae
  %.0.i.i39 = phi i64 [ %i.eg, %bb.ae ], [ %i.ee, %bb.ac ], [ %i.ef, %bb.ad ] ; 2 uses
  %.not = icmp eq i64 %.0.i.i39, %i.ac
  br i1 %.not, label %._crit_edge, label %bb.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK8simdjson8internal24fractured_string_builder20measure_value_lengthERKNS_3dom7elementE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 3 uses
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d ; 8 uses
  %i.g = load i64, ptr %i.f, align 8              ; 8 uses
  %i.h = lshr i64 %i.g, 56                        ; 2 uses
  %2 = icmp eq i64 %i.h, 102
  %i.i = trunc nuw i64 %i.h to i8
  %trunc = select i1 %2, i8 116, i8 %i.i
  switch i8 %trunc, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit [
    i8 34, label %bb.b
    i8 108, label %bb.d
    i8 117, label %bb.i
    i8 100, label %bb.l
    i8 116, label %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit
  ]

bb.b:                                             ; preds = %bb.a
  %.mask.i = and i64 %i.g, -72057594037927936
  %cond.i = icmp eq i64 %.mask.i, 2449958197289549824
  br i1 %cond.i, label %bb.c, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

bb.c:                                             ; preds = %bb.b
  %i.j = and i64 %i.g, 72057594037927935
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !134
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 4 uses
  %.0.copyload.i.i.i = load i32, ptr %i.m, align 1, !noalias !134 ; 3 uses
  %i.o = zext i32 %.0.copyload.i.i.i to i64       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %.not48148 = icmp eq i32 %.0.copyload.i.i.i, 0
  br i1 %.not48148, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit, label %.lr.ph151.preheader

.lr.ph151.preheader:                              ; preds = %bb.c
  %min.iters.check = icmp ult i32 %.0.copyload.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph151.preheader165, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph151.preheader
  %n.vec = and i64 %i.o, 4294967292               ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ <i64 2, i64 0>, %vector.ph ], [ %i.ag, %vector.body ]
  %vec.phi163 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1
  %wide.load164 = load <2 x i8>, ptr %i.r, align 1
  %i.s = freeze <2 x i8> %wide.load               ; 3 uses
  %i.t = freeze <2 x i8> %wide.load164            ; 3 uses
  %i.u = icmp ult <2 x i8> %i.s, splat (i8 32)
  %i.v = icmp ult <2 x i8> %i.t, splat (i8 32)
  %i.w = icmp eq <2 x i8> %i.s, splat (i8 92)
  %i.x = icmp eq <2 x i8> %i.t, splat (i8 92)
  %i.y = icmp eq <2 x i8> %i.s, splat (i8 34)
  %i.z = icmp eq <2 x i8> %i.t, splat (i8 34)
  %i.aa = or <2 x i1> %i.w, %i.y
  %i.ab = or <2 x i1> %i.x, %i.z
  %i.ac = or <2 x i1> %i.u, %i.aa
  %i.ad = or <2 x i1> %i.v, %i.ab
  %i.ae = select <2 x i1> %i.ac, <2 x i64> splat (i64 2), <2 x i64> splat (i64 1)
  %i.af = select <2 x i1> %i.ad, <2 x i64> splat (i64 2), <2 x i64> splat (i64 1)
  %i.ag = add <2 x i64> %vec.phi, %i.ae           ; 2 uses
  %i.ah = add <2 x i64> %vec.phi163, %i.af        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.o
  br i1 %cmp.n, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit, label %.lr.ph151.preheader165

.lr.ph151.preheader165:                           ; preds = %.lr.ph151.preheader, %middle.block
  %.039150.ph = phi i64 [ 2, %.lr.ph151.preheader ], [ %i.aj, %middle.block ]
  %.042149.ph = phi ptr [ %i.n, %.lr.ph151.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph151

.lr.ph151:                                        ; preds = %.lr.ph151.preheader165, %.lr.ph151
  %.039150 = phi i64 [ %i.an, %.lr.ph151 ], [ %.039150.ph, %.lr.ph151.preheader165 ]
  %.042149 = phi ptr [ %i.ao, %.lr.ph151 ], [ %.042149.ph, %.lr.ph151.preheader165 ] ; 2 uses
  %i.ak = load i8, ptr %.042149, align 1
  %.fr = freeze i8 %i.ak                          ; 3 uses
  %i.al = icmp ult i8 %.fr, 32
  %switch.selectcmp.case1 = icmp eq i8 %.fr, 92
  %switch.selectcmp.case2 = icmp eq i8 %.fr, 34
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.am = or i1 %i.al, %switch.selectcmp
  %.sink = select i1 %i.am, i64 2, i64 1
  %i.an = add i64 %.039150, %.sink                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.042149, i64 1 ; 2 uses
  %.not48 = icmp eq ptr %i.ao, %i.p
  br i1 %.not48, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit, label %.lr.ph151, !llvm.loop !133

bb.d:                                             ; preds = %bb.a
  switch i64 %i.g, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit [
    i64 7782220156096217088, label %bb.f
    i64 8430738502437568512, label %bb.e
  ], !prof !30

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr i8, ptr %i.f, i64 8
  %.0.copyload.i.i = load i64, ptr %i.ap, align 8 ; 2 uses
  %i.aq = icmp slt i64 %.0.copyload.i.i, 0
  br i1 %i.aq, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ar = getelementptr i8, ptr %i.f, i64 8
  %.0.copyload.i2.i = load i64, ptr %i.ar, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.093.ph = phi i64 [ %.0.copyload.i2.i, %bb.f ], [ %.0.copyload.i.i, %bb.e ] ; 3 uses
  switch i64 %.093.ph, label %.lr.ph.preheader [
    i64 0, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit
    i64 -9223372036854775808, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

.lr.ph.preheader:                                 ; preds = %bb.g
  %.lobit = lshr i64 %.093.ph, 63
  %i.as = tail call i64 @llvm.abs.i64(i64 %.093.ph, i1 true)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.043147 = phi i64 [ %i.au, %.lr.ph ], [ %i.as, %.lr.ph.preheader ] ; 2 uses
  %.044146 = phi i64 [ %i.at, %.lr.ph ], [ %.lobit, %.lr.ph.preheader ]
  %i.at = add i64 %.044146, 1                     ; 2 uses
  %i.au = udiv i64 %.043147, 10
  %.not47 = icmp samesign ult i64 %.043147, 10
  br i1 %.not47, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit, label %.lr.ph, !llvm.loop !16

bb.i:                                             ; preds = %bb.a
  switch i64 %i.g, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit [
    i64 8430738502437568512, label %bb.k
    i64 7782220156096217088, label %bb.j
  ], !prof !30

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr i8, ptr %i.f, i64 8
  %.0.copyload.i2.i54 = load i64, ptr %i.av, align 8 ; 2 uses
  %i.aw = icmp slt i64 %.0.copyload.i2.i54, 0
  br i1 %i.aw, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit, label %_ZNO8simdjson8internal20simdjson_result_baseImE3tieERmRNS_10error_codeE.exit

bb.k:                                             ; preds = %bb.i
  %i.ax = getelementptr i8, ptr %i.f, i64 8
  %.0.copyload.i.i61 = load i64, ptr %i.ax, align 8
  br label %_ZNO8simdjson8internal20simdjson_result_baseImE3tieERmRNS_10error_codeE.exit

_ZNO8simdjson8internal20simdjson_result_baseImE3tieERmRNS_10error_codeE.exit: ; preds = %bb.j, %bb.k
  %.192 = phi i64 [ %.0.copyload.i.i61, %bb.k ], [ %.0.copyload.i2.i54, %bb.j ] ; 2 uses
  %i.ay = icmp eq i64 %.192, 0
  br i1 %i.ay, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit, label %.preheader

.preheader:                                       ; preds = %_ZNO8simdjson8internal20simdjson_result_baseImE3tieERmRNS_10error_codeE.exit, %.preheader
  %.041144 = phi i64 [ %i.az, %.preheader ], [ 0, %_ZNO8simdjson8internal20simdjson_result_baseImE3tieERmRNS_10error_codeE.exit ]
  %.091143 = phi i64 [ %i.ba, %.preheader ], [ %.192, %_ZNO8simdjson8internal20simdjson_result_baseImE3tieERmRNS_10error_codeE.exit ] ; 2 uses
  %i.az = add i64 %.041144, 1                     ; 2 uses
  %i.ba = udiv i64 %.091143, 10
  %.not = icmp ult i64 %.091143, 10
  br i1 %.not, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit, label %.preheader, !llvm.loop !17

bb.l:                                             ; preds = %bb.a
  switch i64 %i.g, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit [
    i64 7205759403792793600, label %bb.o
    i64 8430738502437568512, label %bb.m
    i64 7782220156096217088, label %bb.n
  ], !prof !31

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr i8, ptr %i.f, i64 8
  %.0.copyload.i.i66 = load i64, ptr %i.bb, align 8
  %i.bc = uitofp i64 %.0.copyload.i.i66 to double
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bd = getelementptr i8, ptr %i.f, i64 8
  %.0.copyload.i1.i = load i64, ptr %i.bd, align 8
  %i.be = sitofp i64 %.0.copyload.i1.i to double
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.bf = getelementptr i8, ptr %i.f, i64 8
  %.0.copyload.i2.i67 = load double, ptr %i.bf, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.n
  %.090.ph = phi double [ %.0.copyload.i2.i67, %bb.o ], [ %i.bc, %bb.m ], [ %i.be, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.742, double noundef %.090.ph) #22
  %narrow = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 1)
  %i.bh = zext nneg i32 %narrow to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit: ; preds = %bb.a
  %switch.selectcmp.i = icmp eq i64 %i.g, 7349874591868649472
  %switch.select.i = select i1 %switch.selectcmp.i, i64 0, i64 73014444032
  %switch.selectcmp7.i = icmp eq i64 %i.g, 8358680908399640576
  %switch.select8.i = select i1 %switch.selectcmp7.i, i64 1, i64 %switch.select.i ; 2 uses
  %.sroa.468.0.extract.shift.mask = and i64 %switch.select8.i, 73014444032
  %.not.i53 = icmp eq i64 %.sroa.468.0.extract.shift.mask, 0
  %i.bi = and i64 %switch.select8.i, 1
  %i.bj = xor i64 %i.bi, 5
  %.4 = select i1 %.not.i53, i64 %i.bj, i64 5
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit: ; preds = %.preheader, %.lr.ph, %.lr.ph151, %middle.block, %bb.c, %bb.l, %bb.j, %bb.i, %bb.d, %bb.e, %bb.p, %_ZNO8simdjson8internal20simdjson_result_baseImE3tieERmRNS_10error_codeE.exit, %bb.h, %bb.g, %bb.b, %bb.a, %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit
  %.5 = phi i64 [ %.4, %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit ], [ 4, %bb.a ], [ 2, %bb.b ], [ 1, %bb.j ], [ 1, %bb.d ], [ 1, %bb.l ], [ %i.at, %.lr.ph ], [ 20, %bb.h ], [ 1, %bb.g ], [ %i.an, %.lr.ph151 ], [ 1, %_ZNO8simdjson8internal20simdjson_result_baseImE3tieERmRNS_10error_codeE.exit ], [ %i.bh, %bb.p ], [ 1, %bb.e ], [ 1, %bb.i ], [ 2, %bb.c ], [ %i.aj, %middle.block ], [ %i.az, %.preheader ]
  ret i64 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, !prof !23

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !26

bb.e:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 8
  store i64 %i.r, ptr %i.o, align 8
  br label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #25
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 8
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !26

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 8
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i64, ptr %i.c, align 8
  store i64 %i.ae, ptr %i.i, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 8
  br i1 %i.af, label %bb.o, label %bb.p, !prof !26

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ab, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 8
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i64, ptr %i.c, align 8
  store i64 %i.ah, ptr %i.i, align 8
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %i.ai = load ptr, ptr %1, align 8
  %i.aj = load ptr, ptr %i.y, align 8             ; 3 uses
  %i.ak = load ptr, ptr %0, align 8
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.ap = load ptr, ptr %i.a, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
  %i.at = icmp sgt i64 %i.as, 8
  br i1 %i.at, label %bb.r, label %bb.s, !prof !26

bb.r:                                             ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aj, ptr align 8 %i.ao, i64 %i.as, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit
  %i.au = icmp eq i64 %i.as, 8
  br i1 %i.au, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.av = load i64, ptr %i.ao, align 8
  store i64 %i.av, ptr %i.aj, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit
  %i.aw = load ptr, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.f
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ay, align 8
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8simdjson8internal24fractured_string_builder20format_object_inlineERKNS_3dom6objectERKNS0_15element_metricsE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.4 = alloca i56, align 8                  ; 4 uses
  %3 = alloca %"class.simdjson::dom::key_value_pair", align 8 ; 7 uses
  %4 = alloca %"struct.simdjson::internal::element_metrics", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  store i32 0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 30 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 60 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = add i64 %i.f, 1                          ; 2 uses
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE12start_objectEv.exit_crit_edge

._ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE12start_objectEv.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE12start_objectEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = shl i64 %i.d, 1                          ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 5 uses
  %i.m = load i64, ptr %i.e, align 8              ; 4 uses
  %i.n = icmp sgt i64 %i.m, 1
  br i1 %i.n, label %bb.c, label %bb.d, !prof !26

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.l, i64 %i.m, i1 false)
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i

bb.d:                                             ; preds = %bb.b
end_hunk_5
