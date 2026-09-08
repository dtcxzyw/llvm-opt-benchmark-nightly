Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ItaniumDemangle?download=true
inline.NumInlined: 2019
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE16parseExprPrimaryEv:bb.a
  %isdigittmp2.i = add nsw i32 %i.kb, -48
  %isdigit3.i = icmp ult i32 %isdigittmp2.i, 10
  br i1 %isdigit3.i, label %.lr.ph, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.ithread-pre-split
  %i.kc = phi ptr [ %i.kd, %.lr.ph.ithread-pre-split ], [ %i.jv, %.lr.ph.i.preheader ]
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 1 ; 5 uses
  store ptr %i.kd, ptr %0, align 16, !tbaa !33
  %.not.i150 = icmp eq ptr %i.jw, %i.kd
  br i1 %.not.i150, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseFloatingLiteralIfEEPNS0_4NodeEv.exit, label %.lr.ph.ithread-pre-split, !llvm.loop !2

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit: ; preds = %.lr.ph.ithread-pre-split, %.lr.ph.i.preheader
  %.lcssa190 = phi i8 [ %i.jy, %.lr.ph.i.preheader ], [ %.pr, %.lr.ph.ithread-pre-split ]
  %.lcssa = phi ptr [ %i.jv, %.lr.ph.i.preheader ], [ %i.kd, %.lr.ph.ithread-pre-split ] ; 3 uses
  %i.ke = icmp eq ptr %i.jv, %.lcssa
  br i1 %i.ke, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit.threadthread-pre-split, label %bb.cj

bb.cj:                                            ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit
  %i.kf = icmp eq i8 %.lcssa190, 69
  br i1 %i.kf, label %bb.ck, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseFloatingLiteralIfEEPNS0_4NodeEv.exit

bb.ck:                                            ; preds = %bb.cj
  %i.kg = getelementptr inbounds nuw i8, ptr %.lcssa, i64 1
  store ptr %i.kg, ptr %0, align 16, !tbaa !33
  %i.kh = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_15IntegerCastExprEJRPNS0_4NodeER10StringViewEEES8_DpOT0_(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr nonnull %i.jt, ptr nonnull %i.jv, ptr nonnull %.lcssa)
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseFloatingLiteralIfEEPNS0_4NodeEv.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit.threadthread-pre-split: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit
  %.pr185 = load i8, ptr %i.jv, align 1, !tbaa !18
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit.thread

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit.thread: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit.threadthread-pre-split, %bb.ci
  %i.ki = phi i8 [ %.pr185, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit.threadthread-pre-split ], [ %i.jy, %bb.ci ]
  %i.kj = icmp eq i8 %i.ki, 69
  br i1 %i.kj, label %bb.cl, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseFloatingLiteralIfEEPNS0_4NodeEv.exit

bb.cl:                                            ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit.thread
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jv, i64 1
  store ptr %i.kk, ptr %0, align 16, !tbaa !33
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseFloatingLiteralIfEEPNS0_4NodeEv.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseFloatingLiteralIfEEPNS0_4NodeEv.exit: ; preds = %.lr.ph, %bb.ch, %bb.e, %bb.g, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit.thread, %bb.cj, %bb.ce, %bb.cf, %bb.cd, %bb.cc, %_ZNK10StringView10startsWithES_.exit.i74, %bb.a, %bb.b, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread, %bb.cl, %bb.ck, %bb.cg, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_16FloatLiteralImplIeEEJR10StringViewEEEPNS0_4NodeEDpOT0_.exit.i, %bb.by, %.critedge.i68, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_16FloatLiteralImplIdEEJR10StringViewEEEPNS0_4NodeEDpOT0_.exit.i, %bb.az, %.critedge.i30, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_16FloatLiteralImplIfEEJR10StringViewEEEPNS0_4NodeEDpOT0_.exit.i, %bb.ae, %.critedge.i, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.d
  %.3 = phi ptr [ null, %bb.a ], [ %i.l, %bb.d ], [ %i.x, %bb.f ], [ %i.ai, %bb.h ], [ null, %bb.cj ], [ %i.ak, %bb.i ], [ %i.am, %bb.j ], [ %i.ao, %bb.k ], [ %i.aq, %bb.l ], [ %i.as, %bb.m ], [ %i.au, %bb.n ], [ %i.aw, %bb.o ], [ %i.ay, %bb.p ], [ %i.ba, %bb.q ], [ %i.bc, %bb.r ], [ %i.be, %bb.s ], [ %i.bg, %bb.t ], [ %i.bi, %bb.u ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit ], [ null, %bb.w ], [ null, %bb.aj ], [ null, %bb.be ], [ %i.jn, %bb.cg ], [ null, %bb.ch ], [ null, %bb.v ], [ %i.dd, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_16FloatLiteralImplIfEEJR10StringViewEEEPNS0_4NodeEDpOT0_.exit.i ], [ null, %.critedge.i ], [ null, %bb.ae ], [ null, %bb.ad ], [ null, %bb.ac ], [ null, %bb.ab ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.ai ], [ %i.fy, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_16FloatLiteralImplIdEEJR10StringViewEEEPNS0_4NodeEDpOT0_.exit.i ], [ null, %.critedge.i30 ], [ null, %bb.az ], [ null, %bb.ay ], [ null, %bb.ax ], [ null, %bb.aw ], [ null, %bb.av ], [ null, %bb.au ], [ null, %bb.at ], [ null, %bb.as ], [ null, %bb.ar ], [ null, %bb.aq ], [ null, %bb.ap ], [ null, %bb.ao ], [ null, %bb.an ], [ null, %bb.am ], [ null, %bb.al ], [ null, %bb.ak ], [ null, %bb.bd ], [ %i.jf, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_16FloatLiteralImplIeEEJR10StringViewEEEPNS0_4NodeEDpOT0_.exit.i ], [ null, %.critedge.i68 ], [ null, %bb.by ], [ null, %bb.bx ], [ null, %bb.bw ], [ null, %bb.bv ], [ null, %bb.bu ], [ null, %bb.bt ], [ null, %bb.bs ], [ null, %bb.br ], [ null, %bb.bq ], [ null, %bb.bp ], [ null, %bb.bo ], [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %bb.bk ], [ null, %bb.bj ], [ null, %bb.bi ], [ null, %bb.bh ], [ null, %bb.bg ], [ null, %bb.bf ], [ null, %bb.cc ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread ], [ %i.kh, %bb.ck ], [ null, %bb.ce ], [ %i.jt, %bb.cl ], [ null, %bb.b ], [ null, %_ZNK10StringView10startsWithES_.exit.i74 ], [ null, %bb.cd ], [ null, %bb.cf ], [ null, %bb.g ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit.thread ], [ null, %bb.e ], [ null, %.lr.ph ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE18parseFunctionParamEv(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(4864) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !33    ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 15 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp ult i64 %i.f, 2
  br i1 %i.g, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %_ZNK10StringView10startsWithES_.exit.i

_ZNK10StringView10startsWithES_.exit.i:           ; preds = %bb.a
  %i.h = load i16, ptr %i.a, align 1
  %i.i = icmp ne i16 28774, %i.h
  %i.j = zext i1 %i.i to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not9.i.i.i.i.i.i, label %bb.b, label %_ZNK10StringView10startsWithES_.exit.i9

bb.b:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 5 uses
  store ptr %i.k, ptr %0, align 16, !tbaa !33
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.k, align 1, !tbaa !18
  %i.m = icmp eq i8 %i.l, 114
  br i1 %i.m, label %bb.d, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store ptr %i.n, ptr %0, align 16, !tbaa !33
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.d ], [ %i.k, %bb.c ], [ %i.k, %bb.b ] ; 5 uses
  %.not.i1.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i1.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !18
  %i.q = icmp eq i8 %i.p, 86
  br i1 %i.q, label %bb.f, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.r, ptr %0, align 16, !tbaa !33
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i: ; preds = %bb.f, %bb.e, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i
  %i.s = phi ptr [ %i.r, %bb.f ], [ %i.o, %bb.e ], [ %i.o, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i ] ; 5 uses
  %.not.i4.i = icmp eq ptr %i.s, %i.c
  br i1 %.not.i4.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !18
  %i.u = icmp eq i8 %i.t, 75
  br i1 %i.u, label %bb.h, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  store ptr %i.v, ptr %0, align 16, !tbaa !33
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i, %bb.g, %bb.h
  %i.w = phi ptr [ %i.s, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit3.thread.i ], [ %i.s, %bb.g ], [ %i.v, %bb.h ] ; 7 uses
  %i.x = icmp eq ptr %i.c, %i.w
  br i1 %i.x, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit
  %i.y = load i8, ptr %i.w, align 1, !tbaa !18
  %i.z = sext i8 %i.y to i32
  %isdigittmp.i = add nsw i32 %i.z, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %.lr.ph.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %.val911.i = phi ptr [ %i.ac, %bb.j ], [ %i.w, %bb.i ] ; 4 uses
  %i.aa = load i8, ptr %.val911.i, align 1, !tbaa !18
  %i.ab = sext i8 %i.aa to i32
  %isdigittmp2.i = add nsw i32 %i.ab, -48
  %isdigit3.i = icmp ult i32 %isdigittmp2.i, 10
  br i1 %isdigit3.i, label %bb.j, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit

bb.j:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.val911.i, i64 1 ; 5 uses
  store ptr %i.ac, ptr %0, align 16, !tbaa !33
  %.not.i = icmp eq ptr %i.c, %i.ac
  br i1 %.not.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit, label %.lr.ph.i, !llvm.loop !2

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit: ; preds = %.lr.ph.i, %bb.j, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit, %bb.i
  %i.ad = phi ptr [ %i.w, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit ], [ %i.w, %bb.i ], [ %i.ac, %bb.j ], [ %.val911.i, %.lr.ph.i ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit ], [ null, %bb.i ], [ %i.w, %bb.j ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %.sroa.3.0.i = phi ptr [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseCVQualifiersEv.exit ], [ null, %bb.i ], [ %i.ac, %bb.j ], [ %.val911.i, %.lr.ph.i ] ; 2 uses
  %.not.i6 = icmp eq ptr %i.ad, %i.c
  br i1 %.not.i6, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !18
  %i.af = icmp eq i8 %i.ae, 95
  br i1 %i.af, label %bb.l, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ag, ptr %0, align 16, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !47 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !64 ; 2 uses
  %i.al = add i64 %i.ak, -4048
  %i.am = icmp ult i64 %i.al, -4080
  br i1 %i.am, label %bb.m, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.sink.split

bb.m:                                             ; preds = %bb.l
  %i.an = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.n, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i: ; preds = %bb.m
  store ptr %i.ai, ptr %i.an, align 8, !tbaa !63
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !64
  store ptr %i.an, ptr %i.ah, align 16, !tbaa !47
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.sink.split

_ZNK10StringView10startsWithES_.exit.i9:          ; preds = %_ZNK10StringView10startsWithES_.exit.i
  %i.aq = load i16, ptr %i.a, align 1
  %i.ar = icmp ne i16 19558, %i.aq
  %i.as = zext i1 %i.ar to i32
  %.not9.i.i.i.i.i.i11 = icmp eq i32 %i.as, 0
  br i1 %.not9.i.i.i.i.i.i11, label %bb.o, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

bb.o:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i9
  %.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  store ptr %.ptr, ptr %0, align 16, !tbaa !33
  %i.at = icmp eq ptr %i.c, %.ptr
  br i1 %i.at, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load i8, ptr %.ptr, align 1, !tbaa !18
  %i.av = sext i8 %i.au to i32
  %isdigittmp.i16 = add nsw i32 %i.av, -48
  %isdigit.i17 = icmp ult i32 %isdigittmp.i16, 10
  br i1 %isdigit.i17, label %.lr.ph.i22.preheader, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

.lr.ph.i22.preheader:                             ; preds = %bb.p
  %.val911.i23.ptr131 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.aw = load i8, ptr %.val911.i23.ptr131, align 1, !tbaa !18
  %i.ax = sext i8 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, -48
  %isdigit3.i25133 = icmp ult i32 %i.ay, 10
  br i1 %isdigit3.i25133, label %.lr.ph, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

.lr.ph.i22:                                       ; preds = %.lr.ph
  %.val911.i23.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.val911.i23.add
  %i.az = load i8, ptr %.val911.i23.ptr, align 1, !tbaa !18
  %i.ba = sext i8 %i.az to i32
  %isdigittmp2.i24 = add nsw i32 %i.ba, -48
  %isdigit3.i25 = icmp ult i32 %isdigittmp2.i24, 10
  br i1 %isdigit3.i25, label %.lr.ph, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27, !llvm.loop !2

.lr.ph:                                           ; preds = %.lr.ph.i22.preheader, %.lr.ph.i22
  %.val911.i23.idx134 = phi i64 [ %.val911.i23.add, %.lr.ph.i22 ], [ 2, %.lr.ph.i22.preheader ]
  %.val911.i23.add = add nuw i64 %.val911.i23.idx134, 1 ; 7 uses
  %.ptr80 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.val911.i23.add
  store ptr %.ptr80, ptr %0, align 16, !tbaa !33
  %exitcond = icmp eq i64 %.val911.i23.add, %i.f
  br i1 %exitcond, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73.loopexit, label %.lr.ph.i22, !llvm.loop !2

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27: ; preds = %.lr.ph.i22
  %.ptr80.le = getelementptr inbounds nuw i8, ptr %i.a, i64 %.val911.i23.add
  %1 = icmp eq i64 %.val911.i23.add, 2
  br i1 %1, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73.loopexit: ; preds = %.lr.ph
  %.ptr80.le141 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.val911.i23.add
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73.loopexit, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27
  %.ptr80140 = phi ptr [ %.ptr80.le141, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73.loopexit ], [ %.ptr80.le, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27 ] ; 4 uses
  %.not.i28 = icmp eq ptr %.ptr80140, %i.c
  br i1 %.not.i28, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73
  %i.bb = load i8, ptr %.ptr80140, align 1, !tbaa !18
  %i.bc = icmp eq i8 %i.bb, 112
  br i1 %i.bc, label %bb.r, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %.ptr80140, i64 1 ; 5 uses
  store ptr %i.bd, ptr %0, align 16, !tbaa !33
  %.not.i.i31 = icmp eq ptr %i.bd, %i.c
  br i1 %.not.i.i31, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i32, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !18
  %i.bf = icmp eq i8 %i.be, 114
  br i1 %i.bf, label %bb.t, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.i32

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %.ptr80140, i64 2 ; 2 uses
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

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread: ; preds = %.lr.ph.i22.preheader, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.sink.split, %bb.a, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit52, %bb.aa, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73, %bb.q, %bb.p, %bb.o, %_ZNK10StringView10startsWithES_.exit.i9, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit, %bb.k, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27
  %.2 = phi ptr [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit ], [ null, %bb.p ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit52 ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27 ], [ null, %bb.aa ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73 ], [ null, %bb.a ], [ null, %bb.k ], [ null, %_ZNK10StringView10startsWithES_.exit.i9 ], [ null, %bb.o ], [ null, %bb.q ], [ %i.cm, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.sink.split ], [ null, %.lr.ph.i22.preheader ]
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
end_hunk_0
