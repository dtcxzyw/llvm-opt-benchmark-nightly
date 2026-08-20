inline.NumInlined: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ucs2_strnlen: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ucs2_strnlen ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ucs2_strlen: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ucs2_strlen ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ucs2_strsize: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ucs2_strsize ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ucs2_strscpy: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ucs2_strscpy ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ucs2_strncmp: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ucs2_strncmp ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ucs2_utf8size: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ucs2_utf8size ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ucs2_as_utf8: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ucs2_as_utf8 ; .previous"

@__UNIQUE_ID_addressable_ucs2_strnlen_428 = internal global ptr @ucs2_strnlen, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ucs2_strlen_429 = internal global ptr @ucs2_strlen, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ucs2_strsize_430 = internal global ptr @ucs2_strsize, section ".discard.addressable", align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"lib/ucs2_string.c\00", align 1
@__UNIQUE_ID_addressable_ucs2_strscpy_433 = internal global ptr @ucs2_strscpy, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ucs2_strncmp_434 = internal global ptr @ucs2_strncmp, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ucs2_utf8size_435 = internal global ptr @ucs2_utf8size, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ucs2_as_utf8_436 = internal global ptr @ucs2_as_utf8, section ".discard.addressable", align 8
@__UNIQUE_ID_modinfo_437 = internal constant [45 x i8] c"ucs2_string.description=UCS2 string handling\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_438 = internal constant [33 x i8] c"ucs2_string.file=lib/ucs2_string\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_439 = internal constant [27 x i8] c"ucs2_string.license=GPL v2\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_addressable_ucs2_as_utf8_436, ptr @__UNIQUE_ID_addressable_ucs2_strlen_429, ptr @__UNIQUE_ID_addressable_ucs2_strncmp_434, ptr @__UNIQUE_ID_addressable_ucs2_strnlen_428, ptr @__UNIQUE_ID_addressable_ucs2_strscpy_433, ptr @__UNIQUE_ID_addressable_ucs2_strsize_430, ptr @__UNIQUE_ID_addressable_ucs2_utf8size_435, ptr @__UNIQUE_ID_modinfo_437, ptr @__UNIQUE_ID_modinfo_438, ptr @__UNIQUE_ID_modinfo_439], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local i64 @ucs2_strnlen(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i16, ptr %0, align 2
  %i.b = icmp ne i16 %i.a, 0
  %i.c = icmp ne i64 %1, 0
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %.045 = phi ptr [ %i.e, %.lr.ph ], [ %0, %bb.a ]
  %i.e = getelementptr i8, ptr %.045, i64 2       ; 2 uses
  %i.f = add nuw i64 %.06, 1                      ; 3 uses
  %i.g = load i16, ptr %i.e, align 2
  %i.h = icmp ne i16 %i.g, 0
  %i.i = icmp ult i64 %i.f, %1
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.f, %.lr.ph ]
  ret i64 %.0.lcssa
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local i64 @ucs2_strlen(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i16, ptr %0, align 2
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %ucs2_strnlen.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi i64 [ %i.c, %.lr.ph.i ], [ 0, %bb.a ]
  %.045.i = phi ptr [ %i.b, %.lr.ph.i ], [ %0, %bb.a ]
  %i.b = getelementptr i8, ptr %.045.i, i64 2     ; 2 uses
  %i.c = add nuw i64 %.06.i, 1                    ; 2 uses
  %i.d = load i16, ptr %i.b, align 2
  %.not1 = icmp eq i16 %i.d, 0
  br i1 %.not1, label %ucs2_strnlen.exit, label %.lr.ph.i, !llvm.loop !10

ucs2_strnlen.exit:                                ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.c, %.lr.ph.i ]
  ret i64 %.0.lcssa.i
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local range(i64 0, -1) i64 @ucs2_strsize(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 2 uses
  %i.b = load i16, ptr %0, align 2
  %i.c = icmp ne i16 %i.b, 0
  %i.d = icmp ne i64 %i.a, 0
  %i.e = and i1 %i.d, %i.c
  br i1 %i.e, label %.lr.ph.i, label %ucs2_strnlen.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi i64 [ %i.g, %.lr.ph.i ], [ 0, %bb.a ]
  %.045.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ]
  %i.f = getelementptr i8, ptr %.045.i, i64 2     ; 2 uses
  %i.g = add nuw nsw i64 %.06.i, 1                ; 3 uses
  %i.h = load i16, ptr %i.f, align 2
  %i.i = icmp ne i16 %i.h, 0
  %i.j = icmp samesign ult i64 %i.g, %i.a
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %.lr.ph.i, label %ucs2_strnlen.exit.loopexit, !llvm.loop !10

ucs2_strnlen.exit.loopexit:                       ; preds = %.lr.ph.i
  %i.l = shl nuw i64 %i.g, 1
  br label %ucs2_strnlen.exit

ucs2_strnlen.exit:                                ; preds = %ucs2_strnlen.exit.loopexit, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.l, %ucs2_strnlen.exit.loopexit ]
  ret i64 %.0.lcssa.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 0, -1) i64 @ucs2_strscpy(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 1073741823
  br i1 %i.b, label %bb.c, label %.critedge.preheader, !prof !12

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "431: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 431b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 431) #3, !srcloc !13
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 60, i32 2307, i64 16) #3, !srcloc !14
  tail call void asm sideeffect "432: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 432b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 432) #3, !srcloc !15
  br label %.loopexit

.critedge.preheader:                              ; preds = %bb.b, %.critedge
  %.02023 = phi i64 [ %i.f, %.critedge ], [ 0, %bb.b ] ; 4 uses
  %i.c = getelementptr [2 x i8], ptr %1, i64 %.02023
  %i.d = load i16, ptr %i.c, align 2              ; 2 uses
  %i.e = getelementptr [2 x i8], ptr %0, i64 %.02023
  store i16 %i.d, ptr %i.e, align 2
  %.not.not = icmp eq i16 %i.d, 0
  br i1 %.not.not, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %.critedge.preheader
  %i.f = add nuw i64 %.02023, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %2
  br i1 %exitcond.not, label %bb.d, label %.critedge.preheader, !llvm.loop !16

bb.d:                                             ; preds = %.critedge
  %i.g = getelementptr [2 x i8], ptr %0, i64 %2
  %i.h = getelementptr i8, ptr %i.g, i64 -2
  store i16 0, ptr %i.h, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge.preheader, %bb.c, %bb.a, %bb.d
  %.2 = phi i64 [ -7, %bb.d ], [ -7, %bb.a ], [ -7, %bb.c ], [ %.02023, %.critedge.preheader ]
  ret i64 %.2
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local range(i32 -1, 2) i32 @ucs2_strncmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.016 = phi i64 [ %i.i, %bb.c ], [ %2, %bb.a ]
  %.0915 = phi ptr [ %i.h, %bb.c ], [ %1, %bb.a ] ; 2 uses
  %.01014 = phi ptr [ %i.g, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %i.b = load i16, ptr %.01014, align 2           ; 3 uses
  %i.c = load i16, ptr %.0915, align 2            ; 2 uses
  %i.d = icmp ult i16 %i.b, %i.c
  br i1 %i.d, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = icmp ugt i16 %i.b, %i.c
  br i1 %i.e, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i16 %i.b, 0
  %i.g = getelementptr i8, ptr %.01014, i64 2
  %i.h = getelementptr i8, ptr %.0915, i64 2
  %i.i = add i64 %.016, -1                        ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %or.cond = select i1 %i.f, i1 true, i1 %i.j
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.c, %bb.a
  %.011 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ -1, %.lr.ph ], [ 1, %bb.b ]
  ret i32 %.011
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local i64 @ucs2_utf8size(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i16, ptr %0, align 2                ; 2 uses
  %.not13 = icmp eq i16 %i.a, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.b = phi i16 [ %i.h, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %.015 = phi i64 [ %i.e, %.lr.ph ], [ 0, %bb.a ]
  %.01014 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %i.c = icmp ugt i16 %i.b, 2047
  %i.d = icmp samesign ugt i16 %i.b, 127
  %. = select i1 %i.d, i64 2, i64 1
  %.sink = select i1 %i.c, i64 3, i64 %.
  %i.e = add i64 %.015, %.sink                    ; 2 uses
  %i.f = add i64 %.01014, 1                       ; 2 uses
  %i.g = getelementptr [2 x i8], ptr %0, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2              ; 2 uses
  %.not = icmp eq i16 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.e, %.lr.ph ]
  ret i64 %.0.lcssa
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define dso_local i64 @ucs2_as_utf8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = load i16, ptr %1, align 2
  %i.b = icmp ne i16 %i.a, 0
  %i.c = icmp ne i64 %2, 0
  %i.d = and i1 %i.c, %i.b
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi i64 [ %i.f, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %.045.i = phi ptr [ %i.e, %.lr.ph.i ], [ %1, %bb.a ]
  %i.e = getelementptr i8, ptr %.045.i, i64 2     ; 2 uses
  %i.f = add nuw i64 %.06.i, 1                    ; 2 uses
  %i.g = load i16, ptr %i.e, align 2
  %i.h = icmp ne i16 %i.g, 0
  %i.i = icmp ult i64 %i.f, %2
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph.i, label %.lr.ph, !llvm.loop !10

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.h
  %i.k = phi i64 [ %i.aw, %bb.h ], [ 0, %.lr.ph.i ]
  %.03764 = phi i64 [ %.2.ph, %bb.h ], [ 0, %.lr.ph.i ] ; 8 uses
  %.03863 = phi i32 [ %i.au, %bb.h ], [ 0, %.lr.ph.i ]
  %.03962 = phi i64 [ %.241.ph, %bb.h ], [ %2, %.lr.ph.i ] ; 5 uses
  %i.l = getelementptr [2 x i8], ptr %1, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2              ; 8 uses
  %i.n = icmp ugt i16 %i.m, 2047
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.o = icmp ult i64 %.03962, 3
  br i1 %i.o, label %.thread52, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add i64 %.03962, -3
  %i.q = lshr i16 %i.m, 12
  %i.r = trunc nuw nsw i16 %i.q to i8
  %i.s = or disjoint i8 %i.r, -32
  %i.t = getelementptr i8, ptr %0, i64 %.03764    ; 3 uses
  store i8 %i.s, ptr %i.t, align 1
  %i.u = lshr i16 %i.m, 6
  %i.v = trunc i16 %i.u to i8
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = getelementptr i8, ptr %i.t, i64 1
  store i8 %i.x, ptr %i.y, align 1
  %i.z = trunc i16 %i.m to i8
  %i.aa = and i8 %i.z, 63
  %i.ab = or disjoint i8 %i.aa, -128
  %i.ac = add i64 %.03764, 3
  %i.ad = getelementptr i8, ptr %i.t, i64 2
  store i8 %i.ab, ptr %i.ad, align 1
  br label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.ae = icmp samesign ugt i16 %i.m, 127
  br i1 %i.ae, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.af = icmp ult i64 %.03962, 2
  br i1 %i.af, label %.thread52, label %bb.f

end_hunk_0
