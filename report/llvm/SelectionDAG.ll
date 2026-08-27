Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SelectionDAG?download=true
inline.NumInlined: 15007
inline.NumDeleted: 4174
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_11SDNodeFlagsE:bb.a

_ZNK4llvm3EVT19isFixedLengthVectorEv.exit600:     ; preds = %bb.df
  %i.lx = call noundef zeroext i1 @_ZNK4llvm3EVT27isExtendedFixedLengthVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  br i1 %i.lx, label %bb.dg, label %.critedge482.thread

bb.dg:                                            ; preds = %.split902, %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit600
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #32
  %i.ly = load ptr, ptr %i.ln, align 8, !tbaa !49
  %i.lz = load i32, ptr %i.lp, align 8, !tbaa !103
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 48
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !54
  %i.mc = zext i32 %i.lz to i64
  %i.md = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %i.mc ; 2 uses
  %.sroa.0.0.copyload.i.i601 = load i16, ptr %i.md, align 8, !tbaa !55
  %.sroa.21.0..sroa_idx.i.i602 = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %.sroa.21.0.copyload.i.i603 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i602, align 8, !tbaa !57
  store i16 %.sroa.0.0.copyload.i.i601, ptr %30, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %.sroa.21.0.copyload.i.i603, ptr %i.me, align 8
  %i.mf = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  %.sroa.0190.0.copyload = load i16, ptr %19, align 8, !tbaa !55
  %.sroa.2192.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.i.i.i491, i64 88
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !61 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 32
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !59
  %i.ml = icmp ult i32 %i.mk, 65
  %i.mm = load ptr, ptr %i.mi, align 8
  %spec.select.i.i.i606 = select i1 %i.ml, ptr %i.mi, ptr %i.mm
  %.0.i.i.i607 = load i64, ptr %spec.select.i.i.i606, align 8, !tbaa !45 ; 2 uses
  %i.mn = zext i32 %i.mf to i64                   ; 2 uses
  %i.mo = udiv i64 %.0.i.i.i607, %i.mn
  %i.mp = load ptr, ptr %i.lm, align 8, !tbaa !48
  %i.mq = and i64 %i.mo, 4294967295
  %i.mr = getelementptr inbounds nuw [40 x i8], ptr %i.mp, i64 %i.mq ; 2 uses
  %.sroa.0187.0.copyload = load ptr, ptr %i.mr, align 8, !tbaa !71
  %.sroa.2188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %.sroa.2188.0.copyload = load i32, ptr %.sroa.2188.0..sroa_idx, align 8, !tbaa !98
  %i.ms = urem i64 %.0.i.i.i607, %i.mn
  %i.mt = trunc nuw i64 %i.ms to i32
  %i.mu = call { ptr, i32 } @_ZN4llvm12SelectionDAG19getExtractVectorEltERKNS_5SDLocENS_3EVTENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0190.0.copyload, ptr %.sroa.2192.0.copyload, ptr %.sroa.0187.0.copyload, i32 %.sroa.2188.0.copyload, i32 noundef %i.mt) ; 2 uses
  %.fca.0.extract183 = extractvalue { ptr, i32 } %i.mu, 0
  %.fca.1.extract184 = extractvalue { ptr, i32 } %i.mu, 1
  br label %.critedge486

.thread904:                                       ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  switch i32 %i.lk, label %bb.dk [
    i32 162, label %bb.dh
    i32 175, label %bb.di
  ]

bb.dh:                                            ; preds = %.thread904
  %i.mv = getelementptr inbounds nuw i8, ptr %.0.i.i.i491, i64 88
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !61 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 24 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 32
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !59
  %i.na = icmp ult i32 %i.mz, 65
  %i.nb = load ptr, ptr %i.mx, align 8
  %spec.select.i.i.i610 = select i1 %i.na, ptr %i.mx, ptr %i.nb
  %.0.i.i.i611 = load i64, ptr %spec.select.i.i.i610, align 8, !tbaa !45
  %i.nc = and i64 %.0.i.i.i611, 4294967295
  br label %bb.di

bb.di:                                            ; preds = %.thread904, %bb.dh
  %i.nd = phi i64 [ %i.nc, %bb.dh ], [ 0, %.thread904 ]
  %i.ne = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !48
  %i.ng = getelementptr inbounds nuw [40 x i8], ptr %i.nf, i64 %i.nd ; 2 uses
  %.sroa.0755.0.copyload772 = load ptr, ptr %i.ng, align 8, !tbaa !71 ; 3 uses
  %.sroa.70.0..sroa_idx807 = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %.sroa.70.0.copyload808 = load i32, ptr %.sroa.70.0..sroa_idx807, align 8, !tbaa !98 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.0755.0.copyload772, i64 48
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !54
  %i.nj = zext i32 %.sroa.70.0.copyload808 to i64
  %i.nk = getelementptr inbounds nuw [16 x i8], ptr %i.ni, i64 %i.nj ; 2 uses
  %.sroa.0.0.copyload.i.i612 = load i16, ptr %i.nk, align 8, !tbaa !55
  %.sroa.21.0..sroa_idx.i.i613 = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %.sroa.21.0.copyload.i.i614 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i613, align 8, !tbaa !57
  %i.nl = load i16, ptr %19, align 8, !tbaa !68   ; 2 uses
  %.not.i617 = icmp ne i16 %i.nl, %.sroa.0.0.copyload.i.i612
  %i.nm = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.nn = icmp ne ptr %i.nm, %.sroa.21.0.copyload.i.i614
  %i.no = select i1 %.not.i617, i1 true, i1 %i.nn
  br i1 %i.no, label %bb.dj, label %.critedge486

bb.dj:                                            ; preds = %bb.di
  %i.np = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getAnyExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr nonnull %.sroa.0755.0.copyload772, i32 %.sroa.70.0.copyload808, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %i.nl, ptr %i.nm) ; 2 uses
  %.fca.0.extract167 = extractvalue { ptr, i32 } %i.np, 0
  %.fca.1.extract168 = extractvalue { ptr, i32 } %i.np, 1
  br label %.critedge486

bb.dk:                                            ; preds = %.thread904, %.thread905
  %i.nq = phi i32 [ %i.lk, %.thread904 ], [ %i.kn, %.thread905 ] ; 2 uses
  %i.nr = icmp eq i32 %i.nq, 163
  br i1 %i.nr, label %bb.dl, label %.critedge482

bb.dl:                                            ; preds = %bb.dk
  %i.ns = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !48 ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 80
  %.sroa.0698.0.copyload = load ptr, ptr %i.nu, align 8, !tbaa !71 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.0698.0.copyload, i64 24
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !47
  switch i32 %i.nw, label %.critedge482.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit619
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit619
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit619: ; preds = %bb.dl, %bb.dl
  br i1 %i.ks, label %.critedge482.thread, label %bb.dm

bb.dm:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit619
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0698.0.copyload, i64 88
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !61 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 24 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 32
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !59
  %i.oc = icmp ult i32 %i.ob, 65
  %i.od = load ptr, ptr %i.nz, align 8
  %spec.select.i.i.i620 = select i1 %i.oc, ptr %i.nz, ptr %i.od
  %.0.i.i.i621 = load i64, ptr %spec.select.i.i.i620, align 8, !tbaa !45
  %i.oe = getelementptr inbounds nuw i8, ptr %.0.i.i.i491, i64 88
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !61 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 24 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 32
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !59
  %i.oj = icmp ult i32 %i.oi, 65
  %i.ok = load ptr, ptr %i.og, align 8
  %spec.select.i.i.i622 = select i1 %i.oj, ptr %i.og, ptr %i.ok
  %.0.i.i.i623 = load i64, ptr %spec.select.i.i.i622, align 8, !tbaa !45
  %i.ol = icmp eq i64 %.0.i.i.i621, %.0.i.i.i623
  br i1 %i.ol, label %bb.dn, label %bb.dr

bb.dn:                                            ; preds = %bb.dm
  %i.om = getelementptr inbounds nuw i8, ptr %i.nt, i64 40
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !49 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nt, i64 48
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !103 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 48
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !54
  %i.os = zext i32 %i.op to i64
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %i.or, i64 %i.os ; 2 uses
  %.sroa.0.0.copyload.i.i624 = load i16, ptr %i.ot, align 8, !tbaa !55
  %.sroa.21.0..sroa_idx.i.i625 = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %.sroa.21.0.copyload.i.i626 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i625, align 8, !tbaa !57
  %i.ou = load i16, ptr %19, align 8, !tbaa !68
  %.not.i.i629 = icmp eq i16 %i.ou, %.sroa.0.0.copyload.i.i624
  %i.ov = load ptr, ptr %i.e, align 8
  %i.ow = icmp eq ptr %i.ov, %.sroa.21.0.copyload.i.i626
  %.not4.i630 = select i1 %.not.i.i629, i1 %i.ow, i1 false
  br i1 %.not4.i630, label %.critedge486, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ox = call noundef zeroext i1 @_ZNK4llvm3EVT15isFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %19)
  %i.oy = load ptr, ptr %i.ns, align 8, !tbaa !48 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 40
  %.sroa.0160.0.copyload = load ptr, ptr %i.oz, align 8, !tbaa !71 ; 2 uses
  %.sroa.2161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oy, i64 48
  %.sroa.2161.0.copyload = load i32, ptr %.sroa.2161.0..sroa_idx, align 8, !tbaa !98 ; 2 uses
  %.sroa.0157.0.copyload = load i16, ptr %19, align 8, !tbaa !55 ; 2 uses
  %.sroa.2159.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !57 ; 2 uses
  br i1 %i.ox, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.pa = call { ptr, i32 } @_ZN4llvm12SelectionDAG18getFPExtendOrRoundENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %.sroa.0160.0.copyload, i32 %.sroa.2161.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0157.0.copyload, ptr %.sroa.2159.0.copyload) ; 2 uses
  %.fca.0.extract153 = extractvalue { ptr, i32 } %i.pa, 0
  %.fca.1.extract154 = extractvalue { ptr, i32 } %i.pa, 1
  br label %.critedge486

bb.dq:                                            ; preds = %bb.do
  %i.pb = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getSExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %.sroa.0160.0.copyload, i32 %.sroa.2161.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0157.0.copyload, ptr %.sroa.2159.0.copyload) ; 2 uses
  %.fca.0.extract143 = extractvalue { ptr, i32 } %i.pb, 0
  %.fca.1.extract144 = extractvalue { ptr, i32 } %i.pb, 1
  br label %.critedge486

bb.dr:                                            ; preds = %bb.dm
  %.sroa.0140.0.copyload = load i16, ptr %19, align 8, !tbaa !55
  %.sroa.2142.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !673 ; 2 uses
  %.not.i979 = icmp eq ptr %i.pd, null
  br i1 %.not.i979, label %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit982, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %.sroa.0.0.copyload.i.i980 = load i32, ptr %i.pe, align 8, !tbaa !98
  br label %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit982

_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit982: ; preds = %bb.dr, %bb.ds
  %.sroa.0.0.i981 = phi i32 [ 0, %bb.dr ], [ %.sroa.0.0.copyload.i.i980, %bb.ds ]
  %i.pf = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 164, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0140.0.copyload, ptr %.sroa.2142.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.nt, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, i32 %.sroa.0.0.i981) ; 2 uses
  %.fca.0.extract136 = extractvalue { ptr, i32 } %i.pf, 0
  %.fca.1.extract137 = extractvalue { ptr, i32 } %i.pf, 1
  br label %.critedge486

.critedge482.thread:                              ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit619, %bb.dl, %.split902, %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit600
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #32
  br label %.critedge21

.critedge482:                                     ; preds = %bb.dk
  %i.pg = icmp eq i32 %i.nq, 167
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #32
  br i1 %i.pg, label %bb.dt, label %.critedge21

bb.dt:                                            ; preds = %.critedge482
  %i.ph = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !103
  %i.pj = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !54
  %i.pl = zext i32 %i.pi to i64
  %i.pm = getelementptr inbounds nuw [16 x i8], ptr %i.pk, i64 %i.pl ; 3 uses
  %.sroa.0.0.copyload.i.i631 = load i16, ptr %i.pm, align 8, !tbaa !55 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i632 = getelementptr inbounds nuw i8, ptr %i.pm, i64 8 ; 2 uses
  %.sroa.21.0.copyload.i.i633 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i632, align 8, !tbaa !57
  store i16 %.sroa.0.0.copyload.i.i631, ptr %31, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %.sroa.21.0.copyload.i.i633, ptr %i.pn, align 8
  %.not.i636 = icmp eq i16 %.sroa.0.0.copyload.i.i631, 0
  br i1 %.not.i636, label %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit638, label %.split909

.split909:                                        ; preds = %bb.dt
  %i.po = add i16 %.sroa.0.0.copyload.i.i631, -19
  %spec.select.i.i637 = icmp ult i16 %i.po, 144
  br i1 %spec.select.i.i637, label %bb.du, label %.critedge21

_ZNK4llvm3EVT19isFixedLengthVectorEv.exit638:     ; preds = %bb.dt
  %i.pp = call noundef zeroext i1 @_ZNK4llvm3EVT27isExtendedFixedLengthVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %31) #33
  br i1 %i.pp, label %bb.du, label %.critedge21

bb.du:                                            ; preds = %.split909, %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit638
  %.sroa.0.0.copyload.i.i639 = load i16, ptr %i.pm, align 8, !tbaa !55
  %.sroa.21.0.copyload.i.i641 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i632, align 8, !tbaa !57
  store i16 %.sroa.0.0.copyload.i.i639, ptr %32, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %.sroa.21.0.copyload.i.i641, ptr %i.pq, align 8
  %i.pr = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %32)
  %i.ps = icmp eq i32 %i.pr, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  br i1 %i.ps, label %bb.dv, label %.critedge474

bb.dv:                                            ; preds = %bb.du
  %.sroa.0133.0.copyload = load i16, ptr %19, align 8, !tbaa !55
  %.sroa.2135.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.pt = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !48 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 40
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !673 ; 2 uses
  %.not.i983 = icmp eq ptr %i.px, null
  br i1 %.not.i983, label %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit986, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %.sroa.0.0.copyload.i.i984 = load i32, ptr %i.py, align 8, !tbaa !98
  br label %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit986

_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit986: ; preds = %bb.dv, %bb.dw
  %.sroa.0.0.i985 = phi i32 [ 0, %bb.dv ], [ %.sroa.0.0.copyload.i.i984, %bb.dw ]
  %i.pz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 164, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0133.0.copyload, ptr %.sroa.2135.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.pu, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.pv, i32 %.sroa.0.0.i985) ; 2 uses
  %.fca.0.extract129 = extractvalue { ptr, i32 } %i.pz, 0
  %.fca.1.extract130 = extractvalue { ptr, i32 } %i.pz, 1
  br label %.critedge486

.critedge21:                                      ; preds = %.critedge482.thread, %.split909, %.critedge482, %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit638
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  br label %.critedge474

bb.dx:                                            ; preds = %_ZN4llvm19isConstOrConstSplatENS_7SDValueEbb.exit
  %i.qa = load i32, ptr %i.g, align 8, !tbaa !47
  %i.qb = icmp eq i32 %i.qa, 57
  br i1 %i.qb, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.qc = getelementptr inbounds nuw i8, ptr %.0.i.i.i491, i64 88
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !61 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 24 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 32
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !59
  %i.qh = icmp ult i32 %i.qg, 65
  %i.qi = load ptr, ptr %i.qe, align 8
  %spec.select.i.i.i644 = select i1 %i.qh, ptr %i.qe, ptr %i.qi
  %.0.i.i.i645 = load i64, ptr %spec.select.i.i.i644, align 8, !tbaa !45
  %i.qj = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !48
  %i.ql = and i64 %.0.i.i.i645, 4294967295
  %i.qm = getelementptr inbounds nuw [40 x i8], ptr %i.qk, i64 %i.ql ; 2 uses
  %.sroa.0755.0.copyload774 = load ptr, ptr %i.qm, align 8, !tbaa !71
  %.sroa.70.0..sroa_idx811 = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %.sroa.70.0.copyload812 = load i32, ptr %.sroa.70.0..sroa_idx811, align 8, !tbaa !98
  br label %.critedge486

bb.dz:                                            ; preds = %bb.dx
  %.not464 = icmp eq ptr %.0.i.i.i, null
  br i1 %.not464, label %.critedge474, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.qn = load i16, ptr %19, align 8, !tbaa !68   ; 2 uses
  %.not.i646 = icmp eq i16 %i.qn, 0
  br i1 %.not.i646, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.qo = zext i16 %i.qn to i64
  %i.qp = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.qo ; 2 uses
  %i.qq = getelementptr i8, ptr %i.qp, i64 -16
  %.sroa.0.0.copyload.i.i647 = load i64, ptr %i.qq, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.qp, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i648 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i647, 0
  %.fca.1.insert.i.i649 = insertvalue { i64, i8 } %.fca.0.insert.i.i648, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.ec:                                            ; preds = %bb.ea
  %i.qr = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %19) #33
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.eb, %bb.ec
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i649, %bb.eb ], [ %i.qr, %bb.ec ] ; 2 uses
  %.fca.1.extract124 = extractvalue { i64, i8 } %.pn.i, 1
  %i.qs = trunc nuw i8 %.fca.1.extract124 to i1
  br i1 %i.qs, label %bb.ed, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.ed:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.18) #34
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract123 = extractvalue { i64, i8 } %.pn.i, 0 ; 2 uses
  %i.qt = trunc i64 %.fca.0.extract123 to i32
  %i.qu = getelementptr inbounds nuw i8, ptr %.0.i.i.i491, i64 88
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !61 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 24 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qv, i64 32
  %i.qy = load i32, ptr %i.qx, align 8, !tbaa !59
  %i.qz = icmp ult i32 %i.qy, 65
  %i.ra = load ptr, ptr %i.qw, align 8
  %spec.select.i.i.i650 = select i1 %i.qz, ptr %i.qw, ptr %i.ra
  %.0.i.i.i651 = load i64, ptr %spec.select.i.i.i650, align 8, !tbaa !45
  %i.rb = mul i64 %.0.i.i.i651, %.fca.0.extract123
  %i.rc = trunc i64 %i.rb to i32
  %i.rd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 88
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !61
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #32
  call void @_ZNK4llvm5APInt11extractBitsEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %33, ptr noundef nonnull align 8 dereferenceable(12) %i.rf, i32 noundef %i.qt, i32 noundef %i.rc) #32
  %.sroa.0118.0.copyload = load i16, ptr %19, align 8, !tbaa !55
  %.sroa.2120.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.rg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantERKNS_5APIntERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(12) %33, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0118.0.copyload, ptr %.sroa.2120.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) ; 2 uses
  %.fca.0.extract114 = extractvalue { ptr, i32 } %i.rg, 0
  %.fca.1.extract115 = extractvalue { ptr, i32 } %i.rg, 1
  %i.rh = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ri = load i32, ptr %i.rh, align 8, !tbaa !59
  %i.rj = icmp ugt i32 %i.ri, 64
  br i1 %i.rj, label %bb.ee, label %_ZN4llvm5APIntD2Ev.exit652

bb.ee:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.rk = load ptr, ptr %33, align 8, !tbaa !45   ; 2 uses
  %i.rl = icmp eq ptr %i.rk, null
  br i1 %i.rl, label %_ZN4llvm5APIntD2Ev.exit652, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @_ZdaPv(ptr noundef nonnull %i.rk) #35
  br label %_ZN4llvm5APIntD2Ev.exit652

_ZN4llvm5APIntD2Ev.exit652:                       ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.ee, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  br label %.critedge486

bb.eg:                                            ; preds = %_ZN4llvm19isConstOrConstSplatENS_7SDValueEbb.exit
  %i.rm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !103 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !54
  %i.rq = zext i32 %i.rn to i64
  %i.rr = getelementptr inbounds nuw [16 x i8], ptr %i.rp, i64 %i.rq ; 2 uses
  %.sroa.0.0.copyload.i.i653 = load i16, ptr %i.rr, align 8, !tbaa !55
  %.sroa.21.0..sroa_idx.i.i654 = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %.sroa.21.0.copyload.i.i655 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i654, align 8, !tbaa !57
  %i.rs = load i16, ptr %19, align 8, !tbaa !68   ; 4 uses
  %.not.i.i658 = icmp eq i16 %i.rs, %.sroa.0.0.copyload.i.i653
  %i.rt = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.ru = icmp eq ptr %i.rt, %.sroa.21.0.copyload.i.i655
  %.not4.i659 = select i1 %.not.i.i658, i1 %i.ru, i1 false
  br i1 %.not4.i659, label %.critedge486, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.rv = load i32, ptr %i.g, align 8, !tbaa !47  ; 2 uses
  %i.rw = add i32 %i.rv, -53
  %spec.select.i.i660 = icmp ult i32 %i.rw, 2
  br i1 %spec.select.i.i660, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
end_hunk_0
begin_hunk_1_@_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_11SDNodeFlagsE:bb.a
bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #32
  %i.vp = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %19)
  %i.vq = trunc i64 %i.vp to i32
  call void @_ZN4llvm5APInt17getSignedMinValueEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %35, i32 noundef %i.vq)
  %.sroa.050.0.copyload = load i16, ptr %19, align 8, !tbaa !55
  %.sroa.252.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.vr = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantERKNS_5APIntERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(12) %35, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.050.0.copyload, ptr %.sroa.252.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) ; 2 uses
  %.fca.0.extract46 = extractvalue { ptr, i32 } %i.vr, 0
  %.fca.1.extract47 = extractvalue { ptr, i32 } %i.vr, 1
  %i.vs = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !59
  %i.vu = icmp ugt i32 %i.vt, 64
  br i1 %i.vu, label %bb.fp, label %_ZN4llvm5APIntD2Ev.exit678

bb.fp:                                            ; preds = %bb.fo
  %i.vv = load ptr, ptr %35, align 8, !tbaa !45   ; 2 uses
  %i.vw = icmp eq ptr %i.vv, null
  br i1 %i.vw, label %_ZN4llvm5APIntD2Ev.exit678, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @_ZdaPv(ptr noundef nonnull %i.vv) #35
  br label %_ZN4llvm5APIntD2Ev.exit678

_ZN4llvm5APIntD2Ev.exit678:                       ; preds = %bb.fo, %bb.fp, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #32
  br label %.critedge486

bb.fr:                                            ; preds = %bb.ey, %bb.ex
  %.sroa.043.0.copyload = load i16, ptr %19, align 8, !tbaa !55
  %.sroa.245.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %37, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !749
  %i.vx = getelementptr inbounds nuw i8, ptr %37, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.vx, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !749
  store ptr %37, ptr %36, align 8, !tbaa !690
  %i.vy = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 2, ptr %i.vy, align 8, !tbaa !693
  %i.vz = call { ptr, i32 } @_ZN4llvm12SelectionDAG22FoldConstantArithmeticEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef %.pre929, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.043.0.copyload, ptr %.sroa.245.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.122") align 8 %36, i32 %7) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.vz, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i32 } %i.vz, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #32
  %.not925 = icmp eq ptr %.fca.0.extract, null
  br i1 %.not925, label %bb.fs, label %.critedge486

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #32
  %.sroa.029.0.copyload = load i16, ptr %19, align 8, !tbaa !55 ; 3 uses
  %.sroa.231.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i16 %.sroa.029.0.copyload, ptr %10, align 8
  %i.wa = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sroa.231.0.copyload, ptr %i.wa, align 8
  %.not.i.i679 = icmp eq i16 %.sroa.029.0.copyload, 0
  br i1 %.not.i.i679, label %bb.fw, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.wb = load atomic i8, ptr @_ZGVZN4llvm6SDNode16getValueTypeListENS_3MVTEE13SimpleVTArray acquire, align 8
  %i.wc = icmp eq i8 %i.wb, 0
  br i1 %i.wc, label %bb.fu, label %_ZN4llvm6SDNode16getValueTypeListENS_3MVTE.exit.i, !prof !121

bb.fu:                                            ; preds = %bb.ft
  %i.wd = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvm6SDNode16getValueTypeListENS_3MVTEE13SimpleVTArray) #32
  %.not.i3.i = icmp eq i32 %i.wd, 0
  br i1 %.not.i3.i, label %_ZN4llvm6SDNode16getValueTypeListENS_3MVTE.exit.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call fastcc void @_ZN12_GLOBAL__N_18EVTArrayC2Ev()
  %i.we = call i32 @__cxa_atexit(ptr nonnull @_ZN12_GLOBAL__N_18EVTArrayD2Ev, ptr nonnull @_ZZN4llvm6SDNode16getValueTypeListENS_3MVTEE13SimpleVTArray, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvm6SDNode16getValueTypeListENS_3MVTEE13SimpleVTArray) #32
  br label %_ZN4llvm6SDNode16getValueTypeListENS_3MVTE.exit.i

_ZN4llvm6SDNode16getValueTypeListENS_3MVTE.exit.i: ; preds = %bb.fv, %bb.fu, %bb.ft
  %i.wf = zext i16 %.sroa.029.0.copyload to i64
  %i.wg = load ptr, ptr @_ZZN4llvm6SDNode16getValueTypeListENS_3MVTEE13SimpleVTArray, align 8, !tbaa !122
  %i.wh = getelementptr inbounds nuw [16 x i8], ptr %i.wg, i64 %i.wf
  br label %_ZN4llvm12SelectionDAG9getVTListENS_3EVTE.exit

bb.fw:                                            ; preds = %bb.fs
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.wj = call { ptr, i8 } @_ZNSt8_Rb_treeIN4llvm3EVTES1_St9_IdentityIS1_ENS1_14compareRawBitsESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.wi, ptr noundef nonnull align 8 dereferenceable(16) %10)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.wj, 0
  %i.wk = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 32
  br label %_ZN4llvm12SelectionDAG9getVTListENS_3EVTE.exit

_ZN4llvm12SelectionDAG9getVTListENS_3EVTE.exit:   ; preds = %_ZN4llvm6SDNode16getValueTypeListENS_3MVTE.exit.i, %bb.fw
  %.pn8.i = phi ptr [ %i.wk, %bb.fw ], [ %i.wh, %_ZN4llvm6SDNode16getValueTypeListENS_3MVTE.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  store ptr %.pn8.i, ptr %38, align 8
  %i.wl = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i32 1, ptr %i.wl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %39, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !749
  %i.wm = getelementptr inbounds nuw i8, ptr %39, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.wm, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !749
  %i.wn = load i16, ptr %19, align 8, !tbaa !68
  %.not.i681 = icmp ne i16 %i.wn, 249
  %i.wo = load ptr, ptr %i.e, align 8
  %i.wp = icmp ne ptr %i.wo, null
  %i.wq = select i1 %.not.i681, i1 true, i1 %i.wp
  br i1 %i.wq, label %bb.fx, label %bb.gb

bb.fx:                                            ; preds = %_ZN4llvm12SelectionDAG9getVTListENS_3EVTE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #32
  %i.wr = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  store ptr %i.wr, ptr %40, align 8, !tbaa !21
  %i.ws = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i32 0, ptr %i.ws, align 8, !tbaa !137
  %i.wt = getelementptr inbounds nuw i8, ptr %40, i64 12
  store i32 32, ptr %i.wt, align 4, !tbaa !138
  %i.wu = load i32, ptr %i.a, align 4, !tbaa !98
  call fastcc void @_ZL13AddNodeIDNodeRN4llvm16FoldingSetNodeIDEjNS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(144) %40, i32 noundef %i.wu, ptr %.pn8.i, ptr nonnull %39, i64 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr null, ptr %i.b, align 8, !tbaa !426
  %i.wv = call noundef ptr @_ZN4llvm12SelectionDAG19FindNodeOrInsertPosERKNS_16FoldingSetNodeIDERKNS_5SDLocERPv(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(144) %40, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 3 uses
  %.not472 = icmp eq ptr %i.wv, null              ; 2 uses
  br i1 %.not472, label %.critedge490, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 28 ; 2 uses
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !124
  %i.wy = and i32 %i.wx, %7
  store i32 %i.wy, ptr %i.ww, align 4, !tbaa !124
  br label %bb.fz

.critedge490:                                     ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.wz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.xa = load i32, ptr %i.wz, align 8, !tbaa !414
  store i32 %i.xa, ptr %i.c, align 4, !tbaa !98
  %i.xb = call noundef ptr @_ZN4llvm12SelectionDAG9newSDNodeINS_6SDNodeEJRjjRKNS_8DebugLocERNS_8SDVTListEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %38) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 28
  store i32 %7, ptr %i.xc, align 4, !tbaa !98
  call void @_ZN4llvm12SelectionDAG14createOperandsEPNS_6SDNodeENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull %i.xb, ptr nonnull %39, i64 2)
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.xe = load ptr, ptr %i.b, align 8, !tbaa !426
  call void @_ZN4llvm14FoldingSetBase10InsertNodeEPNS0_4NodeEPvRKNS0_14FoldingSetInfoE(ptr noundef nonnull align 8 dereferenceable(16) %i.xd, ptr noundef nonnull %i.xb, ptr noundef %i.xe, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4llvm10FoldingSetINS_6SDNodeEE17getFoldingSetInfoEvE4Info) #32
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %.critedge490
  %.sroa.70.3 = phi i32 [ %.fca.1.extract, %.critedge490 ], [ 0, %bb.fy ]
  %.0440 = phi ptr [ %i.xb, %.critedge490 ], [ undef, %bb.fy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.xf = load ptr, ptr %40, align 8, !tbaa !21   ; 2 uses
  %i.xg = icmp eq ptr %i.xf, %i.wr
  br i1 %i.xg, label %_ZN4llvm16FoldingSetNodeIDD2Ev.exit, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @free(ptr noundef %i.xf) #32
  br label %_ZN4llvm16FoldingSetNodeIDD2Ev.exit

_ZN4llvm16FoldingSetNodeIDD2Ev.exit:              ; preds = %bb.fz, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #32
  br i1 %.not472, label %bb.gc, label %_ZN4llvm12SelectionDAG10InsertNodeEPNS_6SDNodeE.exit

bb.gb:                                            ; preds = %_ZN4llvm12SelectionDAG9getVTListENS_3EVTE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  %i.xh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.xi = load i32, ptr %i.xh, align 8, !tbaa !414
  store i32 %i.xi, ptr %i.d, align 4, !tbaa !98
  %i.xj = call noundef ptr @_ZN4llvm12SelectionDAG9newSDNodeINS_6SDNodeEJRjjRKNS_8DebugLocERNS_8SDVTListEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %38) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @_ZN4llvm12SelectionDAG14createOperandsEPNS_6SDNodeENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef %i.xj, ptr nonnull %39, i64 2)
  br label %bb.gc

bb.gc:                                            ; preds = %_ZN4llvm16FoldingSetNodeIDD2Ev.exit, %bb.gb
  %.1441 = phi ptr [ %.0440, %_ZN4llvm16FoldingSetNodeIDD2Ev.exit ], [ %i.xj, %bb.gb ] ; 5 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.1441, i64 8 ; 3 uses
  %i.xm = load ptr, ptr %i.xk, align 8, !tbaa !202 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.1441, i64 16
  store ptr %i.xk, ptr %i.xn, align 8, !tbaa !139
  store ptr %i.xm, ptr %i.xl, align 8, !tbaa !202
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  store ptr %i.xl, ptr %i.xo, align 8, !tbaa !139
  store ptr %i.xl, ptr %i.xk, align 8, !tbaa !202
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 712
  %.06.i = load ptr, ptr %i.xp, align 8, !tbaa !142 ; 2 uses
  %.not7.i = icmp eq ptr %.06.i, null
  br i1 %.not7.i, label %_ZN4llvm12SelectionDAG10InsertNodeEPNS_6SDNodeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.gc, %.lr.ph.i
  %.08.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.06.i, %bb.gc ] ; 3 uses
  %i.xq = load ptr, ptr %.08.i, align 8, !tbaa !8
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 32
  %i.xs = load ptr, ptr %i.xr, align 8
  call void %i.xs(ptr noundef nonnull align 8 dereferenceable(24) %.08.i, ptr noundef nonnull %.1441) #32, !inline_history !670
  %i.xt = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %.0.i = load ptr, ptr %i.xt, align 8, !tbaa !142 ; 2 uses
  %.not.i682 = icmp eq ptr %.0.i, null
  br i1 %.not.i682, label %_ZN4llvm12SelectionDAG10InsertNodeEPNS_6SDNodeE.exit, label %.lr.ph.i, !llvm.loop !332

_ZN4llvm12SelectionDAG10InsertNodeEPNS_6SDNodeE.exit: ; preds = %.lr.ph.i, %bb.gc, %_ZN4llvm16FoldingSetNodeIDD2Ev.exit
  %.sroa.0755.4 = phi ptr [ %i.wv, %_ZN4llvm16FoldingSetNodeIDD2Ev.exit ], [ %.1441, %bb.gc ], [ %.1441, %.lr.ph.i ]
  %.sroa.70.4 = phi i32 [ %.sroa.70.3, %_ZN4llvm16FoldingSetNodeIDD2Ev.exit ], [ 0, %bb.gc ], [ 0, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #32
  br label %.critedge486

.critedge486:                                     ; preds = %bb.en, %bb.eg, %bb.dp, %bb.dq, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit982, %bb.dn, %bb.ck, %bb.ap, %bb.m, %bb.i, %bb.f, %.thread914, %.thread911, %bb.cd, %bb.cc, %bb.cb, %bb.au, %bb.at, %bb.as, %bb.ah, %bb.ag, %_ZN4llvm5APIntD2Ev.exit, %bb.cw, %bb.cu, %bb.ei, %bb.el, %bb.co, %bb.cp, %bb.fr, %_ZN4llvm5APIntD2Ev.exit678, %_ZN4llvm5APIntD2Ev.exit677, %bb.fh, %bb.fi, %bb.fe, %bb.ff, %bb.di, %bb.dj, %bb.ce, %bb.by, %bb.j, %bb.k, %_ZN4llvm12SelectionDAG10InsertNodeEPNS_6SDNodeE.exit, %bb.fc, %bb.fb, %bb.fa, %bb.ew, %bb.ev, %bb.eq, %_ZN4llvm5APIntD2Ev.exit652, %bb.dy, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit986, %bb.dg, %bb.dd, %bb.cz, %bb.cm, %bb.cj, %bb.cg, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit978, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit974, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit524, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit510, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit970, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit959, %bb.r, %bb.o, %bb.h
  %.sroa.0755.5 = phi ptr [ %.fca.0.extract, %bb.fr ], [ %.sroa.0755.4, %_ZN4llvm12SelectionDAG10InsertNodeEPNS_6SDNodeE.exit ], [ %.fca.0.extract85, %bb.fa ], [ %i.uh, %bb.fb ], [ %.fca.0.extract78, %bb.fc ], [ %i.uh, %bb.fe ], [ %.fca.0.extract71, %bb.ff ], [ %i.uh, %bb.fh ], [ %.fca.0.extract64, %bb.fi ], [ %i.uh, %.thread911 ], [ %.fca.0.extract55, %_ZN4llvm5APIntD2Ev.exit677 ], [ %i.uh, %.thread914 ], [ %.fca.0.extract46, %_ZN4llvm5APIntD2Ev.exit678 ], [ %.sroa.0755.0.copyload779, %bb.ev ], [ %.fca.0.extract92, %bb.ew ], [ %.sroa.0755.0.copyload778, %bb.eq ], [ %.fca.0.extract254, %bb.cd ], [ %i.f, %bb.h ], [ %i.i, %bb.f ], [ %.fca.0.extract358, %bb.j ], [ %.fca.0.extract351, %bb.k ], [ %i.f, %bb.i ], [ %.pre926, %bb.o ], [ %.fca.0.extract344, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit959 ], [ %i.f, %bb.cu ], [ %i.f, %bb.r ], [ %.fca.0.extract328, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit970 ], [ %.fca.0.extract335, %bb.ah ], [ %i.i, %bb.m ], [ %.fca.0.extract312, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit ], [ %.fca.0.extract295, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit510 ], [ %i.on, %bb.dn ], [ %.fca.0.extract103, %bb.ei ], [ %.sroa.0755.0.copyload776, %bb.el ], [ %i.f, %bb.eg ], [ %.sroa.0755.0.copyload774, %bb.dy ], [ %.fca.0.extract114, %_ZN4llvm5APIntD2Ev.exit652 ], [ %.fca.0.extract202, %bb.cz ], [ %.fca.0.extract129, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit986 ], [ %i.f, %bb.ck ], [ %.fca.0.extract167, %bb.dj ], [ %.sroa.0755.0.copyload772, %bb.di ], [ %.fca.0.extract183, %bb.dg ], [ %.fca.0.extract195, %bb.dd ], [ %i.f, %bb.cw ], [ %.fca.0.extract288, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit524 ], [ %.fca.0.extract281, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit974 ], [ %.fca.0.extract274, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit978 ], [ %.fca.0.extract263, %bb.by ], [ %.fca.0.extract244, %bb.ce ], [ %i.f, %bb.cg ], [ %i.f, %bb.cj ], [ %.fca.0.extract319, %bb.au ], [ %i.i, %bb.ap ], [ %.fca.0.extract234, %bb.cm ], [ %.fca.0.extract225, %bb.co ], [ %.fca.0.extract218, %bb.cp ], [ %.fca.0.extract335, %_ZN4llvm5APIntD2Ev.exit ], [ %.fca.0.extract335, %bb.ag ], [ %.fca.0.extract319, %bb.as ], [ %.fca.0.extract319, %bb.at ], [ %.fca.0.extract254, %bb.cb ], [ %.fca.0.extract254, %bb.cc ], [ %.fca.0.extract136, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit982 ], [ %.fca.0.extract153, %bb.dp ], [ %.fca.0.extract143, %bb.dq ], [ %i.tf, %bb.en ]
  %.sroa.70.5 = phi i32 [ %.fca.1.extract, %bb.fr ], [ %.sroa.70.4, %_ZN4llvm12SelectionDAG10InsertNodeEPNS_6SDNodeE.exit ], [ %.fca.1.extract86, %bb.fa ], [ %.sroa.70.0.copyload823, %bb.fb ], [ %.fca.1.extract79, %bb.fc ], [ %.sroa.70.0.copyload825, %bb.fe ], [ %.fca.1.extract72, %bb.ff ], [ %.sroa.70.0.copyload827, %bb.fh ], [ %.fca.1.extract65, %bb.fi ], [ %.sroa.70.0.copyload829, %.thread911 ], [ %.fca.1.extract56, %_ZN4llvm5APIntD2Ev.exit677 ], [ %.sroa.70.0.copyload831, %.thread914 ], [ %.fca.1.extract47, %_ZN4llvm5APIntD2Ev.exit678 ], [ %.sroa.70.0.copyload821, %bb.ev ], [ %.fca.1.extract93, %bb.ew ], [ %.sroa.70.0.copyload819, %bb.eq ], [ %.fca.1.extract255, %bb.cd ], [ %.sroa.70.0.copyload786, %bb.h ], [ %.sroa.2375.0.copyload, %bb.f ], [ %.fca.1.extract359, %bb.j ], [ %.fca.1.extract352, %bb.k ], [ %.sroa.2375.0.copyload, %bb.i ], [ %.sroa.70.0.copyload792, %bb.o ], [ %.fca.1.extract345, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit959 ], [ %.sroa.70.0.copyload804, %bb.cu ], [ %.sroa.70.0.copyload794, %bb.r ], [ %.fca.1.extract329, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit970 ], [ %.fca.1.extract336, %bb.ah ], [ %.sroa.2375.0.copyload, %bb.m ], [ %.fca.1.extract313, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit ], [ %.fca.1.extract296, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit510 ], [ %i.op, %bb.dn ], [ %.fca.1.extract104, %bb.ei ], [ %.sroa.70.0.copyload816, %bb.el ], [ %i.rn, %bb.eg ], [ %.sroa.70.0.copyload812, %bb.dy ], [ %.fca.1.extract115, %_ZN4llvm5APIntD2Ev.exit652 ], [ %.fca.1.extract203, %bb.cz ], [ %.fca.1.extract130, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit986 ], [ %i.iu, %bb.ck ], [ %.fca.1.extract168, %bb.dj ], [ %.sroa.70.0.copyload808, %bb.di ], [ %.fca.1.extract184, %bb.dg ], [ %.fca.1.extract196, %bb.dd ], [ %.sroa.70.0.copyload806, %bb.cw ], [ %.fca.1.extract289, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit524 ], [ %.fca.1.extract282, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit974 ], [ %.fca.1.extract275, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit978 ], [ %.fca.1.extract264, %bb.by ], [ %.fca.1.extract245, %bb.ce ], [ %.sroa.70.0.copyload798, %bb.cg ], [ %.sroa.70.0.copyload800, %bb.cj ], [ %.fca.1.extract320, %bb.au ], [ %.sroa.2375.0.copyload, %bb.ap ], [ %.fca.1.extract235, %bb.cm ], [ %.fca.1.extract226, %bb.co ], [ %.fca.1.extract219, %bb.cp ], [ %.fca.1.extract336, %_ZN4llvm5APIntD2Ev.exit ], [ %.fca.1.extract336, %bb.ag ], [ %.fca.1.extract320, %bb.as ], [ %.fca.1.extract320, %bb.at ], [ %.fca.1.extract255, %bb.cb ], [ %.fca.1.extract255, %bb.cc ], [ %.fca.1.extract137, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_.exit982 ], [ %.fca.1.extract154, %bb.dp ], [ %.fca.1.extract144, %bb.dq ], [ %i.th, %bb.en ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0755.5, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.70.5, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm12SelectionDAG28canonicalizeCommutativeBinopEjRNS_7SDValueES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(920) %0, i32 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !364  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1376
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(518435) %i.b, i32 noundef %1) #32
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %.sroa.013.0.copyload = load ptr, ptr %2, align 8, !tbaa !71
  %i.g = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG37isConstantIntBuildVectorOrConstantIntENS_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %.sroa.013.0.copyload, i32 poison, i1 noundef zeroext true)
  %.sroa.09.0.copyload = load ptr, ptr %3, align 8, !tbaa !71
  %i.h = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG37isConstantIntBuildVectorOrConstantIntENS_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %.sroa.09.0.copyload, i32 poison, i1 noundef zeroext true)
  %.sroa.05.0.copyload = load ptr, ptr %2, align 8, !tbaa !71 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !47   ; 2 uses
  switch i32 %i.j, label %_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit.i [
    i32 38, label %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit
    i32 13, label %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit
    i32 162, label %bb.c
    i32 175, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload, i64 64
  %i.n = load i16, ptr %i.m, align 8, !tbaa !67   ; 2 uses
  %i.o = zext i16 %i.n to i64
  %.idx.i.i = mul nuw nsw i64 %i.o, 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i
  %.not1617.i.i = icmp eq i16 %i.n, 0
  br i1 %.not1617.i.i, label %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %select.unfold.i.i
  %.sroa.011.018.i.i = phi ptr [ %i.u, %select.unfold.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.011.018.i.i, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !47   ; 2 uses
  %i.t = add i32 %i.s, -53
  %spec.select.i.i.i.i = icmp ult i32 %i.t, 2
  br i1 %spec.select.i.i.i.i, label %select.unfold.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  switch i32 %i.s, label %_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit.i [
    i32 38, label %select.unfold.i.i
    i32 13, label %select.unfold.i.i
  ]

select.unfold.i.i:                                ; preds = %bb.d, %bb.d, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.011.018.i.i, i64 40 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.u, %i.p
  br i1 %.not16.i.i, label %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !47   ; 2 uses
  %switch.selectcmp.case1.i = icmp ne i32 %i.z, 38
  %switch.selectcmp.case2.i = icmp ne i32 %i.z, 13
  %switch.selectcmp.i.not = and i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  br label %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit

_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit.i: ; preds = %bb.d, %bb.b
  br label %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit

_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit: ; preds = %select.unfold.i.i, %bb.b, %bb.b, %bb.c, %bb.e, %_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit.i
  %.0.i = phi i1 [ true, %_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit.i ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.c ], [ %switch.selectcmp.i.not, %bb.e ], [ false, %select.unfold.i.i ] ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !tbaa !71 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !47 ; 2 uses
  switch i32 %i.ab, label %_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit.i40 [
    i32 38, label %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit41
    i32 13, label %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit41
    i32 162, label %bb.f
    i32 175, label %bb.h
  ]

bb.f:                                             ; preds = %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 64
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !67 ; 2 uses
  %i.ag = zext i16 %i.af to i64
  %.idx.i.i33 = mul nuw nsw i64 %i.ag, 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i.i33
  %.not1617.i.i34 = icmp eq i16 %i.af, 0
  br i1 %.not1617.i.i34, label %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit41, label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %bb.f, %select.unfold.i.i38
  %.sroa.011.018.i.i36 = phi ptr [ %i.am, %select.unfold.i.i38 ], [ %i.ad, %bb.f ] ; 2 uses
  %i.ai = load ptr, ptr %.sroa.011.018.i.i36, align 8, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !47 ; 2 uses
  %i.al = add i32 %i.ak, -53
  %spec.select.i.i.i.i37 = icmp ult i32 %i.al, 2
  br i1 %spec.select.i.i.i.i37, label %select.unfold.i.i38, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i35
  switch i32 %i.ak, label %_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit.i40 [
    i32 38, label %select.unfold.i.i38
    i32 13, label %select.unfold.i.i38
  ]

select.unfold.i.i38:                              ; preds = %bb.g, %bb.g, %.lr.ph.i.i35
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.011.018.i.i36, i64 40 ; 2 uses
  %.not16.i.i39 = icmp eq ptr %i.am, %i.ah
  br i1 %.not16.i.i39, label %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit41, label %.lr.ph.i.i35

bb.h:                                             ; preds = %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !49
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !47 ; 2 uses
  %switch.selectcmp.case1.i29 = icmp eq i32 %i.ar, 38
  %switch.selectcmp.case2.i30 = icmp eq i32 %i.ar, 13
  %switch.selectcmp.i31 = or i1 %switch.selectcmp.case1.i29, %switch.selectcmp.case2.i30
  %i.as = or i1 %.0.i, %switch.selectcmp.i31
  br label %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit41

_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit.i40: ; preds = %bb.g, %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit
  br label %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit41

_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit41: ; preds = %select.unfold.i.i38, %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit, %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit, %bb.f, %bb.h, %_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit.i40
  %.0.i32 = phi i1 [ %.0.i, %_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit.i40 ], [ true, %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit ], [ true, %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit ], [ true, %bb.f ], [ %i.as, %bb.h ], [ true, %select.unfold.i.i38 ]
  %.not = xor i1 %i.g, true
  %or.cond = or i1 %i.h, %.not
  %or.cond28 = and i1 %or.cond, %.0.i32
  br i1 %or.cond28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !749
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !749
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !749
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.l

bb.j:                                             ; preds = %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit41
  %i.at = icmp eq i32 %i.j, 175
  %i.au = icmp eq i32 %i.ab, 177
  %or.cond42 = and i1 %i.at, %i.au
  br i1 %or.cond42, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !749
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !749
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !749
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm12SelectionDAG37isConstantIntBuildVectorOrConstantIntENS_7SDValueEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(920) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = icmp eq i32 %i.b, 248
  br i1 %i.c, label %.lr.ph.i, label %_ZN4llvm19peekThroughBitcastsENS_7SDValueE.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.03.i = phi ptr [ %.sroa.0.0.copyload2.i, %.lr.ph.i ], [ %1, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  %.sroa.0.0.copyload2.i = load ptr, ptr %i.e, align 8, !tbaa !71 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload2.i, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !47   ; 2 uses
  %i.h = icmp eq i32 %i.g, 248
  br i1 %i.h, label %.lr.ph.i, label %_ZN4llvm19peekThroughBitcastsENS_7SDValueE.exit, !llvm.loop !1129

_ZN4llvm19peekThroughBitcastsENS_7SDValueE.exit:  ; preds = %.lr.ph.i, %bb.a
  %i.i = phi i32 [ %i.b, %bb.a ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %.sroa.0.0.copyload2.i, %.lr.ph.i ] ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 24
  switch i32 %i.i, label %thread-pre-split [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 162, label %bb.c
    i32 14, label %bb.e
    i32 15, label %_ZN4llvm3ISD30isBuildVectorOfConstantSDNodesEPKNS_6SDNodeE.exit
    i32 39, label %_ZN4llvm3ISD30isBuildVectorOfConstantSDNodesEPKNS_6SDNodeE.exit
    i32 40, label %_ZN4llvm3ISD30isBuildVectorOfConstantSDNodesEPKNS_6SDNodeE.exit
  ]
end_hunk_1
begin_hunk_2_@_ZN4llvm12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERNS_3ISD8NodeTypeENS_8ArrayRefIS4_EEb:bb.a

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.h
  %i.ad = and i64 %4, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.c
  %.pre-phi61.i.i.i.i.i = phi i64 [ %i.ad, %._crit_edge.loopexit.i.i.i.i.i ], [ %4, %bb.c ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %3, %bb.c ] ; 5 uses
  switch i64 %.pre-phi61.i.i.i.i.i, label %_ZN4llvm14isNullConstantENS_7SDValueE.exit.thread [
    i64 3, label %bb.i
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i
  %.phi.trans.insert58.i.i.i.i.i = getelementptr i8, ptr %.sroa.0144.0.copyload, i64 24
  %.val.val.pre.i.i.i.i.i = load i32, ptr %.phi.trans.insert58.i.i.i.i.i, align 8, !tbaa !47
  br label %bb.m

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i = getelementptr i8, ptr %.sroa.0144.0.copyload, i64 24
  %.val30.val.pre.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !47
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.029.val.i.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i.i, align 4, !tbaa !1581
  %i.ae = getelementptr i8, ptr %.sroa.0144.0.copyload, i64 24
  %.val31.val.i.i.i.i.i = load i32, ptr %i.ae, align 8, !tbaa !47 ; 2 uses
  %i.af = icmp eq i32 %.val31.val.i.i.i.i.i, %.029.val.i.i.i.i.i
  br i1 %i.af, label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge._crit_edge.i.i.i.i.i
  %.val30.val.i.i.i.i.i = phi i32 [ %.val31.val.i.i.i.i.i, %bb.j ], [ %.val30.val.pre.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ] ; 2 uses
  %.1.i.i.i.i.i = phi ptr [ %i.ag, %bb.j ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i = load i32, ptr %.1.i.i.i.i.i, align 4, !tbaa !1581
  %i.ah = icmp eq i32 %.val30.val.i.i.i.i.i, %.1.val.i.i.i.i.i
  br i1 %i.ah, label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge._crit_edge57.i.i.i.i.i
  %.val.val.i.i.i.i.i = phi i32 [ %.val30.val.i.i.i.i.i, %bb.l ], [ %.val.val.pre.i.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i.i ]
  %.2.i.i.i.i.i = phi ptr [ %i.ai, %bb.l ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i = load i32, ptr %.2.i.i.i.i.i, align 4, !tbaa !1581
  %i.aj = icmp eq i32 %.val.val.i.i.i.i.i, %.2.val.i.i.i.i.i
  br i1 %i.aj, label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit", label %_ZN4llvm14isNullConstantENS_7SDValueE.exit.thread

"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i, i64 4
  br label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit"

"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit282": ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i, i64 8
  br label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit"

"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit284": ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i, i64 12
  br label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit"

"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit": ; preds = %bb.d, %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit282", %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit284", %bb.i, %bb.k, %bb.m
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %bb.k ], [ %.029.lcssa.i.i.i.i.i, %bb.i ], [ %.2.i.i.i.i.i, %bb.m ], [ %i.am, %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit284" ], [ %i.al, %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit282" ], [ %i.ak, %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02950.i.i.i.i.i, %bb.d ]
  %i.an = icmp eq ptr %i.p, %.028.i.i.i.i.i
  br i1 %i.an, label %_ZN4llvm14isNullConstantENS_7SDValueE.exit.thread, label %bb.n

bb.n:                                             ; preds = %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0144.0.copyload, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !47 ; 5 uses
  store i32 %i.ap, ptr %i.b, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0144.0.copyload, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !54
  %i.as = zext i32 %.sroa.21.0.copyload to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.as ; 3 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.at, align 8, !tbaa !55 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !57
  store i16 %.sroa.0.0.copyload.i.i, ptr %6, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.au, align 8
  %.not.i78 = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i78, label %_ZNK4llvm3EVT15isFloatingPointEv.exit, label %.split

.split:                                           ; preds = %bb.n
  %i.av = add i16 %.sroa.0.0.copyload.i.i, -12
  %or.cond.i.i = icmp ult i16 %i.av, 7
  %i.aw = add i16 %.sroa.0.0.copyload.i.i, -105
  %or.cond3.i.i = icmp ult i16 %i.aw, 58
  %or.cond4.i.i = or i1 %or.cond.i.i, %or.cond3.i.i
  %i.ax = add i16 %.sroa.0.0.copyload.i.i, -195
  %spec.select.i.i = icmp ult i16 %i.ax, 21
  %i.ay = or i1 %spec.select.i.i, %or.cond4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br i1 %i.ay, label %bb.o, label %bb.p

_ZNK4llvm3EVT15isFloatingPointEv.exit:            ; preds = %bb.n
  %i.az = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.split, %_ZNK4llvm3EVT15isFloatingPointEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0144.0.copyload, i64 28
  %.sroa.0.0.copyload.i = load i32, ptr %i.ba, align 4, !tbaa !98
  %i.bb = and i32 %.sroa.0.0.copyload.i, 2176
  %or.cond = icmp eq i32 %i.bb, 2176
  br i1 %or.cond, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o, %.split, %_ZNK4llvm3EVT15isFloatingPointEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store ptr %i.a, ptr %7, align 8, !tbaa !1784
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %i.bc, align 8, !tbaa !1786
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %2, ptr %i.bd, align 8, !tbaa !426
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.b, ptr %i.be, align 8, !tbaa !430
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %.sroa.0.0.copyload.i.i79 = load i16, ptr %i.at, align 8, !tbaa !55 ; 4 uses
  %.sroa.21.0.copyload.i.i81 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !57
  store i16 %.sroa.0.0.copyload.i.i79, ptr %8, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.21.0.copyload.i.i81, ptr %i.bf, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i79, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.p
  %i.bg = add i16 %.sroa.0.0.copyload.i.i79, -163
  %spec.select.i.i.i = icmp ult i16 %i.bg, 53
  br i1 %spec.select.i.i.i, label %bb.q, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.p
  %i.bh = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #33
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.20) #34
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.bi = zext i16 %.sroa.0.0.copyload.i.i79 to i64
  %i.bj = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !719
  %i.bm = zext i16 %i.bl to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.r:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.bn = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #33
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.r
  %i.bo = phi i32 [ %i.bm, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.bn, %bb.r ]
  %i.bp = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bo, i1 false) ; 2 uses
  %i.bq = sub nsw i32 31, %i.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %.not65215.not = icmp eq i32 %i.bp, 31
  br i1 %.not65215.not, label %.critedge74.preheader, label %.lr.ph220

.critedge74.preheader:                            ; preds = %.critedge70, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %.sroa.21.0.lcssa = phi i32 [ %.sroa.21.0.copyload, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ], [ %.sroa.21.1.ph, %.critedge70 ] ; 2 uses
  %.sroa.0144.0.lcssa = phi ptr [ %.sroa.0144.0.copyload, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ], [ %.sroa.0144.1.ph, %.critedge70 ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0144.0.lcssa, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !47
  %i.bt = icmp eq i32 %i.bs, %i.ap
  br i1 %i.bt, label %.lr.ph224, label %.thread181

.lr.ph224:                                        ; preds = %.critedge74.preheader
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.y

.lr.ph220:                                        ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit, %.critedge70
  %.055219 = phi i32 [ %i.cz, %.critedge70 ], [ 0, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ] ; 3 uses
  %.sroa.0138.0218 = phi ptr [ %.sroa.0144.1.ph, %.critedge70 ], [ null, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ] ; 3 uses
  %.sroa.7139.0217 = phi i32 [ %.sroa.21.1.ph, %.critedge70 ], [ 0, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ] ; 3 uses
  %.sroa.0144.0216 = phi ptr [ %.sroa.0144.1.ph, %.critedge70 ], [ %.sroa.0144.0.copyload, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ] ; 2 uses
  %i.bw = shl nuw i32 1, %.055219                 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0144.0216, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !47
  %.not60 = icmp eq i32 %i.by, %i.ap
  br i1 %.not60, label %bb.s, label %.critedge72

.critedge72:                                      ; preds = %.lr.ph220
  %i.bz = call fastcc { ptr, i32 } @"_ZZN4llvm12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERNS_3ISD8NodeTypeENS_8ArrayRefIS4_EEbENK3$_1clENS_7SDValueEj"(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr %.sroa.0138.0218, i32 %.sroa.7139.0217, i32 noundef %i.bw) ; 2 uses
  %.fca.0.extract23 = extractvalue { ptr, i32 } %i.bz, 0
  %.fca.1.extract24 = extractvalue { ptr, i32 } %i.bz, 1
  br label %.critedge76

bb.s:                                             ; preds = %.lr.ph220
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0144.0216, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !48 ; 4 uses
  %.sroa.0134.0.copyload = load ptr, ptr %i.cb, align 8, !tbaa !71 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %.sroa.0130.0.copyload = load ptr, ptr %i.cc, align 8, !tbaa !71 ; 3 uses
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0134.0.copyload, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !47
  %i.cf = icmp ne i32 %i.ce, 171
  %.not61186 = icmp eq ptr %.sroa.0134.0.copyload, null
  %.not61 = or i1 %.not61186, %i.cf
  br i1 %.not61, label %bb.t, label %select.unfold

bb.t:                                             ; preds = %bb.s
  %.sroa.6136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0130.0.copyload, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !47
  %i.ci = icmp eq i32 %i.ch, 171
  br i1 %i.ci, label %select.unfold, label %bb.u

select.unfold:                                    ; preds = %bb.t, %bb.s
  %.sroa.21.1.ph.in.a = phi ptr [ %.sroa.6132.0..sroa_idx, %bb.s ], [ %.sroa.6136.0..sroa_idx, %bb.t ]
  %.sroa.0144.1.ph = phi ptr [ %.sroa.0130.0.copyload, %bb.s ], [ %.sroa.0134.0.copyload, %bb.t ] ; 4 uses
  %.056.ph = phi ptr [ %.sroa.0134.0.copyload, %bb.s ], [ %.sroa.0130.0.copyload, %bb.t ] ; 2 uses
  %.sroa.21.1.ph = load i32, ptr %.sroa.21.1.ph.in.a, align 8, !tbaa !98 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.056.ph, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !48 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !49
  %i.cm = icmp ne ptr %i.cl, %.sroa.0144.1.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = icmp ne i32 %i.co, %.sroa.21.1.ph
  %.not3.i = select i1 %i.cm, i1 true, i1 %i.cp
  br i1 %.not3.i, label %bb.u, label %.preheader

.preheader:                                       ; preds = %select.unfold
  %.not64213.not = icmp eq i32 %.055219, 31
  br i1 %.not64213.not, label %.critedge70, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cq = getelementptr inbounds nuw i8, ptr %.056.ph, i64 88
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !811
  %i.cs = zext i32 %i.bw to i64
  %smax = call i32 @llvm.smax.i32(i32 %i.bw, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.w

bb.u:                                             ; preds = %bb.t, %select.unfold
  %i.ct = call fastcc { ptr, i32 } @"_ZZN4llvm12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERNS_3ISD8NodeTypeENS_8ArrayRefIS4_EEbENK3$_1clENS_7SDValueEj"(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr %.sroa.0138.0218, i32 %.sroa.7139.0217, i32 noundef %i.bw) ; 2 uses
  %.fca.0.extract13 = extractvalue { ptr, i32 } %i.ct, 0
  %.fca.1.extract14 = extractvalue { ptr, i32 } %i.ct, 1
  br label %.critedge76

bb.v:                                             ; preds = %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge70, label %bb.w, !llvm.loop !1788

bb.w:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !98
  %i.cw = add nuw nsw i64 %indvars.iv, %i.cs
  %i.cx = zext i32 %i.cv to i64
  %.not63 = icmp eq i64 %i.cw, %i.cx
  br i1 %.not63, label %bb.v, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = call fastcc { ptr, i32 } @"_ZZN4llvm12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERNS_3ISD8NodeTypeENS_8ArrayRefIS4_EEbENK3$_1clENS_7SDValueEj"(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr %.sroa.0138.0218, i32 %.sroa.7139.0217, i32 noundef %i.bw) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cy, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cy, 1
  br label %.critedge76

.critedge70:                                      ; preds = %bb.v, %.preheader
  %i.cz = add nuw i32 %.055219, 1                 ; 2 uses
  %exitcond259.not = icmp eq i32 %i.cz, %i.bq
  br i1 %exitcond259.not, label %.critedge74.preheader, label %.lr.ph220, !llvm.loop !1789

bb.y:                                             ; preds = %.lr.ph224, %.critedge74
  %i.da = phi i32 [ %i.ap, %.lr.ph224 ], [ %i.gl, %.critedge74 ] ; 7 uses
  %.sroa.0144.3223 = phi ptr [ %.sroa.0144.0.lcssa, %.lr.ph224 ], [ %i.dz, %.critedge74 ] ; 9 uses
  %.sroa.21.3222 = phi i32 [ %.sroa.21.0.lcssa, %.lr.ph224 ], [ %i.ed, %.critedge74 ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0144.3223, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !54
  %i.dd = zext i32 %.sroa.21.3222 to i64
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dd ; 2 uses
  %.sroa.0.0.copyload.i.i86 = load i16, ptr %i.de, align 8, !tbaa !55 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i87 = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.21.0.copyload.i.i88 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i87, align 8, !tbaa !57
  store i16 %.sroa.0.0.copyload.i.i86, ptr %9, align 8
  store ptr %.sroa.21.0.copyload.i.i88, ptr %i.bu, align 8
  %.not.i.i91 = icmp eq i16 %.sroa.0.0.copyload.i.i86, 0
  br i1 %.not.i.i91, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i95, label %.split.i92

.split.i92:                                       ; preds = %bb.y
  %i.df = add i16 %.sroa.0.0.copyload.i.i86, -163
  %spec.select.i.i.i93 = icmp ult i16 %i.df, 53
  br i1 %spec.select.i.i.i93, label %bb.z, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i94

_ZNK4llvm3EVT16isScalableVectorEv.exit.i95:       ; preds = %bb.y
  %i.dg = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #33
  br i1 %i.dg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i95, %.split.i92
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.20) #34
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i94:   ; preds = %.split.i92
  %i.dh = zext i16 %.sroa.0.0.copyload.i.i86 to i64
  %i.di = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 -2
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !719
  %i.dl = zext i16 %i.dk to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit96

bb.aa:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i95
  %i.dm = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #33
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit96

_ZNK4llvm3EVT20getVectorNumElementsEv.exit96:     ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i94, %bb.aa
  %i.dn = phi i32 [ %i.dl, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i94 ], [ %i.dm, %bb.aa ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0144.3223, i64 40
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !48 ; 2 uses
  %.sroa.0125.0.copyload = load ptr, ptr %i.dp, align 8, !tbaa !71 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %.sroa.0121.0.copyload = load ptr, ptr %i.dq, align 8, !tbaa !71 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0125.0.copyload, i64 24
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !47
  %.not66 = icmp eq i32 %i.ds, 167
  br i1 %.not66, label %bb.ab, label %.thread181

bb.ab:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit96
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0121.0.copyload, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !47
  %.not67 = icmp eq i32 %i.du, 167
  br i1 %.not67, label %bb.ac, label %.thread181

bb.ac:                                            ; preds = %bb.ab
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0125.0.copyload, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !48 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0121.0.copyload, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !48 ; 4 uses
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !49 ; 5 uses
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !49
  %i.eb = icmp ne ptr %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ed = load i32, ptr %i.ec, align 8            ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = icmp ne i32 %i.ed, %i.ef
  %.not3.i97 = select i1 %i.eb, i1 true, i1 %i.eg
  br i1 %.not3.i97, label %.thread181, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !54
  %i.ej = zext i32 %i.ed to i64
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.ej ; 2 uses
  %.sroa.0.0.copyload.i.i98 = load i16, ptr %i.ek, align 8, !tbaa !55 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i99 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.sroa.21.0.copyload.i.i100 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i99, align 8, !tbaa !57
  store i16 %.sroa.0.0.copyload.i.i98, ptr %10, align 8
  store ptr %.sroa.21.0.copyload.i.i100, ptr %i.bv, align 8
  %.not.i.i103 = icmp eq i16 %.sroa.0.0.copyload.i.i98, 0
  br i1 %.not.i.i103, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i107, label %.split.i104

.split.i104:                                      ; preds = %bb.ad
  %i.el = add i16 %.sroa.0.0.copyload.i.i98, -163
  %spec.select.i.i.i105 = icmp ult i16 %i.el, 53
  br i1 %spec.select.i.i.i105, label %bb.ae, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i106

_ZNK4llvm3EVT16isScalableVectorEv.exit.i107:      ; preds = %bb.ad
  %i.em = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #33
  br i1 %i.em, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i107, %.split.i104
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.20) #34
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i106:  ; preds = %.split.i104
  %i.en = zext i16 %.sroa.0.0.copyload.i.i98 to i64
  %i.eo = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 -2
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !719
  %i.er = zext i16 %i.eq to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit108

bb.af:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i107
  %i.es = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #33
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit108

_ZNK4llvm3EVT20getVectorNumElementsEv.exit108:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i106, %bb.af
  %i.et = phi i32 [ %i.er, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i106 ], [ %i.es, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.eu = shl i32 %i.dn, 1
  %.not68 = icmp eq i32 %i.et, %i.eu
  br i1 %.not68, label %bb.ag, label %.thread181

bb.ag:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit108
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !49
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 88
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !61 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !59 ; 2 uses
  %i.fc = icmp ult i32 %i.fb, 65                  ; 2 uses
  br i1 %i.fc, label %_ZNK4llvm5APInteqEm.exit, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i:          ; preds = %bb.ag
  %i.fd = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.ez) #33
  %i.fe = sub i32 %i.fb, %i.fd
  %i.ff = icmp ult i32 %i.fe, 65
  br i1 %i.ff, label %_ZNK4llvm5APInteqEm.exit, label %_ZNK4llvm5APInteqEm.exit.thread

_ZNK4llvm5APInteqEm.exit:                         ; preds = %bb.ag, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i
  %i.fg = load ptr, ptr %i.ez, align 8
  %spec.select.i.i109 = select i1 %i.fc, ptr %i.ez, ptr %i.fg
  %.0.i.i = load i64, ptr %spec.select.i.i109, align 8, !tbaa !45
  %i.fh = icmp eq i64 %.0.i.i, 0
  br i1 %i.fh, label %bb.ah, label %_ZNK4llvm5APInteqEm.exit.thread

end_hunk_2
begin_hunk_3_@_ZNK4llvm17BuildVectorSDNode20isArithmeticSequenceEv:bb.a
  %i.ct = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %5) #33
  %i.cu = icmp eq i32 %i.ct, %i.cp
  br i1 %i.cu, label %.critedge, label %bb.af

bb.ae:                                            ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  store i32 %i.cp, ptr %i.an, align 8, !tbaa !59
  store i64 %i.cr, ptr %13, align 8, !tbaa !45
  br label %_ZN4llvm5APIntC2ERKS0_.exit42

bb.af:                                            ; preds = %_ZNK4llvm5APInt6isZeroEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  store i32 %i.cp, ptr %i.an, align 8, !tbaa !59
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %5) #32
  br label %_ZN4llvm5APIntC2ERKS0_.exit42

_ZN4llvm5APIntC2ERKS0_.exit42:                    ; preds = %bb.ae, %bb.af
  %i.cv = zext nneg i32 %.02871 to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  %i.cw = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmLEm(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 noundef %i.cv) #32, !noalias !1831 ; 0 uses
  %i.cx = load i32, ptr %i.an, align 8, !tbaa !59, !noalias !1831
  store i32 %i.cx, ptr %i.ao, align 8, !tbaa !59, !alias.scope !1831
  %i.cy = load i64, ptr %13, align 8, !noalias !1831
  store i64 %i.cy, ptr %12, align 8, !alias.scope !1831
  store i32 0, ptr %i.an, align 8, !tbaa !59, !noalias !1831
  %i.cz = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %12) #32 ; 0 uses
  %i.da = load i32, ptr %i.ao, align 8, !tbaa !59
  %i.db = icmp ugt i32 %i.da, 64
  br i1 %i.db, label %bb.ag, label %_ZN4llvm5APIntD2Ev.exit43

bb.ag:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit42
  %i.dc = load ptr, ptr %12, align 8, !tbaa !45   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_ZN4llvm5APIntD2Ev.exit43, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.dc) #35
  br label %_ZN4llvm5APIntD2Ev.exit43

_ZN4llvm5APIntD2Ev.exit43:                        ; preds = %_ZN4llvm5APIntC2ERKS0_.exit42, %bb.ag, %bb.ah
  %i.de = load i32, ptr %i.an, align 8, !tbaa !59
  %i.df = icmp ugt i32 %i.de, 64
  br i1 %i.df, label %bb.ai, label %_ZN4llvm5APIntD2Ev.exit44

bb.ai:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit43
  %i.dg = load ptr, ptr %13, align 8, !tbaa !45   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZN4llvm5APIntD2Ev.exit44, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.dg) #35
  br label %_ZN4llvm5APIntD2Ev.exit44

_ZN4llvm5APIntD2Ev.exit44:                        ; preds = %_ZN4llvm5APIntD2Ev.exit43, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.di = load i32, ptr %i.ai, align 8, !tbaa !59
  %i.dj = icmp ugt i32 %i.di, 64
  br i1 %i.dj, label %bb.ak, label %_ZN4llvm5APIntD2Ev.exit45

bb.ak:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit44
  %i.dk = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %_ZN4llvm5APIntD2Ev.exit45, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZdaPv(ptr noundef nonnull %i.dk) #35
  br label %_ZN4llvm5APIntD2Ev.exit45

_ZN4llvm5APIntD2Ev.exit45:                        ; preds = %_ZN4llvm5APIntD2Ev.exit44, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %_ZN4llvm5APIntaSERKS0_.exit

bb.am:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.dm = load i32, ptr %i.aa, align 8, !tbaa !59 ; 2 uses
  store i32 %i.dm, ptr %i.ac, align 8, !tbaa !59
  %i.dn = icmp ult i32 %i.dm, 65
  br i1 %i.dn, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.do = load i64, ptr %5, align 8, !tbaa !45
  store i64 %i.do, ptr %16, align 8, !tbaa !45
  br label %_ZN4llvm5APIntC2ERKS0_.exit46

bb.ao:                                            ; preds = %bb.am
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(12) %5) #32
  br label %_ZN4llvm5APIntC2ERKS0_.exit46

_ZN4llvm5APIntC2ERKS0_.exit46:                    ; preds = %bb.an, %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  %i.dp = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmLEm(ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %indvars.iv) #32, !noalias !1834 ; 0 uses
  %i.dq = load i32, ptr %i.ac, align 8, !tbaa !59, !noalias !1834
  store i32 %i.dq, ptr %i.ad, align 8, !tbaa !59, !alias.scope !1834
  %i.dr = load i64, ptr %16, align 8, !noalias !1834
  store i64 %i.dr, ptr %15, align 8, !alias.scope !1834
  store i32 0, ptr %i.ac, align 8, !tbaa !59, !noalias !1834
  call void @llvm.experimental.noalias.scope.decl(metadata !1837)
  %i.ds = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef nonnull align 8 dereferenceable(12) %4) #32, !noalias !1837 ; 0 uses
  %i.dt = load i32, ptr %i.ad, align 8, !tbaa !59, !noalias !1837 ; 2 uses
  store i32 %i.dt, ptr %i.ae, align 8, !tbaa !59, !alias.scope !1837
  %i.du = load i64, ptr %15, align 8, !noalias !1837 ; 4 uses
  store i64 %i.du, ptr %14, align 8, !alias.scope !1837
  store i32 0, ptr %i.ad, align 8, !tbaa !59, !noalias !1837
  %i.dv = load i32, ptr %i.af, align 8, !tbaa !59
  %i.dw = icmp ult i32 %i.dv, 65
  %i.dx = inttoptr i64 %i.du to ptr
  br i1 %i.dw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit46
  %i.dy = load i64, ptr %6, align 8, !tbaa !45
  %i.dz = icmp eq i64 %i.dy, %i.du
  br label %_ZNK4llvm5APIntneERKS0_.exit

bb.aq:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit46
  %i.ea = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %14) #33
  br label %_ZNK4llvm5APIntneERKS0_.exit

_ZNK4llvm5APIntneERKS0_.exit:                     ; preds = %bb.ap, %bb.aq
  %.0.i.i = phi i1 [ %i.dz, %bb.ap ], [ %i.ea, %bb.aq ] ; 2 uses
  %i.eb = icmp ult i32 %i.dt, 65
  %i.ec = icmp eq i64 %i.du, 0
  %or.cond = select i1 %i.eb, i1 true, i1 %i.ec
  br i1 %or.cond, label %_ZN4llvm5APIntD2Ev.exit48, label %_ZN4llvm5APIntD2Ev.exit47

_ZN4llvm5APIntD2Ev.exit47:                        ; preds = %_ZNK4llvm5APIntneERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.dx) #35
  %.pre = load i32, ptr %i.ad, align 8, !tbaa !59
  %i.ed = icmp ugt i32 %.pre, 64
  br i1 %i.ed, label %bb.ar, label %_ZN4llvm5APIntD2Ev.exit48

bb.ar:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit47
  %i.ee = load ptr, ptr %15, align 8, !tbaa !45   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %_ZN4llvm5APIntD2Ev.exit48, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZdaPv(ptr noundef nonnull %i.ee) #35
  br label %_ZN4llvm5APIntD2Ev.exit48

_ZN4llvm5APIntD2Ev.exit48:                        ; preds = %_ZNK4llvm5APIntneERKS0_.exit, %_ZN4llvm5APIntD2Ev.exit47, %bb.ar, %bb.as
  %i.eg = load i32, ptr %i.ac, align 8, !tbaa !59
  %i.eh = icmp ugt i32 %i.eg, 64
  br i1 %i.eh, label %bb.at, label %_ZN4llvm5APIntD2Ev.exit49

bb.at:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit48
  %i.ei = load ptr, ptr %16, align 8, !tbaa !45   ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %_ZN4llvm5APIntD2Ev.exit49, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZdaPv(ptr noundef nonnull %i.ei) #35
  br label %_ZN4llvm5APIntD2Ev.exit49

_ZN4llvm5APIntD2Ev.exit49:                        ; preds = %_ZN4llvm5APIntD2Ev.exit48, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %spec.select = select i1 %.0.i.i, i8 %i.ap, i8 0
  br label %_ZN4llvm5APIntaSERKS0_.exit

.critedge:                                        ; preds = %_ZNK4llvm5APInt6isZeroEv.exit, %.split, %_ZNK4llvm5APInt11countr_zeroEv.exit, %_ZNK4llvm5APInt11countr_zeroEv.exit.thread
  %i.ek = load i32, ptr %i.ai, align 8, !tbaa !59
  %i.el = icmp ugt i32 %i.ek, 64
  br i1 %i.el, label %bb.av, label %_ZN4llvm5APIntD2Ev.exit50

bb.av:                                            ; preds = %.critedge
  %i.em = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %_ZN4llvm5APIntD2Ev.exit50, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZdaPv(ptr noundef nonnull %i.em) #35
  br label %_ZN4llvm5APIntD2Ev.exit50

_ZN4llvm5APIntD2Ev.exit50:                        ; preds = %.critedge, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %_ZN4llvm5APIntaSERKS0_.exit

_ZN4llvm5APIntaSERKS0_.exit:                      ; preds = %_ZN4llvm5APIntD2Ev.exit49, %bb.n, %bb.m, %_ZN4llvm5APIntD2Ev.exit45, %_ZN4llvm5APIntD2Ev.exit50
  %i.eo = phi i8 [ %i.ap, %bb.n ], [ 0, %_ZN4llvm5APIntD2Ev.exit50 ], [ %i.ap, %_ZN4llvm5APIntD2Ev.exit45 ], [ %spec.select, %_ZN4llvm5APIntD2Ev.exit49 ], [ %i.ap, %bb.m ] ; 2 uses
  %cond = phi i1 [ true, %bb.n ], [ false, %_ZN4llvm5APIntD2Ev.exit50 ], [ true, %_ZN4llvm5APIntD2Ev.exit45 ], [ %.0.i.i, %_ZN4llvm5APIntD2Ev.exit49 ], [ true, %bb.m ]
  %.230 = phi i32 [ %i.bc, %bb.n ], [ %.02871, %_ZN4llvm5APIntD2Ev.exit50 ], [ %.02871, %_ZN4llvm5APIntD2Ev.exit45 ], [ %.02871, %_ZN4llvm5APIntD2Ev.exit49 ], [ %i.bc, %bb.m ]
  %.2 = phi i32 [ %.02773, %bb.n ], [ %i.bh, %_ZN4llvm5APIntD2Ev.exit50 ], [ %i.bh, %_ZN4llvm5APIntD2Ev.exit45 ], [ %.02773, %_ZN4llvm5APIntD2Ev.exit49 ], [ %.02773, %bb.m ]
  %i.ep = load i32, ptr %i.af, align 8, !tbaa !59
  %i.eq = icmp ugt i32 %i.ep, 64
  br i1 %i.eq, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %_ZN4llvm5APIntaSERKS0_.exit
  %i.er = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZdaPv(ptr noundef nonnull %i.er) #35
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %_ZN4llvm5APIntaSERKS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br i1 %cond, label %.thread61, label %.thread67.loopexit

.thread61:                                        ; preds = %bb.h, %bb.az
  %i.et = phi i8 [ %i.eo, %bb.az ], [ %i.ap, %bb.h ] ; 2 uses
  %.366 = phi i32 [ %.2, %bb.az ], [ %.02773, %bb.h ] ; 2 uses
  %.33165 = phi i32 [ %.230, %bb.az ], [ %.02871, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.ba, label %bb.h, !llvm.loop !1840

bb.ba:                                            ; preds = %.thread61
  store i8 %i.et, ptr %i.ag, align 8
  %i.eu = icmp slt i32 %.366, 0
  br i1 %i.eu, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i8 0, ptr %i.ag, align 8, !tbaa !1826
  br label %.thread67

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  %i.ev = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ew = load i32, ptr %i.z, align 8, !tbaa !59, !noalias !1841 ; 2 uses
  store i32 %i.ew, ptr %i.ev, align 8, !tbaa !59, !alias.scope !1841
  %i.ex = icmp ult i32 %i.ew, 65
  br i1 %i.ex, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ey = load i64, ptr %4, align 8, !tbaa !45, !noalias !1841
  store i64 %i.ey, ptr %17, align 8, !tbaa !45, !alias.scope !1841
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i.i

bb.be:                                            ; preds = %bb.bc
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(12) %4) #32
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i.i

_ZN4llvm5APIntC2ERKS0_.exit.i.i:                  ; preds = %bb.be, %bb.bd
  %i.ez = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %i.fb = load i32, ptr %i.aa, align 8, !tbaa !59, !noalias !1841 ; 3 uses
  store i32 %i.fb, ptr %i.fa, align 8, !tbaa !59, !alias.scope !1841
  %i.fc = icmp ult i32 %i.fb, 65
  br i1 %i.fc, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i
  %i.fd = load i64, ptr %5, align 8, !tbaa !45, !noalias !1841 ; 2 uses
  store i64 %i.fd, ptr %i.ez, align 8, !tbaa !45, !alias.scope !1841
  br label %_ZNSt4pairIN4llvm5APIntES1_ED2Ev.exit

bb.bg:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.ez, ptr noundef nonnull align 8 dereferenceable(12) %5) #32
  %.pre82 = load i32, ptr %i.fa, align 8, !tbaa !59
  %.pre83 = load i64, ptr %i.ez, align 8
  br label %_ZNSt4pairIN4llvm5APIntES1_ED2Ev.exit

_ZNSt4pairIN4llvm5APIntES1_ED2Ev.exit:            ; preds = %bb.bf, %bb.bg
  %i.fe = phi i64 [ %.pre83, %bb.bg ], [ %i.fd, %bb.bf ]
  %i.ff = phi i32 [ %.pre82, %bb.bg ], [ %i.fb, %bb.bf ]
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fh = load i32, ptr %i.ev, align 8, !tbaa !59
  store i32 %i.fh, ptr %i.fg, align 8, !tbaa !59
  %i.fi = load i64, ptr %17, align 8
  store i64 %i.fi, ptr %0, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ff, ptr %i.fk, align 8, !tbaa !59
  store i64 %i.fe, ptr %i.fj, align 8
  store i8 1, ptr %i.ag, align 8, !tbaa !1826
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %.thread67

.thread67.loopexit:                               ; preds = %bb.az
  store i8 %i.eo, ptr %i.ag, align 8
  br label %.thread67

.thread67:                                        ; preds = %.thread67.loopexit, %.thread57, %_ZNSt4pairIN4llvm5APIntES1_ED2Ev.exit, %bb.bb
  %i.fl = load i32, ptr %i.aa, align 8, !tbaa !59
  %i.fm = icmp ugt i32 %i.fl, 64
  br i1 %i.fm, label %bb.bh, label %_ZN4llvm5APIntD2Ev.exit52

bb.bh:                                            ; preds = %.thread67
  %i.fn = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %_ZN4llvm5APIntD2Ev.exit52, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZdaPv(ptr noundef nonnull %i.fn) #35
  br label %_ZN4llvm5APIntD2Ev.exit52

_ZN4llvm5APIntD2Ev.exit52:                        ; preds = %.thread67, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.fp = load i32, ptr %i.z, align 8, !tbaa !59
  %i.fq = icmp ugt i32 %i.fp, 64
  br i1 %i.fq, label %bb.bj, label %_ZN4llvm5APIntD2Ev.exit53

bb.bj:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit52
  %i.fr = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %_ZN4llvm5APIntD2Ev.exit53, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZdaPv(ptr noundef nonnull %i.fr) #35
  br label %_ZN4llvm5APIntD2Ev.exit53

_ZN4llvm5APIntD2Ev.exit53:                        ; preds = %_ZN4llvm5APIntD2Ev.exit52, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit53, %bb.b
  ret void
}

declare void @_ZNK4llvm5APInt21multiplicativeInverseEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm19ShuffleVectorSDNode11isSplatMaskENS_8ArrayRefIiEE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 3 uses
  %.not25 = icmp eq i32 %i.a, 0
  br i1 %.not25, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = and i64 %1, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !98   ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !962

.critedge:                                        ; preds = %.lr.ph
  %i.f = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  %.not1827 = icmp eq i32 %i.f, %i.a
  br i1 %.not1827, label %.critedge.thread, label %.lr.ph29

.lr.ph29:                                         ; preds = %.critedge, %.lr.ph29
  %.128 = phi i32 [ %i.k, %.lr.ph29 ], [ %i.f, %.critedge ] ; 2 uses
  %i.g = zext i32 %.128 to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !98   ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  %.not19 = icmp eq i32 %i.i, %i.d
  %or.cond = or i1 %i.j, %.not19                  ; 2 uses
  %i.k = add i32 %.128, 1                         ; 2 uses
  %.not18 = icmp ne i32 %i.k, %i.a
  %or.cond44.not = and i1 %.not18, %or.cond
  br i1 %or.cond44.not, label %.lr.ph29, label %.critedge.thread, !llvm.loop !963

.critedge.thread:                                 ; preds = %bb.b, %.lr.ph29, %bb.a, %.critedge
  %.116 = phi i1 [ %or.cond, %.lr.ph29 ], [ true, %bb.a ], [ true, %.critedge ], [ true, %bb.b ]
  ret i1 %.116
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZN4llvm12SelectionDAG14getTokenFactorERKNS_5SDLocERNS_15SmallVectorImplINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %3 = alloca %"class.llvm::ArrayRef.122", align 8 ; 5 uses
  %4 = alloca %"class.llvm::ArrayRef.122", align 8 ; 5 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !137  ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = icmp ugt i32 %i.b, 65535
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 912
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm15SmallVectorImplINS_7SDValueEE12emplace_backIJRS1_EEES4_DpOT_.exit
  %i.g = phi i64 [ %i.c, %.lr.ph ], [ %i.v, %_ZN4llvm15SmallVectorImplINS_7SDValueEE12emplace_backIJRS1_EEES4_DpOT_.exit ]
  %i.h = add nsw i64 %i.g, -65535                 ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.j, ptr %4, align 8
  store i64 65535, ptr %.sroa.230.0..sroa_idx, align 8
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !673  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE5eraseEPKS1_S4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.l, align 8, !tbaa !98
  br label %_ZN4llvm15SmallVectorImplINS_7SDValueEE5eraseEPKS1_S4_.exit

_ZN4llvm15SmallVectorImplINS_7SDValueEE5eraseEPKS1_S4_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.0.copyload.i.i, %bb.c ]
  %i.m = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.122") align 8 %4, i32 %.sroa.0.0.i), !inline_history !717 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.m, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.m, 1
end_hunk_3
