Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64FalkorHWPFFix?download=true
inline.NumInlined: 1562
inline.NumDeleted: 965
begin_hunk_0_@_ZN12_GLOBAL__N_113FalkorHWPFFix20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.046.094, i64 8 ; 2 uses
  %.not49 = icmp eq ptr %i.fk, %i.aa
  br i1 %.not49, label %._crit_edge.loopexit, label %bb.d

.loopexit54:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i26, %_ZSteqIPN4llvm11MachineLoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEEEEbRKSt4pairIT_T0_ESI_.exit.i.i.i.i.i.i.i, %bb.i
  %i.fl = getelementptr inbounds i8, ptr %i.dg, i64 -24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !240 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !607
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !607
  %i.fr = icmp eq ptr %i.fo, %i.fq
  br i1 %i.fr, label %bb.t, label %_ZN12_GLOBAL__N_113FalkorHWPFFix9runOnLoopERN4llvm11MachineLoopERNS1_15MachineFunctionE.exit

bb.t:                                             ; preds = %.loopexit54
  %i.fs = load i32, ptr %i.ap, align 8, !tbaa !247 ; 2 uses
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E5clearEv.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fu = shl i32 %i.fs, 2
  %i.fv = load i32, ptr %i.aq, align 4, !tbaa !232 ; 4 uses
  %i.fw = icmp ult i32 %i.fu, %i.fv
  br i1 %i.fw, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.fx = icmp ugt i32 %i.fv, 64
  br i1 %i.fx, label %bb.w, label %.lr.ph7.preheader.i.i.i

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ao)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E5clearEv.exit.i

bb.x:                                             ; preds = %bb.u
  %i.fy = icmp eq i32 %i.fv, 0
  br i1 %i.fy, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.i.i, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %bb.x, %bb.v
  %i.fz = load ptr, ptr %i.ao, align 8, !tbaa !233
  %i.ga = load ptr, ptr %i.ar, align 8, !tbaa !234
  %i.gb = zext i32 %i.fv to i64
  %i.gc = add nuw nsw i64 %i.gb, 31
  %i.gd = lshr i64 %i.gc, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.i.i.i
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !45 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.gf, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.gg = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.y

bb.y:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i31
  %.0.i3.i.i.i = phi i32 [ %i.gf, %.lr.ph.i.i.i31 ], [ %i.gq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.gh = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.gi = or disjoint i32 %i.gh, %i.gg
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [56 x i8], ptr %i.fz, i64 %i.gj ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !13 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef %i.gm) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.z, %bb.y
  %i.gp = add i32 %.0.i3.i.i.i, -1
  %i.gq = and i32 %i.gp, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.gq, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.y, !llvm.loop !0

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i32 = icmp eq i64 %indvars.iv.next.i.i.i, %i.gd
  br i1 %.not.i.i.i.i32, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.loopexit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !1

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.loopexit.i.i: ; preds = %._crit_edge.i.i.i
  %.pre.i.i = load i32, ptr %i.aq, align 4, !tbaa !232
  %i.gr = zext i32 %.pre.i.i to i64
  %i.gs = add nuw nsw i64 %i.gr, 31
  %i.gt = lshr i64 %i.gs, 3
  %i.gu = and i64 %i.gt, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.loopexit.i.i, %bb.x
  %i.gv = phi i64 [ %i.gu, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.loopexit.i.i ], [ 0, %bb.x ]
  %i.gw = load ptr, ptr %i.ar, align 8, !tbaa !234
  call void @llvm.memset.p0.i64(ptr align 4 %i.gw, i8 0, i64 %i.gv, i1 false)
  store i32 0, ptr %i.ap, align 8, !tbaa !247
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E5clearEv.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E5clearEv.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.i.i, %bb.w, %bb.t
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fm, i64 32 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !617 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fm, i64 40 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !618 ; 2 uses
  %.not340.i = icmp eq ptr %i.gy, %i.ha
  br i1 %.not340.i, label %._crit_edge343.i, label %.lr.ph342.i

._crit_edge343.i:                                 ; preds = %._crit_edge.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E5clearEv.exit.i
  %i.hb = load ptr, ptr %i.ao, align 8, !tbaa !233, !noalias !619
  %i.hc = load ptr, ptr %i.ar, align 8, !tbaa !234, !noalias !619 ; 4 uses
  %i.hd = load i32, ptr %i.aq, align 4, !tbaa !232, !noalias !619 ; 2 uses
  %i.he = load i32, ptr %i.ap, align 8, !tbaa !247, !noalias !619
  %i.hf = icmp eq i32 %i.he, 0
  %i.hg = zext i32 %i.hd to i64                   ; 3 uses
  %.idx487.i = mul nuw nsw i64 %i.hg, 56          ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.hd, 0
  %or.cond.i = select i1 %i.hf, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %_ZN12_GLOBAL__N_113FalkorHWPFFix9runOnLoopERN4llvm11MachineLoopERNS1_15MachineFunctionE.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge343.i
  %i.hh = add nuw nsw i64 %i.hg, 31
  %i.hi = lshr i64 %i.hh, 5                       ; 4 uses
  %i.hj = load i32, ptr %i.hc, align 4, !tbaa !45, !noalias !620 ; 2 uses
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E5beginEv.exit.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.aa
  %i.hl = icmp eq i64 %i.hi, 1
  br i1 %i.hl, label %_ZN12_GLOBAL__N_113FalkorHWPFFix9runOnLoopERN4llvm11MachineLoopERNS1_15MachineFunctionE.exit, label %.lr.ph296

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph296
  %i.hm = add nuw nsw i64 %i.ho, 1                ; 2 uses
  %i.hn = icmp eq i64 %i.hm, %i.hi
  br i1 %i.hn, label %_ZN12_GLOBAL__N_113FalkorHWPFFix9runOnLoopERN4llvm11MachineLoopERNS1_15MachineFunctionE.exit, label %.lr.ph296, !llvm.loop !439

.lr.ph296:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.ho = phi i64 [ %i.hm, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !45, !noalias !620 ; 2 uses
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !439

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph296
  %i.hs = mul i64 %i.ho, 1792
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E5beginEv.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E5beginEv.exit.i: ; preds = %._crit_edge.i.loopexit.i.i.i, %bb.aa
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.aa ], [ %i.hs, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.hj, %bb.aa ], [ %i.hq, %._crit_edge.i.loopexit.i.i.i ]
  %i.ht = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %narrow.i = mul nuw nsw i32 %i.ht, 56
  %.idx486.i = zext nneg i32 %narrow.i to i64
  %i.hu = add i64 %.012.lcssa.i.i.i.i, %.idx486.i ; 2 uses
  %.not306350.i = icmp eq i64 %i.hu, %.idx487.i
  br i1 %.not306350.i, label %_ZN12_GLOBAL__N_113FalkorHWPFFix9runOnLoopERN4llvm11MachineLoopERNS1_15MachineFunctionE.exit, label %.lr.ph353.i

.lr.ph342.i:                                      ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E5clearEv.exit.i, %._crit_edge.i
  %.0103341.i = phi ptr [ %i.hy, %._crit_edge.i ], [ %i.gy, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E5clearEv.exit.i ] ; 2 uses
  %i.hv = load ptr, ptr %.0103341.i, align 8, !tbaa !621 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 56
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 48 ; 2 uses
  %.sroa.0268.0337.i = load ptr, ptr %i.hw, align 8, !tbaa !253 ; 2 uses
  %.not305338.i = icmp eq ptr %.sroa.0268.0337.i, %i.hx
  br i1 %.not305338.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, %.lr.ph342.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.0103341.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.hy, %i.ha
  br i1 %.not.i, label %._crit_edge343.i, label %.lr.ph342.i

.lr.ph.i:                                         ; preds = %.lr.ph342.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.0268.0339.i = phi ptr [ %.sroa.0268.0.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %.sroa.0268.0337.i, %.lr.ph342.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.hz = getelementptr i8, ptr %.sroa.0268.0339.i, i64 32
  %.val126.i = load ptr, ptr %i.hz, align 8
  %i.ia = getelementptr i8, ptr %.sroa.0268.0339.i, i64 52
  %.val127.i = load i32, ptr %i.ia, align 4, !tbaa !622
  call fastcc void @_ZL11getLoadInfoRKN4llvm12MachineInstrE(ptr dead_on_unwind noalias writable align 8 %8, ptr %.val126.i, i32 %.val127.i)
  %.val129.i = load i8, ptr %i.as, align 8, !tbaa !265, !range !220, !noundef !221
  %i.ib = trunc nuw i8 %.val129.i to i1
  br i1 %i.ib, label %bb.ab, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i

bb.ab:                                            ; preds = %.lr.ph.i
  %i.ic = load ptr, ptr %i.l, align 8, !tbaa !604
  %i.id = load i32, ptr %8, align 8, !tbaa !623   ; 2 uses
  %.not.i.i = icmp eq i32 %i.id, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ic, i64 104
  %.pre.i130.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !624 ; 3 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %.pre.i130.i, i64 %i.ie
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !625
  %i.ih = and i16 %i.ig, 15
  %i.ii = zext nneg i16 %i.ih to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ac, %bb.ab
  %i.ij = phi i64 [ %i.ii, %bb.ac ], [ 0, %bb.ab ]
  %i.ik = load i32, ptr %i.at, align 4, !tbaa !623
  %i.il = zext i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %.pre.i130.i, i64 %i.il
  %i.in = load i16, ptr %i.im, align 2, !tbaa !625
  %i.io = zext i16 %i.in to i64
  %i.ip = load ptr, ptr %i.au, align 8, !tbaa !627 ; 4 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit.i, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i.i
  %i.ir = load i32, ptr %i.ip, align 8
  %trunc.i.i = trunc i32 %i.ir to i8
  switch i8 %trunc.i.i, label %bb.af [
    i8 10, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i
    i8 9, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i
    i8 6, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i
    i8 0, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !266
  %i.iu = zext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %.pre.i130.i, i64 %i.iu
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !625
  %i.ix = or i16 %i.iw, 32
  %i.iy = zext i16 %i.ix to i64
  br label %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !266
  %i.jb = lshr i64 %i.ja, 2
  br label %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit.i

_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit.i: ; preds = %bb.af, %bb.ae, %._crit_edge.i.i
  %.0.i.i = phi i64 [ %i.jb, %bb.af ], [ %i.iy, %bb.ae ], [ 0, %._crit_edge.i.i ]
  %i.jc = shl nuw nsw i64 %i.io, 4
  %i.jd = and i64 %i.jc, 240
  %i.je = shl i64 %.0.i.i, 8
  %i.jf = and i64 %i.je, 16128
  %i.jg = or i64 %i.jd, %i.ij
  %i.jh = or i64 %i.jg, %i.jf
  %.sroa.0262.0.extract.trunc.i = trunc nuw nsw i64 %i.jh to i32 ; 5 uses
  %i.ji = load ptr, ptr %i.ao, align 8, !tbaa !233, !noalias !628 ; 3 uses
  %i.jj = load ptr, ptr %i.ar, align 8, !tbaa !234, !noalias !628 ; 3 uses
  %i.jk = load i32, ptr %i.aq, align 4, !tbaa !232, !noalias !628 ; 4 uses
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %.loopexit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit.i
  %i.jm = add i32 %i.jk, -1                       ; 2 uses
  %i.jn = mul nuw nsw i32 %.sroa.0262.0.extract.trunc.i, 37
  %.024.i.i.i = and i32 %i.jn, %i.jm              ; 3 uses
  %i.jo = zext nneg i32 %.024.i.i.i to i64        ; 2 uses
  %i.jp = getelementptr inbounds nuw [56 x i8], ptr %i.ji, i64 %i.jo ; 2 uses
  %i.jq = lshr i64 %i.jo, 5
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !45
  %i.jt = and i32 %.024.i.i.i, 31
  %i.ju = lshr i32 %i.js, %i.jt
  %i.jv = trunc i32 %i.ju to i1
  br i1 %i.jv, label %.lr.ph.i.i187.i, label %.loopexit.i.i, !prof !47

bb.ah:                                            ; preds = %.lr.ph.i.i187.i
  %i.jw = add nuw i32 %.025.i.i.i, 1
  %.0.i.i.i = and i32 %i.jw, %i.jm                ; 3 uses
  %i.jx = zext i32 %.0.i.i.i to i64               ; 2 uses
  %i.jy = getelementptr inbounds nuw [56 x i8], ptr %i.ji, i64 %i.jx ; 2 uses
  %i.jz = lshr i64 %i.jx, 5
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.jz
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !45
  %i.kc = and i32 %.0.i.i.i, 31
  %i.kd = lshr i32 %i.kb, %i.kc
  %i.ke = trunc i32 %i.kd to i1
  br i1 %i.ke, label %.lr.ph.i.i187.i, label %.loopexit.i.i, !prof !48, !llvm.loop !2

.lr.ph.i.i187.i:                                  ; preds = %bb.ag, %bb.ah
  %i.kf = phi ptr [ %i.jy, %bb.ah ], [ %i.jp, %bb.ag ] ; 5 uses
  %.025.i.i.i = phi i32 [ %.0.i.i.i, %bb.ah ], [ %.024.i.i.i, %bb.ag ]
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !45
  %i.kh = icmp eq i32 %i.kg, %.sroa.0262.0.extract.trunc.i
  br i1 %i.kh, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit.i, label %bb.ah, !prof !42

.loopexit.i.i:                                    ; preds = %bb.ah, %bb.ag, %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit.i
  %.lcssa30.sink.i.ph.i.i = phi ptr [ %i.jp, %bb.ag ], [ null, %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit.i ], [ %i.jy, %bb.ah ]
  %i.ki = load i32, ptr %i.ap, align 8, !tbaa !247
  %i.kj = shl i32 %i.ki, 2
  %i.kk = add i32 %i.kj, 4
  %i.kl = mul i32 %i.jk, 3
  %.not.i.i183.i = icmp ult i32 %i.kk, %i.kl
  br i1 %.not.i.i183.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit.thread.i, label %bb.ai, !prof !42

bb.ai:                                            ; preds = %.loopexit.i.i
  %i.km = shl i32 %i.jk, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, i32 noundef %i.km)
  %i.kn = load ptr, ptr %i.ao, align 8, !tbaa !233, !noalias !629 ; 5 uses
  %i.ko = load ptr, ptr %i.ar, align 8, !tbaa !234, !noalias !629 ; 5 uses
  %i.kp = load i32, ptr %i.aq, align 4, !tbaa !232, !noalias !629 ; 2 uses
  %i.kq = icmp ne i32 %i.kp, 0
  call void @llvm.assume(i1 %i.kq)
  %i.kr = add i32 %i.kp, -1                       ; 2 uses
  %i.ks = mul nuw nsw i32 %.sroa.0262.0.extract.trunc.i, 37
  %.024.i.i = and i32 %i.kr, %i.ks                ; 3 uses
  %i.kt = zext nneg i32 %.024.i.i to i64          ; 2 uses
  %i.ku = getelementptr inbounds nuw [56 x i8], ptr %i.kn, i64 %i.kt ; 2 uses
  %i.kv = lshr i64 %i.kt, 5
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !45
  %i.ky = and i32 %.024.i.i, 31
  %i.kz = lshr i32 %i.kx, %i.ky
  %i.la = trunc i32 %i.kz to i1
  br i1 %i.la, label %.lr.ph.i204.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit.thread.i, !prof !47

bb.aj:                                            ; preds = %.lr.ph.i204.i
  %i.lb = add nuw i32 %.025.i.i, 1
  %.0.i205.i = and i32 %i.lb, %i.kr               ; 3 uses
  %i.lc = zext i32 %.0.i205.i to i64              ; 2 uses
  %i.ld = getelementptr inbounds nuw [56 x i8], ptr %i.kn, i64 %i.lc ; 2 uses
  %i.le = lshr i64 %i.lc, 5
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.le
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !45
  %i.lh = and i32 %.0.i205.i, 31
  %i.li = lshr i32 %i.lg, %i.lh
  %i.lj = trunc i32 %i.li to i1
  br i1 %i.lj, label %.lr.ph.i204.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit.thread.i, !prof !48, !llvm.loop !2

.lr.ph.i204.i:                                    ; preds = %bb.ai, %bb.aj
  %i.lk = phi ptr [ %i.ld, %bb.aj ], [ %i.ku, %bb.ai ] ; 2 uses
  %.025.i.i = phi i32 [ %.0.i205.i, %bb.aj ], [ %.024.i.i, %bb.ai ]
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !45
  %i.lm = icmp eq i32 %i.ll, %.sroa.0262.0.extract.trunc.i
  br i1 %i.lm, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit.thread.i, label %bb.aj, !prof !42

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit.thread.i: ; preds = %.lr.ph.i204.i, %bb.aj, %bb.ai, %.loopexit.i.i
  %i.ln = phi ptr [ %i.ji, %.loopexit.i.i ], [ %i.kn, %bb.ai ], [ %i.kn, %bb.aj ], [ %i.kn, %.lr.ph.i204.i ]
  %i.lo = phi ptr [ %i.jj, %.loopexit.i.i ], [ %i.ko, %bb.ai ], [ %i.ko, %bb.aj ], [ %i.ko, %.lr.ph.i204.i ]
  %i.lp = phi ptr [ %.lcssa30.sink.i.ph.i.i, %.loopexit.i.i ], [ %i.ku, %bb.ai ], [ %i.lk, %.lr.ph.i204.i ], [ %i.ld, %bb.aj ] ; 7 uses
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = ptrtoint ptr %i.ln to i64
  %i.ls = sub i64 %i.lq, %i.lr
  %i.lt = sdiv exact i64 %i.ls, 56                ; 2 uses
  %i.lu = trunc i64 %i.lt to i32
  %i.lv = and i32 %i.lu, 31
  %i.lw = shl nuw i32 1, %i.lv
  %i.lx = lshr i64 %i.lt, 5
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.lx ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !45
  %i.ma = or i32 %i.lw, %i.lz
  store i32 %i.ma, ptr %i.ly, align 4, !tbaa !45
  %i.mb = load i32, ptr %i.ap, align 8, !tbaa !247
  %i.mc = add i32 %i.mb, 1
  store i32 %i.mc, ptr %i.ap, align 8, !tbaa !247
  store i32 %.sroa.0262.0.extract.trunc.i, ptr %i.lp, align 4, !tbaa !45
  %i.md = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.lp, i64 24 ; 2 uses
  store ptr %i.me, ptr %i.md, align 8, !tbaa !13
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store i32 0, ptr %i.mf, align 8, !tbaa !55
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lp, i64 20
  store i32 4, ptr %i.mg, align 4, !tbaa !56
  br label %bb.al

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit.i: ; preds = %.lr.ph.i.i187.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %.pre.i36 = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !55 ; 2 uses
  %.phi.trans.insert408.i = getelementptr inbounds nuw i8, ptr %i.kf, i64 20
  %.pre409.i = load i32, ptr %.phi.trans.insert408.i, align 4, !tbaa !56
  %i.mh = icmp ult i32 %.pre.i36, %.pre409.i
  %i.mi = getelementptr inbounds nuw i8, ptr %i.kf, i64 8 ; 2 uses
  br i1 %i.mh, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit.i._crit_edge, label %bb.ak, !prof !630

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit.i._crit_edge: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit.i
  %i.mj = zext i32 %.pre.i36 to i64
  %.pre139 = load ptr, ptr %i.mi, align 8, !tbaa !13
  br label %bb.al

bb.ak:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.mi, ptr noundef nonnull %.sroa.0268.0339.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i

bb.al:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit.i._crit_edge, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit.thread.i
  %i.mk = phi ptr [ %i.me, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit.thread.i ], [ %.pre139, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit.i._crit_edge ]
  %.sroa.0.0.i454.i = phi ptr [ %i.lp, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit.thread.i ], [ %i.kf, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit.i._crit_edge ]
  %i.ml = phi i64 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit.thread.i ], [ %i.mj, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit.i._crit_edge ]
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i454.i, i64 16 ; 2 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %i.ml
  store ptr %.sroa.0268.0339.i, ptr %i.mn, align 1
  %i.mo = load i32, ptr %i.mm, align 8, !tbaa !55
  %i.mp = add i32 %i.mo, 1
  store i32 %i.mp, ptr %i.mm, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i: ; preds = %bb.al, %bb.ak, %bb.ad, %bb.ad, %bb.ad, %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0268.0339.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0268.0339.i, align 8
  %i.mq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i132.i = icmp eq i64 %i.mq, 0
  br i1 %.not.i.i.i132.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0268.0339.i, i64 44
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !267
  %i.mt = and i32 %i.ms, 8
  %.not34.i.i.i.i = icmp eq i32 %i.mt, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.mv, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %.sroa.0268.0339.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !253 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 44
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !267
  %i.my = and i32 %i.mx, 8
  %.not3.i.i.i.i = icmp eq i32 %i.my, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !448

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.0268.0339.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i ], [ %.sroa.0268.0339.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.mv, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %.sroa.0268.0.i = load ptr, ptr %i.mz, align 8, !tbaa !253 ; 2 uses
  %.not305.i = icmp eq ptr %.sroa.0268.0.i, %i.hx
  br i1 %.not305.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph353.i:                                      ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E5beginEv.exit.i, %_ZN4llvm16DenseMapIteratorIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EELb0EEppEv.exit.i
  %.pn.i = phi i64 [ %i.od, %_ZN4llvm16DenseMapIteratorIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EELb0EEppEv.exit.i ], [ %i.hu, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E5beginEv.exit.i ] ; 2 uses
  %.sroa.0258.0351.i = getelementptr i8, ptr %i.hb, i64 %.pn.i ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0258.0351.i, i64 16
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !55 ; 2 uses
  %i.nc = icmp ugt i32 %i.nb, 1
  br i1 %i.nc, label %.lr.ph347.preheader.i, label %.loopexit460.i

.lr.ph347.preheader.i:                            ; preds = %.lr.ph353.i
  %i.nd = zext i32 %i.nb to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0258.0351.i, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !13 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.nd, 3
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 %.idx.i
  br label %.lr.ph347.i

bb.am:                                            ; preds = %.lr.ph347.i
  %i.nh = getelementptr inbounds nuw i8, ptr %.0112345.i, i64 8 ; 2 uses
  %.not120.i = icmp eq ptr %i.nh, %i.ng
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_113FalkorHWPFFix20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  br i1 %i.nv, label %_ZN12_GLOBAL__N_113FalkorHWPFFix9runOnLoopERN4llvm11MachineLoopERNS1_15MachineFunctionE.exit, label %.lr.ph297

.lr.ph.i.i134.i:                                  ; preds = %.lr.ph297
  %i.nw = add i64 %i.ny, 1                        ; 2 uses
  %i.nx = icmp eq i64 %i.nw, %i.hi
  br i1 %i.nx, label %_ZN12_GLOBAL__N_113FalkorHWPFFix9runOnLoopERN4llvm11MachineLoopERNS1_15MachineFunctionE.exit, label %.lr.ph297, !llvm.loop !439

.lr.ph297:                                        ; preds = %.lr.ph.i.i134.i.preheader, %.lr.ph.i.i134.i
  %i.ny = phi i64 [ %i.nw, %.lr.ph.i.i134.i ], [ %i.nu, %.lr.ph.i.i134.i.preheader ] ; 3 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !45 ; 2 uses
  %i.ob = icmp eq i32 %i.oa, 0
  br i1 %i.ob, label %.lr.ph.i.i134.i, label %_ZN4llvm16DenseMapIteratorIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EELb0EEppEv.exit.i, !llvm.loop !439

_ZN4llvm16DenseMapIteratorIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EELb0EEppEv.exit.i: ; preds = %.lr.ph297, %bb.an
  %.012.lcssa.i.i.i = phi i64 [ %i.nm, %bb.an ], [ %i.ny, %.lr.ph297 ]
  %.0.lcssa.i.i.i = phi i32 [ %i.ns, %bb.an ], [ %i.oa, %.lr.ph297 ]
  %i.oc = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %.idx.i.i.i = mul i64 %.012.lcssa.i.i.i, 1792
  %narrow489.i = mul nuw nsw i32 %i.oc, 56
  %.idx488.i = zext nneg i32 %narrow489.i to i64
  %i.od = add i64 %.idx.i.i.i, %.idx488.i         ; 2 uses
  %.not306.i = icmp eq i64 %i.od, %.idx487.i
  br i1 %.not306.i, label %_ZN12_GLOBAL__N_113FalkorHWPFFix9runOnLoopERN4llvm11MachineLoopERNS1_15MachineFunctionE.exit, label %.lr.ph353.i

.thread.i:                                        ; preds = %.lr.ph347.i
  %i.oe = load ptr, ptr %i.av, align 8, !tbaa !632
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.of = load ptr, ptr %i.l, align 8, !tbaa !604 ; 2 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !13
  store i32 0, ptr %i.ay, align 8, !tbaa !55
  store i32 6, ptr %i.az, align 4, !tbaa !56
  store ptr %i.of, ptr %9, align 8, !tbaa !634
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 44
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !635 ; 4 uses
  store i32 %i.oh, ptr %i.ba, align 8, !tbaa !636
  %i.oi = add i32 %i.oh, 63                       ; 2 uses
  %i.oj = lshr i32 %i.oi, 6                       ; 3 uses
  %i.ok = zext nneg i32 %i.oj to i64              ; 2 uses
  %i.ol = icmp eq i32 %i.oj, 0
  br i1 %i.ol, label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %.thread.i
  %.not.i.i.i.i.i.i.i.i = icmp ugt i32 %i.oi, 447
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ap, label %.sink.split.i.i.i.i.i, !prof !217

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.aw, ptr noundef nonnull %i.ax, i64 noundef %i.ok, i64 noundef 8) #20
  %.pre.i.i.i.i.i.i = load i32, ptr %i.ay, align 8, !tbaa !55 ; 2 uses
  %.pre.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i.i to i64
  %.pre4.pre.i.pre.i.i.i = load i32, ptr %i.ba, align 8, !tbaa !636
  %.pre.i135.i = load ptr, ptr %i.aw, align 8, !tbaa !13
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.ap, %bb.ao
  %i.om = phi ptr [ %i.ax, %bb.ao ], [ %.pre.i135.i, %bb.ap ] ; 2 uses
  %.pre4.pre.i.i.i.i = phi i32 [ %i.oh, %bb.ao ], [ %.pre4.pre.i.pre.i.i.i, %bb.ap ]
  %.pre-phi.i.i.i.i.i = phi i64 [ 0, %bb.ao ], [ %.pre.i.i.i.i.i, %bb.ap ]
  %i.on = phi i32 [ 0, %bb.ao ], [ %.pre.i.i.i.i.i.i, %bb.ap ]
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %.pre-phi.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ok, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.oo, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !20
  %i.op = add i32 %i.on, %i.oj                    ; 2 uses
  store i32 %i.op, ptr %i.ay, align 8, !tbaa !55
  %i.oq = zext i32 %i.op to i64
  br label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i, %.thread.i
  %i.or = phi ptr [ %i.ax, %.thread.i ], [ %i.om, %.sink.split.i.i.i.i.i ]
  %i.os = phi i64 [ 0, %.thread.i ], [ %i.oq, %.sink.split.i.i.i.i.i ]
  %i.ot = phi i32 [ %i.oh, %.thread.i ], [ %.pre4.pre.i.i.i.i, %.sink.split.i.i.i.i.i ]
  %i.ou = and i32 %i.ot, 63                       ; 2 uses
  %.not.i.i.i.i.i.i34 = icmp eq i32 %i.ou, 0
  br i1 %.not.i.i.i.i.i.i34, label %_ZN4llvm12LiveRegUnitsC2ERKNS_18TargetRegisterInfoE.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i.i.i
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = shl nsw i64 -1, %i.ov
  %i.ox = xor i64 %i.ow, -1
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.os
  %i.oz = getelementptr inbounds i8, ptr %i.oy, i64 -8 ; 2 uses
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !20
  %i.pb = and i64 %i.pa, %i.ox
  store i64 %i.pb, ptr %i.oz, align 8, !tbaa !20
  br label %_ZN4llvm12LiveRegUnitsC2ERKNS_18TargetRegisterInfoE.exit.i

_ZN4llvm12LiveRegUnitsC2ERKNS_18TargetRegisterInfoE.exit.i: ; preds = %bb.aq, %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i.i.i
  %i.pc = load ptr, ptr %i.gx, align 8, !tbaa !617 ; 2 uses
  %i.pd = load ptr, ptr %i.gz, align 8, !tbaa !618 ; 2 uses
  %.not121374.i = icmp eq ptr %i.pc, %i.pd
  br i1 %.not121374.i, label %._crit_edge377.i, label %.lr.ph376.i

.lr.ph376.i:                                      ; preds = %_ZN4llvm12LiveRegUnitsC2ERKNS_18TargetRegisterInfoE.exit.i
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oe, i64 392
  br label %bb.as

._crit_edge377.i:                                 ; preds = %._crit_edge373.i, %_ZN4llvm12LiveRegUnitsC2ERKNS_18TargetRegisterInfoE.exit.i
  %i.pf = load ptr, ptr %i.aw, align 8, !tbaa !13 ; 2 uses
  %i.pg = icmp eq ptr %i.pf, %i.ax
  br i1 %i.pg, label %_ZN4llvm12LiveRegUnitsD2Ev.exit.i, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge377.i
  call void @free(ptr noundef %i.pf) #20
  br label %_ZN4llvm12LiveRegUnitsD2Ev.exit.i

_ZN4llvm12LiveRegUnitsD2Ev.exit.i:                ; preds = %bb.ar, %._crit_edge377.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %_ZN12_GLOBAL__N_113FalkorHWPFFix9runOnLoopERN4llvm11MachineLoopERNS1_15MachineFunctionE.exit

bb.as:                                            ; preds = %._crit_edge373.i, %.lr.ph376.i
  %.0111375.i = phi ptr [ %i.pc, %.lr.ph376.i ], [ %i.px, %._crit_edge373.i ] ; 2 uses
  %i.ph = load ptr, ptr %.0111375.i, align 8, !tbaa !621 ; 4 uses
  %i.pi = load i32, ptr %i.ay, align 8, !tbaa !55 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i = icmp eq i32 %i.pi, 0
  br i1 %.not5.i.i.i.i.i.i.i.i, label %_ZN4llvm12LiveRegUnits5clearEv.exit.i, label %.lr.ph.i.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.i.preheader.i.i.i:                 ; preds = %bb.as
  %i.pj = zext i32 %i.pi to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.pj, 3
  %i.pk = load ptr, ptr %i.aw, align 8, !tbaa !13
  call void @llvm.memset.p0.i64(ptr align 8 %i.pk, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !20
  br label %_ZN4llvm12LiveRegUnits5clearEv.exit.i

_ZN4llvm12LiveRegUnits5clearEv.exit.i:            ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.i, %bb.as
  call void @_ZN4llvm12LiveRegUnits11addLiveOutsERKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(360) %i.ph) #20
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 48 ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i138.i = load i64, ptr %i.pl, align 8
  %i.pm = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i138.i, -8
  %i.pn = inttoptr i64 %i.pm to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pn) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.pn, align 8
  %i.po = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i35 = icmp eq i64 %i.po, 0
  br i1 %.not.i.i.i.i.i35, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm17MachineBasicBlock6rbeginEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %_ZN4llvm12LiveRegUnits5clearEv.exit.i
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 44
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !267
  %i.pr = and i32 %i.pq, 4
  %.not45.i.i.i.i.i = icmp eq i32 %i.pr, 0
  br i1 %.not45.i.i.i.i.i, label %_ZN4llvm17MachineBasicBlock6rbeginEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi ptr [ %i.pt, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %i.pn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i, align 8
  %i.ps = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i, -8
  %i.pt = inttoptr i64 %i.ps to ptr               ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 44
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !267
  %i.pw = and i32 %i.pv, 4
  %.not4.i.i.i.i.i = icmp eq i32 %i.pw, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvm17MachineBasicBlock6rbeginEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !449

_ZN4llvm17MachineBasicBlock6rbeginEv.exit.i:      ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZN4llvm12LiveRegUnits5clearEv.exit.i
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %i.pn, %_ZN4llvm12LiveRegUnits5clearEv.exit.i ], [ %i.pn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.pt, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ] ; 2 uses
  %.not307368.i = icmp eq ptr %.sroa.0.1.i.i.i.i.i, %i.pl
  br i1 %.not307368.i, label %._crit_edge373.i, label %.lr.ph372.i

._crit_edge373.i:                                 ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i, %_ZN4llvm17MachineBasicBlock6rbeginEv.exit.i
  %i.px = getelementptr inbounds nuw i8, ptr %.0111375.i, i64 8 ; 2 uses
  %.not121.i = icmp eq ptr %i.px, %i.pd
  br i1 %.not121.i, label %._crit_edge377.i, label %bb.as

.lr.ph372.i:                                      ; preds = %_ZN4llvm17MachineBasicBlock6rbeginEv.exit.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i
  %.sroa.0248.0369.i = phi ptr [ %.sroa.0.1.i.i.i.i176.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i ], [ %.sroa.0.1.i.i.i.i.i, %_ZN4llvm17MachineBasicBlock6rbeginEv.exit.i ] ; 16 uses
  %i.py = call noundef zeroext i1 @_ZN4llvm16AArch64InstrInfo15isStridedAccessERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0248.0369.i) #20
  br i1 %i.py, label %bb.at, label %bb.bx

bb.at:                                            ; preds = %.lr.ph372.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.pz = getelementptr i8, ptr %.sroa.0248.0369.i, i64 32 ; 4 uses
  %.val.i = load ptr, ptr %i.pz, align 8
  %i.qa = getelementptr i8, ptr %.sroa.0248.0369.i, i64 52
  %.val125.i = load i32, ptr %i.qa, align 4, !tbaa !622
  call fastcc void @_ZL11getLoadInfoRKN4llvm12MachineInstrE(ptr dead_on_unwind noalias writable align 8 %10, ptr %.val.i, i32 %.val125.i)
  %.val128.i = load i8, ptr %i.bb, align 8, !tbaa !265, !range !220, !noundef !221
  %i.qb = trunc nuw i8 %.val128.i to i1
  br i1 %i.qb, label %bb.au, label %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit146.thread.i

bb.au:                                            ; preds = %bb.at
  %.sroa.0244.0.copyload.i = load i32, ptr %10, align 8, !tbaa !45 ; 3 uses
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !45 ; 3 uses
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !45 ; 2 uses
  %.sroa.12246.0.copyload.i = load ptr, ptr %.sroa.12246.0..sroa_idx.i, align 8, !tbaa !269 ; 7 uses
  %.sroa.14.0.copyload.i = load i8, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !270
  %i.qc = load ptr, ptr %i.l, align 8, !tbaa !604
  %.not.i139.i = icmp eq i32 %.sroa.0244.0.copyload.i, 0 ; 2 uses
  %.phi.trans.insert.i140.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 104
  %.pre.i141.i = load ptr, ptr %.phi.trans.insert.i140.i, align 8, !tbaa !624 ; 3 uses
  br i1 %.not.i139.i, label %._crit_edge.i142.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qd = zext i32 %.sroa.0244.0.copyload.i to i64
  %i.qe = getelementptr inbounds nuw [2 x i8], ptr %.pre.i141.i, i64 %i.qd
  %i.qf = load i16, ptr %i.qe, align 2, !tbaa !625
  %i.qg = and i16 %i.qf, 15
  %i.qh = zext nneg i16 %i.qg to i64
  br label %._crit_edge.i142.i

._crit_edge.i142.i:                               ; preds = %bb.av, %bb.au
  %i.qi = phi i64 [ %i.qh, %bb.av ], [ 0, %bb.au ]
  %i.qj = zext i32 %.sroa.5.0.copyload.i to i64
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %.pre.i141.i, i64 %i.qj
  %i.ql = load i16, ptr %i.qk, align 2, !tbaa !625
  %i.qm = zext i16 %i.ql to i64
  %i.qn = icmp eq ptr %.sroa.12246.0.copyload.i, null ; 2 uses
  br i1 %i.qn, label %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit146.i, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i142.i
  %i.qo = load i32, ptr %.sroa.12246.0.copyload.i, align 8
  %trunc.i143.i = trunc i32 %i.qo to i8
  switch i8 %trunc.i143.i, label %bb.ay [
    i8 10, label %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit146.thread.i
    i8 9, label %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit146.thread.i
    i8 6, label %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit146.thread.i
    i8 0, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.12246.0.copyload.i, i64 4
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !266
  %i.qr = zext i32 %i.qq to i64
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr %.pre.i141.i, i64 %i.qr
  %i.qt = load i16, ptr %i.qs, align 2, !tbaa !625
  %i.qu = or i16 %i.qt, 32
  %i.qv = zext i16 %i.qu to i64
  br label %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit146.i

bb.ay:                                            ; preds = %bb.aw
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.12246.0.copyload.i, i64 16
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !266
  %i.qy = lshr i64 %i.qx, 2
  br label %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit146.i

_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit146.i: ; preds = %bb.ay, %bb.ax, %._crit_edge.i142.i
  %.0.i144.i = phi i64 [ %i.qy, %bb.ay ], [ %i.qv, %bb.ax ], [ 0, %._crit_edge.i142.i ]
  %i.qz = shl nuw nsw i64 %i.qm, 4
  %i.ra = and i64 %i.qz, 240
  %i.rb = shl i64 %.0.i144.i, 8
  %i.rc = and i64 %i.rb, 16128
  %i.rd = or i64 %i.ra, %i.qi
  %i.re = or i64 %i.rd, %i.rc
  %.sroa.0239.0.extract.trunc.i = trunc nuw nsw i64 %i.re to i32 ; 5 uses
  %i.rf = load ptr, ptr %i.ao, align 8, !tbaa !233, !noalias !637 ; 3 uses
  %i.rg = load ptr, ptr %i.ar, align 8, !tbaa !234, !noalias !637 ; 3 uses
  %i.rh = load i32, ptr %i.aq, align 4, !tbaa !232, !noalias !637 ; 4 uses
  %i.ri = icmp eq i32 %i.rh, 0
  br i1 %i.ri, label %.loopexit.i189.i, label %bb.az

bb.az:                                            ; preds = %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit146.i
  %i.rj = add i32 %i.rh, -1                       ; 2 uses
  %i.rk = mul nuw nsw i32 %.sroa.0239.0.extract.trunc.i, 37
  %.024.i.i188.i = and i32 %i.rk, %i.rj           ; 3 uses
  %i.rl = zext nneg i32 %.024.i.i188.i to i64     ; 2 uses
  %i.rm = getelementptr inbounds nuw [56 x i8], ptr %i.rf, i64 %i.rl ; 2 uses
  %i.rn = lshr i64 %i.rl, 5
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %i.rn
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !45
  %i.rq = and i32 %.024.i.i188.i, 31
  %i.rr = lshr i32 %i.rp, %i.rq
  %i.rs = trunc i32 %i.rr to i1
  br i1 %i.rs, label %.lr.ph.i.i200.i, label %.loopexit.i189.i, !prof !47

bb.ba:                                            ; preds = %.lr.ph.i.i200.i
  %i.rt = add nuw i32 %.025.i.i201.i, 1
  %.0.i.i202.i = and i32 %i.rt, %i.rj             ; 3 uses
  %i.ru = zext i32 %.0.i.i202.i to i64            ; 2 uses
  %i.rv = getelementptr inbounds nuw [56 x i8], ptr %i.rf, i64 %i.ru ; 2 uses
  %i.rw = lshr i64 %i.ru, 5
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %i.rw
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !45
  %i.rz = and i32 %.0.i.i202.i, 31
  %i.sa = lshr i32 %i.ry, %i.rz
  %i.sb = trunc i32 %i.sa to i1
  br i1 %i.sb, label %.lr.ph.i.i200.i, label %.loopexit.i189.i, !prof !48, !llvm.loop !2

.lr.ph.i.i200.i:                                  ; preds = %bb.az, %bb.ba
  %i.sc = phi ptr [ %i.rv, %bb.ba ], [ %i.rm, %bb.az ] ; 3 uses
  %.025.i.i201.i = phi i32 [ %.0.i.i202.i, %bb.ba ], [ %.024.i.i188.i, %bb.az ]
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !45
  %i.se = icmp eq i32 %i.sd, %.sroa.0239.0.extract.trunc.i
  br i1 %i.se, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit203.i, label %bb.ba, !prof !42

.loopexit.i189.i:                                 ; preds = %bb.ba, %bb.az, %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit146.i
  %.lcssa30.sink.i.ph.i190.i = phi ptr [ %i.rm, %bb.az ], [ null, %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit146.i ], [ %i.rv, %bb.ba ]
  %i.sf = load i32, ptr %i.ap, align 8, !tbaa !247
  %i.sg = shl i32 %i.sf, 2
  %i.sh = add i32 %i.sg, 4
  %i.si = mul i32 %i.rh, 3
  %.not.i.i191.i = icmp ult i32 %i.sh, %i.si
  br i1 %.not.i.i191.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit203.thread.i, label %bb.bb, !prof !42

bb.bb:                                            ; preds = %.loopexit.i189.i
  %i.sj = shl i32 %i.rh, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, i32 noundef %i.sj)
  %i.sk = load ptr, ptr %i.ao, align 8, !tbaa !233, !noalias !638 ; 5 uses
  %i.sl = load ptr, ptr %i.ar, align 8, !tbaa !234, !noalias !638 ; 5 uses
  %i.sm = load i32, ptr %i.aq, align 4, !tbaa !232, !noalias !638 ; 2 uses
  %i.sn = icmp ne i32 %i.sm, 0
  call void @llvm.assume(i1 %i.sn)
  %i.so = add i32 %i.sm, -1                       ; 2 uses
  %i.sp = mul nuw nsw i32 %.sroa.0239.0.extract.trunc.i, 37
  %.024.i206.i = and i32 %i.so, %i.sp             ; 3 uses
  %i.sq = zext nneg i32 %.024.i206.i to i64       ; 2 uses
  %i.sr = getelementptr inbounds nuw [56 x i8], ptr %i.sk, i64 %i.sq ; 2 uses
  %i.ss = lshr i64 %i.sq, 5
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.ss
  %i.su = load i32, ptr %i.st, align 4, !tbaa !45
  %i.sv = and i32 %.024.i206.i, 31
  %i.sw = lshr i32 %i.su, %i.sv
  %i.sx = trunc i32 %i.sw to i1
  br i1 %i.sx, label %.lr.ph.i209.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit203.thread.i, !prof !47

bb.bc:                                            ; preds = %.lr.ph.i209.i
  %i.sy = add nuw i32 %.025.i210.i, 1
  %.0.i211.i = and i32 %i.sy, %i.so               ; 3 uses
  %i.sz = zext i32 %.0.i211.i to i64              ; 2 uses
  %i.ta = getelementptr inbounds nuw [56 x i8], ptr %i.sk, i64 %i.sz ; 2 uses
  %i.tb = lshr i64 %i.sz, 5
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.tb
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !45
  %i.te = and i32 %.0.i211.i, 31
  %i.tf = lshr i32 %i.td, %i.te
  %i.tg = trunc i32 %i.tf to i1
  br i1 %i.tg, label %.lr.ph.i209.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit203.thread.i, !prof !48, !llvm.loop !2

.lr.ph.i209.i:                                    ; preds = %bb.bb, %bb.bc
  %i.th = phi ptr [ %i.ta, %bb.bc ], [ %i.sr, %bb.bb ] ; 2 uses
  %.025.i210.i = phi i32 [ %.0.i211.i, %bb.bc ], [ %.024.i206.i, %bb.bb ]
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !45
  %i.tj = icmp eq i32 %i.ti, %.sroa.0239.0.extract.trunc.i
  br i1 %i.tj, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit203.thread.i, label %bb.bc, !prof !42

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit203.thread.i: ; preds = %.lr.ph.i209.i, %bb.bc, %bb.bb, %.loopexit.i189.i
  %i.tk = phi ptr [ %i.rf, %.loopexit.i189.i ], [ %i.sk, %bb.bb ], [ %i.sk, %bb.bc ], [ %i.sk, %.lr.ph.i209.i ]
  %i.tl = phi ptr [ %i.rg, %.loopexit.i189.i ], [ %i.sl, %bb.bb ], [ %i.sl, %bb.bc ], [ %i.sl, %.lr.ph.i209.i ]
  %i.tm = phi ptr [ %.lcssa30.sink.i.ph.i190.i, %.loopexit.i189.i ], [ %i.sr, %bb.bb ], [ %i.th, %.lr.ph.i209.i ], [ %i.ta, %bb.bc ] ; 6 uses
  %i.tn = ptrtoint ptr %i.tm to i64
  %i.to = ptrtoint ptr %i.tk to i64
  %i.tp = sub i64 %i.tn, %i.to
  %i.tq = sdiv exact i64 %i.tp, 56                ; 2 uses
  %i.tr = trunc i64 %i.tq to i32
  %i.ts = and i32 %i.tr, 31
  %i.tt = shl nuw i32 1, %i.ts
  %i.tu = lshr i64 %i.tq, 5
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %i.tu ; 2 uses
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !45
  %i.tx = or i32 %i.tt, %i.tw
  store i32 %i.tx, ptr %i.tv, align 4, !tbaa !45
  %i.ty = load i32, ptr %i.ap, align 8, !tbaa !247
  %i.tz = add i32 %i.ty, 1
  store i32 %i.tz, ptr %i.ap, align 8, !tbaa !247
  store i32 %.sroa.0239.0.extract.trunc.i, ptr %i.tm, align 4, !tbaa !45
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tm, i64 24
  store ptr %i.ub, ptr %i.ua, align 8, !tbaa !13
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  store i32 0, ptr %i.uc, align 8, !tbaa !55
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tm, i64 20
  store i32 4, ptr %i.ud, align 4, !tbaa !56
  br label %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit146.thread.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit203.i: ; preds = %.lr.ph.i.i200.i
  %.phi.trans.insert410.i = getelementptr inbounds nuw i8, ptr %i.sc, i64 16 ; 3 uses
  %.pre411.i = load i32, ptr %.phi.trans.insert410.i, align 8, !tbaa !55
  %i.ue = icmp ult i32 %.pre411.i, 2
  %i.uf = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  br i1 %i.ue, label %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit146.thread.i, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_.exit203.i
  %i.ug = load i8, ptr @_ZL10FixCounter, align 8, !tbaa !277, !range !220, !noundef !221
  %i.uh = trunc nuw i8 %i.ug to i1
  br i1 %i.uh, label %_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit.i, label %_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit.thread.i

_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit.i: ; preds = %bb.bd
  %i.ui = call noundef zeroext i1 @_ZN4llvm12DebugCounter17shouldExecuteImplERNS0_11CounterInfoE(ptr noundef nonnull align 8 dereferenceable(200) @_ZL10FixCounter) #20
  br i1 %i.ui, label %_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit.thread.i, label %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit146.thread.i

_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit.thread.i: ; preds = %_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit.i, %bb.bd
  %i.uj = getelementptr inbounds nuw i8, ptr %.sroa.0248.0369.i, i64 40
  %i.uk = load i24, ptr %i.uj, align 8            ; 2 uses
  %.not378.i = icmp eq i24 %i.uk, 0
  br i1 %.not378.i, label %._crit_edge357.i, label %.lr.ph356.i

.lr.ph356.i:                                      ; preds = %_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit.thread.i
  %i.ul = load ptr, ptr %9, align 8               ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 56
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.uo = load ptr, ptr %i.aw, align 8
  %i.up = zext i32 %.sroa.9.0.copyload.i to i64
  %wide.trip.count.i = zext i24 %i.uk to i64
  br label %bb.be

._crit_edge357.i:                                 ; preds = %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.i, %_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit.thread.i
  %i.uq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3584), align 8, !tbaa !640
  %i.ur = zext i32 %i.uq to i64
  %i.us = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3584), i64 %i.ur ; 2 uses
  %i.ut = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3600), align 8, !tbaa !641 ; 2 uses
  %i.uu = zext i16 %i.ut to i64
  %.idx379.i = shl nuw nsw i64 %i.uu, 1
  %i.uv = getelementptr inbounds nuw i8, ptr %i.us, i64 %.idx379.i
  %.not122358.i = icmp eq i16 %i.ut, 0
  br i1 %.not122358.i, label %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit146.thread.i, label %.lr.ph361.i

.lr.ph361.i:                                      ; preds = %._crit_edge357.i
  %i.uw = load ptr, ptr %9, align 8, !tbaa !634   ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 56
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.uz = load ptr, ptr %i.aw, align 8
  %i.va = zext i32 %.sroa.0244.0.copyload.i to i64
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.12246.0.copyload.i, i64 4
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.12246.0.copyload.i, i64 16
  %.pre412.i = load ptr, ptr %i.ux, align 8, !tbaa !642, !noalias !643 ; 2 uses
  %.not17.i.i = icmp eq ptr %.pre412.i, null
  br label %bb.bg

bb.be:                                            ; preds = %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.i, %.lr.ph356.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph356.i ], [ %indvars.iv.next.i, %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.i ] ; 3 uses
  %i.vd = icmp eq i64 %indvars.iv.i, %i.up
  br i1 %i.vd, label %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ve = load ptr, ptr %i.pz, align 8, !tbaa !644
  %i.vf = getelementptr inbounds nuw [32 x i8], ptr %i.ve, i64 %indvars.iv.i ; 2 uses
  %i.vg = load i32, ptr %i.vf, align 8            ; 2 uses
  %i.vh = and i32 %i.vg, 805306623
  %or.cond302.i = icmp ne i32 %i.vh, 0
  %i.vi = and i32 %i.vg, 17825536
  %or.cond304.not.i = icmp eq i32 %i.vi, 16777216
  %or.cond309.i = or i1 %or.cond302.i, %or.cond304.not.i
  br i1 %or.cond309.i, label %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.i, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread.i

_ZNK4llvm14MachineOperand8readsRegEv.exit.thread.i: ; preds = %bb.bf
  %i.vj = load ptr, ptr %i.um, align 8, !tbaa !642, !noalias !645 ; 2 uses
  %.not11.i.i = icmp eq ptr %i.vj, null
  br i1 %.not11.i.i, label %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.i, label %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i.i

_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i.i:   ; preds = %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread.i
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vf, i64 4
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !266
  %i.vm = load ptr, ptr %i.un, align 8, !tbaa !646, !noalias !645
  %i.vn = zext i32 %i.vl to i64
  %i.vo = getelementptr inbounds nuw [24 x i8], ptr %i.vm, i64 %i.vn
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !648, !noalias !645 ; 2 uses
  %i.vr = lshr i32 %i.vq, 12
  %i.vs = zext nneg i32 %i.vr to i64
  %i.vt = getelementptr inbounds nuw [2 x i8], ptr %i.vj, i64 %i.vs
  %i.vu = and i32 %i.vq, 4095
  br label %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i

_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i:         ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i, %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i.i
  %.sroa.55.013.i.i = phi ptr [ %i.vt, %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i.i ], [ %i.wd, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i ] ; 2 uses
  %.sroa.9.012.i.i = phi i32 [ %i.vu, %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i.i ], [ %i.wg, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i ] ; 3 uses
  %i.vv = and i32 %.sroa.9.012.i.i, 63
  %i.vw = zext nneg i32 %i.vv to i64
  %i.vx = shl nuw i64 1, %i.vw
  %i.vy = lshr i32 %.sroa.9.012.i.i, 6
  %i.vz = zext nneg i32 %i.vy to i64
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %i.vz ; 2 uses
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !20
  %i.wc = or i64 %i.vx, %i.wb
  store i64 %i.wc, ptr %i.wa, align 8, !tbaa !20
  %i.wd = getelementptr inbounds nuw i8, ptr %.sroa.55.013.i.i, i64 2
  %i.we = load i16, ptr %.sroa.55.013.i.i, align 2, !tbaa !625 ; 2 uses
  %i.wf = sext i16 %i.we to i32
  %i.wg = add i32 %.sroa.9.012.i.i, %i.wf
  %.not.i.i.i150.i = icmp eq i16 %i.we, 0
  br i1 %.not.i.i.i150.i, label %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.i, label %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i

_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.i: ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i, %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread.i, %bb.bf, %bb.be
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge357.i, label %bb.be, !llvm.loop !462

bb.bg:                                            ; preds = %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread293.i, %.lr.ph361.i
  %.0105359.i = phi ptr [ %i.us, %.lr.ph361.i ], [ %i.abo, %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread293.i ] ; 2 uses
  %i.wh = load i16, ptr %.0105359.i, align 2, !tbaa !625 ; 3 uses
  %i.wi = zext i16 %i.wh to i32                   ; 6 uses
  br i1 %.not17.i.i, label %.loopexit310.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bg
  %i.wj = load ptr, ptr %i.uy, align 8, !tbaa !646, !noalias !643
  %i.wk = zext i16 %i.wh to i64
  %i.wl = getelementptr inbounds nuw [24 x i8], ptr %i.wj, i64 %i.wk
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 16
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !648, !noalias !643 ; 2 uses
  %i.wo = lshr i32 %i.wn, 12
  %i.wp = zext nneg i32 %i.wo to i64
  %i.wq = getelementptr inbounds nuw [2 x i8], ptr %.pre412.i, i64 %i.wp
  %i.wr = and i32 %i.wn, 4095
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i153.i, %.lr.ph.i.i
  %.sroa.510.019.i.i = phi ptr [ %i.wq, %.lr.ph.i.i ], [ %i.xa, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i153.i ] ; 2 uses
  %.sroa.9.018.i.i = phi i32 [ %i.wr, %.lr.ph.i.i ], [ %i.xd, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i153.i ] ; 3 uses
  %i.ws = and i32 %.sroa.9.018.i.i, 63
  %i.wt = zext nneg i32 %i.ws to i64
  %i.wu = shl nuw i64 1, %i.wt
  %i.wv = lshr i32 %.sroa.9.018.i.i, 6
  %i.ww = zext nneg i32 %i.wv to i64
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %i.ww
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !20
  %i.wz = and i64 %i.wu, %i.wy
  %.not16.i.i = icmp eq i64 %i.wz, 0
  br i1 %.not16.i.i, label %_ZN4llvm17MCRegUnitIteratorppEv.exit.i153.i, label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread293.i

_ZN4llvm17MCRegUnitIteratorppEv.exit.i153.i:      ; preds = %bb.bh
  %i.xa = getelementptr inbounds nuw i8, ptr %.sroa.510.019.i.i, i64 2
  %i.xb = load i16, ptr %.sroa.510.019.i.i, align 2, !tbaa !625 ; 2 uses
  %i.xc = sext i16 %i.xb to i32
  %i.xd = add i32 %.sroa.9.018.i.i, %i.xc
  %.not.i.i.i154.i = icmp eq i16 %i.xb, 0
  br i1 %.not.i.i.i154.i, label %.loopexit310.i, label %bb.bh

.loopexit310.i:                                   ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i153.i, %bb.bg
  %i.xe = and i32 %i.wi, 63
  %i.xf = zext nneg i32 %i.xe to i64
  %i.xg = shl nuw i64 1, %i.xf
  %i.xh = lshr i32 %i.wi, 6
  %i.xi = zext nneg i32 %i.xh to i64
  %i.xj = load ptr, ptr %i.pe, align 8, !tbaa !13
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.xj, i64 %i.xi
  %i.xl = load i64, ptr %i.xk, align 8, !tbaa !20
  %i.xm = and i64 %i.xl, %i.xg
  %.not308.i = icmp eq i64 %i.xm, 0
  br i1 %.not308.i, label %bb.bi, label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread293.i

bb.bi:                                            ; preds = %.loopexit310.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.xn = load ptr, ptr %i.l, align 8, !tbaa !604
  %.phi.trans.insert.i156.i = getelementptr inbounds nuw i8, ptr %i.xn, i64 104
  %.pre.i157.i = load ptr, ptr %.phi.trans.insert.i156.i, align 8, !tbaa !624 ; 3 uses
  br i1 %.not.i139.i, label %._crit_edge.i158.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.xo = getelementptr inbounds nuw [2 x i8], ptr %.pre.i157.i, i64 %i.va
  %i.xp = load i16, ptr %i.xo, align 2, !tbaa !625
  %i.xq = and i16 %i.xp, 15
  %i.xr = zext nneg i16 %i.xq to i64
  br label %._crit_edge.i158.i

._crit_edge.i158.i:                               ; preds = %bb.bj, %bb.bi
  %i.xs = phi i64 [ %i.xr, %bb.bj ], [ 0, %bb.bi ]
  %i.xt = zext i16 %i.wh to i64
  %i.xu = getelementptr inbounds nuw [2 x i8], ptr %.pre.i157.i, i64 %i.xt
  %i.xv = load i16, ptr %i.xu, align 2, !tbaa !625
  %i.xw = zext i16 %i.xv to i64
  br i1 %i.qn, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.i158.i
  %i.xx = load i32, ptr %.sroa.12246.0.copyload.i, align 8
  %trunc.i159.i = trunc i32 %i.xx to i8
  switch i8 %trunc.i159.i, label %bb.bm [
    i8 10, label %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit162.i
    i8 9, label %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit162.i
    i8 6, label %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit162.i
    i8 0, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.xy = load i32, ptr %i.vb, align 4, !tbaa !266
  %i.xz = zext i32 %i.xy to i64
  %i.ya = getelementptr inbounds nuw [2 x i8], ptr %.pre.i157.i, i64 %i.xz
  %i.yb = load i16, ptr %i.ya, align 2, !tbaa !625
  %i.yc = or i16 %i.yb, 32
  %i.yd = zext i16 %i.yc to i64
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.ye = load i64, ptr %i.vc, align 8, !tbaa !266
  %i.yf = lshr i64 %i.ye, 2
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %._crit_edge.i158.i
  %.0.i160.i = phi i64 [ %i.yf, %bb.bm ], [ %i.yd, %bb.bl ], [ 0, %._crit_edge.i158.i ]
  %i.yg = shl nuw nsw i64 %i.xw, 4
  %i.yh = and i64 %i.yg, 240
  %i.yi = shl i64 %.0.i160.i, 8
  %i.yj = and i64 %i.yi, 16128
  %i.yk = or i64 %i.yh, %i.xs
  %i.yl = or i64 %i.yk, %i.yj
  %i.ym = trunc nuw nsw i64 %i.yl to i32
  br label %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit162.i

_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit162.i: ; preds = %bb.bn, %bb.bk, %bb.bk, %bb.bk
  %.sroa.2.0.i161.i = phi i32 [ %i.ym, %bb.bn ], [ 0, %bb.bk ], [ 0, %bb.bk ], [ 0, %bb.bk ] ; 3 uses
  store i32 %.sroa.2.0.i161.i, ptr %i.a, align 4, !tbaa !45
  %i.yn = load ptr, ptr %i.ao, align 8, !tbaa !233, !noalias !649
  %i.yo = load ptr, ptr %i.ar, align 8, !tbaa !234, !noalias !649 ; 2 uses
  %i.yp = load i32, ptr %i.aq, align 4, !tbaa !232, !noalias !649 ; 2 uses
  %i.yq = icmp eq i32 %i.yp, 0
  br i1 %i.yq, label %.loopexit.i, label %bb.bo

bb.bo:                                            ; preds = %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit162.i
  %i.yr = add i32 %i.yp, -1                       ; 2 uses
  %i.ys = mul nuw nsw i32 %.sroa.2.0.i161.i, 37
  %.017.i.i.i.i = and i32 %i.yr, %i.ys            ; 3 uses
  %i.yt = zext nneg i32 %.017.i.i.i.i to i64      ; 2 uses
  %i.yu = lshr i64 %i.yt, 5
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %i.yu
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !45
  %i.yx = and i32 %.017.i.i.i.i, 31
  %i.yy = lshr i32 %i.yw, %i.yx
  %i.yz = trunc i32 %i.yy to i1
  br i1 %i.yz, label %.lr.ph.i.i.i163.i, label %.loopexit.i, !prof !47

bb.bp:                                            ; preds = %.lr.ph.i.i.i163.i
  %i.za = add nuw i32 %.018.i.i.i.i, 1
  %.0.i.i.i.i = and i32 %i.za, %i.yr              ; 3 uses
  %i.zb = zext i32 %.0.i.i.i.i to i64             ; 2 uses
  %i.zc = lshr i64 %i.zb, 5
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %i.zc
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !45
  %i.zf = and i32 %.0.i.i.i.i, 31
  %i.zg = lshr i32 %i.ze, %i.zf
  %i.zh = trunc i32 %i.zg to i1
  br i1 %i.zh, label %.lr.ph.i.i.i163.i, label %.loopexit.i, !prof !48

.lr.ph.i.i.i163.i:                                ; preds = %bb.bo, %bb.bp
  %i.zi = phi i64 [ %i.zb, %bb.bp ], [ %i.yt, %bb.bo ]
  %.018.i.i.i.i = phi i32 [ %.0.i.i.i.i, %bb.bp ], [ %.017.i.i.i.i, %bb.bo ]
  %i.zj = getelementptr inbounds nuw [56 x i8], ptr %i.yn, i64 %i.zi
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !45
  %i.zl = icmp eq i32 %.sroa.2.0.i161.i, %i.zk
  br i1 %i.zl, label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread297.i, label %bb.bp, !prof !42

_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread297.i: ; preds = %.lr.ph.i.i.i163.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread293.i

.loopexit.i:                                      ; preds = %bb.bo, %_ZL6getTagPKN4llvm18TargetRegisterInfoERKNS_12MachineInstrERKN12_GLOBAL__N_18LoadInfoE.exit162.i, %bb.bp
  %i.zm = getelementptr inbounds nuw i8, ptr %.sroa.0248.0369.i, i64 72
  %.sroa.015.0.copyload.i = load ptr, ptr %i.zm, align 8, !tbaa !278 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store ptr %.sroa.015.0.copyload.i, ptr %11, align 8, !tbaa !278
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  %i.zn = load ptr, ptr %i.j, align 8, !tbaa !603
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 8
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !650
  %i.zq = getelementptr inbounds i8, ptr %i.zp, i64 -180640
  %i.zr = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.ph, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0248.0369.i, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.zq, i32 %i.wi) ; 2 uses
  %i.zs = extractvalue { ptr, ptr } %i.zr, 0      ; 3 uses
  %i.zt = extractvalue { ptr, ptr } %i.zr, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr null, ptr %i.bd, align 8, !tbaa !280, !alias.scope !651
  store i32 14, ptr %i.be, align 4, !tbaa !266, !alias.scope !651
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false), !alias.scope !651
  store i32 0, ptr %7, align 8, !alias.scope !651
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.zt, ptr noundef nonnull align 8 dereferenceable(1065) %i.zs, ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr null, ptr %i.bg, align 8, !tbaa !280, !alias.scope !652
  store i32 %.sroa.5.0.copyload.i, ptr %i.bh, align 4, !tbaa !266, !alias.scope !652
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false), !alias.scope !652
  store i32 0, ptr %6, align 8, !alias.scope !652
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.zt, ptr noundef nonnull align 8 dereferenceable(1065) %i.zs, ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i32 1, ptr %5, align 8, !alias.scope !653
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.zt, ptr noundef nonnull align 8 dereferenceable(1065) %i.zs, ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.zu = load ptr, ptr %i.pz, align 8, !tbaa !644
  %i.zv = zext i32 %.sroa.9.0.copyload.i to i64
  %i.zw = getelementptr inbounds nuw [32 x i8], ptr %i.zu, i64 %i.zv
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.zw, i32 %i.wi) #20
  %i.zx = trunc nuw i8 %.sroa.14.0.copyload.i to i1
  br i1 %i.zx, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.loopexit.i
  %i.zy = load ptr, ptr %i.pz, align 8, !tbaa !644
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.zy, i32 %i.wi) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i164.i = load i64, ptr %.sroa.0248.0369.i, align 8
  %i.zz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i164.i, 4
  %.not.i.i.i.i165.i = icmp eq i64 %i.zz, 0
  br i1 %.not.i.i.i.i165.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i167.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i167.i: ; preds = %bb.bq
  %i.aaa = getelementptr inbounds nuw i8, ptr %.sroa.0248.0369.i, i64 44
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !267
  %i.aac = and i32 %i.aab, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.aac, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i168.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i168.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i167.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i168.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.aae, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i168.i ], [ %.sroa.0248.0369.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i167.i ]
  %i.aad = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !253 ; 3 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 44
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !267
  %i.aah = and i32 %i.aag, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.aah, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i168.i, !llvm.loop !448

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i168.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i167.i, %bb.bq
  %.sroa.0.1.i.i.i.i166.i = phi ptr [ %.sroa.0248.0369.i, %bb.bq ], [ %.sroa.0248.0369.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i167.i ], [ %i.aae, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i168.i ]
  %i.aai = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i166.i, i64 8
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store ptr %.sroa.015.0.copyload.i, ptr %12, align 8, !tbaa !278
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false)
  %i.aak = load ptr, ptr %i.j, align 8, !tbaa !603
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !650
  %i.aan = getelementptr inbounds i8, ptr %i.aam, i64 -180640
  %i.aao = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.ph, ptr %i.aaj, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.aan, i32 %.sroa.5.0.copyload.i) ; 2 uses
  %i.aap = extractvalue { ptr, ptr } %i.aao, 0    ; 3 uses
  %i.aaq = extractvalue { ptr, ptr } %i.aao, 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %i.bl, align 8, !tbaa !280, !alias.scope !654
  store i32 14, ptr %i.bm, align 4, !tbaa !266, !alias.scope !654
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false), !alias.scope !654
  store i32 0, ptr %4, align 8, !alias.scope !654
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aaq, ptr noundef nonnull align 8 dereferenceable(1065) %i.aap, ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr null, ptr %i.bo, align 8, !tbaa !280, !alias.scope !655
  store i32 %i.wi, ptr %i.bp, align 4, !tbaa !266, !alias.scope !655
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false), !alias.scope !655
  store i32 0, ptr %3, align 8, !alias.scope !655
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aaq, ptr noundef nonnull align 8 dereferenceable(1065) %i.aap, ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i32 1, ptr %2, align 8, !alias.scope !656
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aaq, ptr noundef nonnull align 8 dereferenceable(1065) %i.aap, ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.br

bb.br:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, %.loopexit.i
  %i.aar = load i32, ptr %.phi.trans.insert410.i, align 8, !tbaa !55 ; 3 uses
  %i.aas = zext i32 %i.aar to i64                 ; 2 uses
  %.not124364.i = icmp eq i32 %i.aar, 0
  br i1 %.not124364.i, label %.loopexit311.i, label %.lr.ph367.i

.lr.ph367.i:                                      ; preds = %bb.br
  %i.aat = load ptr, ptr %i.uf, align 8, !tbaa !13 ; 3 uses
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bt
  %indvars.iv.next406.i = add nuw nsw i64 %indvars.iv405.i, 1 ; 2 uses
  %.not124.i = icmp eq i64 %indvars.iv.next406.i, %i.aas
  br i1 %.not124.i, label %.loopexit311.i, label %bb.bt, !llvm.loop !479

bb.bt:                                            ; preds = %bb.bs, %.lr.ph367.i
  %indvars.iv405.i = phi i64 [ 0, %.lr.ph367.i ], [ %indvars.iv.next406.i, %bb.bs ] ; 3 uses
  %i.aau = getelementptr inbounds nuw [8 x i8], ptr %i.aat, i64 %indvars.iv405.i
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !631 ; 2 uses
  %i.aaw = icmp eq ptr %i.aav, %.sroa.0248.0369.i
  br i1 %i.aaw, label %bb.bu, label %bb.bs

bb.bu:                                            ; preds = %bb.bt
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.aat, i64 %indvars.iv405.i
  %i.aay = shl nuw i64 %i.aas, 32
  %sext.i = add i64 %i.aay, -4294967296
  %i.aaz = ashr exact i64 %sext.i, 29
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aat, i64 %i.aaz ; 2 uses
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !631
  store ptr %i.abb, ptr %i.aax, align 8, !tbaa !631
  store ptr %i.aav, ptr %i.aba, align 8, !tbaa !631
  %i.abc = add i32 %i.aar, -1
  store i32 %i.abc, ptr %.phi.trans.insert410.i, align 8, !tbaa !55
  br label %.loopexit311.i

.loopexit311.i:                                   ; preds = %bb.bs, %bb.bu, %bb.br
  %i.abd = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_12MachineInstrELj4EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.fca.0.extract.i169.i = extractvalue { ptr, i8 } %i.abd, 0 ; 3 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i169.i, i64 8 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i169.i, i64 16 ; 3 uses
  %i.abg = load i32, ptr %i.abf, align 8, !tbaa !55 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i169.i, i64 20
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !56
  %.not.i170.i = icmp ult i32 %i.abg, %i.abi
  br i1 %.not.i170.i, label %bb.bw, label %bb.bv, !prof !42

bb.bv:                                            ; preds = %.loopexit311.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.abe, ptr noundef nonnull %.sroa.0248.0369.i)
  br label %.thread300.i

bb.bw:                                            ; preds = %.loopexit311.i
end_hunk_1
