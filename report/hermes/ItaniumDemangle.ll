Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ItaniumDemangle?download=true
inline.NumInlined: 2019
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE18parseFunctionParamEv:bb.a
  %.val911.i23.ptr131 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.aw = load i8, ptr %.val911.i23.ptr131, align 1, !tbaa !18
  %i.ax = sext i8 %i.aw to i32
  %isdigittmp2.i24132 = add nsw i32 %i.ax, -48
  %isdigit3.i25133 = icmp ult i32 %isdigittmp2.i24132, 10
  br i1 %isdigit3.i25133, label %.lr.ph, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

.lr.ph.i22:                                       ; preds = %.lr.ph
  %.val911.i23.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.val911.i23.add
  %i.ay = load i8, ptr %.val911.i23.ptr, align 1, !tbaa !18
  %i.az = sext i8 %i.ay to i32
  %isdigittmp2.i24 = add nsw i32 %i.az, -48
  %isdigit3.i25 = icmp ult i32 %isdigittmp2.i24, 10
  br i1 %isdigit3.i25, label %.lr.ph, label %.lr.ph.i22._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27_crit_edge, !llvm.loop !2

.lr.ph:                                           ; preds = %.lr.ph.i22.preheader, %.lr.ph.i22
  %.val911.i23.idx134 = phi i64 [ %.val911.i23.add, %.lr.ph.i22 ], [ 2, %.lr.ph.i22.preheader ]
  %.val911.i23.add = add nuw i64 %.val911.i23.idx134, 1 ; 7 uses
  %.ptr80 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.val911.i23.add
  store ptr %.ptr80, ptr %0, align 16, !tbaa !33
  %exitcond = icmp eq i64 %.val911.i23.add, %i.f
  br i1 %exitcond, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73.loopexit, label %.lr.ph.i22, !llvm.loop !2

.lr.ph.i22._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27_crit_edge: ; preds = %.lr.ph.i22
  %.ptr80.le = getelementptr inbounds nuw i8, ptr %i.a, i64 %.val911.i23.add
  %i.ba = icmp eq i64 %.val911.i23.add, 2
  br i1 %i.ba, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73.loopexit: ; preds = %.lr.ph
  %.ptr80.le143 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.val911.i23.add
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73.loopexit, %.lr.ph.i22._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27_crit_edge
  %.ptr80141 = phi ptr [ %.ptr80.le143, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73.loopexit ], [ %.ptr80.le, %.lr.ph.i22._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27_crit_edge ] ; 4 uses
  %.not.i28 = icmp eq ptr %.ptr80141, %i.c
  br i1 %.not.i28, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73
  %i.bb = load i8, ptr %.ptr80141, align 1, !tbaa !18
  %i.bc = icmp eq i8 %i.bb, 112
  br i1 %i.bc, label %bb.r, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %.ptr80141, i64 1 ; 5 uses
  store ptr %i.bd, ptr %0, align 16, !tbaa !33
  %.not.i.i31 = icmp eq ptr %i.bd, %i.c
  br i1 %.not.i.i31, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i32, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !18
  %i.bf = icmp eq i8 %i.be, 114
  br i1 %i.bf, label %bb.t, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i32

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %.ptr80141, i64 2 ; 2 uses
  store ptr %i.bg, ptr %0, align 16, !tbaa !33
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i32

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i32: ; preds = %bb.t, %bb.s, %bb.r
  %i.bh = phi ptr [ %i.bg, %bb.t ], [ %i.bd, %bb.s ], [ %i.bd, %bb.r ] ; 5 uses
  %.not.i1.i34 = icmp eq ptr %i.bh, %i.c
  br i1 %.not.i1.i34, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i35, label %bb.u

bb.u:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i32
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !18
  %i.bj = icmp eq i8 %i.bi, 86
  br i1 %i.bj, label %bb.v, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i35

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  store ptr %i.bk, ptr %0, align 16, !tbaa !33
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i35

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i35: ; preds = %bb.v, %bb.u, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i32
  %i.bl = phi ptr [ %i.bk, %bb.v ], [ %i.bh, %bb.u ], [ %i.bh, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i32 ] ; 5 uses
  %.not.i4.i37 = icmp eq ptr %i.bl, %i.c
  br i1 %.not.i4.i37, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit39, label %bb.w

bb.w:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i35
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !18
  %i.bn = icmp eq i8 %i.bm, 75
  br i1 %i.bn, label %bb.x, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit39

bb.x:                                             ; preds = %bb.w
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 2 uses
  store ptr %i.bo, ptr %0, align 16, !tbaa !33
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit39

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit39: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i35, %bb.w, %bb.x
  %i.bp = phi ptr [ %i.bl, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i35 ], [ %i.bl, %bb.w ], [ %i.bo, %bb.x ] ; 7 uses
  %i.bq = icmp eq ptr %i.c, %i.bp
  br i1 %i.bq, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit52, label %bb.y

bb.y:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit39
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !18
  %i.bs = sext i8 %i.br to i32
  %isdigittmp.i41 = add nsw i32 %i.bs, -48
  %isdigit.i42 = icmp ult i32 %isdigittmp.i41, 10
  br i1 %isdigit.i42, label %.lr.ph.i47, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit52

.lr.ph.i47:                                       ; preds = %bb.y, %bb.z
  %.val911.i48 = phi ptr [ %i.bv, %bb.z ], [ %i.bp, %bb.y ] ; 4 uses
  %i.bt = load i8, ptr %.val911.i48, align 1, !tbaa !18
  %i.bu = sext i8 %i.bt to i32
  %isdigittmp2.i49 = add nsw i32 %i.bu, -48
  %isdigit3.i50 = icmp ult i32 %isdigittmp2.i49, 10
  br i1 %isdigit3.i50, label %bb.z, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit52

bb.z:                                             ; preds = %.lr.ph.i47
  %i.bv = getelementptr inbounds nuw i8, ptr %.val911.i48, i64 1 ; 5 uses
  store ptr %i.bv, ptr %0, align 16, !tbaa !33
  %.not.i51 = icmp eq ptr %i.c, %i.bv
  br i1 %.not.i51, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit52, label %.lr.ph.i47, !llvm.loop !2

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit52: ; preds = %.lr.ph.i47, %bb.z, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit39, %bb.y
  %i.bw = phi ptr [ %i.bp, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit39 ], [ %i.bp, %bb.y ], [ %i.bv, %bb.z ], [ %.val911.i48, %.lr.ph.i47 ] ; 3 uses
  %.sroa.0.0.i43 = phi ptr [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit39 ], [ null, %bb.y ], [ %i.bp, %bb.z ], [ %i.bp, %.lr.ph.i47 ] ; 2 uses
  %.sroa.3.0.i44 = phi ptr [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit39 ], [ null, %bb.y ], [ %i.bv, %bb.z ], [ %.val911.i48, %.lr.ph.i47 ] ; 2 uses
  %.not.i53 = icmp eq ptr %i.bw, %i.c
  br i1 %.not.i53, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit52
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !18
  %i.by = icmp eq i8 %i.bx, 95
  br i1 %i.by, label %bb.ab, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store ptr %i.bz, ptr %0, align 16, !tbaa !33
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 16, !tbaa !47 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !64 ; 2 uses
  %i.ce = add i64 %i.cd, -4048
  %i.cf = icmp ult i64 %i.ce, -4080
  br i1 %i.cf, label %bb.ac, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.sink.split

bb.ac:                                            ; preds = %bb.ab
  %i.cg = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.ad, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i57

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i57: ; preds = %bb.ac
  store ptr %i.cb, ptr %i.cg, align 8, !tbaa !63
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 0, ptr %i.ci, align 8, !tbaa !64
  store ptr %i.cg, ptr %i.ca, align 16, !tbaa !47
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.sink.split

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.sink.split: ; preds = %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i57, %bb.ab, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i, %bb.l
  %.sink127 = phi ptr [ %i.ai, %bb.l ], [ %i.an, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.cg, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i57 ], [ %i.cb, %bb.ab ] ; 2 uses
  %.sink126 = phi i64 [ %i.ak, %bb.l ], [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i57 ], [ %i.cd, %bb.ab ] ; 2 uses
  %.sroa.0.0.i43.sink = phi ptr [ %.sroa.0.0.i, %bb.l ], [ %.sroa.0.0.i, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %.sroa.0.0.i43, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i57 ], [ %.sroa.0.0.i43, %bb.ab ]
  %.sroa.3.0.i44.sink = phi ptr [ %.sroa.3.0.i, %bb.l ], [ %.sroa.3.0.i, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %.sroa.3.0.i44, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i57 ], [ %.sroa.3.0.i44, %bb.ab ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.sink127, i64 8
  %i.ck = add nsw i64 %.sink126, 32
  store i64 %i.ck, ptr %i.cj, align 8, !tbaa !64
  %i.cl = getelementptr inbounds nuw i8, ptr %.sink127, i64 16
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %.sink126 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store <4 x i8> <i8 54, i8 1, i8 1, i8 1>, ptr %i.cn, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvh16itanium_demangle13FunctionParamE, i64 16), ptr %i.cm, align 8, !tbaa !57
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr %.sroa.0.0.i43.sink, ptr %i.co, align 8, !tbaa !69
  %.sroa.2.0..sroa_idx.i.i.i56 = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store ptr %.sroa.3.0.i44.sink, ptr %.sroa.2.0..sroa_idx.i.i.i56, align 8, !tbaa !69
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread: ; preds = %.lr.ph.i22.preheader, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.sink.split, %bb.a, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit52, %bb.aa, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73, %bb.q, %bb.p, %bb.o, %_ZNK10StringView10startsWithES_.exit.i9, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit, %bb.k, %.lr.ph.i22._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27_crit_edge
  %.2 = phi ptr [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit ], [ null, %bb.p ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit52 ], [ null, %.lr.ph.i22._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27_crit_edge ], [ null, %bb.aa ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73 ], [ null, %bb.a ], [ null, %bb.k ], [ null, %_ZNK10StringView10startsWithES_.exit.i9 ], [ null, %bb.o ], [ null, %bb.q ], [ %i.cm, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.sink.split ], [ null, %.lr.ph.i22.preheader ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE13parseFoldExprEv(ptr noundef nonnull align 16 dereferenceable(4864) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !33    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 3 uses
  %.not.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !18
  %i.e = icmp eq i8 %i.d, 102
  br i1 %i.e, label %bb.c, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store ptr %i.f, ptr %0, align 16, !tbaa !33
  %i.g = ptrtoint ptr %i.c to i64
  %.not.i22.not = icmp eq ptr %i.c, %i.f
  br i1 %.not.i22.not, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit: ; preds = %bb.c
  %i.h = load i8, ptr %i.f, align 1, !tbaa !18    ; 2 uses
  %switch.tableidx = add i8 %i.h, -76             ; 3 uses
  %i.i = icmp ult i8 %switch.tableidx, 39
  br i1 %i.i, label %switch.hole_check, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

switch.hole_check:                                ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 279172874305, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

switch.lookup:                                    ; preds = %switch.hole_check
  %i.j = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE13parseFoldExprEv, i64 %i.j
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 33 uses
  store ptr %i.k, ptr %0, align 16, !tbaa !33
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.g, %i.l
  %i.n = icmp ult i64 %i.m, 2
  br i1 %i.n, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %switch.lookup
  %i.o = load i16, ptr %i.k, align 1
  %i.p = icmp ne i16 24929, %i.o
  %i.q = zext i1 %i.p to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %_ZNK10StringView10startsWithES_.exit.i25

_ZNK10StringView10startsWithES_.exit.i25:         ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.r = load i16, ptr %i.k, align 1
  %i.s = icmp ne i16 28257, %i.r
  %i.t = zext i1 %i.s to i32
  %.not9.i.i.i.i.i.i27 = icmp eq i32 %i.t, 0
  br i1 %.not9.i.i.i.i.i.i27, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %_ZNK10StringView10startsWithES_.exit.i32

_ZNK10StringView10startsWithES_.exit.i32:         ; preds = %_ZNK10StringView10startsWithES_.exit.i25
  %i.u = load i16, ptr %i.k, align 1
  %i.v = icmp ne i16 20065, %i.u
  %i.w = zext i1 %i.v to i32
  %.not9.i.i.i.i.i.i34 = icmp eq i32 %i.w, 0
  br i1 %.not9.i.i.i.i.i.i34, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %_ZNK10StringView10startsWithES_.exit.i39

_ZNK10StringView10startsWithES_.exit.i39:         ; preds = %_ZNK10StringView10startsWithES_.exit.i32
  %i.x = load i16, ptr %i.k, align 1
  %i.y = icmp ne i16 21345, %i.x
  %i.z = zext i1 %i.y to i32
  %.not9.i.i.i.i.i.i41 = icmp eq i32 %i.z, 0
  br i1 %.not9.i.i.i.i.i.i41, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %_ZNK10StringView10startsWithES_.exit.i46

_ZNK10StringView10startsWithES_.exit.i46:         ; preds = %_ZNK10StringView10startsWithES_.exit.i39
  %i.aa = load i16, ptr %i.k, align 1
  %i.ab = icmp ne i16 28003, %i.aa
  %i.ac = zext i1 %i.ab to i32
  %.not9.i.i.i.i.i.i48 = icmp eq i32 %i.ac, 0
  br i1 %.not9.i.i.i.i.i.i48, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %.thread198

.thread198:                                       ; preds = %_ZNK10StringView10startsWithES_.exit.i46
  %i.ad = load i16, ptr %i.k, align 1
  %i.ae = icmp ne i16 29540, %i.ad
  %i.af = zext i1 %i.ae to i32
  %.not9.i.i.i.i.i.i201 = icmp eq i32 %i.af, 0
  br i1 %.not9.i.i.i.i.i.i201, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %.thread198.thread

.thread198.thread:                                ; preds = %.thread198
  %i.ag = load i16, ptr %i.k, align 1
  %i.ah = icmp ne i16 30308, %i.ag
  %i.ai = zext i1 %i.ah to i32
  %.not9.i.i.i.i.i.i204 = icmp eq i32 %i.ai, 0
  br i1 %.not9.i.i.i.i.i.i204, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.d

bb.d:                                             ; preds = %.thread198.thread
  %i.aj = load i16, ptr %i.k, align 1
  %i.ak = icmp ne i16 22116, %i.aj
  %i.al = zext i1 %i.ak to i32
  %.not9.i.i.i.i.i.i210 = icmp eq i32 %i.al, 0
  br i1 %.not9.i.i.i.i.i.i210, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = load i16, ptr %i.k, align 1
  %i.an = icmp ne i16 28517, %i.am
  %i.ao = zext i1 %i.an to i32
  %.not9.i.i.i.i.i.i216 = icmp eq i32 %i.ao, 0
  br i1 %.not9.i.i.i.i.i.i216, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load i16, ptr %i.k, align 1
  %i.aq = icmp ne i16 20325, %i.ap
  %i.ar = zext i1 %i.aq to i32
  %.not9.i.i.i.i.i.i222 = icmp eq i32 %i.ar, 0
  br i1 %.not9.i.i.i.i.i.i222, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load i16, ptr %i.k, align 1
  %i.at = icmp ne i16 29029, %i.as
  %i.au = zext i1 %i.at to i32
  %.not9.i.i.i.i.i.i228 = icmp eq i32 %i.au, 0
  br i1 %.not9.i.i.i.i.i.i228, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = load i16, ptr %i.k, align 1
  %i.aw = icmp ne i16 25959, %i.av
  %i.ax = zext i1 %i.aw to i32
  %.not9.i.i.i.i.i.i234 = icmp eq i32 %i.ax, 0
  br i1 %.not9.i.i.i.i.i.i234, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load i16, ptr %i.k, align 1
  %i.az = icmp ne i16 29799, %i.ay
  %i.ba = zext i1 %i.az to i32
  %.not9.i.i.i.i.i.i240 = icmp eq i32 %i.ba, 0
  br i1 %.not9.i.i.i.i.i.i240, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = load i16, ptr %i.k, align 1
  %i.bc = icmp ne i16 25964, %i.bb
  %i.bd = zext i1 %i.bc to i32
  %.not9.i.i.i.i.i.i246 = icmp eq i32 %i.bd, 0
  br i1 %.not9.i.i.i.i.i.i246, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = load i16, ptr %i.k, align 1
  %i.bf = icmp ne i16 29548, %i.be
  %i.bg = zext i1 %i.bf to i32
  %.not9.i.i.i.i.i.i252 = icmp eq i32 %i.bg, 0
  br i1 %.not9.i.i.i.i.i.i252, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = load i16, ptr %i.k, align 1
  %i.bi = icmp ne i16 21356, %i.bh
  %i.bj = zext i1 %i.bi to i32
  %.not9.i.i.i.i.i.i258 = icmp eq i32 %i.bj, 0
  br i1 %.not9.i.i.i.i.i.i258, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = load i16, ptr %i.k, align 1
  %i.bl = icmp ne i16 29804, %i.bk
  %i.bm = zext i1 %i.bl to i32
  %.not9.i.i.i.i.i.i264 = icmp eq i32 %i.bm, 0
  br i1 %.not9.i.i.i.i.i.i264, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = load i16, ptr %i.k, align 1
  %i.bo = icmp ne i16 26989, %i.bn
  %i.bp = zext i1 %i.bo to i32
  %.not9.i.i.i.i.i.i270 = icmp eq i32 %i.bp, 0
  br i1 %.not9.i.i.i.i.i.i270, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = load i16, ptr %i.k, align 1
  %i.br = icmp ne i16 18797, %i.bq
  %i.bs = zext i1 %i.br to i32
  %.not9.i.i.i.i.i.i276 = icmp eq i32 %i.bs, 0
  br i1 %.not9.i.i.i.i.i.i276, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = load i16, ptr %i.k, align 1
  %i.bu = icmp ne i16 27757, %i.bt
  %i.bv = zext i1 %i.bu to i32
  %.not9.i.i.i.i.i.i282 = icmp eq i32 %i.bv, 0
  br i1 %.not9.i.i.i.i.i.i282, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = load i16, ptr %i.k, align 1
  %i.bx = icmp ne i16 19565, %i.bw
  %i.by = zext i1 %i.bx to i32
  %.not9.i.i.i.i.i.i288 = icmp eq i32 %i.by, 0
  br i1 %.not9.i.i.i.i.i.i288, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = load i16, ptr %i.k, align 1
  %i.ca = icmp ne i16 25966, %i.bz
  %i.cb = zext i1 %i.ca to i32
  %.not9.i.i.i.i.i.i294 = icmp eq i32 %i.cb, 0
  br i1 %.not9.i.i.i.i.i.i294, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = load i16, ptr %i.k, align 1
  %i.cd = icmp ne i16 28527, %i.cc
  %i.ce = zext i1 %i.cd to i32
  %.not9.i.i.i.i.i.i300 = icmp eq i32 %i.ce, 0
  br i1 %.not9.i.i.i.i.i.i300, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = load i16, ptr %i.k, align 1
  %i.cg = icmp ne i16 29295, %i.cf
  %i.ch = zext i1 %i.cg to i32
  %.not9.i.i.i.i.i.i306 = icmp eq i32 %i.ch, 0
  br i1 %.not9.i.i.i.i.i.i306, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = load i16, ptr %i.k, align 1
  %i.cj = icmp ne i16 21103, %i.ci
  %i.ck = zext i1 %i.cj to i32
  %.not9.i.i.i.i.i.i312 = icmp eq i32 %i.ck, 0
  br i1 %.not9.i.i.i.i.i.i312, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = load i16, ptr %i.k, align 1
  %i.cm = icmp ne i16 27760, %i.cl
  %i.cn = zext i1 %i.cm to i32
  %.not9.i.i.i.i.i.i318 = icmp eq i32 %i.cn, 0
  br i1 %.not9.i.i.i.i.i.i318, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = load i16, ptr %i.k, align 1
  %i.cp = icmp ne i16 19568, %i.co
  %i.cq = zext i1 %i.cp to i32
  %.not9.i.i.i.i.i.i324 = icmp eq i32 %i.cq, 0
  br i1 %.not9.i.i.i.i.i.i324, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = load i16, ptr %i.k, align 1
  %i.cs = icmp ne i16 28018, %i.cr
  %i.ct = zext i1 %i.cs to i32
  %.not9.i.i.i.i.i.i330 = icmp eq i32 %i.ct, 0
  br i1 %.not9.i.i.i.i.i.i330, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = load i16, ptr %i.k, align 1
  %i.cv = icmp ne i16 19826, %i.cu
  %i.cw = zext i1 %i.cv to i32
  %.not9.i.i.i.i.i.i336 = icmp eq i32 %i.cw, 0
  br i1 %.not9.i.i.i.i.i.i336, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = load i16, ptr %i.k, align 1
  %i.cy = icmp ne i16 29554, %i.cx
  %i.cz = zext i1 %i.cy to i32
  %.not9.i.i.i.i.i.i342 = icmp eq i32 %i.cz, 0
  br i1 %.not9.i.i.i.i.i.i342, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.da = load i16, ptr %i.k, align 1
  %i.db = icmp ne i16 21362, %i.da
  %i.dc = zext i1 %i.db to i32
  %.not9.i.i.i.i.i.i348 = icmp eq i32 %i.dc, 0
  br i1 %.not9.i.i.i.i.i.i348, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit: ; preds = %_ZNK10StringView10startsWithES_.exit.i, %_ZNK10StringView10startsWithES_.exit.i25, %_ZNK10StringView10startsWithES_.exit.i32, %_ZNK10StringView10startsWithES_.exit.i39, %_ZNK10StringView10startsWithES_.exit.i46, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.thread198.thread, %.thread198
  %.sroa.35.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.61, i64 2), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @.str.63, i64 1), %bb.v ], [ getelementptr inbounds nuw (i8, ptr @.str.64, i64 2), %bb.w ], [ getelementptr inbounds nuw (i8, ptr @.str.68, i64 1), %bb.x ], [ getelementptr inbounds nuw (i8, ptr @.str.70, i64 2), %bb.z ], [ getelementptr inbounds nuw (i8, ptr @.str.69, i64 2), %bb.y ], [ getelementptr inbounds nuw (i8, ptr @.str.71, i64 3), %bb.aa ], [ getelementptr inbounds nuw (i8, ptr @.str.39, i64 2), %.thread198 ], [ getelementptr inbounds nuw (i8, ptr @.str.41, i64 1), %.thread198.thread ], [ getelementptr inbounds nuw (i8, ptr @.str.42, i64 2), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @.str.43, i64 1), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @.str.44, i64 2), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @.str.45, i64 2), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @.str.46, i64 2), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @.str.47, i64 1), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @.str.48, i64 2), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @.str.49, i64 2), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @.str.50, i64 3), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @.str.51, i64 1), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @.str.52, i64 1), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @.str.53, i64 2), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @.str.38, i64 1), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @.str.54, i64 2), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @.str.56, i64 2), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @.str.59, i64 2), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @.str.60, i64 1), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @.str.32, i64 1), %_ZNK10StringView10startsWithES_.exit.i39 ], [ getelementptr inbounds nuw (i8, ptr @.str.31, i64 2), %_ZNK10StringView10startsWithES_.exit.i32 ], [ getelementptr inbounds nuw (i8, ptr @.str.30, i64 1), %_ZNK10StringView10startsWithES_.exit.i25 ], [ getelementptr inbounds nuw (i8, ptr @.str.29, i64 2), %_ZNK10StringView10startsWithES_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @.str.35, i64 1), %_ZNK10StringView10startsWithES_.exit.i46 ]
  %.sroa.0175.0 = phi ptr [ @.str.61, %bb.u ], [ @.str.63, %bb.v ], [ @.str.64, %bb.w ], [ @.str.68, %bb.x ], [ @.str.70, %bb.z ], [ @.str.69, %bb.y ], [ @.str.71, %bb.aa ], [ @.str.39, %.thread198 ], [ @.str.41, %.thread198.thread ], [ @.str.42, %bb.d ], [ @.str.43, %bb.e ], [ @.str.44, %bb.f ], [ @.str.45, %bb.g ], [ @.str.46, %bb.h ], [ @.str.47, %bb.i ], [ @.str.48, %bb.j ], [ @.str.49, %bb.k ], [ @.str.50, %bb.l ], [ @.str.51, %bb.m ], [ @.str.52, %bb.n ], [ @.str.53, %bb.o ], [ @.str.38, %bb.p ], [ @.str.54, %bb.q ], [ @.str.56, %bb.r ], [ @.str.59, %bb.s ], [ @.str.60, %bb.t ], [ @.str.32, %_ZNK10StringView10startsWithES_.exit.i39 ], [ @.str.31, %_ZNK10StringView10startsWithES_.exit.i32 ], [ @.str.30, %_ZNK10StringView10startsWithES_.exit.i25 ], [ @.str.29, %_ZNK10StringView10startsWithES_.exit.i ], [ @.str.35, %_ZNK10StringView10startsWithES_.exit.i46 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store ptr %i.dd, ptr %0, align 16, !tbaa !33
  %i.de = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4864) %0) ; 4 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit
  switch i8 %i.h, label %.thread [
    i8 82, label %bb.ac
    i8 76, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %i.dg = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4864) %0) ; 3 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %1 = trunc nuw i8 %switch.load to i1            ; 2 uses
  %spec.select = select i1 %1, ptr %i.dg, ptr %i.de
  %spec.select189 = select i1 %1, ptr %i.de, ptr %i.dg
  br label %.thread

.thread:                                          ; preds = %bb.ad, %bb.ab
  %.0179 = phi ptr [ %i.de, %bb.ab ], [ %spec.select, %bb.ad ]
  %.1178 = phi ptr [ null, %bb.ab ], [ %spec.select189, %bb.ad ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 16, !tbaa !47 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !64 ; 2 uses
  %i.dm = add i64 %i.dl, -4016
  %i.dn = icmp ult i64 %i.dm, -4080
  br i1 %i.dn, label %bb.ae, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8FoldExprEJRbR10StringViewRPNS0_4NodeESC_EEESB_DpOT0_.exit

bb.ae:                                            ; preds = %.thread
  %i.do = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.af, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i: ; preds = %bb.ae
  store ptr %i.dj, ptr %i.do, align 8, !tbaa !63
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i64 0, ptr %i.dq, align 8, !tbaa !64
  store ptr %i.do, ptr %i.di, align 16, !tbaa !47
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8FoldExprEJRbR10StringViewRPNS0_4NodeESC_EEESB_DpOT0_.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8FoldExprEJRbR10StringViewRPNS0_4NodeESC_EEESB_DpOT0_.exit: ; preds = %.thread, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i
  %i.dr = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.dl, %.thread ] ; 2 uses
  %i.ds = phi ptr [ %i.do, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.dj, %.thread ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = add nsw i64 %i.dr, 64
  store i64 %i.du, ptr %i.dt, align 8, !tbaa !64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %i.dr ; 8 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store <4 x i8> <i8 57, i8 1, i8 1, i8 1>, ptr %i.dx, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvh16itanium_demangle8FoldExprE, i64 16), ptr %i.dw, align 8, !tbaa !57
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store ptr %.0179, ptr %i.dy, align 8, !tbaa !136
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store ptr %.1178, ptr %i.dz, align 8, !tbaa !137
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store ptr %.sroa.0175.0, ptr %i.ea, align 8, !tbaa !69
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  store ptr %.sroa.35.0, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !69
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  store i8 %switch.load, ptr %i.eb, align 8, !tbaa !138
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread: ; preds = %switch.hole_check, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit, %switch.lookup, %bb.aa, %bb.c, %bb.a, %bb.b, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8FoldExprEJRbR10StringViewRPNS0_4NodeESC_EEESB_DpOT0_.exit, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit, %bb.ac
  %.3 = phi ptr [ null, %bb.ac ], [ null, %bb.a ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit ], [ null, %bb.c ], [ %i.dw, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8FoldExprEJRbR10StringViewRPNS0_4NodeESC_EEESB_DpOT0_.exit ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit ], [ null, %bb.b ], [ null, %bb.aa ], [ null, %switch.lookup ], [ null, %switch.hole_check ]
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseBinaryExprE10StringView(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr %1, ptr %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4864) %0) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4864) %0) ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !47  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %i.i = add i64 %i.h, -4032
  %i.j = icmp ult i64 %i.i, -4080
  br i1 %i.j, label %bb.d, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_10BinaryExprEJRPNS0_4NodeER10StringViewS9_EEES8_DpOT0_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i: ; preds = %bb.d
  store ptr %i.f, ptr %i.k, align 8, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !64
  store ptr %i.k, ptr %i.e, align 16, !tbaa !47
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_10BinaryExprEJRPNS0_4NodeER10StringViewS9_EEES8_DpOT0_.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_10BinaryExprEJRPNS0_4NodeER10StringViewS9_EEES8_DpOT0_.exit: ; preds = %bb.c, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i
  %i.n = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.o = phi ptr [ %i.k, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.f, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = add nsw i64 %i.n, 48
  store i64 %i.q, ptr %i.p, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.n ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store <4 x i8> <i8 42, i8 1, i8 1, i8 1>, ptr %i.t, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvh16itanium_demangle10BinaryExprE, i64 16), ptr %i.s, align 8, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.a, ptr %i.u, align 8, !tbaa !140
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %1, ptr %i.v, align 8, !tbaa !69
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.c, ptr %i.w, align 8, !tbaa !141
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_10BinaryExprEJRPNS0_4NodeER10StringViewS9_EEES8_DpOT0_.exit, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.s, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_10BinaryExprEJRPNS0_4NodeER10StringViewS9_EEES8_DpOT0_.exit ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parsePrefixExprE10StringView(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr %1, ptr %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4864) %0) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !47  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !64   ; 2 uses
  %i.g = add i64 %i.f, -4032
  %i.h = icmp ult i64 %i.g, -4080
  br i1 %i.h, label %bb.c, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_10PrefixExprEJR10StringViewRPNS0_4NodeEEEESA_DpOT0_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i: ; preds = %bb.c
  store ptr %i.d, ptr %i.i, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !64
  store ptr %i.i, ptr %i.c, align 16, !tbaa !47
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_10PrefixExprEJR10StringViewRPNS0_4NodeEEEESA_DpOT0_.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_10PrefixExprEJR10StringViewRPNS0_4NodeEEEESA_DpOT0_.exit: ; preds = %bb.b, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i
  %i.l = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.i, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = add nsw i64 %i.l, 48
  store i64 %i.o, ptr %i.n, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.l ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store <4 x i8> <i8 53, i8 1, i8 1, i8 1>, ptr %i.r, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvh16itanium_demangle10PrefixExprE, i64 16), ptr %i.q, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %1, ptr %i.s, align 8, !tbaa !69
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !69
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.a, ptr %i.t, align 8, !tbaa !143
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_10PrefixExprEJR10StringViewRPNS0_4NodeEEEESA_DpOT0_.exit
  %.0 = phi ptr [ %i.q, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_10PrefixExprEJR10StringViewRPNS0_4NodeEEEESA_DpOT0_.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc noundef nonnull ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8CastExprEJRA11_KcRPNS0_4NodeESC_EEESB_DpOT0_(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(4864) %0, ptr %.0.val, ptr %.0.val1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !47  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = add i64 %i.d, -4032
  %i.f = icmp ult i64 %i.e, -4080
  br i1 %i.f, label %bb.b, label %_ZN12_GLOBAL__N_116DefaultAllocator8makeNodeIN4llvh16itanium_demangle8CastExprEJRA11_KcRPNS3_4NodeESA_EEEPT_DpOT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i: ; preds = %bb.b
  store ptr %i.b, ptr %i.g, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !64
end_hunk_0
