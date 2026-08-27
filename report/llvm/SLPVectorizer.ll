Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SLPVectorizer?download=true
inline.NumInlined: 69836
inline.NumDeleted: 26527
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 292
loop-unroll.NumUnrolled: 328
begin_hunk_0_@_ZN4llvm17SLPVectorizerPass21vectorizeHorReductionEPNS_7PHINodeEPNS_11InstructionEPNS_10BasicBlockERNS_13slpvectorizer7BoUpSLPERNS_15SmallVectorImplINS_14WeakTrackingVHEEE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1704) %16, i8 0, i64 24, i1 false)
  store ptr %i.fs, ptr %i.fr, align 8, !tbaa !8
  store i32 0, ptr %i.ft, align 8, !tbaa !23
  store i32 8, ptr %i.fu, align 4, !tbaa !24
  call fastcc void @_ZN12_GLOBAL__N_119HorizontalReduction16initReductionOpsEPN4llvm11InstructionE(ptr noundef nonnull align 8 dereferenceable(1644) %29, ptr noundef nonnull %i.it)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  store ptr %i.fv, ptr %18, align 8, !tbaa !8
  store i32 0, ptr %i.fw, align 8, !tbaa !23
  store i32 2, ptr %i.fx, align 4, !tbaa !24
  store i32 0, ptr %i.fy, align 8, !tbaa !571
  store ptr null, ptr %i.fz, align 8, !tbaa !576
  store ptr %i.fy, ptr %i.ga, align 8, !tbaa !577
  store ptr %i.fy, ptr %i.gb, align 8, !tbaa !578
  store i64 0, ptr %i.gc, align 8, !tbaa !579
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  store ptr %18, ptr %19, align 8, !tbaa !3206
  store ptr %17, ptr %i.gd, align 8, !tbaa !3208
  store ptr %i.lb, ptr %i.ge, align 8, !tbaa !2024
  store ptr %i.kz, ptr %i.gf, align 8, !tbaa !3101
  store ptr %i.lc, ptr %i.gg, align 8, !tbaa !3100
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  store ptr %i.gh, ptr %20, align 8, !tbaa !8
  store i32 0, ptr %i.gi, align 8, !tbaa !23
  store i32 6, ptr %i.gj, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  store ptr %i.gk, ptr %21, align 8, !tbaa !22
  store i32 16, ptr %i.gl, align 8, !tbaa !1320
  store i32 0, ptr %i.gm, align 4, !tbaa !966
  store i8 1, ptr %i.gn, align 8, !tbaa !16
  %i.my = load i32, ptr %i.fi, align 8, !tbaa !23 ; 2 uses
  %.not.i110406.i.i = icmp eq i32 %i.my, 0
  br i1 %.not.i110406.i.i, label %._crit_edge414.i.i, label %.lr.ph408.i.i

.lr.ph408.i.i:                                    ; preds = %_ZN12_GLOBAL__N_119HorizontalReduction14isCmpSelMinMaxEPN4llvm11InstructionE.exit.i.i, %_ZN4llvm15SmallPtrSetImplIPNS_11InstructionEE6insertES2_.exit.i.thread50.i
  %i.mz = phi i32 [ %i.akh, %_ZN4llvm15SmallPtrSetImplIPNS_11InstructionEE6insertES2_.exit.i.thread50.i ], [ %i.my, %_ZN12_GLOBAL__N_119HorizontalReduction14isCmpSelMinMaxEPN4llvm11InstructionE.exit.i.i ] ; 2 uses
  %.091407.i.i = phi i1 [ %.293.i.i, %_ZN4llvm15SmallPtrSetImplIPNS_11InstructionEE6insertES2_.exit.i.thread50.i ], [ false, %_ZN12_GLOBAL__N_119HorizontalReduction14isCmpSelMinMaxEPN4llvm11InstructionE.exit.i.i ] ; 5 uses
  %i.na = load ptr, ptr %13, align 8, !tbaa !8
  %i.nb = zext i32 %i.mz to i64
  %i.nc = getelementptr inbounds nuw [16 x i8], ptr %i.na, i64 %i.nb ; 2 uses
  %i.nd = getelementptr inbounds i8, ptr %i.nc, i64 -16
  %.sroa.0.0.copyload.i111.i.i = load ptr, ptr %i.nd, align 8 ; 21 uses
  %.sroa.2.0..sroa_idx.i112.i.i = getelementptr inbounds i8, ptr %i.nc, i64 -8
  %.sroa.2.0.copyload.i113.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i112.i.i, align 8 ; 2 uses
  %i.ne = add i32 %i.mz, -1
  store i32 %i.ne, ptr %i.fi, align 8, !tbaa !23
  %i.nf = load i8, ptr %i.gn, align 8, !tbaa !16, !range !20, !noalias !8415, !noundef !21
  %i.ng = trunc nuw i8 %i.nf to i1
  br i1 %i.ng, label %bb.ag, label %_ZN4llvm15SmallPtrSetImplIPNS_11InstructionEE6insertES2_.exit.i.i

bb.ag:                                            ; preds = %.lr.ph408.i.i
  %i.nh = load ptr, ptr %21, align 8, !tbaa !22, !noalias !8415 ; 2 uses
  %i.ni = load i32, ptr %i.gm, align 4, !tbaa !966, !noalias !8415 ; 4 uses
  %i.nj = zext i32 %i.ni to i64
  %.idx.i.i.i43.i = shl nuw nsw i64 %i.nj, 3
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 %.idx.i.i.i43.i ; 2 uses
  %.not22.i.i.i.i = icmp eq i32 %i.ni, 0
  br i1 %.not22.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i44.i

.lr.ph.i.i.i44.i:                                 ; preds = %bb.ag, %.critedge.i.i.i.i
  %.023.i.i.i.i = phi ptr [ %i.nm, %.critedge.i.i.i.i ], [ %i.nh, %bb.ag ] ; 2 uses
  %i.nl = load ptr, ptr %.023.i.i.i.i, align 8, !tbaa !855, !noalias !8415
  %.not15.i.i.i45.i = icmp eq ptr %i.nl, %.sroa.0.0.copyload.i111.i.i
  br i1 %.not15.i.i.i45.i, label %_ZN4llvm15SmallPtrSetImplIPNS_11InstructionEE6insertES2_.exit.i.thread50.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i44.i
  %i.nm = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i118.i.i = icmp eq ptr %i.nm, %i.nk
  br i1 %.not.i.i118.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i44.i

._crit_edge.i.i.i.i:                              ; preds = %.critedge.i.i.i.i, %bb.ag
  %i.nn = load i32, ptr %i.gl, align 8, !tbaa !1320, !noalias !8415
  %i.no = icmp ult i32 %i.ni, %i.nn
  br i1 %i.no, label %_ZN4llvm15SmallPtrSetImplIPNS_11InstructionEE6insertES2_.exit.i.thread.i, label %_ZN4llvm15SmallPtrSetImplIPNS_11InstructionEE6insertES2_.exit.i.i

_ZN4llvm15SmallPtrSetImplIPNS_11InstructionEE6insertES2_.exit.i.thread.i: ; preds = %._crit_edge.i.i.i.i
  %i.np = add nuw i32 %i.ni, 1
  store i32 %i.np, ptr %i.gm, align 4, !tbaa !966, !noalias !8415
  store ptr %.sroa.0.0.copyload.i111.i.i, ptr %i.nk, align 8, !tbaa !855, !noalias !8415
  br label %bb.ah

_ZN4llvm15SmallPtrSetImplIPNS_11InstructionEE6insertES2_.exit.i.i: ; preds = %._crit_edge.i.i.i.i, %.lr.ph408.i.i
  %i.nq = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %21, ptr noundef %.sroa.0.0.copyload.i111.i.i) #31, !noalias !8415
  %i.nr = extractvalue { ptr, i8 } %i.nq, 1
  %i.ns = trunc nuw i8 %i.nr to i1
  br i1 %i.ns, label %bb.ah, label %_ZN4llvm15SmallPtrSetImplIPNS_11InstructionEE6insertES2_.exit.i.thread50.i, !llvm.loop !8418

bb.ah:                                            ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_11InstructionEE6insertES2_.exit.i.i, %_ZN4llvm15SmallPtrSetImplIPNS_11InstructionEE6insertES2_.exit.i.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  store ptr %i.go, ptr %22, align 8, !tbaa !8
  store i32 0, ptr %i.gp, align 8, !tbaa !23
  store i32 6, ptr %i.gq, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  store ptr %i.gr, ptr %23, align 8, !tbaa !8
  store i32 0, ptr %i.gs, align 8, !tbaa !23
  store i32 6, ptr %i.gt, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %.sroa.2.0.copyload.i113.i.i, ptr %i.e, align 4, !tbaa !37
  %i.nt = load i8, ptr %.sroa.0.0.copyload.i111.i.i, align 8, !tbaa !56
  %i.nu = icmp eq i8 %i.nt, 89
  br i1 %i.nu, label %bb.ai, label %.lr.ph.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i111.i.i, i64 4 ; 2 uses
  %i.nw = load i32, ptr %i.nv, align 4            ; 4 uses
  %i.nx = and i32 %i.nw, 1073741824
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.nx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i.i.i.i, label %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i.i.i.i.i

_ZNK4llvm4User10getOperandEj.exit.i.i.i.i.i.i.i:  ; preds = %bb.ai
  %i.ny = and i32 %i.nw, 268435455
  %i.nz = zext nneg i32 %i.ny to i64
  %i.oa = sub nsw i64 0, %i.nz
  %i.ob = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.copyload.i111.i.i, i64 %i.oa
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !215
  %i.od = load i8, ptr %i.oc, align 8, !tbaa !56
  %i.oe = add i8 %i.od, -85
  %i.of = icmp ult i8 %i.oe, 2
  br i1 %i.of, label %_ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.i.i.i, label %_ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.thread.i.i.i

_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.og = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i111.i.i, i64 -8
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !208
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !215
  %i.oj = load i8, ptr %i.oi, align 8, !tbaa !56
  %i.ok = add i8 %i.oj, -85
  %i.ol = icmp ult i8 %i.ok, 2
  br i1 %i.ol, label %_ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.i.i.i, label %_ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.thread.i.i.i

_ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.i.i.i: ; preds = %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i.i.i.i.i, %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i.i.i.i
  %i.om = call fastcc noundef i32 @_ZN12_GLOBAL__N_119HorizontalReduction10getRdxKindEPN4llvm5ValueE(ptr noundef nonnull %.sroa.0.0.copyload.i111.i.i) ; 2 uses
  %i.on = and i32 %i.om, 28
  %switch.selectcmp.i.i.i.i.i.i.i = icmp eq i32 %i.on, 8
  %i.oo = and i32 %i.om, 24
  %spec.select.i.i.i.i.i.i.i = icmp eq i32 %i.oo, 16
  %i.op = or i1 %switch.selectcmp.i.i.i.i.i.i.i, %spec.select.i.i.i.i.i.i.i
  %i.oq = zext i1 %i.op to i32                    ; 2 uses
  %.pr.pre.i.i.i = load i8, ptr %.sroa.0.0.copyload.i111.i.i, align 8, !tbaa !56
  %i.or = icmp eq i8 %.pr.pre.i.i.i, 89
  br i1 %i.or, label %_ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.i._ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.thread.i_crit_edge.i.i, label %.lr.ph.i.i.i

_ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.i._ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.thread.i_crit_edge.i.i: ; preds = %_ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.i.i.i
  %.pre480.i.i = load i32, ptr %i.nv, align 4
  br label %_ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.thread.i.i.i

_ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.thread.i.i.i: ; preds = %_ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.i._ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.thread.i_crit_edge.i.i, %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i.i.i.i.i, %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i.i.i.i
  %i.os = phi i32 [ %.pre480.i.i, %_ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.i._ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.thread.i_crit_edge.i.i ], [ %i.nw, %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i.i.i.i.i ], [ %i.nw, %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.ph141.i.i.i = phi i32 [ %i.oq, %_ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.i._ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.thread.i_crit_edge.i.i ], [ 0, %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i.i.i.i.i ], [ 0, %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.ot = and i32 %i.os, 1073741824
  %.not.i.i.i.i.i.i25.i.i.i = icmp eq i32 %i.ot, 0
  br i1 %.not.i.i.i.i.i.i25.i.i.i, label %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i29.i.i.i, label %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i.i26.i.i.i

_ZNK4llvm4User10getOperandEj.exit.i.i.i.i29.i.i.i: ; preds = %_ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.thread.i.i.i
  %i.ou = and i32 %i.os, 268435455
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = sub nsw i64 0, %i.ov
  %i.ox = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.copyload.i111.i.i, i64 %i.ow
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !215
  %i.oz = load i8, ptr %i.oy, align 8, !tbaa !56
  %i.pa = add i8 %i.oz, -85
  %i.pb = icmp ult i8 %i.pa, 2
  br i1 %i.pb, label %_ZN12_GLOBAL__N_119HorizontalReduction14isCmpSelMinMaxEPN4llvm11InstructionE.exit.i.i.i.i, label %.lr.ph.i.i.i

_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i.i26.i.i.i: ; preds = %_ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.thread.i.i.i
  %i.pc = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i111.i.i, i64 -8
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !208
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !215
  %i.pf = load i8, ptr %i.pe, align 8, !tbaa !56
  %i.pg = add i8 %i.pf, -85
  %i.ph = icmp ult i8 %i.pg, 2
  br i1 %i.ph, label %_ZN12_GLOBAL__N_119HorizontalReduction14isCmpSelMinMaxEPN4llvm11InstructionE.exit.i.i.i.i, label %.lr.ph.i.i.i

_ZN12_GLOBAL__N_119HorizontalReduction14isCmpSelMinMaxEPN4llvm11InstructionE.exit.i.i.i.i: ; preds = %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i.i26.i.i.i, %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i29.i.i.i
  %i.pi = call fastcc noundef i32 @_ZN12_GLOBAL__N_119HorizontalReduction10getRdxKindEPN4llvm5ValueE(ptr noundef nonnull %.sroa.0.0.copyload.i111.i.i) ; 2 uses
  %i.pj = and i32 %i.pi, 28
  %switch.selectcmp.i.i.i.i27.i.i.i = icmp eq i32 %i.pj, 8
  %i.pk = and i32 %i.pi, 24
  %spec.select.i.i.i.i28.i.i.i = icmp eq i32 %i.pk, 16
  %i.pl = or i1 %switch.selectcmp.i.i.i.i27.i.i.i, %spec.select.i.i.i.i28.i.i.i
  %i.pm = select i1 %i.pl, i64 2, i64 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN12_GLOBAL__N_119HorizontalReduction14isCmpSelMinMaxEPN4llvm11InstructionE.exit.i.i.i.i, %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i.i26.i.i.i, %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i29.i.i.i, %_ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.i.i.i, %bb.ah
  %i.pn = phi i32 [ %i.oq, %_ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.i.i.i ], [ %.ph141.i.i.i, %_ZN12_GLOBAL__N_119HorizontalReduction14isCmpSelMinMaxEPN4llvm11InstructionE.exit.i.i.i.i ], [ %.ph141.i.i.i, %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i29.i.i.i ], [ %.ph141.i.i.i, %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i.i26.i.i.i ], [ 0, %bb.ah ]
  %i.po = phi i64 [ 1, %_ZN12_GLOBAL__N_119HorizontalReduction20getFirstOperandIndexEPN4llvm11InstructionE.exit.i.i.i ], [ %i.pm, %_ZN12_GLOBAL__N_119HorizontalReduction14isCmpSelMinMaxEPN4llvm11InstructionE.exit.i.i.i.i ], [ 1, %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i29.i.i.i ], [ 1, %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.i.i26.i.i.i ], [ 1, %bb.ah ]
  %i.pp = zext nneg i32 %i.pn to i64
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i111.i.i, i64 4 ; 2 uses
  %i.pr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i111.i.i, i64 -8 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE12insert_rangeINS_14iterator_rangeIPNS_3UseEEEEEvOT_.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.068.0114.i.i.i = phi i64 [ %i.po, %.lr.ph.i.i.i ], [ %i.acp, %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE12insert_rangeINS_14iterator_rangeIPNS_3UseEEEEEvOT_.exit.i.i.i ] ; 4 uses
  %i.ps = call fastcc noundef i32 @_ZN12_GLOBAL__N_119HorizontalReduction10getRdxKindEPN4llvm5ValueE(ptr noundef nonnull %.sroa.0.0.copyload.i111.i.i)
  %i.pt = icmp eq i32 %i.ps, 5
  br i1 %i.pt, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.pu = load i8, ptr %.sroa.0.0.copyload.i111.i.i, align 8, !tbaa !56
  %i.pv = icmp eq i8 %i.pu, 89
  %32 = and i64 %.sroa.068.0114.i.i.i, 4294967295
  %i.pw = icmp eq i64 %32, 1
  %or.cond.i.i.i.i = and i1 %i.pw, %i.pv
  br i1 %or.cond.i.i.i.i, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.px = load i32, ptr %i.pq, align 4            ; 2 uses
  %i.py = and i32 %i.px, 1073741824
  %.not.i.i.i.i.i.i = icmp eq i32 %i.py, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.pz = load ptr, ptr %i.pr, align 8, !tbaa !208
  br label %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.qa = and i32 %i.px, 268435455
  %i.qb = zext nneg i32 %i.qa to i64
  %i.qc = sub nsw i64 0, %i.qb
  %i.qd = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.copyload.i111.i.i, i64 %i.qc
  br label %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i

_ZNK4llvm4User10getOperandEj.exit.i.i.i.i:        ; preds = %bb.an, %bb.am
  %i.qe = phi ptr [ %i.pz, %bb.am ], [ %i.qd, %bb.an ]
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 64
  br label %_ZN12_GLOBAL__N_119HorizontalReduction13getRdxOperandEPN4llvm11InstructionEj.exit.i.i.i

bb.ao:                                            ; preds = %bb.ak, %bb.aj
  %i.qg = load i32, ptr %i.pq, align 4            ; 2 uses
  %i.qh = and i32 %i.qg, 1073741824
  %.not.i.i3.i.i.i.i = icmp eq i32 %i.qh, 0
  br i1 %.not.i.i3.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.qi = load ptr, ptr %i.pr, align 8, !tbaa !208
  br label %_ZNK4llvm4User10getOperandEj.exit4.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.qj = and i32 %i.qg, 268435455
  %i.qk = zext nneg i32 %i.qj to i64
  %i.ql = sub nsw i64 0, %i.qk
  %i.qm = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.copyload.i111.i.i, i64 %i.ql
  br label %_ZNK4llvm4User10getOperandEj.exit4.i.i.i.i

_ZNK4llvm4User10getOperandEj.exit4.i.i.i.i:       ; preds = %bb.aq, %bb.ap
  %i.qn = phi ptr [ %i.qi, %bb.ap ], [ %i.qm, %bb.aq ]
  %33 = and i64 %.sroa.068.0114.i.i.i, 4294967295
  %i.qo = getelementptr inbounds nuw [32 x i8], ptr %i.qn, i64 %33
  br label %_ZN12_GLOBAL__N_119HorizontalReduction13getRdxOperandEPN4llvm11InstructionEj.exit.i.i.i

_ZN12_GLOBAL__N_119HorizontalReduction13getRdxOperandEPN4llvm11InstructionEj.exit.i.i.i: ; preds = %_ZNK4llvm4User10getOperandEj.exit4.i.i.i.i, %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i
  %.0.in.i.i.i.i = phi ptr [ %i.qf, %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i ], [ %i.qo, %_ZNK4llvm4User10getOperandEj.exit4.i.i.i.i ]
  %.0.i.i.i.i = load ptr, ptr %.0.in.i.i.i.i, align 8, !tbaa !215 ; 10 uses
  %i.qp = load i32, ptr %i.er, align 8, !noalias !8419 ; 2 uses
  %i.qq = and i32 %i.qp, 1
  %.not.i.i.i.i250.i.i = icmp eq i32 %i.qq, 0     ; 3 uses
  %i.qr = load ptr, ptr %i.gu, align 8, !noalias !8419
  %i.qs = load ptr, ptr %i.gv, align 8, !noalias !8419
  %i.qt = load i32, ptr %i.gw, align 8, !noalias !8419
  %.sink2.i.i.i.i.i.i = select i1 %.not.i.i.i.i250.i.i, ptr %i.qr, ptr %i.gu ; 3 uses
  %.sink1.i.i.i.i.i.i = select i1 %.not.i.i.i.i250.i.i, ptr %i.qs, ptr %i.es ; 3 uses
  %.sink.i.i.i.i.i.i = select i1 %.not.i.i.i.i250.i.i, i32 %i.qt, i32 16 ; 4 uses
  %i.qu = icmp eq i32 %.sink.i.i.i.i.i.i, 0
  br i1 %i.qu, label %.loopexit.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZN12_GLOBAL__N_119HorizontalReduction13getRdxOperandEPN4llvm11InstructionEj.exit.i.i.i
  %i.qv = add i32 %.sink.i.i.i.i.i.i, -1          ; 2 uses
  %i.qw = ptrtoint ptr %.0.i.i.i.i to i64
  %i.qx = mul i64 %i.qw, -4658895280553007687     ; 2 uses
  %i.qy = lshr i64 %i.qx, 31
  %i.qz = xor i64 %i.qy, %i.qx
  %i.ra = trunc i64 %i.qz to i32
  %i.rb = and i32 %i.qv, %i.ra                    ; 3 uses
  %i.rc = zext i32 %i.rb to i64                   ; 2 uses
  %i.rd = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i.i.i.i.i, i64 %i.rc ; 2 uses
  %i.re = lshr i64 %i.rc, 5
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i, i64 %i.re
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !37
  %i.rh = and i32 %i.rb, 31
  %i.ri = lshr i32 %i.rg, %i.rh
  %i.rj = trunc i32 %i.ri to i1
  br i1 %i.rj, label %.lr.ph.i.i259.i.i, label %.loopexit.i.i.i, !prof !221

.lr.ph.i.i259.i.i:                                ; preds = %bb.ar, %bb.as
  %i.rk = phi ptr [ %i.rq, %bb.as ], [ %i.rd, %bb.ar ] ; 5 uses
  %.024.i.i.i.i = phi i32 [ %i.ro, %bb.as ], [ %i.rb, %bb.ar ]
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !266
  %i.rm = icmp eq ptr %.0.i.i.i.i, %i.rl
  br i1 %i.rm, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_11InstructionELj6EEELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_.exit.i.i, label %bb.as, !prof !222

bb.as:                                            ; preds = %.lr.ph.i.i259.i.i
  %i.rn = add nuw i32 %.024.i.i.i.i, 1
  %i.ro = and i32 %i.rn, %i.qv                    ; 3 uses
  %i.rp = zext i32 %i.ro to i64                   ; 2 uses
  %i.rq = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i.i.i.i.i, i64 %i.rp ; 2 uses
  %i.rr = lshr i64 %i.rp, 5
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i, i64 %i.rr
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !37
  %i.ru = and i32 %i.ro, 31
  %i.rv = lshr i32 %i.rt, %i.ru
  %i.rw = trunc i32 %i.rv to i1
  br i1 %i.rw, label %.lr.ph.i.i259.i.i, label %.loopexit.i.i.i, !prof !223, !llvm.loop !8424

.loopexit.i.i.i:                                  ; preds = %bb.as, %bb.ar, %_ZN12_GLOBAL__N_119HorizontalReduction13getRdxOperandEPN4llvm11InstructionEj.exit.i.i.i
  %.lcssa28.sink.i.ph.i.i.i = phi ptr [ %i.rd, %bb.ar ], [ null, %_ZN12_GLOBAL__N_119HorizontalReduction13getRdxOperandEPN4llvm11InstructionEj.exit.i.i.i ], [ %i.rq, %bb.as ]
  %i.rx = shl i32 %i.qp, 1
  %i.ry = and i32 %i.rx, -4
  %i.rz = add i32 %i.ry, 4
  %i.sa = mul i32 %.sink.i.i.i.i.i.i, 3
  %.not.i.i251.i.i = icmp ult i32 %i.rz, %i.sa
  br i1 %.not.i.i251.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_11InstructionELj6EEELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_.exit.thread.i.i, label %bb.at, !prof !222

bb.at:                                            ; preds = %.loopexit.i.i.i
  %i.sb = shl i32 %.sink.i.i.i.i.i.i, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_11InstructionELj6EEELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.er, i32 noundef %i.sb)
  %i.sc = load i32, ptr %i.er, align 8, !noalias !8425
  %i.sd = and i32 %i.sc, 1
  %.not.i.i.i269.i.i = icmp eq i32 %i.sd, 0       ; 3 uses
  %i.se = load ptr, ptr %i.gu, align 8, !noalias !8425
  %i.sf = load ptr, ptr %i.gv, align 8, !noalias !8425
  %i.sg = load i32, ptr %i.gw, align 8, !noalias !8425
  %.sink2.i.i.i.i.i = select i1 %.not.i.i.i269.i.i, ptr %i.se, ptr %i.gu ; 5 uses
  %.sink1.i.i.i.i.i = select i1 %.not.i.i.i269.i.i, ptr %i.sf, ptr %i.es ; 5 uses
  %.sink.i.i.i.i.i = select i1 %.not.i.i.i269.i.i, i32 %i.sg, i32 16 ; 2 uses
  %i.sh = icmp ne i32 %.sink.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.sh)
  %i.si = add i32 %.sink.i.i.i.i.i, -1            ; 2 uses
  %i.sj = ptrtoint ptr %.0.i.i.i.i to i64
  %i.sk = mul i64 %i.sj, -4658895280553007687     ; 2 uses
  %i.sl = lshr i64 %i.sk, 31
  %i.sm = xor i64 %i.sl, %i.sk
  %i.sn = trunc i64 %i.sm to i32
  %i.so = and i32 %i.si, %i.sn                    ; 3 uses
  %i.sp = zext i32 %i.so to i64                   ; 2 uses
  %i.sq = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i.i.i.i, i64 %i.sp ; 2 uses
  %i.sr = lshr i64 %i.sp, 5
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i, i64 %i.sr
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !37
  %i.su = and i32 %i.so, 31
  %i.sv = lshr i32 %i.st, %i.su
  %i.sw = trunc i32 %i.sv to i1
  br i1 %i.sw, label %.lr.ph.i270.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_11InstructionELj6EEELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_.exit.thread.i.i, !prof !221

.lr.ph.i270.i.i:                                  ; preds = %bb.at, %bb.au
  %i.sx = phi ptr [ %i.td, %bb.au ], [ %i.sq, %bb.at ] ; 2 uses
  %.024.i.i.i = phi i32 [ %i.tb, %bb.au ], [ %i.so, %bb.at ]
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !266
  %i.sz = icmp eq ptr %.0.i.i.i.i, %i.sy
  br i1 %i.sz, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_11InstructionELj6EEELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_.exit.thread.i.i, label %bb.au, !prof !222

bb.au:                                            ; preds = %.lr.ph.i270.i.i
  %i.ta = add nuw i32 %.024.i.i.i, 1
  %i.tb = and i32 %i.ta, %i.si                    ; 3 uses
  %i.tc = zext i32 %i.tb to i64                   ; 2 uses
  %i.td = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i.i.i.i, i64 %i.tc ; 2 uses
  %i.te = lshr i64 %i.tc, 5
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i, i64 %i.te
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !37
  %i.th = and i32 %i.tb, 31
  %i.ti = lshr i32 %i.tg, %i.th
  %i.tj = trunc i32 %i.ti to i1
  br i1 %i.tj, label %.lr.ph.i270.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_11InstructionELj6EEELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_.exit.thread.i.i, !prof !223, !llvm.loop !8424

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_11InstructionELj6EEELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_.exit.thread.i.i: ; preds = %bb.au, %.lr.ph.i270.i.i, %bb.at, %.loopexit.i.i.i
  %.pre-phi508.i.i = phi ptr [ %.sink2.i.i.i.i.i.i, %.loopexit.i.i.i ], [ %.sink2.i.i.i.i.i, %bb.at ], [ %.sink2.i.i.i.i.i, %.lr.ph.i270.i.i ], [ %.sink2.i.i.i.i.i, %bb.au ]
  %.pre-phi.i.i = phi ptr [ %.sink1.i.i.i.i.i.i, %.loopexit.i.i.i ], [ %.sink1.i.i.i.i.i, %bb.at ], [ %.sink1.i.i.i.i.i, %.lr.ph.i270.i.i ], [ %.sink1.i.i.i.i.i, %bb.au ]
  %i.tk = phi ptr [ %.lcssa28.sink.i.ph.i.i.i, %.loopexit.i.i.i ], [ %i.sq, %bb.at ], [ %i.td, %bb.au ], [ %i.sx, %.lr.ph.i270.i.i ] ; 7 uses
  %i.tl = ptrtoint ptr %i.tk to i64
  %i.tm = ptrtoint ptr %.pre-phi508.i.i to i64
  %i.tn = sub i64 %i.tl, %i.tm
  %i.to = sdiv exact i64 %i.tn, 72                ; 2 uses
  %i.tp = trunc i64 %i.to to i32
  %i.tq = and i32 %i.tp, 31
  %i.tr = shl nuw i32 1, %i.tq
  %i.ts = lshr i64 %i.to, 5
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi.i.i, i64 %i.ts ; 2 uses
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !37
  %i.tv = or i32 %i.tr, %i.tu
  store i32 %i.tv, ptr %i.tt, align 4, !tbaa !37
  %i.tw = load i32, ptr %i.er, align 8            ; 2 uses
  %i.tx = and i32 %i.tw, -2
  %i.ty = add i32 %i.tx, 2
  %i.tz = and i32 %i.tw, 1
  %i.ua = or disjoint i32 %i.ty, %i.tz
  store i32 %i.ua, ptr %i.er, align 8
  store ptr %.0.i.i.i.i, ptr %i.tk, align 8, !tbaa !266
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tk, i64 24 ; 2 uses
  store ptr %i.uc, ptr %i.ub, align 8, !tbaa !8
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  store i32 0, ptr %i.ud, align 8, !tbaa !23
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tk, i64 20
  store i32 6, ptr %i.ue, align 4, !tbaa !24
  br label %bb.aw

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_11InstructionELj6EEELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_.exit.i.i: ; preds = %.lr.ph.i.i259.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  %.pre481.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !23 ; 2 uses
  %.phi.trans.insert482.i.i = getelementptr inbounds nuw i8, ptr %i.rk, i64 20
  %.pre483.i.i = load i32, ptr %.phi.trans.insert482.i.i, align 4, !tbaa !24
  %i.uf = icmp ult i32 %.pre481.i.i, %.pre483.i.i
  %i.ug = getelementptr inbounds nuw i8, ptr %i.rk, i64 8 ; 2 uses
  br i1 %i.uf, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_11InstructionELj6EEELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_.exit.i._crit_edge.i, label %bb.av, !prof !3225

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_11InstructionELj6EEELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_.exit.i._crit_edge.i: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_11InstructionELj6EEELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_.exit.i.i
  %i.uh = zext i32 %.pre481.i.i to i64
  %.pre.i = load ptr, ptr %i.ug, align 8, !tbaa !8
  br label %bb.aw

bb.av:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_11InstructionELj6EEELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_.exit.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ug, ptr noundef nonnull %.sroa.0.0.copyload.i111.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit.i.i.i

bb.aw:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_11InstructionELj6EEELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_.exit.i._crit_edge.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_11InstructionELj6EEELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_.exit.thread.i.i
  %i.ui = phi ptr [ %i.uc, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_11InstructionELj6EEELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_.exit.thread.i.i ], [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_11InstructionELj6EEELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_.exit.i._crit_edge.i ]
  %.sroa.0.0.i622.i.i = phi ptr [ %i.tk, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_11InstructionELj6EEELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_.exit.thread.i.i ], [ %i.rk, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_11InstructionELj6EEELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_.exit.i._crit_edge.i ]
  %i.uj = phi i64 [ 0, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_11InstructionELj6EEELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_.exit.thread.i.i ], [ %i.uh, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_11InstructionELj6EEELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_.exit.i._crit_edge.i ]
  %i.uk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i622.i.i, i64 16 ; 2 uses
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %i.uj
  store ptr %.sroa.0.0.copyload.i111.i.i, ptr %i.ul, align 1
  %i.um = load i32, ptr %i.uk, align 8, !tbaa !23
  %i.un = add i32 %i.um, 1
  store i32 %i.un, ptr %i.uk, align 8, !tbaa !23
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit.i.i.i: ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.uo = load i8, ptr %.0.i.i.i.i, align 8, !tbaa !56
  %i.up = icmp ugt i8 %i.uo, 29
  %spec.select.i.i.i120.i.i = select i1 %i.up, ptr %.0.i.i.i.i, ptr null ; 2 uses
  store ptr %spec.select.i.i.i120.i.i, ptr %i.f, align 8, !tbaa !51
  %.not22.i.i.i = icmp eq ptr %spec.select.i.i.i120.i.i, null
  br i1 %.not22.i.i.i, label %.critedge.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit.i.i.i
  %i.uq = load i32, ptr %i.e, align 4, !tbaa !37
  %i.ur = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL17RecursionMaxDepth, i64 120), align 8, !tbaa !423
  %i.us = icmp ugt i32 %i.uq, %i.ur
  br i1 %i.us, label %.critedge.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ut = call fastcc noundef i32 @_ZN12_GLOBAL__N_119HorizontalReduction10getRdxKindEPN4llvm5ValueE(ptr noundef nonnull %.0.i.i.i.i)
  %i.uu = load i32, ptr %i.ff, align 8, !tbaa !8414
  %.not23.i.i.i = icmp eq i32 %i.ut, %i.uu
  br i1 %.not23.i.i.i, label %bb.az, label %.critedge.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.uv = load ptr, ptr %i.f, align 8, !tbaa !51  ; 5 uses
end_hunk_0
