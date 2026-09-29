Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/unsafe_libyaml-c83d027d29d4f62c.unsafe_libyaml.d8757c7f39422774-cgu.0?download=true
inline.NumInlined: 729
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [16 x i8] c"!event.is_null()", align 1
@1 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/unsafe-libyaml-0.2.11/src/api.rs", align 1
@2 = private unnamed_addr constant [16 x i8] c"!token.is_null()", align 1
@3 = private unnamed_addr constant [17 x i8] c"!parser.is_null()", align 1
@4 = private unnamed_addr constant [18 x i8] c"!emitter.is_null()", align 1
@5 = private unnamed_addr constant [19 x i8] c"!document.is_null()", align 1
@6 = private unnamed_addr constant [5 x i8] c"false", align 1
@7 = private unnamed_addr constant [34 x i8] c"((*parser).read_handler).is_none()", align 1
@8 = private unnamed_addr constant [36 x i8] c"((*emitter).write_handler).is_none()", align 1
@9 = private unnamed_addr constant [16 x i8] c"!value.is_null()", align 1
@10 = private unnamed_addr constant [22 x i8] c"tag:yaml.org,2002:str\00", align 1
@11 = private unnamed_addr constant [110 x i8] c"!tag_directives_start.is_null() && !tag_directives_end.is_null() ||\0Atag_directives_start == tag_directives_end", align 1
@12 = private unnamed_addr constant [36 x i8] c"!((*tag_directive).handle).is_null()", align 1
@13 = private unnamed_addr constant [36 x i8] c"!((*tag_directive).prefix).is_null()", align 1
@14 = private unnamed_addr constant [1 x i8] c"\01", align 1
@15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@16 = private unnamed_addr constant [39 x i8] c"(*parser).encoding == YAML_ANY_ENCODING", align 1
@17 = private unnamed_addr constant [22 x i8] c"tag:yaml.org,2002:map\00", align 1
@18 = private unnamed_addr constant [40 x i8] c"(*emitter).encoding == YAML_ANY_ENCODING", align 1
@19 = private unnamed_addr constant [22 x i8] c"tag:yaml.org,2002:seq\00", align 1
@20 = private unnamed_addr constant [17 x i8] c"!anchor.is_null()", align 1
@21 = private unnamed_addr constant [16 x i8] c"!input.is_null()", align 1
@22 = private unnamed_addr constant [17 x i8] c"!output.is_null()", align 1
@23 = private unnamed_addr constant [99 x i8] c"mapping > 0 && ((*document).nodes.start).wrapping_offset(mapping as isize) <=\0A(*document).nodes.top", align 1
@24 = private unnamed_addr constant [91 x i8] c"key > 0 && ((*document).nodes.start).wrapping_offset(key as isize) <=\0A(*document).nodes.top", align 1
@25 = private unnamed_addr constant [95 x i8] c"value > 0 && ((*document).nodes.start).wrapping_offset(value as isize) <=\0A(*document).nodes.top", align 1
@26 = private unnamed_addr constant [95 x i8] c"(*((*document).nodes.start).wrapping_offset((mapping - 1) as isize)).type_ ==\0AYAML_MAPPING_NODE", align 1
@27 = private unnamed_addr constant [101 x i8] c"sequence > 0 && ((*document).nodes.start).wrapping_offset(sequence as isize)\0A<= (*document).nodes.top", align 1
@28 = private unnamed_addr constant [93 x i8] c"item > 0 && ((*document).nodes.start).wrapping_offset(item as isize) <=\0A(*document).nodes.top", align 1
@29 = private unnamed_addr constant [97 x i8] c"(*((*document).nodes.start).wrapping_offset((sequence - 1) as isize)).type_ ==\0AYAML_SEQUENCE_NODE", align 1
@30 = private unnamed_addr constant [19 x i8] c"arithmetic overflow", align 1
@31 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @30, [8 x i8] c"\13\00\00\00\00\00\00\00" }>, align 8
@32 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/unsafe-libyaml-0.2.11/src/ops.rs\00", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"e\00\00\00\00\00\00\00k\00\00\00\09\00\00\00" }>, align 8
@34 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/unsafe-libyaml-0.2.11/src/dumper.rs", align 1
@35 = private unnamed_addr constant [17 x i8] c"(*emitter).opened", align 1
@36 = private unnamed_addr constant [18 x i8] c"!(*emitter).opened", align 1
@37 = private unnamed_addr constant [2 x i8] c"id", align 1
@38 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @37, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @15, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ [2 x i8], [14 x i8], [4 x i8], [12 x i8], [12 x i8], [4 x i8] }> <{ [2 x i8] c"\02\00", [14 x i8] undef, [4 x i8] c"\00\00\03\00", [12 x i8] undef, [12 x i8] c"\00\00\00\00\00\00\00\00 \00\00\E9", [4 x i8] undef }>, align 8
@40 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/unsafe-libyaml-0.2.11/src/loader.rs", align 1
@41 = private unnamed_addr constant [41 x i8] c"(*event).type_ == YAML_STREAM_START_EVENT", align 1
@42 = private unnamed_addr constant [22 x i8] c"found undefined alias\00", align 1
@43 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@44 = private unnamed_addr constant [43 x i8] c"(*event).type_ == YAML_DOCUMENT_START_EVENT", align 1
@45 = private unnamed_addr constant [41 x i8] c"found duplicate anchor; first occurrence\00", align 1
@46 = private unnamed_addr constant [18 x i8] c"second occurrence\00", align 1
@47 = private unnamed_addr constant [64 x i8] c"((*ctx).top).c_offset_from((*ctx).start) as libc::c_long > 0_i64", align 1
@48 = private unnamed_addr constant [103 x i8] c"(*((*(*parser).document).nodes.start).wrapping_offset((index - 1) as\0Aisize)).type_ == YAML_MAPPING_NODE", align 1
@49 = private unnamed_addr constant [104 x i8] c"(*((*(*parser).document).nodes.start).wrapping_offset((index - 1) as\0Aisize)).type_ == YAML_SEQUENCE_NODE", align 1
@50 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/unsafe-libyaml-0.2.11/src/parser.rs", align 1
@51 = private unnamed_addr constant [21 x i8] c"while parsing a node\00", align 1
@52 = private unnamed_addr constant [27 x i8] c"found undefined tag handle\00", align 1
@53 = private unnamed_addr constant [26 x i8] c"while parsing a flow node\00", align 1
@54 = private unnamed_addr constant [27 x i8] c"while parsing a block node\00", align 1
@55 = private unnamed_addr constant [35 x i8] c"did not find expected node content\00", align 1
@56 = private unnamed_addr constant [37 x i8] c"did not find expected <stream-start>\00", align 1
@57 = private unnamed_addr constant [3 x i8] c"!!\00", align 1
@58 = private unnamed_addr constant [19 x i8] c"tag:yaml.org,2002:\00", align 1
@59 = private unnamed_addr constant [33 x i8] c"found incompatible YAML document\00", align 1
@60 = private unnamed_addr constant [32 x i8] c"found duplicate %YAML directive\00", align 1
@61 = private unnamed_addr constant [31 x i8] c"found duplicate %TAG directive\00", align 1
@62 = private unnamed_addr constant [39 x i8] c"did not find expected <document start>\00", align 1
@63 = private unnamed_addr constant [29 x i8] c"while parsing a flow mapping\00", align 1
@64 = private unnamed_addr constant [33 x i8] c"did not find expected ',' or '}'\00", align 1
@65 = private unnamed_addr constant [30 x i8] c"while parsing a block mapping\00", align 1
@66 = private unnamed_addr constant [26 x i8] c"did not find expected key\00", align 1
@67 = private unnamed_addr constant [30 x i8] c"while parsing a flow sequence\00", align 1
@68 = private unnamed_addr constant [33 x i8] c"did not find expected ',' or ']'\00", align 1
@69 = private unnamed_addr constant [33 x i8] c"while parsing a block collection\00", align 1
@70 = private unnamed_addr constant [36 x i8] c"did not find expected '-' indicator\00", align 1
@71 = private unnamed_addr constant [18 x i8] c"input is too long\00", align 1
@72 = private unnamed_addr constant [28 x i8] c"invalid leading UTF-8 octet\00", align 1
@73 = private unnamed_addr constant [26 x i8] c"invalid Unicode character\00", align 1
@74 = private unnamed_addr constant [35 x i8] c"invalid length of a UTF-8 sequence\00", align 1
@75 = private unnamed_addr constant [29 x i8] c"invalid trailing UTF-8 octet\00", align 1
@76 = private unnamed_addr constant [32 x i8] c"incomplete UTF-8 octet sequence\00", align 1
@77 = private unnamed_addr constant [30 x i8] c"unexpected low surrogate area\00", align 1
@78 = private unnamed_addr constant [28 x i8] c"expected low surrogate area\00", align 1
@79 = private unnamed_addr constant [33 x i8] c"incomplete UTF-16 surrogate pair\00", align 1
@80 = private unnamed_addr constant [28 x i8] c"incomplete UTF-16 character\00", align 1
@81 = private unnamed_addr constant [35 x i8] c"control characters are not allowed\00", align 1
@82 = private unnamed_addr constant [34 x i8] c"((*parser).read_handler).is_some()", align 1
@83 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/unsafe-libyaml-0.2.11/src/reader.rs", align 1
@84 = private unnamed_addr constant [25 x i8] c"non-null function pointer", align 1
@85 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/unsafe-libyaml-0.2.11/src/reader.rs\00", align 1
@86 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @85, [16 x i8] c"h\00\00\00\00\00\00\00\7F\00\00\00\1F\00\00\00" }>, align 8
@87 = private unnamed_addr constant [12 x i8] c"input error\00", align 1
@88 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/unsafe-libyaml-0.2.11/src/writer.rs", align 1
@89 = private unnamed_addr constant [40 x i8] c"(*emitter).encoding != YAML_ANY_ENCODING", align 1
@90 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/unsafe-libyaml-0.2.11/src/writer.rs\00", align 1
@91 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@92 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @90, [16 x i8] c"h\00\00\00\00\00\00\00}\00\00\00!\00\00\00" }>, align 8
@93 = private unnamed_addr constant [36 x i8] c"((*emitter).write_handler).is_some()", align 1
@94 = private unnamed_addr constant [57 x i8] c"expected SCALAR, SEQUENCE-START, MAPPING-START, or ALIAS\00", align 1
@95 = private unnamed_addr constant [28 x i8] c"tag value must not be empty\00", align 1
@96 = private unnamed_addr constant [3 x i8] c"!<\00", align 1
@97 = private unnamed_addr constant [2 x i8] c">\00", align 1
@98 = private unnamed_addr constant [34 x i8] c"expected nothing after STREAM-END\00", align 1
@99 = private unnamed_addr constant [57 x i8] c"anchor value must contain alphanumerical characters only\00", align 1
@100 = private unnamed_addr constant [56 x i8] c"alias value must contain alphanumerical characters only\00", align 1
@101 = private unnamed_addr constant [31 x i8] c"anchor value must not be empty\00", align 1
@102 = private unnamed_addr constant [30 x i8] c"alias value must not be empty\00", align 1
@103 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@104 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@105 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@106 = private unnamed_addr constant [22 x i8] c"expected DOCUMENT-END\00", align 1
@107 = private unnamed_addr constant [22 x i8] c"expected STREAM-START\00", align 1
@108 = private unnamed_addr constant [29 x i8] c"incompatible %YAML directive\00", align 1
@109 = private unnamed_addr constant [6 x i8] c"%YAML\00", align 1
@110 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@111 = private unnamed_addr constant [4 x i8] c"1.2\00", align 1
@112 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@113 = private unnamed_addr constant [5 x i8] c"%TAG\00", align 1
@114 = private unnamed_addr constant [38 x i8] c"expected DOCUMENT-START or STREAM-END\00", align 1
@115 = private unnamed_addr constant [45 x i8] c"neither tag nor implicit flags are specified\00", align 1
@116 = private unnamed_addr constant [25 x i8] c"duplicate %TAG directive\00", align 1
@117 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@118 = private unnamed_addr constant [29 x i8] c"tag prefix must not be empty\00", align 1
@119 = private unnamed_addr constant [55 x i8] c"tag handle must contain alphanumerical characters only\00", align 1
@120 = private unnamed_addr constant [29 x i8] c"tag handle must end with '!'\00", align 1
@121 = private unnamed_addr constant [31 x i8] c"tag handle must start with '!'\00", align 1
@122 = private unnamed_addr constant [29 x i8] c"tag handle must not be empty\00", align 1
@123 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@124 = private unnamed_addr constant [2 x i8] c",\00", align 1
@125 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@126 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@127 = private unnamed_addr constant [2 x i8] c":\00", align 1
@128 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@129 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@130 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@131 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@132 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@133 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@134 = private unnamed_addr constant [1 x i8] c":", align 1
@135 = private unnamed_addr constant [13 x i8] c": Assertion `", align 1
@136 = private unnamed_addr constant [9 x i8] c"` failed.", align 1
@137 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @134, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @135, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @136, [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@138 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/unsafe-libyaml-0.2.11/src/lib.rs\00", align 1
@139 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @138, [16 x i8] c"e\00\00\00\00\00\00\00\E1\00\00\00\09\00\00\00" }>, align 8
@140 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/unsafe-libyaml-0.2.11/src/scanner.rs", align 1
@141 = private unnamed_addr constant [21 x i8] c"while scanning a tag\00", align 1
@142 = private unnamed_addr constant [30 x i8] c"did not find the expected '>'\00", align 1
@143 = private unnamed_addr constant [47 x i8] c"did not find expected whitespace or line break\00", align 1
@144 = private unnamed_addr constant [45 x i8] c"mapping keys are not allowed in this context\00", align 1
@145 = private unnamed_addr constant [28 x i8] c"while scanning a simple key\00", align 1
@146 = private unnamed_addr constant [28 x i8] c"could not find expected ':'\00", align 1
@147 = private unnamed_addr constant [47 x i8] c"mapping values are not allowed in this context\00", align 1
@148 = private unnamed_addr constant [25 x i8] c"while scanning an anchor\00", align 1
@149 = private unnamed_addr constant [24 x i8] c"while scanning an alias\00", align 1
@150 = private unnamed_addr constant [54 x i8] c"did not find expected alphabetic or numeric character\00", align 1
@151 = private unnamed_addr constant [20 x i8] c"while parsing a tag\00", align 1
@152 = private unnamed_addr constant [31 x i8] c"while parsing a %TAG directive\00", align 1
@153 = private unnamed_addr constant [30 x i8] c"did not find expected tag URI\00", align 1
@154 = private unnamed_addr constant [5 x i8] c"YAML\00", align 1
@155 = private unnamed_addr constant [4 x i8] c"TAG\00", align 1
@156 = private unnamed_addr constant [27 x i8] c"while scanning a directive\00", align 1
@157 = private unnamed_addr constant [44 x i8] c"did not find expected comment or line break\00", align 1
@158 = private unnamed_addr constant [29 x i8] c"found unknown directive name\00", align 1
@159 = private unnamed_addr constant [30 x i8] c"while parsing a tag directive\00", align 1
@160 = private unnamed_addr constant [26 x i8] c"did not find expected '!'\00", align 1
@161 = private unnamed_addr constant [31 x i8] c"while scanning a tag directive\00", align 1
@162 = private unnamed_addr constant [34 x i8] c"while scanning for the next token\00", align 1
@163 = private unnamed_addr constant [44 x i8] c"found character that cannot start any token\00", align 1
@164 = private unnamed_addr constant [31 x i8] c"while scanning a quoted scalar\00", align 1
@165 = private unnamed_addr constant [36 x i8] c"found unexpected document indicator\00", align 1
@166 = private unnamed_addr constant [31 x i8] c"found unexpected end of stream\00", align 1
@167 = private unnamed_addr constant [30 x i8] c"while parsing a quoted scalar\00", align 1
@168 = private unnamed_addr constant [44 x i8] c"found invalid Unicode character escape code\00", align 1
@169 = private unnamed_addr constant [41 x i8] c"did not find expected hexadecimal number\00", align 1
@170 = private unnamed_addr constant [31 x i8] c"found unknown escape character\00", align 1
@171 = private unnamed_addr constant [39 x i8] c"found an incorrect leading UTF-8 octet\00", align 1
@172 = private unnamed_addr constant [40 x i8] c"found an incorrect trailing UTF-8 octet\00", align 1
@173 = private unnamed_addr constant [31 x i8] c"did not find URI escaped octet\00", align 1
@174 = private unnamed_addr constant [55 x i8] c"block sequence entries are not allowed in this context\00", align 1
@175 = private unnamed_addr constant [30 x i8] c"while scanning a block scalar\00", align 1
@176 = private unnamed_addr constant [42 x i8] c"found an indentation indicator equal to 0\00", align 1
@177 = private unnamed_addr constant [30 x i8] c"while scanning a plain scalar\00", align 1
@178 = private unnamed_addr constant [21 x i8] c"found unexpected ':'\00", align 1
@179 = private unnamed_addr constant [48 x i8] c"found a tab character that violates indentation\00", align 1
@180 = private unnamed_addr constant [44 x i8] c"found unexpected non-alphabetical character\00", align 1
@181 = private unnamed_addr constant [39 x i8] c"could not find expected directive name\00", align 1
@182 = private unnamed_addr constant [61 x i8] c"found a tab character where an indentation space is expected\00", align 1
@183 = private unnamed_addr constant [32 x i8] c"while scanning a %TAG directive\00", align 1
@184 = private unnamed_addr constant [33 x i8] c"did not find expected whitespace\00", align 1
@185 = private unnamed_addr constant [33 x i8] c"while scanning a %YAML directive\00", align 1
@186 = private unnamed_addr constant [45 x i8] c"did not find expected digit or '.' character\00", align 1
@187 = private unnamed_addr constant [37 x i8] c"did not find expected version number\00", align 1
@188 = private unnamed_addr constant [36 x i8] c"found extremely long version number\00", align 1
@189 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN68_$LT$unsafe_libyaml..fmt..WriteToPtr$u20$as$u20$core..fmt..Write$GT$9write_str17h823ed6ac062738fdE", ptr @_ZN4core3fmt5Write10write_char17h3c0900e68c9aa341E, ptr @_ZN4core3fmt5Write9write_fmt17h87f2ac93f1386263E }>, align 8
@190 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"e\00\00\00\00\00\00\00e\00\00\00\0D\00\00\00" }>, align 8
@191 = private unnamed_addr constant [14 x i8] c"explicit panic", align 1
@192 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @138, [16 x i8] c"e\00\00\00\00\00\00\00\DD\00\00\00\11\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = add nuw i64 %0, 8                        ; 4 uses
  %i.b = icmp ugt i64 %0, -9
  br i1 %i.b, label %bb.b, label %"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i", !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i": ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.a, i64 noundef 8)
  br i1 %i.c, label %bb.d, label %bb.c, !prof !5

bb.c:                                             ; preds = %"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.d:                                             ; preds = %"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.d = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.a, i64 noundef 8) #21 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %_ZN14unsafe_libyaml7externs6malloc17h8ca625f09467adc0E.exit, !prof !4

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.a) #20
  unreachable

_ZN14unsafe_libyaml7externs6malloc17h8ca625f09467adc0E.exit: ; preds = %bb.d
  store i64 %i.a, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN14unsafe_libyaml3api11yaml_strdup17h8cc8728489c61115E(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %strlen.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) ; 2 uses
  %i.b = add i64 %strlen.i, 1                     ; 2 uses
  %i.c = add i64 %strlen.i, 9                     ; 4 uses
  %i.d = icmp ugt i64 %i.b, -9
  br i1 %i.d, label %bb.c, label %"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i.i", !prof !4

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i.i": ; preds = %bb.b
  %i.e = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.c, i64 noundef 8)
  br i1 %i.e, label %bb.e, label %bb.d, !prof !5

bb.d:                                             ; preds = %"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i.i"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.e:                                             ; preds = %"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.f = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef 8) #21 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %_ZN14unsafe_libyaml7externs6strdup17h7b1b52f88d46d798E.exit, !prof !4

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.c) #20
  unreachable

_ZN14unsafe_libyaml7externs6strdup17h7b1b52f88d46d798E.exit: ; preds = %bb.e
  store i64 %i.c, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull readonly align 1 %0, i64 %i.b, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN14unsafe_libyaml7externs6strdup17h7b1b52f88d46d798E.exit
  %.sroa.0.0 = phi ptr [ %i.h, %_ZN14unsafe_libyaml7externs6strdup17h7b1b52f88d46d798E.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw i64 %1, 8                        ; 4 uses
  %i.c = icmp ugt i64 %1, -9
  br i1 %i.c, label %bb.c, label %"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i", !prof !4

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i": ; preds = %bb.b
  %i.d = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.b, i64 noundef 8)
  br i1 %i.d, label %bb.e, label %bb.d, !prof !5

bb.d:                                             ; preds = %"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.e:                                             ; preds = %"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.e = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef 8) #21 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %_ZN14unsafe_libyaml7externs6malloc17h8ca625f09467adc0E.exit, !prof !4

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.b) #20
  unreachable

_ZN14unsafe_libyaml7externs6malloc17h8ca625f09467adc0E.exit: ; preds = %bb.e
  store i64 %i.b, ptr %i.e, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !6
  %i.i = add nuw i64 %1, 8                        ; 4 uses
  %i.j = icmp ugt i64 %1, -9
  br i1 %i.j, label %bb.h, label %"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i1", !prof !4

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i1": ; preds = %bb.g
  %i.k = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.i, i64 noundef 8)
  br i1 %i.k, label %bb.j, label %bb.i, !prof !5

bb.i:                                             ; preds = %"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i1"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.j:                                             ; preds = %"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E.exit.i1"
  %i.l = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.g, i64 noundef %i.h, i64 noundef 8, i64 noundef %i.i) #21 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.k, label %_ZN14unsafe_libyaml7externs7realloc17h51affd74cdf3d7faE.exit, !prof !4

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.i) #20
  unreachable

_ZN14unsafe_libyaml7externs7realloc17h51affd74cdf3d7faE.exit: ; preds = %bb.j
  store i64 %i.i, ptr %i.l, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN14unsafe_libyaml7externs7realloc17h51affd74cdf3d7faE.exit, %_ZN14unsafe_libyaml7externs6malloc17h8ca625f09467adc0E.exit
  %.pn = phi ptr [ %i.e, %_ZN14unsafe_libyaml7externs6malloc17h8ca625f09467adc0E.exit ], [ %i.l, %_ZN14unsafe_libyaml7externs7realloc17h51affd74cdf3d7faE.exit ]
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr %.0.val, ptr %.0.val1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %.0.val, %.0.val1
  br i1 %i.a, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %.0.val1 to i64
  %i.c = ptrtoint ptr %.0.val to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !noundef !6
  %i.f = load ptr, ptr %1, align 8, !noundef !6   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %.not8 = icmp sgt i64 %i.i, %i.d
  br i1 %.not8, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre = load ptr, ptr %0, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit, %.preheader
  %.lcssa5 = phi ptr [ %i.f, %.preheader ], [ %i.an, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.lcssa5, ptr align 1 %.0.val, i64 %i.d, i1 false)
  %i.j = load ptr, ptr %1, align 8, !noundef !6
  %i.k = getelementptr i8, ptr %i.j, i64 %i.d
  store ptr %i.k, ptr %1, align 8
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit
  %i.l = phi ptr [ %i.s, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.m = phi i64 [ %i.ao, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit ], [ %i.g, %.lr.ph.preheader ]
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = add i64 %i.o, 4611686018427387904
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.b, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i", !prof !4

bb.b:                                             ; preds = %.lr.ph
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i": ; preds = %.lr.ph
  %i.r = shl nsw i64 %i.o, 1
  %i.s = tail call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %i.l, i64 noundef %i.r) ; 5 uses
  %i.t = load ptr, ptr %2, align 8, !noundef !6
  %i.u = load ptr, ptr %0, align 8, !noundef !6
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = getelementptr i8, ptr %i.s, i64 %i.x
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.y, i8 0, i64 %i.x, i1 false)
  %i.z = load ptr, ptr %1, align 8, !noundef !6
  %3 = load ptr, ptr %0, align 8, !noundef !6
  %4 = ptrtoint ptr %i.z to i64
  %i.aa = ptrtoint ptr %3 to i64
  %i.ab = sub i64 %4, %i.aa
  %i.ac = getelementptr i8, ptr %i.s, i64 %i.ab
  store ptr %i.ac, ptr %1, align 8
  %i.ad = load ptr, ptr %2, align 8, !noundef !6
  %i.ae = load ptr, ptr %0, align 8, !noundef !6
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = add i64 %i.ah, 4611686018427387904
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %bb.c, label %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit, !prof !4

bb.c:                                             ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i"
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit: ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i"
  %i.ak = shl nsw i64 %i.ah, 1
  %i.al = getelementptr i8, ptr %i.s, i64 %i.ak
  store ptr %i.al, ptr %2, align 8
  store ptr %i.s, ptr %0, align 8
  %i.am = load ptr, ptr %2, align 8, !noundef !6
  %i.an = load ptr, ptr %1, align 8, !noundef !6  ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %.not = icmp sgt i64 %i.aq, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14unsafe_libyaml3api17yaml_event_delete17h4f01a6edee4be18eE(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @0, i64 noundef 16, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 101, i32 noundef 1058) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !range !7, !noundef !6
  switch i32 %i.b, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5 [
    i32 3, label %bb.d
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.j
    i32 9, label %bb.l
  ]

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5.sink.split: ; preds = %._crit_edge, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7, %bb.f
  %.sink34 = phi ptr [ %i.ar, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11 ], [ %i.aj, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9 ], [ %i.ab, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7 ], [ %i.o, %bb.f ], [ %i.at, %._crit_edge ]
  %i.c = getelementptr inbounds i8, ptr %.sink34, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %i.d, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5.sink.split, %._crit_edge, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7, %bb.f, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.i, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit: ; preds = %bb.d, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noundef !6 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noundef !6
  %.not16 = icmp eq ptr %i.k, %i.m
  br i1 %.not16, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noundef !6 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5.sink.split

bb.g:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noundef !6 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.u, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6: ; preds = %bb.g, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noundef !6 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7, label %bb.i

bb.i:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %i.z, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !6 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5.sink.split

bb.j:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noundef !6 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef %i.ah, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9: ; preds = %bb.j, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noundef !6 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5.sink.split

bb.l:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noundef !6 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.ap, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11: ; preds = %bb.l, %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !noundef !6 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5.sink.split

._crit_edge.loopexit:                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit15
  %.pre = load ptr, ptr %i.j, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit
  %i.at = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.k, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit ] ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5.sink.split

.lr.ph:                                           ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit15
  %.sroa.0.017 = phi ptr [ %i.be, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit15 ], [ %i.k, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit ] ; 3 uses
  %i.av = load ptr, ptr %.sroa.0.017, align 8, !noundef !6 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit14, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.ay, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit14

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit14: ; preds = %.lr.ph, %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !noundef !6 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit15, label %bb.o

bb.o:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit14
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -8 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bc, i64 noundef %i.bd, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit15

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit15: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit14, %bb.o
  %i.be = getelementptr i8, ptr %.sroa.0.017, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.l, align 8, !noundef !6
  %.not = icmp eq ptr %i.be, %i.bf
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14unsafe_libyaml3api17yaml_queue_extend17h15453e27414f8477E(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !6   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !6
end_hunk_0
begin_hunk_1_@_ZN14unsafe_libyaml3api17yaml_token_delete17h3d0b03cb10d54adeE:bb.a
  br i1 %i.ac, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit1, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit1.sink.split
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14unsafe_libyaml3api18yaml_parser_delete17hb77613ec8f376aa3E(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3, i64 noundef 17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 101, i32 noundef 187) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.f, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit: ; preds = %bb.c, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !noundef !6 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3, label %bb.e

bb.e:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.k, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.l, align 8, !noundef !6 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !noundef !6
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3, %.lr.ph
  %i.q = phi ptr [ %i.s, %.lr.ph ], [ %i.n, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3 ] ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 80
  store ptr %i.r, ptr %i.l, align 8
  tail call void @_ZN14unsafe_libyaml3api17yaml_token_delete17h3d0b03cb10d54adeE(ptr noundef %i.q)
  %i.s = load ptr, ptr %i.l, align 8, !noundef !6 ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !noundef !6
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !noundef !6 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %i.z, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4: ; preds = %._crit_edge, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !6 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5, label %bb.g

bb.g:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.ae, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !noundef !6 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6, label %bb.h

bb.h:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.aj, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.al = load ptr, ptr %i.ak, align 8, !noundef !6 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7, label %bb.i

bb.i:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %i.ao, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6, %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.aq = load ptr, ptr %i.ap, align 8, !noundef !6 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8, label %bb.j

bb.j:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.at, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7, %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.aw = load ptr, ptr %i.au, align 8, !noundef !6 ; 2 uses
  %i.ax = load ptr, ptr %i.av, align 8, !noundef !6 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %._crit_edge17, label %.lr.ph16

.lr.ph16:                                         ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10
  %i.az = phi ptr [ %i.bl, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10 ], [ %i.ax, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8 ] ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -16 ; 2 uses
  store ptr %i.ba, ptr %i.av, align 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noundef !6 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !noundef !6 ; 2 uses
  %i.be = icmp eq ptr %i.bb, null
  br i1 %i.be, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9, label %bb.k

bb.k:                                             ; preds = %.lr.ph16
  %i.bf = getelementptr inbounds i8, ptr %i.bb, i64 -8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %i.bg, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9: ; preds = %.lr.ph16, %bb.k
  %i.bh = icmp eq ptr %i.bd, null
  br i1 %i.bh, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10, label %bb.l

bb.l:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9
  %i.bi = getelementptr inbounds i8, ptr %i.bd, i64 -8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef %i.bj, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9, %bb.l
  %i.bk = load ptr, ptr %i.au, align 8, !noundef !6 ; 2 uses
  %i.bl = load ptr, ptr %i.av, align 8, !noundef !6 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %._crit_edge17, label %.lr.ph16

._crit_edge17:                                    ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8
  %.lcssa12 = phi ptr [ %i.aw, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8 ], [ %i.bk, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10 ] ; 2 uses
  %i.bn = icmp eq ptr %.lcssa12, null
  br i1 %i.bn, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11, label %bb.m

bb.m:                                             ; preds = %._crit_edge17
  %i.bo = getelementptr inbounds i8, ptr %.lcssa12, i64 -8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef %i.bp, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit11: ; preds = %._crit_edge17, %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %0, i8 0, i64 480, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !6   ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !noundef !6
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = add i64 %i.e, 4611686018427387904
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit", !prof !4

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit": ; preds = %bb.a
  %i.h = shl nsw i64 %i.e, 1
  %i.i = tail call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %i.a, i64 noundef %i.h) ; 4 uses
  %i.j = load ptr, ptr %2, align 8, !noundef !6
  %i.k = load ptr, ptr %0, align 8, !noundef !6
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = getelementptr i8, ptr %i.i, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.o, i8 0, i64 %i.n, i1 false)
  %i.p = load ptr, ptr %1, align 8, !noundef !6
  %3 = load ptr, ptr %0, align 8, !noundef !6
  %4 = ptrtoint ptr %i.p to i64
  %i.q = ptrtoint ptr %3 to i64
  %i.r = sub i64 %4, %i.q
  %i.s = getelementptr i8, ptr %i.i, i64 %i.r
  store ptr %i.s, ptr %1, align 8
  %i.t = load ptr, ptr %2, align 8, !noundef !6
  %i.u = load ptr, ptr %0, align 8, !noundef !6
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = add i64 %i.x, 4611686018427387904
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.c, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit3", !prof !4

bb.c:                                             ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit"
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit3": ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit"
  %i.aa = shl nsw i64 %i.x, 1
  %i.ab = getelementptr i8, ptr %i.i, i64 %i.aa
  store ptr %i.ab, ptr %2, align 8
  store ptr %i.i, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14unsafe_libyaml3api19yaml_emitter_delete17h0e18793ed747d3d6E(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4, i64 noundef 18, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 101, i32 noundef 317) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.f, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit: ; preds = %bb.c, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !noundef !6 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3, label %bb.e

bb.e:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.k, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.m = load ptr, ptr %i.l, align 8, !noundef !6 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4, label %bb.f

bb.f:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef %i.p, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit3, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.s = load ptr, ptr %i.q, align 8, !noundef !6 ; 2 uses
  %i.t = load ptr, ptr %i.r, align 8, !noundef !6
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4, %.lr.ph
  %i.v = phi ptr [ %i.x, %.lr.ph ], [ %i.s, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4 ] ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 96
  store ptr %i.w, ptr %i.q, align 8
  tail call void @_ZN14unsafe_libyaml3api17yaml_event_delete17h4f01a6edee4be18eE(ptr noundef %i.v)
  %i.x = load ptr, ptr %i.q, align 8, !noundef !6 ; 2 uses
  %i.y = load ptr, ptr %i.r, align 8, !noundef !6
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !6 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.ae, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5: ; preds = %._crit_edge, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i8 0, i64 32, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !noundef !6 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6, label %bb.h

bb.h:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.aj, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit5, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.am = load ptr, ptr %i.ak, align 8, !noundef !6 ; 2 uses
  %i.an = load ptr, ptr %i.al, align 8, !noundef !6 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %._crit_edge16, label %.lr.ph15

.lr.ph15:                                         ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8
  %i.ap = phi ptr [ %i.bb, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8 ], [ %i.an, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6 ] ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -16 ; 2 uses
  store ptr %i.aq, ptr %i.al, align 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noundef !6 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %i.at = load ptr, ptr %i.as, align 8, !noundef !6 ; 2 uses
  %i.au = icmp eq ptr %i.ar, null
  br i1 %i.au, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7, label %bb.i

bb.i:                                             ; preds = %.lr.ph15
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef %i.aw, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7: ; preds = %.lr.ph15, %bb.i
  %i.ax = icmp eq ptr %i.at, null
  br i1 %i.ax, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8, label %bb.j

bb.j:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7
  %i.ay = getelementptr inbounds i8, ptr %i.at, i64 -8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef %i.az, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit7, %bb.j
  %i.ba = load ptr, ptr %i.ak, align 8, !noundef !6 ; 2 uses
  %i.bb = load ptr, ptr %i.al, align 8, !noundef !6 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %._crit_edge16, label %.lr.ph15

._crit_edge16:                                    ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6
  %.lcssa11 = phi ptr [ %i.am, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit6 ], [ %i.ba, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit8 ] ; 2 uses
  %i.bd = icmp eq ptr %.lcssa11, null
  br i1 %i.bd, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9, label %bb.k

bb.k:                                             ; preds = %._crit_edge16
  %i.be = getelementptr inbounds i8, ptr %.lcssa11, i64 -8 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.bf, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9: ; preds = %._crit_edge16, %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.bh = load ptr, ptr %i.bg, align 8, !noundef !6 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10, label %bb.l

bb.l:                                             ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bj, i64 noundef %i.bk, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit10: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit9, %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 0, i64 408, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14unsafe_libyaml3api20yaml_document_delete17h639f02d9704b107cE(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !6   ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5, i64 noundef 19, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 101, i32 noundef 1231) #20
end_hunk_1
begin_hunk_2_@_ZN14unsafe_libyaml7scanner39yaml_parser_fetch_flow_collection_start17hcda76db28976735bE:bb.a
  %.sroa.0.0.i7 = phi i64 [ 3, %bb.x ], [ 1, %bb.s ], [ 2, %bb.t ], [ %..i, %bb.y ] ; 2 uses
  %i.cu = load i64, ptr %i.cn, align 8, !noundef !6 ; 2 uses
  %i.cv = add i64 %i.cu, %.sroa.0.0.i7            ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  br i1 %i.cw, label %bb.v, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i8", !prof !4

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i8": ; preds = %bb.u
  store i64 %i.cv, ptr %i.cn, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !6 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, -1
  br i1 %i.cz, label %bb.w, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit, !prof !4

bb.w:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i8"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.x:                                             ; preds = %bb.t
  %i.da = and i8 %i.cq, -16
  %i.db = icmp eq i8 %i.da, -32
  br i1 %i.db, label %bb.u, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dc = and i8 %i.cq, -8
  %i.dd = icmp eq i8 %i.dc, -16
  %..i = select i1 %i.dd, i64 4, i64 0
  br label %bb.u

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i8"
  %i.de = add nuw i64 %i.cy, 1
  store i64 %i.de, ptr %i.cx, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !noundef !6
  %i.dh = add i64 %i.dg, -1
  store i64 %i.dh, ptr %i.df, align 8
  %i.di = getelementptr i8, ptr %i.cp, i64 %.sroa.0.0.i7
  store ptr %i.di, ptr %i.co, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6, i8 0, i64 28, i1 false)
  %.sroa.6.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.6.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !noundef !6 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !noundef !6
  %i.dn = icmp eq ptr %i.dk, %i.dm
  br i1 %i.dn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call fastcc void @_ZN14unsafe_libyaml3api17yaml_queue_extend17h15453e27414f8477E(ptr noundef nonnull %i.do, ptr noundef nonnull %i.dp, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dl)
  %.pre = load ptr, ptr %i.dj, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit, %bb.z
  %i.dq = phi ptr [ %i.dk, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit ], [ %.pre, %bb.z ] ; 3 uses
  store i32 %1, ptr %i.dq, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.6, i64 52, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  %i.dr = load ptr, ptr %i.dj, align 8, !noundef !6
  %i.ds = getelementptr i8, ptr %i.dr, i64 80
  store ptr %i.ds, ptr %i.dj, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN14unsafe_libyaml7scanner27yaml_parser_save_simple_key17h2cb6eb2aec75a3ffE.exit, %_ZN14unsafe_libyaml7scanner31yaml_parser_increase_flow_level17ha17673b8bda380daE.exit, %bb.aa
  %.sroa.0.0 = phi i1 [ true, %bb.aa ], [ false, %_ZN14unsafe_libyaml7scanner31yaml_parser_increase_flow_level17ha17673b8bda380daE.exit ], [ false, %_ZN14unsafe_libyaml7scanner27yaml_parser_save_simple_key17h2cb6eb2aec75a3ffE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner41yaml_parser_scan_version_directive_number17h905a4f3bee2b8039E(ptr noundef %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner5CACHE17h435fe5f305cc104bE(ptr noundef %0, i64 noundef 1)
  br i1 %i.a, label %.preheader.split, label %.loopexit

.preheader.split:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.split, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit
  %.sroa.03.0 = phi i64 [ %i.j, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit ], [ 0, %.preheader.split ] ; 3 uses
  %.sroa.01.0 = phi i32 [ %i.u, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit ], [ 0, %.preheader.split ] ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !noundef !6
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %or.cond = icmp ult i8 %i.h, 10
  br i1 %or.cond, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %.sroa.03.0, 0
  br i1 %i.i, label %bb.d, label %bb.e

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit": ; preds = %bb.b
  %i.j = add nuw nsw i64 %.sroa.03.0, 1
  %exitcond = icmp eq i64 %.sroa.03.0, 9
  br i1 %exitcond, label %bb.l, label %bb.f

bb.d:                                             ; preds = %bb.c
  store i32 3, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @185, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @187, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  store i32 %.sroa.01.0, ptr %2, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit, %bb.d, %bb.l, %bb.a, %bb.e
  %.sroa.0.1 = phi i1 [ true, %bb.e ], [ false, %bb.a ], [ false, %bb.l ], [ false, %bb.d ], [ false, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit ]
  ret i1 %.sroa.0.1

bb.f:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit"
  %i.o = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.01.0, i32 10) ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 1
  br i1 %i.p, label %bb.g, label %"_ZN53_$LT$i32$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h1e4244e2435ea463E.exit", !prof !4

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h74e3088bddfd46d3E()
  unreachable

"_ZN53_$LT$i32$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h1e4244e2435ea463E.exit": ; preds = %bb.f
  %i.q = extractvalue { i32, i1 } %i.o, 0
  %i.r = zext nneg i8 %i.h to i32
  %i.s = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.q, i32 %i.r) ; 2 uses
  %i.t = extractvalue { i32, i1 } %i.s, 1
  br i1 %i.t, label %bb.h, label %bb.i, !prof !4

bb.h:                                             ; preds = %"_ZN53_$LT$i32$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h1e4244e2435ea463E.exit"
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h74e3088bddfd46d3E()
  unreachable

bb.i:                                             ; preds = %"_ZN53_$LT$i32$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h1e4244e2435ea463E.exit"
  %i.u = extractvalue { i32, i1 } %i.s, 0
  %i.v = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %bb.j, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i", !prof !4

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i": ; preds = %bb.i
  %i.x = add nuw i64 %i.v, 1
  store i64 %i.x, ptr %i.c, align 8
  %i.y = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %bb.k, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit, !prof !4

bb.k:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i"
  %i.aa = add nuw i64 %i.y, 1
  store i64 %i.aa, ptr %i.d, align 8
  %i.ab = load i64, ptr %i.e, align 8, !noundef !6
  %i.ac = add i64 %i.ab, -1
  store i64 %i.ac, ptr %i.e, align 8
  %i.ad = getelementptr i8, ptr %i.f, i64 1
  store ptr %i.ad, ptr %i.b, align 8
  %i.ae = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner5CACHE17h435fe5f305cc104bE(ptr noundef nonnull %0, i64 noundef 1)
  br i1 %i.ae, label %bb.b, label %.loopexit

bb.l:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit"
  store i32 3, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @185, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @188, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14unsafe_libyaml7scanner4READ17he812c9f45329f0f7E(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 23 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %.not = icmp ult ptr %i.c, %i.e
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !noundef !6   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = add i64 %i.i, 4611686018427387904
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i", !prof !4

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i": ; preds = %bb.b
  %i.l = shl nsw i64 %i.i, 1
  %i.m = tail call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %i.f, i64 noundef %i.l) ; 4 uses
  %i.n = load ptr, ptr %i.d, align 8, !noundef !6
  %i.o = load ptr, ptr %1, align 8, !noundef !6
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = getelementptr i8, ptr %i.m, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 0, i64 %i.r, i1 false)
  %i.t = load ptr, ptr %i.a, align 8, !noundef !6
  %2 = load ptr, ptr %1, align 8, !noundef !6
  %3 = ptrtoint ptr %i.t to i64
  %i.u = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.v = sub i64 %3, %i.u
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v     ; 2 uses
  store ptr %i.w, ptr %i.a, align 8
  %4 = load ptr, ptr %i.d, align 8, !noundef !6
  %5 = ptrtoint ptr %4 to i64
  %6 = sub i64 %5, %i.u                           ; 2 uses
  %i.x = add i64 %6, 4611686018427387904
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.d, label %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit, !prof !4

bb.d:                                             ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i"
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit: ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i"
  %i.z = shl nsw i64 %6, 1
  %i.aa = getelementptr i8, ptr %i.m, i64 %i.z
  store ptr %i.aa, ptr %i.d, align 8
  store ptr %i.m, ptr %1, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit
  %i.ab = phi ptr [ %i.b, %bb.a ], [ %i.w, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 15 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !noundef !6
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !6 ; 10 uses
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = and i8 %i.ae, -32
  %i.ah = icmp eq i8 %i.ag, -64
  br i1 %i.ah, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = and i8 %i.ae, -16
  %i.aj = icmp eq i8 %i.ai, -32
  %i.ak = and i8 %i.ae, -8
  %i.al = icmp eq i8 %i.ak, -16
  %. = select i1 %i.al, i64 4, i64 0
  %.sroa.0.0.ph.ph = select i1 %i.aj, i64 3, i64 %. ; 3 uses
  %i.am = and i8 %i.ae, -16
  %i.an = icmp eq i8 %i.am, -32
  br i1 %i.an, label %bb.m, label %bb.n

bb.h:                                             ; preds = %bb.e
  store i8 %i.ae, ptr %i.ab, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.l, %bb.m, %bb.o
  %.sroa.0.028.ph = phi i64 [ 1, %bb.h ], [ 2, %bb.l ], [ %.sroa.0.0.ph.ph, %bb.m ], [ %.sroa.0.0.ph.ph, %bb.o ]
  %i.ao = load ptr, ptr %i.a, align 8, !noundef !6
  %i.ap = getelementptr i8, ptr %i.ao, i64 1
  store ptr %i.ap, ptr %i.a, align 8
  %i.aq = load ptr, ptr %i.ac, align 8, !noundef !6
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  store ptr %i.ar, ptr %i.ac, align 8
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.n
  %.sroa.0.028 = phi i64 [ %.sroa.0.0.ph.ph, %bb.n ], [ %.sroa.0.028.ph, %.sink.split ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noundef !6 ; 2 uses
  %i.au = add i64 %i.at, %.sroa.0.028             ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  br i1 %i.av, label %bb.j, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit", !prof !4

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit": ; preds = %bb.i
  store i64 %i.au, ptr %i.as, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !6 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, -1
  br i1 %i.ay, label %bb.k, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit26", !prof !4

bb.k:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit26": ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit"
  %i.az = add nuw i64 %i.ax, 1
  store i64 %i.az, ptr %i.aw, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !6
  %i.bc = add i64 %i.bb, -1
  store i64 %i.bc, ptr %i.ba, align 8
  ret void

bb.l:                                             ; preds = %bb.f
  store i8 %i.ae, ptr %i.ab, align 1
  %i.bd = load ptr, ptr %i.a, align 8, !noundef !6
  %i.be = getelementptr i8, ptr %i.bd, i64 1
  store ptr %i.be, ptr %i.a, align 8
  %i.bf = load ptr, ptr %i.ac, align 8, !noundef !6
  %i.bg = getelementptr i8, ptr %i.bf, i64 1      ; 2 uses
  store ptr %i.bg, ptr %i.ac, align 8
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !6
  %i.bi = load ptr, ptr %i.a, align 8, !noundef !6
  store i8 %i.bh, ptr %i.bi, align 1
  br label %.sink.split

bb.m:                                             ; preds = %bb.g
  store i8 %i.ae, ptr %i.ab, align 1
  %i.bj = load ptr, ptr %i.a, align 8, !noundef !6
  %i.bk = getelementptr i8, ptr %i.bj, i64 1
  store ptr %i.bk, ptr %i.a, align 8
  %i.bl = load ptr, ptr %i.ac, align 8, !noundef !6
  %i.bm = getelementptr i8, ptr %i.bl, i64 1      ; 2 uses
  store ptr %i.bm, ptr %i.ac, align 8
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !6
  %i.bo = load ptr, ptr %i.a, align 8, !noundef !6
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = load ptr, ptr %i.a, align 8, !noundef !6
  %i.bq = getelementptr i8, ptr %i.bp, i64 1
  store ptr %i.bq, ptr %i.a, align 8
  %i.br = load ptr, ptr %i.ac, align 8, !noundef !6
  %i.bs = getelementptr i8, ptr %i.br, i64 1      ; 2 uses
  store ptr %i.bs, ptr %i.ac, align 8
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !6
  %i.bu = load ptr, ptr %i.a, align 8, !noundef !6
  store i8 %i.bt, ptr %i.bu, align 1
  br label %.sink.split

bb.n:                                             ; preds = %bb.g
  %i.bv = and i8 %i.ae, -8
  %i.bw = icmp eq i8 %i.bv, -16
  br i1 %i.bw, label %bb.o, label %bb.i

bb.o:                                             ; preds = %bb.n
  store i8 %i.ae, ptr %i.ab, align 1
  %i.bx = load ptr, ptr %i.a, align 8, !noundef !6
  %i.by = getelementptr i8, ptr %i.bx, i64 1
  store ptr %i.by, ptr %i.a, align 8
  %i.bz = load ptr, ptr %i.ac, align 8, !noundef !6
  %i.ca = getelementptr i8, ptr %i.bz, i64 1      ; 2 uses
  store ptr %i.ca, ptr %i.ac, align 8
  %i.cb = load i8, ptr %i.ca, align 1, !noundef !6
  %i.cc = load ptr, ptr %i.a, align 8, !noundef !6
  store i8 %i.cb, ptr %i.cc, align 1
  %i.cd = load ptr, ptr %i.a, align 8, !noundef !6
  %i.ce = getelementptr i8, ptr %i.cd, i64 1
  store ptr %i.ce, ptr %i.a, align 8
  %i.cf = load ptr, ptr %i.ac, align 8, !noundef !6
  %i.cg = getelementptr i8, ptr %i.cf, i64 1      ; 2 uses
  store ptr %i.cg, ptr %i.ac, align 8
  %i.ch = load i8, ptr %i.cg, align 1, !noundef !6
  %i.ci = load ptr, ptr %i.a, align 8, !noundef !6
  store i8 %i.ch, ptr %i.ci, align 1
  %i.cj = load ptr, ptr %i.a, align 8, !noundef !6
  %i.ck = getelementptr i8, ptr %i.cj, i64 1
  store ptr %i.ck, ptr %i.a, align 8
  %i.cl = load ptr, ptr %i.ac, align 8, !noundef !6
  %i.cm = getelementptr i8, ptr %i.cl, i64 1      ; 2 uses
  store ptr %i.cm, ptr %i.ac, align 8
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !6
  %i.co = load ptr, ptr %i.a, align 8, !noundef !6
  store i8 %i.cn, ptr %i.co, align 1
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !noundef !6  ; 4 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i8 %i.c, -32
  %i.f = icmp eq i8 %i.e, -64
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.g, %bb.f, %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 3, %bb.f ], [ 1, %bb.a ], [ 2, %bb.b ], [ %., %bb.g ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !6 ; 2 uses
  %i.i = add i64 %i.h, %.sroa.0.0                 ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  br i1 %i.j, label %bb.d, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit", !prof !4

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit": ; preds = %bb.c
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !6 ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.e, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit7", !prof !4

bb.e:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit7": ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit"
  %i.n = add nuw i64 %i.l, 1
  store i64 %i.n, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !6
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.o, align 8
  %i.r = getelementptr i8, ptr %i.b, i64 %.sroa.0.0
  store ptr %i.r, ptr %i.a, align 8
  ret void

bb.f:                                             ; preds = %bb.b
  %i.s = and i8 %i.c, -16
  %i.t = icmp eq i8 %i.s, -32
  br i1 %i.t, label %bb.c, label %bb.g

end_hunk_2
begin_hunk_3_@_ZN14unsafe_libyaml7scanner5CACHE17h435fe5f305cc104bE:bb.a
  %i.hc = load i64, ptr %i.bw, align 8, !noundef !6
  store i32 2, ptr %0, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @80, ptr %i.hd, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hc, ptr %i.he, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.hf, align 8
  br label %_ZN14unsafe_libyaml6reader25yaml_parser_update_buffer17hbbc67c64774c2db6E.exit

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i": ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit139.i", %bb.ar, %bb.al
  %.sroa.082.0.i = phi i64 [ 2, %bb.ar ], [ %.sroa.095.0157160164264.i, %bb.al ], [ 4, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit139.i" ] ; 4 uses
  %.sroa.027.0.i = phi i32 [ %i.fs, %bb.ar ], [ %.sroa.027.1.lcssa.i, %bb.al ], [ %i.gr, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit139.i" ] ; 5 uses
  switch i32 %.sroa.027.0.i, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.thread.i" [
    i32 13, label %bb.bb
    i32 10, label %bb.bb
    i32 9, label %bb.bb
  ]

bb.bb:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.thread.i", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i"
  %.sroa.027.0170.i = phi i32 [ %.sroa.027.0.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" ], [ %.sroa.027.0.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" ], [ %.sroa.027.0.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" ], [ %.sroa.027.0169.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.thread.i" ] ; 13 uses
  %.sroa.082.0167.i = phi i64 [ %.sroa.082.0.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" ], [ %.sroa.082.0.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" ], [ %.sroa.082.0.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" ], [ %.sroa.082.0168.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.thread.i" ] ; 2 uses
  %i.hg = getelementptr i8, ptr %i.cl, i64 %.sroa.082.0167.i
  store ptr %i.hg, ptr %i.bu, align 8
  %i.hh = load i64, ptr %i.bw, align 8, !noundef !6 ; 2 uses
  %i.hi = add i64 %i.hh, %.sroa.082.0167.i        ; 2 uses
  %i.hj = icmp ult i64 %i.hi, %i.hh
  br i1 %i.hj, label %bb.bc, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit142.i", !prof !4

bb.bc:                                            ; preds = %bb.bb
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit142.i": ; preds = %bb.bb
  store i64 %i.hi, ptr %i.bw, align 8
  %i.hk = icmp samesign ult i32 %.sroa.027.0170.i, 128
  br i1 %i.hk, label %bb.bf, label %bb.be

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.thread.i": ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i", %.lr.ph200.i
  %.sroa.027.0169.i = phi i32 [ %.sroa.027.0.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" ], [ %i.cp, %.lr.ph200.i ] ; 7 uses
  %.sroa.082.0168.i = phi i64 [ %.sroa.082.0.i, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.i" ], [ 0, %.lr.ph200.i ]
  %i.hl = add nsw i32 %.sroa.027.0169.i, -32
  %or.cond15.i = icmp ult i32 %i.hl, 95
  %i.hm = icmp eq i32 %.sroa.027.0169.i, 133
  %or.cond17.i = or i1 %i.hm, %or.cond15.i
  %i.hn = add nsw i32 %.sroa.027.0169.i, -160
  %or.cond19.i = icmp ult i32 %i.hn, 55136
  %or.cond135.i = or i1 %or.cond19.i, %or.cond17.i
  %i.ho = add nsw i32 %.sroa.027.0169.i, -57344
  %or.cond21.i = icmp ult i32 %i.ho, 8190
  %or.cond136.i = or i1 %or.cond21.i, %or.cond135.i
  %i.hp = icmp samesign ugt i32 %.sroa.027.0169.i, 65535
  %or.cond137.i = or i1 %i.hp, %or.cond136.i
  br i1 %or.cond137.i, label %bb.bb, label %bb.bd

bb.bd:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit140.thread.i"
  %i.hq = load i64, ptr %i.bw, align 8, !noundef !6
  store i32 2, ptr %0, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @81, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hq, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.027.0169.i, ptr %i.ht, align 8
  br label %_ZN14unsafe_libyaml6reader25yaml_parser_update_buffer17hbbc67c64774c2db6E.exit

bb.be:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit142.i"
  %i.hu = icmp samesign ult i32 %.sroa.027.0170.i, 2048
  br i1 %i.hu, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit143.i", label %bb.bg

bb.bf:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit142.i"
  %i.hv = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 1
  store ptr %i.hw, ptr %i.bl, align 8
  %i.hx = trunc nuw nsw i32 %.sroa.027.0170.i to i8
  store i8 %i.hx, ptr %i.hv, align 1
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.hy = icmp samesign ult i32 %.sroa.027.0170.i, 65536
  %i.hz = load ptr, ptr %i.bl, align 8, !noundef !6 ; 3 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 1
  store ptr %i.ia, ptr %i.bl, align 8
  br i1 %i.hy, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit149.i", label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit145.i"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit143.i": ; preds = %bb.be
  %i.ib = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 1
  store ptr %i.ic, ptr %i.bl, align 8
  %i.id = lshr i32 %.sroa.027.0170.i, 6
  %i.ie = trunc nuw nsw i32 %i.id to i8
  %i.if = or disjoint i8 %i.ie, -64
  store i8 %i.if, ptr %i.ib, align 1
  %i.ig = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 1
  store ptr %i.ih, ptr %i.bl, align 8
  %i.ii = trunc i32 %.sroa.027.0170.i to i8
  %i.ij = and i8 %i.ii, 63
  %i.ik = or disjoint i8 %i.ij, -128
  store i8 %i.ik, ptr %i.ig, align 1
  br label %bb.bh

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit145.i": ; preds = %bb.bg
  %i.il = lshr i32 %.sroa.027.0170.i, 18
  %i.im = trunc nuw nsw i32 %i.il to i8
  %i.in = add nuw nsw i8 %i.im, -16
  store i8 %i.in, ptr %i.hz, align 1
  %i.io = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.ip = getelementptr i8, ptr %i.io, i64 1
  store ptr %i.ip, ptr %i.bl, align 8
  %i.iq = lshr i32 %.sroa.027.0170.i, 12
  %i.ir = trunc i32 %i.iq to i8
  %i.is = and i8 %i.ir, 63
  %i.it = or disjoint i8 %i.is, -128
  store i8 %i.it, ptr %i.io, align 1
  %i.iu = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 1
  store ptr %i.iv, ptr %i.bl, align 8
  %i.iw = lshr i32 %.sroa.027.0170.i, 6
  %i.ix = trunc i32 %i.iw to i8
  %i.iy = and i8 %i.ix, 63
  %i.iz = or disjoint i8 %i.iy, -128
  store i8 %i.iz, ptr %i.iu, align 1
  %i.ja = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.jb = getelementptr i8, ptr %i.ja, i64 1
  store ptr %i.jb, ptr %i.bl, align 8
  %i.jc = trunc i32 %.sroa.027.0170.i to i8
  %i.jd = and i8 %i.jc, 63
  %i.je = or disjoint i8 %i.jd, -128
  store i8 %i.je, ptr %i.ja, align 1
  br label %bb.bh

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit149.i": ; preds = %bb.bg
  %i.jf = lshr i32 %.sroa.027.0170.i, 12
  %i.jg = trunc nuw nsw i32 %i.jf to i8
  %i.jh = or disjoint i8 %i.jg, -32
  store i8 %i.jh, ptr %i.hz, align 1
  %i.ji = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.jj = getelementptr i8, ptr %i.ji, i64 1
  store ptr %i.jj, ptr %i.bl, align 8
  %i.jk = lshr i32 %.sroa.027.0170.i, 6
  %i.jl = trunc i32 %i.jk to i8
  %i.jm = and i8 %i.jl, 63
  %i.jn = or disjoint i8 %i.jm, -128
  store i8 %i.jn, ptr %i.ji, align 1
  %i.jo = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 1
  store ptr %i.jp, ptr %i.bl, align 8
  %i.jq = trunc i32 %.sroa.027.0170.i to i8
  %i.jr = and i8 %i.jq, 63
  %i.js = or disjoint i8 %i.jr, -128
  store i8 %i.js, ptr %i.jo, align 1
  br label %bb.bh

bb.bh:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit149.i", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit145.i", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit143.i", %bb.bf
  %i.jt = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, -1
  br i1 %i.ju, label %bb.bi, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit152.i", !prof !4

bb.bi:                                            ; preds = %bb.bh
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit152.i": ; preds = %bb.bh
  %i.jv = add nuw i64 %i.jt, 1
  store i64 %i.jv, ptr %i.a, align 8
  %i.jw = load ptr, ptr %i.bu, align 8, !noundef !6 ; 2 uses
  %i.jx = load ptr, ptr %i.bv, align 8, !noundef !6 ; 2 uses
  %.not126.i = icmp eq ptr %i.jw, %i.jx
  br i1 %.not126.i, label %.critedge.i, label %.lr.ph200.i

bb.bj:                                            ; preds = %.critedge.i
  %i.jy = load ptr, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 1
  store ptr %i.jz, ptr %i.bl, align 8
  store i8 0, ptr %i.jy, align 1
  %i.ka = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.kb = icmp eq i64 %i.ka, -1
  br i1 %i.kb, label %bb.bk, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit153.i", !prof !4

bb.bk:                                            ; preds = %bb.bj
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit153.i": ; preds = %bb.bj
  %i.kc = add nuw i64 %i.ka, 1
  store i64 %i.kc, ptr %i.a, align 8
  br label %_ZN14unsafe_libyaml6reader25yaml_parser_update_buffer17hbbc67c64774c2db6E.exit

_ZN14unsafe_libyaml6reader25yaml_parser_update_buffer17hbbc67c64774c2db6E.exit: ; preds = %bb.ab, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit153.i", %bb.bd, %bb.ba, %bb.az, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit141.i", %bb.at, %bb.aq, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit138.i", %bb.an, %bb.am, %bb.aj, %bb.aa, %bb.y, %_ZN14unsafe_libyaml6reader30yaml_parser_determine_encoding17h2f180ceaf3ea3ac8E.exit.i, %bb.e, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ false, %_ZN14unsafe_libyaml6reader30yaml_parser_determine_encoding17h2f180ceaf3ea3ac8E.exit.i ], [ false, %bb.aa ], [ true, %bb.e ], [ false, %bb.bd ], [ true, %bb.y ], [ false, %bb.aj ], [ true, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit153.i" ], [ false, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit141.i" ], [ false, %bb.az ], [ false, %bb.at ], [ false, %bb.ba ], [ false, %bb.am ], [ false, %bb.an ], [ false, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit138.i" ], [ false, %bb.aq ], [ false, %bb.ab ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14unsafe_libyaml7scanner9READ_LINE17h88f7fbc974d67c94E(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 17 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %.not = icmp ult ptr %i.c, %i.e
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !noundef !6   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = add i64 %i.i, 4611686018427387904
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i", !prof !4

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i": ; preds = %bb.b
  %i.l = shl nsw i64 %i.i, 1
  %i.m = tail call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %i.f, i64 noundef %i.l) ; 4 uses
  %i.n = load ptr, ptr %i.d, align 8, !noundef !6
  %i.o = load ptr, ptr %1, align 8, !noundef !6
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = getelementptr i8, ptr %i.m, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 0, i64 %i.r, i1 false)
  %i.t = load ptr, ptr %i.a, align 8, !noundef !6
  %2 = load ptr, ptr %1, align 8, !noundef !6
  %3 = ptrtoint ptr %i.t to i64
  %i.u = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.v = sub i64 %3, %i.u
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v     ; 2 uses
  store ptr %i.w, ptr %i.a, align 8
  %4 = load ptr, ptr %i.d, align 8, !noundef !6
  %5 = ptrtoint ptr %4 to i64
  %6 = sub i64 %5, %i.u                           ; 2 uses
  %i.x = add i64 %6, 4611686018427387904
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.d, label %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit, !prof !4

bb.d:                                             ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i"
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit: ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i"
  %i.z = shl nsw i64 %6, 1
  %i.aa = getelementptr i8, ptr %i.m, i64 %i.z
  store ptr %i.aa, ptr %i.d, align 8
  store ptr %i.m, ptr %1, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit
  %i.ab = phi ptr [ %i.b, %bb.a ], [ %i.w, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 13 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !noundef !6 ; 5 uses
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !6
  switch i8 %i.ae, label %.thread21 [
    i8 13, label %bb.f
    i8 -62, label %bb.l
    i8 10, label %.thread
    i8 -30, label %bb.p
  ]

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !noundef !6
  %i.ah = icmp eq i8 %i.ag, 10
  br i1 %i.ah, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  store i8 10, ptr %i.ab, align 1
  %i.ai = load ptr, ptr %i.a, align 8, !noundef !6
  %i.aj = getelementptr i8, ptr %i.ai, i64 1
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = load ptr, ptr %i.ac, align 8, !noundef !6
  %i.al = getelementptr i8, ptr %i.ak, i64 2
  store ptr %i.al, ptr %i.ac, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !6 ; 2 uses
  %i.ao = icmp ugt i64 %i.an, -3
  br i1 %i.ao, label %bb.h, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit", !prof !4

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit": ; preds = %bb.g
  %i.ap = add nuw i64 %i.an, 2
  store i64 %i.ap, ptr %i.am, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !noundef !6 ; 2 uses
  %i.at = icmp eq i64 %i.as, -1
  br i1 %i.at, label %bb.i, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit14", !prof !4

bb.i:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit14": ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit"
  %i.au = add nuw i64 %i.as, 1
  store i64 %i.au, ptr %i.ar, align 8
  br label %.thread21.sink.split

.thread21.sink.split:                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit14", %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit16", %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit18", %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit20"
  %.sink32 = phi i64 [ -1, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit20" ], [ -1, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit18" ], [ -1, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit16" ], [ -2, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit14" ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !noundef !6
  %i.ax = add i64 %i.aw, %.sink32
  store i64 %i.ax, ptr %i.av, align 8
  br label %.thread21

.thread21:                                        ; preds = %.thread21.sink.split, %bb.e, %bb.l, %bb.q, %bb.p
  ret void

.thread:                                          ; preds = %bb.e, %bb.f
  store i8 10, ptr %i.ab, align 1
  %i.ay = load ptr, ptr %i.a, align 8, !noundef !6
  %i.az = getelementptr i8, ptr %i.ay, i64 1
  store ptr %i.az, ptr %i.a, align 8
  %i.ba = load ptr, ptr %i.ac, align 8, !noundef !6
  %i.bb = getelementptr i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %i.ac, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !6 ; 2 uses
  %i.be = icmp eq i64 %i.bd, -1
  br i1 %i.be, label %bb.j, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit15", !prof !4

bb.j:                                             ; preds = %.thread
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit15": ; preds = %.thread
  %i.bf = add nuw i64 %i.bd, 1
  store i64 %i.bf, ptr %i.bc, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !6 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, -1
  br i1 %i.bj, label %bb.k, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit16", !prof !4

bb.k:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit15"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit16": ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit15"
  %i.bk = add nuw i64 %i.bi, 1
  store i64 %i.bk, ptr %i.bh, align 8
  br label %.thread21.sink.split

bb.l:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !6
  %i.bn = icmp eq i8 %i.bm, -123
  br i1 %i.bn, label %bb.m, label %.thread21

bb.m:                                             ; preds = %bb.l
  store i8 10, ptr %i.ab, align 1
  %i.bo = load ptr, ptr %i.a, align 8, !noundef !6
  %i.bp = getelementptr i8, ptr %i.bo, i64 1
  store ptr %i.bp, ptr %i.a, align 8
  %i.bq = load ptr, ptr %i.ac, align 8, !noundef !6
  %i.br = getelementptr i8, ptr %i.bq, i64 2
  store ptr %i.br, ptr %i.ac, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !6 ; 2 uses
  %i.bu = icmp ugt i64 %i.bt, -3
  br i1 %i.bu, label %bb.n, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit17", !prof !4

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit17": ; preds = %bb.m
  %i.bv = add nuw i64 %i.bt, 2
  store i64 %i.bv, ptr %i.bs, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !noundef !6 ; 2 uses
  %i.bz = icmp eq i64 %i.by, -1
  br i1 %i.bz, label %bb.o, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit18", !prof !4

bb.o:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit17"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit18": ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit17"
  %i.ca = add nuw i64 %i.by, 1
  store i64 %i.ca, ptr %i.bx, align 8
  br label %.thread21.sink.split

bb.p:                                             ; preds = %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !noundef !6
  %i.cd = icmp eq i8 %i.cc, -128
  br i1 %i.cd, label %bb.q, label %.thread21

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.cf = load i8, ptr %i.ce, align 1, !noundef !6
  %i.cg = and i8 %i.cf, -2
  %switch = icmp eq i8 %i.cg, -88
  br i1 %switch, label %bb.r, label %.thread21

bb.r:                                             ; preds = %bb.q
  store i8 -30, ptr %i.ab, align 1
  %i.ch = load ptr, ptr %i.a, align 8, !noundef !6
  %i.ci = getelementptr i8, ptr %i.ch, i64 1
  store ptr %i.ci, ptr %i.a, align 8
  %i.cj = load ptr, ptr %i.ac, align 8, !noundef !6
  %i.ck = getelementptr i8, ptr %i.cj, i64 1      ; 2 uses
  store ptr %i.ck, ptr %i.ac, align 8
  %i.cl = load i8, ptr %i.ck, align 1, !noundef !6
  %i.cm = load ptr, ptr %i.a, align 8, !noundef !6
  store i8 %i.cl, ptr %i.cm, align 1
  %i.cn = load ptr, ptr %i.a, align 8, !noundef !6
  %i.co = getelementptr i8, ptr %i.cn, i64 1
  store ptr %i.co, ptr %i.a, align 8
  %i.cp = load ptr, ptr %i.ac, align 8, !noundef !6
  %i.cq = getelementptr i8, ptr %i.cp, i64 1      ; 2 uses
  store ptr %i.cq, ptr %i.ac, align 8
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !6
  %i.cs = load ptr, ptr %i.a, align 8, !noundef !6
  store i8 %i.cr, ptr %i.cs, align 1
  %i.ct = load ptr, ptr %i.a, align 8, !noundef !6
  %i.cu = getelementptr i8, ptr %i.ct, i64 1
  store ptr %i.cu, ptr %i.a, align 8
  %i.cv = load ptr, ptr %i.ac, align 8, !noundef !6
  %i.cw = getelementptr i8, ptr %i.cv, i64 1
  store ptr %i.cw, ptr %i.ac, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !6 ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, -4
  br i1 %i.cz, label %bb.s, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit19", !prof !4

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit19": ; preds = %bb.r
  %i.da = add nuw i64 %i.cy, 3
  store i64 %i.da, ptr %i.cx, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 240
end_hunk_3
