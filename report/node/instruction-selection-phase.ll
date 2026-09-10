Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/instruction-selection-phase?download=true
inline.NumInlined: 849
inline.NumDeleted: 571
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft25SpecialRPOSchedulingPhase3RunEPNS2_12PipelineDataEPNS0_4ZoneE:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = sub i64 %i.r, %i.t
  %i.v = icmp ugt i64 %i.p, %i.u
  br i1 %i.v, label %bb.c, label %.lr.ph.preheader.i.i.i.i, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.p) #20
  %.pre.i.i.i.i.i.i = load i64, ptr %i.s, align 8
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.c, %bb.b
  %i.w = phi i64 [ %.pre.i.i.i.i.i.i, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  %i.y = add i64 %i.w, %i.p
  store i64 %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.m, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p ; 3 uses
  store ptr %i.z, ptr %i.o, align 8
  store ptr %i.z, ptr %i.n, align 8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.x, %.lr.ph.preheader.i.i.i.i ] ; 4 uses
  store i64 4294967295, ptr %.09.i.i.i.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  store i64 -1, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store ptr null, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24 ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %i.z
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft28TurboshaftSpecialRPONumbererC2ERKNS2_5GraphEPNS0_4ZoneE.exit, !llvm.loop !31

_ZN2v88internal8compiler10turboshaft28TurboshaftSpecialRPONumbererC2ERKNS2_5GraphEPNS0_4ZoneE.exit: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %2, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !range !11, !noundef !12
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft28TurboshaftSpecialRPONumbererC2ERKNS2_5GraphEPNS0_4ZoneE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN2v88internal8compiler10turboshaft28TurboshaftSpecialRPONumberer17ComputeSpecialRPOEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::ZoneVector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %3)
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  call void @_ZN2v88internal8compiler10turboshaft5Graph13ReorderBlocksENS_4base6VectorIjEE(ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr %i.ak, i64 %i.aq)
  store i8 1, ptr %i.ag, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft28TurboshaftSpecialRPONumbererC2ERKNS2_5GraphEPNS0_4ZoneE.exit
  %i.ar = load ptr, ptr %i.f, align 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  store i32 0, ptr %i.at, align 8
  %i.au = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.av = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN2v88internal8compiler10turboshaft17PropagateDeferredERNS2_5GraphE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.loopexit.i
  %.sroa.027.032.i = phi ptr [ %i.bv, %.loopexit.i ], [ %i.au, %bb.e ] ; 2 uses
  %i.ax = load ptr, ptr %.sroa.027.032.i, align 8 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load ptr, ptr %i.ay, align 8            ; 5 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bc = load i8, ptr %i.bb, align 8
  %i.bd = icmp eq i8 %i.bc, 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  store i32 %i.bh, ptr %i.bi, align 8
  br label %.loopexit.i

bb.h:                                             ; preds = %bb.f
  %i.bj = icmp eq ptr %i.bf, null
  br i1 %i.bj, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.bl = load i32, ptr %i.bk, align 8
  %.not25.i = icmp eq i32 %i.bl, 0
  br i1 %.not25.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bm = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft19IsUnlikelySuccessorEPKNS2_5BlockES5_RKNS2_5GraphE(ptr noundef nonnull %i.az, ptr noundef nonnull %i.ax, ptr noundef nonnull align 8 dereferenceable(328) %i.b) #20
  %i.bn = zext i1 %i.bm to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bo = phi i32 [ 1, %bb.i ], [ %i.bn, %bb.j ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  store i32 %i.bo, ptr %i.bp, align 8
  br label %.loopexit.i

bb.l:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 96 ; 2 uses
  store i32 1, ptr %i.bq, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %.031.i = phi ptr [ %i.az, %bb.l ], [ %i.bu, %bb.o ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.031.i, i64 96
  %i.bs = load i32, ptr %i.br, align 8
  %.not24.i = icmp eq i32 %i.bs, 0
  br i1 %.not24.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bq, align 8
  br label %.loopexit.i

bb.o:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %.031.i, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.bu, null
  br i1 %.not.i, label %.loopexit.i, label %bb.m, !llvm.loop !2

.loopexit.i:                                      ; preds = %bb.o, %bb.n, %bb.k, %bb.g, %.lr.ph.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.027.032.i, i64 8 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.av
  br i1 %i.bw, label %_ZN2v88internal8compiler10turboshaft17PropagateDeferredERNS2_5GraphE.exit, label %.lr.ph.i

_ZN2v88internal8compiler10turboshaft17PropagateDeferredERNS2_5GraphE.exit: ; preds = %.loopexit.i, %bb.e
  %i.bx = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = icmp ult ptr %i.bx, %i.bz
  br i1 %i.ca, label %.lr.ph.i.i, label %_ZN2v88internal8compiler10turboshaft28TurboshaftSpecialRPONumbererD2Ev.exit

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal8compiler10turboshaft17PropagateDeferredERNS2_5GraphE.exit, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %i.bx, %_ZN2v88internal8compiler10turboshaft17PropagateDeferredERNS2_5GraphE.exit ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft5BlockELm4ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cb)
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96 ; 2 uses
  %i.cd = load ptr, ptr %i.by, align 8
  %i.ce = icmp ult ptr %i.cc, %i.cd
  br i1 %i.ce, label %.lr.ph.i.i, label %_ZN2v88internal8compiler10turboshaft28TurboshaftSpecialRPONumbererD2Ev.exit, !llvm.loop !32

_ZN2v88internal8compiler10turboshaft28TurboshaftSpecialRPONumbererD2Ev.exit: ; preds = %.lr.ph.i.i, %_ZN2v88internal8compiler10turboshaft17PropagateDeferredERNS2_5GraphE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft5Graph13ReorderBlocksENS_4base6VectorIjEE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %.not.i.i = icmp ugt i64 %i.i, %i.p
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE14EnsureCapacityEm.exit.i, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.q = ashr exact i64 %i.i, 3
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE14EnsureCapacityEm.exit.i: ; preds = %bb.b, %bb.a
  %i.r = phi ptr [ %i.m, %bb.a ], [ %.pre.i, %bb.b ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = icmp ult ptr %i.u, %i.s
  br i1 %i.v, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE6resizeEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE14EnsureCapacityEm.exit.i
  %i.w = ptrtoaddr ptr %i.u to i64
  %i.x = ptrtoaddr ptr %i.r to i64
  %i.y = add i64 %i.i, %i.x
  %i.z = xor i64 %i.w, -1
  %i.aa = add i64 %i.y, %i.z
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.ac, i1 false)
  %.pre = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE6resizeEm.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i
  %i.ad = phi ptr [ %i.r, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE14EnsureCapacityEm.exit.i ], [ %.pre, %.lr.ph.preheader.i ]
  store ptr %i.s, ptr %i.t, align 8
  %i.ae = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.af = load ptr, ptr %i.j, align 8
  %i.ag = icmp eq ptr %i.ae, null
  %.pre8 = load ptr, ptr %i.b, align 8            ; 2 uses
  br i1 %i.ag, label %bb.c, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEEaSEOS6_.exit.i

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE6resizeEm.exit
  store ptr %.pre8, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEEaSEOS6_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEEaSEOS6_.exit.i: ; preds = %bb.c, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE6resizeEm.exit
  %i.ah = load <2 x ptr>, ptr %i.e, align 8
  store <2 x ptr> %i.ah, ptr %i.l, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  store ptr %i.aj, ptr %i.j, align 8
  %i.ak = icmp eq ptr %.pre8, null
  br i1 %i.ak, label %bb.d, label %_ZSt4swapIN2v88internal10ZoneVectorIPNS1_8compiler10turboshaft5BlockEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISB_ESt18is_move_assignableISB_EEE5valueEvE4typeERSB_SK_.exit

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEEaSEOS6_.exit.i
  store ptr %i.ae, ptr %i.b, align 8
  br label %_ZSt4swapIN2v88internal10ZoneVectorIPNS1_8compiler10turboshaft5BlockEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISB_ESt18is_move_assignableISB_EEE5valueEvE4typeERSB_SK_.exit

_ZSt4swapIN2v88internal10ZoneVectorIPNS1_8compiler10turboshaft5BlockEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISB_ESt18is_move_assignableISB_EEE5valueEvE4typeERSB_SK_.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEEaSEOS6_.exit.i, %bb.d
  store ptr %i.ad, ptr %i.e, align 8
  store ptr %i.s, ptr %i.c, align 8
  store ptr %i.af, ptr %i.ai, align 8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt4swapIN2v88internal10ZoneVectorIPNS1_8compiler10turboshaft5BlockEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISB_ESt18is_move_assignableISB_EEE5valueEvE4typeERSB_SK_.exit
  %xtraiter = and i64 %2, 1
  %i.al = icmp eq i64 %2, 1
  br i1 %i.al, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.07.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ca, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod11 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07.epil.init
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = zext i32 %i.an to i64
  %i.ap = load ptr, ptr %i.l, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load ptr, ptr %i.e, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.07.epil.init
  store ptr %i.ar, ptr %i.at, align 8
  %i.au = trunc i64 %.07.epil.init to i32
  %i.av = load ptr, ptr %i.e, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.07.epil.init
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 52
  store i32 %i.au, ptr %i.ay, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZSt4swapIN2v88internal10ZoneVectorIPNS1_8compiler10turboshaft5BlockEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISB_ESt18is_move_assignableISB_EEE5valueEvE4typeERSB_SK_.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.07 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ca, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = zext i32 %i.ba to i64
  %i.bc = load ptr, ptr %i.l, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bb
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = load ptr, ptr %i.e, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.07
  store ptr %i.be, ptr %i.bg, align 8
  %i.bh = trunc i64 %.07 to i32
  %i.bi = load ptr, ptr %i.e, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.07
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 52
  store i32 %i.bh, ptr %i.bl, align 4
  %i.bm = or disjoint i64 %.07, 1                 ; 4 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = zext i32 %i.bo to i64
  %i.bq = load ptr, ptr %i.l, align 8
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = load ptr, ptr %i.e, align 8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bm
  store ptr %i.bs, ptr %i.bu, align 8
  %i.bv = trunc i64 %i.bm to i32
  %i.bw = load ptr, ptr %i.e, align 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bm
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 52
  store i32 %i.bv, ptr %i.bz, align 4
  %i.ca = add nuw i64 %.07, 2                     ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !33
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i16 0, 512) i16 @_ZN2v88internal8compiler10turboshaft25InstructionSelectionPhase3RunEPNS2_12PipelineDataEPNS0_4ZoneEPKNS1_14CallDescriptorEPNS1_7LinkageEPNS0_10CodeTracerE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.v8::internal::compiler::TurboJsonFile", align 8 ; 9 uses
  %7 = alloca %"struct.v8::internal::compiler::InstructionSequenceAsJSON", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::CodeTracer::StreamScope", align 8 ; 18 uses
  %9 = alloca %"class.v8::internal::compiler::InstructionSelector", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  tail call void @_ZN2v88internal8compiler10turboshaft12PipelineData30InitializeInstructionComponentEPKNS1_14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = and i64 %i.j, 4294967295
  %i.l = add nuw nsw i64 %i.k, 1
  %i.m = lshr i64 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = load i32, ptr %i.s, align 8              ; 3 uses
  %i.u = and i32 %i.t, 128
  %i.v = icmp ne i32 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.ab = lshr i32 %i.t, 4
  %.lobit = and i32 %i.ab, 1
  %i.ac = load i8, ptr @_ZN2v88internal11CpuFeatures12initialized_E, align 1, !range !11, !noundef !12
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN2v88internal8compiler19InstructionSelector17SupportedFeaturesEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZN2v88internal11CpuFeatures12initialized_E, align 1
  tail call void @_ZN2v88internal11CpuFeatures9ProbeImplEb(i1 noundef zeroext false) #20
  %.pre = load ptr, ptr %i.r, align 8
  %.pre22 = load i32, ptr %.pre, align 8
  br label %_ZN2v88internal8compiler19InstructionSelector17SupportedFeaturesEv.exit

_ZN2v88internal8compiler19InstructionSelector17SupportedFeaturesEv.exit: ; preds = %bb.a, %bb.b
  %i.ae = phi i32 [ %i.t, %bb.a ], [ %.pre22, %bb.b ]
  %i.af = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.ag = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 665), align 1, !range !11, !noundef !12
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.aj = load i8, ptr %i.ai, align 1, !range !11, !noundef !12
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = and i32 %i.ae, 2048
  %i.am = icmp ne i32 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load i32, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 1
  %i.aq = icmp eq i32 %i.ao, 4
  %spec.select.i = or i1 %i.ap, %i.aq
  call void @_ZN2v88internal8compiler19InstructionSelector13ForTurboshaftEPNS0_4ZoneEmPNS1_7LinkageEPNS1_19InstructionSequenceEPNS1_10turboshaft5GraphEPNS1_5FrameENS2_21EnableSwitchJumpTableEPNS0_11TickCounterEPNS1_12JSHeapBrokerEPmSJ_NS2_18SourcePositionModeENS2_8FeaturesENS2_16EnableSchedulingENS2_29EnableRootsRelativeAddressingENS2_20EnableTraceTurboJsonENS2_22EnsureDeterministicNanE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::InstructionSelector") align 8 %9, ptr noundef %2, i64 noundef %i.m, ptr noundef %4, ptr noundef %i.o, ptr noundef nonnull %i.b, ptr noundef %i.q, i1 noundef zeroext %i.v, ptr noundef nonnull %i.w, ptr noundef %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, i32 noundef %.lobit, i32 %i.af, i1 noundef zeroext %i.ah, i1 noundef zeroext %i.ak, i1 noundef zeroext %i.am, i1 noundef zeroext %spec.select.i) #20
  %i.ar = call i16 @_ZN2v88internal8compiler19InstructionSelector18SelectInstructionsEv(ptr noundef nonnull align 8 dereferenceable(752) %9) #20 ; 2 uses
  %i.as = and i16 %i.ar, 256
  %.not = icmp eq i16 %i.as, 0
  br i1 %.not, label %bb.c, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_113TraceSequenceEPNS0_24OptimizedCompilationInfoEPNS1_19InstructionSequenceEPNS1_12JSHeapBrokerEPNS0_10CodeTracerEPKc.exit

bb.c:                                             ; preds = %_ZN2v88internal8compiler19InstructionSelector17SupportedFeaturesEv.exit
  %i.at = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.au = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.av = load ptr, ptr %i.x, align 8             ; 4 uses
  %i.aw = load i32, ptr %i.at, align 8
  %i.ax = and i32 %i.aw, 2048
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not10.i = icmp eq ptr %i.av, null
  br i1 %.not10.i, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_0
