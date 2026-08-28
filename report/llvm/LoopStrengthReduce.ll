Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopStrengthReduce?download=true
inline.NumInlined: 10948
inline.NumDeleted: 5106
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_111LSRInstance26GenerateReassociationsImplERNS_6LSRUseEjRKNS_7FormulaEjmb:bb.a
  %i.ci = call fastcc noundef ptr @_ZL13ExtractSymbolRN4llvm8SCEVUseTIPKNS_4SCEVEEERNS_15ScalarEvolutionE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(1152) %i.bx) ; 2 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %8, align 8
  %i.cj = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = call noundef zeroext i1 @_ZNK4llvm4SCEV6isZeroEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ck) #23
  br i1 %i.cl, label %bb.l, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread138

bb.l:                                             ; preds = %bb.k
  %i.cm = icmp eq i64 %.fca.0.extract.i, 0
  %i.cn = icmp eq ptr %i.ci, null
  %or.cond.not.i = and i1 %i.cn, %i.cm
  br i1 %or.cond.not.i, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread140, label %bb.m

_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread140: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.co = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.co, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread138, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit

_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread138: ; preds = %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.n

_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit: ; preds = %bb.m
  %i.cp = icmp eq i32 %i.by, 3
  %i.cq = select i1 %i.cp, i64 -1, i64 1
  %i.cr = call fastcc noundef zeroext i1 @_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, i64 %.sroa.028.0.copyload, i8 %.sroa.229.0.copyload, i64 %.sroa.025.0.copyload, i8 %.sroa.226.0.copyload, i32 noundef %i.by, ptr %.sroa.0130.0.copyload, i32 %.sroa.2.0.copyload, ptr noundef %i.ci, i64 %.fca.0.extract.i, i8 0, i1 noundef zeroext %i.cd, i64 noundef %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %i.cr, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread138, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.cs = load ptr, ptr %9, align 8, !tbaa !21    ; 6 uses
  store ptr %i.ap, ptr %10, align 8, !tbaa !21
  store i32 0, ptr %i.aq, align 8, !tbaa !50
  store i32 8, ptr %i.ar, align 4, !tbaa !51
  %i.ct = ptrtoint ptr %.0155 to i64
  %i.cu = ptrtoint ptr %i.cs to i64               ; 3 uses
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = ashr exact i64 %i.cv, 3                 ; 3 uses
  %i.cx = icmp ugt i64 %i.cw, 8
  br i1 %i.cx, label %bb.o, label %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull %i.ap, i64 noundef %i.cw, i64 noundef 8) #23
  %.pre.i.i = load i32, ptr %i.aq, align 8, !tbaa !50 ; 2 uses
  %.pre9.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i: ; preds = %bb.o, %bb.n
  %.pre-phi.i.i = phi i64 [ 0, %bb.n ], [ %.pre9.i.i, %bb.o ] ; 2 uses
  %i.cy = phi i32 [ 0, %bb.n ], [ %.pre.i.i, %bb.o ]
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.cs, %.0155
  br i1 %.not9.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj8EEC2IPKS4_vEET_SA_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i
  %i.cz = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.pre-phi.i.i ; 4 uses
  %i.db = sub i64 %i.bl, %i.cu                    ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check187 = icmp ult i64 %i.db, 40
  br i1 %min.iters.check187, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck184

vector.memcheck184:                               ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.de = ptrtoaddr ptr %i.cz to i64
  %i.df = shl nuw nsw i64 %.pre-phi.i.i, 3
  %i.dg = add i64 %i.df, %i.de
  %i.dh = sub i64 %i.cu, %i.dg
  %diff.check185 = icmp ugt i64 %i.dh, -32
  br i1 %diff.check185, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph188

vector.ph188:                                     ; preds = %vector.memcheck184
  %n.vec189 = and i64 %i.dd, 4611686018427387900  ; 3 uses
  %i.di = shl i64 %n.vec189, 3                    ; 2 uses
  %i.dj = getelementptr i8, ptr %i.da, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.cs, i64 %i.di
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph188
  %index191 = phi i64 [ 0, %vector.ph188 ], [ %index.next196, %vector.body190 ] ; 2 uses
  %i.dl = shl i64 %index191, 3                    ; 2 uses
  %next.gep192 = getelementptr i8, ptr %i.da, i64 %i.dl ; 2 uses
  %next.gep193 = getelementptr i8, ptr %i.cs, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep193, i64 16
  %wide.load194 = load <2 x ptr>, ptr %next.gep193, align 8, !tbaa !456
  %wide.load195 = load <2 x ptr>, ptr %i.dm, align 8, !tbaa !456
  %i.dn = ptrtoint <2 x ptr> %wide.load194 to <2 x i64>
  %i.do = ptrtoint <2 x ptr> %wide.load195 to <2 x i64>
  %i.dp = and <2 x i64> %i.dn, splat (i64 -7)
  %i.dq = and <2 x i64> %i.do, splat (i64 -7)
  %i.dr = getelementptr i8, ptr %next.gep192, i64 16
  store <2 x i64> %i.dp, ptr %next.gep192, align 8
  store <2 x i64> %i.dq, ptr %i.dr, align 8
  %index.next196 = add nuw i64 %index191, 4       ; 2 uses
  %i.ds = icmp eq i64 %index.next196, %n.vec189
  br i1 %i.ds, label %middle.block197, label %vector.body190, !llvm.loop !1545

middle.block197:                                  ; preds = %vector.body190
  %cmp.n198 = icmp eq i64 %i.dd, %n.vec189
  br i1 %cmp.n198, label %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %vector.memcheck184, %.lr.ph.i.i.i.i.preheader.i.i, %middle.block197
  %.011.i.i.i.i.i.i.ph = phi ptr [ %i.da, %vector.memcheck184 ], [ %i.da, %.lr.ph.i.i.i.i.preheader.i.i ], [ %i.dj, %middle.block197 ] ; 2 uses
  %.0810.i.i.i.i.i.i.ph = phi ptr [ %i.cs, %vector.memcheck184 ], [ %i.cs, %.lr.ph.i.i.i.i.preheader.i.i ], [ %i.dk, %middle.block197 ] ; 3 uses
  %.0810.i.i.i.i.i.i.ph205 = ptrtoaddr ptr %.0810.i.i.i.i.i.i.ph to i64
  %i.dt = sub i64 %i.bl, %.0810.i.i.i.i.i.i.ph205 ; 2 uses
  %i.du = lshr i64 %i.dt, 3
  %i.dv = add nuw nsw i64 %i.du, 1
  %xtraiter = and i64 %i.dv, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.011.i.i.i.i.i.i.prol = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i.i.prol ], [ %.011.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.i.i.i.prol = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.i.prol ], [ %.0810.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.dw = load ptr, ptr %.0810.i.i.i.i.i.i.prol, align 8, !tbaa !456
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = and i64 %i.dx, -7
  store i64 %i.dy, ptr %.011.i.i.i.i.i.i.prol, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1546

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.i.unr = phi ptr [ %.011.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ea, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0810.i.i.i.i.i.i.unr = phi ptr [ %.0810.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.eb = icmp ult i64 %i.dt, 56
  br i1 %i.eb, label %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i ], [ %.011.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i ], [ %.0810.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ec = load ptr, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !456
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = and i64 %i.ed, -7
  store i64 %i.ee, ptr %.011.i.i.i.i.i.i, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !456
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, -7
  store i64 %i.ej, ptr %i.eg, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 16
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !456
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = and i64 %i.en, -7
  store i64 %i.eo, ptr %i.el, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 24
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !456
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = and i64 %i.es, -7
  store i64 %i.et, ptr %i.eq, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 32
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !456
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = and i64 %i.ex, -7
  store i64 %i.ey, ptr %i.ev, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 40
  %i.fa = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 40
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !456
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = and i64 %i.fc, -7
  store i64 %i.fd, ptr %i.fa, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 48
  %i.ff = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 48
  %i.fg = load ptr, ptr %i.fe, align 8, !tbaa !456
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = and i64 %i.fh, -7
  store i64 %i.fi, ptr %i.ff, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 56
  %i.fk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 56
  %i.fl = load ptr, ptr %i.fj, align 8, !tbaa !456
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = and i64 %i.fm, -7
  store i64 %i.fn, ptr %i.fk, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i.i.7 = icmp eq ptr %i.fo, %.0155
  br i1 %.not.i.i.i.i.i.i.7, label %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1547

_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block197
  %.pre8.i.i = load i32, ptr %i.aq, align 8, !tbaa !50
  br label %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj8EEC2IPKS4_vEET_SA_.exit

_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj8EEC2IPKS4_vEET_SA_.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i.i
  %i.fq = phi i32 [ %.pre8.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i.i ], [ %i.cy, %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i ]
  %i.fr = trunc i64 %i.cw to i32
  %i.fs = add i32 %i.fq, %i.fr                    ; 3 uses
  store i32 %i.fs, ptr %i.aq, align 8, !tbaa !50
  %i.ft = getelementptr inbounds nuw i8, ptr %.0155, i64 8 ; 6 uses
  %i.fu = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %13 = ptrtoaddr ptr %i.fu to i64
  %i.fv = load i32, ptr %i.s, align 8, !tbaa !50
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fw ; 3 uses
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.ft to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = ashr exact i64 %i.ga, 3                 ; 2 uses
  %i.gc = zext i32 %i.fs to i64                   ; 2 uses
  %i.gd = add nsw i64 %i.gb, %i.gc                ; 2 uses
  %i.ge = load i32, ptr %i.ar, align 4, !tbaa !51
  %i.gf = zext i32 %i.ge to i64
  %i.gg = icmp ugt i64 %i.gd, %i.gf
  br i1 %i.gg, label %bb.p, label %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i

bb.p:                                             ; preds = %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj8EEC2IPKS4_vEET_SA_.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull %i.ap, i64 noundef %i.gd, i64 noundef 8) #23
  %.pre.i = load i32, ptr %i.aq, align 8, !tbaa !50 ; 2 uses
  %.pre9.i = zext i32 %.pre.i to i64
  br label %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i: ; preds = %bb.p, %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj8EEC2IPKS4_vEET_SA_.exit
  %.pre-phi.i = phi i64 [ %i.gc, %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj8EEC2IPKS4_vEET_SA_.exit ], [ %.pre9.i, %bb.p ] ; 2 uses
  %i.gh = phi i32 [ %i.fs, %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj8EEC2IPKS4_vEET_SA_.exit ], [ %.pre.i, %bb.p ]
  %.not9.i.i.i.i.i = icmp eq ptr %i.ft, %i.fx
  br i1 %.not9.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE6appendIPKS4_vEEvT_SA_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i
  %i.gi = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %.pre-phi.i ; 4 uses
  %i.gk = add i64 %.reass, %13
  %i.gl = lshr i64 %i.gk, 3
  %i.gm = add nuw nsw i64 %i.gl, %i.fw
  %i.gn = and i64 %i.gm, 2305843009213693951      ; 2 uses
  %i.go = add nuw nsw i64 %i.gn, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.gn, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.gp = ptrtoaddr ptr %i.gi to i64
  %i.gq = shl nuw nsw i64 %.pre-phi.i, 3
  %op.rdx = add nsw i64 %i.gq, -9
  %op.rdx203 = add i64 %reass.sub202, %i.gp
  %op.rdx204 = add i64 %op.rdx, %op.rdx203
  %diff.check = icmp ult i64 %op.rdx204, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.go, 4611686018427387900     ; 3 uses
  %i.gr = shl i64 %n.vec, 3                       ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gj, i64 %i.gr
  %i.gt = getelementptr i8, ptr %i.ft, i64 %i.gr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gj, i64 %i.gu ; 2 uses
  %next.gep181 = getelementptr i8, ptr %i.ft, i64 %i.gu ; 2 uses
  %i.gv = getelementptr i8, ptr %next.gep181, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep181, align 8, !tbaa !456
  %wide.load182 = load <2 x ptr>, ptr %i.gv, align 8, !tbaa !456
  %i.gw = ptrtoint <2 x ptr> %wide.load to <2 x i64>
  %i.gx = ptrtoint <2 x ptr> %wide.load182 to <2 x i64>
  %i.gy = and <2 x i64> %i.gw, splat (i64 -7)
  %i.gz = and <2 x i64> %i.gx, splat (i64 -7)
  %i.ha = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.gy, ptr %next.gep, align 8
  store <2 x i64> %i.gz, ptr %i.ha, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hb = icmp eq i64 %index.next, %n.vec
  br i1 %i.hb, label %middle.block, label %vector.body, !llvm.loop !1548

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.go, %n.vec
  br i1 %cmp.n, label %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader.i, %middle.block
  %.011.i.i.i.i.i.ph = phi ptr [ %i.gj, %vector.memcheck ], [ %i.gj, %.lr.ph.i.i.i.i.preheader.i ], [ %i.gs, %middle.block ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.ft, %vector.memcheck ], [ %i.ft, %.lr.ph.i.i.i.i.preheader.i ], [ %i.gt, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.hf, %.lr.ph.i.i.i.i.i ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.hc = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !456
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = and i64 %i.hd, -7
  store i64 %i.he, ptr %.011.i.i.i.i.i, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.hf, %i.fx
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1549

_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.pre8.i = load i32, ptr %i.aq, align 8, !tbaa !50
  br label %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE6appendIPKS4_vEEvT_SA_.exit

_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE6appendIPKS4_vEEvT_SA_.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i, %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i
  %i.hh = phi i32 [ %.pre8.i, %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i ], [ %i.gh, %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i ]
  %i.hi = trunc i64 %i.gb to i32
  %i.hj = add i32 %i.hh, %i.hi                    ; 2 uses
  store i32 %i.hj, ptr %i.aq, align 8, !tbaa !50
  %i.hk = icmp eq i32 %i.hj, 1
  br i1 %i.hk, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE6appendIPKS4_vEEvT_SA_.exit
  %i.hl = load ptr, ptr %i.aj, align 8, !tbaa !580, !nonnull !19, !align !34
  %i.hm = load ptr, ptr %i.w, align 8, !tbaa !577, !nonnull !19, !align !34 ; 2 uses
  %.sroa.022.0.copyload = load i64, ptr %i.ak, align 8
  %.sroa.223.0.copyload = load i8, ptr %.sroa.229.0..sroa_idx, align 8
  %.sroa.020.0.copyload = load i64, ptr %i.al, align 8
  %.sroa.221.0.copyload = load i8, ptr %.sroa.226.0..sroa_idx, align 8
  %i.hn = load i32, ptr %i.am, align 8, !tbaa !812 ; 2 uses
  %.sroa.0134.0.copyload = load ptr, ptr %i.an, align 8, !tbaa !603
  %.sroa.2135.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !478
  %i.ho = load ptr, ptr %10, align 8, !tbaa !21
  %.0.copyload.i.i.i.i = load i64, ptr %i.ho, align 8
  %i.hp = and i64 %.0.copyload.i.i.i.i, -8        ; 2 uses
  %i.hq = inttoptr i64 %i.hp to ptr
  %.val82 = load i32, ptr %i.ao, align 8, !tbaa !50
  %.val83 = load ptr, ptr %i.a, align 8, !tbaa !714
  %i.hr = icmp ne ptr %.val83, null
  %i.hs = zext i1 %i.hr to i64
  %i.ht = zext i32 %.val82 to i64
  %i.hu = add nuw nsw i64 %i.hs, %i.ht
  %i.hv = icmp samesign ugt i64 %i.hu, 1
  %i.hw = call noundef zeroext i1 @_ZNK4llvm4SCEV6isZeroEv(ptr noundef nonnull align 8 dereferenceable(40) %i.hq) #23
  br i1 %i.hw, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i64 %i.hp, ptr %7, align 8
  %i.hx = call fastcc { i64, i8 } @_ZL16ExtractImmediateRN4llvm8SCEVUseTIPKNS_4SCEVEEERNS_15ScalarEvolutionEb(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(1152) %i.hm, i1 noundef zeroext false) ; 2 uses
  %.fca.0.extract.i90 = extractvalue { i64, i8 } %i.hx, 0 ; 2 uses
  %.fca.1.extract.i91 = extractvalue { i64, i8 } %i.hx, 1
  %i.hy = call fastcc noundef ptr @_ZL13ExtractSymbolRN4llvm8SCEVUseTIPKNS_4SCEVEEERNS_15ScalarEvolutionE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(1152) %i.hm) ; 2 uses
  %.0.copyload.i.i.i.i.i92 = load i64, ptr %7, align 8
  %i.hz = and i64 %.0.copyload.i.i.i.i.i92, -8
  %i.ia = inttoptr i64 %i.hz to ptr
  %i.ib = call noundef zeroext i1 @_ZNK4llvm4SCEV6isZeroEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ia) #23
  br i1 %i.ib, label %bb.s, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99.thread143

bb.s:                                             ; preds = %bb.r
  %i.ic = icmp eq i64 %.fca.0.extract.i90, 0
  %i.id = icmp eq ptr %i.hy, null
  %or.cond.not.i95 = and i1 %i.id, %i.ic
  br i1 %or.cond.not.i95, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99.thread145, label %bb.t

_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99.thread145: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99.thread

bb.t:                                             ; preds = %bb.s
  %i.ie = trunc nuw i8 %.fca.1.extract.i91 to i1
  br i1 %i.ie, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99.thread143, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99

_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99.thread143: ; preds = %bb.r, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.u

_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99: ; preds = %bb.t
  %i.if = icmp eq i32 %i.hn, 3
  %i.ig = select i1 %i.if, i64 -1, i64 1
  %i.ih = call fastcc noundef zeroext i1 @_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl(ptr noundef nonnull align 8 dereferenceable(8) %i.hl, i64 %.sroa.022.0.copyload, i8 %.sroa.223.0.copyload, i64 %.sroa.020.0.copyload, i8 %.sroa.221.0.copyload, i32 noundef %i.hn, ptr %.sroa.0134.0.copyload, i32 %.sroa.2135.0.copyload, ptr noundef %i.hy, i64 %.fca.0.extract.i90, i8 0, i1 noundef zeroext %i.hv, i64 noundef %i.ig)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.ih, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99.thread, label %bb.u

bb.u:                                             ; preds = %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99.thread143, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99, %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE6appendIPKS4_vEEvT_SA_.exit
  %i.ii = load ptr, ptr %i.w, align 8, !tbaa !577, !nonnull !19, !align !34
  %i.ij = call noundef ptr @_ZN4llvm15ScalarEvolution10getAddExprERNS_15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEEENS_15SCEVNoWrapFlagsEj(ptr noundef nonnull align 8 dereferenceable(1152) %i.ii, ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 0, i32 noundef 0) #23 ; 5 uses
  %i.ik = call noundef zeroext i1 @_ZNK4llvm4SCEV6isZeroEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ij) #23
  br i1 %i.ik, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %11, ptr noundef nonnull readonly align 8 dereferenceable(112) %3, i64 40, i1 false)
  store ptr %i.at, ptr %i.as, align 8, !tbaa !21
  store i32 0, ptr %i.au, align 8, !tbaa !50
  store i32 4, ptr %i.av, align 4, !tbaa !51
  %i.il = load i32, ptr %i.ao, align 8, !tbaa !50 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.il, 0
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.im = icmp ugt i32 %i.il, 4
  br i1 %i.im, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i: ; preds = %bb.w
  %i.in = zext i32 %i.il to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull %i.at, i64 noundef %i.in, i64 noundef 8) #23
  %.pre.i.i100 = load i32, ptr %i.ao, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.pre.i.i100, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i
  %.pre.i101 = load ptr, ptr %i.as, align 8, !tbaa !21
  br label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i: ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i, %bb.w
  %i.io = phi ptr [ %.pre.i101, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i ], [ %i.at, %bb.w ]
  %i.ip = phi i32 [ %.pre.i.i100, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i ], [ %i.il, %bb.w ]
  %i.iq = zext i32 %i.ip to i64
  %i.ir = load ptr, ptr %i.b, align 8, !tbaa !21
  %gepdiff.i.i.i = shl nuw nsw i64 %i.iq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.io, ptr align 8 %i.ir, i64 %gepdiff.i.i.i, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i
  store i32 %i.il, ptr %i.au, align 8, !tbaa !50
  br label %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit

_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit:           ; preds = %bb.v, %.sink.split.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(17) %i.a, i64 17, i1 false)
  %.val = load i64, ptr %i.ax, align 8, !tbaa !805
  %i.is = icmp ne i64 %.val, 0
  %.val77 = load i8, ptr %i.ay, align 8, !range !18
  %i.it = trunc nuw i8 %.val77 to i1
  %or.cond = select i1 %i.is, i1 %i.it, i1 false
  br i1 %or.cond, label %_ZN12_GLOBAL__N_17FormulaD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.iv = load i16, ptr %i.iu, align 8, !tbaa !438
  %.not149 = icmp eq i16 %i.iv, 0
  br i1 %.not149, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.iw = load ptr, ptr %i.w, align 8, !tbaa !577, !nonnull !19, !align !34
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ij, i64 40 ; 3 uses
end_hunk_0
