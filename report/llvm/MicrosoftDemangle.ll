Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MicrosoftDemangle?download=true
inline.NumInlined: 916
inline.NumDeleted: 203
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvm11ms_demangle9Demangler22demangleVcallThunkNodeERSt17basic_string_viewIcSt11char_traitsIcEE:bb.a

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.h
  %i.br = load i16, ptr %.sroa.22.0.copyload.i, align 1
  %i.bs = icmp ne i16 %i.br, 16932
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.i, label %.thread37

.thread37:                                        ; preds = %bb.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  store i8 1, ptr %i.bn, align 8, !tbaa !27
  br label %.thread43

bb.i:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i, i64 2 ; 3 uses
  store ptr %i.bv, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !18
  %i.bw = add i64 %.sroa.01.0.copyload.i, -2      ; 3 uses
  store i64 %i.bw, ptr %1, align 8, !tbaa !19
  store i8 0, ptr %i.bn, align 8, !tbaa !27
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %.thread40, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i.i

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i.i: ; preds = %bb.i
  %i.by = load i8, ptr %i.bv, align 1, !tbaa !13  ; 2 uses
  %i.bz = icmp eq i8 %i.by, 63                    ; 2 uses
  br i1 %i.bz, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i, label %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i

_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i: ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i, i64 3 ; 3 uses
  store ptr %i.ca, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !18
  %i.cb = add i64 %.sroa.01.0.copyload.i, -3      ; 3 uses
  store i64 %i.cb, ptr %1, align 8, !tbaa !19
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %.thread40, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.i._ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.i_crit_edge.i

_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.i._ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.i_crit_edge.i: ; preds = %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i
  %.pre.i = load i8, ptr %i.ca, align 1, !tbaa !13
  br label %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i

_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i: ; preds = %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.i._ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.i_crit_edge.i, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i.i
  %i.cd = phi i8 [ %.pre.i, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.i._ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.i_crit_edge.i ], [ %i.by, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload67.i.i = phi i64 [ %i.cb, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.i._ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.i_crit_edge.i ], [ %i.bw, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i.i ] ; 3 uses
  %.sroa.2.0.copyload66.i.i = phi ptr [ %i.ca, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.i._ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.i_crit_edge.i ], [ %i.bv, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i.i ] ; 3 uses
  %i.ce = sext i8 %i.cd to i32
  %isdigittmp.i.i.i = add nsw i32 %i.ce, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.j, label %.lr.ph.i.i

bb.j:                                             ; preds = %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i
  %i.cf = sext i8 %i.cd to i64
  %i.cg = add nsw i64 %i.cf, -47
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload66.i.i, i64 1
  store ptr %i.ch, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !18
  %i.ci = add i64 %.sroa.0.0.copyload67.i.i, -1
  br label %_ZN4llvm11ms_demangle9Demangler14demangleNumberERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i

.lr.ph.i.i:                                       ; preds = %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i, %bb.l
  %.056.i.i = phi i64 [ %i.cq, %bb.l ], [ 0, %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i ] ; 3 uses
  %.02855.i.i = phi i64 [ %i.cp, %bb.l ], [ 0, %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload66.i.i, i64 %.056.i.i
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !13  ; 2 uses
  %i.cl = icmp eq i8 %i.ck, 64
  br i1 %i.cl, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.cm = add i8 %i.ck, -65                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.cm, 16
  br i1 %or.cond.i.i, label %bb.l, label %.thread40

bb.l:                                             ; preds = %bb.k
  %i.cn = shl i64 %.02855.i.i, 4
  %i.co = zext nneg i8 %i.cm to i64
  %i.cp = or disjoint i64 %i.cn, %i.co
  %i.cq = add nuw i64 %.056.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cq, %.sroa.0.0.copyload67.i.i
  br i1 %exitcond.not.i.i, label %.thread40, label %.lr.ph.i.i, !llvm.loop !0

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.cr = add nuw i64 %.056.i.i, 1                ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload66.i.i, i64 %i.cr
  store ptr %i.cs, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !18
  %i.ct = sub nuw i64 %.sroa.0.0.copyload67.i.i, %i.cr
  br label %_ZN4llvm11ms_demangle9Demangler14demangleNumberERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i

_ZN4llvm11ms_demangle9Demangler14demangleNumberERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %bb.m, %bb.j
  %storemerge.i = phi i64 [ %i.ct, %bb.m ], [ %i.ci, %bb.j ]
  %.sroa.0.4.i.i = phi i64 [ %.02855.i.i, %bb.m ], [ %i.cg, %bb.j ] ; 2 uses
  store i64 %storemerge.i, ptr %1, align 8, !tbaa !19
  br i1 %i.bz, label %.thread40, label %bb.n

.thread40:                                        ; preds = %bb.k, %bb.l, %bb.i, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i, %_ZN4llvm11ms_demangle9Demangler14demangleNumberERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %.sroa.0.4.i9.ph.i = phi i64 [ 0, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i ], [ 0, %bb.i ], [ %.sroa.0.4.i.i, %_ZN4llvm11ms_demangle9Demangler14demangleNumberERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i ], [ 0, %bb.l ], [ 0, %bb.k ]
  store i8 1, ptr %i.bn, align 8, !tbaa !27
  store i64 %.sroa.0.4.i9.ph.i, ptr %i.ap, align 8, !tbaa !171
  br label %.thread43

bb.n:                                             ; preds = %_ZN4llvm11ms_demangle9Demangler14demangleNumberERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  store i64 %.sroa.0.4.i.i, ptr %i.ap, align 8, !tbaa !171
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !20 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !21 ; 2 uses
  %i.cu = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.cu, label %.thread45, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i: ; preds = %bb.n
  %i.cv = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !13
  %i.cw = icmp eq i8 %i.cv, 65
  br i1 %i.cw, label %bb.o, label %.thread45

.thread45:                                        ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i, %bb.n
  store i8 1, ptr %i.bn, align 8, !tbaa !27
  br label %.thread43

bb.o:                                             ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 1
  store ptr %i.cx, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18
  %i.cy = add i64 %.sroa.0.0.copyload.i, -1       ; 2 uses
  store i64 %i.cy, ptr %1, align 8, !tbaa !19
  store i8 0, ptr %i.bn, align 8, !tbaa !27
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.bn, align 8, !tbaa !27
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.q:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !18 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !13
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store ptr %i.dd, ptr %i.da, align 8, !tbaa !18
  %i.de = add i64 %.sroa.0.0.copyload.i, -2
  store i64 %i.de, ptr %1, align 8, !tbaa !19
  switch i8 %i.dc, label %bb.aa [
    i8 65, label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit
    i8 66, label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit
    i8 67, label %bb.r
    i8 68, label %bb.r
    i8 69, label %bb.s
    i8 70, label %bb.s
    i8 71, label %bb.t
    i8 72, label %bb.t
    i8 73, label %bb.u
    i8 74, label %bb.u
    i8 77, label %bb.v
    i8 78, label %bb.v
    i8 79, label %bb.w
    i8 80, label %bb.w
    i8 81, label %bb.x
    i8 83, label %bb.y
    i8 87, label %bb.z
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.s:                                             ; preds = %bb.q, %bb.q
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.t:                                             ; preds = %bb.q, %bb.q
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.u:                                             ; preds = %bb.q, %bb.q
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.v:                                             ; preds = %bb.q, %bb.q
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.w:                                             ; preds = %bb.q, %bb.q
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.x:                                             ; preds = %bb.q
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.y:                                             ; preds = %bb.q
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.z:                                             ; preds = %bb.q
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.aa:                                            ; preds = %bb.q
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.p, %bb.q, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %i.df = phi ptr [ null, %bb.p ], [ %.sink11.i, %bb.aa ], [ %.sink11.i, %bb.z ], [ %.sink11.i, %bb.r ], [ %.sink11.i, %bb.s ], [ %.sink11.i, %bb.t ], [ %.sink11.i, %bb.u ], [ %.sink11.i, %bb.v ], [ %.sink11.i, %bb.w ], [ %.sink11.i, %bb.x ], [ %.sink11.i, %bb.y ], [ %.sink11.i, %bb.q ], [ %.sink11.i, %bb.q ]
  %.1.i = phi i8 [ 0, %bb.p ], [ 0, %bb.aa ], [ 11, %bb.z ], [ 2, %bb.r ], [ 3, %bb.s ], [ 4, %bb.t ], [ 5, %bb.u ], [ 6, %bb.v ], [ 7, %bb.w ], [ 8, %bb.x ], [ 10, %bb.y ], [ 1, %bb.q ], [ 1, %bb.q ]
  %i.dg = load ptr, ptr %i.y, align 8, !tbaa !82
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 20
  store i8 %.1.i, ptr %i.dh, align 4, !tbaa !95
  br label %.thread43

.thread43:                                        ; preds = %_ZN4llvm11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit, %.thread37, %.thread40, %.thread45, %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.di = phi ptr [ %i.df, %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ null, %.thread45 ], [ null, %.thread40 ], [ null, %.thread37 ], [ null, %_ZN4llvm11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit ]
  ret ptr %i.di
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm11ms_demangle9Demangler12demangleTypeERSt17basic_string_viewIcSt11char_traitsIcEENS0_19QualifierMangleModeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  switch i32 %2, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.threadthread-pre-split [
    i32 1, label %bb.b
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %3 = load i64, ptr %1, align 8, !tbaa !19       ; 2 uses
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.e, ptr %i.b, align 8, !tbaa !18
  %i.f = add i64 %3, -1                           ; 4 uses
  store i64 %i.f, ptr %1, align 8, !tbaa !19
  switch i8 %i.d, label %bb.f [
    i8 81, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread
    i8 82, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.threadthread-pre-split
    i8 83, label %bb.d
    i8 84, label %bb.e
    i8 65, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread
    i8 66, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.threadthread-pre-split
    i8 67, label %bb.d
    i8 68, label %bb.e
  ]

bb.d:                                             ; preds = %bb.i, %bb.i, %bb.c, %bb.c
  br label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.threadthread-pre-split

bb.e:                                             ; preds = %bb.i, %bb.i, %bb.c, %bb.c
  br label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.threadthread-pre-split

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.g, align 8, !tbaa !27
  br label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread

bb.g:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !20 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !21 ; 3 uses
  %i.h = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.h, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread.thread, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i: ; preds = %bb.g
  %i.i = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !13
  %i.j = icmp eq i8 %i.i, 63
  br i1 %i.j, label %bb.h, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.threadthread-pre-split

bb.h:                                             ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 1 ; 2 uses
  store ptr %i.k, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18
  %i.l = add i64 %.sroa.0.0.copyload.i, -1        ; 2 uses
  store i64 %i.l, ptr %1, align 8, !tbaa !19
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load i8, ptr %i.k, align 1, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 2
  store ptr %i.o, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18
  %i.p = add i64 %.sroa.0.0.copyload.i, -2        ; 4 uses
  store i64 %i.p, ptr %1, align 8, !tbaa !19
  switch i8 %i.n, label %bb.j [
    i8 81, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread
    i8 82, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.threadthread-pre-split
    i8 83, label %bb.d
    i8 84, label %bb.e
    i8 65, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread
    i8 66, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.threadthread-pre-split
    i8 67, label %bb.d
    i8 68, label %bb.e
  ]

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.q, align 8, !tbaa !27
  br label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread

_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.threadthread-pre-split: ; preds = %bb.i, %bb.i, %bb.c, %bb.c, %bb.a, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i, %bb.d, %bb.e
  %.0.ph.ph = phi i8 [ 1, %bb.i ], [ 1, %bb.i ], [ 1, %bb.c ], [ 3, %bb.e ], [ 2, %bb.d ], [ 0, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i ], [ 0, %bb.a ], [ 1, %bb.c ]
  %.pr.pr = load i64, ptr %1, align 8, !tbaa !19
  br label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread

_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread: ; preds = %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.threadthread-pre-split, %bb.j, %bb.i, %bb.i, %bb.f, %bb.c, %bb.c
  %.pr = phi i64 [ %.pr.pr, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.threadthread-pre-split ], [ %i.p, %bb.j ], [ %i.p, %bb.i ], [ %i.f, %bb.c ], [ %i.p, %bb.i ], [ %i.f, %bb.f ], [ %i.f, %bb.c ] ; 6 uses
  %.0.ph = phi i8 [ %.0.ph.ph, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.threadthread-pre-split ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.c ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.c ]
  %i.r = icmp eq i64 %.pr, 0
  br i1 %i.r, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread.thread, label %bb.k

_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread.thread: ; preds = %bb.h, %bb.b, %bb.g, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.s, align 8, !tbaa !27
  br label %bb.ab

bb.k:                                             ; preds = %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.210.0.copyload = load ptr, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !21 ; 11 uses
  %i.t = load i8, ptr %.sroa.210.0.copyload, align 1, !tbaa !13 ; 3 uses
  %i.u = and i8 %i.t, -4
  %switch.i = icmp eq i8 %i.u, 84
  br i1 %switch.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.v = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler17demangleClassTypeERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.y

bb.m:                                             ; preds = %bb.k
  %i.w = icmp ult i64 %.pr, 3
  br i1 %i.w, label %bb.n, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.m
  %i.x = load i16, ptr %.sroa.210.0.copyload, align 1
  %i.y = xor i16 %i.x, 9252
  %i.z = getelementptr i8, ptr %.sroa.210.0.copyload, i64 2
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i16
  %i.ac = xor i16 %i.ab, 81
  %i.ad = or i16 %i.y, %i.ac
  %i.ae = icmp ne i16 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.m
  switch i8 %i.t, label %bb.t [
    i8 65, label %bb.o
    i8 80, label %bb.o
    i8 81, label %bb.o
    i8 82, label %bb.o
    i8 83, label %bb.o
    i8 89, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = tail call noundef zeroext i1 @_ZN4llvm11ms_demangle9Demangler15isMemberPointerESt17basic_string_viewIcSt11char_traitsIcEERb(ptr noundef nonnull align 8 dereferenceable(200) %0, i64 %.pr, ptr nonnull %.sroa.210.0.copyload, ptr noundef nonnull align 1 dereferenceable(1) %i.ah)
  br i1 %i.ai, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aj = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler25demangleMemberPointerTypeERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.y

bb.q:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.ah, align 8, !tbaa !27, !range !57, !noundef !58
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler19demanglePointerTypeERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.y

bb.s:                                             ; preds = %bb.n
  %i.an = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler17demangleArrayTypeERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.y

bb.t:                                             ; preds = %bb.n
  %i.ao = icmp ult i64 %.pr, 6
  br i1 %i.ao, label %bb.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i42

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i42: ; preds = %bb.t
  %i.ap = load i32, ptr %.sroa.210.0.copyload, align 1
  %i.aq = xor i32 %i.ap, 943793188
  %i.ar = getelementptr i8, ptr %.sroa.210.0.copyload, i64 4
  %i.as = load i16, ptr %i.ar, align 1
  %i.at = zext i16 %i.as to i32
  %i.au = xor i32 %i.at, 16448
  %i.av = or i32 %i.aq, %i.au
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread62, label %_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit.a

bb.u:                                             ; preds = %bb.t
  %i.az = icmp samesign ult i64 %.pr, 4
  br i1 %i.az, label %_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread56, label %_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.u
  %4 = load i32, ptr %.sroa.210.0.copyload, align 1
  %5 = icmp ne i32 %4, 910238756
  %6 = zext i1 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread56

_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit.a: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i42
  %i.ba = load i32, ptr %.sroa.210.0.copyload, align 1
  %i.bb = icmp ne i32 %i.ba, 910238756
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread62, label %_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread56

_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread62: ; preds = %_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i42
  %i.be = load i32, ptr %.sroa.210.0.copyload, align 1
  %8 = xor i32 %i.be, 943793188
  %9 = getelementptr i8, ptr %.sroa.210.0.copyload, i64 4
  %10 = load i16, ptr %9, align 1
  %11 = zext i16 %10 to i32
  %12 = xor i32 %11, 16448
  %13 = or i32 %8, %12
  %i.bf = icmp ne i32 %13, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.v, label %_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.v:                                             ; preds = %_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread62
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.210.0.copyload, i64 6
  store ptr %i.bi, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !18
  %i.bj = add i64 %.pr, -6
  store i64 %i.bj, ptr %1, align 8, !tbaa !19
  %i.bk = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler20demangleFunctionTypeERSt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true)
  br label %bb.y

_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread62
  tail call fastcc void @_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEES2_(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 4, ptr nonnull @.str.28)
  %i.bl = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler20demangleFunctionTypeERSt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext false)
  br label %bb.y

_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread56: ; preds = %_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit.a, %bb.u, %_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bm = icmp eq i8 %i.t, 63
  br i1 %i.bm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread56
  %i.bn = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler18demangleCustomTypeERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.y

bb.x:                                             ; preds = %_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread56
  %i.bo = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler21demanglePrimitiveTypeERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.y

bb.y:                                             ; preds = %bb.r, %bb.p, %_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %bb.v, %bb.x, %bb.w, %bb.s, %bb.l
  %.038 = phi ptr [ %i.v, %bb.l ], [ %i.aj, %bb.p ], [ %i.am, %bb.r ], [ %i.an, %bb.s ], [ %i.bk, %bb.v ], [ %i.bl, %_ZL14isFunctionTypeSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %i.bn, %bb.w ], [ %i.bo, %bb.x ] ; 4 uses
  %.not = icmp eq ptr %.038, null
  br i1 %.not, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !27, !range !57, !noundef !58
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bs = getelementptr inbounds nuw i8, ptr %.038, i64 12 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !93
  %i.bu = or i8 %i.bt, %.0.ph
  store i8 %i.bu, ptr %i.bs, align 4, !tbaa !93
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.q, %bb.z, %bb.y, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread.thread
  %.1 = phi ptr [ null, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread.thread ], [ null, %bb.q ], [ %.038, %bb.aa ], [ %.038, %bb.z ], [ null, %bb.y ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL14synthesizeTypeRN4llvm11ms_demangle14ArenaAllocatorEPNS0_8TypeNodeESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i64 %2, ptr %3) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  %i.f = add i64 %i.c, 7
  %i.g = add i64 %i.f, %i.e
  %i.h = and i64 %i.g, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub.i, 40                 ; 2 uses
  store i64 %i.i, ptr %i.d, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !34
  %.not.i = icmp ugt i64 %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = inttoptr i64 %i.h to ptr
  br label %_ZN4llvm11ms_demangle14ArenaAllocator5allocINS0_14TypeSymbolNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23 ; 5 uses
  %i.n = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #23 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !32
  %i.o = load ptr, ptr %0, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.o, ptr %i.p, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 4096, ptr %i.q, align 8, !tbaa !34
  store ptr %i.m, ptr %0, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 40, ptr %i.r, align 8, !tbaa !33
  br label %_ZN4llvm11ms_demangle14ArenaAllocator5allocINS0_14TypeSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvm11ms_demangle14ArenaAllocator5allocINS0_14TypeSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink14.i = phi ptr [ %i.n, %bb.c ], [ %i.l, %bb.b ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  store i32 6, ptr %i.s, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm11ms_demangle14TypeSymbolNodeE, i64 16), ptr %.sink14.i, align 8, !tbaa !43
  store ptr %1, ptr %i.t, align 8, !tbaa !74
  %i.u = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !33
  %i.z = add i64 %i.w, 7
  %i.aa = add i64 %i.z, %i.y
  %i.ab = and i64 %i.aa, -8                       ; 2 uses
  %reass.sub.i.i.i = sub i64 %i.ab, %i.w
  %i.ac = add i64 %reass.sub.i.i.i, 40            ; 2 uses
  store i64 %i.ac, ptr %i.x, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !34
  %.not.i.i.i = icmp ugt i64 %i.ac, %i.ae
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11ms_demangle14ArenaAllocator5allocINS0_14TypeSymbolNodeEJEEEPT_DpOT0_.exit
  %i.af = inttoptr i64 %i.ab to ptr
  br label %_ZL23synthesizeQualifiedNameRN4llvm11ms_demangle14ArenaAllocatorESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %_ZN4llvm11ms_demangle14ArenaAllocator5allocINS0_14TypeSymbolNodeEJEEEPT_DpOT0_.exit
  %i.ag = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23 ; 5 uses
  %i.ah = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #23 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !32
  %i.ai = load ptr, ptr %0, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 4096, ptr %i.ak, align 8, !tbaa !34
  store ptr %i.ag, ptr %0, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 40, ptr %i.al, align 8, !tbaa !33
  br label %_ZL23synthesizeQualifiedNameRN4llvm11ms_demangle14ArenaAllocatorESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZL23synthesizeQualifiedNameRN4llvm11ms_demangle14ArenaAllocatorESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.d, %bb.e
  %.sink11.i.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.af, %bb.d ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sink11.i.i.i, i64 8
  store i32 12, ptr %i.am, align 8, !tbaa !38
  %i.an = getelementptr inbounds nuw i8, ptr %.sink11.i.i.i, i64 16
  store ptr null, ptr %i.an, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink11.i.i.i, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink11.i.i.i, i64 24
  store i64 %2, ptr %i.ao, align 8, !tbaa !20
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sink11.i.i.i, i64 32
  store ptr %3, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !21
  %i.ap = tail call fastcc noundef ptr @_ZL23synthesizeQualifiedNameRN4llvm11ms_demangle14ArenaAllocatorEPNS0_14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.sink11.i.i.i)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !47
  ret ptr %.sink14.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm11ms_demangle9Demangler30demangleFunctionIdentifierCodeERSt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !18
  %i.d = load i64, ptr %1, align 8, !tbaa !19     ; 4 uses
  %i.e = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.e, ptr %1, align 8, !tbaa !19
  switch i64 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i [
    i64 0, label %bb.b
    i64 1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i12
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.f, align 8, !tbaa !27
  br label %_ZN4llvm11ms_demangle9Demangler30demangleFunctionIdentifierCodeERSt17basic_string_viewIcSt11char_traitsIcEENS0_27FunctionIdentifierCodeGroupE.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.a
  %i.g = load i16, ptr %i.c, align 1
  %i.h = icmp ne i16 %i.g, 24415
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i12

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store ptr %i.k, ptr %i.a, align 8, !tbaa !18
  %i.l = add i64 %i.d, -3
  store i64 %i.l, ptr %1, align 8, !tbaa !19
  %i.m = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler30demangleFunctionIdentifierCodeERSt17basic_string_viewIcSt11char_traitsIcEENS0_27FunctionIdentifierCodeGroupE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2)
  br label %_ZN4llvm11ms_demangle9Demangler30demangleFunctionIdentifierCodeERSt17basic_string_viewIcSt11char_traitsIcEENS0_27FunctionIdentifierCodeGroupE.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i12: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.a
  %lhsc = load i8, ptr %i.c, align 1
  %i.n = icmp eq i8 %lhsc, 95
  br i1 %i.n, label %bb.d, label %bb.k

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i12
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !18
  %i.p = add i64 %i.d, -2                         ; 2 uses
  store i64 %i.p, ptr %1, align 8, !tbaa !19
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.r, align 8, !tbaa !27
  br label %_ZN4llvm11ms_demangle9Demangler30demangleFunctionIdentifierCodeERSt17basic_string_viewIcSt11char_traitsIcEENS0_27FunctionIdentifierCodeGroupE.exit

bb.f:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.o, align 1, !tbaa !13    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store ptr %i.t, ptr %i.a, align 8, !tbaa !18
  %i.u = add i64 %i.d, -3
  store i64 %i.u, ptr %1, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.w = add i8 %i.s, -48
  %or.cond.i23.i = icmp ult i8 %i.w, 10           ; 2 uses
  %i.x = add i8 %i.s, -65
  %or.cond5.i24.i = icmp ult i8 %i.x, 26
  %or.cond22.i25.i = or i1 %or.cond.i23.i, %or.cond5.i24.i
  br i1 %or.cond22.i25.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.y, align 8, !tbaa !27
end_hunk_0
begin_hunk_1_@_ZN4llvm11ms_demangle9Demangler14memorizeStringESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.0.0.copyload.us = load i64, ptr %i.h, align 8, !tbaa !20
  %i.i = icmp eq i64 %.sroa.0.0.copyload.us, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread11, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.j = add nuw i64 %.013.us, 1                  ; 2 uses
  %exitcond17.not = icmp eq i64 %i.j, %i.b
  br i1 %exitcond17.not, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %.lr.ph.split.us, !llvm.loop !177

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.c
  %.013 = phi i64 [ %i.p, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.013
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.m, align 8, !tbaa !20
  %i.n = icmp eq i64 %.fr14, %.sroa.0.0.copyload
  br i1 %i.n, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %bb.c

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %.lr.ph.split
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !21
  %bcmp.i = tail call i32 @bcmp(ptr %2, ptr %.sroa.2.0.copyload, i64 %.fr14)
  %i.o = icmp eq i32 %bcmp.i, 0
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread11, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.p = add nuw i64 %.013, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %i.b
  br i1 %exitcond.not, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %.lr.ph.split, !llvm.loop !177

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit: ; preds = %bb.c, %bb.b, %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30   ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !33
  %i.w = add i64 %i.t, 7
  %i.x = add i64 %i.w, %i.v
  %i.y = and i64 %i.x, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.y, %i.t
  %i.z = add i64 %reass.sub.i, 40                 ; 2 uses
  store i64 %i.z, ptr %i.u, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !34
  %.not.i = icmp ugt i64 %i.z, %i.ab
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit
  %i.ac = inttoptr i64 %i.y to ptr
  br label %_ZN4llvm11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit
  %i.ad = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23 ; 5 uses
  %i.ae = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #23 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !32
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 4096, ptr %i.ah, align 8, !tbaa !34
  store ptr %i.ad, ptr %i.q, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 40, ptr %i.ai, align 8, !tbaa !33
  br label %_ZN4llvm11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvm11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink11.i = phi ptr [ %i.ae, %bb.e ], [ %i.ac, %bb.d ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 8
  store i32 12, ptr %i.aj, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 16
  store ptr null, ptr %i.ak, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm11ms_demangle19NamedIdentifierNodeE, i64 16), ptr %.sink11.i, align 8, !tbaa !43
  %i.al = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 24
  store i64 %.fr14, ptr %i.al, align 8, !tbaa !20
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 32
  store ptr %2, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.an = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !53
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  store ptr %.sink11.i, ptr %i.ap, align 8, !tbaa !55
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread11

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread11: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %.lr.ph.split.us, %bb.a, %_ZN4llvm11ms_demangle14ArenaAllocator5allocINS0_19NamedIdentifierNodeEJEEEPT_DpOT0_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN4llvm11ms_demangle9Demangler19demangleBackRefNameERSt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13
  %i.d = sext i8 %i.c to i64
  %i.e = add nsw i64 %i.d, -48                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53
  %.not = icmp ult i64 %i.e, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.h, align 8, !tbaa !27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.i, ptr %i.a, align 8, !tbaa !18
  %i.j = load i64, ptr %1, align 8, !tbaa !19
  %i.k = add i64 %i.j, -1
  store i64 %i.k, ptr %1, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.e
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.n, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm11ms_demangle9Demangler18memorizeIdentifierEPNS0_14IdentifierNodeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvm::itanium_demangle::OutputBuffer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm16itanium_demangle12OutputBufferE, i64 16), ptr %2, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.b, align 8, !tbaa !103
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 -1, ptr %i.c, align 4, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !105
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i8 0, ptr %i.e, align 4, !tbaa !106
  %i.f = load ptr, ptr %1, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef 0) #22
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !107
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !108  ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30   ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !33   ; 2 uses
  %i.q = add i64 %i.p, %i.k                       ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !34
  %.not.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  br label %_ZN4llvm11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit.i

bb.c:                                             ; preds = %bb.a
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.k, i64 4096) ; 2 uses
  %i.u = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23 ; 5 uses
  %i.v = call noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i.i) #23 ; 2 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !32
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sroa.speculated.i.i, ptr %i.y, align 8, !tbaa !34
  store ptr %i.u, ptr %i.l, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.k, ptr %i.z, align 8, !tbaa !33
  br label %_ZN4llvm11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit.i

_ZN4llvm11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZN4llvm11ms_demangle9Demangler10copyStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i, ptr readonly align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZN4llvm11ms_demangle9Demangler10copyStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4llvm11ms_demangle9Demangler10copyStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN4llvm11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit.i, %bb.d
  call void @_ZN4llvm11ms_demangle9Demangler14memorizeStringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(200) %0, i64 %i.k, ptr %.0.i.i)
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !107
  call void @free(ptr noundef %i.aa) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm11ms_demangle9Demangler33demangleTemplateInstantiationNameERSt17basic_string_viewIcSt11char_traitsIcEENS0_19NameBackrefBehaviorE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, i8 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.029 = alloca [10 x ptr], align 8         ; 8 uses
  %.sroa.531 = alloca [10 x ptr], align 8         ; 8 uses
  %.sroa.0 = alloca [10 x ptr], align 8           ; 5 uses
  %.sroa.7 = alloca [10 x ptr], align 8           ; 5 uses
  %.sroa.01.0.copyload.i = load i64, ptr %1, align 8, !tbaa !20 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !21 ; 2 uses
  %i.a = icmp ult i64 %.sroa.01.0.copyload.i, 2
  br i1 %i.a, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEES2_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.a
  %i.b = load i16, ptr %.sroa.22.0.copyload.i, align 1
  %i.c = icmp ne i16 %i.b, 9279
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEES2_.exit

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i, i64 2
  store ptr %i.f, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !18
  %i.g = add i64 %.sroa.01.0.copyload.i, -2
  store i64 %i.g, ptr %1, align 8, !tbaa !19
  br label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEES2_.exit

_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEES2_.exit: ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !tbaa.struct !178
  %.sroa.6.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %.sroa.6.0.copyload11 = load i64, ptr %.sroa.6.0..sroa_idx10, align 8, !tbaa !20 ; 2 uses
  %.sroa.7.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx16, i64 80, i1 false), !tbaa.struct !179
  %.sroa.719.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %.sroa.719.0.copyload21 = load i64, ptr %.sroa.719.0..sroa_idx20, align 8, !tbaa !20 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx10, align 8, !tbaa !20
  store i64 0, ptr %.sroa.719.0..sroa_idx20, align 8, !tbaa !20
  %i.i = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler29demangleUnqualifiedSymbolNameERSt17basic_string_viewIcSt11char_traitsIcEENS0_19NameBackrefBehaviorE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 2) ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !27, !range !57, !noundef !58
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEES2_.exit
  %i.m = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler29demangleTemplateParameterListERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !41
  %.pre = load i8, ptr %i.j, align 8, !tbaa !27, !range !57
  %i.o = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.029)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.531)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.029, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, i64 80, i1 false), !tbaa.struct !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.531, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, i64 80, i1 false), !tbaa.struct !179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.029, i64 80, i1 false), !tbaa.struct !178
  store i64 %.sroa.6.0.copyload11, ptr %.sroa.6.0..sroa_idx10, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.531, i64 80, i1 false), !tbaa.struct !179
  store i64 %.sroa.719.0.copyload21, ptr %.sroa.719.0..sroa_idx20, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.029)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.531)
  br i1 %i.o, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = and i8 %2, 1
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !38
  switch i32 %i.r, label %bb.f [
    i32 7, label %bb.e
    i32 14, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  store i8 1, ptr %i.j, align 8, !tbaa !27
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN4llvm11ms_demangle9Demangler18memorizeIdentifierEPNS0_14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.i)
  br label %bb.g

.critedge:                                        ; preds = %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.029)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.531)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.029, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, i64 80, i1 false), !tbaa.struct !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.531, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, i64 80, i1 false), !tbaa.struct !179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.029, i64 80, i1 false), !tbaa.struct !178
  store i64 %.sroa.6.0.copyload11, ptr %.sroa.6.0..sroa_idx10, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.531, i64 80, i1 false), !tbaa.struct !179
  store i64 %.sroa.719.0.copyload21, ptr %.sroa.719.0..sroa_idx20, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.029)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.531)
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.c, %bb.f, %bb.b, %bb.e
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ %i.i, %bb.f ], [ %i.i, %bb.c ], [ null, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm11ms_demangle9Demangler29demangleUnqualifiedSymbolNameERSt17basic_string_viewIcSt11char_traitsIcEENS0_19NameBackrefBehaviorE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, i8 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.03.0.copyload = load i64, ptr %1, align 8, !tbaa !20 ; 3 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !21 ; 4 uses
  %i.a = icmp eq i64 %.sroa.03.0.copyload, 0
  br i1 %i.a, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread, label %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a
  %i.b = load i8, ptr %.sroa.24.0.copyload, align 1, !tbaa !13 ; 2 uses
  %i.c = sext i8 %i.b to i32
  %isdigittmp.i = add nsw i32 %i.c, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.b, label %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.b:                                             ; preds = %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.d = sext i8 %i.b to i64
  %i.e = add nsw i64 %i.d, -48                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53
  %.not.i = icmp ult i64 %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.h, align 8, !tbaa !27
  br label %_ZN4llvm11ms_demangle9Demangler19demangleBackRefNameERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.24.0.copyload, i64 1
  store ptr %i.i, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !18
  %i.j = add i64 %.sroa.03.0.copyload, -1
  store i64 %i.j, ptr %1, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.e
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55
  br label %_ZN4llvm11ms_demangle9Demangler19demangleBackRefNameERSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.n = icmp eq i64 %.sroa.03.0.copyload, 1
  br i1 %i.n, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %i.o = load i16, ptr %.sroa.24.0.copyload, align 1
  %i.p = icmp ne i16 %i.o, 9279
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.s = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler33demangleTemplateInstantiationNameERSt17basic_string_viewIcSt11char_traitsIcEENS0_19NameBackrefBehaviorE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext %2)
  br label %_ZN4llvm11ms_demangle9Demangler19demangleBackRefNameERSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit: ; preds = %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.t = load i8, ptr %.sroa.24.0.copyload, align 1, !tbaa !13
  %i.u = icmp eq i8 %i.t, 63
  br i1 %i.u, label %bb.e, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread

bb.e:                                             ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit
  %i.v = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler30demangleFunctionIdentifierCodeERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN4llvm11ms_demangle9Demangler19demangleBackRefNameERSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread: ; preds = %bb.a, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit
  %i.w = and i8 %2, 2
  %i.x = icmp ne i8 %i.w, 0
  %i.y = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler18demangleSimpleNameERSt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %i.x)
  br label %_ZN4llvm11ms_demangle9Demangler19demangleBackRefNameERSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4llvm11ms_demangle9Demangler19demangleBackRefNameERSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.d, %bb.c, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread, %bb.e, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit
  %.0 = phi ptr [ %i.y, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread ], [ %i.s, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit ], [ %i.v, %bb.e ], [ null, %bb.c ], [ %i.m, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm11ms_demangle9Demangler29demangleTemplateParameterListERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !118
  %.sroa.261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 43 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %.outer

.outer:                                           ; preds = %bb.cd, %bb.a
  %.0111.ph = phi i64 [ %i.ar, %bb.cd ], [ 0, %bb.a ] ; 2 uses
  %.0108.ph = phi ptr [ %i.se, %bb.cd ], [ %i.a, %bb.a ]
  %.promoted = load i64, ptr %1, align 8, !tbaa !20 ; 2 uses
  %i.f = icmp eq i64 %.promoted, 0
  br i1 %i.f, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread.thread, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.preheader

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.preheader: ; preds = %.outer
  %.sroa.261.0..sroa_idx.promoted = load ptr, ptr %.sroa.261.0..sroa_idx, align 8, !tbaa !21
  br label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit: ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.preheader, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEES2_.exit
  %i.g = phi i64 [ %i.ap, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEES2_.exit ], [ %.promoted, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.preheader ] ; 5 uses
  %.sroa.22.0.copyload.i137344612 = phi ptr [ %i.ao, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEES2_.exit ], [ %.sroa.261.0..sroa_idx.promoted, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.preheader ] ; 9 uses
  %i.h = load i8, ptr %.sroa.22.0.copyload.i137344612, align 1, !tbaa !13
  %i.i = icmp eq i8 %i.h, 64
  br i1 %i.i, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread: ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit
  %i.j = icmp eq i64 %i.g, 1
  br i1 %i.j, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread
  %i.k = load i16, ptr %.sroa.22.0.copyload.i137344612, align 1
  %i.l = icmp ne i16 %i.k, 21284
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEES2_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.o = icmp ult i64 %i.g, 3
  br i1 %i.o, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i122

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i122: ; preds = %bb.b
  %i.p = load i16, ptr %.sroa.22.0.copyload.i137344612, align 1
  %i.q = xor i16 %i.p, 9252
  %i.r = getelementptr i8, ptr %.sroa.22.0.copyload.i137344612, i64 2
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i16
  %i.u = xor i16 %i.t, 86
  %i.v = or i16 %i.q, %i.u
  %i.w = icmp ne i16 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEES2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i122
  %i.z = icmp eq i64 %i.g, 3
  br i1 %i.z, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i138, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i130

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i130: ; preds = %bb.c
  %i.aa = load i32, ptr %.sroa.22.0.copyload.i137344612, align 1
  %i.ab = icmp ne i32 %i.aa, 1445209124
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEES2_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i138

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i138: ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i130
  %i.ae = load i16, ptr %.sroa.22.0.copyload.i137344612, align 1
  %i.af = xor i16 %i.ae, 9252
  %i.ag = getelementptr i8, ptr %.sroa.22.0.copyload.i137344612, i64 2
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i16
  %i.aj = xor i16 %i.ai, 90
  %i.ak = or i16 %i.af, %i.aj
  %i.al = icmp ne i16 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEES2_.exit, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread.thread

_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEES2_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i138, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i130, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i122, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.sink491 = phi i64 [ 4, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i130 ], [ 3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i122 ], [ 2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ 3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i138 ]
  %.sink490 = phi i64 [ -4, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i130 ], [ -3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i122 ], [ -2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ -3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i138 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i137344612, i64 %.sink491 ; 2 uses
  store ptr %i.ao, ptr %.sroa.261.0..sroa_idx, align 8, !tbaa !18
  %i.ap = add i64 %.sink490, %i.g                 ; 3 uses
  store i64 %i.ap, ptr %1, align 8, !tbaa !19
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread.thread, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit, !llvm.loop !180

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i138, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEES2_.exit, %bb.b, %.outer
  %i.ar = add i64 %.0111.ph, 1
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !30  ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !32
  %i.au = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !33
  %i.ax = add i64 %i.au, 7
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = and i64 %i.ay, -8                       ; 2 uses
  %reass.sub.i = sub i64 %i.az, %i.au
  %i.ba = add i64 %reass.sub.i, 16                ; 2 uses
  store i64 %i.ba, ptr %i.av, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !34
  %.not.i = icmp ugt i64 %i.ba, %i.bc
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread.thread
  %i.bd = inttoptr i64 %i.az to ptr
  br label %_ZN4llvm11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.thread.thread
  %i.be = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23 ; 5 uses
  %i.bf = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #23 ; 2 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !32
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 4096, ptr %i.bi, align 8, !tbaa !34
  store ptr %i.be, ptr %i.b, align 8, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 16, ptr %i.bj, align 8, !tbaa !33
  br label %_ZN4llvm11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit
end_hunk_1
begin_hunk_2_@_ZN4llvm11ms_demangle9Demangler30demangleLocallyScopedNamePieceERSt17basic_string_viewIcSt11char_traitsIcEE:bb.a

_ZN4llvm16itanium_demangle12OutputBufferlsEc.exit25: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i17, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i22
  %.pre-phi.i.i20 = phi i64 [ %.pre3.i.i24, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i22 ], [ %i.bt, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i17 ]
  %i.cb = phi i64 [ %.pre2.i.i23, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i22 ], [ %i.bs, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i17 ]
  %i.cc = phi ptr [ %i.bz, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i22 ], [ %.pre.i.i19, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i17 ]
  store i64 %.pre-phi.i.i20, ptr %i.bm, align 8, !tbaa !108
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cb
  store i8 39, ptr %i.cd, align 1, !tbaa !13
  %i.ce = load i64, ptr %i.bm, align 8, !tbaa !108 ; 3 uses
  %i.cf = add i64 %i.ce, 3
  %i.cg = load i64, ptr %i.bn, align 8, !tbaa !122 ; 2 uses
  %i.ch = icmp ugt i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.m, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i26

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i26: ; preds = %_ZN4llvm16itanium_demangle12OutputBufferlsEc.exit25
  %.pre.i.i28 = load ptr, ptr %i.bh, align 8, !tbaa !107
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i

bb.m:                                             ; preds = %_ZN4llvm16itanium_demangle12OutputBufferlsEc.exit25
  %i.ci = add i64 %i.ce, 995
  %i.cj = shl i64 %i.cg, 1
  %spec.select.i.i.i29 = call i64 @llvm.umax.i64(i64 %i.cj, i64 %i.ci) ; 2 uses
  store i64 %spec.select.i.i.i29, ptr %i.bn, align 8, !tbaa !122
  %i.ck = load ptr, ptr %i.bh, align 8, !tbaa !107
  %i.cl = call ptr @realloc(ptr noundef %i.ck, i64 noundef %spec.select.i.i.i29) #24 ; 3 uses
  store ptr %i.cl, ptr %i.bh, align 8, !tbaa !107
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.n, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i: ; preds = %bb.m
  %.pre5.i.i = load i64, ptr %i.bm, align 8, !tbaa !108
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @abort() #25
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i26
  %i.cn = phi i64 [ %i.ce, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i26 ], [ %.pre5.i.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i ]
  %i.co = phi ptr [ %.pre.i.i28, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i26 ], [ %i.cl, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cp, ptr noundef nonnull align 1 dereferenceable(3) @.str.24, i64 3, i1 false)
  %i.cq = load i64, ptr %i.bm, align 8, !tbaa !108
  %i.cr = add i64 %i.cq, 3                        ; 4 uses
  store i64 %i.cr, ptr %i.bm, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i
  %.08.i.i.i = phi i64 [ %.sroa.0.4.i, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i ], [ %i.cv, %bb.o ] ; 3 uses
  %.0.idx.i.i.i = phi i64 [ 21, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i ], [ %.0.add.i.i.i, %bb.o ] ; 2 uses
  %i.cs = urem i64 %.08.i.i.i, 10
  %i.ct = trunc nuw nsw i64 %i.cs to i8
  %i.cu = or disjoint i8 %i.ct, 48
  %.0.add.i.i.i = add nsw i64 %.0.idx.i.i.i, -1   ; 4 uses
  %.ptr.i.i.i = getelementptr inbounds i8, ptr %2, i64 %.0.add.i.i.i
  store i8 %i.cu, ptr %.ptr.i.i.i, align 1, !tbaa !13
  %i.cv = udiv i64 %.08.i.i.i, 10
  %.not.i.i.i = icmp ult i64 %.08.i.i.i, 10
  br i1 %.not.i.i.i, label %bb.p, label %bb.o, !llvm.loop !194

bb.p:                                             ; preds = %bb.o
  %.ptr.i.i.i.le = getelementptr inbounds i8, ptr %2, i64 %.0.add.i.i.i
  %gepdiff.i.i.i = sub nsw i64 22, %.0.idx.i.i.i  ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.0.add.i.i.i, 21
  br i1 %.not.i.i.i.i, label %_ZN4llvm16itanium_demangle12OutputBufferlsEm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = add i64 %i.cr, %gepdiff.i.i.i           ; 2 uses
  %i.cx = load i64, ptr %i.bn, align 8, !tbaa !122 ; 2 uses
  %i.cy = icmp ugt i64 %i.cw, %i.cx
  br i1 %i.cy, label %bb.r, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i.i.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i.i.i: ; preds = %bb.q
  %.pre.i.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !107
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.cz = add i64 %i.cw, 992
  %i.da = shl i64 %i.cx, 1
  %spec.select.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cz) ; 2 uses
  store i64 %spec.select.i.i.i.i.i, ptr %i.bn, align 8, !tbaa !122
  %i.db = load ptr, ptr %i.bh, align 8, !tbaa !107
  %i.dc = call ptr @realloc(ptr noundef %i.db, i64 noundef %spec.select.i.i.i.i.i) #24 ; 3 uses
  store ptr %i.dc, ptr %i.bh, align 8, !tbaa !107
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.s, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i.i.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i.i.i: ; preds = %bb.r
  %.pre5.i.i.i.i = load i64, ptr %i.bm, align 8, !tbaa !108
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  call void @abort() #25
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i.i.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i.i.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i.i.i
  %i.de = phi i64 [ %i.cr, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i.i.i ], [ %.pre5.i.i.i.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i.i.i ]
  %i.df = phi ptr [ %.pre.i.i.i.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i.i.i ], [ %i.dc, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i.i.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.de
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dg, ptr nonnull align 1 %.ptr.i.i.i.le, i64 %gepdiff.i.i.i, i1 false)
  %i.dh = load i64, ptr %i.bm, align 8, !tbaa !108
  %i.di = add i64 %i.dh, %gepdiff.i.i.i           ; 2 uses
  store i64 %i.di, ptr %i.bm, align 8, !tbaa !108
  br label %_ZN4llvm16itanium_demangle12OutputBufferlsEm.exit

_ZN4llvm16itanium_demangle12OutputBufferlsEm.exit: ; preds = %bb.p, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i.i.i
  %i.dj = phi i64 [ %i.cr, %bb.p ], [ %i.di, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.dk = add i64 %i.dj, 1
  %i.dl = load i64, ptr %i.bn, align 8, !tbaa !122 ; 2 uses
  %i.dm = icmp ugt i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.t, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i31

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i31: ; preds = %_ZN4llvm16itanium_demangle12OutputBufferlsEm.exit
  %.pre.i.i33 = load ptr, ptr %i.bh, align 8, !tbaa !107
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i34

bb.t:                                             ; preds = %_ZN4llvm16itanium_demangle12OutputBufferlsEm.exit
  %i.dn = add i64 %i.dj, 993
  %i.do = shl i64 %i.dl, 1
  %spec.select.i.i.i35 = call i64 @llvm.umax.i64(i64 %i.do, i64 %i.dn) ; 2 uses
  store i64 %spec.select.i.i.i35, ptr %i.bn, align 8, !tbaa !122
  %i.dp = load ptr, ptr %i.bh, align 8, !tbaa !107
  %i.dq = call ptr @realloc(ptr noundef %i.dp, i64 noundef %spec.select.i.i.i35) #24 ; 3 uses
  store ptr %i.dq, ptr %i.bh, align 8, !tbaa !107
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.u, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i36

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i36: ; preds = %bb.t
  %.pre5.i.i37 = load i64, ptr %i.bm, align 8, !tbaa !108
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i34

bb.u:                                             ; preds = %bb.t
  call void @abort() #25
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i34: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i36, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i31
  %i.ds = phi i64 [ %i.dj, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i31 ], [ %.pre5.i.i37, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i36 ]
  %i.dt = phi ptr [ %.pre.i.i33, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i31 ], [ %i.dq, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i36 ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ds
  store i8 39, ptr %i.du, align 1
  %i.dv = load i64, ptr %i.bm, align 8, !tbaa !108
  %i.dw = add i64 %i.dv, 1                        ; 7 uses
  store i64 %i.dw, ptr %i.bm, align 8, !tbaa !108
  %i.dx = load ptr, ptr %i.bh, align 8, !tbaa !107
  %i.dy = load ptr, ptr %i.a, align 8, !tbaa !30  ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !33 ; 2 uses
  %i.ec = add i64 %i.eb, %i.dw                    ; 2 uses
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !33
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !34
  %.not.i.i41 = icmp ugt i64 %i.ec, %i.ee
  br i1 %.not.i.i41, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i34
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.eb
  br label %_ZN4llvm11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit.i

bb.w:                                             ; preds = %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i34
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dw, i64 4096) ; 2 uses
  %i.eg = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23 ; 5 uses
  %i.eh = call noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i.i) #23 ; 2 uses
  store ptr %i.eh, ptr %i.eg, align 8, !tbaa !32
  %i.ei = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !35
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i64 %.sroa.speculated.i.i, ptr %i.ek, align 8, !tbaa !34
  store ptr %i.eg, ptr %i.a, align 8, !tbaa !30
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i64 %i.dw, ptr %i.el, align 8, !tbaa !33
  br label %_ZN4llvm11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit.i

_ZN4llvm11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit.i: ; preds = %bb.w, %bb.v
  %.0.i.i = phi ptr [ %i.ef, %bb.v ], [ %i.eh, %bb.w ] ; 2 uses
  %.not.i42 = icmp eq i64 %i.dw, 0
  br i1 %.not.i42, label %_ZN4llvm11ms_demangle9Demangler10copyStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i, ptr readonly align 1 %i.dx, i64 %i.dw, i1 false)
  br label %_ZN4llvm11ms_demangle9Demangler10copyStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4llvm11ms_demangle9Demangler10copyStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN4llvm11ms_demangle14ArenaAllocator20allocUnalignedBufferEm.exit.i, %bb.x
  store i64 %i.dw, ptr %i.v, align 8, !tbaa !20
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 32
  store ptr %.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  %i.em = load ptr, ptr %i.bh, align 8, !tbaa !107
  call void @free(ptr noundef %i.em) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.y

bb.y:                                             ; preds = %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit16, %_ZN4llvm11ms_demangle9Demangler10copyStringESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.0 = phi ptr [ %.sink11.i, %_ZN4llvm11ms_demangle9Demangler10copyStringESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ null, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit16 ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm11ms_demangle9Demangler27demangleUnqualifiedTypeNameERSt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 8, !tbaa !20 ; 3 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !21 ; 3 uses
  %i.a = icmp eq i64 %.sroa.01.0.copyload, 0
  br i1 %i.a, label %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread, label %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a
  %i.b = load i8, ptr %.sroa.22.0.copyload, align 1, !tbaa !13 ; 2 uses
  %i.c = sext i8 %i.b to i32
  %isdigittmp.i = add nsw i32 %i.c, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.b, label %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.b:                                             ; preds = %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.d = sext i8 %i.b to i64
  %i.e = add nsw i64 %i.d, -48                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53
  %.not.i = icmp ult i64 %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.h, align 8, !tbaa !27
  br label %_ZN4llvm11ms_demangle9Demangler19demangleBackRefNameERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 1
  store ptr %i.i, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !18
  %i.j = add i64 %.sroa.01.0.copyload, -1
  store i64 %i.j, ptr %1, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.e
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55
  br label %_ZN4llvm11ms_demangle9Demangler19demangleBackRefNameERSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.n = icmp eq i64 %.sroa.01.0.copyload, 1
  br i1 %i.n, label %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %i.o = load i16, ptr %.sroa.22.0.copyload, align 1
  %i.p = icmp ne i16 %i.o, 9279
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit, label %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.s = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler33demangleTemplateInstantiationNameERSt17basic_string_viewIcSt11char_traitsIcEENS0_19NameBackrefBehaviorE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1)
  br label %_ZN4llvm11ms_demangle9Demangler19demangleBackRefNameERSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread: ; preds = %bb.a, %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.t = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler18demangleSimpleNameERSt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  br label %_ZN4llvm11ms_demangle9Demangler19demangleBackRefNameERSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4llvm11ms_demangle9Demangler19demangleBackRefNameERSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.d, %bb.c, %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit
  %.0 = phi ptr [ %i.t, %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread ], [ %i.s, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit ], [ null, %bb.c ], [ %i.m, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm11ms_demangle9Demangler22demangleNameScopePieceERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.05.0.copyload = load i64, ptr %1, align 8, !tbaa !20 ; 4 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.26.0.copyload = load ptr, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !21 ; 7 uses
  %i.a = icmp eq i64 %.sroa.05.0.copyload, 0
  br i1 %i.a, label %_ZL27startsWithLocalScopePatternSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a
  %i.b = load i8, ptr %.sroa.26.0.copyload, align 1, !tbaa !13 ; 2 uses
  %i.c = sext i8 %i.b to i32
  %isdigittmp.i = add nsw i32 %i.c, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.b, label %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.b:                                             ; preds = %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.d = sext i8 %i.b to i64
  %i.e = add nsw i64 %i.d, -48                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53
  %.not.i = icmp ult i64 %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.h, align 8, !tbaa !27
  br label %_ZN4llvm11ms_demangle9Demangler19demangleBackRefNameERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.26.0.copyload, i64 1
  store ptr %i.i, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !18
  %i.j = add i64 %.sroa.05.0.copyload, -1
  store i64 %i.j, ptr %1, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.e
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55
  br label %_ZN4llvm11ms_demangle9Demangler19demangleBackRefNameERSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.n = icmp eq i64 %.sroa.05.0.copyload, 1
  br i1 %i.n, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %i.o = load i16, ptr %.sroa.26.0.copyload, align 1
  %i.p = icmp ne i16 %i.o, 9279
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i18

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.s = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler33demangleTemplateInstantiationNameERSt17basic_string_viewIcSt11char_traitsIcEENS0_19NameBackrefBehaviorE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1)
  br label %_ZN4llvm11ms_demangle9Demangler19demangleBackRefNameERSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i18: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.t = load i16, ptr %.sroa.26.0.copyload, align 1
  %i.u = icmp ne i16 %i.t, 16703
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit22, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit22: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i18
  %i.x = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler30demangleAnonymousNamespaceNameERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN4llvm11ms_demangle9Demangler19demangleBackRefNameERSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i18, %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %i.y = load i8, ptr %.sroa.26.0.copyload, align 1, !tbaa !13
  %i.z = icmp eq i8 %i.y, 63
  br i1 %i.z, label %bb.e, label %_ZL27startsWithLocalScopePatternSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.e:                                             ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.26.0.copyload, i64 1 ; 5 uses
  %i.ab = add i64 %.sroa.05.0.copyload, -1        ; 3 uses
  %.not26.i = icmp eq i64 %i.ab, 0
  br i1 %.not26.i, label %_ZL27startsWithLocalScopePatternSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.e
  %i.ac = tail call ptr @memchr(ptr noundef nonnull %i.aa, i32 noundef 63, i64 noundef %i.ab) #22 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZL27startsWithLocalScopePatternSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %_ZL27startsWithLocalScopePatternSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.af) ; 3 uses
  switch i64 %.sroa.speculated.i.i, label %bb.h [
    i64 0, label %_ZL27startsWithLocalScopePatternSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !13  ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 64
  %i.aj = add i8 %i.ah, -48
  %spec.select.i = icmp ult i8 %i.aj, 10
  %or.cond = or i1 %i.ai, %spec.select.i
  br i1 %or.cond, label %_ZL27startsWithLocalScopePatternSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread30, label %_ZL27startsWithLocalScopePatternSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.speculated.i.i
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  %.not.i23 = icmp eq i8 %i.am, 64
  br i1 %.not.i23, label %bb.i, label %_ZL27startsWithLocalScopePatternSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.an = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ao = add i8 %i.an, -81
  %or.cond.i = icmp ult i8 %i.ao, -15
  br i1 %or.cond.i, label %_ZL27startsWithLocalScopePatternSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = add i64 %.sroa.speculated.i.i, -2       ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZL27startsWithLocalScopePatternSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread30, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.26.0.copyload, i64 2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %.sroa.0.028.i = phi i64 [ %i.av, %bb.k ], [ %i.ap, %.lr.ph.preheader.i ]
  %.sroa.13.027.i = phi ptr [ %i.au, %bb.k ], [ %i.ar, %.lr.ph.preheader.i ] ; 2 uses
  %i.as = load i8, ptr %.sroa.13.027.i, align 1, !tbaa !13
  %i.at = add i8 %i.as, -65
  %or.cond25.i = icmp ult i8 %i.at, 16
  br i1 %or.cond25.i, label %bb.k, label %_ZL27startsWithLocalScopePatternSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.k:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.13.027.i, i64 1
  %i.av = add i64 %.sroa.0.028.i, -1              ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZL27startsWithLocalScopePatternSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread30, label %.lr.ph.i, !llvm.loop !195

end_hunk_2
begin_hunk_3_@_ZN4llvm11ms_demangle9Demangler20demangleFunctionTypeERSt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
  br label %_ZL28demangleFunctionRefQualifierRSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZL28demangleFunctionRefQualifierRSt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split: ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i23, %_ZN4llvm11ms_demangle9Demangler28demanglePointerExtQualifiersERSt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN4llvm11ms_demangle9Demangler28demanglePointerExtQualifiersERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %.ph27 = phi i8 [ %.ph, %_ZN4llvm11ms_demangle9Demangler28demanglePointerExtQualifiersERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %i.av, %_ZN4llvm11ms_demangle9Demangler28demanglePointerExtQualifiersERSt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.ax, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i23 ]
  %.pr = load i64, ptr %1, align 8, !tbaa !19
  br label %_ZL28demangleFunctionRefQualifierRSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZL28demangleFunctionRefQualifierRSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZL28demangleFunctionRefQualifierRSt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit6.thread.sink.split.i
  %i.bb = phi i64 [ %.pr, %_ZL28demangleFunctionRefQualifierRSt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split ], [ %i.ba, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit6.thread.sink.split.i ] ; 2 uses
  %i.bc = phi i8 [ %.ph27, %_ZL28demangleFunctionRefQualifierRSt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split ], [ %i.ax, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit6.thread.sink.split.i ] ; 3 uses
  %.0.i = phi i32 [ 0, %_ZL28demangleFunctionRefQualifierRSt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split ], [ %.0.ph.i, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit6.thread.sink.split.i ]
  store i32 %.0.i, ptr %i.y, align 8, !tbaa !97
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL28demangleFunctionRefQualifierRSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.be, align 8, !tbaa !27
  br label %_ZN4llvm11ms_demangle9Demangler18demangleQualifiersERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.g:                                             ; preds = %_ZL28demangleFunctionRefQualifierRSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bf = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !18 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store ptr %i.bh, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !18
  %i.bi = add i64 %i.bb, -1
  store i64 %i.bi, ptr %1, align 8, !tbaa !19
  %switch.tableidx = add i8 %i.bg, -65            ; 3 uses
  %i.bj = icmp ult i8 %switch.tableidx, 20
  br i1 %i.bj, label %switch.hole_check, label %bb.h

bb.h:                                             ; preds = %switch.hole_check, %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bk, align 8, !tbaa !27
  br label %_ZN4llvm11ms_demangle9Demangler18demangleQualifiersERSt17basic_string_viewIcSt11char_traitsIcEE.exit

switch.hole_check:                                ; preds = %bb.g
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 983055, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bl = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm11ms_demangle9Demangler20demangleFunctionTypeERSt17basic_string_viewIcSt11char_traitsIcEEb, i64 %i.bl
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.bm = or i8 %switch.load, %i.bc
  br label %_ZN4llvm11ms_demangle9Demangler18demangleQualifiersERSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4llvm11ms_demangle9Demangler18demangleQualifiersERSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %switch.lookup, %bb.f, %bb.h
  %.sroa.0.1.i = phi i8 [ %i.bc, %bb.f ], [ %i.bc, %bb.h ], [ %i.bm, %switch.lookup ]
  store i8 %.sroa.0.1.i, ptr %i.u, align 4, !tbaa !93
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11ms_demangle9Demangler18demangleQualifiersERSt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN4llvm11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit
  %i.bn = load i64, ptr %1, align 8, !tbaa !20    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.j

_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bp, align 8, !tbaa !27
  store i8 0, ptr %i.w, align 4, !tbaa !95
  %.sroa.2.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !18 ; 3 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 1 ; 2 uses
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !18
  %i.bu = add i64 %i.bn, -1                       ; 2 uses
  store i64 %i.bu, ptr %1, align 8, !tbaa !19
  switch i8 %i.bs, label %bb.s [
    i8 65, label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit
    i8 66, label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit
    i8 67, label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split
    i8 68, label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split
    i8 69, label %bb.k
    i8 70, label %bb.k
    i8 71, label %bb.l
    i8 72, label %bb.l
    i8 73, label %bb.m
    i8 74, label %bb.m
    i8 77, label %bb.n
    i8 78, label %bb.n
    i8 79, label %bb.o
    i8 80, label %bb.o
    i8 81, label %bb.p
    i8 83, label %bb.q
    i8 87, label %bb.r
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split

bb.l:                                             ; preds = %bb.j, %bb.j
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split

bb.m:                                             ; preds = %bb.j, %bb.j
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split

bb.n:                                             ; preds = %bb.j, %bb.j
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split

bb.o:                                             ; preds = %bb.j, %bb.j
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split

bb.p:                                             ; preds = %bb.j
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.q:                                             ; preds = %bb.j
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.r:                                             ; preds = %bb.j
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.s:                                             ; preds = %bb.j
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split: ; preds = %bb.j, %bb.j, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.1.i.ph = phi i8 [ 7, %bb.o ], [ 6, %bb.n ], [ 5, %bb.m ], [ 4, %bb.l ], [ 3, %bb.k ], [ 2, %bb.j ], [ 2, %bb.j ]
  br label %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split, %bb.j, %bb.j, %bb.p, %bb.q, %bb.r, %bb.s
  %.1.i = phi i8 [ %.1.i.ph, %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split ], [ 0, %bb.s ], [ 1, %bb.j ], [ 1, %bb.j ], [ 8, %bb.p ], [ 10, %bb.q ], [ 11, %bb.r ]
  store i8 %.1.i, ptr %i.w, align 4, !tbaa !95
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.t, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i: ; preds = %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bw = load i8, ptr %i.bt, align 1, !tbaa !13
  %i.bx = icmp eq i8 %i.bw, 64
  br i1 %i.bx, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit, label %bb.t

_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit: ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store ptr %i.by, ptr %i.bq, align 8, !tbaa !18
  %i.bz = add i64 %i.bn, -2
  store i64 %i.bz, ptr %1, align 8, !tbaa !19
  br label %bb.u

bb.t:                                             ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i, %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %.sroa.2.0..sroa_idx.i32.ph = phi ptr [ %.sroa.2.0..sroa_idx.i30, %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %i.bq, %_ZN4llvm11ms_demangle9Demangler25demangleCallingConventionERSt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.bq, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i ]
  %i.ca = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler12demangleTypeERSt17basic_string_viewIcSt11char_traitsIcEENS0_19QualifierMangleModeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2)
  store ptr %i.ca, ptr %i.z, align 8, !tbaa !89
  br label %bb.u

bb.u:                                             ; preds = %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit, %bb.t
  %.sroa.2.0..sroa_idx.i3235 = phi ptr [ %.sroa.2.0..sroa_idx.i32.ph, %bb.t ], [ %i.bq, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit ] ; 3 uses
  %i.cb = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler29demangleFunctionParameterListERSt17basic_string_viewIcSt11char_traitsIcEERb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.aa)
  store ptr %i.cb, ptr %i.ab, align 8, !tbaa !99
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !20 ; 4 uses
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i3235, align 8, !tbaa !21 ; 4 uses
  %i.cc = icmp ult i64 %.sroa.01.0.copyload.i.i, 2
  br i1 %i.cc, label %thread-pre-split.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.u
  %i.cd = load i16, ptr %.sroa.22.0.copyload.i.i, align 1
  %i.ce = icmp ne i16 %i.cd, 17759
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEES2_.exit.i, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i24

_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEES2_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i.i, i64 2
  store ptr %i.ch, ptr %.sroa.2.0..sroa_idx.i3235, align 8, !tbaa !18
  %i.ci = add i64 %.sroa.01.0.copyload.i.i, -2
  store i64 %i.ci, ptr %1, align 8, !tbaa !19
  br label %_ZN4llvm11ms_demangle9Demangler26demangleThrowSpecificationERSt17basic_string_viewIcSt11char_traitsIcEE.exit

thread-pre-split.i:                               ; preds = %bb.u
  %i.cj = icmp eq i64 %.sroa.01.0.copyload.i.i, 0
  br i1 %i.cj, label %bb.v, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i24

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i24: ; preds = %thread-pre-split.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %i.ck = load i8, ptr %.sroa.22.0.copyload.i.i, align 1, !tbaa !13
  %i.cl = icmp eq i8 %i.ck, 90
  br i1 %i.cl, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.i, label %bb.v

_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.i: ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i24
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i.i, i64 1
  store ptr %i.cm, ptr %.sroa.2.0..sroa_idx.i3235, align 8, !tbaa !18
  %i.cn = add i64 %.sroa.01.0.copyload.i.i, -1
  store i64 %i.cn, ptr %1, align 8, !tbaa !19
  br label %_ZN4llvm11ms_demangle9Demangler26demangleThrowSpecificationERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.v:                                             ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i.i24, %thread-pre-split.i
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.co, align 8, !tbaa !27
  br label %_ZN4llvm11ms_demangle9Demangler26demangleThrowSpecificationERSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4llvm11ms_demangle9Demangler26demangleThrowSpecificationERSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEES2_.exit.i, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.i, %bb.v
  %.0.i6.i6.i = phi i8 [ 0, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit.i ], [ 1, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEES2_.exit.i ], [ 0, %bb.v ]
  store i8 %.0.i6.i6.i, ptr %i.ac, align 8, !tbaa !100
  ret ptr %.sink18.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm11ms_demangle9Demangler18demangleCustomTypeERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !18
  %i.d = load i64, ptr %1, align 8, !tbaa !19
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %1, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30   ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = add i64 %i.i, 7
  %i.m = add i64 %i.l, %i.k
  %i.n = and i64 %i.m, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.n, %i.i
  %i.o = add i64 %reass.sub.i, 24                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !34
  %.not.i = icmp ugt i64 %i.o, %i.q
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = inttoptr i64 %i.n to ptr
  br label %_ZN4llvm11ms_demangle14ArenaAllocator5allocINS0_14CustomTypeNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.s = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23 ; 5 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #23 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !32
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 4096, ptr %i.w, align 8, !tbaa !34
  store ptr %i.s, ptr %i.f, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 24, ptr %i.x, align 8, !tbaa !33
  %.sroa.22.0.copyload.i.pre = load ptr, ptr %i.a, align 8, !tbaa !21
  br label %_ZN4llvm11ms_demangle14ArenaAllocator5allocINS0_14CustomTypeNodeEJEEEPT_DpOT0_.exit

_ZN4llvm11ms_demangle14ArenaAllocator5allocINS0_14CustomTypeNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sroa.22.0.copyload.i = phi ptr [ %.sroa.22.0.copyload.i.pre, %bb.c ], [ %i.c, %bb.b ] ; 3 uses
  %.sink11.i = phi ptr [ %i.t, %bb.c ], [ %i.r, %bb.b ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 8
  store i32 17, ptr %i.y, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 12
  store i8 0, ptr %i.z, align 4, !tbaa !93
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm11ms_demangle14CustomTypeNodeE, i64 16), ptr %.sink11.i, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 16 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !203
  %.sroa.01.0.copyload.i = load i64, ptr %1, align 8, !tbaa !20 ; 3 uses
  %i.ab = icmp eq i64 %.sroa.01.0.copyload.i, 0
  br i1 %i.ab, label %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread.i, label %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.i

_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %_ZN4llvm11ms_demangle14ArenaAllocator5allocINS0_14CustomTypeNodeEJEEEPT_DpOT0_.exit
  %i.ac = load i8, ptr %.sroa.22.0.copyload.i, align 1, !tbaa !13 ; 2 uses
  %i.ad = sext i8 %i.ac to i32
  %isdigittmp.i.i = add nsw i32 %i.ad, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %bb.d, label %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i

bb.d:                                             ; preds = %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %i.ae = sext i8 %i.ac to i64
  %i.af = add nsw i64 %i.ae, -48                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !53
  %.not.i.i = icmp ult i64 %i.af, %i.ah
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ai, align 8, !tbaa !27
  br label %_ZN4llvm11ms_demangle9Demangler27demangleUnqualifiedTypeNameERSt17basic_string_viewIcSt11char_traitsIcEEb.exitthread-pre-split

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i, i64 1 ; 2 uses
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !18
  %i.ak = add i64 %.sroa.01.0.copyload.i, -1      ; 2 uses
  store i64 %i.ak, ptr %1, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.af
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !55
  br label %_ZN4llvm11ms_demangle9Demangler27demangleUnqualifiedTypeNameERSt17basic_string_viewIcSt11char_traitsIcEEb.exit

_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i: ; preds = %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %i.ao = icmp eq i64 %.sroa.01.0.copyload.i, 1
  br i1 %i.ao, label %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i
  %i.ap = load i16, ptr %.sroa.22.0.copyload.i, align 1
  %i.aq = icmp ne i16 %i.ap, 9279
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, label %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread.i

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.at = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler33demangleTemplateInstantiationNameERSt17basic_string_viewIcSt11char_traitsIcEENS0_19NameBackrefBehaviorE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 1), !inline_history !63
  br label %_ZN4llvm11ms_demangle9Demangler27demangleUnqualifiedTypeNameERSt17basic_string_viewIcSt11char_traitsIcEEb.exitthread-pre-split

_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i, %_ZN4llvm11ms_demangle14ArenaAllocator5allocINS0_14CustomTypeNodeEJEEEPT_DpOT0_.exit
  %i.au = tail call noundef ptr @_ZN4llvm11ms_demangle9Demangler18demangleSimpleNameERSt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true), !inline_history !63
  br label %_ZN4llvm11ms_demangle9Demangler27demangleUnqualifiedTypeNameERSt17basic_string_viewIcSt11char_traitsIcEEb.exitthread-pre-split

_ZN4llvm11ms_demangle9Demangler27demangleUnqualifiedTypeNameERSt17basic_string_viewIcSt11char_traitsIcEEb.exitthread-pre-split: ; preds = %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread.i, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, %bb.e
  %.0.i.ph = phi ptr [ null, %bb.e ], [ %i.at, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ], [ %i.au, %_ZL15startsWithDigitSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread.i ]
  %.sroa.0.0.copyload.i.pr = load i64, ptr %1, align 8, !tbaa !20
  %.sroa.2.0.copyload.i.pre = load ptr, ptr %i.a, align 8, !tbaa !21
  br label %_ZN4llvm11ms_demangle9Demangler27demangleUnqualifiedTypeNameERSt17basic_string_viewIcSt11char_traitsIcEEb.exit

_ZN4llvm11ms_demangle9Demangler27demangleUnqualifiedTypeNameERSt17basic_string_viewIcSt11char_traitsIcEEb.exit: ; preds = %_ZN4llvm11ms_demangle9Demangler27demangleUnqualifiedTypeNameERSt17basic_string_viewIcSt11char_traitsIcEEb.exitthread-pre-split, %bb.f
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.2.0.copyload.i.pre, %_ZN4llvm11ms_demangle9Demangler27demangleUnqualifiedTypeNameERSt17basic_string_viewIcSt11char_traitsIcEEb.exitthread-pre-split ], [ %i.aj, %bb.f ] ; 2 uses
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i.pr, %_ZN4llvm11ms_demangle9Demangler27demangleUnqualifiedTypeNameERSt17basic_string_viewIcSt11char_traitsIcEEb.exitthread-pre-split ], [ %i.ak, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %.0.i.ph, %_ZN4llvm11ms_demangle9Demangler27demangleUnqualifiedTypeNameERSt17basic_string_viewIcSt11char_traitsIcEEb.exitthread-pre-split ], [ %i.an, %bb.f ]
  store ptr %.0.i, ptr %i.aa, align 8, !tbaa !203
  %i.av = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.av, label %bb.g, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i: ; preds = %_ZN4llvm11ms_demangle9Demangler27demangleUnqualifiedTypeNameERSt17basic_string_viewIcSt11char_traitsIcEEb.exit
  %i.aw = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !13
  %i.ax = icmp eq i8 %i.aw, 64
  br i1 %i.ax, label %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit, label %bb.g

_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit: ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 1
  store ptr %i.ay, ptr %i.a, align 8, !tbaa !18
  %i.az = add i64 %.sroa.0.0.copyload.i, -1
  store i64 %i.az, ptr %1, align 8, !tbaa !19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !27, !range !57
  %i.ba = trunc nuw i8 %.pre to i1
  %i.bb = select i1 %i.ba, ptr null, ptr %.sink11.i
  br label %bb.h

bb.g:                                             ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i, %_ZN4llvm11ms_demangle9Demangler27demangleUnqualifiedTypeNameERSt17basic_string_viewIcSt11char_traitsIcEEb.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bc, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit, %bb.g
  %. = phi ptr [ %i.bb, %_ZL12consumeFrontRSt17basic_string_viewIcSt11char_traitsIcEEc.exit ], [ null, %bb.g ]
  ret ptr %.
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm11ms_demangle9Demangler21demanglePrimitiveTypeERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %.sroa.01.0.copyload.i = load i64, ptr %1, align 8, !tbaa !20 ; 4 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !21 ; 6 uses
  %i.j = icmp ult i64 %.sroa.01.0.copyload.i, 3
  br i1 %i.j, label %bb.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.a
  %i.k = load i16, ptr %.sroa.22.0.copyload.i, align 1
  %i.l = xor i16 %i.k, 9252
  %i.m = getelementptr i8, ptr %.sroa.22.0.copyload.i, i64 2
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i16
  %i.p = xor i16 %i.o, 84
  %i.q = or i16 %i.l, %i.p
  %i.r = icmp ne i16 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i, i64 3
  store ptr %i.u, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !18
  %i.v = add i64 %.sroa.01.0.copyload.i, -3
  store i64 %i.v, ptr %1, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !30   ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !33
  %i.ac = add i64 %i.z, 7
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %reass.sub.i = sub i64 %i.ae, %i.z
  %i.af = add i64 %reass.sub.i, 24                ; 2 uses
  store i64 %i.af, ptr %i.aa, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !34
  %.not.i = icmp ugt i64 %i.af, %i.ah
  br i1 %.not.i, label %bb.d, label %bb.c

end_hunk_3
