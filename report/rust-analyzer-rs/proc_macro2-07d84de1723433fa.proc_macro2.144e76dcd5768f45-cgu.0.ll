Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/proc_macro2-07d84de1723433fa.proc_macro2.144e76dcd5768f45-cgu.0?download=true
inline.NumInlined: 283
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [75 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/alloc/src/slice.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"J\00\00\00\00\00\00\00\B0\01\00\00\15\00\00\00" }>, align 8
@2 = private unnamed_addr constant [44 x i8] c"assertion failed: self.is_char_boundary(idx)", align 1
@3 = private unnamed_addr constant [45 x i8] c"cannot remove a char from the end of a string", align 1
@4 = private unnamed_addr constant [31 x i8] c"assertion failed: f.is_finite()", align 1
@5 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/proc-macro2-1.0.106/src/lib.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"c\00\00\00\00\00\00\00\EC\04\00\00\09\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"c\00\00\00\00\00\00\00\C8\04\00\00\09\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"c\00\00\00\00\00\00\00\DA\04\00\00\09\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"c\00\00\00\00\00\00\00\B6\04\00\00\09\00\00\00" }>, align 8
@10 = private unnamed_addr constant [48 x i8] c"-unsupported proc macro punctuation character \C0\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"c\00\00\00\00\00\00\00X\03\00\00\0D\00\00\00" }>, align 8
@12 = private unnamed_addr constant [11 x i8] c"(/*ERROR*/)", align 1
@13 = private unnamed_addr constant [2 x i8] c"//", align 1
@14 = private unnamed_addr constant [2 x i8] c"/*", align 1
@15 = private unnamed_addr constant [22 x i8] c"~!@#$%^&*-=+|;:,<.>/?'", align 1
@16 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/proc-macro2-1.0.106/src/parse.rs\00", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\A2\01\00\00\1F\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\9E\01\00\00\1E\00\00\00" }>, align 8
@19 = private unnamed_addr constant [2 x i8] c"b\22", align 1
@20 = private unnamed_addr constant [2 x i8] c"br", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\9A\03\00\00%\00\00\00" }>, align 8
@22 = private unnamed_addr constant [3 x i8] c"doc", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\8F\03\00\00$\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\10\02\00\00\1F\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\0C\02\00\00\1E\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\8B\00\00\00\0C\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\8B\00\00\00 \00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\8E\00\00\00'\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\91\00\00\00=\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\8A\01\00\00\15\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\8E\01\00\00\15\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\92\01\00\00\15\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00M\01\00\00(\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00.\02\00\00\15\00\00\00" }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\002\02\00\00\18\00\00\00" }>, align 8
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\008\02\00\00\15\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\EF\01\00\00\1F\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\EB\01\00\00\1E\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00T\00\00\00\14\00\00\00" }>, align 8
@40 = private unnamed_addr constant [3 x i8] c"///", align 1
@41 = private unnamed_addr constant [4 x i8] c"////", align 1
@42 = private unnamed_addr constant [3 x i8] c"//!", align 1
@43 = private unnamed_addr constant [4 x i8] c"/**/", align 1
@44 = private unnamed_addr constant [3 x i8] c"/**", align 1
@45 = private unnamed_addr constant [4 x i8] c"/***", align 1
@46 = private unnamed_addr constant [3 x i8] c"/*!", align 1
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00t\00\00\00+\00\00\00" }>, align 8
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\C8\01\00\00\15\00\00\00" }>, align 8
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\CD\01\00\00\15\00\00\00" }>, align 8
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\CB\03\00\006\00\00\00" }>, align 8
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\CD\03\00\00\17\00\00\00" }>, align 8
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\CC\03\00\00\1A\00\00\00" }>, align 8
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\C3\03\00\00\17\00\00\00" }>, align 8
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\C2\03\00\00\1A\00\00\00" }>, align 8
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\E1\01\00\00=\00\00\00" }>, align 8
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\D9\03\00\00+\00\00\00" }>, align 8
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\DA\03\00\006\00\00\00" }>, align 8
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\D8\03\00\002\00\00\00" }>, align 8
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00)\03\00\00\14\00\00\00" }>, align 8
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00&\03\00\00\14\00\00\00" }>, align 8
@61 = private unnamed_addr constant [2 x i8] c"b'", align 1
@62 = private unnamed_addr constant [1 x i8] c"'", align 1
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00V\02\00\00\11\00\00\00" }>, align 8
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00R\02\00\00\17\00\00\00" }>, align 8
@65 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00E\02\00\00\11\00\00\00" }>, align 8
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\CA\02\00\00\14\00\00\00" }>, align 8
@67 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00\C7\02\00\00\14\00\00\00" }>, align 8
@68 = private unnamed_addr constant [2 x i8] c"r\22", align 1
@69 = private unnamed_addr constant [3 x i8] c"r#\22", align 1
@70 = private unnamed_addr constant [3 x i8] c"r##", align 1
@71 = private unnamed_addr constant [3 x i8] c"br\22", align 1
@72 = private unnamed_addr constant [3 x i8] c"br#", align 1
@73 = private unnamed_addr constant [2 x i8] c"c\22", align 1
@74 = private unnamed_addr constant [3 x i8] c"cr\22", align 1
@75 = private unnamed_addr constant [3 x i8] c"cr#", align 1
@76 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @68, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @69, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @70, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @19, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @61, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @71, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @72, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @73, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @74, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @75, [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@77 = private unnamed_addr constant [2 x i8] c"r#", align 1
@78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00i\03\00\00(\00\00\00" }>, align 8
@79 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00g\03\00\00\16\00\00\00" }>, align 8
@80 = private unnamed_addr constant [2 x i8] c"0x", align 1
@81 = private unnamed_addr constant [2 x i8] c"0o", align 1
@82 = private unnamed_addr constant [2 x i8] c"0b", align 1
@83 = private unnamed_addr constant [1 x i8] c"\22", align 1
@84 = private unnamed_addr constant [1 x i8] c"r", align 1
@85 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00S\01\00\00'\00\00\00" }>, align 8
@86 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00Q\01\00\00\10\00\00\00" }>, align 8
@87 = private unnamed_addr constant [2 x i8] c"cr", align 1
@88 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00j\02\00\00\11\00\00\00" }>, align 8
@89 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00i\02\00\00\14\00\00\00" }>, align 8
@90 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00[\02\00\00\11\00\00\00" }>, align 8
@91 = private unnamed_addr constant [1 x i8] c"_", align 1
@92 = private unnamed_addr constant [5 x i8] c"super", align 1
@93 = private unnamed_addr constant [4 x i8] c"self", align 1
@94 = private unnamed_addr constant [4 x i8] c"Self", align 1
@95 = private unnamed_addr constant [5 x i8] c"crate", align 1
@96 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"e\00\00\00\00\00\00\00+\01\00\00\17\00\00\00" }>, align 8
@97 = private unnamed_addr constant [5 x i8] c"Alone", align 1
@98 = private unnamed_addr constant [5 x i8] c"Joint", align 1
@99 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1K5DUQUZc67_11proc_macro2, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_strCs1K5DUQUZc67_11proc_macro2, ptr @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_charCs1K5DUQUZc67_11proc_macro2, ptr @_RNvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtCs1K5DUQUZc67_11proc_macro2 }>, align 8
@100 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@101 = private unnamed_addr constant [76 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/alloc/src/string.rs\00", align 1
@102 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @101, [16 x i8] c"K\00\00\00\00\00\00\00\89\0B\00\00\0E\00\00\00" }>, align 8
@103 = private unnamed_addr constant [11 x i8] c"Parenthesis", align 1
@104 = private unnamed_addr constant [5 x i8] c"Brace", align 1
@105 = private unnamed_addr constant [7 x i8] c"Bracket", align 1
@106 = private unnamed_addr constant [4 x i8] c"None", align 1
@107 = private unnamed_addr constant [5 x i8] c"Ident", align 1
@108 = private unnamed_addr constant [3 x i8] c"sym", align 1
@109 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@110 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtCshzWfHUSfYae_4core3fmtNtB5_9ArgumentsNtB5_5Debug3fmt }>, align 8
@111 = private unnamed_addr constant [5 x i8] c"Punct", align 1
@112 = private unnamed_addr constant [4 x i8] c"char", align 1
@113 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsj_NtCshzWfHUSfYae_4core3fmtcNtB5_5Debug3fmt }>, align 8
@114 = private unnamed_addr constant [7 x i8] c"spacing", align 1
@115 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs11_Cs1K5DUQUZc67_11proc_macro2NtB6_7SpacingNtNtCshzWfHUSfYae_4core3fmt5Debug3fmtB6_ }>, align 8
@switch.table._RNvNtCs1K5DUQUZc67_11proc_macro25parse18trailing_backslash = private unnamed_addr constant [24 x i8] [i8 9, i8 10, i8 poison, i8 poison, i8 13, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 32], align 1
@switch.table._RNvNtCs1K5DUQUZc67_11proc_macro25parse7literal = private unnamed_addr constant [38 x i8] c"\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00", align 1
@switch.table._RNvXsT_Cs1K5DUQUZc67_11proc_macro2NtB5_9DelimiterNtNtCshzWfHUSfYae_4core3fmt5Debug3fmtB5_ = private unnamed_addr constant [4 x i8] c"\0B\05\07\04", align 8
@switch.table._RNvXsT_Cs1K5DUQUZc67_11proc_macro2NtB5_9DelimiterNtNtCshzWfHUSfYae_4core3fmt5Debug3fmtB5_.23 = private unnamed_addr constant [4 x ptr] [ptr @103, ptr @104, ptr @105, ptr @106], align 8

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_RINvMNtCs1K5DUQUZc67_11proc_macro25parseNtB3_6Cursor14starts_with_fnNCNvMsn_NtB5_8fallbackNtB1c_7Literal16from_str_checked0EB5_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call zeroext i1 @_RINvMNtCshzWfHUSfYae_4core3stre11starts_withNCNvMsn_NtCs1K5DUQUZc67_11proc_macro28fallbackNtBO_7Literal16from_str_checked0EBQ_(ptr %i.a, i64 %i.c)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc i32 @_RINvNtCs1K5DUQUZc67_11proc_macro25parse11backslash_uNtNtNtCshzWfHUSfYae_4core3str4iter11CharIndicesEB4_(ptr nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = tail call { i64, i32 } @_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %0) #15
  %i.c = extractvalue { i64, i32 } %i.b, 1
  %cond = icmp eq i32 %i.c, 123
  br i1 %cond, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.outer.split.us, %.outer.split, %bb.j, %bb.e, %bb.f, %bb.a, %.split33.us
  %.sroa.0.0 = phi i32 [ -1, %bb.e ], [ %i.s, %.split33.us ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.j ], [ -1, %.outer.split ], [ -1, %.outer.split.us ], [ -1, %bb.i ]
  ret i32 %.sroa.0.0

bb.b:                                             ; preds = %bb.a
  %i.d = tail call align 8 ptr @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectQNtNtNtB8_3str4iter11CharIndicesNtB2_12IntoIterator9into_iterCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %0) #15
  store ptr %i.d, ptr %i.a, align 8
  br label %.outer

.outer:                                           ; preds = %bb.k, %bb.b
  %.sroa.05.0.ph = phi i32 [ %i.u, %bb.k ], [ 0, %bb.b ] ; 2 uses
  %.sroa.08.0.ph = phi i32 [ %i.v, %bb.k ], [ 0, %bb.b ] ; 3 uses
  %.not = icmp eq i32 %.sroa.08.0.ph, 0
  %i.e = call { i64, i32 } @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQNtNtNtBb_3str4iter11CharIndicesNtB5_8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.a) #15
  %i.f = extractvalue { i64, i32 } %i.e, 1        ; 8 uses
  %.not16 = icmp eq i32 %i.f, -1                  ; 2 uses
  br i1 %.not, label %.outer.split, label %.outer.split.us

.outer.split.us:                                  ; preds = %.outer
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.outer.split.us, %bb.f
  %i.g = phi i32 [ %i.l, %bb.f ], [ %i.f, %.outer.split.us ] ; 7 uses
  %i.h = add i32 %i.g, -48
  %or.cond.us = icmp ult i32 %i.h, 10
  br i1 %or.cond.us, label %.split.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = add i32 %i.g, -97
  %or.cond1.us = icmp ult i32 %i.i, 6
  br i1 %or.cond1.us, label %.split27.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add i32 %i.g, -65
  %or.cond2.us = icmp ult i32 %i.j, 6
  br i1 %or.cond2.us, label %.split30.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i32 %i.g, label %.loopexit [
    i32 95, label %bb.f
    i32 125, label %.split33.us
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = call { i64, i32 } @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQNtNtNtBb_3str4iter11CharIndicesNtB5_8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.a) #15
  %i.l = extractvalue { i64, i32 } %i.k, 1        ; 2 uses
  %.not16.us = icmp eq i32 %i.l, -1
  br i1 %.not16.us, label %.loopexit, label %.lr.ph

.outer.split:                                     ; preds = %.outer
  br i1 %.not16, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.outer.split
  %i.m = add i32 %i.f, -48
  %or.cond = icmp ult i32 %i.m, 10
  br i1 %or.cond, label %.split.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = add i32 %i.f, -97
  %or.cond1 = icmp ult i32 %i.n, 6
  br i1 %or.cond1, label %.split27.us, label %bb.i

.split.us:                                        ; preds = %.lr.ph, %bb.g
  %.us-phi = phi i32 [ %i.f, %bb.g ], [ %i.g, %.lr.ph ]
  %1 = add nuw nsw i32 %.us-phi, 208
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.o = add i32 %i.f, -65
  %or.cond2 = icmp ult i32 %i.o, 6
  br i1 %or.cond2, label %.split30.us, label %.loopexit

.split27.us:                                      ; preds = %bb.c, %bb.h
  %.us-phi28 = phi i32 [ %i.f, %bb.h ], [ %i.g, %bb.c ]
  %i.p = add nuw nsw i32 %.us-phi28, 169
  br label %bb.j

.split30.us:                                      ; preds = %bb.d, %bb.i
  %.us-phi31 = phi i32 [ %i.f, %bb.i ], [ %i.g, %bb.d ]
  %i.q = add nuw nsw i32 %.us-phi31, 201
  br label %bb.j

.split33.us:                                      ; preds = %bb.e
  %i.r = call i32 @_RNvNtCshzWfHUSfYae_4core4char8from_u32Cs1K5DUQUZc67_11proc_macro2(i32 %.sroa.05.0.ph) #15
  %i.s = call i32 @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptioncE5ok_orNtNtCs1K5DUQUZc67_11proc_macro25parse6RejectEBU_(i32 %i.r) #15
  br label %.loopexit

bb.j:                                             ; preds = %.split30.us, %.split27.us, %.split.us
  %.sroa.015.0 = phi i32 [ %1, %.split.us ], [ %i.p, %.split27.us ], [ %i.q, %.split30.us ]
  %i.t = icmp eq i32 %.sroa.08.0.ph, 6
  br i1 %i.t, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %2 = shl i32 %.sroa.05.0.ph, 4
  %3 = and i32 %.sroa.015.0, 255
  %i.u = add nuw nsw i32 %3, %2
  %i.v = add nuw nsw i32 %.sroa.08.0.ph, 1
  br label %.outer
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtCs1K5DUQUZc67_11proc_macro25parse16backslash_x_byteINtNtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerate9EnumerateNtNtNtB12_3str4iter5BytesEEB4_(ptr nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  call void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5BytesENtNtNtB8_6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %0) #15
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i8, ptr %i.e, align 8
  %.fr11 = freeze i8 %i.f                         ; 2 uses
  %i.g = add i8 %.fr11, -48
  %or.cond = icmp ult i8 %i.g, 10
  br i1 %or.cond, label %bb.d, label %switch.early.test

switch.early.test:                                ; preds = %bb.b
  switch i8 %.fr11, label %bb.c [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

switch.lookup:                                    ; preds = %switch.early.test10
  %switch.cast = zext nneg i8 %switch.tableidx to i38
  %switch.downshift = lshr i38 4294967232, %switch.cast
  %switch.masked = trunc i38 %switch.downshift to i1
  br label %bb.c

bb.c:                                             ; preds = %switch.early.test10, %switch.lookup, %bb.e, %switch.early.test, %bb.d, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.d ], [ false, %bb.e ], [ true, %switch.early.test ], [ true, %bb.a ], [ %switch.masked, %switch.lookup ], [ true, %switch.early.test10 ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.b
  call void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5BytesENtNtNtB8_6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %0) #15
  %i.h = load i64, ptr %i.a, align 8
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i8, ptr %i.j, align 8
  %.fr12 = freeze i8 %i.k                         ; 2 uses
  %i.l = add i8 %.fr12, -48
  %or.cond3 = icmp ult i8 %i.l, 10
  br i1 %or.cond3, label %bb.c, label %switch.early.test10

switch.early.test10:                              ; preds = %bb.e
  %switch.tableidx = add i8 %.fr12, -65           ; 2 uses
  %i.m = icmp ult i8 %switch.tableidx, 38
  br i1 %i.m, label %switch.lookup, label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCs1K5DUQUZc67_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBM_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.8 = alloca [19 x i8], align 1            ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = tail call { i64, ptr } @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1K5DUQUZc67_11proc_macro2(i64 %2, i64 8, i64 32) #15 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 5 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  store i64 %i.h, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8
  store ptr %i.f, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %2
  store ptr %1, ptr %i.d, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.n = icmp eq i64 %i.h, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %.sroa.7.8..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.8.8..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.sroa.7.8..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.8.8..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.2.039 = phi i32 [ undef, %.lr.ph ], [ %.sroa.2.1, %bb.q ] ; 3 uses
  %i.o = phi i64 [ %i.h, %.lr.ph ], [ %.pr, %bb.q ]
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %.sroa.2.0..sroa_idx, align 8
  %i.q = invoke { i64, ptr } @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCs1K5DUQUZc67_11proc_macro29TokenTreeEENtNtNtB8_6traits8iterator8Iterator4nextB1z_(ptr nonnull align 8 %i.d)
          to label %bb.c unwind label %.loopexit  ; 2 uses

._crit_edge:                                      ; preds = %bb.c, %bb.q, %bb.a
  store i64 %2, ptr %i.k, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  ret void

.loopexit:                                        ; preds = %bb.b, %bb.g, %bb.h, %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.i, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %i.y, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inpNtBH_10ConvertVec6to_vec9DropGuardNtCs1K5DUQUZc67_11proc_macro29TokenTreeNtNtBM_5alloc6GlobalEEB1Z_(ptr nonnull align 8 %i.e) #16
          to label %bb.s unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.r = extractvalue { i64, ptr } %i.q, 0        ; 4 uses
  %i.s = extractvalue { i64, ptr } %i.q, 1        ; 10 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.r, ptr %i.l, align 8
  %i.t = icmp ult i64 %i.r, %i.h
  br i1 %i.t, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.u = load i32, ptr %i.s, align 8, !noalias !12 ; 2 uses
  switch i32 %i.u, label %bb.f [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.k
    i32 3, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  invoke void @_RNvXsF_NtCs1K5DUQUZc67_11proc_macro23impNtB5_5GroupNtNtCshzWfHUSfYae_4core5clone5Clone5cloneB7_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.v) #15
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.g
  %.sroa.3.8.copyload16 = load i32, ptr %i.c, align 8
  %.sroa.7.8.copyload20 = load i8, ptr %.sroa.7.8..sroa_idx19, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.8.8..sroa_idx22, i64 19, i1 false)
  br label %bb.q

bb.h:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12
  invoke void @_RNvXsG_NtCs1K5DUQUZc67_11proc_macro23impNtB5_5IdentNtNtCshzWfHUSfYae_4core5clone5Clone5cloneB7_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.w) #15
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  invoke void @_RNvXs2_NtCs1K5DUQUZc67_11proc_macro26markerNtB5_19ProcMacroAutoTraitsNtNtCshzWfHUSfYae_4core5clone5Clone5cloneB7_(ptr nonnull %i.x)
          to label %_RNvXs15_Cs1K5DUQUZc67_11proc_macro2NtB6_5IdentNtNtCshzWfHUSfYae_4core5clone5Clone5cloneB6_.exit.i unwind label %bb.i, !noalias !13

bb.i:                                             ; preds = %.noexc12
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs1K5DUQUZc67_11proc_macro23imp5IdentEBF_(ptr nonnull align 8 %i.b) #16
          to label %.body unwind label %bb.j, !noalias !13

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17, !noalias !13
  unreachable

_RNvXs15_Cs1K5DUQUZc67_11proc_macro2NtB6_5IdentNtNtCshzWfHUSfYae_4core5clone5Clone5cloneB6_.exit.i: ; preds = %.noexc12
  %.sroa.3.8.copyload15 = load i32, ptr %i.b, align 8
  %.sroa.7.8.copyload18 = load i8, ptr %.sroa.7.8..sroa_idx17, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.8.8..sroa_idx21, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12
  br label %bb.q
end_hunk_0
