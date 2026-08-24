Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev-inlining?download=true
inline.NumInlined: 4734
inline.NumDeleted: 1602
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2v88internal6maglev14GraphProcessorINS1_37ClearReturnedValueUsesFromDeoptFramesEE12ProcessGraphEPNS1_5GraphE:bb.a
_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE9push_backERKS4_.exit: ; preds = %bb.bn, %bb.bo
  %i.km = phi ptr [ %i.ka, %bb.bn ], [ %.pre.i, %bb.bo ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store ptr %i.kn, ptr %i.jz, align 8
  store ptr %i.jx, ptr %i.km, align 8
  %i.ko = load ptr, ptr %i.ja, align 8
  store ptr %i.ko, ptr %i.hk, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bl, %bb.bm, %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE9push_backERKS4_.exit, %.lr.ph115
  %i.kp = load ptr, ptr %i.hk, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 3 uses
  store ptr %i.kq, ptr %i.hk, align 8
  %i.kr = load ptr, ptr %i.jc, align 8
  %.not51 = icmp eq ptr %i.kq, %i.kr
  br i1 %.not51, label %._crit_edge, label %.lr.ph115, !llvm.loop !88

._crit_edge:                                      ; preds = %bb.bp, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread
  %i.ks = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  %i.kt = load ptr, ptr %i.ks, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.ku = load ptr, ptr %i.a, align 8, !noalias !89
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 40
  %i.kw = load ptr, ptr %i.kv, align 8, !noalias !89
  %i.kx = load ptr, ptr %i.hf, align 8, !noalias !89
  store ptr %i.kw, ptr %14, align 8, !alias.scope !89
  store ptr %i.kx, ptr %i.hn, align 8, !alias.scope !89
  store i32 -1, ptr %i.ho, align 8, !alias.scope !89
  %i.ky = call noundef i32 @_ZN2v88internal6maglev37ClearReturnedValueUsesFromDeoptFrames7ProcessEPNS1_8NodeBaseERKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.kt, ptr noundef nonnull align 8 dereferenceable(20) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  switch i32 %i.ky, label %.critedge53 [
    i32 2, label %bb.bq
    i32 1, label %bb.bq
    i32 3, label %.thread100
  ], !prof !39

bb.bq:                                            ; preds = %._crit_edge, %._crit_edge
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12) #21
  unreachable

.critedge53:                                      ; preds = %.lr.ph, %bb.bl, %._crit_edge, %bb.ba, %bb.az
  %i.kz = load ptr, ptr %i.hf, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 3 uses
  store ptr %i.la, ptr %i.hf, align 8
  %i.lb = load ptr, ptr %i.hg, align 8
  %.not = icmp eq ptr %i.la, %i.lb
  br i1 %.not, label %.thread100, label %bb.az, !llvm.loop !92

.thread100:                                       ; preds = %._crit_edge, %.critedge53, %.lr.ph, %bb.bl, %_ZZN2v88internal6maglev14GraphProcessorINS1_37ClearReturnedValueUsesFromDeoptFramesEE12ProcessGraphEPNS1_5GraphEENKUlRT_E_clINS0_7ZoneMapINS0_8compiler13HeapObjectRefEPNS1_15TrustedConstantESt4lessISD_EEEEEDaS8_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6maglev10BasicBlock5SplitEPNS1_4NodeEPNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::ZoneVector.107") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 4 uses
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01318 = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ] ; 13 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.01318
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.j, %2
  br i1 %i.k, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = add nuw i64 %.01318, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %i.h
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !93

._crit_edge.thread:                               ; preds = %bb.b, %bb.a
  %.013.lcssa.ph = phi i64 [ 0, %bb.a ], [ %i.h, %bb.b ]
  store ptr %3, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  br label %._crit_edge25

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = sub i64 %i.h, %.01318                    ; 2 uses
  store ptr %3, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not.i = icmp eq i64 %i.h, %.01318
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %._crit_edge25, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.r = icmp ult i64 %i.n, 2305843009213693951
  br i1 %i.r, label %bb.e, label %bb.d, !prof !18

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13) #21
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = shl nuw i64 %i.n, 3                      ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %i.y = icmp ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.f, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEEC2EmPNS0_4ZoneE.exit, !prof !9

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef %i.s) #20
  %.pre.i.i.i = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEEC2EmPNS0_4ZoneE.exit

_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEEC2EmPNS0_4ZoneE.exit: ; preds = %bb.e, %bb.f
  %i.z = phi i64 [ %.pre.i.i.i, %bb.f ], [ %i.w, %bb.e ] ; 6 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 8 uses
  %i.ab = add i64 %i.z, %i.s
  store i64 %i.ab, ptr %i.v, align 8
  store ptr %i.aa, ptr %i.o, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s ; 3 uses
  store ptr %i.ac, ptr %i.q, align 8
  store ptr %i.ac, ptr %i.p, align 8
  %i.ad = add i64 %i.z, %i.g
  %i.ae = shl i64 %.01318, 3
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = add nuw i64 %i.z, 8
  %umax27 = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %i.ag)
  %i.ah = xor i64 %i.z, -1
  %i.ai = add i64 %umax27, %i.ah
  %i.aj = and i64 %i.ai, -8
  %i.ak = add i64 %i.aj, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ak, i1 false)
  %i.al = ptrtoint ptr %i.ac to i64
  %i.am = sub i64 %i.al, %i.z
  %i.an = ashr exact i64 %i.am, 3                 ; 3 uses
  %i.ao = add nsw i64 %i.an, -1
  %xtraiter = and i64 %i.an, 3                    ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 3
  br i1 %i.ap, label %.lr.ph24.epil.preheader, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEEC2EmPNS0_4ZoneE.exit.new

_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEEC2EmPNS0_4ZoneE.exit.new: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEEC2EmPNS0_4ZoneE.exit
  %unroll_iter = and i64 %i.an, -4
  br label %.lr.ph24

._crit_edge25.loopexit.unr-lcssa:                 ; preds = %.lr.ph24
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge25, label %.lr.ph24.epil.preheader

.lr.ph24.epil.preheader:                          ; preds = %._crit_edge25.loopexit.unr-lcssa, %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEEC2EmPNS0_4ZoneE.exit
  %.023.epil.init = phi i64 [ 0, %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEEC2EmPNS0_4ZoneE.exit ], [ %i.cn, %._crit_edge25.loopexit.unr-lcssa ]
  %lcmp.mod44 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %.lr.ph24.epil

.lr.ph24.epil:                                    ; preds = %.lr.ph24.epil, %.lr.ph24.epil.preheader
  %.023.epil = phi i64 [ %i.av, %.lr.ph24.epil ], [ %.023.epil.init, %.lr.ph24.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph24.epil ], [ 0, %.lr.ph24.epil.preheader ]
  %i.aq = load ptr, ptr %i.c, align 8
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %.023.epil
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %.01318
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.023.epil
  store ptr %i.at, ptr %i.au, align 8
  %i.av = add nuw i64 %.023.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge25, label %.lr.ph24.epil, !llvm.loop !94

._crit_edge25:                                    ; preds = %._crit_edge25.loopexit.unr-lcssa, %.lr.ph24.epil, %._crit_edge.thread, %._crit_edge
  %.013.lcssa3740 = phi i64 [ %.01318, %._crit_edge ], [ %.013.lcssa.ph, %._crit_edge.thread ], [ %.01318, %.lr.ph24.epil ], [ %.01318, %._crit_edge25.loopexit.unr-lcssa ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %.not.i.i = icmp ugt i64 %.013.lcssa3740, %i.bc
  br i1 %.not.i.i, label %bb.g, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i, !prof !9

bb.g:                                             ; preds = %._crit_edge25
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 noundef %.013.lcssa3740)
  %.pre.i = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i: ; preds = %bb.g, %._crit_edge25
  %i.be = phi ptr [ %i.ay, %._crit_edge25 ], [ %.pre.i, %bb.g ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.013.lcssa3740 ; 2 uses
  %i.bg = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.bh = icmp ult ptr %i.bg, %i.bf
  br i1 %i.bh, label %.lr.ph.preheader.i14, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit

.lr.ph.preheader.i14:                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i
  %i.bi = ptrtoaddr ptr %i.bg to i64              ; 2 uses
  %i.bj = ptrtoaddr ptr %i.be to i64
  %i.bk = shl nuw nsw i64 %.013.lcssa3740, 3
  %4 = add nuw i64 %i.bk, %i.bj
  %i.bl = add i64 %i.bi, 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %4, i64 %i.bl)
  %i.bm = xor i64 %i.bi, -1
  %i.bn = add i64 %umax.i, %i.bm
  %i.bo = and i64 %i.bn, -8
  %i.bp = add i64 %i.bo, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bg, i8 0, i64 %i.bp, i1 false)
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit

_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i14
  store ptr %i.bf, ptr %i.a, align 8
  ret void

.lr.ph24:                                         ; preds = %.lr.ph24, %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEEC2EmPNS0_4ZoneE.exit.new
  %.023 = phi i64 [ 0, %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEEC2EmPNS0_4ZoneE.exit.new ], [ %i.cn, %.lr.ph24 ] ; 6 uses
  %niter = phi i64 [ 0, %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEEC2EmPNS0_4ZoneE.exit.new ], [ %niter.next.3, %.lr.ph24 ]
  %i.bq = load ptr, ptr %i.c, align 8
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %.023
  %i.bs = getelementptr [8 x i8], ptr %i.br, i64 %.01318
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.023
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bv = or disjoint i64 %.023, 1                ; 2 uses
  %i.bw = load ptr, ptr %i.c, align 8
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.bv
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %.01318
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bv
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = or disjoint i64 %.023, 2                ; 2 uses
  %i.cc = load ptr, ptr %i.c, align 8
  %i.cd = getelementptr [8 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %.01318
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.cb
  store ptr %i.cf, ptr %i.cg, align 8
  %i.ch = or disjoint i64 %.023, 3                ; 2 uses
  %i.ci = load ptr, ptr %i.c, align 8
  %i.cj = getelementptr [8 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = getelementptr [8 x i8], ptr %i.cj, i64 %.01318
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ch
  store ptr %i.cl, ptr %i.cm, align 8
  %i.cn = add nuw i64 %.023, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge25.loopexit.unr-lcssa, label %.lr.ph24, !llvm.loop !96
}

declare void @_ZN2v88internal6maglev18MaglevGraphBuilderC1EPNS0_12LocalIsolateEPNS1_21MaglevCompilationUnitEPNS1_5GraphEPNS1_19MaglevCallerDetailsE(ptr noundef nonnull align 8 dereferenceable(953), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

declare noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder31AddInlinedArgumentsToDeoptFrameEPNS1_10DeoptFrameEPKNS1_21MaglevCompilationUnitEPNS1_9ValueNodeENS_4base6VectorIS9_EE(ptr noundef nonnull align 8 dereferenceable(953), ptr noundef, ptr noundef, ptr noundef, ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev13MaglevInliner15TruncateGraphAtEPNS1_10BasicBlockE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.g = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = ashr i64 %i.h, 5                         ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.k = and i64 %i.h, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.c, i64 %i.k ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.047.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i ], [ %i.x, %bb.f ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.w, %bb.f ] ; 9 uses
  %i.l = load ptr, ptr %.02946.i.i.i, align 8
  %i.m = icmp eq ptr %i.l, %2
  br i1 %i.m, label %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.o, %2
  br i1 %i.p, label %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.r, %2
  br i1 %i.s, label %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit.loopexit.split.loop.exit25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.u, %2
  br i1 %i.v, label %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit.loopexit.split.loop.exit27, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 32
  %i.x = add nsw i64 %.047.i.i.i, -1
  %i.y = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.y, label %bb.b, label %._crit_edge.loopexit.i.i.i, !llvm.loop !97

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %.pre54.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre55.i.i.i = sub i64 %i.f, %.pre54.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi56.i.i.i = phi i64 [ %.pre55.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.h, %bb.a ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.c, %bb.a ] ; 5 uses
  %i.z = ashr exact i64 %.pre-phi56.i.i.i, 3
  switch i64 %i.z, label %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit.thread [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load ptr, ptr %.029.lcssa.i.i.i, align 8
  %i.ab = icmp eq ptr %i.aa, %2
  br i1 %i.ab, label %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.h
  %.1.i.i.i = phi ptr [ %i.ac, %bb.h ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ad = load ptr, ptr %.1.i.i.i, align 8
  %i.ae = icmp eq ptr %i.ad, %2
  br i1 %i.ae, label %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.i
  %.2.i.i.i = phi ptr [ %i.af, %bb.i ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ag = load ptr, ptr %.2.i.i.i, align 8
  %i.ah = icmp eq ptr %i.ag, %2
  br i1 %i.ah, label %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit, label %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit.thread

_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 8
  br label %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit

_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit.loopexit.split.loop.exit25: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 16
  br label %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit

_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit.loopexit.split.loop.exit27: ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 24
  br label %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit

_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit: ; preds = %bb.b, %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit.loopexit.split.loop.exit25, %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit.loopexit.split.loop.exit27, %bb.g, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge52.i.i.i
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %.029.lcssa.i.i.i, %bb.g ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %i.ak, %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit.loopexit.split.loop.exit27 ], [ %i.aj, %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit.loopexit.split.loop.exit25 ], [ %i.ai, %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i, %bb.b ] ; 2 uses
  %.not = icmp eq ptr %.028.i.i.i, %i.e
  br i1 %.not, label %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit.thread, label %bb.j, !prof !98

_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit.thread: ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i, %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #21
  unreachable

bb.j:                                             ; preds = %_ZSt4findIPPN2v88internal6maglev10BasicBlockES4_ET_S6_S6_RKT0_.exit
  %i.al = ptrtoint ptr %.028.i.i.i to i64
  %i.am = sub i64 %i.al, %i.g                     ; 5 uses
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.f, %i.aq                     ; 7 uses
  %i.as = icmp ugt i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.k, label %_ZNSt6vectorIPN2v88internal6maglev10BasicBlockESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #21
  unreachable

_ZNSt6vectorIPN2v88internal6maglev10BasicBlockESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i: ; preds = %bb.j
  %.not.i.i.i = icmp eq ptr %i.e, %i.ap
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIPN2v88internal6maglev10BasicBlockESaIS4_EE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIPN2v88internal6maglev10BasicBlockESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr null, i64 %i.ar ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8
  br label %_ZNSt6vectorIPN2v88internal6maglev10BasicBlockESaIS4_EEC2IPS4_vEET_S9_RKS5_.exit

_ZNSt12_Vector_baseIPN2v88internal6maglev10BasicBlockESaIS4_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIPN2v88internal6maglev10BasicBlockESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #24 ; 4 uses
  store ptr %i.av, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ar ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ay = icmp samesign ugt i64 %i.ar, 8
  br i1 %i.ay, label %bb.l, label %bb.m, !prof !99

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIPN2v88internal6maglev10BasicBlockESaIS4_EE11_M_allocateEm.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr nonnull align 8 %i.ap, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIPN2v88internal6maglev10BasicBlockESaIS4_EEC2IPS4_vEET_S9_RKS5_.exit

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIPN2v88internal6maglev10BasicBlockESaIS4_EE11_M_allocateEm.exit.i.i
  %i.az = icmp eq i64 %i.ar, 8
  br i1 %i.az, label %bb.n, label %_ZNSt6vectorIPN2v88internal6maglev10BasicBlockESaIS4_EEC2IPS4_vEET_S9_RKS5_.exit

bb.n:                                             ; preds = %bb.m
  %i.ba = load ptr, ptr %i.ap, align 8
  store ptr %i.ba, ptr %i.av, align 8
  br label %_ZNSt6vectorIPN2v88internal6maglev10BasicBlockESaIS4_EEC2IPS4_vEET_S9_RKS5_.exit

_ZNSt6vectorIPN2v88internal6maglev10BasicBlockESaIS4_EEC2IPS4_vEET_S9_RKS5_.exit: ; preds = %.thread.i.i, %bb.l, %bb.m, %bb.n
  %i.bb = phi ptr [ %i.aw, %bb.l ], [ %i.aw, %bb.m ], [ %i.aw, %bb.n ], [ %i.at, %.thread.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %1, align 8               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %.not.i.i = icmp ugt i64 %i.am, %i.bk
  br i1 %.not.i.i, label %bb.o, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit.i, !prof !9

bb.o:                                             ; preds = %_ZNSt6vectorIPN2v88internal6maglev10BasicBlockESaIS4_EEC2IPS4_vEET_S9_RKS5_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 noundef %i.an)
  %.pre.i = load ptr, ptr %i.bg, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit.i: ; preds = %bb.o, %_ZNSt6vectorIPN2v88internal6maglev10BasicBlockESaIS4_EEC2IPS4_vEET_S9_RKS5_.exit
  %i.bm = phi ptr [ %i.bh, %_ZNSt6vectorIPN2v88internal6maglev10BasicBlockESaIS4_EEC2IPS4_vEET_S9_RKS5_.exit ], [ %.pre.i, %bb.o ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.am ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 40 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
  %i.bq = icmp ult ptr %i.bp, %i.bn
  br i1 %i.bq, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE6resizeEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit.i
  %i.br = ptrtoaddr ptr %i.bp to i64              ; 2 uses
  %i.bs = ptrtoaddr ptr %i.bm to i64
  %3 = add nuw i64 %i.am, %i.bs
  %i.bt = add i64 %i.br, 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.bt)
  %i.bu = xor i64 %i.br, -1
  %i.bv = add i64 %umax.i, %i.bu
  %i.bw = and i64 %i.bv, -8
  %i.bx = add i64 %i.bw, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bp, i8 0, i64 %i.bx, i1 false)
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE6resizeEm.exit

_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i
  store ptr %i.bn, ptr %i.bo, align 8
  ret void
}

declare void @_ZN2v88internal6maglev18MaglevGraphBuilder17set_current_blockEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(953), ptr noundef) local_unnamed_addr #6

declare i64 @_ZN2v88internal6maglev18MaglevGraphBuilder19BuildInlineFunctionENS0_14SourcePositionEPNS1_9ValueNodeES5_S5_(ptr noundef nonnull align 8 dereferenceable(953), i64, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev13MaglevInliner26RemovePredecessorFollowingEPNS1_11ControlNodeEPNS1_10BasicBlockE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i16                    ; 2 uses
  %i.d = add i16 %i.c, -320
  %i.e = icmp ult i16 %i.d, -3
  %.not1.i = icmp eq ptr %1, null                 ; 3 uses
  %.not.i = or i1 %.not1.i, %i.e
  br i1 %.not.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = icmp eq i8 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 6 uses
  %i.l = icmp ne ptr %i.k, null
  %i.m = select i1 %i.i, i1 %i.l, i1 false
  br i1 %i.m, label %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store ptr null, ptr %i.n, align 8
  br label %"_ZN2v88internal6maglev10BasicBlock25ForEachSuccessorFollowingIZNS1_13MaglevInliner26RemovePredecessorFollowingEPNS1_11ControlNodeEPS2_E3$_0EEvS6_OT_.exit"

_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 3
  %i.r = icmp eq i32 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4              ; 4 uses
  br i1 %i.r, label %bb.d, label %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit._crit_edge.i.i

bb.d:                                             ; preds = %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = sext i32 %i.t to i64
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %i.z, %2
  br i1 %i.aa, label %bb.e, label %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit._crit_edge.i.i

bb.e:                                             ; preds = %bb.d
  %i.ab = add i32 %i.t, -1
  store i32 %i.ab, ptr %i.s, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = add i32 %i.ad, -1
  store i32 %i.ae, ptr %i.ac, align 8
  tail call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState25ReducePhiPredecessorCountEj(ptr noundef nonnull align 8 dereferenceable(312) %i.k, i32 noundef 1) #20
  %i.af = load i32, ptr %i.o, align 4
  %i.ag = and i32 %i.af, -8
  store i32 %i.ag, ptr %i.o, align 4
  br label %"_ZN2v88internal6maglev10BasicBlock25ForEachSuccessorFollowingIZNS1_13MaglevInliner26RemovePredecessorFollowingEPNS1_11ControlNodeEPS2_E3$_0EEvS6_OT_.exit"

_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit._crit_edge.i.i: ; preds = %bb.d, %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i
  %i.ah = icmp sgt i32 %i.t, 0
  br i1 %i.ah, label %.lr.ph.preheader.i.i, label %"_ZN2v88internal6maglev10BasicBlock25ForEachSuccessorFollowingIZNS1_13MaglevInliner26RemovePredecessorFollowingEPNS1_11ControlNodeEPS2_E3$_0EEvS6_OT_.exit"

.lr.ph.preheader.i.i:                             ; preds = %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit._crit_edge.i.i
  %i.ai = zext nneg i32 %i.t to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.ai, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aj = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.i
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp eq ptr %i.an, %2
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  tail call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState19RemovePredecessorAtEi(ptr noundef nonnull align 8 dereferenceable(312) %i.aj, i32 noundef %i.ap) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.aq = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.aq, label %.lr.ph.i.i, label %"_ZN2v88internal6maglev10BasicBlock25ForEachSuccessorFollowingIZNS1_13MaglevInliner26RemovePredecessorFollowingEPNS1_11ControlNodeEPS2_E3$_0EEvS6_OT_.exit", !llvm.loop !100

bb.h:                                             ; preds = %bb.a
  %i.ar = add i16 %i.c, -317
  %i.as = icmp ult i16 %i.ar, -15
  %.not23.i = or i1 %.not1.i, %i.as
  br i1 %.not23.i, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %i.av = load i8, ptr %i.au, align 8
  %i.aw = icmp eq i8 %i.av, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 64 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 6 uses
  %i.az = icmp ne ptr %i.ay, null
  %i.ba = select i1 %i.aw, i1 %i.az, i1 false
  br i1 %i.ba, label %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i26.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store ptr null, ptr %i.bb, align 8
  br label %"_ZZN2v88internal6maglev13MaglevInliner26RemovePredecessorFollowingEPNS1_11ControlNodeEPNS1_10BasicBlockEENK3$_0clES6_.exit32.i"

_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i26.i: ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 12 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = and i32 %i.bd, 3
  %i.bf = icmp eq i32 %i.be, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4            ; 4 uses
  br i1 %i.bf, label %bb.k, label %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit._crit_edge.i27.i

bb.k:                                             ; preds = %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i26.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = sext i32 %i.bh to i64
  %i.bl = getelementptr [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 -8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = icmp eq ptr %i.bn, %2
  br i1 %i.bo, label %bb.l, label %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit._crit_edge.i27.i

bb.l:                                             ; preds = %bb.k
  %i.bp = add i32 %i.bh, -1
  store i32 %i.bp, ptr %i.bg, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = add i32 %i.br, -1
  store i32 %i.bs, ptr %i.bq, align 8
  tail call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState25ReducePhiPredecessorCountEj(ptr noundef nonnull align 8 dereferenceable(312) %i.ay, i32 noundef 1) #20
  %i.bt = load i32, ptr %i.bc, align 4
  %i.bu = and i32 %i.bt, -8
  store i32 %i.bu, ptr %i.bc, align 4
  br label %"_ZZN2v88internal6maglev13MaglevInliner26RemovePredecessorFollowingEPNS1_11ControlNodeEPNS1_10BasicBlockEENK3$_0clES6_.exit32.i"

_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit._crit_edge.i27.i: ; preds = %bb.k, %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i26.i
  %i.bv = icmp sgt i32 %i.bh, 0
  br i1 %i.bv, label %.lr.ph.preheader.i28.i, label %"_ZZN2v88internal6maglev13MaglevInliner26RemovePredecessorFollowingEPNS1_11ControlNodeEPNS1_10BasicBlockEENK3$_0clES6_.exit32.i"

.lr.ph.preheader.i28.i:                           ; preds = %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit._crit_edge.i27.i
  %i.bw = zext nneg i32 %i.bh to i64
  br label %.lr.ph.i29.i

.lr.ph.i29.i:                                     ; preds = %bb.n, %.lr.ph.preheader.i28.i
  %indvars.iv.i30.i = phi i64 [ %i.bw, %.lr.ph.preheader.i28.i ], [ %indvars.iv.next.i31.i, %bb.n ] ; 2 uses
  %indvars.iv.next.i31.i = add nsw i64 %indvars.iv.i30.i, -1 ; 3 uses
  %i.bx = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next.i31.i
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = icmp eq ptr %i.cb, %2
  br i1 %i.cc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i29.i
  %i.cd = trunc nuw nsw i64 %indvars.iv.next.i31.i to i32
  tail call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState19RemovePredecessorAtEi(ptr noundef nonnull align 8 dereferenceable(312) %i.bx, i32 noundef %i.cd) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i29.i
  %i.ce = icmp samesign ugt i64 %indvars.iv.i30.i, 1
  br i1 %i.ce, label %.lr.ph.i29.i, label %"_ZZN2v88internal6maglev13MaglevInliner26RemovePredecessorFollowingEPNS1_11ControlNodeEPNS1_10BasicBlockEENK3$_0clES6_.exit32.i", !llvm.loop !100

"_ZZN2v88internal6maglev13MaglevInliner26RemovePredecessorFollowingEPNS1_11ControlNodeEPNS1_10BasicBlockEENK3$_0clES6_.exit32.i": ; preds = %bb.n, %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit._crit_edge.i27.i, %bb.l, %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8            ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 8
  %i.ci = icmp eq i8 %i.ch, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 64 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 6 uses
  %i.cl = icmp ne ptr %i.ck, null
  %i.cm = select i1 %i.ci, i1 %i.cl, i1 false
  br i1 %i.cm, label %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i33.i, label %bb.o

bb.o:                                             ; preds = %"_ZZN2v88internal6maglev13MaglevInliner26RemovePredecessorFollowingEPNS1_11ControlNodeEPNS1_10BasicBlockEENK3$_0clES6_.exit32.i"
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  store ptr null, ptr %i.cn, align 8
  br label %"_ZN2v88internal6maglev10BasicBlock25ForEachSuccessorFollowingIZNS1_13MaglevInliner26RemovePredecessorFollowingEPNS1_11ControlNodeEPS2_E3$_0EEvS6_OT_.exit"

end_hunk_0
