inline.NumInlined: 20898
inline.NumDeleted: 6710
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_121ArraysOverlapFunctionIfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  %i.qh = ptrtoint ptr %i.qd to i64
  %i.qi = sub i64 %i.qg, %i.qh
  call void @_ZdlPvm(ptr noundef nonnull %i.qd, i64 noundef %i.qi) #45
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cm, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i.i.i.i.i, i64 noundef 120) #45
  %.pre3.i.i.i.i.i = load ptr, ptr %i.gx, align 8, !tbaa !1867
  br label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i

_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i, %.noexc107, %bb.cf
  %i.qj = phi ptr [ %i.pu, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i ], [ %.pre3.i.i.i.i.i, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i ], [ %i.ph, %bb.cf ], [ %i.pn, %.noexc107 ] ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 58
  %i.ql = load i8, ptr %i.qk, align 2, !tbaa !1919, !range !92, !noundef !93
  %i.qm = trunc nuw i8 %i.ql to i1
  br i1 %i.qm, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_121ArraysOverlapFunctionIfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qj, i64 59
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !1920, !range !92, !noundef !93
  %i.qp = trunc nuw i8 %i.qo to i1
  br i1 %i.qp, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qj, i64 64
  %i.qr = load i32, ptr %i.qq, align 8, !tbaa !1921
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_121ArraysOverlapFunctionIfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i

bb.cp:                                            ; preds = %bb.cn
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !1922
  %i.qu = sext i32 %i.pg to i64
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.qt, i64 %i.qu
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_121ArraysOverlapFunctionIfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_121ArraysOverlapFunctionIfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i: ; preds = %bb.cp, %bb.co, %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i
  %.0.i.i17.i.i.i.i.i = phi i32 [ %i.qw, %bb.cp ], [ %i.qr, %bb.co ], [ %i.pg, %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i ]
  %.val.i18.i.i.i.i.i = load ptr, ptr %i.nu, align 8, !tbaa !1797
  %.val3.i19.i.i.i.i.i = load ptr, ptr %i.nv, align 8, !tbaa !1800
  %i.qx = sext i32 %.0.i.i17.i.i.i.i.i to i64     ; 2 uses
  %i.qy = getelementptr inbounds [4 x i8], ptr %.val3.i19.i.i.i.i.i, i64 %i.qx
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !3  ; 2 uses
  %i.ra = getelementptr inbounds [4 x i8], ptr %.val.i18.i.i.i.i.i, i64 %i.qx
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !3  ; 2 uses
  %i.rc = load ptr, ptr %15, align 8, !tbaa !3894 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 15
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !1827
  %i.rf = icmp eq i8 %i.re, -1
  br i1 %i.rf, label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE5resetEv.exit.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_121ArraysOverlapFunctionIfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i
  %i.rg = load i64, ptr %i.hr, align 8, !tbaa !1823 ; 4 uses
  %i.rh = and i64 %i.rg, 252
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.rh, 0  ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rc, i64 12
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.ri, align 1
  %i.rj = icmp ult i64 %i.rg, 256
  br i1 %i.rj, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i, label %bb.ct

bb.cs:                                            ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %i.rk = load ptr, ptr %15, align 8, !tbaa !3894 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 12
  store i16 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.rl, align 1
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hr, align 8, !tbaa !1823
  br label %bb.ct

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cr, %.preheader.i.i.i.i.i.i.i.i.i
  %.018.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ro, %.preheader.i.i.i.i.i.i.i.i.i ], [ 0, %bb.cr ] ; 2 uses
  %i.rm = load ptr, ptr %15, align 8, !tbaa !3894
  %i.rn = getelementptr inbounds nuw [64 x i8], ptr %i.rm, i64 %.018.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.rn, i8 0, i64 16, i1 false)
  %i.ro = add nuw i64 %.018.i.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %i.rp = load i64, ptr %i.hr, align 8, !tbaa !1823
  %i.rq = and i64 %i.rp, 255
  %.0.highbits.i.i.i.i.i.i.i.i.i = lshr i64 %i.ro, %i.rq
  %i.rr = icmp eq i64 %.0.highbits.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.rr, label %.preheader.i.i.i.i.i.i.i.i.i, label %bb.cs, !llvm.loop !3908

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.rs = phi ptr [ %i.rk, %bb.cs ], [ %i.rc, %bb.cr ]
  %i.rt = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %bb.cs ], [ %i.rg, %bb.cr ]
  store i64 0, ptr %i.ns, align 8, !tbaa !106
  %i.ru = and i64 %i.rt, 255                      ; 2 uses
  store i64 %i.ru, ptr %i.hr, align 8, !tbaa !1823
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cq
  %i.rv = phi ptr [ %i.rs, %bb.ct ], [ %i.rc, %bb.cq ] ; 2 uses
  %i.rw = phi i64 [ %i.ru, %bb.ct ], [ %i.rg, %bb.cq ] ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE5resetEv.exit.i.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 12
  %.0.copyload.i17.i.i.i.i.i.i.i.i.i = load i16, ptr %i.rx, align 1
  %i.ry = zext i16 %.0.copyload.i17.i.i.i.i.i.i.i.i.i to i64
  %i.rz = icmp eq i64 %i.rw, 0
  %i.sa = shl nuw nsw i64 %i.ry, 2
  %i.sb = add nuw nsw i64 %i.sa, 16
  %i.sc = shl i64 64, %i.rw
  %.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.rz, i64 %i.sb, i64 %i.sc
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %15, align 8, !tbaa !3894
  store i64 0, ptr %i.hr, align 8, !tbaa !1823
  call void @_ZdlPvm(ptr noundef nonnull %i.rv, i64 noundef %.0.i.i.i.i.i.i.i.i.i.i) #43
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE5resetEv.exit.i.i.i.i.i

_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE5resetEv.exit.i.i.i.i.i: ; preds = %bb.cv, %bb.cu, %_ZZNK8facebook5velox9functions12_GLOBAL__N_121ArraysOverlapFunctionIfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i
  store i8 0, ptr %i.nt, align 8, !tbaa !392
  %i.sd = icmp sgt i32 %i.qz, 0
  br i1 %i.sd, label %.lr.ph.i60.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_111generateSetIfEEvPKNS0_11ArrayVectorEPKNS0_13DecodedVectorEiRNS2_11SetWithNullIT_EE.exit.i.i.i.i

.lr.ph.i60.i.i.i.i:                               ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE5resetEv.exit.i.i.i.i.i
  %i.se = add nsw i32 %i.rb, %i.qz
  %i.sf = sext i32 %i.rb to i64
  %i.sg = sext i32 %i.se to i64
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE19tryEmplaceValueImplIfJfEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIfEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i, %.lr.ph.i60.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %i.sf, %.lr.ph.i60.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE19tryEmplaceValueImplIfJfEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIfEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i ] ; 7 uses
  %i.sh = load ptr, ptr %i.nw, align 8, !tbaa !1935 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.sh, null
  %.pre.i.i.i.i = load i8, ptr %i.nx, align 2, !tbaa !1919, !range !92
  %.pre82.i.i.i.i = trunc nuw i8 %.pre.i.i.i.i to i1 ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i, label %bb.cx

._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i: ; preds = %bb.cw
  %i.si = trunc nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.sj = load ptr, ptr %i.ob, align 8, !tbaa !2919 ; 2 uses
  br i1 %.pre82.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i, label %bb.dc

bb.cx:                                            ; preds = %bb.cw
  %i.sk = load i8, ptr %i.ny, align 1, !range !92
  %i.sl = trunc nuw i8 %i.sk to i1
  %or.cond.i.i.i.i.i.i = select i1 %.pre82.i.i.i.i, i1 true, i1 %i.sl
  br i1 %or.cond.i.i.i.i.i.i, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.sm = lshr i64 %indvars.iv.i.i.i.i.i, 6
  %i.sn = and i64 %i.sm, 67108863
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %i.sn
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !106
  %i.sq = and i64 %indvars.iv.i.i.i.i.i, 63
  %i.sr = shl nuw i64 1, %i.sq
  %i.ss = and i64 %i.sp, %i.sr
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ss, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.db, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.st = load i8, ptr %i.nz, align 1, !tbaa !1920, !range !92, !noundef !93
  %i.su = trunc nuw i8 %i.st to i1
  br i1 %i.su, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.sv = load ptr, ptr %i.oa, align 8, !tbaa !1922
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %indvars.iv.i.i.i.i.i
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !3
  %i.sy = zext i32 %i.sx to i64                   ; 2 uses
  %i.sz = lshr i64 %i.sy, 6
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %i.sz
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !106
  %i.tc = and i64 %i.sy, 63
  %i.td = shl nuw i64 1, %i.tc
  %i.te = and i64 %i.td, %i.tb
  %.not.i7.i.i.i.i.i.i = icmp eq i64 %i.te, 0
  br i1 %.not.i7.i.i.i.i.i.i, label %bb.db, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i: ; preds = %bb.cz
  %i.tf = load i64, ptr %i.sh, align 8, !tbaa !106
  %i.tg = and i64 %i.tf, 1
  %.not.i6.i.i.i.i.i.i = icmp eq i64 %i.tg, 0
  br i1 %.not.i6.i.i.i.i.i.i, label %bb.db, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i

bb.db:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, %bb.da, %bb.cy
  store i8 1, ptr %i.nt, align 8, !tbaa !392
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE19tryEmplaceValueImplIfJfEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIfEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, %bb.da
  %i.th = load ptr, ptr %i.ob, align 8, !tbaa !2919
  br label %bb.dc

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i: ; preds = %bb.cy
  %i.ti = trunc nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.tj = load ptr, ptr %i.ob, align 8, !tbaa !2919 ; 2 uses
  br i1 %.pre82.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i
  %i.tk = phi ptr [ %i.th, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i ], [ %i.tj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ], [ %i.sj, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ] ; 2 uses
  %i.tl = load i8, ptr %i.nz, align 1, !tbaa !1920, !range !92, !noundef !93
  %i.tm = trunc nuw i8 %i.tl to i1
  br i1 %i.tm, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.tn = load i32, ptr %i.oc, align 8, !tbaa !1921
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i

bb.de:                                            ; preds = %bb.dc
  %i.to = load ptr, ptr %i.oa, align 8, !tbaa !1922
  %16 = shl nsw i64 %indvars.iv.i.i.i.i.i, 2
  %17 = getelementptr inbounds i8, ptr %i.to, i64 %16
  %i.tp = load i32, ptr %17, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i: ; preds = %bb.de, %bb.dd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i
  %i.tq = phi ptr [ %i.tk, %bb.de ], [ %i.tk, %bb.dd ], [ %i.tj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ], [ %i.sj, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ]
  %.0.i.i.i63.i.i.i.i = phi i32 [ %i.tp, %bb.de ], [ %i.tn, %bb.dd ], [ %i.ti, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ], [ %i.si, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ]
  %i.tr = sext i32 %.0.i.i.i63.i.i.i.i to i64
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.tq, i64 %i.tr
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !3909 ; 5 uses
  %i.tu = load atomic i8, ptr @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash acquire, align 8, !noalias !3910
  %i.tv = icmp eq i8 %i.tu, 0
  br i1 %i.tv, label %bb.df, label %bb.dg, !prof !3919

bb.df:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i
  %i.tw = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash) #43, !noalias !3910
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.tw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dg, label %_ZNK5folly6detail12float_hasherIfEclERKf.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK5folly6detail12float_hasherIfEclERKf.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.df
  store i64 7476675141552221795, ptr @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash, align 8, !tbaa !106, !noalias !3910
  %i.tx = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash), !noalias !3910 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash) #43, !noalias !3910
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNK5folly6detail12float_hasherIfEclERKf.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.df, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i
  %i.ty = fcmp uno float %i.tt, 0.000000e+00      ; 2 uses
  br i1 %i.ty, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.tz = load i64, ptr @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash, align 8, !tbaa !106, !noalias !3910
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i

bb.di:                                            ; preds = %bb.dg
  %i.ua = fcmp oeq float %i.tt, 0.000000e+00
  br i1 %i.ua, label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ub = bitcast float %i.tt to i32
  %.0.insert.ext.i2.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.ub to i64 ; 2 uses
  %i.uc = xor i64 %.0.insert.ext.i2.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ud = shl nuw nsw i64 %.0.insert.ext.i2.i.i.i.i.i.i.i.i.i.i.i.i, 21
  %i.ue = add nsw i64 %i.ud, %i.uc                ; 2 uses
  %i.uf = lshr i64 %i.ue, 24
  %i.ug = xor i64 %i.uf, %i.ue
  %i.uh = mul nsw i64 %i.ug, 265                  ; 2 uses
  %i.ui = lshr i64 %i.uh, 14
  %i.uj = xor i64 %i.ui, %i.uh
  %i.uk = mul i64 %i.uj, 21                       ; 2 uses
  %i.ul = lshr i64 %i.uk, 28
  %i.um = xor i64 %i.ul, %i.uk
  %i.un = mul i64 %i.um, 2147483649
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i

_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i: ; preds = %bb.dj, %bb.di, %bb.dh
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tz, %bb.dh ], [ %i.un, %bb.dj ], [ 0, %bb.di ] ; 2 uses
  %i.uo = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i) ; 2 uses
  %i.up = lshr i64 %i.uo, 24
  %i.uq = or i64 %i.up, 128                       ; 4 uses
  %i.ur = add i64 %i.uo, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.us = load i64, ptr %i.hr, align 8, !tbaa !1823, !noalias !3920 ; 4 uses
  %i.ut = lshr i64 %i.us, 8                       ; 3 uses
  %.not.i64.i.i.i.i = icmp eq i64 %i.ut, 0
  %.pre.i65.i.i.i.i = load ptr, ptr %15, align 8, !tbaa !3894, !noalias !3920 ; 3 uses
  br i1 %.not.i64.i.i.i.i, label %..thread64_crit_edge.i.i.i.i.i, label %bb.dk

..thread64_crit_edge.i.i.i.i.i:                   ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i
  %.pre85.i.i.i.i.i = shl nuw i64 1, %i.us
  br label %.thread64.i.i.i.i.i

bb.dk:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i
  %i.uu = shl nuw nsw i64 %i.uq, 1
  %i.uv = or disjoint i64 %i.uu, 1
  %i.uw = trunc nuw i64 %i.uq to i8
  %i.ux = insertelement <16 x i8> poison, i8 %i.uw, i64 0
  %i.uy = shufflevector <16 x i8> %i.ux, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.uz = and i64 %i.us, 255                      ; 4 uses
  %i.va = shl nuw i64 1, %i.uz                    ; 3 uses
  br label %bb.dl

bb.dl:                                            ; preds = %bb.do, %bb.dk
  %.0.i75.i.i.i.i.i = phi i64 [ %i.ur, %bb.dk ], [ %i.vv, %bb.do ] ; 2 uses
  %.022.i74.i.i.i.i.i = phi i64 [ %i.va, %bb.dk ], [ %i.vu, %bb.do ]
  %i.vb = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i75.i.i.i.i.i, i64 range(i64 0, 256) %i.uz)
  %i.vc = getelementptr inbounds nuw [64 x i8], ptr %.pre.i65.i.i.i.i, i64 %i.vb ; 3 uses
  %i.vd = load <16 x i8>, ptr %i.vc, align 16, !noalias !3920 ; 2 uses
  %i.ve = icmp eq <16 x i8> %i.vd, %i.uy
  %i.vf = bitcast <16 x i1> %i.ve to i16
  %i.vg = and i16 %i.vf, 4095
  %i.vh = zext nneg i16 %i.vg to i32
  %i.vi = icmp ne ptr %i.vc, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vc, i64 16
  %i.vk = extractelement <16 x i8> %i.vd, i64 15
  br label %.critedge.i.i66.i.i.i.i

.critedge.i.i66.i.i.i.i:                          ; preds = %bb.dm, %bb.dl
  %.sroa.040.0.i.i.i.i.i = phi i32 [ %i.vh, %bb.dl ], [ %i.vn, %bb.dm ] ; 4 uses
  %.not66.i.i.i.i.i = icmp eq i32 %.sroa.040.0.i.i.i.i.i, 0
  br i1 %.not66.i.i.i.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %.critedge.i.i66.i.i.i.i
  %i.vl = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.0.i.i.i.i.i, i1 true)
  %i.vm = add nsw i32 %.sroa.040.0.i.i.i.i.i, -1
  %i.vn = and i32 %i.vm, %.sroa.040.0.i.i.i.i.i
  %i.vo = zext nneg i32 %i.vl to i64
  call void @llvm.assume(i1 %i.vi), !noalias !3923
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.vo
  %i.vq = load float, ptr %i.vp, align 4, !noalias !3920 ; 2 uses
  %i.vr = fcmp uno float %i.vq, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i = select i1 %i.ty, i1 %i.vr, i1 false
  %i.vs = fcmp oeq float %i.tt, %i.vq
  %.0.i.i.i67.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i, i1 true, i1 %i.vs
  br i1 %.0.i.i.i67.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE19tryEmplaceValueImplIfJfEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIfEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i, label %.critedge.i.i66.i.i.i.i, !prof !79, !llvm.loop !3924

bb.dn:                                            ; preds = %.critedge.i.i66.i.i.i.i
  %i.vt = icmp eq i8 %i.vk, 0
  br i1 %i.vt, label %.thread64.i.i.i.i.i, label %bb.do, !prof !79

bb.do:                                            ; preds = %bb.dn
  %i.vu = add i64 %.022.i74.i.i.i.i.i, -1         ; 2 uses
  %i.vv = add i64 %i.uv, %.0.i75.i.i.i.i.i
  %.not.i.i68.i.i.i.i = icmp eq i64 %i.vu, 0
  br i1 %.not.i.i68.i.i.i.i, label %.thread64.i.i.i.i.i, label %bb.dl, !llvm.loop !3925

.thread64.i.i.i.i.i:                              ; preds = %bb.do, %bb.dn, %..thread64_crit_edge.i.i.i.i.i
  %.pre-phi86.i.i.i.i.i = phi i64 [ %.pre85.i.i.i.i.i, %..thread64_crit_edge.i.i.i.i.i ], [ %i.va, %bb.dn ], [ %i.va, %bb.do ] ; 2 uses
  %.pre-phi84.i.i.i.i.i = phi i64 [ %i.us, %..thread64_crit_edge.i.i.i.i.i ], [ %i.uz, %bb.dn ], [ %i.uz, %bb.do ]
  %i.vw = getelementptr inbounds nuw i8, ptr %.pre.i65.i.i.i.i, i64 12
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.vw, align 1, !noalias !3920
  %i.vx = zext i16 %.0.copyload.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.vy = add i64 %.pre-phi86.i.i.i.i.i, -1
  %i.vz = lshr i64 %i.vy, 12
  %i.wa = add nuw nsw i64 %i.vz, 1
  %i.wb = mul i64 %i.wa, %i.vx                    ; 2 uses
  %.not.i30.i.i.i.i.i = icmp ult i64 %i.ut, %i.wb
  br i1 %.not.i30.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i, label %bb.dp

bb.dp:                                            ; preds = %.thread64.i.i.i.i.i
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(25) %15, i64 noundef %i.ut, i64 noundef %.pre-phi86.i.i.i.i.i, i64 noundef %i.vx, i64 noundef %i.wb)
          to label %.noexc108 unwind label %.loopexit.split-lp145.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc108:                                        ; preds = %bb.dp
  %.pre80.i.i.i.i.i = load ptr, ptr %15, align 8, !tbaa !3894, !noalias !3920
  %.pre81.i.i.i.i.i = load i64, ptr %i.hr, align 8, !tbaa !1823, !noalias !3920
  %.pre82.i.i.i.i.i = and i64 %.pre81.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i: ; preds = %.noexc108, %.thread64.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre-phi84.i.i.i.i.i, %.thread64.i.i.i.i.i ], [ %.pre82.i.i.i.i.i, %.noexc108 ] ; 2 uses
  %i.wc = phi ptr [ %.pre.i65.i.i.i.i, %.thread64.i.i.i.i.i ], [ %.pre80.i.i.i.i.i, %.noexc108 ] ; 3 uses
  %i.wd = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ur, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.we = getelementptr inbounds nuw [64 x i8], ptr %i.wc, i64 %i.wd ; 2 uses
  %i.wf = load <16 x i8>, ptr %i.we, align 16, !tbaa !14, !noalias !3920
  %i.wg = icmp slt <16 x i8> %i.wf, zeroinitializer
  %i.wh = bitcast <16 x i1> %i.wg to i16
  %i.wi = and i16 %i.wh, 4095                     ; 2 uses
  %.not67.i.i.i.i.i = icmp eq i16 %i.wi, 4095
  br i1 %.not67.i.i.i.i.i, label %bb.dq, label %bb.du

bb.dq:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %i.wj = shl nuw nsw i64 %i.uq, 1
  %i.wk = or disjoint i64 %i.wj, 1
  br label %bb.dr

bb.dr:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, %bb.dq
  %i.wl = phi i64 [ %i.wd, %bb.dq ], [ %i.wr, %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %.028.i.i.i.i.i = phi i64 [ %i.ur, %bb.dq ], [ %i.wq, %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %i.wm = getelementptr inbounds nuw [64 x i8], ptr %i.wc, i64 %i.wl
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 15 ; 2 uses
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !3926, !noalias !3920 ; 2 uses
  %.not.i31.i.i.i.i.i = icmp eq i8 %i.wo, -2
  br i1 %.not.i31.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.wp = add i8 %i.wo, 1
  store i8 %i.wp, ptr %i.wn, align 1, !tbaa !3926, !noalias !3920
  br label %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i: ; preds = %bb.ds, %bb.dr
  %i.wq = add i64 %i.wk, %.028.i.i.i.i.i          ; 2 uses
  %i.wr = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.wq, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.ws = getelementptr inbounds nuw [64 x i8], ptr %i.wc, i64 %i.wr ; 3 uses
  %i.wt = load <16 x i8>, ptr %i.ws, align 16, !noalias !3920 ; 2 uses
  %i.wu = icmp slt <16 x i8> %i.wt, zeroinitializer
  %i.wv = bitcast <16 x i1> %i.wu to i16
  %i.ww = and i16 %i.wv, 4095                     ; 2 uses
  %.not68.i.i.i.i.i = icmp eq i16 %i.ww, 4095
  br i1 %.not68.i.i.i.i.i, label %bb.dr, label %bb.dt, !llvm.loop !3928

bb.dt:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i
  %i.wx = extractelement <16 x i8> %i.wt, i64 14
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ws, i64 14
  %i.wz = add i8 %i.wx, 16
  store i8 %i.wz, ptr %i.wy, align 2, !tbaa !3929, !noalias !3920
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %.sroa.034.0.in.in.i.i.i.i.i = phi i16 [ %i.wi, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.ww, %bb.dt ]
  %.1.i.i.i.i.i = phi ptr [ %i.we, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.ws, %bb.dt ] ; 3 uses
  %.sroa.034.0.in.i.i.i.i.i = xor i16 %.sroa.034.0.in.in.i.i.i.i.i, 4095
  %i.xa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in.i.i.i.i.i, i1 true)
  %i.xb = zext nneg i16 %i.xa to i64              ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_121ArraysOverlapFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cm, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i.i.i.i.i, i64 noundef 120) #45
  %.pre3.i.i.i.i.i = load ptr, ptr %i.gx, align 8, !tbaa !1867
  br label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i

_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i, %.noexc107, %bb.cf
  %i.qj = phi ptr [ %i.pu, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i ], [ %.pre3.i.i.i.i.i, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i ], [ %i.ph, %bb.cf ], [ %i.pn, %.noexc107 ] ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 58
  %i.ql = load i8, ptr %i.qk, align 2, !tbaa !1919, !range !92, !noundef !93
  %i.qm = trunc nuw i8 %i.ql to i1
  br i1 %i.qm, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_121ArraysOverlapFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qj, i64 59
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !1920, !range !92, !noundef !93
  %i.qp = trunc nuw i8 %i.qo to i1
  br i1 %i.qp, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qj, i64 64
  %i.qr = load i32, ptr %i.qq, align 8, !tbaa !1921
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_121ArraysOverlapFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i

bb.cp:                                            ; preds = %bb.cn
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !1922
  %i.qu = sext i32 %i.pg to i64
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.qt, i64 %i.qu
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_121ArraysOverlapFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_121ArraysOverlapFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i: ; preds = %bb.cp, %bb.co, %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i
  %.0.i.i17.i.i.i.i.i = phi i32 [ %i.qw, %bb.cp ], [ %i.qr, %bb.co ], [ %i.pg, %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i ]
  %.val.i18.i.i.i.i.i = load ptr, ptr %i.nu, align 8, !tbaa !1797
  %.val3.i19.i.i.i.i.i = load ptr, ptr %i.nv, align 8, !tbaa !1800
  %i.qx = sext i32 %.0.i.i17.i.i.i.i.i to i64     ; 2 uses
  %i.qy = getelementptr inbounds [4 x i8], ptr %.val3.i19.i.i.i.i.i, i64 %i.qx
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !3  ; 2 uses
  %i.ra = getelementptr inbounds [4 x i8], ptr %.val.i18.i.i.i.i.i, i64 %i.qx
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !3  ; 2 uses
  %i.rc = load ptr, ptr %15, align 8, !tbaa !3981 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 15
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !1827
  %i.rf = icmp eq i8 %i.re, -1
  br i1 %i.rf, label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE5resetEv.exit.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_121ArraysOverlapFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i
  %i.rg = load i64, ptr %i.hr, align 8, !tbaa !1823 ; 4 uses
  %i.rh = and i64 %i.rg, 252
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.rh, 0  ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rc, i64 14
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !14
  %i.rk = and i8 %i.rj, 15
  %i.rl = icmp ult i64 %i.rg, 256
  br i1 %i.rl, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.cr
  %.pre.i.i.i.i.i.i.i.i.i = and i64 %i.rg, 255
  br label %bb.ct

bb.cs:                                            ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %i.rm = load ptr, ptr %15, align 8, !tbaa !3981 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 14
  store i8 %i.rk, ptr %i.rn, align 2, !tbaa !3982
  br label %bb.ct

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cr, %.preheader.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i = phi i64 [ %i.rq, %.preheader.i.i.i.i.i.i.i.i.i ], [ 0, %bb.cr ] ; 2 uses
  %i.ro = load ptr, ptr %15, align 8, !tbaa !3981
  %i.rp = getelementptr inbounds nuw [128 x i8], ptr %i.ro, i64 %.017.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.rp, i8 0, i64 16, i1 false)
  %i.rq = add nuw i64 %.017.i.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %i.rr = load i64, ptr %i.hr, align 8, !tbaa !1823
  %i.rs = and i64 %i.rr, 255                      ; 2 uses
  %.0.highbits.i.i.i.i.i.i.i.i.i = lshr i64 %i.rq, %i.rs
  %i.rt = icmp eq i64 %.0.highbits.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.rt, label %.preheader.i.i.i.i.i.i.i.i.i, label %bb.cs, !llvm.loop !3997

bb.ct:                                            ; preds = %bb.cs, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.rs, %bb.cs ] ; 2 uses
  %i.ru = phi ptr [ %i.rc, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.rm, %bb.cs ]
  store i64 0, ptr %i.ns, align 8, !tbaa !106
  store i64 %.pre-phi.i.i.i.i.i.i.i.i.i, ptr %i.hr, align 8, !tbaa !1823
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cq
  %i.rv = phi i64 [ %.pre-phi.i.i.i.i.i.i.i.i.i, %bb.ct ], [ %i.rg, %bb.cq ] ; 2 uses
  %i.rw = phi ptr [ %i.ru, %bb.ct ], [ %i.rc, %bb.cq ] ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE5resetEv.exit.i.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 14
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !14
  %i.rz = icmp eq i64 %i.rv, 0
  %i.sa = shl i8 %i.ry, 3
  %i.sb = and i8 %i.sa, 120
  %narrow.i.i.i.i.i.i.i.i.i = add nuw i8 %i.sb, 16
  %i.sc = zext i8 %narrow.i.i.i.i.i.i.i.i.i to i64
  %i.sd = shl i64 128, %i.rv
  %.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.rz, i64 %i.sc, i64 %i.sd
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %15, align 8, !tbaa !3981
  store i64 0, ptr %i.hr, align 8, !tbaa !1823
  call void @_ZdlPvm(ptr noundef nonnull %i.rw, i64 noundef %.0.i.i.i.i.i.i.i.i.i.i) #43
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE5resetEv.exit.i.i.i.i.i

_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE5resetEv.exit.i.i.i.i.i: ; preds = %bb.cv, %bb.cu, %_ZZNK8facebook5velox9functions12_GLOBAL__N_121ArraysOverlapFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i
  store i8 0, ptr %i.nt, align 8, !tbaa !435
  %i.se = icmp sgt i32 %i.qz, 0
  br i1 %i.se, label %.lr.ph.i60.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_111generateSetIdEEvPKNS0_11ArrayVectorEPKNS0_13DecodedVectorEiRNS2_11SetWithNullIT_EE.exit.i.i.i.i

.lr.ph.i60.i.i.i.i:                               ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE5resetEv.exit.i.i.i.i.i
  %i.sf = add nsw i32 %i.rb, %i.qz
  %i.sg = sext i32 %i.rb to i64
  %i.sh = sext i32 %i.sf to i64
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE19tryEmplaceValueImplIdJdEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIdEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i, %.lr.ph.i60.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %i.sg, %.lr.ph.i60.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE19tryEmplaceValueImplIdJdEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIdEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i ] ; 7 uses
  %i.si = load ptr, ptr %i.nw, align 8, !tbaa !1935 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.si, null
  %.pre.i.i.i.i = load i8, ptr %i.nx, align 2, !tbaa !1919, !range !92
  %.pre83.i.i.i.i = trunc nuw i8 %.pre.i.i.i.i to i1 ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i, label %bb.cx

._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i: ; preds = %bb.cw
  %i.sj = trunc nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.sk = load ptr, ptr %i.ob, align 8, !tbaa !2919 ; 2 uses
  br i1 %.pre83.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i, label %bb.dc

bb.cx:                                            ; preds = %bb.cw
  %i.sl = load i8, ptr %i.ny, align 1, !range !92
  %i.sm = trunc nuw i8 %i.sl to i1
  %or.cond.i.i.i.i.i.i = select i1 %.pre83.i.i.i.i, i1 true, i1 %i.sm
  br i1 %or.cond.i.i.i.i.i.i, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.sn = lshr i64 %indvars.iv.i.i.i.i.i, 6
  %i.so = and i64 %i.sn, 67108863
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %i.so
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !106
  %i.sr = and i64 %indvars.iv.i.i.i.i.i, 63
  %i.ss = shl nuw i64 1, %i.sr
  %i.st = and i64 %i.sq, %i.ss
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.st, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.db, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.su = load i8, ptr %i.nz, align 1, !tbaa !1920, !range !92, !noundef !93
  %i.sv = trunc nuw i8 %i.su to i1
  br i1 %i.sv, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.sw = load ptr, ptr %i.oa, align 8, !tbaa !1922
  %i.sx = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %indvars.iv.i.i.i.i.i
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !3
  %i.sz = zext i32 %i.sy to i64                   ; 2 uses
  %i.ta = lshr i64 %i.sz, 6
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %i.ta
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !106
  %i.td = and i64 %i.sz, 63
  %i.te = shl nuw i64 1, %i.td
  %i.tf = and i64 %i.te, %i.tc
  %.not.i7.i.i.i.i.i.i = icmp eq i64 %i.tf, 0
  br i1 %.not.i7.i.i.i.i.i.i, label %bb.db, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i: ; preds = %bb.cz
  %i.tg = load i64, ptr %i.si, align 8, !tbaa !106
  %i.th = and i64 %i.tg, 1
  %.not.i6.i.i.i.i.i.i = icmp eq i64 %i.th, 0
  br i1 %.not.i6.i.i.i.i.i.i, label %bb.db, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i

bb.db:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, %bb.da, %bb.cy
  store i8 1, ptr %i.nt, align 8, !tbaa !435
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE19tryEmplaceValueImplIdJdEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIdEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, %bb.da
  %i.ti = load ptr, ptr %i.ob, align 8, !tbaa !2919
  br label %bb.dc

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i: ; preds = %bb.cy
  %i.tj = trunc nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.tk = load ptr, ptr %i.ob, align 8, !tbaa !2919 ; 2 uses
  br i1 %.pre83.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i
  %i.tl = phi ptr [ %i.ti, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i ], [ %i.tk, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ], [ %i.sk, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ] ; 2 uses
  %i.tm = load i8, ptr %i.nz, align 1, !tbaa !1920, !range !92, !noundef !93
  %i.tn = trunc nuw i8 %i.tm to i1
  br i1 %i.tn, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.to = load i32, ptr %i.oc, align 8, !tbaa !1921
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i

bb.de:                                            ; preds = %bb.dc
  %i.tp = load ptr, ptr %i.oa, align 8, !tbaa !1922
  %16 = shl nsw i64 %indvars.iv.i.i.i.i.i, 2
  %17 = getelementptr inbounds i8, ptr %i.tp, i64 %16
  %i.tq = load i32, ptr %17, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i: ; preds = %bb.de, %bb.dd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i
  %i.tr = phi ptr [ %i.tl, %bb.de ], [ %i.tl, %bb.dd ], [ %i.tk, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ], [ %i.sk, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ]
  %.0.i.i.i63.i.i.i.i = phi i32 [ %i.tq, %bb.de ], [ %i.to, %bb.dd ], [ %i.tj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ], [ %i.sj, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ]
  %i.ts = sext i32 %.0.i.i.i63.i.i.i.i to i64
  %i.tt = getelementptr inbounds [8 x i8], ptr %i.tr, i64 %i.ts
  %i.tu = load double, ptr %i.tt, align 8, !tbaa !3998 ; 5 uses
  %i.tv = load atomic i8, ptr @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash acquire, align 8, !noalias !4000
  %i.tw = icmp eq i8 %i.tv, 0
  br i1 %i.tw, label %bb.df, label %bb.dg, !prof !3919

bb.df:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i
  %i.tx = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash) #43, !noalias !4000
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.tx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dg, label %_ZNK5folly6detail12float_hasherIdEclERKd.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK5folly6detail12float_hasherIdEclERKd.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.df
  store i64 1573955859343395728, ptr @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash, align 8, !tbaa !106, !noalias !4000
  %i.ty = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash), !noalias !4000 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash) #43, !noalias !4000
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNK5folly6detail12float_hasherIdEclERKd.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.df, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i
  %i.tz = fcmp uno double %i.tu, 0.000000e+00     ; 2 uses
  br i1 %i.tz, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ua = load i64, ptr @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash, align 8, !tbaa !106, !noalias !4000
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i

bb.di:                                            ; preds = %bb.dg
  %i.ub = fcmp oeq double %i.tu, 0.000000e+00
  br i1 %i.ub, label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.uc = bitcast double %i.tu to i64             ; 2 uses
  %i.ud = xor i64 %i.uc, -1
  %i.ue = shl i64 %i.uc, 21
  %i.uf = add i64 %i.ue, %i.ud                    ; 2 uses
  %i.ug = lshr i64 %i.uf, 24
  %i.uh = xor i64 %i.ug, %i.uf
  %i.ui = mul i64 %i.uh, 265                      ; 2 uses
  %i.uj = lshr i64 %i.ui, 14
  %i.uk = xor i64 %i.uj, %i.ui
  %i.ul = mul i64 %i.uk, 21                       ; 2 uses
  %i.um = lshr i64 %i.ul, 28
  %i.un = xor i64 %i.um, %i.ul
  %i.uo = mul i64 %i.un, 2147483649
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i

_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i: ; preds = %bb.dj, %bb.di, %bb.dh
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ua, %bb.dh ], [ %i.uo, %bb.dj ], [ 0, %bb.di ] ; 2 uses
  %i.up = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i) ; 2 uses
  %i.uq = lshr i64 %i.up, 24
  %i.ur = or i64 %i.uq, 128                       ; 4 uses
  %i.us = add i64 %i.up, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.ut = load i64, ptr %i.hr, align 8, !tbaa !1823, !noalias !4009 ; 3 uses
  %i.uu = lshr i64 %i.ut, 8                       ; 3 uses
  %.not.i64.i.i.i.i = icmp eq i64 %i.uu, 0
  %.pre.i65.i.i.i.i = load ptr, ptr %15, align 8, !tbaa !3981, !noalias !4009 ; 3 uses
  br i1 %.not.i64.i.i.i.i, label %.thread64.i.i.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i
  %i.uv = shl nuw nsw i64 %i.ur, 1
  %i.uw = or disjoint i64 %i.uv, 1
  %i.ux = trunc nuw i64 %i.ur to i8
  %i.uy = insertelement <16 x i8> poison, i8 %i.ux, i64 0
  %i.uz = shufflevector <16 x i8> %i.uy, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.va = and i64 %i.ut, 255                      ; 4 uses
  %i.vb = shl nuw i64 1, %i.va
  br label %bb.dl

bb.dl:                                            ; preds = %bb.do, %bb.dk
  %.0.i75.i.i.i.i.i = phi i64 [ %i.us, %bb.dk ], [ %i.vx, %bb.do ] ; 2 uses
  %.023.i74.i.i.i.i.i = phi i64 [ %i.vb, %bb.dk ], [ %i.vw, %bb.do ]
  %i.vc = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i75.i.i.i.i.i, i64 range(i64 0, 256) %i.va)
  %i.vd = getelementptr inbounds nuw [128 x i8], ptr %.pre.i65.i.i.i.i, i64 %i.vc ; 4 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 16
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vd, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.vf, i32 0, i32 3, i32 1), !noalias !4009
  %i.vg = load <16 x i8>, ptr %i.vd, align 16, !noalias !4009 ; 2 uses
  %i.vh = icmp eq <16 x i8> %i.vg, %i.uz
  %i.vi = bitcast <16 x i1> %i.vh to i16
  %i.vj = and i16 %i.vi, 16383
  %i.vk = zext nneg i16 %i.vj to i32
  %i.vl = icmp ne ptr %i.vd, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.vm = extractelement <16 x i8> %i.vg, i64 15
  br label %.critedge.i.i66.i.i.i.i

.critedge.i.i66.i.i.i.i:                          ; preds = %bb.dm, %bb.dl
  %.sroa.040.0.i.i.i.i.i = phi i32 [ %i.vk, %bb.dl ], [ %i.vp, %bb.dm ] ; 4 uses
  %.not66.i.i.i.i.i = icmp eq i32 %.sroa.040.0.i.i.i.i.i, 0
  br i1 %.not66.i.i.i.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %.critedge.i.i66.i.i.i.i
  %i.vn = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.0.i.i.i.i.i, i1 true)
  %i.vo = add nsw i32 %.sroa.040.0.i.i.i.i.i, -1
  %i.vp = and i32 %i.vo, %.sroa.040.0.i.i.i.i.i
  %i.vq = zext nneg i32 %i.vn to i64
  call void @llvm.assume(i1 %i.vl), !noalias !4012
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.ve, i64 %i.vq
  %i.vs = load double, ptr %i.vr, align 8, !noalias !4009 ; 2 uses
  %i.vt = fcmp uno double %i.vs, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i = select i1 %i.tz, i1 %i.vt, i1 false
  %i.vu = fcmp oeq double %i.tu, %i.vs
  %.0.i.i.i67.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i, i1 true, i1 %i.vu
  br i1 %.0.i.i.i67.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE19tryEmplaceValueImplIdJdEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIdEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i, label %.critedge.i.i66.i.i.i.i, !prof !79, !llvm.loop !4013

bb.dn:                                            ; preds = %.critedge.i.i66.i.i.i.i
  %i.vv = icmp eq i8 %i.vm, 0
  br i1 %i.vv, label %.thread64.i.i.i.i.i, label %bb.do, !prof !79

bb.do:                                            ; preds = %bb.dn
  %i.vw = add i64 %.023.i74.i.i.i.i.i, -1         ; 2 uses
  %i.vx = add i64 %i.uw, %.0.i75.i.i.i.i.i
  %.not.i.i68.i.i.i.i = icmp eq i64 %i.vw, 0
  br i1 %.not.i.i68.i.i.i.i, label %.thread64.i.i.i.i.i, label %bb.dl, !llvm.loop !4014

.thread64.i.i.i.i.i:                              ; preds = %bb.do, %bb.dn, %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i
  %.pre-phi84.i.i.i.i.i = phi i64 [ %i.ut, %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i ], [ %i.va, %bb.dn ], [ %i.va, %bb.do ] ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.pre.i65.i.i.i.i, i64 14
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !14, !noalias !4009
  %i.wa = and i8 %i.vz, 15
  %i.wb = zext nneg i8 %i.wa to i64               ; 2 uses
  %i.wc = shl i64 %i.wb, %.pre-phi84.i.i.i.i.i    ; 2 uses
  %.not.i30.i.i.i.i.i = icmp ult i64 %i.uu, %i.wc
  br i1 %.not.i30.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i, label %bb.dp

bb.dp:                                            ; preds = %.thread64.i.i.i.i.i
  %i.wd = shl nuw i64 1, %.pre-phi84.i.i.i.i.i
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(25) %15, i64 noundef %i.uu, i64 noundef %i.wd, i64 noundef %i.wb, i64 noundef %i.wc)
          to label %.noexc108 unwind label %.loopexit.split-lp145.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc108:                                        ; preds = %bb.dp
  %.pre80.i.i.i.i.i = load ptr, ptr %15, align 8, !tbaa !3981, !noalias !4009
  %.pre81.i.i.i.i.i = load i64, ptr %i.hr, align 8, !tbaa !1823, !noalias !4009
  %.pre82.i.i.i.i.i = and i64 %.pre81.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i: ; preds = %.noexc108, %.thread64.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre-phi84.i.i.i.i.i, %.thread64.i.i.i.i.i ], [ %.pre82.i.i.i.i.i, %.noexc108 ] ; 2 uses
  %i.we = phi ptr [ %.pre.i65.i.i.i.i, %.thread64.i.i.i.i.i ], [ %.pre80.i.i.i.i.i, %.noexc108 ] ; 3 uses
  %i.wf = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.us, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.wg = getelementptr inbounds nuw [128 x i8], ptr %i.we, i64 %i.wf ; 2 uses
  %i.wh = load <16 x i8>, ptr %i.wg, align 16, !tbaa !14, !noalias !4009
  %i.wi = icmp slt <16 x i8> %i.wh, zeroinitializer
  %i.wj = bitcast <16 x i1> %i.wi to i16
  %i.wk = and i16 %i.wj, 16383                    ; 2 uses
  %.not67.i.i.i.i.i = icmp eq i16 %i.wk, 16383
  br i1 %.not67.i.i.i.i.i, label %bb.dq, label %bb.du

bb.dq:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %i.wl = shl nuw nsw i64 %i.ur, 1
  %i.wm = or disjoint i64 %i.wl, 1
  br label %bb.dr

bb.dr:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, %bb.dq
  %i.wn = phi i64 [ %i.wf, %bb.dq ], [ %i.wt, %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %.028.i.i.i.i.i = phi i64 [ %i.us, %bb.dq ], [ %i.ws, %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %i.wo = getelementptr inbounds nuw [128 x i8], ptr %i.we, i64 %i.wn
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 15 ; 2 uses
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !4015, !noalias !4009 ; 2 uses
  %.not.i31.i.i.i.i.i = icmp eq i8 %i.wq, -2
  br i1 %.not.i31.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.wr = add i8 %i.wq, 1
  store i8 %i.wr, ptr %i.wp, align 1, !tbaa !4015, !noalias !4009
  br label %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i: ; preds = %bb.ds, %bb.dr
  %i.ws = add i64 %i.wm, %.028.i.i.i.i.i          ; 2 uses
  %i.wt = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ws, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.wu = getelementptr inbounds nuw [128 x i8], ptr %i.we, i64 %i.wt ; 3 uses
  %i.wv = load <16 x i8>, ptr %i.wu, align 16, !noalias !4009 ; 2 uses
  %i.ww = icmp slt <16 x i8> %i.wv, zeroinitializer
  %i.wx = bitcast <16 x i1> %i.ww to i16
  %i.wy = and i16 %i.wx, 16383                    ; 2 uses
  %.not68.i.i.i.i.i = icmp eq i16 %i.wy, 16383
  br i1 %.not68.i.i.i.i.i, label %bb.dr, label %bb.dt, !llvm.loop !4016

bb.dt:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i
  %i.wz = extractelement <16 x i8> %i.wv, i64 14
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wu, i64 14
  %i.xb = add i8 %i.wz, 16
  store i8 %i.xb, ptr %i.xa, align 2, !tbaa !3982, !noalias !4009
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %.sroa.034.0.in.in.i.i.i.i.i = phi i16 [ %i.wk, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.wy, %bb.dt ]
  %.1.i.i.i.i.i = phi ptr [ %i.wg, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.wu, %bb.dt ] ; 3 uses
  %.sroa.034.0.in.i.i.i.i.i = xor i16 %.sroa.034.0.in.in.i.i.i.i.i, 16383
  %i.xc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in.i.i.i.i.i, i1 true)
  %i.xd = zext nneg i16 %i.xc to i64              ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 %i.xd ; 2 uses
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !14, !noalias !4009
  %i.xg = icmp eq i8 %i.xf, 0
  br i1 %i.xg, label %_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit.i.i.i.i.i, label %bb.dv

end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb1EfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  %i.rs = ptrtoint ptr %i.ro to i64
  %i.rt = sub i64 %i.rr, %i.rs
  call void @_ZdlPvm(ptr noundef nonnull %i.ro, i64 noundef %i.rt) #45
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cu, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i.i.i.i.i, i64 noundef 120) #45
  %.pre3.i.i.i.i.i = load ptr, ptr %i.ii, align 8, !tbaa !1867
  br label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i

_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i, %.noexc144, %bb.cn
  %i.ru = phi ptr [ %i.rf, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i ], [ %.pre3.i.i.i.i.i, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i ], [ %i.qs, %bb.cn ], [ %i.qy, %.noexc144 ] ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 58
  %i.rw = load i8, ptr %i.rv, align 2, !tbaa !1919, !range !92, !noundef !93
  %i.rx = trunc nuw i8 %i.rw to i1
  br i1 %i.rx, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb1EfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 59
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !1920, !range !92, !noundef !93
  %i.sa = trunc nuw i8 %i.rz to i1
  br i1 %i.sa, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ru, i64 64
  %i.sc = load i32, ptr %i.sb, align 8, !tbaa !1921
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb1EfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i

bb.cx:                                            ; preds = %bb.cv
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !1922
  %i.sf = sext i32 %i.qr to i64
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.se, i64 %i.sf
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb1EfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb1EfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i: ; preds = %bb.cx, %bb.cw, %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i
  %.0.i.i17.i.i.i.i.i = phi i32 [ %i.sh, %bb.cx ], [ %i.sc, %bb.cw ], [ %i.qr, %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i ]
  %.val.i18.i.i.i.i.i = load ptr, ptr %i.pf, align 8, !tbaa !1797
  %.val3.i19.i.i.i.i.i = load ptr, ptr %i.pg, align 8, !tbaa !1800
  %i.si = sext i32 %.0.i.i17.i.i.i.i.i to i64     ; 2 uses
  %i.sj = getelementptr inbounds [4 x i8], ptr %.val3.i19.i.i.i.i.i, i64 %i.si
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !3  ; 2 uses
  %i.sl = getelementptr inbounds [4 x i8], ptr %.val.i18.i.i.i.i.i, i64 %i.si
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !3  ; 2 uses
  %i.sn = load ptr, ptr %22, align 8, !tbaa !3894 ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 15
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !1827
  %i.sq = icmp eq i8 %i.sp, -1
  br i1 %i.sq, label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE5resetEv.exit.i.i.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb1EfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i
  %i.sr = load i64, ptr %i.jc, align 8, !tbaa !1823 ; 4 uses
  %i.ss = and i64 %i.sr, 252
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ss, 0  ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sn, i64 12
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.st, align 1
  %i.su = icmp ult i64 %i.sr, 256
  br i1 %i.su, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i, label %bb.db

bb.da:                                            ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %i.sv = load ptr, ptr %22, align 8, !tbaa !3894 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 12
  store i16 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.sw, align 1
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jc, align 8, !tbaa !1823
  br label %bb.db

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cz, %.preheader.i.i.i.i.i.i.i.i.i
  %.018.i.i.i.i.i.i.i.i.i = phi i64 [ %i.sz, %.preheader.i.i.i.i.i.i.i.i.i ], [ 0, %bb.cz ] ; 2 uses
  %i.sx = load ptr, ptr %22, align 8, !tbaa !3894
  %i.sy = getelementptr inbounds nuw [64 x i8], ptr %i.sx, i64 %.018.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.sy, i8 0, i64 16, i1 false)
  %i.sz = add nuw i64 %.018.i.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %i.ta = load i64, ptr %i.jc, align 8, !tbaa !1823
  %i.tb = and i64 %i.ta, 255
  %.0.highbits.i.i.i.i.i.i.i.i.i = lshr i64 %i.sz, %i.tb
  %i.tc = icmp eq i64 %.0.highbits.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.tc, label %.preheader.i.i.i.i.i.i.i.i.i, label %bb.da, !llvm.loop !3908

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.td = phi ptr [ %i.sv, %bb.da ], [ %i.sn, %bb.cz ]
  %i.te = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %bb.da ], [ %i.sr, %bb.cz ]
  store i64 0, ptr %i.pd, align 8, !tbaa !106
  %i.tf = and i64 %i.te, 255                      ; 2 uses
  store i64 %i.tf, ptr %i.jc, align 8, !tbaa !1823
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cy
  %i.tg = phi ptr [ %i.td, %bb.db ], [ %i.sn, %bb.cy ] ; 2 uses
  %i.th = phi i64 [ %i.tf, %bb.db ], [ %i.sr, %bb.cy ] ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE5resetEv.exit.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 12
  %.0.copyload.i17.i.i.i.i.i.i.i.i.i = load i16, ptr %i.ti, align 1
  %i.tj = zext i16 %.0.copyload.i17.i.i.i.i.i.i.i.i.i to i64
  %i.tk = icmp eq i64 %i.th, 0
  %i.tl = shl nuw nsw i64 %i.tj, 2
  %i.tm = add nuw nsw i64 %i.tl, 16
  %i.tn = shl i64 64, %i.th
  %.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.tk, i64 %i.tm, i64 %i.tn
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %22, align 8, !tbaa !3894
  store i64 0, ptr %i.jc, align 8, !tbaa !1823
  call void @_ZdlPvm(ptr noundef nonnull %i.tg, i64 noundef %.0.i.i.i.i.i.i.i.i.i.i) #43
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE5resetEv.exit.i.i.i.i.i

_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE5resetEv.exit.i.i.i.i.i: ; preds = %bb.dd, %bb.dc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb1EfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i
  store i8 0, ptr %i.pe, align 8, !tbaa !392
  %i.to = icmp sgt i32 %i.sk, 0
  br i1 %i.to, label %.lr.ph.i60.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_111generateSetIfEEvPKNS0_11ArrayVectorEPKNS0_13DecodedVectorEiRNS2_11SetWithNullIT_EE.exit.i.i.i.i

.lr.ph.i60.i.i.i.i:                               ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE5resetEv.exit.i.i.i.i.i
  %i.tp = add nsw i32 %i.sm, %i.sk
  %i.tq = sext i32 %i.sm to i64
  %i.tr = sext i32 %i.tp to i64
  br label %bb.de

bb.de:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE19tryEmplaceValueImplIfJfEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIfEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i, %.lr.ph.i60.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %i.tq, %.lr.ph.i60.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE19tryEmplaceValueImplIfJfEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIfEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i ] ; 7 uses
  %i.ts = load ptr, ptr %i.ph, align 8, !tbaa !1935 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ts, null
  %.pre.i.i.i.i = load i8, ptr %i.pi, align 2, !tbaa !1919, !range !92
  %.pre82.i.i.i.i = trunc nuw i8 %.pre.i.i.i.i to i1 ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i, label %bb.df

._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i: ; preds = %bb.de
  %i.tt = trunc nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.tu = load ptr, ptr %i.pm, align 8, !tbaa !2919 ; 2 uses
  br i1 %.pre82.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i, label %bb.dk

bb.df:                                            ; preds = %bb.de
  %i.tv = load i8, ptr %i.pj, align 1, !range !92
  %i.tw = trunc nuw i8 %i.tv to i1
  %or.cond.i.i.i.i.i.i = select i1 %.pre82.i.i.i.i, i1 true, i1 %i.tw
  br i1 %or.cond.i.i.i.i.i.i, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.tx = lshr i64 %indvars.iv.i.i.i.i.i, 6
  %i.ty = and i64 %i.tx, 67108863
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %i.ty
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !106
  %i.ub = and i64 %indvars.iv.i.i.i.i.i, 63
  %i.uc = shl nuw i64 1, %i.ub
  %i.ud = and i64 %i.ua, %i.uc
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ud, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.dj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i

bb.dh:                                            ; preds = %bb.df
  %i.ue = load i8, ptr %i.pk, align 1, !tbaa !1920, !range !92, !noundef !93
  %i.uf = trunc nuw i8 %i.ue to i1
  br i1 %i.uf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ug = load ptr, ptr %i.pl, align 8, !tbaa !1922
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %indvars.iv.i.i.i.i.i
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !3
  %i.uj = zext i32 %i.ui to i64                   ; 2 uses
  %i.uk = lshr i64 %i.uj, 6
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %i.uk
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !106
  %i.un = and i64 %i.uj, 63
  %i.uo = shl nuw i64 1, %i.un
  %i.up = and i64 %i.uo, %i.um
  %.not.i7.i.i.i.i.i.i = icmp eq i64 %i.up, 0
  br i1 %.not.i7.i.i.i.i.i.i, label %bb.dj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i: ; preds = %bb.dh
  %i.uq = load i64, ptr %i.ts, align 8, !tbaa !106
  %i.ur = and i64 %i.uq, 1
  %.not.i6.i.i.i.i.i.i = icmp eq i64 %i.ur, 0
  br i1 %.not.i6.i.i.i.i.i.i, label %bb.dj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i

bb.dj:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, %bb.di, %bb.dg
  store i8 1, ptr %i.pe, align 8, !tbaa !392
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE19tryEmplaceValueImplIfJfEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIfEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, %bb.di
  %i.us = load ptr, ptr %i.pm, align 8, !tbaa !2919
  br label %bb.dk

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i: ; preds = %bb.dg
  %i.ut = trunc nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.uu = load ptr, ptr %i.pm, align 8, !tbaa !2919 ; 2 uses
  br i1 %.pre82.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i
  %i.uv = phi ptr [ %i.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i ], [ %i.uu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ], [ %i.tu, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ] ; 2 uses
  %i.uw = load i8, ptr %i.pk, align 1, !tbaa !1920, !range !92, !noundef !93
  %i.ux = trunc nuw i8 %i.uw to i1
  br i1 %i.ux, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.uy = load i32, ptr %i.pn, align 8, !tbaa !1921
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.uz = load ptr, ptr %i.pl, align 8, !tbaa !1922
  %29 = shl nsw i64 %indvars.iv.i.i.i.i.i, 2
  %30 = getelementptr inbounds i8, ptr %i.uz, i64 %29
  %i.va = load i32, ptr %30, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i: ; preds = %bb.dm, %bb.dl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i
  %i.vb = phi ptr [ %i.uv, %bb.dm ], [ %i.uv, %bb.dl ], [ %i.uu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ], [ %i.tu, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ]
  %.0.i.i.i63.i.i.i.i = phi i32 [ %i.va, %bb.dm ], [ %i.uy, %bb.dl ], [ %i.ut, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ], [ %i.tt, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ]
  %i.vc = sext i32 %.0.i.i.i63.i.i.i.i to i64
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.vb, i64 %i.vc
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !3909 ; 5 uses
  %i.vf = load atomic i8, ptr @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash acquire, align 8, !noalias !5200
  %i.vg = icmp eq i8 %i.vf, 0
  br i1 %i.vg, label %bb.dn, label %bb.do, !prof !3919

bb.dn:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i
  %i.vh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash) #43, !noalias !5200
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.vh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.do, label %_ZNK5folly6detail12float_hasherIfEclERKf.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK5folly6detail12float_hasherIfEclERKf.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dn
  store i64 7476675141552221795, ptr @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash, align 8, !tbaa !106, !noalias !5200
  %i.vi = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash), !noalias !5200 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash) #43, !noalias !5200
  br label %bb.do

bb.do:                                            ; preds = %_ZNK5folly6detail12float_hasherIfEclERKf.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dn, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i
  %i.vj = fcmp uno float %i.ve, 0.000000e+00      ; 2 uses
  br i1 %i.vj, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.vk = load i64, ptr @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash, align 8, !tbaa !106, !noalias !5200
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i

bb.dq:                                            ; preds = %bb.do
  %i.vl = fcmp oeq float %i.ve, 0.000000e+00
  br i1 %i.vl, label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.vm = bitcast float %i.ve to i32
  %.0.insert.ext.i2.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.vm to i64 ; 2 uses
  %i.vn = xor i64 %.0.insert.ext.i2.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.vo = shl nuw nsw i64 %.0.insert.ext.i2.i.i.i.i.i.i.i.i.i.i.i.i, 21
  %i.vp = add nsw i64 %i.vo, %i.vn                ; 2 uses
  %i.vq = lshr i64 %i.vp, 24
  %i.vr = xor i64 %i.vq, %i.vp
  %i.vs = mul nsw i64 %i.vr, 265                  ; 2 uses
  %i.vt = lshr i64 %i.vs, 14
  %i.vu = xor i64 %i.vt, %i.vs
  %i.vv = mul i64 %i.vu, 21                       ; 2 uses
  %i.vw = lshr i64 %i.vv, 28
  %i.vx = xor i64 %i.vw, %i.vv
  %i.vy = mul i64 %i.vx, 2147483649
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i

_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i: ; preds = %bb.dr, %bb.dq, %bb.dp
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.vk, %bb.dp ], [ %i.vy, %bb.dr ], [ 0, %bb.dq ] ; 2 uses
  %i.vz = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i) ; 2 uses
  %i.wa = lshr i64 %i.vz, 24
  %i.wb = or i64 %i.wa, 128                       ; 4 uses
  %i.wc = add i64 %i.vz, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.wd = load i64, ptr %i.jc, align 8, !tbaa !1823, !noalias !5209 ; 4 uses
  %i.we = lshr i64 %i.wd, 8                       ; 3 uses
  %.not.i64.i.i.i.i = icmp eq i64 %i.we, 0
  %.pre.i65.i.i.i.i = load ptr, ptr %22, align 8, !tbaa !3894, !noalias !5209 ; 3 uses
  br i1 %.not.i64.i.i.i.i, label %..thread64_crit_edge.i.i.i.i.i, label %bb.ds

..thread64_crit_edge.i.i.i.i.i:                   ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i
  %.pre85.i.i.i.i.i = shl nuw i64 1, %i.wd
  br label %.thread64.i.i.i.i.i

bb.ds:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i
  %i.wf = shl nuw nsw i64 %i.wb, 1
  %i.wg = or disjoint i64 %i.wf, 1
  %i.wh = trunc nuw i64 %i.wb to i8
  %i.wi = insertelement <16 x i8> poison, i8 %i.wh, i64 0
  %i.wj = shufflevector <16 x i8> %i.wi, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.wk = and i64 %i.wd, 255                      ; 4 uses
  %i.wl = shl nuw i64 1, %i.wk                    ; 3 uses
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dw, %bb.ds
  %.0.i75.i.i.i.i.i = phi i64 [ %i.wc, %bb.ds ], [ %i.xg, %bb.dw ] ; 2 uses
  %.022.i74.i.i.i.i.i = phi i64 [ %i.wl, %bb.ds ], [ %i.xf, %bb.dw ]
  %i.wm = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i75.i.i.i.i.i, i64 range(i64 0, 256) %i.wk)
  %i.wn = getelementptr inbounds nuw [64 x i8], ptr %.pre.i65.i.i.i.i, i64 %i.wm ; 3 uses
  %i.wo = load <16 x i8>, ptr %i.wn, align 16, !noalias !5209 ; 2 uses
  %i.wp = icmp eq <16 x i8> %i.wo, %i.wj
  %i.wq = bitcast <16 x i1> %i.wp to i16
  %i.wr = and i16 %i.wq, 4095
  %i.ws = zext nneg i16 %i.wr to i32
  %i.wt = icmp ne ptr %i.wn, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %i.wv = extractelement <16 x i8> %i.wo, i64 15
  br label %.critedge.i.i66.i.i.i.i

.critedge.i.i66.i.i.i.i:                          ; preds = %bb.du, %bb.dt
  %.sroa.040.0.i.i.i.i.i = phi i32 [ %i.ws, %bb.dt ], [ %i.wy, %bb.du ] ; 4 uses
  %.not66.i.i.i.i.i = icmp eq i32 %.sroa.040.0.i.i.i.i.i, 0
  br i1 %.not66.i.i.i.i.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %.critedge.i.i66.i.i.i.i
  %i.ww = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.0.i.i.i.i.i, i1 true)
  %i.wx = add nsw i32 %.sroa.040.0.i.i.i.i.i, -1
  %i.wy = and i32 %i.wx, %.sroa.040.0.i.i.i.i.i
  %i.wz = zext nneg i32 %i.ww to i64
  call void @llvm.assume(i1 %i.wt), !noalias !5212
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %i.wz
  %i.xb = load float, ptr %i.xa, align 4, !noalias !5209 ; 2 uses
  %i.xc = fcmp uno float %i.xb, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i = select i1 %i.vj, i1 %i.xc, i1 false
  %i.xd = fcmp oeq float %i.ve, %i.xb
  %.0.i.i.i67.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i, i1 true, i1 %i.xd
  br i1 %.0.i.i.i67.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE19tryEmplaceValueImplIfJfEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIfEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i, label %.critedge.i.i66.i.i.i.i, !prof !79, !llvm.loop !3924

bb.dv:                                            ; preds = %.critedge.i.i66.i.i.i.i
  %i.xe = icmp eq i8 %i.wv, 0
  br i1 %i.xe, label %.thread64.i.i.i.i.i, label %bb.dw, !prof !79

bb.dw:                                            ; preds = %bb.dv
  %i.xf = add i64 %.022.i74.i.i.i.i.i, -1         ; 2 uses
  %i.xg = add i64 %i.wg, %.0.i75.i.i.i.i.i
  %.not.i.i68.i.i.i.i = icmp eq i64 %i.xf, 0
  br i1 %.not.i.i68.i.i.i.i, label %.thread64.i.i.i.i.i, label %bb.dt, !llvm.loop !3925

.thread64.i.i.i.i.i:                              ; preds = %bb.dw, %bb.dv, %..thread64_crit_edge.i.i.i.i.i
  %.pre-phi86.i.i.i.i.i = phi i64 [ %.pre85.i.i.i.i.i, %..thread64_crit_edge.i.i.i.i.i ], [ %i.wl, %bb.dv ], [ %i.wl, %bb.dw ] ; 2 uses
  %.pre-phi84.i.i.i.i.i = phi i64 [ %i.wd, %..thread64_crit_edge.i.i.i.i.i ], [ %i.wk, %bb.dv ], [ %i.wk, %bb.dw ]
  %i.xh = getelementptr inbounds nuw i8, ptr %.pre.i65.i.i.i.i, i64 12
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.xh, align 1, !noalias !5209
  %i.xi = zext i16 %.0.copyload.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.xj = add i64 %.pre-phi86.i.i.i.i.i, -1
  %i.xk = lshr i64 %i.xj, 12
  %i.xl = add nuw nsw i64 %i.xk, 1
  %i.xm = mul i64 %i.xl, %i.xi                    ; 2 uses
  %.not.i30.i.i.i.i.i = icmp ult i64 %i.we, %i.xm
  br i1 %.not.i30.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %.thread64.i.i.i.i.i
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(25) %22, i64 noundef %i.we, i64 noundef %.pre-phi86.i.i.i.i.i, i64 noundef %i.xi, i64 noundef %i.xm)
          to label %.noexc145 unwind label %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc145:                                        ; preds = %bb.dx
  %.pre80.i.i.i.i.i = load ptr, ptr %22, align 8, !tbaa !3894, !noalias !5209
  %.pre81.i.i.i.i.i = load i64, ptr %i.jc, align 8, !tbaa !1823, !noalias !5209
  %.pre82.i.i.i.i.i = and i64 %.pre81.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i: ; preds = %.noexc145, %.thread64.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre-phi84.i.i.i.i.i, %.thread64.i.i.i.i.i ], [ %.pre82.i.i.i.i.i, %.noexc145 ] ; 2 uses
  %i.xn = phi ptr [ %.pre.i65.i.i.i.i, %.thread64.i.i.i.i.i ], [ %.pre80.i.i.i.i.i, %.noexc145 ] ; 3 uses
  %i.xo = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.wc, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.xp = getelementptr inbounds nuw [64 x i8], ptr %i.xn, i64 %i.xo ; 2 uses
  %i.xq = load <16 x i8>, ptr %i.xp, align 16, !tbaa !14, !noalias !5209
  %i.xr = icmp slt <16 x i8> %i.xq, zeroinitializer
  %i.xs = bitcast <16 x i1> %i.xr to i16
  %i.xt = and i16 %i.xs, 4095                     ; 2 uses
  %.not67.i.i.i.i.i = icmp eq i16 %i.xt, 4095
  br i1 %.not67.i.i.i.i.i, label %bb.dy, label %bb.ec

bb.dy:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %i.xu = shl nuw nsw i64 %i.wb, 1
  %i.xv = or disjoint i64 %i.xu, 1
  br label %bb.dz

bb.dz:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, %bb.dy
  %i.xw = phi i64 [ %i.xo, %bb.dy ], [ %i.yc, %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %.028.i.i.i.i.i = phi i64 [ %i.wc, %bb.dy ], [ %i.yb, %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %i.xx = getelementptr inbounds nuw [64 x i8], ptr %i.xn, i64 %i.xw
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 15 ; 2 uses
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !3926, !noalias !5209 ; 2 uses
  %.not.i31.i.i.i.i.i = icmp eq i8 %i.xz, -2
  br i1 %.not.i31.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ya = add i8 %i.xz, 1
  store i8 %i.ya, ptr %i.xy, align 1, !tbaa !3926, !noalias !5209
  br label %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i: ; preds = %bb.ea, %bb.dz
  %i.yb = add i64 %i.xv, %.028.i.i.i.i.i          ; 2 uses
  %i.yc = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.yb, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.yd = getelementptr inbounds nuw [64 x i8], ptr %i.xn, i64 %i.yc ; 3 uses
  %i.ye = load <16 x i8>, ptr %i.yd, align 16, !noalias !5209 ; 2 uses
  %i.yf = icmp slt <16 x i8> %i.ye, zeroinitializer
  %i.yg = bitcast <16 x i1> %i.yf to i16
  %i.yh = and i16 %i.yg, 4095                     ; 2 uses
  %.not68.i.i.i.i.i = icmp eq i16 %i.yh, 4095
  br i1 %.not68.i.i.i.i.i, label %bb.dz, label %bb.eb, !llvm.loop !3928

bb.eb:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i
  %i.yi = extractelement <16 x i8> %i.ye, i64 14
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yd, i64 14
  %i.yk = add i8 %i.yi, 16
  store i8 %i.yk, ptr %i.yj, align 2, !tbaa !3929, !noalias !5209
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %.sroa.034.0.in.in.i.i.i.i.i = phi i16 [ %i.xt, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.yh, %bb.eb ]
  %.1.i.i.i.i.i = phi ptr [ %i.xp, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.yd, %bb.eb ] ; 3 uses
  %.sroa.034.0.in.i.i.i.i.i = xor i16 %.sroa.034.0.in.in.i.i.i.i.i, 4095
  %i.yl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in.i.i.i.i.i, i1 true)
  %i.ym = zext nneg i16 %i.yl to i64              ; 3 uses
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb1EdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cu, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i.i.i.i.i, i64 noundef 120) #45
  %.pre3.i.i.i.i.i = load ptr, ptr %i.ii, align 8, !tbaa !1867
  br label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i

_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i, %.noexc144, %bb.cn
  %i.ru = phi ptr [ %i.rf, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i ], [ %.pre3.i.i.i.i.i, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i ], [ %i.qs, %bb.cn ], [ %i.qy, %.noexc144 ] ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 58
  %i.rw = load i8, ptr %i.rv, align 2, !tbaa !1919, !range !92, !noundef !93
  %i.rx = trunc nuw i8 %i.rw to i1
  br i1 %i.rx, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb1EdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 59
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !1920, !range !92, !noundef !93
  %i.sa = trunc nuw i8 %i.rz to i1
  br i1 %i.sa, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ru, i64 64
  %i.sc = load i32, ptr %i.sb, align 8, !tbaa !1921
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb1EdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i

bb.cx:                                            ; preds = %bb.cv
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !1922
  %i.sf = sext i32 %i.qr to i64
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.se, i64 %i.sf
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb1EdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb1EdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i: ; preds = %bb.cx, %bb.cw, %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i
  %.0.i.i17.i.i.i.i.i = phi i32 [ %i.sh, %bb.cx ], [ %i.sc, %bb.cw ], [ %i.qr, %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i ]
  %.val.i18.i.i.i.i.i = load ptr, ptr %i.pf, align 8, !tbaa !1797
  %.val3.i19.i.i.i.i.i = load ptr, ptr %i.pg, align 8, !tbaa !1800
  %i.si = sext i32 %.0.i.i17.i.i.i.i.i to i64     ; 2 uses
  %i.sj = getelementptr inbounds [4 x i8], ptr %.val3.i19.i.i.i.i.i, i64 %i.si
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !3  ; 2 uses
  %i.sl = getelementptr inbounds [4 x i8], ptr %.val.i18.i.i.i.i.i, i64 %i.si
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !3  ; 2 uses
  %i.sn = load ptr, ptr %22, align 8, !tbaa !3981 ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 15
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !1827
  %i.sq = icmp eq i8 %i.sp, -1
  br i1 %i.sq, label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE5resetEv.exit.i.i.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb1EdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i
  %i.sr = load i64, ptr %i.jc, align 8, !tbaa !1823 ; 4 uses
  %i.ss = and i64 %i.sr, 252
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ss, 0  ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sn, i64 14
  %i.su = load i8, ptr %i.st, align 1, !tbaa !14
  %i.sv = and i8 %i.su, 15
  %i.sw = icmp ult i64 %i.sr, 256
  br i1 %i.sw, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.cz
  %.pre.i.i.i.i.i.i.i.i.i = and i64 %i.sr, 255
  br label %bb.db

bb.da:                                            ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %i.sx = load ptr, ptr %22, align 8, !tbaa !3981 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 14
  store i8 %i.sv, ptr %i.sy, align 2, !tbaa !3982
  br label %bb.db

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cz, %.preheader.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tb, %.preheader.i.i.i.i.i.i.i.i.i ], [ 0, %bb.cz ] ; 2 uses
  %i.sz = load ptr, ptr %22, align 8, !tbaa !3981
  %i.ta = getelementptr inbounds nuw [128 x i8], ptr %i.sz, i64 %.017.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ta, i8 0, i64 16, i1 false)
  %i.tb = add nuw i64 %.017.i.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %i.tc = load i64, ptr %i.jc, align 8, !tbaa !1823
  %i.td = and i64 %i.tc, 255                      ; 2 uses
  %.0.highbits.i.i.i.i.i.i.i.i.i = lshr i64 %i.tb, %i.td
  %i.te = icmp eq i64 %.0.highbits.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.te, label %.preheader.i.i.i.i.i.i.i.i.i, label %bb.da, !llvm.loop !3997

bb.db:                                            ; preds = %bb.da, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.td, %bb.da ] ; 2 uses
  %i.tf = phi ptr [ %i.sn, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.sx, %bb.da ]
  store i64 0, ptr %i.pd, align 8, !tbaa !106
  store i64 %.pre-phi.i.i.i.i.i.i.i.i.i, ptr %i.jc, align 8, !tbaa !1823
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cy
  %i.tg = phi i64 [ %.pre-phi.i.i.i.i.i.i.i.i.i, %bb.db ], [ %i.sr, %bb.cy ] ; 2 uses
  %i.th = phi ptr [ %i.tf, %bb.db ], [ %i.sn, %bb.cy ] ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE5resetEv.exit.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 14
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !14
  %i.tk = icmp eq i64 %i.tg, 0
  %i.tl = shl i8 %i.tj, 3
  %i.tm = and i8 %i.tl, 120
  %narrow.i.i.i.i.i.i.i.i.i = add nuw i8 %i.tm, 16
  %i.tn = zext i8 %narrow.i.i.i.i.i.i.i.i.i to i64
  %i.to = shl i64 128, %i.tg
  %.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.tk, i64 %i.tn, i64 %i.to
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %22, align 8, !tbaa !3981
  store i64 0, ptr %i.jc, align 8, !tbaa !1823
  call void @_ZdlPvm(ptr noundef nonnull %i.th, i64 noundef %.0.i.i.i.i.i.i.i.i.i.i) #43
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE5resetEv.exit.i.i.i.i.i

_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE5resetEv.exit.i.i.i.i.i: ; preds = %bb.dd, %bb.dc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb1EdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i
  store i8 0, ptr %i.pe, align 8, !tbaa !435
  %i.tp = icmp sgt i32 %i.sk, 0
  br i1 %i.tp, label %.lr.ph.i60.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_111generateSetIdEEvPKNS0_11ArrayVectorEPKNS0_13DecodedVectorEiRNS2_11SetWithNullIT_EE.exit.i.i.i.i

.lr.ph.i60.i.i.i.i:                               ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE5resetEv.exit.i.i.i.i.i
  %i.tq = add nsw i32 %i.sm, %i.sk
  %i.tr = sext i32 %i.sm to i64
  %i.ts = sext i32 %i.tq to i64
  br label %bb.de

bb.de:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE19tryEmplaceValueImplIdJdEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIdEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i, %.lr.ph.i60.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %i.tr, %.lr.ph.i60.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE19tryEmplaceValueImplIdJdEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIdEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i ] ; 7 uses
  %i.tt = load ptr, ptr %i.ph, align 8, !tbaa !1935 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.tt, null
  %.pre.i.i.i.i = load i8, ptr %i.pi, align 2, !tbaa !1919, !range !92
  %.pre83.i.i.i.i = trunc nuw i8 %.pre.i.i.i.i to i1 ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i, label %bb.df

._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i: ; preds = %bb.de
  %i.tu = trunc nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.tv = load ptr, ptr %i.pm, align 8, !tbaa !2919 ; 2 uses
  br i1 %.pre83.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i, label %bb.dk

bb.df:                                            ; preds = %bb.de
  %i.tw = load i8, ptr %i.pj, align 1, !range !92
  %i.tx = trunc nuw i8 %i.tw to i1
  %or.cond.i.i.i.i.i.i = select i1 %.pre83.i.i.i.i, i1 true, i1 %i.tx
  br i1 %or.cond.i.i.i.i.i.i, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.ty = lshr i64 %indvars.iv.i.i.i.i.i, 6
  %i.tz = and i64 %i.ty, 67108863
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.tz
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !106
  %i.uc = and i64 %indvars.iv.i.i.i.i.i, 63
  %i.ud = shl nuw i64 1, %i.uc
  %i.ue = and i64 %i.ub, %i.ud
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ue, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.dj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i

bb.dh:                                            ; preds = %bb.df
  %i.uf = load i8, ptr %i.pk, align 1, !tbaa !1920, !range !92, !noundef !93
  %i.ug = trunc nuw i8 %i.uf to i1
  br i1 %i.ug, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.uh = load ptr, ptr %i.pl, align 8, !tbaa !1922
  %i.ui = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %indvars.iv.i.i.i.i.i
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !3
  %i.uk = zext i32 %i.uj to i64                   ; 2 uses
  %i.ul = lshr i64 %i.uk, 6
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.ul
  %i.un = load i64, ptr %i.um, align 8, !tbaa !106
  %i.uo = and i64 %i.uk, 63
  %i.up = shl nuw i64 1, %i.uo
  %i.uq = and i64 %i.up, %i.un
  %.not.i7.i.i.i.i.i.i = icmp eq i64 %i.uq, 0
  br i1 %.not.i7.i.i.i.i.i.i, label %bb.dj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i: ; preds = %bb.dh
  %i.ur = load i64, ptr %i.tt, align 8, !tbaa !106
  %i.us = and i64 %i.ur, 1
  %.not.i6.i.i.i.i.i.i = icmp eq i64 %i.us, 0
  br i1 %.not.i6.i.i.i.i.i.i, label %bb.dj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i

bb.dj:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, %bb.di, %bb.dg
  store i8 1, ptr %i.pe, align 8, !tbaa !435
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE19tryEmplaceValueImplIdJdEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIdEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, %bb.di
  %i.ut = load ptr, ptr %i.pm, align 8, !tbaa !2919
  br label %bb.dk

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i: ; preds = %bb.dg
  %i.uu = trunc nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.uv = load ptr, ptr %i.pm, align 8, !tbaa !2919 ; 2 uses
  br i1 %.pre83.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i
  %i.uw = phi ptr [ %i.ut, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i ], [ %i.uv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ], [ %i.tv, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ] ; 2 uses
  %i.ux = load i8, ptr %i.pk, align 1, !tbaa !1920, !range !92, !noundef !93
  %i.uy = trunc nuw i8 %i.ux to i1
  br i1 %i.uy, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.uz = load i32, ptr %i.pn, align 8, !tbaa !1921
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.va = load ptr, ptr %i.pl, align 8, !tbaa !1922
  %29 = shl nsw i64 %indvars.iv.i.i.i.i.i, 2
  %30 = getelementptr inbounds i8, ptr %i.va, i64 %29
  %i.vb = load i32, ptr %30, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i: ; preds = %bb.dm, %bb.dl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i
  %i.vc = phi ptr [ %i.uw, %bb.dm ], [ %i.uw, %bb.dl ], [ %i.uv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ], [ %i.tv, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ]
  %.0.i.i.i63.i.i.i.i = phi i32 [ %i.vb, %bb.dm ], [ %i.uz, %bb.dl ], [ %i.uu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ], [ %i.tu, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ]
  %i.vd = sext i32 %.0.i.i.i63.i.i.i.i to i64
  %i.ve = getelementptr inbounds [8 x i8], ptr %i.vc, i64 %i.vd
  %i.vf = load double, ptr %i.ve, align 8, !tbaa !3998 ; 5 uses
  %i.vg = load atomic i8, ptr @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash acquire, align 8, !noalias !5253
  %i.vh = icmp eq i8 %i.vg, 0
  br i1 %i.vh, label %bb.dn, label %bb.do, !prof !3919

bb.dn:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i
  %i.vi = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash) #43, !noalias !5253
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.vi, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.do, label %_ZNK5folly6detail12float_hasherIdEclERKd.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK5folly6detail12float_hasherIdEclERKd.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dn
  store i64 1573955859343395728, ptr @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash, align 8, !tbaa !106, !noalias !5253
  %i.vj = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash), !noalias !5253 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash) #43, !noalias !5253
  br label %bb.do

bb.do:                                            ; preds = %_ZNK5folly6detail12float_hasherIdEclERKd.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dn, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i
  %i.vk = fcmp uno double %i.vf, 0.000000e+00     ; 2 uses
  br i1 %i.vk, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.vl = load i64, ptr @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash, align 8, !tbaa !106, !noalias !5253
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i

bb.dq:                                            ; preds = %bb.do
  %i.vm = fcmp oeq double %i.vf, 0.000000e+00
  br i1 %i.vm, label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.vn = bitcast double %i.vf to i64             ; 2 uses
  %i.vo = xor i64 %i.vn, -1
  %i.vp = shl i64 %i.vn, 21
  %i.vq = add i64 %i.vp, %i.vo                    ; 2 uses
  %i.vr = lshr i64 %i.vq, 24
  %i.vs = xor i64 %i.vr, %i.vq
  %i.vt = mul i64 %i.vs, 265                      ; 2 uses
  %i.vu = lshr i64 %i.vt, 14
  %i.vv = xor i64 %i.vu, %i.vt
  %i.vw = mul i64 %i.vv, 21                       ; 2 uses
  %i.vx = lshr i64 %i.vw, 28
  %i.vy = xor i64 %i.vx, %i.vw
  %i.vz = mul i64 %i.vy, 2147483649
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i

_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i: ; preds = %bb.dr, %bb.dq, %bb.dp
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.vl, %bb.dp ], [ %i.vz, %bb.dr ], [ 0, %bb.dq ] ; 2 uses
  %i.wa = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i) ; 2 uses
  %i.wb = lshr i64 %i.wa, 24
  %i.wc = or i64 %i.wb, 128                       ; 4 uses
  %i.wd = add i64 %i.wa, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.we = load i64, ptr %i.jc, align 8, !tbaa !1823, !noalias !5262 ; 3 uses
  %i.wf = lshr i64 %i.we, 8                       ; 3 uses
  %.not.i64.i.i.i.i = icmp eq i64 %i.wf, 0
  %.pre.i65.i.i.i.i = load ptr, ptr %22, align 8, !tbaa !3981, !noalias !5262 ; 3 uses
  br i1 %.not.i64.i.i.i.i, label %.thread64.i.i.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i
  %i.wg = shl nuw nsw i64 %i.wc, 1
  %i.wh = or disjoint i64 %i.wg, 1
  %i.wi = trunc nuw i64 %i.wc to i8
  %i.wj = insertelement <16 x i8> poison, i8 %i.wi, i64 0
  %i.wk = shufflevector <16 x i8> %i.wj, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.wl = and i64 %i.we, 255                      ; 4 uses
  %i.wm = shl nuw i64 1, %i.wl
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dw, %bb.ds
  %.0.i75.i.i.i.i.i = phi i64 [ %i.wd, %bb.ds ], [ %i.xi, %bb.dw ] ; 2 uses
  %.023.i74.i.i.i.i.i = phi i64 [ %i.wm, %bb.ds ], [ %i.xh, %bb.dw ]
  %i.wn = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i75.i.i.i.i.i, i64 range(i64 0, 256) %i.wl)
  %i.wo = getelementptr inbounds nuw [128 x i8], ptr %.pre.i65.i.i.i.i, i64 %i.wn ; 4 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wo, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.wq, i32 0, i32 3, i32 1), !noalias !5262
  %i.wr = load <16 x i8>, ptr %i.wo, align 16, !noalias !5262 ; 2 uses
  %i.ws = icmp eq <16 x i8> %i.wr, %i.wk
  %i.wt = bitcast <16 x i1> %i.ws to i16
  %i.wu = and i16 %i.wt, 16383
  %i.wv = zext nneg i16 %i.wu to i32
  %i.ww = icmp ne ptr %i.wo, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.wx = extractelement <16 x i8> %i.wr, i64 15
  br label %.critedge.i.i66.i.i.i.i

.critedge.i.i66.i.i.i.i:                          ; preds = %bb.du, %bb.dt
  %.sroa.040.0.i.i.i.i.i = phi i32 [ %i.wv, %bb.dt ], [ %i.xa, %bb.du ] ; 4 uses
  %.not66.i.i.i.i.i = icmp eq i32 %.sroa.040.0.i.i.i.i.i, 0
  br i1 %.not66.i.i.i.i.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %.critedge.i.i66.i.i.i.i
  %i.wy = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.0.i.i.i.i.i, i1 true)
  %i.wz = add nsw i32 %.sroa.040.0.i.i.i.i.i, -1
  %i.xa = and i32 %i.wz, %.sroa.040.0.i.i.i.i.i
  %i.xb = zext nneg i32 %i.wy to i64
  call void @llvm.assume(i1 %i.ww), !noalias !5265
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.xb
  %i.xd = load double, ptr %i.xc, align 8, !noalias !5262 ; 2 uses
  %i.xe = fcmp uno double %i.xd, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i = select i1 %i.vk, i1 %i.xe, i1 false
  %i.xf = fcmp oeq double %i.vf, %i.xd
  %.0.i.i.i67.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i, i1 true, i1 %i.xf
  br i1 %.0.i.i.i67.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE19tryEmplaceValueImplIdJdEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIdEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i, label %.critedge.i.i66.i.i.i.i, !prof !79, !llvm.loop !4013

bb.dv:                                            ; preds = %.critedge.i.i66.i.i.i.i
  %i.xg = icmp eq i8 %i.wx, 0
  br i1 %i.xg, label %.thread64.i.i.i.i.i, label %bb.dw, !prof !79

bb.dw:                                            ; preds = %bb.dv
  %i.xh = add i64 %.023.i74.i.i.i.i.i, -1         ; 2 uses
  %i.xi = add i64 %i.wh, %.0.i75.i.i.i.i.i
  %.not.i.i68.i.i.i.i = icmp eq i64 %i.xh, 0
  br i1 %.not.i.i68.i.i.i.i, label %.thread64.i.i.i.i.i, label %bb.dt, !llvm.loop !4014

.thread64.i.i.i.i.i:                              ; preds = %bb.dw, %bb.dv, %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i
  %.pre-phi84.i.i.i.i.i = phi i64 [ %i.we, %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i ], [ %i.wl, %bb.dv ], [ %i.wl, %bb.dw ] ; 3 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %.pre.i65.i.i.i.i, i64 14
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !14, !noalias !5262
  %i.xl = and i8 %i.xk, 15
  %i.xm = zext nneg i8 %i.xl to i64               ; 2 uses
  %i.xn = shl i64 %i.xm, %.pre-phi84.i.i.i.i.i    ; 2 uses
  %.not.i30.i.i.i.i.i = icmp ult i64 %i.wf, %i.xn
  br i1 %.not.i30.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %.thread64.i.i.i.i.i
  %i.xo = shl nuw i64 1, %.pre-phi84.i.i.i.i.i
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(25) %22, i64 noundef %i.wf, i64 noundef %i.xo, i64 noundef %i.xm, i64 noundef %i.xn)
          to label %.noexc145 unwind label %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc145:                                        ; preds = %bb.dx
  %.pre80.i.i.i.i.i = load ptr, ptr %22, align 8, !tbaa !3981, !noalias !5262
  %.pre81.i.i.i.i.i = load i64, ptr %i.jc, align 8, !tbaa !1823, !noalias !5262
  %.pre82.i.i.i.i.i = and i64 %.pre81.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i: ; preds = %.noexc145, %.thread64.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre-phi84.i.i.i.i.i, %.thread64.i.i.i.i.i ], [ %.pre82.i.i.i.i.i, %.noexc145 ] ; 2 uses
  %i.xp = phi ptr [ %.pre.i65.i.i.i.i, %.thread64.i.i.i.i.i ], [ %.pre80.i.i.i.i.i, %.noexc145 ] ; 3 uses
  %i.xq = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.wd, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.xr = getelementptr inbounds nuw [128 x i8], ptr %i.xp, i64 %i.xq ; 2 uses
  %i.xs = load <16 x i8>, ptr %i.xr, align 16, !tbaa !14, !noalias !5262
  %i.xt = icmp slt <16 x i8> %i.xs, zeroinitializer
  %i.xu = bitcast <16 x i1> %i.xt to i16
  %i.xv = and i16 %i.xu, 16383                    ; 2 uses
  %.not67.i.i.i.i.i = icmp eq i16 %i.xv, 16383
  br i1 %.not67.i.i.i.i.i, label %bb.dy, label %bb.ec

bb.dy:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %i.xw = shl nuw nsw i64 %i.wc, 1
  %i.xx = or disjoint i64 %i.xw, 1
  br label %bb.dz

bb.dz:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, %bb.dy
  %i.xy = phi i64 [ %i.xq, %bb.dy ], [ %i.ye, %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %.028.i.i.i.i.i = phi i64 [ %i.wd, %bb.dy ], [ %i.yd, %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %i.xz = getelementptr inbounds nuw [128 x i8], ptr %i.xp, i64 %i.xy
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 15 ; 2 uses
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !4015, !noalias !5262 ; 2 uses
  %.not.i31.i.i.i.i.i = icmp eq i8 %i.yb, -2
  br i1 %.not.i31.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.yc = add i8 %i.yb, 1
  store i8 %i.yc, ptr %i.ya, align 1, !tbaa !4015, !noalias !5262
  br label %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i: ; preds = %bb.ea, %bb.dz
  %i.yd = add i64 %i.xx, %.028.i.i.i.i.i          ; 2 uses
  %i.ye = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.yd, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.yf = getelementptr inbounds nuw [128 x i8], ptr %i.xp, i64 %i.ye ; 3 uses
  %i.yg = load <16 x i8>, ptr %i.yf, align 16, !noalias !5262 ; 2 uses
  %i.yh = icmp slt <16 x i8> %i.yg, zeroinitializer
  %i.yi = bitcast <16 x i1> %i.yh to i16
  %i.yj = and i16 %i.yi, 16383                    ; 2 uses
  %.not68.i.i.i.i.i = icmp eq i16 %i.yj, 16383
  br i1 %.not68.i.i.i.i.i, label %bb.dz, label %bb.eb, !llvm.loop !4016

bb.eb:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i
  %i.yk = extractelement <16 x i8> %i.yg, i64 14
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yf, i64 14
  %i.ym = add i8 %i.yk, 16
  store i8 %i.ym, ptr %i.yl, align 2, !tbaa !3982, !noalias !5262
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %.sroa.034.0.in.in.i.i.i.i.i = phi i16 [ %i.xv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.yj, %bb.eb ]
  %.1.i.i.i.i.i = phi ptr [ %i.xr, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.yf, %bb.eb ] ; 3 uses
  %.sroa.034.0.in.i.i.i.i.i = xor i16 %.sroa.034.0.in.in.i.i.i.i.i, 16383
  %i.yn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in.i.i.i.i.i, i1 true)
  %i.yo = zext nneg i16 %i.yn to i64              ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 %i.yo ; 2 uses
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !14, !noalias !5262
  %i.yr = icmp eq i8 %i.yq, 0
  br i1 %i.yr, label %_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit.i.i.i.i.i, label %bb.ed

end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb0EfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  %i.rs = ptrtoint ptr %i.ro to i64
  %i.rt = sub i64 %i.rr, %i.rs
  call void @_ZdlPvm(ptr noundef nonnull %i.ro, i64 noundef %i.rt) #45
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cu, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i.i.i.i.i, i64 noundef 120) #45
  %.pre3.i.i.i.i.i = load ptr, ptr %i.ii, align 8, !tbaa !1867
  br label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i

_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i, %.noexc144, %bb.cn
  %i.ru = phi ptr [ %i.rf, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i ], [ %.pre3.i.i.i.i.i, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i ], [ %i.qs, %bb.cn ], [ %i.qy, %.noexc144 ] ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 58
  %i.rw = load i8, ptr %i.rv, align 2, !tbaa !1919, !range !92, !noundef !93
  %i.rx = trunc nuw i8 %i.rw to i1
  br i1 %i.rx, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb0EfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 59
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !1920, !range !92, !noundef !93
  %i.sa = trunc nuw i8 %i.rz to i1
  br i1 %i.sa, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ru, i64 64
  %i.sc = load i32, ptr %i.sb, align 8, !tbaa !1921
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb0EfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i

bb.cx:                                            ; preds = %bb.cv
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !1922
  %i.sf = sext i32 %i.qr to i64
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.se, i64 %i.sf
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb0EfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb0EfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i: ; preds = %bb.cx, %bb.cw, %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i
  %.0.i.i17.i.i.i.i.i = phi i32 [ %i.sh, %bb.cx ], [ %i.sc, %bb.cw ], [ %i.qr, %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i ]
  %.val.i18.i.i.i.i.i = load ptr, ptr %i.pf, align 8, !tbaa !1797
  %.val3.i19.i.i.i.i.i = load ptr, ptr %i.pg, align 8, !tbaa !1800
  %i.si = sext i32 %.0.i.i17.i.i.i.i.i to i64     ; 2 uses
  %i.sj = getelementptr inbounds [4 x i8], ptr %.val3.i19.i.i.i.i.i, i64 %i.si
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !3  ; 2 uses
  %i.sl = getelementptr inbounds [4 x i8], ptr %.val.i18.i.i.i.i.i, i64 %i.si
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !3  ; 2 uses
  %i.sn = load ptr, ptr %22, align 8, !tbaa !3894 ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 15
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !1827
  %i.sq = icmp eq i8 %i.sp, -1
  br i1 %i.sq, label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE5resetEv.exit.i.i.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb0EfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i
  %i.sr = load i64, ptr %i.jc, align 8, !tbaa !1823 ; 4 uses
  %i.ss = and i64 %i.sr, 252
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ss, 0  ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sn, i64 12
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.st, align 1
  %i.su = icmp ult i64 %i.sr, 256
  br i1 %i.su, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i, label %bb.db

bb.da:                                            ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %i.sv = load ptr, ptr %22, align 8, !tbaa !3894 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 12
  store i16 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.sw, align 1
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jc, align 8, !tbaa !1823
  br label %bb.db

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cz, %.preheader.i.i.i.i.i.i.i.i.i
  %.018.i.i.i.i.i.i.i.i.i = phi i64 [ %i.sz, %.preheader.i.i.i.i.i.i.i.i.i ], [ 0, %bb.cz ] ; 2 uses
  %i.sx = load ptr, ptr %22, align 8, !tbaa !3894
  %i.sy = getelementptr inbounds nuw [64 x i8], ptr %i.sx, i64 %.018.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.sy, i8 0, i64 16, i1 false)
  %i.sz = add nuw i64 %.018.i.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %i.ta = load i64, ptr %i.jc, align 8, !tbaa !1823
  %i.tb = and i64 %i.ta, 255
  %.0.highbits.i.i.i.i.i.i.i.i.i = lshr i64 %i.sz, %i.tb
  %i.tc = icmp eq i64 %.0.highbits.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.tc, label %.preheader.i.i.i.i.i.i.i.i.i, label %bb.da, !llvm.loop !3908

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.td = phi ptr [ %i.sv, %bb.da ], [ %i.sn, %bb.cz ]
  %i.te = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %bb.da ], [ %i.sr, %bb.cz ]
  store i64 0, ptr %i.pd, align 8, !tbaa !106
  %i.tf = and i64 %i.te, 255                      ; 2 uses
  store i64 %i.tf, ptr %i.jc, align 8, !tbaa !1823
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cy
  %i.tg = phi ptr [ %i.td, %bb.db ], [ %i.sn, %bb.cy ] ; 2 uses
  %i.th = phi i64 [ %i.tf, %bb.db ], [ %i.sr, %bb.cy ] ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE5resetEv.exit.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 12
  %.0.copyload.i17.i.i.i.i.i.i.i.i.i = load i16, ptr %i.ti, align 1
  %i.tj = zext i16 %.0.copyload.i17.i.i.i.i.i.i.i.i.i to i64
  %i.tk = icmp eq i64 %i.th, 0
  %i.tl = shl nuw nsw i64 %i.tj, 2
  %i.tm = add nuw nsw i64 %i.tl, 16
  %i.tn = shl i64 64, %i.th
  %.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.tk, i64 %i.tm, i64 %i.tn
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %22, align 8, !tbaa !3894
  store i64 0, ptr %i.jc, align 8, !tbaa !1823
  call void @_ZdlPvm(ptr noundef nonnull %i.tg, i64 noundef %.0.i.i.i.i.i.i.i.i.i.i) #43
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE5resetEv.exit.i.i.i.i.i

_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE5resetEv.exit.i.i.i.i.i: ; preds = %bb.dd, %bb.dc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb0EfE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i
  store i8 0, ptr %i.pe, align 8, !tbaa !392
  %i.to = icmp sgt i32 %i.sk, 0
  br i1 %i.to, label %.lr.ph.i60.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_111generateSetIfEEvPKNS0_11ArrayVectorEPKNS0_13DecodedVectorEiRNS2_11SetWithNullIT_EE.exit.i.i.i.i

.lr.ph.i60.i.i.i.i:                               ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE5resetEv.exit.i.i.i.i.i
  %i.tp = add nsw i32 %i.sm, %i.sk
  %i.tq = sext i32 %i.sm to i64
  %i.tr = sext i32 %i.tp to i64
  br label %bb.de

bb.de:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE19tryEmplaceValueImplIfJfEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIfEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i, %.lr.ph.i60.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %i.tq, %.lr.ph.i60.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE19tryEmplaceValueImplIfJfEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIfEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i ] ; 7 uses
  %i.ts = load ptr, ptr %i.ph, align 8, !tbaa !1935 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ts, null
  %.pre.i.i.i.i = load i8, ptr %i.pi, align 2, !tbaa !1919, !range !92
  %.pre82.i.i.i.i = trunc nuw i8 %.pre.i.i.i.i to i1 ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i, label %bb.df

._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i: ; preds = %bb.de
  %i.tt = trunc nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.tu = load ptr, ptr %i.pm, align 8, !tbaa !2919 ; 2 uses
  br i1 %.pre82.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i, label %bb.dk

bb.df:                                            ; preds = %bb.de
  %i.tv = load i8, ptr %i.pj, align 1, !range !92
  %i.tw = trunc nuw i8 %i.tv to i1
  %or.cond.i.i.i.i.i.i = select i1 %.pre82.i.i.i.i, i1 true, i1 %i.tw
  br i1 %or.cond.i.i.i.i.i.i, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.tx = lshr i64 %indvars.iv.i.i.i.i.i, 6
  %i.ty = and i64 %i.tx, 67108863
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %i.ty
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !106
  %i.ub = and i64 %indvars.iv.i.i.i.i.i, 63
  %i.uc = shl nuw i64 1, %i.ub
  %i.ud = and i64 %i.ua, %i.uc
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ud, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.dj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i

bb.dh:                                            ; preds = %bb.df
  %i.ue = load i8, ptr %i.pk, align 1, !tbaa !1920, !range !92, !noundef !93
  %i.uf = trunc nuw i8 %i.ue to i1
  br i1 %i.uf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ug = load ptr, ptr %i.pl, align 8, !tbaa !1922
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %indvars.iv.i.i.i.i.i
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !3
  %i.uj = zext i32 %i.ui to i64                   ; 2 uses
  %i.uk = lshr i64 %i.uj, 6
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %i.uk
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !106
  %i.un = and i64 %i.uj, 63
  %i.uo = shl nuw i64 1, %i.un
  %i.up = and i64 %i.uo, %i.um
  %.not.i7.i.i.i.i.i.i = icmp eq i64 %i.up, 0
  br i1 %.not.i7.i.i.i.i.i.i, label %bb.dj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i: ; preds = %bb.dh
  %i.uq = load i64, ptr %i.ts, align 8, !tbaa !106
  %i.ur = and i64 %i.uq, 1
  %.not.i6.i.i.i.i.i.i = icmp eq i64 %i.ur, 0
  br i1 %.not.i6.i.i.i.i.i.i, label %bb.dj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i

bb.dj:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, %bb.di, %bb.dg
  store i8 1, ptr %i.pe, align 8, !tbaa !392
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE19tryEmplaceValueImplIfJfEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIfEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, %bb.di
  %i.us = load ptr, ptr %i.pm, align 8, !tbaa !2919
  br label %bb.dk

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i: ; preds = %bb.dg
  %i.ut = trunc nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.uu = load ptr, ptr %i.pm, align 8, !tbaa !2919 ; 2 uses
  br i1 %.pre82.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i
  %i.uv = phi ptr [ %i.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i ], [ %i.uu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ], [ %i.tu, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ] ; 2 uses
  %i.uw = load i8, ptr %i.pk, align 1, !tbaa !1920, !range !92, !noundef !93
  %i.ux = trunc nuw i8 %i.uw to i1
  br i1 %i.ux, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.uy = load i32, ptr %i.pn, align 8, !tbaa !1921
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.uz = load ptr, ptr %i.pl, align 8, !tbaa !1922
  %29 = shl nsw i64 %indvars.iv.i.i.i.i.i, 2
  %30 = getelementptr inbounds i8, ptr %i.uz, i64 %29
  %i.va = load i32, ptr %30, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i: ; preds = %bb.dm, %bb.dl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i
  %i.vb = phi ptr [ %i.uv, %bb.dm ], [ %i.uv, %bb.dl ], [ %i.uu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ], [ %i.tu, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ]
  %.0.i.i.i63.i.i.i.i = phi i32 [ %i.va, %bb.dm ], [ %i.uy, %bb.dl ], [ %i.ut, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ], [ %i.tt, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ]
  %i.vc = sext i32 %.0.i.i.i63.i.i.i.i to i64
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.vb, i64 %i.vc
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !3909 ; 5 uses
  %i.vf = load atomic i8, ptr @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash acquire, align 8, !noalias !5737
  %i.vg = icmp eq i8 %i.vf, 0
  br i1 %i.vg, label %bb.dn, label %bb.do, !prof !3919

bb.dn:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i
  %i.vh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash) #43, !noalias !5737
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.vh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.do, label %_ZNK5folly6detail12float_hasherIfEclERKf.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK5folly6detail12float_hasherIfEclERKf.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dn
  store i64 7476675141552221795, ptr @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash, align 8, !tbaa !106, !noalias !5737
  %i.vi = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash), !noalias !5737 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash) #43, !noalias !5737
  br label %bb.do

bb.do:                                            ; preds = %_ZNK5folly6detail12float_hasherIfEclERKf.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dn, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i
  %i.vj = fcmp uno float %i.ve, 0.000000e+00      ; 2 uses
  br i1 %i.vj, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.vk = load i64, ptr @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash, align 8, !tbaa !106, !noalias !5737
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i

bb.dq:                                            ; preds = %bb.do
  %i.vl = fcmp oeq float %i.ve, 0.000000e+00
  br i1 %i.vl, label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.vm = bitcast float %i.ve to i32
  %.0.insert.ext.i2.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.vm to i64 ; 2 uses
  %i.vn = xor i64 %.0.insert.ext.i2.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.vo = shl nuw nsw i64 %.0.insert.ext.i2.i.i.i.i.i.i.i.i.i.i.i.i, 21
  %i.vp = add nsw i64 %i.vo, %i.vn                ; 2 uses
  %i.vq = lshr i64 %i.vp, 24
  %i.vr = xor i64 %i.vq, %i.vp
  %i.vs = mul nsw i64 %i.vr, 265                  ; 2 uses
  %i.vt = lshr i64 %i.vs, 14
  %i.vu = xor i64 %i.vt, %i.vs
  %i.vv = mul i64 %i.vu, 21                       ; 2 uses
  %i.vw = lshr i64 %i.vv, 28
  %i.vx = xor i64 %i.vw, %i.vv
  %i.vy = mul i64 %i.vx, 2147483649
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i

_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i: ; preds = %bb.dr, %bb.dq, %bb.dp
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.vk, %bb.dp ], [ %i.vy, %bb.dr ], [ 0, %bb.dq ] ; 2 uses
  %i.vz = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i) ; 2 uses
  %i.wa = lshr i64 %i.vz, 24
  %i.wb = or i64 %i.wa, 128                       ; 4 uses
  %i.wc = add i64 %i.vz, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.wd = load i64, ptr %i.jc, align 8, !tbaa !1823, !noalias !5746 ; 4 uses
  %i.we = lshr i64 %i.wd, 8                       ; 3 uses
  %.not.i64.i.i.i.i = icmp eq i64 %i.we, 0
  %.pre.i65.i.i.i.i = load ptr, ptr %22, align 8, !tbaa !3894, !noalias !5746 ; 3 uses
  br i1 %.not.i64.i.i.i.i, label %..thread64_crit_edge.i.i.i.i.i, label %bb.ds

..thread64_crit_edge.i.i.i.i.i:                   ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i
  %.pre85.i.i.i.i.i = shl nuw i64 1, %i.wd
  br label %.thread64.i.i.i.i.i

bb.ds:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIfE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i
  %i.wf = shl nuw nsw i64 %i.wb, 1
  %i.wg = or disjoint i64 %i.wf, 1
  %i.wh = trunc nuw i64 %i.wb to i8
  %i.wi = insertelement <16 x i8> poison, i8 %i.wh, i64 0
  %i.wj = shufflevector <16 x i8> %i.wi, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.wk = and i64 %i.wd, 255                      ; 4 uses
  %i.wl = shl nuw i64 1, %i.wk                    ; 3 uses
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dw, %bb.ds
  %.0.i75.i.i.i.i.i = phi i64 [ %i.wc, %bb.ds ], [ %i.xg, %bb.dw ] ; 2 uses
  %.022.i74.i.i.i.i.i = phi i64 [ %i.wl, %bb.ds ], [ %i.xf, %bb.dw ]
  %i.wm = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i75.i.i.i.i.i, i64 range(i64 0, 256) %i.wk)
  %i.wn = getelementptr inbounds nuw [64 x i8], ptr %.pre.i65.i.i.i.i, i64 %i.wm ; 3 uses
  %i.wo = load <16 x i8>, ptr %i.wn, align 16, !noalias !5746 ; 2 uses
  %i.wp = icmp eq <16 x i8> %i.wo, %i.wj
  %i.wq = bitcast <16 x i1> %i.wp to i16
  %i.wr = and i16 %i.wq, 4095
  %i.ws = zext nneg i16 %i.wr to i32
  %i.wt = icmp ne ptr %i.wn, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %i.wv = extractelement <16 x i8> %i.wo, i64 15
  br label %.critedge.i.i66.i.i.i.i

.critedge.i.i66.i.i.i.i:                          ; preds = %bb.du, %bb.dt
  %.sroa.040.0.i.i.i.i.i = phi i32 [ %i.ws, %bb.dt ], [ %i.wy, %bb.du ] ; 4 uses
  %.not66.i.i.i.i.i = icmp eq i32 %.sroa.040.0.i.i.i.i.i, 0
  br i1 %.not66.i.i.i.i.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %.critedge.i.i66.i.i.i.i
  %i.ww = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.0.i.i.i.i.i, i1 true)
  %i.wx = add nsw i32 %.sroa.040.0.i.i.i.i.i, -1
  %i.wy = and i32 %i.wx, %.sroa.040.0.i.i.i.i.i
  %i.wz = zext nneg i32 %i.ww to i64
  call void @llvm.assume(i1 %i.wt), !noalias !5749
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %i.wz
  %i.xb = load float, ptr %i.xa, align 4, !noalias !5746 ; 2 uses
  %i.xc = fcmp uno float %i.xb, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i = select i1 %i.vj, i1 %i.xc, i1 false
  %i.xd = fcmp oeq float %i.ve, %i.xb
  %.0.i.i.i67.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i, i1 true, i1 %i.xd
  br i1 %.0.i.i.i67.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE19tryEmplaceValueImplIfJfEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIfEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i, label %.critedge.i.i66.i.i.i.i, !prof !79, !llvm.loop !3924

bb.dv:                                            ; preds = %.critedge.i.i66.i.i.i.i
  %i.xe = icmp eq i8 %i.wv, 0
  br i1 %i.xe, label %.thread64.i.i.i.i.i, label %bb.dw, !prof !79

bb.dw:                                            ; preds = %bb.dv
  %i.xf = add i64 %.022.i74.i.i.i.i.i, -1         ; 2 uses
  %i.xg = add i64 %i.wg, %.0.i75.i.i.i.i.i
  %.not.i.i68.i.i.i.i = icmp eq i64 %i.xf, 0
  br i1 %.not.i.i68.i.i.i.i, label %.thread64.i.i.i.i.i, label %bb.dt, !llvm.loop !3925

.thread64.i.i.i.i.i:                              ; preds = %bb.dw, %bb.dv, %..thread64_crit_edge.i.i.i.i.i
  %.pre-phi86.i.i.i.i.i = phi i64 [ %.pre85.i.i.i.i.i, %..thread64_crit_edge.i.i.i.i.i ], [ %i.wl, %bb.dv ], [ %i.wl, %bb.dw ] ; 2 uses
  %.pre-phi84.i.i.i.i.i = phi i64 [ %i.wd, %..thread64_crit_edge.i.i.i.i.i ], [ %i.wk, %bb.dv ], [ %i.wk, %bb.dw ]
  %i.xh = getelementptr inbounds nuw i8, ptr %.pre.i65.i.i.i.i, i64 12
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.xh, align 1, !noalias !5746
  %i.xi = zext i16 %.0.copyload.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.xj = add i64 %.pre-phi86.i.i.i.i.i, -1
  %i.xk = lshr i64 %i.xj, 12
  %i.xl = add nuw nsw i64 %i.xk, 1
  %i.xm = mul i64 %i.xl, %i.xi                    ; 2 uses
  %.not.i30.i.i.i.i.i = icmp ult i64 %i.we, %i.xm
  br i1 %.not.i30.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %.thread64.i.i.i.i.i
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(25) %22, i64 noundef %i.we, i64 noundef %.pre-phi86.i.i.i.i.i, i64 noundef %i.xi, i64 noundef %i.xm)
          to label %.noexc145 unwind label %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc145:                                        ; preds = %bb.dx
  %.pre80.i.i.i.i.i = load ptr, ptr %22, align 8, !tbaa !3894, !noalias !5746
  %.pre81.i.i.i.i.i = load i64, ptr %i.jc, align 8, !tbaa !1823, !noalias !5746
  %.pre82.i.i.i.i.i = and i64 %.pre81.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i: ; preds = %.noexc145, %.thread64.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre-phi84.i.i.i.i.i, %.thread64.i.i.i.i.i ], [ %.pre82.i.i.i.i.i, %.noexc145 ] ; 2 uses
  %i.xn = phi ptr [ %.pre.i65.i.i.i.i, %.thread64.i.i.i.i.i ], [ %.pre80.i.i.i.i.i, %.noexc145 ] ; 3 uses
  %i.xo = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.wc, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.xp = getelementptr inbounds nuw [64 x i8], ptr %i.xn, i64 %i.xo ; 2 uses
  %i.xq = load <16 x i8>, ptr %i.xp, align 16, !tbaa !14, !noalias !5746
  %i.xr = icmp slt <16 x i8> %i.xq, zeroinitializer
  %i.xs = bitcast <16 x i1> %i.xr to i16
  %i.xt = and i16 %i.xs, 4095                     ; 2 uses
  %.not67.i.i.i.i.i = icmp eq i16 %i.xt, 4095
  br i1 %.not67.i.i.i.i.i, label %bb.dy, label %bb.ec

bb.dy:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %i.xu = shl nuw nsw i64 %i.wb, 1
  %i.xv = or disjoint i64 %i.xu, 1
  br label %bb.dz

bb.dz:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, %bb.dy
  %i.xw = phi i64 [ %i.xo, %bb.dy ], [ %i.yc, %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %.028.i.i.i.i.i = phi i64 [ %i.wc, %bb.dy ], [ %i.yb, %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %i.xx = getelementptr inbounds nuw [64 x i8], ptr %i.xn, i64 %i.xw
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 15 ; 2 uses
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !3926, !noalias !5746 ; 2 uses
  %.not.i31.i.i.i.i.i = icmp eq i8 %i.xz, -2
  br i1 %.not.i31.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ya = add i8 %i.xz, 1
  store i8 %i.ya, ptr %i.xy, align 1, !tbaa !3926, !noalias !5746
  br label %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i: ; preds = %bb.ea, %bb.dz
  %i.yb = add i64 %i.xv, %.028.i.i.i.i.i          ; 2 uses
  %i.yc = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.yb, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.yd = getelementptr inbounds nuw [64 x i8], ptr %i.xn, i64 %i.yc ; 3 uses
  %i.ye = load <16 x i8>, ptr %i.yd, align 16, !noalias !5746 ; 2 uses
  %i.yf = icmp slt <16 x i8> %i.ye, zeroinitializer
  %i.yg = bitcast <16 x i1> %i.yf to i16
  %i.yh = and i16 %i.yg, 4095                     ; 2 uses
  %.not68.i.i.i.i.i = icmp eq i16 %i.yh, 4095
  br i1 %.not68.i.i.i.i.i, label %bb.dz, label %bb.eb, !llvm.loop !3928

bb.eb:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i.i.i.i.i
  %i.yi = extractelement <16 x i8> %i.ye, i64 14
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yd, i64 14
  %i.yk = add i8 %i.yi, 16
  store i8 %i.yk, ptr %i.yj, align 2, !tbaa !3929, !noalias !5746
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %.sroa.034.0.in.in.i.i.i.i.i = phi i16 [ %i.xt, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.yh, %bb.eb ]
  %.1.i.i.i.i.i = phi ptr [ %i.xp, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.yd, %bb.eb ] ; 3 uses
  %.sroa.034.0.in.i.i.i.i.i = xor i16 %.sroa.034.0.in.in.i.i.i.i.i, 4095
  %i.yl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in.i.i.i.i.i, i1 true)
  %i.ym = zext nneg i16 %i.yl to i64              ; 3 uses
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb0EdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cu, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i.i.i.i.i, i64 noundef 120) #45
  %.pre3.i.i.i.i.i = load ptr, ptr %i.ii, align 8, !tbaa !1867
  br label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i

_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i, %.noexc144, %bb.cn
  %i.ru = phi ptr [ %i.rf, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i ], [ %.pre3.i.i.i.i.i, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i ], [ %i.qs, %bb.cn ], [ %i.qy, %.noexc144 ] ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 58
  %i.rw = load i8, ptr %i.rv, align 2, !tbaa !1919, !range !92, !noundef !93
  %i.rx = trunc nuw i8 %i.rw to i1
  br i1 %i.rx, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb0EdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 59
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !1920, !range !92, !noundef !93
  %i.sa = trunc nuw i8 %i.rz to i1
  br i1 %i.sa, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ru, i64 64
  %i.sc = load i32, ptr %i.sb, align 8, !tbaa !1921
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb0EdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i

bb.cx:                                            ; preds = %bb.cv
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !1922
  %i.sf = sext i32 %i.qr to i64
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.se, i64 %i.sf
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb0EdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb0EdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i: ; preds = %bb.cx, %bb.cw, %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i
  %.0.i.i17.i.i.i.i.i = phi i32 [ %i.sh, %bb.cx ], [ %i.sc, %bb.cw ], [ %i.qr, %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i ]
  %.val.i18.i.i.i.i.i = load ptr, ptr %i.pf, align 8, !tbaa !1797
  %.val3.i19.i.i.i.i.i = load ptr, ptr %i.pg, align 8, !tbaa !1800
  %i.si = sext i32 %.0.i.i17.i.i.i.i.i to i64     ; 2 uses
  %i.sj = getelementptr inbounds [4 x i8], ptr %.val3.i19.i.i.i.i.i, i64 %i.si
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !3  ; 2 uses
  %i.sl = getelementptr inbounds [4 x i8], ptr %.val.i18.i.i.i.i.i, i64 %i.si
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !3  ; 2 uses
  %i.sn = load ptr, ptr %22, align 8, !tbaa !3981 ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 15
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !1827
  %i.sq = icmp eq i8 %i.sp, -1
  br i1 %i.sq, label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE5resetEv.exit.i.i.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb0EdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i
  %i.sr = load i64, ptr %i.jc, align 8, !tbaa !1823 ; 4 uses
  %i.ss = and i64 %i.sr, 252
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ss, 0  ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sn, i64 14
  %i.su = load i8, ptr %i.st, align 1, !tbaa !14
  %i.sv = and i8 %i.su, 15
  %i.sw = icmp ult i64 %i.sr, 256
  br i1 %i.sw, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.cz
  %.pre.i.i.i.i.i.i.i.i.i = and i64 %i.sr, 255
  br label %bb.db

bb.da:                                            ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %i.sx = load ptr, ptr %22, align 8, !tbaa !3981 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 14
  store i8 %i.sv, ptr %i.sy, align 2, !tbaa !3982
  br label %bb.db

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cz, %.preheader.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tb, %.preheader.i.i.i.i.i.i.i.i.i ], [ 0, %bb.cz ] ; 2 uses
  %i.sz = load ptr, ptr %22, align 8, !tbaa !3981
  %i.ta = getelementptr inbounds nuw [128 x i8], ptr %i.sz, i64 %.017.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ta, i8 0, i64 16, i1 false)
  %i.tb = add nuw i64 %.017.i.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %i.tc = load i64, ptr %i.jc, align 8, !tbaa !1823
  %i.td = and i64 %i.tc, 255                      ; 2 uses
  %.0.highbits.i.i.i.i.i.i.i.i.i = lshr i64 %i.tb, %i.td
  %i.te = icmp eq i64 %.0.highbits.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.te, label %.preheader.i.i.i.i.i.i.i.i.i, label %bb.da, !llvm.loop !3997

bb.db:                                            ; preds = %bb.da, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.td, %bb.da ] ; 2 uses
  %i.tf = phi ptr [ %i.sn, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.sx, %bb.da ]
  store i64 0, ptr %i.pd, align 8, !tbaa !106
  store i64 %.pre-phi.i.i.i.i.i.i.i.i.i, ptr %i.jc, align 8, !tbaa !1823
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cy
  %i.tg = phi i64 [ %.pre-phi.i.i.i.i.i.i.i.i.i, %bb.db ], [ %i.sr, %bb.cy ] ; 2 uses
  %i.th = phi ptr [ %i.tf, %bb.db ], [ %i.sn, %bb.cy ] ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE5resetEv.exit.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 14
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !14
  %i.tk = icmp eq i64 %i.tg, 0
  %i.tl = shl i8 %i.tj, 3
  %i.tm = and i8 %i.tl, 120
  %narrow.i.i.i.i.i.i.i.i.i = add nuw i8 %i.tm, 16
  %i.tn = zext i8 %narrow.i.i.i.i.i.i.i.i.i to i64
  %i.to = shl i64 128, %i.tg
  %.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.tk, i64 %i.tn, i64 %i.to
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %22, align 8, !tbaa !3981
  store i64 0, ptr %i.jc, align 8, !tbaa !1823
  call void @_ZdlPvm(ptr noundef nonnull %i.th, i64 noundef %.0.i.i.i.i.i.i.i.i.i.i) #43
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE5resetEv.exit.i.i.i.i.i

_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE5resetEv.exit.i.i.i.i.i: ; preds = %bb.dd, %bb.dc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_128ArrayIntersectExceptFunctionILb0EdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit20.i.i.i.i.i
  store i8 0, ptr %i.pe, align 8, !tbaa !435
  %i.tp = icmp sgt i32 %i.sk, 0
  br i1 %i.tp, label %.lr.ph.i60.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_111generateSetIdEEvPKNS0_11ArrayVectorEPKNS0_13DecodedVectorEiRNS2_11SetWithNullIT_EE.exit.i.i.i.i

.lr.ph.i60.i.i.i.i:                               ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE5resetEv.exit.i.i.i.i.i
  %i.tq = add nsw i32 %i.sm, %i.sk
  %i.tr = sext i32 %i.sm to i64
  %i.ts = sext i32 %i.tq to i64
  br label %bb.de

bb.de:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE19tryEmplaceValueImplIdJdEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIdEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i, %.lr.ph.i60.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %i.tr, %.lr.ph.i60.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE19tryEmplaceValueImplIdJdEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIdEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i ] ; 7 uses
  %i.tt = load ptr, ptr %i.ph, align 8, !tbaa !1935 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.tt, null
  %.pre.i.i.i.i = load i8, ptr %i.pi, align 2, !tbaa !1919, !range !92
  %.pre83.i.i.i.i = trunc nuw i8 %.pre.i.i.i.i to i1 ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i, label %bb.df

._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i: ; preds = %bb.de
  %i.tu = trunc nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.tv = load ptr, ptr %i.pm, align 8, !tbaa !2919 ; 2 uses
  br i1 %.pre83.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i, label %bb.dk

bb.df:                                            ; preds = %bb.de
  %i.tw = load i8, ptr %i.pj, align 1, !range !92
  %i.tx = trunc nuw i8 %i.tw to i1
  %or.cond.i.i.i.i.i.i = select i1 %.pre83.i.i.i.i, i1 true, i1 %i.tx
  br i1 %or.cond.i.i.i.i.i.i, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.ty = lshr i64 %indvars.iv.i.i.i.i.i, 6
  %i.tz = and i64 %i.ty, 67108863
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.tz
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !106
  %i.uc = and i64 %indvars.iv.i.i.i.i.i, 63
  %i.ud = shl nuw i64 1, %i.uc
  %i.ue = and i64 %i.ub, %i.ud
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ue, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.dj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i

bb.dh:                                            ; preds = %bb.df
  %i.uf = load i8, ptr %i.pk, align 1, !tbaa !1920, !range !92, !noundef !93
  %i.ug = trunc nuw i8 %i.uf to i1
  br i1 %i.ug, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.uh = load ptr, ptr %i.pl, align 8, !tbaa !1922
  %i.ui = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %indvars.iv.i.i.i.i.i
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !3
  %i.uk = zext i32 %i.uj to i64                   ; 2 uses
  %i.ul = lshr i64 %i.uk, 6
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.ul
  %i.un = load i64, ptr %i.um, align 8, !tbaa !106
  %i.uo = and i64 %i.uk, 63
  %i.up = shl nuw i64 1, %i.uo
  %i.uq = and i64 %i.up, %i.un
  %.not.i7.i.i.i.i.i.i = icmp eq i64 %i.uq, 0
  br i1 %.not.i7.i.i.i.i.i.i, label %bb.dj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i: ; preds = %bb.dh
  %i.ur = load i64, ptr %i.tt, align 8, !tbaa !106
  %i.us = and i64 %i.ur, 1
  %.not.i6.i.i.i.i.i.i = icmp eq i64 %i.us, 0
  br i1 %.not.i6.i.i.i.i.i.i, label %bb.dj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i

bb.dj:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, %bb.di, %bb.dg
  store i8 1, ptr %i.pe, align 8, !tbaa !435
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE19tryEmplaceValueImplIdJdEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIdEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, %bb.di
  %i.ut = load ptr, ptr %i.pm, align 8, !tbaa !2919
  br label %bb.dk

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i: ; preds = %bb.dg
  %i.uu = trunc nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.uv = load ptr, ptr %i.pm, align 8, !tbaa !2919 ; 2 uses
  br i1 %.pre83.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i
  %i.uw = phi ptr [ %i.ut, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.thread.i.i.i.i ], [ %i.uv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ], [ %i.tv, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ] ; 2 uses
  %i.ux = load i8, ptr %i.pk, align 1, !tbaa !1920, !range !92, !noundef !93
  %i.uy = trunc nuw i8 %i.ux to i1
  br i1 %i.uy, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.uz = load i32, ptr %i.pn, align 8, !tbaa !1921
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.va = load ptr, ptr %i.pl, align 8, !tbaa !1922
  %29 = shl nsw i64 %indvars.iv.i.i.i.i.i, 2
  %30 = getelementptr inbounds i8, ptr %i.va, i64 %29
  %i.vb = load i32, ptr %30, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i: ; preds = %bb.dm, %bb.dl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i
  %i.vc = phi ptr [ %i.uw, %bb.dm ], [ %i.uw, %bb.dl ], [ %i.uv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ], [ %i.tv, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ]
  %.0.i.i.i63.i.i.i.i = phi i32 [ %i.vb, %bb.dm ], [ %i.uz, %bb.dl ], [ %i.uu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ], [ %i.tu, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ]
  %i.vd = sext i32 %.0.i.i.i63.i.i.i.i to i64
  %i.ve = getelementptr inbounds [8 x i8], ptr %i.vc, i64 %i.vd
  %i.vf = load double, ptr %i.ve, align 8, !tbaa !3998 ; 5 uses
  %i.vg = load atomic i8, ptr @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash acquire, align 8, !noalias !5790
  %i.vh = icmp eq i8 %i.vg, 0
  br i1 %i.vh, label %bb.dn, label %bb.do, !prof !3919

bb.dn:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i
  %i.vi = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash) #43, !noalias !5790
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.vi, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.do, label %_ZNK5folly6detail12float_hasherIdEclERKd.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK5folly6detail12float_hasherIdEclERKd.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dn
  store i64 1573955859343395728, ptr @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash, align 8, !tbaa !106, !noalias !5790
  %i.vj = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash), !noalias !5790 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash) #43, !noalias !5790
  br label %bb.do

bb.do:                                            ; preds = %_ZNK5folly6detail12float_hasherIdEclERKd.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dn, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i
  %i.vk = fcmp uno double %i.vf, 0.000000e+00     ; 2 uses
  br i1 %i.vk, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.vl = load i64, ptr @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash, align 8, !tbaa !106, !noalias !5790
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i

bb.dq:                                            ; preds = %bb.do
  %i.vm = fcmp oeq double %i.vf, 0.000000e+00
  br i1 %i.vm, label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.vn = bitcast double %i.vf to i64             ; 2 uses
  %i.vo = xor i64 %i.vn, -1
  %i.vp = shl i64 %i.vn, 21
  %i.vq = add i64 %i.vp, %i.vo                    ; 2 uses
  %i.vr = lshr i64 %i.vq, 24
  %i.vs = xor i64 %i.vr, %i.vq
  %i.vt = mul i64 %i.vs, 265                      ; 2 uses
  %i.vu = lshr i64 %i.vt, 14
  %i.vv = xor i64 %i.vu, %i.vt
  %i.vw = mul i64 %i.vv, 21                       ; 2 uses
  %i.vx = lshr i64 %i.vw, 28
  %i.vy = xor i64 %i.vx, %i.vw
  %i.vz = mul i64 %i.vy, 2147483649
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i

_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i: ; preds = %bb.dr, %bb.dq, %bb.dp
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.vl, %bb.dp ], [ %i.vz, %bb.dr ], [ 0, %bb.dq ] ; 2 uses
  %i.wa = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i) ; 2 uses
  %i.wb = lshr i64 %i.wa, 24
  %i.wc = or i64 %i.wb, 128                       ; 4 uses
  %i.wd = add i64 %i.wa, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.we = load i64, ptr %i.jc, align 8, !tbaa !1823, !noalias !5799 ; 3 uses
  %i.wf = lshr i64 %i.we, 8                       ; 3 uses
  %.not.i64.i.i.i.i = icmp eq i64 %i.wf, 0
  %.pre.i65.i.i.i.i = load ptr, ptr %22, align 8, !tbaa !3981, !noalias !5799 ; 3 uses
  br i1 %.not.i64.i.i.i.i, label %.thread64.i.i.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i
  %i.wg = shl nuw nsw i64 %i.wc, 1
  %i.wh = or disjoint i64 %i.wg, 1
  %i.wi = trunc nuw i64 %i.wc to i8
  %i.wj = insertelement <16 x i8> poison, i8 %i.wi, i64 0
  %i.wk = shufflevector <16 x i8> %i.wj, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.wl = and i64 %i.we, 255                      ; 4 uses
  %i.wm = shl nuw i64 1, %i.wl
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dw, %bb.ds
  %.0.i75.i.i.i.i.i = phi i64 [ %i.wd, %bb.ds ], [ %i.xi, %bb.dw ] ; 2 uses
  %.023.i74.i.i.i.i.i = phi i64 [ %i.wm, %bb.ds ], [ %i.xh, %bb.dw ]
  %i.wn = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i75.i.i.i.i.i, i64 range(i64 0, 256) %i.wl)
  %i.wo = getelementptr inbounds nuw [128 x i8], ptr %.pre.i65.i.i.i.i, i64 %i.wn ; 4 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wo, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.wq, i32 0, i32 3, i32 1), !noalias !5799
  %i.wr = load <16 x i8>, ptr %i.wo, align 16, !noalias !5799 ; 2 uses
  %i.ws = icmp eq <16 x i8> %i.wr, %i.wk
  %i.wt = bitcast <16 x i1> %i.ws to i16
  %i.wu = and i16 %i.wt, 16383
  %i.wv = zext nneg i16 %i.wu to i32
  %i.ww = icmp ne ptr %i.wo, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.wx = extractelement <16 x i8> %i.wr, i64 15
  br label %.critedge.i.i66.i.i.i.i

.critedge.i.i66.i.i.i.i:                          ; preds = %bb.du, %bb.dt
  %.sroa.040.0.i.i.i.i.i = phi i32 [ %i.wv, %bb.dt ], [ %i.xa, %bb.du ] ; 4 uses
  %.not66.i.i.i.i.i = icmp eq i32 %.sroa.040.0.i.i.i.i.i, 0
  br i1 %.not66.i.i.i.i.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %.critedge.i.i66.i.i.i.i
  %i.wy = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.0.i.i.i.i.i, i1 true)
  %i.wz = add nsw i32 %.sroa.040.0.i.i.i.i.i, -1
  %i.xa = and i32 %i.wz, %.sroa.040.0.i.i.i.i.i
  %i.xb = zext nneg i32 %i.wy to i64
  call void @llvm.assume(i1 %i.ww), !noalias !5802
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.xb
  %i.xd = load double, ptr %i.xc, align 8, !noalias !5799 ; 2 uses
  %i.xe = fcmp uno double %i.xd, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i = select i1 %i.vk, i1 %i.xe, i1 false
  %i.xf = fcmp oeq double %i.vf, %i.xd
  %.0.i.i.i67.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i, i1 true, i1 %i.xf
  br i1 %.0.i.i.i67.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE19tryEmplaceValueImplIdJdEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIdEEEEbESF_ImmERKT_DpOT0_.exit.i.i.i.i, label %.critedge.i.i66.i.i.i.i, !prof !79, !llvm.loop !4013

bb.dv:                                            ; preds = %.critedge.i.i66.i.i.i.i
  %i.xg = icmp eq i8 %i.wx, 0
  br i1 %i.xg, label %.thread64.i.i.i.i.i, label %bb.dw, !prof !79

bb.dw:                                            ; preds = %bb.dv
  %i.xh = add i64 %.023.i74.i.i.i.i.i, -1         ; 2 uses
  %i.xi = add i64 %i.wh, %.0.i75.i.i.i.i.i
  %.not.i.i68.i.i.i.i = icmp eq i64 %i.xh, 0
  br i1 %.not.i.i68.i.i.i.i, label %.thread64.i.i.i.i.i, label %bb.dt, !llvm.loop !4014

.thread64.i.i.i.i.i:                              ; preds = %bb.dw, %bb.dv, %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i
  %.pre-phi84.i.i.i.i.i = phi i64 [ %i.we, %_ZN8facebook5velox9functions12_GLOBAL__N_111SetWithNullIdE6insertEPKNS0_13DecodedVectorEi.exit.i.i.i.i ], [ %i.wl, %bb.dv ], [ %i.wl, %bb.dw ] ; 3 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %.pre.i65.i.i.i.i, i64 14
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !14, !noalias !5799
  %i.xl = and i8 %i.xk, 15
  %i.xm = zext nneg i8 %i.xl to i64               ; 2 uses
  %i.xn = shl i64 %i.xm, %.pre-phi84.i.i.i.i.i    ; 2 uses
  %.not.i30.i.i.i.i.i = icmp ult i64 %i.wf, %i.xn
  br i1 %.not.i30.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %.thread64.i.i.i.i.i
  %i.xo = shl nuw i64 1, %.pre-phi84.i.i.i.i.i
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(25) %22, i64 noundef %i.wf, i64 noundef %i.xo, i64 noundef %i.xm, i64 noundef %i.xn)
          to label %.noexc145 unwind label %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc145:                                        ; preds = %bb.dx
  %.pre80.i.i.i.i.i = load ptr, ptr %22, align 8, !tbaa !3981, !noalias !5799
  %.pre81.i.i.i.i.i = load i64, ptr %i.jc, align 8, !tbaa !1823, !noalias !5799
  %.pre82.i.i.i.i.i = and i64 %.pre81.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i: ; preds = %.noexc145, %.thread64.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre-phi84.i.i.i.i.i, %.thread64.i.i.i.i.i ], [ %.pre82.i.i.i.i.i, %.noexc145 ] ; 2 uses
  %i.xp = phi ptr [ %.pre.i65.i.i.i.i, %.thread64.i.i.i.i.i ], [ %.pre80.i.i.i.i.i, %.noexc145 ] ; 3 uses
  %i.xq = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.wd, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.xr = getelementptr inbounds nuw [128 x i8], ptr %i.xp, i64 %i.xq ; 2 uses
  %i.xs = load <16 x i8>, ptr %i.xr, align 16, !tbaa !14, !noalias !5799
  %i.xt = icmp slt <16 x i8> %i.xs, zeroinitializer
  %i.xu = bitcast <16 x i1> %i.xt to i16
  %i.xv = and i16 %i.xu, 16383                    ; 2 uses
  %.not67.i.i.i.i.i = icmp eq i16 %i.xv, 16383
  br i1 %.not67.i.i.i.i.i, label %bb.dy, label %bb.ec

bb.dy:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %i.xw = shl nuw nsw i64 %i.wc, 1
  %i.xx = or disjoint i64 %i.xw, 1
  br label %bb.dz

bb.dz:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, %bb.dy
  %i.xy = phi i64 [ %i.xq, %bb.dy ], [ %i.ye, %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %.028.i.i.i.i.i = phi i64 [ %i.wd, %bb.dy ], [ %i.yd, %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %i.xz = getelementptr inbounds nuw [128 x i8], ptr %i.xp, i64 %i.xy
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 15 ; 2 uses
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !4015, !noalias !5799 ; 2 uses
  %.not.i31.i.i.i.i.i = icmp eq i8 %i.yb, -2
  br i1 %.not.i31.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.yc = add i8 %i.yb, 1
  store i8 %i.yc, ptr %i.ya, align 1, !tbaa !4015, !noalias !5799
  br label %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i: ; preds = %bb.ea, %bb.dz
  %i.yd = add i64 %i.xx, %.028.i.i.i.i.i          ; 2 uses
  %i.ye = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.yd, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.yf = getelementptr inbounds nuw [128 x i8], ptr %i.xp, i64 %i.ye ; 3 uses
  %i.yg = load <16 x i8>, ptr %i.yf, align 16, !noalias !5799 ; 2 uses
  %i.yh = icmp slt <16 x i8> %i.yg, zeroinitializer
  %i.yi = bitcast <16 x i1> %i.yh to i16
  %i.yj = and i16 %i.yi, 16383                    ; 2 uses
  %.not68.i.i.i.i.i = icmp eq i16 %i.yj, 16383
  br i1 %.not68.i.i.i.i.i, label %bb.dz, label %bb.eb, !llvm.loop !4016

bb.eb:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i.i.i.i.i
  %i.yk = extractelement <16 x i8> %i.yg, i64 14
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yf, i64 14
  %i.ym = add i8 %i.yk, 16
  store i8 %i.ym, ptr %i.yl, align 2, !tbaa !3982, !noalias !5799
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %.sroa.034.0.in.in.i.i.i.i.i = phi i16 [ %i.xv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.yj, %bb.eb ]
  %.1.i.i.i.i.i = phi ptr [ %i.xr, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.yf, %bb.eb ] ; 3 uses
  %.sroa.034.0.in.i.i.i.i.i = xor i16 %.sroa.034.0.in.in.i.i.i.i.i, 16383
  %i.yn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in.i.i.i.i.i, i1 true)
  %i.yo = zext nneg i16 %i.yn to i64              ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 %i.yo ; 2 uses
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !14, !noalias !5799
  %i.yr = icmp eq i8 %i.yq, 0
  br i1 %i.yr, label %_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit.i.i.i.i.i, label %bb.ed

end_hunk_5
