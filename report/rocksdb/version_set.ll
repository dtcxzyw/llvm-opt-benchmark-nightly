Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_set?download=true
inline.NumInlined: 15221
inline.NumDeleted: 6435
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN7rocksdb7Version8MultiGetERKNS_11ReadOptionsEPNS_15MultiGetContext5RangeEPNS_12ReadCallbackE:bb.a
  store i32 %i.da, ptr %i.d, align 4, !tbaa !1594
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 136
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 144
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  store ptr null, ptr %i.e, align 8, !tbaa !1438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !1573
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 80
  store ptr %i.dg, ptr %i.f, align 8, !tbaa !1595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  store i8 1, ptr %i.g, align 1, !tbaa !559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #41
  %i.dh = load ptr, ptr %i.cu, align 8, !tbaa !1573
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 112
  store ptr %i.di, ptr %i.h, align 8, !tbaa !826
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #41
  store ptr null, ptr %i.i, align 8, !tbaa !1438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #41
  %i.dj = load ptr, ptr %i.r, align 8, !tbaa !919
  %.not124 = icmp eq ptr %i.dj, null
  %i.dk = select i1 %.not124, ptr null, ptr %7
  store ptr %i.dk, ptr %i.j, align 8, !tbaa !1596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #41
  %i.dl = load ptr, ptr %i.cu, align 8, !tbaa !1573
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 121
  store ptr %i.dm, ptr %i.k, align 8, !tbaa !1597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #41
  store ptr %9, ptr %i.l, align 8, !tbaa !1599
  invoke void @_ZN7rocksdb10autovectorINS_10GetContextELm16EE12emplace_backIJPKNS_10ComparatorERPKNS_13MergeOperatorERPNS_6LoggerERPNS_10StatisticsENS1_8GetStateERNS_5SliceERPNS_13PinnableSliceERPNS_19PinnableWideColumnsERPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDnPNS_12MergeContextEbPmRPNS_11SystemClockEDnPNS_22PinnedIteratorsManagerERPNS_12ReadCallbackEPbRmPNS_18VersionBlobFetcherEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(8232) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  %i.dn = load ptr, ptr %i.cu, align 8, !tbaa !1573
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1009 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dp, i8 0, i64 6, i1 false)
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !536 ; 2 uses
  store ptr null, ptr %i.dq, align 8, !tbaa !536
  %.not.i.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.dr) #42
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i, %bb.m
  %i.ds = load i64, ptr %i.am, align 8, !tbaa !1569 ; 3 uses
  %i.dt = add i64 %.sroa.15.0376, 1
  %umax.i = call i64 @llvm.umax.i64(i64 %i.ds, i64 %i.dt) ; 3 uses
  %i.du = add i64 %umax.i, -1                     ; 2 uses
  %exitcond.not591 = icmp eq i64 %.sroa.15.0376, %i.du
  br i1 %exitcond.not591, label %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit, label %.lr.ph592.preheader

.lr.ph592.preheader:                              ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.dv = load ptr, ptr %2, align 8, !tbaa !1021
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 3848
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !1570
  %i.dy = load i64, ptr %i.bp, align 8, !tbaa !1571
  %i.dz = or i64 %i.dy, %i.dx
  %i.ea = load i64, ptr %i.bq, align 8, !tbaa !1572
  %i.eb = or i64 %i.dz, %i.ea
  br label %.lr.ph592

bb.n:                                             ; preds = %.lr.ph592
  %exitcond.not = icmp eq i64 %i.ed, %i.du
  br i1 %exitcond.not, label %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit, label %.lr.ph592, !llvm.loop !91

.lr.ph592:                                        ; preds = %.lr.ph592.preheader, %bb.n
  %i.ec = phi i64 [ %i.ed, %bb.n ], [ %.sroa.15.0376, %.lr.ph592.preheader ]
  %i.ed = add i64 %i.ec, 1                        ; 4 uses
  %i.ee = shl nuw i64 1, %i.ed
  %i.ef = and i64 %i.eb, %i.ee
  %.not.i138 = icmp eq i64 %i.ef, 0
  br i1 %.not.i138, label %._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit_crit_edge593, label %bb.n, !llvm.loop !91

._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit_crit_edge593: ; preds = %.lr.ph592
  br label %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit, !llvm.loop !91

_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit: ; preds = %bb.n, %._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit_crit_edge593, %_ZN7rocksdb6StatusD2Ev.exit
  %.lcssa.i = phi i64 [ %umax.i, %_ZN7rocksdb6StatusD2Ev.exit ], [ %i.ed, %._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit_crit_edge593 ], [ %umax.i, %bb.n ] ; 2 uses
  %.not362 = icmp eq i64 %.lcssa.i, %i.ds
  br i1 %.not362, label %._crit_edge.loopexit, label %bb.l, !llvm.loop !2949

bb.o:                                             ; preds = %bb.l
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %_ZN7rocksdb6StatusD2Ev.exit245

._crit_edge381:                                   ; preds = %bb.k, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit149, %middle.block632, %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit136
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  store ptr %i.eh, ptr %10, align 8, !tbaa !1576
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 1, ptr %i.ei, align 8, !tbaa !1575
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ek, align 8, !tbaa !646
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  br i1 %i.bt, label %.lr.ph.i.i140, label %._crit_edge381..loopexit367_crit_edge

._crit_edge381..loopexit367_crit_edge:            ; preds = %._crit_edge381
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre421 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !1571
  %.phi.trans.insert422 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.pre423.a = load i64, ptr %.phi.trans.insert422, align 8, !tbaa !1572
  br label %.loopexit367

.lr.ph.i.i140:                                    ; preds = %._crit_edge381
  %i.em = getelementptr inbounds nuw i8, ptr %i.br, i64 3848
  %i.en = load i64, ptr %i.em, align 8, !tbaa !1570, !noalias !2975
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !1571, !noalias !2975 ; 5 uses
  %i.eq = or i64 %i.ep, %i.en
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.es = load i64, ptr %i.er, align 8, !tbaa !1572, !noalias !2975 ; 5 uses
  %i.et = or i64 %i.eq, %i.es                     ; 2 uses
  %i.eu = sub nuw i64 %.lcssa373, %i.bs           ; 3 uses
  %min.iters.check637 = icmp ult i64 %i.eu, 32
  br i1 %min.iters.check637, label %scalar.ph636.preheader, label %vector.ph638

vector.ph638:                                     ; preds = %.lr.ph.i.i140
  %n.vec639 = and i64 %i.eu, -32                  ; 3 uses
  %i.ev = add i64 %i.bs, %n.vec639
  %broadcast.splatinsert640 = insertelement <32 x i64> poison, i64 %i.et, i64 0
  %broadcast.splat641 = shufflevector <32 x i64> %broadcast.splatinsert640, <32 x i64> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert642 = insertelement <32 x i64> poison, i64 %i.bs, i64 0
  %broadcast.splat643 = shufflevector <32 x i64> %broadcast.splatinsert642, <32 x i64> poison, <32 x i32> zeroinitializer
  %induction644 = add nuw <32 x i64> %broadcast.splat643, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  br label %vector.body645

vector.body645:                                   ; preds = %vector.body.interim650, %vector.ph638
  %index646 = phi i64 [ 0, %vector.ph638 ], [ %index.next648, %vector.body.interim650 ] ; 2 uses
  %vec.ind647 = phi <32 x i64> [ %induction644, %vector.ph638 ], [ %vec.ind.next649, %vector.body.interim650 ] ; 2 uses
  %i.ew = shl nuw <32 x i64> splat (i64 1), %vec.ind647
  %i.ex = and <32 x i64> %i.ew, %broadcast.splat641
  %.fr757 = freeze <32 x i64> %i.ex
  %i.ey = icmp eq <32 x i64> %.fr757, zeroinitializer ; 2 uses
  %i.ez = bitcast <32 x i1> %i.ey to i32
  %.not758 = icmp eq i32 %i.ez, 0
  br i1 %.not758, label %vector.body.interim650, label %vector.early.exit653

vector.body.interim650:                           ; preds = %vector.body645
  %vec.ind.next649 = add nuw <32 x i64> %vec.ind647, splat (i64 32)
  %index.next648 = add nuw i64 %index646, 32      ; 2 uses
  %i.fa = icmp eq i64 %index.next648, %n.vec639
  br i1 %i.fa, label %middle.block651, label %vector.body645, !llvm.loop !2952

middle.block651:                                  ; preds = %vector.body.interim650
  %cmp.n652 = icmp eq i64 %i.eu, %n.vec639
  br i1 %cmp.n652, label %.loopexit367, label %scalar.ph636.preheader

scalar.ph636.preheader:                           ; preds = %.lr.ph.i.i140, %middle.block651
  %storemerge3.i.i141.ph = phi i64 [ %i.bs, %.lr.ph.i.i140 ], [ %i.ev, %middle.block651 ]
  br label %scalar.ph636

vector.early.exit653:                             ; preds = %vector.body645
  %i.fb = call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.ey, i1 false)
  %i.fc = add i64 %index646, %i.fb
  %i.fd = add i64 %i.bs, %i.fc
  br label %.loopexit367

scalar.ph636:                                     ; preds = %scalar.ph636.preheader, %bb.p
  %storemerge3.i.i141 = phi i64 [ %i.fg, %bb.p ], [ %storemerge3.i.i141.ph, %scalar.ph636.preheader ] ; 3 uses
  %i.fe = shl nuw i64 1, %storemerge3.i.i141
  %i.ff = and i64 %i.fe, %i.et
  %.not.i.i142 = icmp eq i64 %i.ff, 0
  br i1 %.not.i.i142, label %.loopexit367, label %bb.p

bb.p:                                             ; preds = %scalar.ph636
  %i.fg = add nuw i64 %storemerge3.i.i141, 1      ; 2 uses
  %exitcond.not.i.i143 = icmp eq i64 %i.fg, %.lcssa373
  br i1 %exitcond.not.i.i143, label %.loopexit367, label %scalar.ph636, !llvm.loop !2953

bb.q:                                             ; preds = %.lr.ph380, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit149
  %.061379 = phi i32 [ 0, %.lr.ph380 ], [ %21, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit149 ] ; 3 uses
  %indvars.iv = phi i64 [ %storemerge.lcssa.i.i131, %.lr.ph380 ], [ %.lcssa.i147, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit149 ] ; 4 uses
  %20 = zext nneg i32 %.061379 to i64             ; 2 uses
  %i.fh = icmp samesign ult i32 %.061379, 16
  %i.fi = load ptr, ptr %i.ac, align 8
  %i.fj = getelementptr inbounds nuw [512 x i8], ptr %i.fi, i64 %20
  %i.fk = load ptr, ptr %i.ae, align 8
  %i.fl = getelementptr [512 x i8], ptr %i.fk, i64 %20
  %i.fm = getelementptr i8, ptr %i.fl, i64 -8192
  %.0.i = select i1 %i.fh, ptr %i.fj, ptr %i.fm
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !1573
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 160
  store ptr %.0.i, ptr %i.fp, align 8, !tbaa !1010
  %i.fq = add i64 %indvars.iv, 1
  %umax.i146 = call i64 @llvm.umax.i64(i64 %.lcssa373, i64 %i.fq) ; 3 uses
  %i.fr = add i64 %umax.i146, -1                  ; 2 uses
  %exitcond402.not595 = icmp eq i64 %indvars.iv, %i.fr
  br i1 %exitcond402.not595, label %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit149, label %.lr.ph597.preheader

.lr.ph597.preheader:                              ; preds = %bb.q
  %i.fs = load i64, ptr %i.cs, align 8, !tbaa !1570
  %i.ft = load i64, ptr %i.cq, align 8, !tbaa !1571
  %i.fu = or i64 %i.ft, %i.fs
  %i.fv = load i64, ptr %i.cr, align 8, !tbaa !1572
  %i.fw = or i64 %i.fu, %i.fv
  br label %.lr.ph597

bb.r:                                             ; preds = %.lr.ph597
  %exitcond402.not = icmp eq i64 %i.fy, %i.fr
  br i1 %exitcond402.not, label %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit149, label %.lr.ph597, !llvm.loop !91

.lr.ph597:                                        ; preds = %.lr.ph597.preheader, %bb.r
  %i.fx = phi i64 [ %i.fy, %bb.r ], [ %indvars.iv, %.lr.ph597.preheader ]
  %i.fy = add i64 %i.fx, 1                        ; 4 uses
  %i.fz = shl nuw i64 1, %i.fy
  %i.ga = and i64 %i.fw, %i.fz
  %.not.i148 = icmp eq i64 %i.ga, 0
  br i1 %.not.i148, label %._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit149_crit_edge599, label %bb.r, !llvm.loop !91

._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit149_crit_edge599: ; preds = %.lr.ph597
  br label %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit149, !llvm.loop !91

_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit149: ; preds = %bb.r, %._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit149_crit_edge599, %bb.q
  %.lcssa.i147 = phi i64 [ %umax.i146, %bb.q ], [ %i.fy, %._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit149_crit_edge599 ], [ %umax.i146, %bb.r ] ; 2 uses
  %21 = add nuw nsw i32 %.061379, 1
  %.not363 = icmp eq i64 %.lcssa.i147, %.lcssa373
  br i1 %.not363, label %._crit_edge381, label %bb.q, !llvm.loop !2954

.loopexit367:                                     ; preds = %bb.p, %scalar.ph636, %middle.block651, %vector.early.exit653, %._crit_edge381..loopexit367_crit_edge
  %i.gb = phi i64 [ %.pre423.a, %._crit_edge381..loopexit367_crit_edge ], [ %i.es, %vector.early.exit653 ], [ %i.es, %middle.block651 ], [ %i.es, %scalar.ph636 ], [ %i.es, %bb.p ] ; 3 uses
  %i.gc = phi i64 [ %.pre421, %._crit_edge381..loopexit367_crit_edge ], [ %i.ep, %vector.early.exit653 ], [ %i.ep, %middle.block651 ], [ %i.ep, %scalar.ph636 ], [ %i.ep, %bb.p ] ; 3 uses
  %storemerge.lcssa.i.i139 = phi i64 [ %i.bs, %._crit_edge381..loopexit367_crit_edge ], [ %i.fd, %vector.early.exit653 ], [ %.lcssa373, %middle.block651 ], [ %.lcssa373, %bb.p ], [ %storemerge3.i.i141, %scalar.ph636 ] ; 2 uses
  store ptr %i.br, ptr %11, align 8, !tbaa !1021
  %i.gd = icmp eq i64 %storemerge.lcssa.i.i139, %.lcssa373 ; 2 uses
  %i.ge = load i64, ptr %i.aj, align 8            ; 11 uses
  %.sink.i = select i1 %i.gd, i64 %i.ge, i64 %storemerge.lcssa.i.i139
  %.sroa.2.0.copyload.sink.i = select i1 %i.gd, i64 %i.ge, i64 %.lcssa373
  %i.gf = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sink.i, ptr %i.gf, align 8, !tbaa !1568
  %i.gg = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %.sroa.2.0.copyload.sink.i, ptr %i.gg, align 8, !tbaa !1569
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %i.gc, ptr %i.gi, align 8, !tbaa !1571
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %i.gb, ptr %i.gk, align 8, !tbaa !1572
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.gl = icmp ult i64 %i.ge, %.lcssa373
  br i1 %i.gl, label %.lr.ph.i.i151, label %.loopexit366

.lr.ph.i.i151:                                    ; preds = %.loopexit367
  %i.gm = getelementptr inbounds nuw i8, ptr %i.br, i64 3848
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !1570, !noalias !2976
  %i.go = or i64 %i.gc, %i.gn
  %i.gp = or i64 %i.go, %i.gb                     ; 2 uses
  %i.gq = sub nuw i64 %.lcssa373, %i.ge           ; 3 uses
  %min.iters.check656 = icmp ult i64 %i.gq, 32
  br i1 %min.iters.check656, label %scalar.ph655.preheader, label %vector.ph657

vector.ph657:                                     ; preds = %.lr.ph.i.i151
  %n.vec658 = and i64 %i.gq, -32                  ; 3 uses
  %i.gr = add i64 %i.ge, %n.vec658
  %broadcast.splatinsert659 = insertelement <32 x i64> poison, i64 %i.gp, i64 0
  %broadcast.splat660 = shufflevector <32 x i64> %broadcast.splatinsert659, <32 x i64> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert661 = insertelement <32 x i64> poison, i64 %i.ge, i64 0
  %broadcast.splat662 = shufflevector <32 x i64> %broadcast.splatinsert661, <32 x i64> poison, <32 x i32> zeroinitializer
  %induction663 = add nuw <32 x i64> %broadcast.splat662, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  br label %vector.body664

vector.body664:                                   ; preds = %vector.body.interim669, %vector.ph657
  %index665 = phi i64 [ 0, %vector.ph657 ], [ %index.next667, %vector.body.interim669 ] ; 2 uses
  %vec.ind666 = phi <32 x i64> [ %induction663, %vector.ph657 ], [ %vec.ind.next668, %vector.body.interim669 ] ; 2 uses
  %i.gs = shl nuw <32 x i64> splat (i64 1), %vec.ind666
  %i.gt = and <32 x i64> %i.gs, %broadcast.splat660
  %.fr759 = freeze <32 x i64> %i.gt
  %i.gu = icmp eq <32 x i64> %.fr759, zeroinitializer ; 2 uses
  %i.gv = bitcast <32 x i1> %i.gu to i32
  %.not760 = icmp eq i32 %i.gv, 0
  br i1 %.not760, label %vector.body.interim669, label %vector.early.exit672

vector.body.interim669:                           ; preds = %vector.body664
  %vec.ind.next668 = add nuw <32 x i64> %vec.ind666, splat (i64 32)
  %index.next667 = add nuw i64 %index665, 32      ; 2 uses
  %i.gw = icmp eq i64 %index.next667, %n.vec658
  br i1 %i.gw, label %middle.block670, label %vector.body664, !llvm.loop !2957

middle.block670:                                  ; preds = %vector.body.interim669
  %cmp.n671 = icmp eq i64 %i.gq, %n.vec658
  br i1 %cmp.n671, label %.loopexit366, label %scalar.ph655.preheader

scalar.ph655.preheader:                           ; preds = %.lr.ph.i.i151, %middle.block670
  %storemerge3.i.i152.ph = phi i64 [ %i.ge, %.lr.ph.i.i151 ], [ %i.gr, %middle.block670 ]
  br label %scalar.ph655

vector.early.exit672:                             ; preds = %vector.body664
  %i.gx = call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.gu, i1 false)
  %i.gy = add i64 %index665, %i.gx
  %i.gz = add i64 %i.ge, %i.gy
  br label %.loopexit366

scalar.ph655:                                     ; preds = %scalar.ph655.preheader, %bb.s
  %storemerge3.i.i152 = phi i64 [ %i.hc, %bb.s ], [ %storemerge3.i.i152.ph, %scalar.ph655.preheader ] ; 3 uses
  %i.ha = shl nuw i64 1, %storemerge3.i.i152
  %i.hb = and i64 %i.ha, %i.gp
  %.not.i.i153 = icmp eq i64 %i.hb, 0
  br i1 %.not.i.i153, label %.loopexit366, label %bb.s

bb.s:                                             ; preds = %scalar.ph655
  %i.hc = add nuw i64 %storemerge3.i.i152, 1      ; 2 uses
  %exitcond.not.i.i154 = icmp eq i64 %i.hc, %.lcssa373
  br i1 %exitcond.not.i.i154, label %.loopexit366, label %scalar.ph655, !llvm.loop !2958

.loopexit366:                                     ; preds = %bb.s, %scalar.ph655, %middle.block670, %vector.early.exit672, %.loopexit367
  %storemerge.lcssa.i.i150 = phi i64 [ %i.ge, %.loopexit367 ], [ %.lcssa373, %middle.block670 ], [ %i.gz, %vector.early.exit672 ], [ %storemerge3.i.i152, %scalar.ph655 ], [ %.lcssa373, %bb.s ] ; 2 uses
  store ptr %i.br, ptr %12, align 8, !tbaa !1021
  %i.hd = icmp eq i64 %storemerge.lcssa.i.i150, %.lcssa373 ; 2 uses
  %.sink.i158 = select i1 %i.hd, i64 %i.ge, i64 %storemerge.lcssa.i.i150
  %.sroa.2.0.copyload.sink.i159 = select i1 %i.hd, i64 %i.ge, i64 %.lcssa373
  %i.he = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %.sink.i158, ptr %i.he, align 8, !tbaa !1568
  %i.hf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store i64 %.sroa.2.0.copyload.sink.i159, ptr %i.hf, align 8, !tbaa !1569
  %i.hg = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store i64 %i.gc, ptr %i.hg, align 8, !tbaa !1571
  %i.hh = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 %i.gb, ptr %i.hh, align 8, !tbaa !1572
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !727
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !725
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hp = load ptr, ptr %i.ho, align 16, !tbaa !1554
  invoke void @_ZN7rocksdb18FilePickerMultiGetC2EPNS_15MultiGetContext5RangeEPNS_10autovectorINS_15LevelFilesBriefELm8EEEjPNS_11FileIndexerEPKNS_10ComparatorEPKNS_21InternalKeyComparatorE(ptr noundef nonnull align 8 dereferenceable(784) %13, ptr noundef nonnull %12, ptr noundef nonnull %i.hi, i32 noundef %i.hk, ptr noundef nonnull %i.hl, ptr noundef %i.hn, ptr noundef %i.hp)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %.loopexit366
  %i.hq = invoke noundef ptr @_ZN7rocksdb18FilePickerMultiGet18GetNextFileInLevelEv(ptr noundef nonnull align 8 dereferenceable(784) %13)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #41
  store i64 0, ptr %i.m, align 8, !tbaa !533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #41
  store i64 0, ptr %i.n, align 8, !tbaa !533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #41
  store i64 0, ptr %i.o, align 8, !tbaa !533
  %i.hr = getelementptr inbounds nuw i8, ptr %13, i64 736 ; 3 uses
  %i.hs = load i8, ptr %i.hr, align 8, !tbaa !1604, !range !560, !noundef !561
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit173, label %.lr.ph387

.lr.ph387:                                        ; preds = %bb.u
  %i.hu = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %13, i64 737
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %13, i64 616
  %i.hy = getelementptr inbounds nuw i8, ptr %14, i64 1
  %i.hz = getelementptr inbounds nuw i8, ptr %14, i64 2
  %i.ia = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.ib = getelementptr inbounds nuw i8, ptr %14, i64 5
  %i.ic = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph387, %bb.ao
  %.sroa.10.0 = phi i8 [ 0, %.lr.ph387 ], [ %.sroa.10.1527, %bb.ao ]
  %.sroa.25410.0 = phi ptr [ null, %.lr.ph387 ], [ %.sroa.25410.2535, %bb.ao ] ; 2 uses
  %.050385 = phi i32 [ -1, %.lr.ph387 ], [ %.252, %bb.ao ] ; 3 uses
  %.053384 = phi i64 [ 0, %.lr.ph387 ], [ %.4, %bb.ao ] ; 6 uses
  %.056383 = phi ptr [ %i.hq, %.lr.ph387 ], [ %.460, %bb.ao ] ; 2 uses
  %i.ie = phi ptr [ null, %.lr.ph387 ], [ %i.jb, %bb.ao ] ; 3 uses
  %i.if = phi <4 x i8> [ zeroinitializer, %.lr.ph387 ], [ %i.jc, %bb.ao ]
  %.not96 = icmp eq ptr %.056383, null
  br i1 %.not96, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ig = load i32, ptr %i.hu, align 4, !tbaa !1605 ; 3 uses
  %i.ih = load i8, ptr %i.hv, align 1, !tbaa !1606, !range !560, !noundef !561
  %i.ii = trunc nuw i8 %i.ih to i1
  %i.ij = load ptr, ptr %i.hw, align 16, !tbaa !361
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 1836
  %i.il = load i8, ptr %i.ik, align 4, !tbaa !743, !range !560, !noundef !561
  %i.im = trunc nuw i8 %i.il to i1
  %i.in = icmp sgt i32 %i.ig, 0
  %or.cond.i = or i1 %i.in, %i.ii
  %or.cond4.i = and i1 %or.cond.i, %i.im
  %i.io = load i32, ptr %i.hj, align 4
  %i.ip = add nsw i32 %i.io, -1
  %i.iq = icmp eq i32 %i.ig, %i.ip
  %i.ir = select i1 %or.cond4.i, i1 %i.iq, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  invoke void @_ZN7rocksdb7Version15MultiGetFromSSTERKNS_11ReadOptionsENS_15MultiGetContext5RangeEibbPNS_14FdWithKeyRangeERSt13unordered_mapImSt6vectorINS0_15BlobReadContextESaISA_EESt4hashImESt8equal_toImESaISt4pairIKmSC_EEEPNS_24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE11TypedHandleERmSV_SV_(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %14, ptr noundef nonnull align 16 dereferenceable(5369) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull byval(%"class.rocksdb::MultiGetContext::Range") align 8 %i.hx, i32 noundef %i.ig, i1 noundef zeroext %i.ir, i1 noundef zeroext false, ptr noundef nonnull %.056383, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.is = load i8, ptr %14, align 8, !tbaa !602   ; 2 uses
  %i.it = load i8, ptr %i.hy, align 1, !tbaa !1227 ; 2 uses
  %i.iu = load <4 x i8>, ptr %i.hz, align 2, !tbaa !157 ; 2 uses
  store <4 x i8> zeroinitializer, ptr %14, align 8, !tbaa !157
  store i8 0, ptr %i.ia, align 4, !tbaa !562
  store i8 0, ptr %i.ib, align 1, !tbaa !563
  %i.iv = load ptr, ptr %i.ic, align 8, !tbaa !536 ; 3 uses
  store ptr null, ptr %i.ic, align 8, !tbaa !536
  %.not.i.i.i.i.i161 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i.i.i161, label %bb.aa, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i162

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i162: ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.ie) #42
  br label %bb.aa

bb.y:                                             ; preds = %.loopexit366, %bb.t
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp.loopexit:                      ; preds = %bb.af, %.thread, %bb.ad, %bb.ak, %bb.am
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.av, %bb.as, %bb.aq
end_hunk_0
