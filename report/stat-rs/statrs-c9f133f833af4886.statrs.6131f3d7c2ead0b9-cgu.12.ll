Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.12?download=true
inline.NumInlined: 193
inline.NumDeleted: 118
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [96 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/alloc/src/collections/btree/navigate.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00N\00\00\005\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00O\00\00\00/\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00\16\02\00\00/\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00\22\02\00\004\00\00\00" }>, align 8
@5 = private unnamed_addr constant [97 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/alloc/src/collections/btree/map/entry.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"`\00\00\00\00\00\00\00\97\02\00\00*\00\00\00" }>, align 8
@7 = private unnamed_addr constant [26 x i8] c"src/function/factorial.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\19\00\00\00\00\00\00\00H\00\00\00 \00\00\00" }>, align 8
@9 = private unnamed_addr constant [1368 x i8] c"\00\00\00\00\00\00\F0?\00\00\00\00\00\00\F0?\00\00\00\00\00\00\00@\00\00\00\00\00\00\18@\00\00\00\00\00\008@\00\00\00\00\00\00^@\00\00\00\00\00\80\86@\00\00\00\00\00\B0\B3@\00\00\00\00\00\B0\E3@\00\00\00\00\00&\16A\00\00\00\00\80\AFKA\00\00\00\00\A8\08\83A\00\00\00\00\FC\8C\BCA\00\00\00\C0\8C2\F7A\00\00\00(;L4B\00\00\80uw\07sB\00\00\80uw\07\B3B\00\00\D8\EC\EE7\F4B\00\00s\CA\EC\BE6C\00\90h0\B9\02{C\00ZA\BE\B3\E1\C0C \C6\B5\E9;(\06Dl\F0YaRwND\CE\A4\F85\C3\E5\95D\9A{zhRl\E0D!a?\C3@\A9)E\EB~\A3\9E\84\D9tE\16\F3\D9\E5\87\97\C1Efi=\D2-\C9\0EF\84\A7\87\86Q\E6[F\0C-\1Fn\EC'\AAF\A43\AE\0A\ADV\F9F\A43\AE\0A\ADVIGA\A5\03sb!\9AG\95\DF3\9Ax\C3\EBG\8B\BC\A8\E8\CB]>H\0E\EA\DE\B2\C2\14\91H\A0\BE\D1\1E\01\C0\E3H^\12\99T\01t7Ic\8E\1A\9Fa\95\8CI\FE\98p\03]\DD\E1I\05Dh,\9F\E36JG\D9H\EA\C0\0A\8EJ\FC\F1h\9D9/\E4J\BALp8\EF\C0;K\F3\F5\AE3\A8\83\93K\8D\81K\CAA\0D\ECK$s\8FP\BC\99DL\B6,\D7x\9A\E6\9EL;\BE\84D\8E\A8\F7L\9E\B4\87%\AF{RM\DCG\D0#\1Fu\ADMc:\19M)\EF\07NZ\E4\D83\0E\D2cN\AC\00\BF\FB;\B9\C0N(I\B0\18_\BE\1CO\03@\9A5\93&yO\03a\BD\1B[f\D6O\EB\9F#\91\C2L4Pm\D7\CC]\C3\B6\92P\F6\09\F0'W\8B\F1P~\C9\10\12\CF\B8PQ2C\80\99\083\B0QJ\844\EEx\E4\0FRJ\844\EEx\E4oR.\AB\F6h\052\D0R\87`>\94\95\B30S\0DM1\97\00|\91S\DEa\A4\A0\C0\93\F2S\8391\ADK\07TT\E7\D6m\C5\FA\E7\B5Th\DA\053ZM\18U\B5\95fy\05W{U\C2\02y>B/\DFU\98\F5\1DLR\07BV\CE\1B3q\94 \A5V\05\B1lF\B0\16\09W\FA\C4\BA\14L/nW\08\D0\A1\\\D2d\D2W\CA\BCW\AAs\B46X\FC\AB\ED\94\90a\9CX\D5f>~\BD\F5\01Y\C1\F3\BF\C9\DA\02gY\1E\F0\A4\BD\B3\D7\CDY\94=t\F4\8D\953Z\C9a\AA\88\A0\02\9AZ\B3y\D2\DB\C3y\01[o\1D\D2>\86\C1g[<t0K\0CU\D0[\A3a\8F\18E\B66\\M\A1\89*Q\F0\9F\\\AD\D8=\B4\D9\B4\06]\BCs\8Cy\FCQp]-\18\A0\E0\22\B7\D7]\C1\91\F5\9C}jA^Z\84\FCt\12\DA\A9^Dc\BD\D7\8Dc\13_s\0A\FB\FA\E2b}_\004(\C8\B5\7F\E6_8\18\CF\98\C6fQ`\D8\95\C3N\960\BB`<T&\9AVt%a \8B\D6\02\B5\18\91a\E8G\91P\C3\83\FBal\0Av\B1\0E[fb\8D\D4\92\0D\B2V\D2b\0A0{\E6\96_>c(\FA\AA$\E8c\A9c\12C\F0\DEKl\15d\1D\99\D8\9B8>\82d*G\DCK\F1Z\EFd\B6\05\C9?\DD0[e\FF\E4\CF\97\C1\CA\C7e)\88\05\E8\FE\005fE\ED\A4\06\E3\B4\A2f,-\F8\F7\83\CE\10g\E0\D1q1Ov~g\D7\092c$\D8\EBg\12!r\8BA\ABYh\BF\1A\A4\EF6\DD\C7h\13\D9\A9\80c_6i4\8F\A0\0F,&\A5i~\08\E5\FEa(\14j)\16\F0*\CE^\83jx\95\98\B9\D7\C3\F2j\F7\01?\AB@Sbk\EF\05\92\A8\F3\09\D2k\E3\E1@\C1\DF\E5Al\E3\E1@\C1\DF\E5\B1l\A7c\C3\80\AB\09\22m6q\C6.\D2Q\92m\DD\17\DF\1B\BD\BF\02n\9C\10\BE\04\BBUsnB}\EDR\14\17\E4n!\9F\D0F)\08Uo\D5\07\B0\88\9B.\C6oR\08;A\85\917p\E8.\D1\9F\C09\A9p\92\86M\ACC2\1Bq#0\1C}\95\88\8DqSjk\C0\B1&\00r\1FS\F6\CD\9F\CAqr6D}H\C9\BC\E3r4\F2\FB\DE\E8\0CVszp\DB\FA\85\CE\C8sj\95,\C6\F3\19<t6m\05\07\CD\06\B0tl;\10v\CFg\22u\B5\C4\82\E0\07H\95u\FB8X+\D9\C5\08v\C6b\CB~\DA\07}vC\F7\C9\E0\A1\1F\F1v\A0\D5\EF:\90UdwY\ADrfFN\D8w\8F\F8A\B3,>Mx\7F\F1\88\10\A5\B4\C1xS\E6&,)\945y\82\B6'\80\BAw\AAy\A4\82\18\1B\E5U zHr\A8\97\B2J\94z\DA\8E\92=_]\09{\AEWr\CBq\E7\7F{|[\BE\02v0\F4{\80h~G\B6\B5i|\F2\FA\CC\C5hx\E0||;\FA\0E7;U}%\85lg\CB\88\CB}\DB\CAw\B0<\F6A~?:\9D\A7/\93\B7~\E7\96M\EBT /\7F5\86Adx\AB\A4\7F", align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00\A1\00\00\00$\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00\A6\00\00\00#\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB6_5EntryINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE10and_modifyNCNvMB1i_NtB1i_9Empirical3add0EB1m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !4
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.e = call { ptr, ptr } @_RNvMsS_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.f = extractvalue { ptr, ptr } %i.e, 1        ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !14, !noundef !4
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEE11resize_withNvMs1_BI_BF_6uninitECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 6 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEE8truncateCs8lmMd0ZksV9_6statrs.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 3 uses
  %i.f = load i64, ptr %0, align 8, !range !5, !alias.scope !19, !noundef !4
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEE14extend_trustedINtNtNtNtBN_4iter8adapters4take4TakeINtNtNtB21_7sources11repeat_with10RepeatWithNvMs1_BJ_BG_6uninitEEECs8lmMd0ZksV9_6statrs.exit, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 8, i64 noundef 8)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !20
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEE14extend_trustedINtNtNtNtBN_4iter8adapters4take4TakeINtNtNtB21_7sources11repeat_with10RepeatWithNvMs1_BJ_BG_6uninitEEECs8lmMd0ZksV9_6statrs.exit

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEE14extend_trustedINtNtNtNtBN_4iter8adapters4take4TakeINtNtNtB21_7sources11repeat_with10RepeatWithNvMs1_BJ_BG_6uninitEEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.b, %bb.c
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ]
  %i.j = add i64 %i.i, %i.e
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEE8truncateCs8lmMd0ZksV9_6statrs.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEE8truncateCs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.a, %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEE14extend_trustedINtNtNtNtBN_4iter8adapters4take4TakeINtNtNtB21_7sources11repeat_with10RepeatWithNvMs1_BJ_BG_6uninitEEECs8lmMd0ZksV9_6statrs.exit
  %storemerge = phi i64 [ %i.j, %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEE14extend_trustedINtNtNtNtBN_4iter8adapters4take4TakeINtNtNtB21_7sources11repeat_with10RepeatWithNvMs1_BJ_BG_6uninitEEECs8lmMd0ZksV9_6statrs.exit ], [ %1, %bb.a ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdE8dedup_byNCNvMs5_B5_Bv_5dedup0ECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 7 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvar = phi i64 [ 0, %bb.b ], [ %indvar.next, %bb.e ] ; 3 uses
  %.sroa.0.022 = phi i64 [ 1, %bb.b ], [ %.sroa.5.023, %bb.e ] ; 8 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %.val11 = load double, ptr %i.g, align 8, !noundef !4
  %.val12 = load double, ptr %i.h, align 8, !noundef !4
  %i.i = fcmp oeq double %.val11, %.val12
  %.sroa.5.023 = add nuw i64 %.sroa.0.022, 1      ; 5 uses
  br i1 %i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.j = icmp ult i64 %.sroa.5.023, %i.b
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = sub i64 %i.b, %indvar
  %i.l = add nsw i64 %i.b, -3
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.023
  %i.n = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %.val.prol = load double, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %.val10.prol = load double, ptr %i.o, align 8, !noundef !4
  %i.p = fcmp oeq double %.val.prol, %.val10.prol
  br i1 %i.p, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.prol
  store double %.val.prol, ptr %i.n, align 8
  %i.q = add i64 %.sroa.0.022, 1
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %.lr.ph.prol
  %.sroa.11.1.prol = phi i64 [ %i.q, %bb.d ], [ %.sroa.0.022, %.lr.ph.prol ] ; 2 uses
  %.sroa.5.0.prol = add nuw i64 %.sroa.0.022, 2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.11.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.5.025.unr = phi i64 [ %.sroa.5.023, %.lr.ph.preheader ], [ %.sroa.5.0.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.11.024.unr = phi i64 [ %.sroa.0.022, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.r = icmp eq i64 %i.l, %indvar
  br i1 %i.r, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.023, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.022, %.preheader ], [ %.sroa.11.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.sroa.11.1.1, %bb.h ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.a, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
  %.sroa.5.025 = phi i64 [ %.sroa.5.0.1, %bb.h ], [ %.sroa.5.025.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.11.024 = phi i64 [ %.sroa.11.1.1, %bb.h ], [ %.sroa.11.024.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.025
  %i.t = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.024 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %.val = load double, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %.val10 = load double, ptr %i.u, align 8, !noundef !4
  %i.v = fcmp oeq double %.val, %.val10
  br i1 %i.v, label %.lr.ph.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store double %.val, ptr %i.t, align 8
  %i.w = add i64 %.sroa.11.024, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.f
  %.sroa.11.1 = phi i64 [ %i.w, %bb.f ], [ %.sroa.11.024, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.025
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.1 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %.val.1 = load double, ptr %i.y, align 8, !noundef !4 ; 2 uses
  %.val10.1 = load double, ptr %i.aa, align 8, !noundef !4
  %i.ab = fcmp oeq double %.val.1, %.val10.1
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.1
  store double %.val.1, ptr %i.z, align 8
  %i.ac = add i64 %.sroa.11.1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.1
  %.sroa.11.1.1 = phi i64 [ %i.ac, %bb.g ], [ %.sroa.11.1, %.lr.ph.1 ] ; 2 uses
  %.sroa.5.0.1 = add nuw nsw i64 %.sroa.5.025, 2  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.sroa.5.0.1, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE5rangeB18_TINtNtNtCs3oUPovFnLWP_4core3ops5range5BoundB18_EB2u_EEB1h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !4   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @_RINvMsd_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1l_14LeafOrInternalE30find_leaf_edges_spanning_rangeB1E_TINtNtNtCs3oUPovFnLWP_4core3ops5range5BoundB1E_EB3M_EEB1N_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.54.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_dEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !23, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !23, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_dEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_dEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i unwind label %bb.b, !noalias !23

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit7.i.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit7.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit7.i.i unwind label %bb.c, !noalias !23

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !23
  unreachable

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit7.i.i, %bb.b
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_3vec3VecdEEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.d

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_dEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_3vec3VecdEEECs8lmMd0ZksV9_6statrs.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemINtB5_3VecdENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !range !7, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !8, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecIBv_dEE7reserveCs8lmMd0ZksV9_6statrs.exit.i, !prof !6

bb.b:                                             ; preds = %.noexc
  %i.j = load i64, ptr %i.i, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #16
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.b
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecIBv_dEE7reserveCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %.noexc
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.l = icmp ule i64 %2, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.h, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.o = icmp ugt i64 %2, 1
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecIBv_dEE7reserveCs8lmMd0ZksV9_6statrs.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.q, align 8, !alias.scope !35, !noalias !36, !nonnull !4, !noundef !4
  %i.u = load i64, ptr %i.p, align 8, !alias.scope !35, !noalias !36, !noundef !4 ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.u, 0
  %i.v = shl nuw nsw i64 %i.u, 3
  br i1 %.not.i.i.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i.us
  %.sroa.0.030.i.us = phi ptr [ %i.ab, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i.us ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.029.i.us = phi i64 [ %i.aa, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i.us ], [ 1, %.lr.ph.i ]
  %storemerge28.i.us = phi i64 [ %i.ac, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i.us ], [ 0, %.lr.ph.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !38
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) 0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc14.i.us unwind label %.loopexit.i.split.us, !noalias !34

.noexc14.i.us:                                    ; preds = %.lr.ph.i.split.us
  %i.w = load i64, ptr %i.a, align 8, !range !7, !noalias !38, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = load i64, ptr %i.r, align 8, !range !8, !noalias !38, !noundef !4 ; 2 uses
  br i1 %i.x, label %.split.us, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i.us, !prof !6

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i.us: ; preds = %.noexc14.i.us
  %i.z = load ptr, ptr %i.s, align 8, !noalias !38, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !38
  %i.aa = add nuw i64 %.sroa.03.029.i.us, 1       ; 2 uses
  store i64 %i.y, ptr %.sroa.0.030.i.us, align 8, !noalias !34
  %.sroa.4.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 8
  store ptr %i.z, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !34
  %.sroa.5.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 16
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !34
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 24 ; 2 uses
  %i.ac = add nuw i64 %storemerge28.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %i.aa, %2
  br i1 %exitcond.not.i.us, label %._crit_edge.thread.i, label %.lr.ph.i.split.us

.loopexit.i.split.us:                             ; preds = %.lr.ph.i.split.us
  %lpad.loopexit.i.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecIBv_dEE7reserveCs8lmMd0ZksV9_6statrs.exit.i
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.thread.i

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i
  %.sroa.0.030.i = phi ptr [ %i.ak, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.029.i = phi i64 [ %i.aj, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i ], [ 1, %.lr.ph.i ]
  %storemerge28.i = phi i64 [ %i.al, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i ], [ 0, %.lr.ph.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !38
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %i.u, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc14.i unwind label %.loopexit.i.split, !noalias !34

.noexc14.i:                                       ; preds = %.lr.ph.i.split
  %i.ad = load i64, ptr %i.a, align 8, !range !7, !noalias !38, !noundef !4
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = load i64, ptr %i.r, align 8, !range !8, !noalias !38, !noundef !4 ; 3 uses
end_hunk_0
