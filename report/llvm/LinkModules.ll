Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LinkModules?download=true
inline.NumInlined: 1878
inline.NumDeleted: 1039
begin_hunk_0_@_ZN12_GLOBAL__N_112ModuleLinker12linkIfNeededERN4llvm11GlobalValueERNS1_15SmallVectorImplIPS2_EE:bb.a
  br i1 %or.cond117, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.be = trunc nuw nsw i32 %i.bd to i8
  %i.bf = add nsw i8 %i.be, -1
  %i.bg = trunc nuw nsw i32 %i.bb to i8
  %i.bh = add nsw i8 %i.bg, -1
  %.sroa.0.0.i.i75 = select i1 %.not.i.i.i72, i8 %i.bf, i8 0 ; 2 uses
  %i.bi = tail call i8 @llvm.umax.i8(i8 %i.bh, i8 %.sroa.0.0.i.i75)
  %.sroa.08.0.copyload.sroa.speculated = select i1 %.not.i.i.i, i8 %i.bi, i8 %.sroa.0.0.i.i75
  %i.bj = zext i8 %.sroa.08.0.copyload.sroa.speculated to i16
  %i.bk = or disjoint i16 %i.bj, 256
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sroa.5.0 = phi i16 [ %i.bk, %bb.q ], [ 0, %bb.p ] ; 2 uses
  tail call void @_ZN4llvm12GlobalObject12setAlignmentENS_10MaybeAlignE(ptr noundef nonnull align 8 dereferenceable(89) %1, i16 %.sroa.5.0) #16
  tail call void @_ZN4llvm12GlobalObject12setAlignmentENS_10MaybeAlignE(ptr noundef nonnull align 8 dereferenceable(89) %.1.i, i16 %.sroa.5.0) #16
  %.pre = load i32, ptr %i.z, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r, %bb.i
  %i.bl = phi i32 [ %.pre127, %bb.o ], [ %i.aa, %bb.i ], [ %.pre, %bb.r ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i, i64 32 ; 5 uses
  %i.bn = load i32, ptr %i.bm, align 8            ; 3 uses
  %i.bo = lshr i32 %i.bn, 4
  %i.bp = and i32 %i.bo, 3                        ; 2 uses
  %i.bq = lshr i32 %i.bl, 4
  %i.br = and i32 %i.bq, 3                        ; 2 uses
  %i.bs = icmp eq i32 %i.bp, 1
  %i.bt = icmp eq i32 %i.br, 1
  %or.cond.i = or i1 %i.bs, %i.bt                 ; 3 uses
  %i.bu = icmp eq i32 %i.bp, 2
  %i.bv = icmp eq i32 %i.br, 2
  %or.cond3.i = or i1 %i.bu, %i.bv                ; 3 uses
  %..i77 = select i1 %or.cond3.i, i32 32, i32 0
  %.0.i = select i1 %or.cond.i, i32 16, i32 %..i77 ; 2 uses
  %i.bw = and i32 %i.bn, -49
  %i.bx = or disjoint i32 %.0.i, %i.bw            ; 2 uses
  store i32 %i.bx, ptr %i.bm, align 8
  %i.by = and i32 %i.bn, 15                       ; 2 uses
  %i.bz = add nsw i32 %i.by, -7
  %spec.select.i.i.i.i = icmp ult i32 %i.bz, 2
  br i1 %spec.select.i.i.i.i, label %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i, label %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.i

_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.i: ; preds = %bb.s
  %i.ca = or i1 %or.cond.i, %or.cond3.i
  %i.cb = icmp ne i32 %i.by, 9
  %spec.select.i.i78 = and i1 %i.cb, %i.ca
  br i1 %spec.select.i.i78, label %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i, label %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit

_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i: ; preds = %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.i, %bb.s
  %i.cc = or i32 %i.bx, 16384
  store i32 %i.cc, ptr %i.bm, align 8
  br label %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit

_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit: ; preds = %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.i, %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i
  %i.cd = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ce = and i32 %i.cd, -49
  %i.cf = or disjoint i32 %i.ce, %.0.i            ; 3 uses
  store i32 %i.cf, ptr %i.z, align 8
  %i.cg = and i32 %i.cd, 15                       ; 2 uses
  %i.ch = add nsw i32 %i.cg, -7
  %spec.select.i.i.i.i79 = icmp ult i32 %i.ch, 2
  br i1 %spec.select.i.i.i.i79, label %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i82, label %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.i80

_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.i80: ; preds = %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit
  %i.ci = or i1 %or.cond.i, %or.cond3.i
  %i.cj = icmp ne i32 %i.cg, 9
  %spec.select.i.i81 = and i1 %i.ci, %i.cj
  br i1 %spec.select.i.i81, label %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i82, label %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit83

_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i82: ; preds = %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.i80, %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit
  %i.ck = or i32 %i.cf, 16384                     ; 2 uses
  store i32 %i.ck, ptr %i.z, align 8
  br label %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit83

_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit83: ; preds = %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.i80, %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i82
  %i.cl = phi i32 [ %i.cf, %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.i80 ], [ %i.ck, %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i82 ]
  %i.cm = load i32, ptr %i.bm, align 8            ; 2 uses
  %i.cn = lshr i32 %i.cm, 6
  %i.co = and i32 %i.cn, 3                        ; 2 uses
  %i.cp = lshr i32 %i.cl, 6
  %i.cq = and i32 %i.cp, 3                        ; 2 uses
  %i.cr = icmp eq i32 %i.co, 0
  %i.cs = icmp eq i32 %i.cq, 0
  %or.cond.i84 = or i1 %i.cr, %i.cs
  %i.ct = icmp eq i32 %i.co, 1
  %i.cu = icmp eq i32 %i.cq, 1
  %or.cond3.i85 = or i1 %i.ct, %i.cu
  %..i86 = select i1 %or.cond3.i85, i32 64, i32 128
  %.0.i87 = select i1 %or.cond.i84, i32 0, i32 %..i86 ; 2 uses
  %i.cv = and i32 %i.cm, -193
  %i.cw = or disjoint i32 %.0.i87, %i.cv
  store i32 %i.cw, ptr %i.bm, align 8
  %i.cx = load i32, ptr %i.z, align 8
  %i.cy = and i32 %i.cx, -193
  %i.cz = or disjoint i32 %.0.i87, %i.cy
  store i32 %i.cz, ptr %i.z, align 8
  br label %bb.u

.critedge:                                        ; preds = %bb.h
  %i.da = trunc i32 %.val65 to i1
  br i1 %i.da, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dc = load i32, ptr %i.db, align 8
  %.fr122 = freeze i32 %i.dc                      ; 2 uses
  %i.dd = and i32 %.fr122, 14
  %spec.select.i.i89 = icmp eq i32 %i.dd, 2
  br i1 %spec.select.i.i89, label %bb.aj, label %switch.early.test

switch.early.test:                                ; preds = %bb.t
  %i.de = and i32 %.fr122, 15
  switch i32 %i.de, label %bb.u [
    i32 8, label %bb.aj
    i32 7, label %bb.aj
    i32 1, label %bb.aj
  ]

bb.u:                                             ; preds = %switch.early.test, %.thread, %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit83, %.critedge
  %i.df = phi i1 [ false, %switch.early.test ], [ false, %.critedge ], [ true, %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit83 ], [ true, %.thread ]
  %i.dg = tail call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  br i1 %i.dg, label %bb.aj, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dh = tail call noundef ptr @_ZNK4llvm11GlobalValue9getComdatEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #16 ; 5 uses
  %.not62 = icmp eq ptr %i.dh, null
  br i1 %.not62, label %.critedge64, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !74, !noalias !435 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !75, !noalias !435 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !76, !noalias !435 ; 4 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %.loopexit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = add i32 %i.dn, -1                       ; 2 uses
  %i.dq = ptrtoint ptr %i.dh to i64
  %i.dr = mul i64 %i.dq, -4658895280553007687     ; 2 uses
  %i.ds = lshr i64 %i.dr, 31
  %i.dt = xor i64 %i.ds, %i.dr
  %i.du = trunc i64 %i.dt to i32
  %i.dv = and i32 %i.dp, %i.du                    ; 3 uses
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.dw ; 2 uses
  %i.dy = lshr i64 %i.dw, 5
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !77
  %i.eb = and i32 %i.dv, 31
  %i.ec = lshr i32 %i.ea, %i.eb
  %i.ed = trunc i32 %i.ec to i1
  br i1 %i.ed, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !78

.lr.ph.i.i.i:                                     ; preds = %bb.x, %bb.y
  %i.ee = phi ptr [ %i.ek, %bb.y ], [ %i.dx, %bb.x ] ; 2 uses
  %.05.i.i.i = phi i32 [ %i.ei, %bb.y ], [ %i.dv, %bb.x ]
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !80
  %i.eg = icmp eq ptr %i.dh, %i.ef
  br i1 %i.eg, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6ComdatESt4pairINS2_13SelectionKindEN12_GLOBAL__N_18LinkFromEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_EixERKS4_.exit, label %bb.y, !prof !81

bb.y:                                             ; preds = %.lr.ph.i.i.i
  %i.eh = add nuw i32 %.05.i.i.i, 1
  %i.ei = and i32 %i.eh, %i.dp                    ; 3 uses
  %i.ej = zext i32 %i.ei to i64                   ; 2 uses
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.ej ; 2 uses
  %i.el = lshr i64 %i.ej, 5
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !77
  %i.eo = and i32 %i.ei, 31
  %i.ep = lshr i32 %i.en, %i.eo
  %i.eq = trunc i32 %i.ep to i1
  br i1 %i.eq, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !82, !llvm.loop !0

.loopexit.i.i:                                    ; preds = %bb.y, %bb.x, %bb.w
  %.lcssa9.sink.i.ph.i.i = phi ptr [ %i.dx, %bb.x ], [ null, %bb.w ], [ %i.ek, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa9.sink.i.ph.i.i, ptr %i.a, align 8, !tbaa !198
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %.val6.i.i.i = load i32, ptr %i.er, align 8, !tbaa !199
  %i.es = shl i32 %.val6.i.i.i, 2
  %i.et = add i32 %i.es, 4
  %i.eu = mul i32 %i.dn, 3
  %.not.i.i.i90 = icmp ult i32 %i.et, %i.eu
  br i1 %.not.i.i.i90, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6ComdatESt4pairINS2_13SelectionKindEN12_GLOBAL__N_18LinkFromEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_EixERKS4_.exit.thread, label %bb.z, !prof !81

bb.z:                                             ; preds = %.loopexit.i.i
  %i.ev = shl i32 %i.dn, 1
  tail call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6ComdatESt4pairINS2_13SelectionKindEN12_GLOBAL__N_18LinkFromEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.di, i32 noundef %i.ev)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6ComdatESt4pairINS2_13SelectionKindEN12_GLOBAL__N_18LinkFromEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_(ptr noundef nonnull align 1 dereferenceable(1) %i.di, ptr nonnull %i.dh, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !198
  %.val4.i.pre.i.i = load ptr, ptr %i.dk, align 8, !tbaa !75
  %.val7.i.pre.i.i = load ptr, ptr %i.di, align 8, !tbaa !74
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6ComdatESt4pairINS2_13SelectionKindEN12_GLOBAL__N_18LinkFromEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_EixERKS4_.exit.thread

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6ComdatESt4pairINS2_13SelectionKindEN12_GLOBAL__N_18LinkFromEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_EixERKS4_.exit.thread: ; preds = %bb.z, %.loopexit.i.i
  %.val7.i.i.i = phi ptr [ %.val7.i.pre.i.i, %bb.z ], [ %i.dj, %.loopexit.i.i ]
  %.val4.i.i.i = phi ptr [ %.val4.i.pre.i.i, %bb.z ], [ %i.dl, %.loopexit.i.i ]
  %i.ew = phi ptr [ %.pre.i.i.i, %bb.z ], [ %.lcssa9.sink.i.ph.i.i, %.loopexit.i.i ] ; 5 uses
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %.val7.i.i.i to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = ashr exact i64 %i.ez, 4                 ; 2 uses
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = and i32 %i.fb, 31
  %i.fd = shl nuw i32 1, %i.fc
  %i.fe = lshr i64 %i.fa, 5
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i.i, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !77
  %i.fh = or i32 %i.fd, %i.fg
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !77
  %.val.i.i.i.i = load i32, ptr %i.er, align 8, !tbaa !199
  %i.fi = add i32 %.val.i.i.i.i, 1
  store i32 %i.fi, ptr %i.er, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.dh, ptr %i.ew, align 8, !tbaa !80
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i32 0, ptr %i.fj, align 8, !tbaa !201
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  store i32 0, ptr %i.fk, align 4, !tbaa !202
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6ComdatESt4pairINS2_13SelectionKindEN12_GLOBAL__N_18LinkFromEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_EixERKS4_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6ComdatESt4pairINS2_13SelectionKindEN12_GLOBAL__N_18LinkFromEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_EixERKS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6ComdatESt4pairINS2_13SelectionKindEN12_GLOBAL__N_18LinkFromEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_EixERKS4_.exit.thread
  %.sroa.0.0.i.i91 = phi ptr [ %i.ew, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6ComdatESt4pairINS2_13SelectionKindEN12_GLOBAL__N_18LinkFromEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_EixERKS4_.exit.thread ], [ %i.ee, %.lr.ph.i.i.i ]
  %.phi.trans.insert = getelementptr i8, ptr %.sroa.0.0.i.i91, i64 12
  %.val68.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !202 ; 2 uses
  %i.fl = icmp eq i32 %.val68.pre, 0
  br i1 %i.fl, label %bb.aj, label %.critedge64

.critedge64:                                      ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6ComdatESt4pairINS2_13SelectionKindEN12_GLOBAL__N_18LinkFromEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_EixERKS4_.exit, %bb.v
  %.0 = phi i32 [ 0, %bb.v ], [ %.val68.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6ComdatESt4pairINS2_13SelectionKindEN12_GLOBAL__N_18LinkFromEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_EixERKS4_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i8 1, ptr %i.b, align 1, !tbaa !236
  br i1 %i.df, label %bb.aa, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11GlobalValueELb1EE9push_backES2_.exit.thread

bb.aa:                                            ; preds = %.critedge64
  %i.fm = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112ModuleLinker20shouldLinkFromSourceERbRKN4llvm11GlobalValueES5_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %.1.i, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br i1 %i.fm, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fn = icmp eq i32 %.0, 2
  %.pre129 = load i8, ptr %i.b, align 1, !tbaa !236, !range !223 ; 2 uses
  br i1 %i.fn, label %bb.ac, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11GlobalValueELb1EE9push_backES2_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.fo = trunc nuw i8 %.pre129 to i1
  %i.fp = select i1 %i.fo, ptr %.1.i, ptr %1      ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !26 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !27
  %.not.i92 = icmp ult i32 %i.fr, %i.ft
  br i1 %.not.i92, label %bb.ae, label %bb.ad, !prof !81

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11GlobalValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.fp)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11GlobalValueELb1EE9push_backES2_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.fu = zext i32 %i.fr to i64
  %i.fv = load ptr, ptr %2, align 8, !tbaa !25
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fu
  store ptr %i.fp, ptr %i.fw, align 1
  %i.fx = load i32, ptr %i.fq, align 8, !tbaa !26
  %i.fy = add i32 %i.fx, 1
  store i32 %i.fy, ptr %i.fq, align 8, !tbaa !26
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11GlobalValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_11GlobalValueELb1EE9push_backES2_.exit: ; preds = %bb.ae, %bb.ad, %bb.ab
  %i.fz = trunc nuw i8 %.pre129 to i1
  br i1 %i.fz, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11GlobalValueELb1EE9push_backES2_.exit.thread, label %bb.ai

_ZN4llvm23SmallVectorTemplateBaseIPNS_11GlobalValueELb1EE9push_backES2_.exit.thread: ; preds = %.critedge64, %_ZN4llvm23SmallVectorTemplateBaseIPNS_11GlobalValueELb1EE9push_backES2_.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr %1, ptr %i.c, align 8, !tbaa !230
  %i.gb = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11GlobalValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ga, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !436
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.gb, 1
  %i.gc = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  br i1 %i.gc, label %bb.af, label %_ZN4llvm9SetVectorIPNS_11GlobalValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit

bb.af:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_11GlobalValueELb1EE9push_backES2_.exit.thread
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ge = load ptr, ptr %i.c, align 8, !tbaa !230 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !26 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !27
  %.not.i.i = icmp ult i32 %i.gg, %i.gi
  br i1 %.not.i.i, label %bb.ah, label %bb.ag, !prof !81

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11GlobalValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, ptr noundef %i.ge)
  br label %_ZN4llvm9SetVectorIPNS_11GlobalValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit

bb.ah:                                            ; preds = %bb.af
  %i.gj = zext i32 %i.gg to i64
  %i.gk = load ptr, ptr %i.gd, align 8, !tbaa !25
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gj
  store ptr %i.ge, ptr %i.gl, align 1
  %i.gm = load i32, ptr %i.gf, align 8, !tbaa !26
  %i.gn = add i32 %i.gm, 1
  store i32 %i.gn, ptr %i.gf, align 8, !tbaa !26
  br label %_ZN4llvm9SetVectorIPNS_11GlobalValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit

_ZN4llvm9SetVectorIPNS_11GlobalValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_11GlobalValueELb1EE9push_backES2_.exit.thread, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_11GlobalValueELb1EE9push_backES2_.exit, %_ZN4llvm9SetVectorIPNS_11GlobalValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit, %bb.aa
  %.1 = phi i1 [ true, %bb.aa ], [ false, %_ZN4llvm9SetVectorIPNS_11GlobalValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit ], [ false, %_ZN4llvm23SmallVectorTemplateBaseIPNS_11GlobalValueELb1EE9push_backES2_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.aj

bb.aj:                                            ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %bb.t, %bb.ai, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6ComdatESt4pairINS2_13SelectionKindEN12_GLOBAL__N_18LinkFromEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_EixERKS4_.exit, %bb.u, %bb.g, %bb.f
  %.3 = phi i1 [ false, %switch.early.test ], [ false, %bb.u ], [ false, %bb.g ], [ false, %bb.f ], [ %.1, %bb.ai ], [ false, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6ComdatESt4pairINS2_13SelectionKindEN12_GLOBAL__N_18LinkFromEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_EixERKS4_.exit ], [ false, %bb.t ], [ false, %switch.early.test ], [ false, %switch.early.test ]
  ret i1 %.3
}

declare void @_ZN4llvm14GlobalVariableC1ERNS_6ModuleEPNS_4TypeEbNS_11GlobalValue12LinkageTypesEPNS_8ConstantERKNS_5TwineEPS0_NS5_15ThreadLocalModeESt8optionalIjEb(ptr noundef nonnull align 8 dereferenceable(89), ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef, i32 noundef, i64, i1 noundef zeroext) unnamed_addr #1

declare void @_ZN4llvm14GlobalVariable18copyAttributesFromEPKS0_(ptr noundef nonnull align 8 dereferenceable(89), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_112ModuleLinker9emitErrorERKN4llvm5TwineE(ptr %.8.val.0.val, ptr noundef nonnull align 8 dereferenceable(34) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::LinkDiagnosticInfo", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @_ZN4llvm18LinkDiagnosticInfoC1ENS_18DiagnosticSeverityERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(34) %0) #16
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %.8.val.0.val, ptr noundef nonnull align 8 dereferenceable(13) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Twine") align 8 %0, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(34) %2) local_unnamed_addr #4 comdat {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !89, !noalias !439 ; 3 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !89, !noalias !439 ; 3 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.g, align 8, !tbaa !89, !alias.scope !439
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !90, !alias.scope !439
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i8 %i.b, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !441
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i8 %i.e, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !441
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.l = load i8, ptr %i.k, align 1, !tbaa !90, !noalias !439
  %i.m = icmp eq i8 %i.l, 1                       ; 3 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %1, align 8, !noalias !439
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.56.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !439
  %.014.i = select i1 %i.m, i8 %i.b, i8 2
  %.sroa.05.0.i = select i1 %i.m, ptr %.sroa.05.0.copyload.i, ptr %1
  %.sroa.56.0.i = select i1 %i.m, i64 %.sroa.56.0.copyload.i, i64 undef
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.o = load i8, ptr %i.n, align 1, !tbaa !90, !noalias !439
  %i.p = icmp eq i8 %i.o, 1                       ; 3 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %2, align 8, !noalias !439
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !439
  %.0.i = select i1 %i.p, i8 %i.e, i8 2
  %.sroa.04.0.i = select i1 %i.p, ptr %.sroa.04.0.copyload.i, ptr %2
  %.sroa.5.0.i = select i1 %i.p, i64 %.sroa.5.0.copyload.i, i64 undef
  store ptr %.sroa.05.0.i, ptr %0, align 8, !tbaa !22, !alias.scope !439
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.56.0.i, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !22, !alias.scope !439
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.04.0.i, ptr %i.q, align 8, !tbaa !22, !alias.scope !439
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !22, !alias.scope !439
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.014.i, ptr %i.r, align 8, !tbaa !89, !alias.scope !439
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.0.i, ptr %i.s, align 1, !tbaa !90, !alias.scope !439
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

_ZNK4llvm5Twine6concatERKS0_.exit:                ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  ret void
}

declare { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112ModuleLinker20shouldLinkFromSourceERbRKN4llvm11GlobalValueES5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val40 = load i32, ptr %i.a, align 8, !tbaa !54
  %i.b = trunc i32 %.val40 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %1, align 1, !tbaa !236
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 15                         ; 2 uses
  %i.f = icmp eq i32 %i.e, 6
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 15                         ; 2 uses
  %i.j = icmp eq i32 %i.i, 6
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 1, ptr %1, align 1, !tbaa !236
  br label %bb.x

bb.f:                                             ; preds = %bb.d
  %i.k = icmp eq i32 %i.e, 1
  br i1 %i.k, label %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit.thread, label %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit

_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit: ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #16 ; 2 uses
  %i.m = load i32, ptr %i.g, align 8
  %i.n = and i32 %i.m, 15
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42.thread, label %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42

_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit.thread: ; preds = %bb.f
  %i.p = icmp eq i32 %i.i, 1
  br i1 %i.p, label %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42.thread.thread, label %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42.thread54

_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42.thread54: ; preds = %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit.thread
  %i.q = tail call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #16
  br label %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42.thread.thread

_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42: ; preds = %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit
  %i.r = tail call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #16 ; 2 uses
  br i1 %i.l, label %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42.thread.thread, label %bb.m

_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42.thread: ; preds = %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit
  br i1 %i.l, label %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42.thread.thread, label %.thread

_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42.thread.thread: ; preds = %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42.thread54, %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit.thread, %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42.thread, %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42
  %.shrunk = phi i1 [ true, %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42.thread ], [ %i.r, %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42 ], [ true, %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit.thread ], [ %i.q, %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42.thread54 ]
  %i.s = load i32, ptr %i.c, align 8
  %i.t = and i32 %i.s, 768
  %i.u = icmp eq i32 %i.t, 256
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42.thread.thread
  %i.v = zext i1 %.shrunk to i8
  store i8 %i.v, ptr %1, align 1, !tbaa !236
  br label %bb.x

bb.h:                                             ; preds = %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42.thread.thread
  %i.w = load i32, ptr %i.g, align 8
  %i.x = and i32 %i.w, 15
  %i.y = icmp eq i32 %i.x, 9
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %1, align 1, !tbaa !236
  br label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.z = tail call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #16
  br i1 %i.z, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #16
  %i.ab = zext i1 %i.aa to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = phi i8 [ 0, %bb.j ], [ %i.ab, %bb.k ]
  store i8 %i.ac, ptr %1, align 1, !tbaa !236
  br label %bb.x

bb.m:                                             ; preds = %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42
  br i1 %i.r, label %.thread, label %bb.n

.thread:                                          ; preds = %_ZNK4llvm11GlobalValue22isDeclarationForLinkerEv.exit42.thread, %bb.m
  store i8 1, ptr %1, align 1, !tbaa !236
  br label %bb.x

bb.n:                                             ; preds = %bb.m
  %i.ad = load i32, ptr %i.c, align 8             ; 2 uses
  %i.ae = and i32 %i.ad, 15
  %i.af = load i32, ptr %i.g, align 8             ; 4 uses
end_hunk_0
