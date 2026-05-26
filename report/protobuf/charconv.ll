inline.NumInlined: 253
inline.NumDeleted: 99
begin_hunk_0_@_ZN4absl12lts_2025051212_GLOBAL__N_111MustRoundUpEmiRKNS0_16strings_internal11ParsedFloatE:bb.a
bb.l:                                             ; preds = %._crit_edge.i
  %i.ay = sext i32 %.sroa.speculated28.i to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %.not.i34 = icmp eq i32 %i.ba, 0
  br i1 %.not.i34, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = add nsw i32 %.sroa.speculated28.i, 1
  store i32 %i.bb, ptr %3, align 4, !tbaa !25
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.m, %bb.l, %._crit_edge.i, %bb.i, %bb.h, %bb.g
  %i.bc = icmp eq i32 %i.l, 0
  br i1 %i.bc, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i:   ; preds = %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.be = shl nuw nsw i32 %i.l, 2
  %.idx.i.i.i = zext nneg i32 %i.be to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bd, i8 0, i64 %.idx.i.i.i, i1 false), !tbaa !3
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

bb.n:                                             ; preds = %bb.b
  %i.bf = sub nsw i32 %i.e, %i.b                  ; 6 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

bb.o:                                             ; preds = %bb.n
  %i.bh = lshr i32 %i.bf, 5                       ; 6 uses
  %i.bi = icmp samesign ugt i32 %i.bf, 2687
  br i1 %i.bi, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i51, label %bb.p

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i51: ; preds = %bb.o
  %i.bj = shl nuw nsw i32 %i.g, 2
  %.idx.i.i.i.i50 = zext nneg i32 %i.bj to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.h, i8 0, i64 %.idx.i.i.i.i50, i1 false), !tbaa !3
  store i32 0, ptr %4, align 4, !tbaa !25
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

bb.p:                                             ; preds = %bb.o
  %i.bk = add nuw nsw i32 %i.bh, %i.g             ; 3 uses
  %i.bl = call i32 @llvm.umin.i32(i32 %i.bk, i32 84) ; 4 uses
  store i32 %i.bl, ptr %4, align 4, !tbaa !25
  %i.bm = and i32 %i.bf, 31                       ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bo = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bo ; 2 uses
  %.idx.i48 = shl nuw nsw i64 %i.bo, 2
  %i.bq = shl nuw nsw i32 %i.bh, 2
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = sub nsw i64 %.idx.i48, %i.br            ; 3 uses
  %i.bt = ashr exact i64 %i.bs, 2                 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %bb.r, label %bb.s, !prof !27

bb.r:                                             ; preds = %bb.q
  %i.bv = sub nsw i64 0, %i.bt
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bv
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bw, ptr nonnull align 4 %i.h, i64 %i.bs, i1 false)
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41

bb.s:                                             ; preds = %bb.q
  %i.bx = icmp eq i64 %i.bs, 4
  br i1 %i.bx, label %bb.t, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds i8, ptr %i.bp, i64 -4
  store i32 %i.j, ptr %i.by, align 4, !tbaa !3
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41

bb.u:                                             ; preds = %bb.p
  %i.bz = icmp samesign ult i32 %i.bf, 2656
  br i1 %i.bz, label %.lr.ph.i45, label %.._crit_edge_crit_edge.i37

.._crit_edge_crit_edge.i37:                       ; preds = %bb.u
  %.pre.i38 = zext nneg i32 %i.bh to i64
  br label %._crit_edge.i39

.lr.ph.i45:                                       ; preds = %bb.u
  %i.ca = call i32 @llvm.umin.i32(i32 %i.bk, i32 83)
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = zext nneg i32 %i.bh to i64              ; 3 uses
  br label %bb.v

._crit_edge.i39.loopexit:                         ; preds = %bb.v
  %.pre = load i32, ptr %i.h, align 4, !tbaa !3
  br label %._crit_edge.i39

._crit_edge.i39:                                  ; preds = %._crit_edge.i39.loopexit, %.._crit_edge_crit_edge.i37
  %i.cd = phi i32 [ %i.j, %.._crit_edge_crit_edge.i37 ], [ %.pre, %._crit_edge.i39.loopexit ]
  %.pre-phi.i40 = phi i64 [ %.pre.i38, %.._crit_edge_crit_edge.i37 ], [ %i.cc, %._crit_edge.i39.loopexit ]
  %i.ce = shl i32 %i.cd, %i.bm
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.pre-phi.i40
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !3
  %i.cg = icmp samesign ult i32 %i.bk, 84
  br i1 %i.cg, label %bb.w, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41

bb.v:                                             ; preds = %bb.v, %.lr.ph.i45
  %indvars.iv.i46 = phi i64 [ %i.cb, %.lr.ph.i45 ], [ %indvars.iv.next.i47, %bb.v ] ; 3 uses
  %i.ch = sub nsw i64 %indvars.iv.i46, %i.cc
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ch ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = getelementptr i8, ptr %i.ci, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = call i32 @llvm.fshl.i32(i32 %i.cj, i32 %i.cl, i32 %i.bf)
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i46
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !3
  %indvars.iv.next.i47 = add nsw i64 %indvars.iv.i46, -1 ; 2 uses
  %i.co = icmp samesign ugt i64 %indvars.iv.next.i47, %i.cc
  br i1 %i.co, label %bb.v, label %._crit_edge.i39.loopexit, !llvm.loop !28

bb.w:                                             ; preds = %._crit_edge.i39
  %i.cp = zext nneg i32 %i.bl to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %.not.i44 = icmp eq i32 %i.cr, 0
  br i1 %.not.i44, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = add nuw nsw i32 %i.bl, 1
  store i32 %i.cs, ptr %4, align 4, !tbaa !25
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41

_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41:   ; preds = %bb.x, %bb.w, %._crit_edge.i39, %bb.t, %bb.s, %bb.r
  %i.ct = icmp eq i32 %i.bh, 0
  br i1 %i.ct, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i42

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i42: ; preds = %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41
  %i.cu = shl nuw nsw i32 %i.bh, 2
  %.idx.i.i.i43 = zext nneg i32 %i.cu to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 0, i64 %.idx.i.i.i43, i1 false), !tbaa !3
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit: ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i42, %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i51, %bb.n, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i, %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i
  %i.cv = load i32, ptr %3, align 4, !tbaa !25    ; 2 uses
  %i.cw = load i32, ptr %4, align 4, !tbaa !25    ; 2 uses
  %.sroa.speculated.i53 = call i32 @llvm.smax.i32(i32 %i.cv, i32 %i.cw) ; 3 uses
  %i.cx = icmp slt i32 %.sroa.speculated.i53, 1
  br i1 %i.cx, label %_ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit, label %.lr.ph148

.lr.ph148:                                        ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit
  %i.cy = zext nneg i32 %.sroa.speculated.i53 to i64
  br label %bb.z

bb.y:                                             ; preds = %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i
  %i.cz = trunc nuw i64 %i.dc to i32              ; 2 uses
  %i.da = icmp slt i32 %i.cz, 1
  br i1 %i.da, label %_ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit, label %bb.z, !llvm.loop !30

bb.z:                                             ; preds = %.lr.ph148, %bb.y
  %i.db = phi i32 [ %.sroa.speculated.i53, %.lr.ph148 ], [ %i.cz, %bb.y ] ; 2 uses
  %.0.i147 = phi i32 [ undef, %.lr.ph148 ], [ %.1.i, %bb.y ]
  %indvars.iv.i54146 = phi i64 [ %i.cy, %.lr.ph148 ], [ %i.dc, %bb.y ] ; 3 uses
  %i.dc = add nsw i64 %indvars.iv.i54146, -1      ; 2 uses
  %.not.i.not.i = icmp slt i32 %i.cv, %i.db
  br i1 %.not.i.not.i, label %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dd = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.i54146
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3
  br label %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i

_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i: ; preds = %bb.aa, %bb.z
  %.0.i.i = phi i32 [ %i.de, %bb.aa ], [ 0, %bb.z ] ; 3 uses
  %.not.i21.not.i = icmp slt i32 %i.cw, %i.db
  br i1 %.not.i21.not.i, label %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i
  %i.df = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.i54146
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  br label %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i

_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i: ; preds = %bb.ab, %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i
  %.0.i23.i = phi i32 [ %i.dg, %bb.ab ], [ 0, %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i ] ; 3 uses
  %.not.i55 = icmp ult i32 %.0.i.i, %.0.i23.i
  %.not28.i = icmp ugt i32 %.0.i.i, %.0.i23.i
  %..0.i = select i1 %.not28.i, i32 1, i32 %.0.i147
  %cond1.i = icmp eq i32 %.0.i.i, %.0.i23.i
  %.1.i = select i1 %.not.i55, i32 -1, i32 %..0.i ; 2 uses
  br i1 %cond1.i, label %bb.y, label %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i._ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit_crit_edge, !llvm.loop !30

_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i._ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit_crit_edge: ; preds = %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i
  br label %_ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit, !llvm.loop !30

_ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit: ; preds = %bb.y, %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i._ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit_crit_edge, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit
  %spec.select.i = phi i32 [ %.1.i, %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i._ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit_crit_edge ], [ 0, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit ], [ 0, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.bi

bb.ac:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.dh = sub nsw i32 0, %i.b
  call void @_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12FiveToTheNthEi(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::strings_internal::BigUnsigned") align 4 %5, i32 noundef %i.dh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 %i.d, ptr %i.a, align 8
  %i.di = icmp ult i64 %i.c, 4294967296
  %i.dj = load i32, ptr %5, align 4, !tbaa !25
  %.fr12.i.i = freeze i32 %i.dj                   ; 9 uses
  br i1 %i.di, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.dk = icmp ne i64 %i.c, 0
  %i.dl = icmp sgt i32 %.fr12.i.i, 0
  %or.cond = and i1 %i.dk, %i.dl
  br i1 %or.cond, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit

.lr.ph.i.i:                                       ; preds = %bb.ad
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %wide.trip.count.i.i = zext nneg i32 %.fr12.i.i to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.dn = icmp eq i32 %.fr12.i.i, 1
  br i1 %i.dn, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.ae

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.ae
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.unr-lcssa ]
  %.01418.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ek, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod154 = trunc i32 %.fr12.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod154)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dq = zext i32 %i.dp to i64
  %i.dr = mul nuw i64 %i.d, %i.dq
  %i.ds = add nuw i64 %i.dr, %.01418.i.i.epil.init ; 2 uses
  %i.dt = trunc i64 %i.ds to i32
  store i32 %i.dt, ptr %i.do, align 4, !tbaa !3
  %i.du = lshr i64 %i.ds, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ek, %._crit_edge.i.i.unr-lcssa ], [ %i.du, %.epil.preheader ] ; 2 uses
  %.not.i.i = icmp ne i64 %.lcssa, 0
  %i.dv = icmp samesign ult i32 %.fr12.i.i, 84
  %or.cond17.i.i = and i1 %i.dv, %.not.i.i
  br i1 %or.cond17.i.i, label %bb.af, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.ae ] ; 3 uses
  %.01418.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ek, %bb.ae ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.ae ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.i.i ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.dy = zext i32 %i.dx to i64
  %i.dz = mul nuw i64 %i.d, %i.dy
  %i.ea = add nuw i64 %i.dz, %.01418.i.i          ; 2 uses
  %i.eb = trunc i64 %i.ea to i32
  store i32 %i.eb, ptr %i.dw, align 4, !tbaa !3
  %i.ec = lshr i64 %i.ea, 32
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3
  %i.eg = zext i32 %i.ef to i64
  %i.eh = mul nuw i64 %i.d, %i.eg
  %i.ei = add nuw i64 %i.eh, %i.ec                ; 2 uses
  %i.ej = trunc i64 %i.ei to i32
  store i32 %i.ej, ptr %i.ee, align 4, !tbaa !3
  %i.ek = lshr i64 %i.ei, 32                      ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.ae, !llvm.loop !31

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.el = trunc nuw i64 %.lcssa to i32
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %wide.trip.count.i.i
  store i32 %i.el, ptr %i.em, align 4, !tbaa !3
  %i.en = add nuw nsw i32 %.fr12.i.i, 1
  store i32 %i.en, ptr %5, align 4, !tbaa !25
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit

bb.ag:                                            ; preds = %bb.ac
  %6 = icmp ult i32 %.fr12.i.i, 2147483646
  br i1 %6, label %select.unfold.preheader.i.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit

select.unfold.preheader.i.i:                      ; preds = %bb.ag
  %i.eo = call i32 @llvm.umin.i32(i32 %.fr12.i.i, i32 83)
  br label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %select.unfold.i.i, %select.unfold.preheader.i.i
  %.013.i.i = phi i32 [ %i.ep, %select.unfold.i.i ], [ %i.eo, %select.unfold.preheader.i.i ] ; 3 uses
  call void @_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii(ptr noundef nonnull align 4 dereferenceable(340) %5, i32 noundef %.fr12.i.i, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef %.013.i.i)
  %i.ep = add nsw i32 %.013.i.i, -1
  %.not.i2.i = icmp eq i32 %.013.i.i, 0
  br i1 %.not.i2.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit, label %select.unfold.i.i, !llvm.loop !32

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit: ; preds = %select.unfold.i.i, %bb.ad, %._crit_edge.i.i, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.not = icmp slt i32 %i.b, %1
  br i1 %.not, label %bb.as, label %bb.ah

bb.ah:                                            ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit
  %i.eq = sub nsw i32 %i.b, %i.e                  ; 4 uses
  %i.er = lshr i32 %i.eq, 5                       ; 7 uses
  %i.es = icmp samesign ugt i32 %i.eq, 2687
  %i.et = load i32, ptr %3, align 4, !tbaa !25    ; 3 uses
  br i1 %i.es, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eu = icmp slt i32 %i.et, 1
  br i1 %i.eu, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i72, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i70

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i70: ; preds = %bb.ai
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ew = zext nneg i32 %i.et to i64
  %.idx.i.i.i.i71 = shl nuw nsw i64 %i.ew, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ev, i8 0, i64 %.idx.i.i.i.i71, i1 false), !tbaa !3
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i72

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i72: ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i70, %bb.ai
  store i32 0, ptr %3, align 4, !tbaa !25
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73

bb.aj:                                            ; preds = %bb.ah
  %i.ex = add nsw i32 %i.et, %i.er                ; 3 uses
  %.sroa.speculated28.i56 = call i32 @llvm.smin.i32(i32 %i.ex, i32 84) ; 4 uses
  store i32 %.sroa.speculated28.i56, ptr %3, align 4, !tbaa !25
  %i.ey = and i32 %i.eq, 31                       ; 2 uses
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.fb = sext i32 %.sroa.speculated28.i56 to i64 ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.fb ; 2 uses
  %.idx.i69 = shl nsw i64 %i.fb, 2
  %i.fd = shl nuw nsw i32 %i.er, 2
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = sub nsw i64 %.idx.i69, %i.fe            ; 3 uses
  %i.fg = ashr exact i64 %i.ff, 2                 ; 2 uses
  %i.fh = icmp sgt i64 %i.fg, 1
  br i1 %i.fh, label %bb.al, label %bb.am, !prof !27

bb.al:                                            ; preds = %bb.ak
  %i.fi = sub nsw i64 0, %i.fg
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fi
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fj, ptr nonnull align 4 %i.fa, i64 %i.ff, i1 false)
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62

bb.am:                                            ; preds = %bb.ak
  %i.fk = icmp eq i64 %i.ff, 4
  br i1 %i.fk, label %bb.an, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62

bb.an:                                            ; preds = %bb.am
  %i.fl = getelementptr inbounds i8, ptr %i.fc, i64 -4
  %i.fm = load i32, ptr %i.fa, align 4, !tbaa !3
  store i32 %i.fm, ptr %i.fl, align 4, !tbaa !3
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62

bb.ao:                                            ; preds = %bb.aj
  %.sroa.speculated.i57 = call i32 @llvm.smin.i32(i32 %i.ex, i32 83) ; 2 uses
  %i.fn = icmp sgt i32 %.sroa.speculated.i57, %i.er
  br i1 %i.fn, label %.lr.ph.i66, label %.._crit_edge_crit_edge.i58

.._crit_edge_crit_edge.i58:                       ; preds = %bb.ao
  %.pre.i59 = zext nneg i32 %i.er to i64
  br label %._crit_edge.i60

.lr.ph.i66:                                       ; preds = %bb.ao
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.fp = zext nneg i32 %.sroa.speculated.i57 to i64
  %i.fq = zext nneg i32 %i.er to i64              ; 3 uses
  br label %bb.ap

._crit_edge.i60:                                  ; preds = %bb.ap, %.._crit_edge_crit_edge.i58
  %.pre-phi.i61 = phi i64 [ %.pre.i59, %.._crit_edge_crit_edge.i58 ], [ %i.fq, %bb.ap ]
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3
  %i.ft = shl i32 %i.fs, %i.ey
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.pre-phi.i61
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !3
  %i.fv = icmp slt i32 %i.ex, 84
  br i1 %i.fv, label %bb.aq, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.i66
  %indvars.iv.i67 = phi i64 [ %i.fp, %.lr.ph.i66 ], [ %indvars.iv.next.i68, %bb.ap ] ; 3 uses
  %i.fw = sub nsw i64 %indvars.iv.i67, %i.fq
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.fz = getelementptr i8, ptr %i.fx, i64 -4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !3
  %i.gb = call i32 @llvm.fshl.i32(i32 %i.fy, i32 %i.ga, i32 %i.eq)
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i67
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !3
  %indvars.iv.next.i68 = add nsw i64 %indvars.iv.i67, -1 ; 2 uses
  %i.gd = icmp samesign ugt i64 %indvars.iv.next.i68, %i.fq
  br i1 %i.gd, label %bb.ap, label %._crit_edge.i60, !llvm.loop !28

bb.aq:                                            ; preds = %._crit_edge.i60
  %i.ge = sext i32 %.sroa.speculated28.i56 to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !3
  %.not.i65 = icmp eq i32 %i.gg, 0
  br i1 %.not.i65, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gh = add nsw i32 %.sroa.speculated28.i56, 1
  store i32 %i.gh, ptr %3, align 4, !tbaa !25
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62

_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62:   ; preds = %bb.ar, %bb.aq, %._crit_edge.i60, %bb.an, %bb.am, %bb.al
  %i.gi = icmp eq i32 %i.er, 0
  br i1 %i.gi, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i63

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i63: ; preds = %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gk = shl nuw nsw i32 %i.er, 2
  %.idx.i.i.i64 = zext nneg i32 %i.gk to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gj, i8 0, i64 %.idx.i.i.i64, i1 false), !tbaa !3
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73

bb.as:                                            ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit
  %i.gl = sub nsw i32 %i.e, %i.b                  ; 5 uses
  %i.gm = icmp sgt i32 %i.gl, 0
  br i1 %i.gm, label %bb.at, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73

bb.at:                                            ; preds = %bb.as
  %i.gn = lshr i32 %i.gl, 5                       ; 7 uses
  %i.go = icmp samesign ugt i32 %i.gl, 2687
  %i.gp = load i32, ptr %5, align 4, !tbaa !25    ; 3 uses
  br i1 %i.go, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gq = icmp slt i32 %i.gp, 1
  br i1 %i.gq, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i90, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i88

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i88: ; preds = %bb.au
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.gs = zext nneg i32 %i.gp to i64
  %.idx.i.i.i.i89 = shl nuw nsw i64 %i.gs, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gr, i8 0, i64 %.idx.i.i.i.i89, i1 false), !tbaa !3
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i90

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i90: ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i88, %bb.au
  store i32 0, ptr %5, align 4, !tbaa !25
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73

bb.av:                                            ; preds = %bb.at
  %i.gt = add nsw i32 %i.gp, %i.gn                ; 3 uses
  %.sroa.speculated28.i74 = call i32 @llvm.smin.i32(i32 %i.gt, i32 84) ; 4 uses
  store i32 %.sroa.speculated28.i74, ptr %5, align 4, !tbaa !25
  %i.gu = and i32 %i.gl, 31                       ; 2 uses
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.gx = sext i32 %.sroa.speculated28.i74 to i64 ; 2 uses
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.gx ; 2 uses
  %.idx.i87 = shl nsw i64 %i.gx, 2
  %i.gz = shl nuw nsw i32 %i.gn, 2
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = sub nsw i64 %.idx.i87, %i.ha            ; 3 uses
  %i.hc = ashr exact i64 %i.hb, 2                 ; 2 uses
  %i.hd = icmp sgt i64 %i.hc, 1
  br i1 %i.hd, label %bb.ax, label %bb.ay, !prof !27

bb.ax:                                            ; preds = %bb.aw
  %i.he = sub nsw i64 0, %i.hc
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.he
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hf, ptr nonnull align 4 %i.gw, i64 %i.hb, i1 false)
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80

bb.ay:                                            ; preds = %bb.aw
  %i.hg = icmp eq i64 %i.hb, 4
  br i1 %i.hg, label %bb.az, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80

bb.az:                                            ; preds = %bb.ay
  %i.hh = getelementptr inbounds i8, ptr %i.gy, i64 -4
  %i.hi = load i32, ptr %i.gw, align 4, !tbaa !3
  store i32 %i.hi, ptr %i.hh, align 4, !tbaa !3
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80

bb.ba:                                            ; preds = %bb.av
  %.sroa.speculated.i75 = call i32 @llvm.smin.i32(i32 %i.gt, i32 83) ; 2 uses
  %i.hj = icmp sgt i32 %.sroa.speculated.i75, %i.gn
  br i1 %i.hj, label %.lr.ph.i84, label %.._crit_edge_crit_edge.i76

.._crit_edge_crit_edge.i76:                       ; preds = %bb.ba
  %.pre.i77 = zext nneg i32 %i.gn to i64
  br label %._crit_edge.i78

end_hunk_0
