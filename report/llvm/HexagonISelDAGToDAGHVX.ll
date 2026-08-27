Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelDAGToDAGHVX?download=true
inline.NumInlined: 4949
inline.NumDeleted: 1897
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4llvm11HvxSelector7shuffs2EN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefES3_RNS1_11ResultStackE:bb.a
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 16, i1 false), !alias.scope !496
  store i32 268435456, ptr %i.qa, align 8, !tbaa !413, !alias.scope !496
  br label %bb.bq

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  %i.qb = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 3 uses
  store ptr %i.qb, ptr %29, align 8, !tbaa !423
  %i.qc = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 4 uses
  store i64 0, ptr %i.qc, align 8, !tbaa !425
  %i.qd = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i64 128, ptr %i.qd, align 8, !tbaa !426
  br i1 %i.ih, label %_ZN4llvm11SmallVectorIhLj128EEC2Em.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.qe = icmp ugt i64 %i.id, 128
  br i1 %i.qe, label %bb.bk, label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(152) %29, ptr noundef nonnull %i.qb, i64 noundef %i.id, i64 noundef 1) #23
  %.pre.i.i.i79 = load i64, ptr %i.qc, align 8, !tbaa !425
  br label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i: ; preds = %bb.bk, %bb.bj
  %i.qf = phi i64 [ 0, %bb.bj ], [ %.pre.i.i.i79, %bb.bk ] ; 3 uses
  %.not11.i.i.i76 = icmp samesign eq i64 %i.qf, %i.id
  br i1 %.not11.i.i.i76, label %.sink.split.i.i.i78, label %.lr.ph.preheader.i.i.i77

.lr.ph.preheader.i.i.i77:                         ; preds = %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i
  %i.qg = load ptr, ptr %29, align 8, !tbaa !423
  %i.qh = getelementptr i8, ptr %i.qg, i64 %i.qf
  %i.qi = sub i64 %i.id, %i.qf
  call void @llvm.memset.p0.i64(ptr align 1 %i.qh, i8 0, i64 %i.qi, i1 false), !tbaa !306
  br label %.sink.split.i.i.i78

.sink.split.i.i.i78:                              ; preds = %.lr.ph.preheader.i.i.i77, %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i
  store i64 %i.id, ptr %i.qc, align 8, !tbaa !425
  br label %_ZN4llvm11SmallVectorIhLj128EEC2Em.exit

_ZN4llvm11SmallVectorIhLj128EEC2Em.exit:          ; preds = %bb.bi, %.sink.split.i.i.i78
  %i.qj = phi i64 [ 0, %bb.bi ], [ %i.id, %.sink.split.i.i.i78 ]
  br i1 %.not25.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm11SmallVectorIhLj128EEC2Em.exit
  %i.qk = and i64 %i.ib, 4294967295
  %.pre138 = load ptr, ptr %23, align 8, !tbaa !8 ; 2 uses
  %xtraiter207 = and i64 %i.ib, 1
  %i.ql = icmp eq i64 %i.qk, 1
  br i1 %i.ql, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter212 = and i64 %i.ib, 4294967294
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.bp
  %lcmp.mod210.not = icmp eq i64 %xtraiter207, 0
  br i1 %lcmp.mod210.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init209 = phi ptr [ %.pre138, %.lr.ph.preheader ], [ %i.re, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod211 = trunc i64 %i.ib to i1
  call void @llvm.assume(i1 %lcmp.mod211)
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %.epil.init209, i64 %indvars.iv.epil.init
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !13
  %.not18.epil = icmp eq i32 %i.qn, -1
  br i1 %.not18.epil, label %._crit_edge.loopexit, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.epil.preheader
  %i.qo = load ptr, ptr %29, align 8, !tbaa !423
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 %indvars.iv.epil.init
  store i8 -1, ptr %i.qp, align 1, !tbaa !306
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil.preheader, %bb.bl, %._crit_edge.loopexit.unr-lcssa
  %.pre139 = load i64, ptr %i.qc, align 8, !tbaa !425
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11SmallVectorIhLj128EEC2Em.exit
  %i.qq = phi i64 [ %.pre139, %._crit_edge.loopexit ], [ %i.qj, %_ZN4llvm11SmallVectorIhLj128EEC2Em.exit ]
  %i.qr = load ptr, ptr %29, align 8, !tbaa !423
  call fastcc void @_ZN4llvm11HvxSelector5vmuxsENS_8ArrayRefIhEEN12_GLOBAL__N_15OpRefES4_RNS3_11ResultStackE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr %i.qr, i64 %i.qq, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %25, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %27, ptr noundef nonnull align 8 dereferenceable(40) %5)
  %i.qs = load ptr, ptr %29, align 8, !tbaa !423  ; 2 uses
  %i.qt = icmp eq ptr %i.qs, %i.qb
  br i1 %i.qt, label %_ZN4llvm11SmallVectorIhLj128EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.qs) #23
  br label %_ZN4llvm11SmallVectorIhLj128EED2Ev.exit

_ZN4llvm11SmallVectorIhLj128EED2Ev.exit:          ; preds = %._crit_edge, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %bb.bq

.lr.ph:                                           ; preds = %bb.bp, %.lr.ph.preheader.new
  %i.qu = phi ptr [ %.pre138, %.lr.ph.preheader.new ], [ %i.re, %bb.bp ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.bp ] ; 4 uses
  %niter213 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter213.next.1, %bb.bp ]
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !13
  %.not18 = icmp eq i32 %i.qw, -1
  br i1 %.not18, label %.lr.ph.1, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph
  %i.qx = load ptr, ptr %29, align 8, !tbaa !423
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 %indvars.iv
  store i8 -1, ptr %i.qy, align 1, !tbaa !306
  %.pre137 = load ptr, ptr %23, align 8, !tbaa !8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.bn
  %i.qz = phi ptr [ %i.qu, %.lr.ph ], [ %.pre137, %bb.bn ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv.next
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !13
  %.not18.1 = icmp eq i32 %i.rb, -1
  br i1 %.not18.1, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.1
  %i.rc = load ptr, ptr %29, align 8, !tbaa !423
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 %indvars.iv.next
  store i8 -1, ptr %i.rd, align 1, !tbaa !306
  %.pre137.1 = load ptr, ptr %23, align 8, !tbaa !8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph.1
  %i.re = phi ptr [ %i.qz, %.lr.ph.1 ], [ %.pre137.1, %bb.bo ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter213.next.1 = add i64 %niter213, 2         ; 2 uses
  %niter213.ncmp.1 = icmp eq i64 %niter213.next.1, %unroll_iter212
  br i1 %niter213.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !499

bb.bq:                                            ; preds = %_ZN4llvm11SmallVectorIhLj128EED2Ev.exit, %bb.bh
  %i.rf = load ptr, ptr %24, align 8, !tbaa !8    ; 2 uses
  %i.rg = icmp eq ptr %i.rf, %i.lt
  br i1 %i.rg, label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @free(ptr noundef %i.rf) #23
  br label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit

_ZN4llvm11SmallVectorIiLj128EED2Ev.exit:          ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  %i.rh = load ptr, ptr %23, align 8, !tbaa !8    ; 2 uses
  %i.ri = icmp eq ptr %i.rh, %i.kp
  br i1 %i.ri, label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit80, label %bb.bs

bb.bs:                                            ; preds = %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit
  call void @free(ptr noundef %i.rh) #23
  br label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit80

_ZN4llvm11SmallVectorIiLj128EED2Ev.exit80:        ; preds = %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit80, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit
  %i.rj = load ptr, ptr %20, align 8, !tbaa !8    ; 2 uses
  %i.rk = icmp eq ptr %i.rj, %i.ie
  br i1 %i.rk, label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit81, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @free(ptr noundef %i.rj) #23
  br label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit81

_ZN4llvm11SmallVectorIiLj128EED2Ev.exit81:        ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit81, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_ZN4llvm3MVT11getVectorVTES0_j.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm11HvxSelector9selectRorEPNS_6SDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 7 uses
  %3 = alloca %"class.llvm::ArrayRef.128", align 8 ; 3 uses
  %4 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %5 = alloca %"class.llvm::ArrayRef.128", align 8 ; 3 uses
  %6 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !356
  %.sroa.0.0.copyload.i = load i16, ptr %i.b, align 8, !tbaa !342 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !362
  store i64 %i.d, ptr %2, align 8, !tbaa !362
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !363
  store i32 %i.g, ptr %i.e, align 8, !tbaa !364
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59   ; 4 uses
  %.sroa.034.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !34 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.j = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.031.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !34 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.l = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !43
  switch i32 %i.n, label %.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit: ; preds = %bb.a, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !357  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !360
  %i.t = icmp ult i32 %i.s, 65
  %i.u = load ptr, ptr %i.q, align 8
  %spec.select.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.u
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !306
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !500, !nonnull !96, !align !97 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 432
  %i.y = load i32, ptr %i.x, align 8, !tbaa !501
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 344
  %i.ab = load i8, ptr %i.aa, align 8, !range !605
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = select i1 %i.z, i1 %i.ac, i1 false
  %i.ae = select i1 %i.ad, i64 63, i64 127
  %i.af = and i64 %i.ae, %.0.i.i.i                ; 3 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
  %i.ah = icmp samesign ult i64 %i.af, 8
  br i1 %i.ah, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !90, !nonnull !96, !align !97 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %.sroa.034.0.copyload, ptr %4, align 8, !tbaa !34
  %.sroa.7.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.7.0.extract.trunc = trunc i64 %i.j to i32 ; 2 uses
  store i32 %.sroa.7.0.extract.trunc, ptr %.sroa.7.0..sroa_idx38, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.sroa.034.0.copyload, ptr %i.ak, align 8, !tbaa !34
  %.sroa.7.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %.sroa.7.0.extract.trunc, ptr %.sroa.7.0..sroa_idx39, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.am = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.aj, i64 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #23 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.am, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.am, 1
  store ptr %.fca.0.extract, ptr %i.al, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %.fca.1.extract, ptr %.sroa.23.0..sroa_idx, align 8
  store ptr %4, ptr %3, align 8, !tbaa !347
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.an, align 8, !tbaa !350
  %i.ao = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.aj, i32 noundef 2861, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.128") align 8 %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit, %bb.c
  %.1 = phi ptr [ %i.ao, %bb.c ], [ %.sroa.034.0.copyload, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit ] ; 2 uses
  %.not25 = icmp eq ptr %.1, null
  br i1 %.not25, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.a, %bb.b, %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !90, !nonnull !96, !align !97
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %.sroa.034.0.copyload, ptr %6, align 8, !tbaa !34
  %.sroa.7.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.7.0.extract.trunc44 = trunc i64 %i.j to i32
  store i32 %.sroa.7.0.extract.trunc44, ptr %.sroa.7.0..sroa_idx40, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.sroa.031.0.copyload, ptr %i.ar, align 8, !tbaa !34
  %.sroa.5.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.5.0.extract.trunc = trunc i64 %i.l to i32
  store i32 %.sroa.5.0.extract.trunc, ptr %.sroa.5.0..sroa_idx33, align 8, !tbaa !13
  store ptr %6, ptr %5, align 8, !tbaa !347
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 2, ptr %i.as, align 8, !tbaa !350
  %i.at = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.aq, i32 noundef 3243, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.128") align 8 %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %.2 = phi ptr [ %.1, %bb.d ], [ %i.at, %.thread ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !112, !nonnull !96, !align !97
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !113
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.ax, ptr noundef nonnull %1, ptr noundef %.2) #23
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %.2) #23
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !113
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.ay, ptr noundef nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

declare noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::ArrayRef.128") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm11HvxSelector12selectVAlignEPNS_6SDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.128", align 8 ; 3 uses
  %4 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90, !nonnull !96, !align !97
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !362
  store i64 %i.h, ptr %2, align 8, !tbaa !362
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !363
  store i32 %i.k, ptr %i.i, align 8, !tbaa !364
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !356  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.m, align 8, !tbaa !342
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !366
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.b, i64 12, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr noundef nonnull align 8 dereferenceable(12) %i.c, i64 12, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false)
  store ptr %4, ptr %3, align 8, !tbaa !347
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.p, align 8, !tbaa !350
  %i.q = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 2860, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef.128") align 8 %3) #23 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112, !nonnull !96, !align !97
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !113
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.u, ptr noundef nonnull %1, ptr noundef %i.q) #23
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.q) #23
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !113
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.v, ptr noundef nonnull %1) #23
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !90, !nonnull !96, !align !97
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.w, ptr noundef nonnull %1) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19HexagonDAGToDAGISel20PreprocessHvxISelDAGEv(ptr noundef nonnull align 8 dereferenceable(1216) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.std::vector.31", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !alias.scope !606
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113, !noalias !606 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 392 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !609, !noalias !606 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not4.i.i.i.i, label %.thread.i, label %.lr.ph.i.i.i.i

.thread.i:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE7reserveEm.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.05.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i ], [ %i.e, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !609, !noalias !606 ; 2 uses
  %i.i = add nuw nsw i64 %.06.i.i.i.i, 1          ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZNK4llvm12SelectionDAG13allnodes_sizeEv.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !610

_ZNK4llvm12SelectionDAG13allnodes_sizeEv.exit.i:  ; preds = %.lr.ph.i.i.i.i
  %i.j = icmp samesign ugt i64 %.06.i.i.i.i, 1152921504606846974
  br i1 %i.j, label %bb.b, label %_ZNSt12_Vector_baseIPN4llvm6SDNodeESaIS2_EE11_M_allocateEm.exit.i.i

bb.b:                                             ; preds = %_ZNK4llvm12SelectionDAG13allnodes_sizeEv.exit.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #26, !noalias !606
  unreachable

_ZNSt12_Vector_baseIPN4llvm6SDNodeESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNK4llvm12SelectionDAG13allnodes_sizeEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = shl nuw nsw i64 %i.i, 3
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25, !noalias !606 ; 4 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !611, !alias.scope !606
  store ptr %i.n, ptr %i.l, align 8, !tbaa !612, !alias.scope !606
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i ; 2 uses
  store ptr %i.o, ptr %i.k, align 8, !tbaa !613, !alias.scope !606
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !113, !noalias !606 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 400
  %.sroa.02.010.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !609, !noalias !606
  br label %_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE7reserveEm.exit.i

_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseIPN4llvm6SDNodeESaIS2_EE11_M_allocateEm.exit.i.i, %.thread.i
  %.pre15.i = phi ptr [ null, %.thread.i ], [ %i.o, %_ZNSt12_Vector_baseIPN4llvm6SDNodeESaIS2_EE11_M_allocateEm.exit.i.i ] ; 2 uses
  %.promoted.i = phi ptr [ null, %.thread.i ], [ %i.n, %_ZNSt12_Vector_baseIPN4llvm6SDNodeESaIS2_EE11_M_allocateEm.exit.i.i ] ; 3 uses
  %.sroa.02.010.i = phi ptr [ %i.e, %.thread.i ], [ %.sroa.02.010.pre.i, %_ZNSt12_Vector_baseIPN4llvm6SDNodeESaIS2_EE11_M_allocateEm.exit.i.i ] ; 2 uses
  %i.p = phi ptr [ %i.b, %.thread.i ], [ %.pre.i, %_ZNSt12_Vector_baseIPN4llvm6SDNodeESaIS2_EE11_M_allocateEm.exit.i.i ]
  %i.q = phi ptr [ %i.f, %.thread.i ], [ %i.k, %_ZNSt12_Vector_baseIPN4llvm6SDNodeESaIS2_EE11_M_allocateEm.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 392 ; 2 uses
  %.not911.i = icmp eq ptr %.sroa.02.010.i, %i.r
  br i1 %.not911.i, label %"_ZZN4llvm19HexagonDAGToDAGISel20PreprocessHvxISelDAGEvENK3$_0clEv.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE7reserveEm.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE9push_backEOS2_.exit.i, %.lr.ph.i
  %i.t = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.an, %_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE9push_backEOS2_.exit.i ] ; 5 uses
  %i.u = phi ptr [ %.pre15.i, %.lr.ph.i ], [ %i.ao, %_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE9push_backEOS2_.exit.i ] ; 3 uses
  %i.v = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.ap, %_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE9push_backEOS2_.exit.i ] ; 3 uses
  %.sroa.02.012.i = phi ptr [ %.sroa.02.010.i, %.lr.ph.i ], [ %.sroa.02.0.i, %_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE9push_backEOS2_.exit.i ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.02.012.i, i64 -8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.w, ptr %i.v, align 8, !tbaa !34, !noalias !606
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.s, align 8, !tbaa !612, !alias.scope !606
  br label %_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE9push_backEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = ptrtoint ptr %i.t to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 6 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.f, label %_ZNKSt6vectorIPN4llvm6SDNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #26, !noalias !606
  unreachable

_ZNKSt6vectorIPN4llvm6SDNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #25, !noalias !606 ; 5 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.aa ; 2 uses
  store ptr %i.w, ptr %i.aj, align 8, !tbaa !34, !noalias !606
  %i.ak = icmp sgt i64 %i.aa, 0
  br i1 %i.ak, label %bb.g, label %_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPN4llvm6SDNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %i.t, i64 %i.aa, i1 false), !noalias !606
  br label %_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPN4llvm6SDNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.aa) #27, !noalias !606
  br label %_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.h, %_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  store ptr %i.ai, ptr %1, align 8, !tbaa !611, !alias.scope !606
  store ptr %i.al, ptr %i.s, align 8, !tbaa !612, !alias.scope !606
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag ; 2 uses
  store ptr %i.am, ptr %i.q, align 8, !tbaa !613, !alias.scope !606
  br label %_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE9push_backEOS2_.exit.i: ; preds = %_ZNSt6vectorIPN4llvm6SDNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.d
end_hunk_0
