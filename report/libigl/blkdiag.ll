Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/blkdiag?download=true
inline.NumInlined: 472
inline.NumDeleted: 258
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_:bb.a
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !103

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = sub nsw i64 %.09.i.ph, %i.j
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.as = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.as, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_.exit, label %.preheader.i, !llvm.loop !104

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.be, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.at = getelementptr [8 x i8], ptr %i.ag, i64 %.09.i
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.09.i
  %i.au = load double, ptr %gep.i, align 8, !tbaa !20
  store double %i.au, ptr %i.at, align 8, !tbaa !20
  %i.av = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.ag, i64 %i.av
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.av
  %i.ax = load double, ptr %gep.i.1, align 8, !tbaa !20
  store double %i.ax, ptr %i.aw, align 8, !tbaa !20
  %i.ay = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.ag, i64 %i.ay
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ay
  %i.ba = load double, ptr %gep.i.2, align 8, !tbaa !20
  store double %i.ba, ptr %i.az, align 8, !tbaa !20
  %i.bb = add nuw nsw i64 %.09.i, 3               ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.ag, i64 %i.bb
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bb
  %i.bd = load double, ptr %gep.i.3, align 8, !tbaa !20
  store double %i.bd, ptr %i.bc, align 8, !tbaa !20
  %i.be = add nuw nsw i64 %.09.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.be, %i.j
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !105

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !29 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !29 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !106, !nonnull !93, !align !94
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !14
  %i.bn = and i64 %i.bm, 1
  %i.bo = icmp sgt i64 %i.bi, 0
  br i1 %i.bo, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.bp = lshr exact i64 %i.d, 3
  %i.bq = and i64 %i.bp, 1
  %i.br = tail call i64 @llvm.smin.i64(i64 %i.bq, i64 %i.bg)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.eg, %._crit_edge ] ; 8 uses
  %.03552 = phi i64 [ %i.br, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 6 uses
  %i.bt = shl i64 %.03453, 3                      ; 2 uses
  %i.bu = sub i64 %i.bg, %.03552                  ; 2 uses
  %i.bv = and i64 %i.bu, -2                       ; 2 uses
  %i.bw = add nsw i64 %i.bv, %.03552              ; 6 uses
  %i.bx = icmp sgt i64 %.03552, 0
  br i1 %i.bx, label %.preheader43.loopexit, label %.preheader43

.preheader43.loopexit:                            ; preds = %bb.c
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !107, !nonnull !93, !align !94 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !95
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !35
  %i.cc = mul nsw i64 %i.cb, %.03453
  %invariant.gep = getelementptr [8 x i8], ptr %i.bz, i64 %i.cc
  %i.cd = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !93, !align !94 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !36
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !29
  %i.ch = mul nsw i64 %i.cg, %.03453
  %i.ci = getelementptr [8 x i8], ptr %i.ce, i64 %i.ch
  %i.cj = load double, ptr %invariant.gep, align 8, !tbaa !20
  store double %i.cj, ptr %i.ci, align 8, !tbaa !20
  br label %.preheader43

.preheader43:                                     ; preds = %.preheader43.loopexit, %bb.c
  %i.ck = icmp sgt i64 %i.bu, 1
  br i1 %i.ck, label %.lr.ph47, label %.preheader

.preheader:                                       ; preds = %.lr.ph47, %.preheader43
  %i.cl = icmp slt i64 %i.bw, %i.bg
  br i1 %i.cl, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.cm = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !93, !align !94 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !36 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !29 ; 2 uses
  %i.cq = mul nsw i64 %i.cp, %.03453
  %i.cr = getelementptr [8 x i8], ptr %i.cn, i64 %i.cq ; 2 uses
  %i.cs = load ptr, ptr %i.bs, align 8, !tbaa !107, !nonnull !93, !align !94 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !95 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !35 ; 2 uses
  %i.cw = mul nsw i64 %i.cv, %.03453
  %invariant.gep50 = getelementptr [8 x i8], ptr %i.ct, i64 %i.cw ; 2 uses
  %i.cx = add i64 %.03552, %i.bv
  %i.cy = sub i64 %i.bg, %i.cx                    ; 3 uses
  %min.iters.check71 = icmp ult i64 %i.cy, 10
  br i1 %min.iters.check71, label %scalar.ph70.preheader, label %vector.memcheck69

vector.memcheck69:                                ; preds = %.lr.ph49
  %i.cz = ptrtoaddr ptr %i.ct to i64
  %i.da = ptrtoaddr ptr %i.cn to i64
  %i.db = mul i64 %i.cp, %i.bt
  %i.dc = add i64 %i.db, %i.da
  %i.dd = mul i64 %i.cv, %i.bt
  %i.de = add i64 %i.dd, %i.cz
  %i.df = sub i64 %i.de, %i.dc
  %diff.check = icmp ugt i64 %i.df, -32
  br i1 %diff.check, label %scalar.ph70.preheader, label %vector.ph72

vector.ph72:                                      ; preds = %vector.memcheck69
  %n.vec73 = and i64 %i.cy, -4                    ; 3 uses
  %i.dg = add i64 %i.bw, %n.vec73
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph72
  %index75 = phi i64 [ 0, %vector.ph72 ], [ %index.next78, %vector.body74 ] ; 2 uses
  %i.dh = add i64 %i.bw, %index75                 ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %i.cr, i64 %i.dh ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %invariant.gep50, i64 %i.dh ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  %wide.load76 = load <2 x double>, ptr %i.dj, align 8, !tbaa !20
  %wide.load77 = load <2 x double>, ptr %i.dk, align 8, !tbaa !20
  %i.dl = getelementptr i8, ptr %i.di, i64 16
  store <2 x double> %wide.load76, ptr %i.di, align 8, !tbaa !20
  store <2 x double> %wide.load77, ptr %i.dl, align 8, !tbaa !20
  %index.next78 = add nuw i64 %index75, 4         ; 2 uses
  %i.dm = icmp eq i64 %index.next78, %n.vec73
  br i1 %i.dm, label %middle.block79, label %vector.body74, !llvm.loop !109

middle.block79:                                   ; preds = %vector.body74
  %cmp.n80 = icmp eq i64 %i.cy, %n.vec73
  br i1 %cmp.n80, label %._crit_edge, label %scalar.ph70.preheader

scalar.ph70.preheader:                            ; preds = %vector.memcheck69, %.lr.ph49, %middle.block79
  %.048.ph = phi i64 [ %i.bw, %vector.memcheck69 ], [ %i.bw, %.lr.ph49 ], [ %i.dg, %middle.block79 ]
  br label %scalar.ph70

.lr.ph47:                                         ; preds = %.preheader43, %.lr.ph47
  %.03246 = phi i64 [ %i.ec, %.lr.ph47 ], [ %.03552, %.preheader43 ] ; 3 uses
  %i.dn = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !93, !align !94 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !36
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !29
  %i.dr = mul nsw i64 %i.dq, %.03453
  %i.ds = getelementptr [8 x i8], ptr %i.do, i64 %i.dr
  %i.dt = getelementptr [8 x i8], ptr %i.ds, i64 %.03246
  %i.du = load ptr, ptr %i.bs, align 8, !tbaa !107, !nonnull !93, !align !94 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !95
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %.03246
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !35
  %i.dz = mul nsw i64 %i.dy, %.03453
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dz
  %i.eb = load <2 x double>, ptr %i.ea, align 1, !tbaa !110
  store <2 x double> %i.eb, ptr %i.dt, align 16, !tbaa !110
  %i.ec = add nsw i64 %.03246, 2                  ; 2 uses
  %i.ed = icmp slt i64 %i.ec, %i.bw
  br i1 %i.ed, label %.lr.ph47, label %.preheader, !llvm.loop !111

._crit_edge:                                      ; preds = %scalar.ph70, %middle.block79, %.preheader
  %i.ee = add nsw i64 %.03552, %i.bn
  %i.ef = srem i64 %i.ee, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bg, i64 %i.ef)
  %i.eg = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond57.not = icmp eq i64 %i.eg, %i.bi
  br i1 %exitcond57.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_.exit, label %bb.c, !llvm.loop !112

scalar.ph70:                                      ; preds = %scalar.ph70.preheader, %scalar.ph70
  %.048 = phi i64 [ %i.ej, %scalar.ph70 ], [ %.048.ph, %scalar.ph70.preheader ] ; 3 uses
  %i.eh = getelementptr [8 x i8], ptr %i.cr, i64 %.048
  %gep51 = getelementptr [8 x i8], ptr %invariant.gep50, i64 %.048
  %i.ei = load double, ptr %gep51, align 8, !tbaa !20
  store double %i.ei, ptr %i.eh, align 8, !tbaa !20
  %i.ej = add nsw i64 %.048, 1                    ; 2 uses
  %i.ek = icmp slt i64 %i.ej, %i.bg
  br i1 %i.ek, label %scalar.ph70, label %._crit_edge, !llvm.loop !113

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !65
  %i.c = add nsw i64 %i.b, %1                     ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !66
  %i.f = icmp sgt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  %i.h = shl nuw i64 %i.c, 3
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #20 ; 3 uses
  %i.k = icmp ugt i64 %i.c, 4611686018427387903
  %i.l = shl nuw i64 %i.c, 2
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #20
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.b
  %2 = load i64, ptr %i.a, align 8, !tbaa !28
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %2, i64 %i.c) ; 3 uses
  %i.o = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !114 ; 3 uses
  br i1 %i.o, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !115
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %.pre.i, i64 %.idx.i, i1 false)
  %.idx22.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.q, i64 %.idx22.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i:  ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #21
  resume { ptr, i32 } %i.r

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.s = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.q, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !114
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.t, align 8, !tbaa !115
  store i64 %i.c, ptr %i.d, align 8, !tbaa !66
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #21
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i:  ; preds = %bb.c, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  %i.v = icmp eq ptr %.pre.i, null
  br i1 %i.v, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #21
  br label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit: ; preds = %bb.d, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, double noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66
  %i.c = icmp slt i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sitofp i64 %1 to double
  %i.e = fmul double %2, %i.d
  %i.f = fptosi double %i.e to i64
  %i.g = add nsw i64 %1, %i.f
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.g, i64 2147483647) ; 7 uses
  %i.h = icmp slt i64 %.sroa.speculated, %1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %.sroa.speculated, 2305843009213693951
  %i.k = shl nuw i64 %.sroa.speculated, 3
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #20 ; 3 uses
  %i.n = icmp ugt i64 %.sroa.speculated, 4611686018427387903
  %i.o = shl nuw i64 %.sroa.speculated, 2
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #20
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !28
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.s, i64 %.sroa.speculated) ; 3 uses
  %i.t = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !114 ; 3 uses
  br i1 %i.t, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !115
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %.pre.i, i64 %.idx.i, i1 false)
  %.idx22.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !58   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %i.v, i64 %.idx22.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i:  ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #21
  resume { ptr, i32 } %i.w

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.x = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.v, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !114
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.y, align 8, !tbaa !115
  store i64 %.sroa.speculated, ptr %i.a, align 8, !tbaa !66
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #21
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i:  ; preds = %bb.e, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  %i.aa = icmp eq ptr %.pre.i, null
  br i1 %i.aa, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #21
  br label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit: ; preds = %bb.f, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.ab, align 8, !tbaa !65
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi0EiE19reserveInnerVectorsINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !56   ; 13 uses
  %i.f = shl i64 %i.e, 2                          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #19 ; 7 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !61
  %.not80 = icmp eq ptr %i.g, null
  br i1 %.not80, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !89   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59   ; 4 uses
  %i.m = sext i32 %i.j to i64
  %xtraiter152 = and i64 %i.e, 1
  %i.n = icmp eq i64 %i.e, 1
  br i1 %i.n, label %.epil.preheader151, label %.lr.ph108.new

.lr.ph108.new:                                    ; preds = %.lr.ph108
  %unroll_iter155 = and i64 %i.e, 9223372036854775806
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
  unreachable

._crit_edge109.loopexit.unr-lcssa:                ; preds = %bb.d
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %._crit_edge109.loopexit, label %.epil.preheader151

.epil.preheader151:                               ; preds = %._crit_edge109.loopexit.unr-lcssa, %.lr.ph108
  %.076106.epil.init = phi i64 [ 0, %.lr.ph108 ], [ %i.ak, %._crit_edge109.loopexit.unr-lcssa ]
  %.077105.epil.init = phi i32 [ 0, %.lr.ph108 ], [ %i.ar, %._crit_edge109.loopexit.unr-lcssa ]
  %lcmp.mod154 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod154)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076106.epil.init
  store i32 %.077105.epil.init, ptr %i.p, align 4, !tbaa !60
  br label %._crit_edge109.loopexit

._crit_edge109.loopexit:                          ; preds = %._crit_edge109.loopexit.unr-lcssa, %.epil.preheader151
  %i.q = mul i64 %i.e, %i.m
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %._crit_edge109.loopexit, %.preheader
  %.070.lcssa = phi i64 [ 0, %.preheader ], [ %i.q, %._crit_edge109.loopexit ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %.070.lcssa)
end_hunk_0
