Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/toppush?download=true
inline.NumInlined: 3473
inline.NumDeleted: 1236
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z7push_bt9DirectiveRN3gmx16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS2_95EEEiP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePcP14WarningHandler:bb.a
  store <4 x double> %wide.load, ptr %i.cd, align 8, !tbaa !65
  store <4 x double> %wide.load302, ptr %i.ce, align 8, !tbaa !65
  store <4 x double> %wide.load303, ptr %i.cf, align 8, !tbaa !65
  store <4 x double> %wide.load304, ptr %i.cg, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !239

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZL13copy_B_from_A19InteractionFunctionPd.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec305 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index306 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next308, %vec.epilog.vector.body ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index306
  %wide.load307 = load <4 x double>, ptr %i.ci, align 16, !tbaa !65
  %i.cj = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index306
  store <4 x double> %wide.load307, ptr %i.cj, align 8, !tbaa !65
  %index.next308 = add nuw i64 %index306, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next308, %n.vec305
  br i1 %i.ck, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !240

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n309 = icmp eq i64 %n.vec305, %wide.trip.count.i
  br i1 %cmp.n309, label %_ZL13copy_B_from_A19InteractionFunctionPd.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec305, %vec.epilog.middle.block ] ; 4 uses
  %i.cl = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.cl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.prol
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !65
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  store double %i.cn, ptr %gep.i.prol, align 8, !tbaa !65
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !241

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.co = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.cp = icmp ugt i64 %i.co, -8
  br i1 %i.cp, label %_ZL13copy_B_from_A19InteractionFunctionPd.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !65
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store double %i.cr, ptr %gep.i, align 8, !tbaa !65
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !65
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  store double %i.ct, ptr %gep.i.1, align 8, !tbaa !65
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.1
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !65
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  store double %i.cv, ptr %gep.i.2, align 8, !tbaa !65
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.2
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !65
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  store double %i.cx, ptr %gep.i.3, align 8, !tbaa !65
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.3
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !65
  %gep.i.4 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.3
  store double %i.cz, ptr %gep.i.4, align 8, !tbaa !65
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.4
  %i.db = load double, ptr %i.da, align 8, !tbaa !65
  %gep.i.5 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.4
  store double %i.db, ptr %gep.i.5, align 8, !tbaa !65
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.5
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !65
  %gep.i.6 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.5
  store double %i.dd, ptr %gep.i.6, align 8, !tbaa !65
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.6
  %i.df = load double, ptr %i.de, align 8, !tbaa !65
  %gep.i.7 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.6
  store double %i.df, ptr %gep.i.7, align 8, !tbaa !65
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %_ZL13copy_B_from_A19InteractionFunctionPd.exit, label %.lr.ph.i, !llvm.loop !242

bb.q:                                             ; preds = %bb.o
  %i.dg = icmp slt i32 %i.bq, %i.ax
  br i1 %i.dg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %6, i64 21, ptr nonnull @.str.67)
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.dh = icmp sgt i32 %i.bq, %i.ax
  %i.di = icmp slt i32 %i.bq, %i.ba
  %or.cond78 = and i1 %i.dh, %i.di
  br i1 %or.cond78, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %6, i64 59, ptr nonnull @.str.68)
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.dj = icmp sgt i32 %i.bq, %i.ba
  br i1 %i.dj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %6, i64 19, ptr nonnull @.str.69)
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.v, %bb.u, %bb.r
  %i.dk = icmp slt i32 %i.bq, %i.ba
  br i1 %i.dk, label %.lr.ph.preheader, label %_ZL13copy_B_from_A19InteractionFunctionPd.exit

.lr.ph.preheader:                                 ; preds = %bb.w
  %i.dl = sext i32 %i.bq to i64
  %i.dm = shl nsw i64 %i.dl, 3
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.dm
  %i.dn = xor i32 %i.bq, -1
  %i.do = add i32 %i.ba, %i.dn
  %i.dp = zext i32 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, 3
  %i.dr = add nuw nsw i64 %i.dq, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.dr, i1 false), !tbaa !65
  br label %_ZL13copy_B_from_A19InteractionFunctionPd.exit

_ZL13copy_B_from_A19InteractionFunctionPd.exit:   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.lr.ph.preheader, %bb.w, %bb.p, %bb.n
  %i.ds = icmp eq i32 %2, 0                       ; 2 uses
  %or.cond.i = or i1 %i.ds, %i.i
  %or.cond3.i = or i1 %i.h, %or.cond.i
  br i1 %or.cond3.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZL13copy_B_from_A19InteractionFunctionPd.exit
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZL22atomTypesFromAtomNamesIA20_cESt6vectorIiSaIiEEPK22PreprocessingAtomTypesPK25PreprocessingBondAtomTypeN3gmx8ArrayRefIT_EEP14WarningHandlerENKUlvE_clEv, ptr noundef nonnull @.str.9, i32 noundef 810) #29, !noalias !248
  unreachable

bb.y:                                             ; preds = %_ZL13copy_B_from_A19InteractionFunctionPd.exit
  br i1 %i.ds, label %_ZL22atomTypesFromAtomNamesIA20_cESt6vectorIiSaIiEEPK22PreprocessingAtomTypesPK25PreprocessingBondAtomTypeN3gmx8ArrayRefIT_EEP14WarningHandler.exit, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.y
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 8
  br i1 %i.i, label %.preheader, label %.lr.ph.split.i

.preheader:                                       ; preds = %.lr.ph.i87, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.us.i
  %.sroa.14.2 = phi ptr [ %.sroa.14.3, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.us.i ], [ null, %.lr.ph.i87 ]
  %.sroa.0101.2 = phi ptr [ %.sroa.0101.3, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.us.i ], [ null, %.lr.ph.i87 ]
  %i.dx = phi ptr [ %i.fd, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.us.i ], [ null, %.lr.ph.i87 ] ; 9 uses
  %i.dy = phi ptr [ %i.fe, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.us.i ], [ null, %.lr.ph.i87 ] ; 7 uses
  %i.dz = phi ptr [ %.sroa.9.1, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.us.i ], [ null, %.lr.ph.i87 ] ; 3 uses
  %.sroa.091.0134.us.i = phi ptr [ %i.ff, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.us.i ], [ %i.f, %.lr.ph.i87 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30, !noalias !248
  store ptr %i.dv, ptr %7, align 8, !tbaa !18, !noalias !248
  %i.ea = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.091.0134.us.i) #30, !noalias !248 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !248
  store i64 %i.ea, ptr %i.b, align 8, !tbaa !20, !noalias !248
  %i.eb = icmp ugt i64 %i.ea, 15
  br i1 %i.eb, label %.noexc.i.us.i, label %._crit_edge.i.i.us.i

.noexc.i.us.i:                                    ; preds = %.preheader
  %i.ec = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc48.us.i unwind label %.loopexit102.split.us.loopexit.i, !noalias !248 ; 2 uses

.noexc48.us.i:                                    ; preds = %.noexc.i.us.i
  store ptr %i.ec, ptr %7, align 8, !tbaa !22, !noalias !248
  %i.ed = load i64, ptr %i.b, align 8, !tbaa !20, !noalias !248
  store i64 %i.ed, ptr %i.dv, align 8, !tbaa !23, !noalias !248
  br label %._crit_edge.i.i.us.i

._crit_edge.i.i.us.i:                             ; preds = %.noexc48.us.i, %.preheader
  %i.ee = phi ptr [ %i.ec, %.noexc48.us.i ], [ %i.dv, %.preheader ] ; 2 uses
  switch i64 %i.ea, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.us.i
  %i.ef = load i8, ptr %.sroa.091.0134.us.i, align 1, !tbaa !23, !noalias !248
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !23, !noalias !248
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ee, ptr nonnull align 1 %.sroa.091.0134.us.i, i64 %i.ea, i1 false), !noalias !248
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i.us.i
  %i.eg = load i64, ptr %i.b, align 8, !tbaa !20, !noalias !248 ; 2 uses
  store i64 %i.eg, ptr %i.dw, align 8, !tbaa !24, !noalias !248
  %i.eh = load ptr, ptr %7, align 8, !tbaa !22, !noalias !248
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eg
  store i8 0, ptr %i.ei, align 1, !tbaa !23, !noalias !248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30, !noalias !248
  %i.ej = invoke i64 @_ZNK22PreprocessingAtomTypes16atomTypeFromNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ac unwind label %.split137.us.i, !noalias !248 ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %.sroa.085.0.extract.trunc.us.i = trunc i64 %i.ej to i32 ; 2 uses
  %i.ek = load ptr, ptr %7, align 8, !tbaa !22, !noalias !248 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dv
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.i: ; preds = %bb.ac
  %i.em = load i64, ptr %i.dv, align 8, !tbaa !23, !noalias !248
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #31, !noalias !248
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !248
  %i.eo = and i64 %i.ej, 4294967296
  %.not96.us.i = icmp eq i64 %i.eo, 0
  br i1 %.not96.us.i, label %.split142.us.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.i
  %.not.i.us.i = icmp eq ptr %i.dz, %i.dy
  br i1 %.not.i.us.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 %.sroa.085.0.extract.trunc.us.i, ptr %i.dz, align 4, !tbaa !63, !noalias !248
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.us.i

bb.af:                                            ; preds = %bb.ad
  %i.ep = ptrtoint ptr %i.dy to i64
  %i.eq = ptrtoint ptr %i.dx to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 6 uses
  %i.es = icmp eq i64 %i.er, 9223372036854775804
  br i1 %i.es, label %.split145.us.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.us.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.us.i: ; preds = %bb.af
  %i.et = ashr exact i64 %i.er, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.us.i = call i64 @llvm.umax.i64(i64 %i.et, i64 1)
  %i.eu = add nsw i64 %.sroa.speculated.i.i.i.us.i, %i.et ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.et
  %i.ew = call i64 @llvm.umin.i64(i64 %i.eu, i64 2305843009213693951)
  %i.ex = select i1 %i.ev, i64 2305843009213693951, i64 %i.ew ; 3 uses
  %.not.i.i.i.us.i = icmp ne i64 %i.ex, 0
  call void @llvm.assume(i1 %.not.i.i.i.us.i)
  %i.ey = shl nuw nsw i64 %i.ex, 2
  %i.ez = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #33
          to label %.noexc56.us.i unwind label %.loopexit97.split.split.us.loopexit.i, !noalias !248 ; 5 uses

.noexc56.us.i:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.us.i
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 %i.er ; 2 uses
  store i32 %.sroa.085.0.extract.trunc.us.i, ptr %i.fa, align 4, !tbaa !63, !noalias !248
  %i.fb = icmp sgt i64 %i.er, 0
  br i1 %i.fb, label %bb.ag, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.us.i

bb.ag:                                            ; preds = %.noexc56.us.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ez, ptr align 4 %i.dx, i64 %i.er, i1 false), !noalias !248
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.us.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.us.i: ; preds = %bb.ag, %.noexc56.us.i
  %.not.i17.i.i.us.i = icmp eq ptr %i.dx, null
  br i1 %.not.i17.i.i.us.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.us.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.us.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.er) #31, !noalias !248
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.us.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.us.i: ; preds = %bb.ah, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.us.i
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.ex ; 2 uses
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.us.i

_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.us.i: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.us.i, %bb.ae
  %.sroa.14.3 = phi ptr [ %i.fc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.us.i ], [ %.sroa.14.2, %bb.ae ] ; 2 uses
  %.pn112 = phi ptr [ %i.fa, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.us.i ], [ %i.dz, %bb.ae ]
  %.sroa.0101.3 = phi ptr [ %i.ez, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.us.i ], [ %.sroa.0101.2, %bb.ae ] ; 2 uses
  %i.fd = phi ptr [ %i.ez, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.us.i ], [ %i.dx, %bb.ae ]
  %i.fe = phi ptr [ %i.fc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.us.i ], [ %i.dy, %bb.ae ]
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.pn112, i64 4 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.091.0134.us.i, i64 20 ; 2 uses
  %.not.us.i = icmp eq ptr %i.ff, %i.aq
  br i1 %.not.us.i, label %_ZL22atomTypesFromAtomNamesIA20_cESt6vectorIiSaIiEEPK22PreprocessingAtomTypesPK25PreprocessingBondAtomTypeN3gmx8ArrayRefIT_EEP14WarningHandler.exit, label %.preheader

.loopexit102.split.us.loopexit.i:                 ; preds = %.noexc.i.us.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i

.split137.us.i:                                   ; preds = %bb.ab
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = load ptr, ptr %7, align 8, !tbaa !22, !noalias !248 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.dv
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i87
  br i1 %i.h, label %.preheader113, label %_ZL22atomTypesFromAtomNamesIA20_cESt6vectorIiSaIiEEPK22PreprocessingAtomTypesPK25PreprocessingBondAtomTypeN3gmx8ArrayRefIT_EEP14WarningHandler.exit

.preheader113:                                    ; preds = %.lr.ph.split.i, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.us147.i
  %.sroa.14.0 = phi ptr [ %.sroa.14.1, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.us147.i ], [ null, %.lr.ph.split.i ]
  %.sroa.0101.0 = phi ptr [ %.sroa.0101.1, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.us147.i ], [ null, %.lr.ph.split.i ]
  %i.fj = phi ptr [ %i.gp, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.us147.i ], [ null, %.lr.ph.split.i ] ; 9 uses
  %i.fk = phi ptr [ %i.gq, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.us147.i ], [ null, %.lr.ph.split.i ] ; 7 uses
  %i.fl = phi ptr [ %.sroa.9.0, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.us147.i ], [ null, %.lr.ph.split.i ] ; 3 uses
  %.sroa.091.0134.us146.i = phi ptr [ %i.gr, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.us147.i ], [ %i.f, %.lr.ph.split.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30, !noalias !248
  store ptr %i.dt, ptr %10, align 8, !tbaa !18, !noalias !248
  %i.fm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.091.0134.us146.i) #30, !noalias !248 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !248
  store i64 %i.fm, ptr %i.a, align 8, !tbaa !20, !noalias !248
  %i.fn = icmp ugt i64 %i.fm, 15
  br i1 %i.fn, label %.noexc.i58.us.i, label %._crit_edge.i.i57.us.i

.noexc.i58.us.i:                                  ; preds = %.preheader113
  %i.fo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc60.us.i unwind label %.loopexit.split.us.loopexit.i, !noalias !248 ; 2 uses

.noexc60.us.i:                                    ; preds = %.noexc.i58.us.i
  store ptr %i.fo, ptr %10, align 8, !tbaa !22, !noalias !248
  %i.fp = load i64, ptr %i.a, align 8, !tbaa !20, !noalias !248
  store i64 %i.fp, ptr %i.dt, align 8, !tbaa !23, !noalias !248
  br label %._crit_edge.i.i57.us.i

._crit_edge.i.i57.us.i:                           ; preds = %.noexc60.us.i, %.preheader113
  %i.fq = phi ptr [ %i.fo, %.noexc60.us.i ], [ %i.dt, %.preheader113 ] ; 2 uses
  switch i64 %i.fm, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %bb.ak
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i57.us.i
  %i.fr = load i8, ptr %.sroa.091.0134.us146.i, align 1, !tbaa !23, !noalias !248
  store i8 %i.fr, ptr %i.fq, align 1, !tbaa !23, !noalias !248
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i57.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fq, ptr nonnull align 1 %.sroa.091.0134.us146.i, i64 %i.fm, i1 false), !noalias !248
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i57.us.i
  %i.fs = load i64, ptr %i.a, align 8, !tbaa !20, !noalias !248 ; 2 uses
  store i64 %i.fs, ptr %i.du, align 8, !tbaa !24, !noalias !248
  %i.ft = load ptr, ptr %10, align 8, !tbaa !22, !noalias !248
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fs
  store i8 0, ptr %i.fu, align 1, !tbaa !23, !noalias !248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !248
  %i.fv = invoke i64 @_ZNK25PreprocessingBondAtomType20bondAtomTypeFromNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.al unwind label %.split152.us.i, !noalias !248 ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %.sroa.082.0.extract.trunc.us.i = trunc i64 %i.fv to i32 ; 2 uses
  %i.fw = load ptr, ptr %10, align 8, !tbaa !22, !noalias !248 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.dt
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.us.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.us.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.us.i: ; preds = %bb.al
  %i.fy = load i64, ptr %i.dt, align 8, !tbaa !23, !noalias !248
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #31, !noalias !248
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.us.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.us.i: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !248
  %i.ga = and i64 %i.fv, 4294967296
  %.not95.us.i = icmp eq i64 %i.ga, 0
  br i1 %.not95.us.i, label %.split157.us.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.us.i
  %.not.i71.us.i = icmp eq ptr %i.fl, %i.fk
  br i1 %.not.i71.us.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 %.sroa.082.0.extract.trunc.us.i, ptr %i.fl, align 4, !tbaa !63, !noalias !248
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.us147.i

bb.ao:                                            ; preds = %bb.am
  %i.gb = ptrtoint ptr %i.fk to i64
  %i.gc = ptrtoint ptr %i.fj to i64
  %i.gd = sub i64 %i.gb, %i.gc                    ; 6 uses
  %i.ge = icmp eq i64 %i.gd, 9223372036854775804
  br i1 %i.ge, label %.split160.us.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i72.us.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i72.us.i: ; preds = %bb.ao
  %i.gf = ashr exact i64 %i.gd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i73.us.i = call i64 @llvm.umax.i64(i64 %i.gf, i64 1)
  %i.gg = add nsw i64 %.sroa.speculated.i.i.i73.us.i, %i.gf ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.gf
  %i.gi = call i64 @llvm.umin.i64(i64 %i.gg, i64 2305843009213693951)
  %i.gj = select i1 %i.gh, i64 2305843009213693951, i64 %i.gi ; 3 uses
  %.not.i.i.i74.us.i = icmp ne i64 %i.gj, 0
  call void @llvm.assume(i1 %.not.i.i.i74.us.i)
  %i.gk = shl nuw nsw i64 %i.gj, 2
  %i.gl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gk) #33
          to label %.noexc79.us.i unwind label %.loopexit97.split.split.us.loopexit.split-lp.loopexit.i, !noalias !248 ; 5 uses

.noexc79.us.i:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i72.us.i
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 %i.gd ; 2 uses
  store i32 %.sroa.082.0.extract.trunc.us.i, ptr %i.gm, align 4, !tbaa !63, !noalias !248
  %i.gn = icmp sgt i64 %i.gd, 0
  br i1 %i.gn, label %bb.ap, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i75.us.i

bb.ap:                                            ; preds = %.noexc79.us.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gl, ptr align 4 %i.fj, i64 %i.gd, i1 false), !noalias !248
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i75.us.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i75.us.i: ; preds = %bb.ap, %.noexc79.us.i
  %.not.i17.i.i76.us.i = icmp eq ptr %i.fj, null
  br i1 %.not.i17.i.i76.us.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i77.us.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i75.us.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.gd) #31, !noalias !248
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i77.us.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i77.us.i: ; preds = %bb.aq, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i75.us.i
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gj ; 2 uses
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.us147.i

_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.us147.i: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i77.us.i, %bb.an
  %.sroa.14.1 = phi ptr [ %i.go, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i77.us.i ], [ %.sroa.14.0, %bb.an ] ; 2 uses
  %.pn111 = phi ptr [ %i.gm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i77.us.i ], [ %i.fl, %bb.an ]
  %.sroa.0101.1 = phi ptr [ %i.gl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i77.us.i ], [ %.sroa.0101.0, %bb.an ] ; 2 uses
  %i.gp = phi ptr [ %i.gl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i77.us.i ], [ %i.fj, %bb.an ]
  %i.gq = phi ptr [ %i.go, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i77.us.i ], [ %i.fk, %bb.an ]
  %.sroa.9.0 = getelementptr inbounds nuw i8, ptr %.pn111, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.091.0134.us146.i, i64 20 ; 2 uses
  %.not.us148.i = icmp eq ptr %i.gr, %i.aq
  br i1 %.not.us148.i, label %_ZL22atomTypesFromAtomNamesIA20_cESt6vectorIiSaIiEEPK22PreprocessingAtomTypesPK25PreprocessingBondAtomTypeN3gmx8ArrayRefIT_EEP14WarningHandler.exit, label %.preheader113

.loopexit.split.us.loopexit.i:                    ; preds = %.noexc.i58.us.i
  %lpad.loopexit166.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i

.split152.us.i:                                   ; preds = %bb.ak
  %i.gs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gt = load ptr, ptr %10, align 8, !tbaa !22, !noalias !248 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.dt
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i

.loopexit97.split.split.us.loopexit.i:            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.us.i
  %lpad.loopexit163.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit97.i

.loopexit97.split.split.us.loopexit.split-lp.loopexit.i: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i72.us.i
  %lpad.loopexit169.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit97.i

.loopexit97.split.split.us.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.split160.us.i, %.split145.us.i
  %i.gv = phi ptr [ %i.dy, %.split145.us.i ], [ %i.fk, %.split160.us.i ]
  %i.gw = phi ptr [ %i.dx, %.split145.us.i ], [ %i.fj, %.split160.us.i ]
  %lpad.loopexit.split-lp170.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit97.i

.split142.us.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30, !noalias !248
  %i.gx = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %.sroa.091.0134.us.i) #30, !noalias !248 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30, !noalias !248
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull @.str.70, ptr noundef nonnull %i.c)
          to label %bb.ar unwind label %bb.au, !noalias !248

bb.ar:                                            ; preds = %.split142.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !248
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(70) @.str.9, i8 noundef zeroext 2)
          to label %bb.as unwind label %bb.av, !noalias !248

bb.as:                                            ; preds = %bb.ar
  invoke void @_Z22warning_error_and_exitP14WarningHandlerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNSt10filesystem7__cxx114pathEi(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 830) #29
          to label %bb.at unwind label %bb.aw, !noalias !248

bb.at:                                            ; preds = %bb.as
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i: ; preds = %.split137.us.i
  %i.gy = load i64, ptr %i.dv, align 8, !tbaa !23, !noalias !248
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.gz) #31, !noalias !248
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i: ; preds = %.split137.us.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i, %.loopexit102.split.us.loopexit.i
  %.pn38.i = phi { ptr, i32 } [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i ], [ %lpad.loopexit.i, %.loopexit102.split.us.loopexit.i ], [ %i.fg, %.split137.us.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !248
  br label %.loopexit97.i

bb.au:                                            ; preds = %.split142.us.i
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

bb.av:                                            ; preds = %bb.ar
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.as
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #30, !noalias !248
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn40.i = phi { ptr, i32 } [ %i.hc, %bb.aw ], [ %i.hb, %bb.av ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !248
  %i.hd = load ptr, ptr %8, align 8, !tbaa !22, !noalias !248 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hf = icmp eq ptr %i.hd, %i.he
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i: ; preds = %bb.ax
  %i.hg = load i64, ptr %i.he, align 8, !tbaa !23, !noalias !248
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hh) #31, !noalias !248
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i, %bb.au
  %.pn40.pn.i = phi { ptr, i32 } [ %i.ha, %bb.au ], [ %.pn40.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i ], [ %.pn40.i, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30, !noalias !248
  br label %.loopexit97.i

.split145.us.i:                                   ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #29
          to label %.noexc55.i unwind label %.loopexit97.split.split.us.loopexit.split-lp.loopexit.split-lp.i, !noalias !248

.noexc55.i:                                       ; preds = %.split145.us.i
  unreachable

.split157.us.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30, !noalias !248
  %i.hi = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %.sroa.091.0134.us146.i) #30, !noalias !248 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30, !noalias !248
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull @.str.71, ptr noundef nonnull %i.d)
          to label %bb.ay unwind label %bb.bb, !noalias !248

end_hunk_0
begin_hunk_1_@_ZL25defaultInteractionsOfType19InteractionFunctionRN3gmx16EnumerationArrayIS_18InteractionsOfTypeLS_95EEERK22PreprocessingAtomTypesNS0_8ArrayRefIiEENS8_IKiEEbPi:bb.a
  %i.gu = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 4 uses
  %i.gv = load i32, ptr %3, align 4, !tbaa !63
  store i32 %i.gv, ptr %i.gu, align 8, !tbaa !171
  %i.gw = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 7 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 5 uses
  store ptr %i.gy, ptr %i.gw, align 8, !tbaa !18
  %i.gz = load ptr, ptr %9, align 8, !tbaa !22    ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %bb.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

bb.bb:                                            ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2IS5_RiTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !24 ; 3 uses
  %i.he = icmp ult i64 %i.hd, 16
  call void @llvm.assume(i1 %i.he)
  %i.hf = add nuw nsw i64 %i.hd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gy, ptr noundef nonnull align 8 dereferenceable(1) %i.ha, i64 %i.hf, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2IS5_RiTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2IS5_RiTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit
  store ptr %i.gz, ptr %i.gw, align 8, !tbaa !22
  %i.hg = load i64, ptr %i.ha, align 8, !tbaa !23
  store i64 %i.hg, ptr %i.gy, align 8, !tbaa !23
  %.phi.trans.insert179 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre180 = load i64, ptr %.phi.trans.insert179, align 8, !tbaa !24
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2IS5_RiTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit152

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2IS5_RiTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit152: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  %i.hh = phi i64 [ %i.hd, %bb.bb ], [ %.pre180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ]
  %i.hi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 5 uses
  store i64 %i.hh, ptr %i.hj, align 8, !tbaa !24
  store ptr %i.ha, ptr %9, align 8, !tbaa !22
  store i64 0, ptr %i.hi, align 8, !tbaa !24
  store i8 0, ptr %i.ha, align 8, !tbaa !23
  %i.hk = getelementptr inbounds nuw i8, ptr %15, i64 72 ; 4 uses
  %i.hl = load i32, ptr %i.gx, align 4, !tbaa !63
  store i32 %i.hl, ptr %i.hk, align 8, !tbaa !171
  %i.hm = getelementptr inbounds nuw i8, ptr %15, i64 80 ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %15, i64 96 ; 5 uses
  store ptr %i.ho, ptr %i.hm, align 8, !tbaa !18
  %i.hp = load ptr, ptr %11, align 8, !tbaa !22   ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %bb.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

bb.bc:                                            ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2IS5_RiTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit152
  %i.hs = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !24 ; 3 uses
  %i.hu = icmp ult i64 %i.ht, 16
  call void @llvm.assume(i1 %i.hu)
  %i.hv = add nuw nsw i64 %i.ht, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ho, ptr noundef nonnull align 8 dereferenceable(1) %i.hq, i64 %i.hv, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2IS5_RiTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2IS5_RiTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit152
  store ptr %i.hp, ptr %i.hm, align 8, !tbaa !22
  %i.hw = load i64, ptr %i.hq, align 8, !tbaa !23
  store i64 %i.hw, ptr %i.ho, align 8, !tbaa !23
  %.phi.trans.insert181 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.pre182 = load i64, ptr %.phi.trans.insert181, align 8, !tbaa !24
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2IS5_RiTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit154

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2IS5_RiTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit154: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  %i.hx = phi i64 [ %i.ht, %bb.bc ], [ %.pre182, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ]
  %i.hy = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %15, i64 88 ; 3 uses
  store i64 %i.hx, ptr %i.hz, align 8, !tbaa !24
  store ptr %i.hq, ptr %11, align 8, !tbaa !22
  store i64 0, ptr %i.hy, align 8, !tbaa !24
  store i8 0, ptr %i.hq, align 8, !tbaa !23
  %i.ia = getelementptr inbounds nuw i8, ptr %15, i64 112 ; 2 uses
  %i.ib = load i32, ptr %i.hn, align 4, !tbaa !63
  store i32 %i.ib, ptr %i.ia, align 8, !tbaa !171
  %i.ic = getelementptr inbounds nuw i8, ptr %15, i64 120 ; 9 uses
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %15, i64 136 ; 5 uses
  store ptr %i.ie, ptr %i.ic, align 8, !tbaa !18
  %i.if = load ptr, ptr %13, align 8, !tbaa !22   ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 9 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %bb.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

bb.bd:                                            ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2IS5_RiTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit154
  %i.ii = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !24 ; 3 uses
  %i.ik = icmp ult i64 %i.ij, 16
  call void @llvm.assume(i1 %i.ik)
  %i.il = add nuw nsw i64 %i.ij, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ie, ptr noundef nonnull align 8 dereferenceable(1) %i.ig, i64 %i.il, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2IS5_RiTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2IS5_RiTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit154
  store ptr %i.if, ptr %i.ic, align 8, !tbaa !22
  %i.im = load i64, ptr %i.ig, align 8, !tbaa !23
  store i64 %i.im, ptr %i.ie, align 8, !tbaa !23
  %.phi.trans.insert183 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre184 = load i64, ptr %.phi.trans.insert183, align 8, !tbaa !24
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2IS5_RiTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit156

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2IS5_RiTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit156: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  %i.in = phi i64 [ %i.ij, %bb.bd ], [ %.pre184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155 ]
  %i.io = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %15, i64 128 ; 5 uses
  store i64 %i.in, ptr %i.ip, align 8, !tbaa !24
  store ptr %i.ig, ptr %13, align 8, !tbaa !22
  store i64 0, ptr %i.io, align 8, !tbaa !24
  store i8 0, ptr %i.ig, align 8, !tbaa !23
  %i.iq = getelementptr inbounds nuw i8, ptr %15, i64 152 ; 4 uses
  %i.ir = load i32, ptr %i.id, align 4, !tbaa !63
  store i32 %i.ir, ptr %i.iq, align 8, !tbaa !171
  %i.is = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2c1Ev(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.032.0.lcssa)
          to label %bb.be unwind label %bb.bu

bb.be:                                            ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2IS5_RiTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit156
  %i.it = load float, ptr %i.is, align 4, !tbaa !41
  %i.iu = fcmp une float %i.it, 0.000000e+00
  br i1 %i.iu, label %bb.bf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread48

bb.bf:                                            ; preds = %bb.be
  %i.iv = load i64, ptr %i.gt, align 8, !tbaa !24 ; 5 uses
  %i.iw = load i64, ptr %i.ip, align 8, !tbaa !24 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.iw, i64 %i.iv) ; 2 uses
  %i.ix = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.ix, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.bf
  %i.iy = load ptr, ptr %i.ic, align 8, !tbaa !22
  %i.iz = load ptr, ptr %15, align 8, !tbaa !22
  %i.ja = call i32 @memcmp(ptr noundef %i.iz, ptr noundef %i.iy, i64 noundef %.sroa.speculated.i.i) #30 ; 2 uses
  %.not.i.i157 = icmp eq i32 %i.ja, 0
  br i1 %.not.i.i157, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.bf
  %i.jb = sub i64 %i.iv, %i.iw
  %spec.select7.i.i.i = call i64 @llvm.smax.i64(i64 %i.jb, i64 -2147483648)
  %.08.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i, i64 2147483647)
  %.0.i6.i.i = trunc nsw i64 %.08.i.i.i to i32
  br label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i
  %.0.i.i = phi i32 [ %i.ja, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.0.i6.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i ]
  %i.jc = icmp sgt i32 %.0.i.i, 0
  br i1 %i.jc, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.jd = icmp eq i64 %i.iv, %i.iw
  br i1 %i.jd, label %bb.bh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread48

bb.bh:                                            ; preds = %bb.bg
  %i.je = icmp eq i64 %i.iv, 0
  br i1 %i.je, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.bh
  %i.jf = load ptr, ptr %i.ic, align 8, !tbaa !22
  %i.jg = load ptr, ptr %15, align 8, !tbaa !22
  %bcmp.i = call i32 @bcmp(ptr %i.jg, ptr %i.jf, i64 %i.iv)
  %i.jh = icmp eq i32 %bcmp.i, 0
  br i1 %i.jh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread48

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.bh, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ji = load i64, ptr %i.hj, align 8, !tbaa !24 ; 2 uses
  %i.jj = load i64, ptr %i.hz, align 8, !tbaa !24 ; 2 uses
  %.sroa.speculated.i.i158 = call i64 @llvm.umin.i64(i64 %i.jj, i64 %i.ji) ; 2 uses
  %i.jk = icmp eq i64 %.sroa.speculated.i.i158, 0
  br i1 %i.jk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i162, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i159

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i159: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.jl = load ptr, ptr %i.hm, align 8, !tbaa !22
  %i.jm = load ptr, ptr %i.gw, align 8, !tbaa !22
  %i.jn = call i32 @memcmp(ptr noundef %i.jm, ptr noundef %i.jl, i64 noundef %.sroa.speculated.i.i158) #30 ; 2 uses
  %.not.i.i160 = icmp eq i32 %i.jn, 0
  br i1 %.not.i.i160, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i162, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit166

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i162: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i159, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.jo = sub i64 %i.ji, %i.jj
  %spec.select7.i.i.i163 = call i64 @llvm.smax.i64(i64 %i.jo, i64 -2147483648)
  %.08.i.i.i164 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i163, i64 2147483647)
  %.0.i6.i.i165 = trunc nsw i64 %.08.i.i.i164 to i32
  br label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit166

_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit166: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i159, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i162
  %.0.i.i161 = phi i32 [ %i.jn, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i159 ], [ %.0.i6.i.i165, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i162 ]
  %i.jp = icmp sgt i32 %.0.i.i161, 0
  br i1 %i.jp, label %bb.bi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread48

bb.bi:                                            ; preds = %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit166, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %15, i64 160
  br label %.lr.ph.i.i167

.lr.ph.i.i167:                                    ; preds = %bb.bi, %.lr.ph.i.i167
  %.015.i.i = phi ptr [ %.0.i.i168, %.lr.ph.i.i167 ], [ %i.ic, %bb.bi ] ; 3 uses
  %.pn14.i.i = phi ptr [ %.015.i.i, %.lr.ph.i.i167 ], [ %i.jq, %bb.bi ]
  %.0913.i.i = phi ptr [ %i.jv, %.lr.ph.i.i167 ], [ %15, %bb.bi ] ; 3 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(36) %.0913.i.i, ptr noundef nonnull align 8 dereferenceable(36) %.015.i.i) #30
  %i.jr = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 32 ; 2 uses
  %i.js = getelementptr inbounds i8, ptr %.pn14.i.i, i64 -8 ; 2 uses
  %i.jt = load i32, ptr %i.jr, align 4, !tbaa !63
  %i.ju = load i32, ptr %i.js, align 4, !tbaa !63
  store i32 %i.ju, ptr %i.jr, align 4, !tbaa !63
  store i32 %i.jt, ptr %i.js, align 4, !tbaa !63
  %i.jv = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 40 ; 2 uses
  %.0.i.i168 = getelementptr inbounds i8, ptr %.015.i.i, i64 -40 ; 2 uses
  %i.jw = icmp ult ptr %i.jv, %.0.i.i168
  br i1 %i.jw, label %.lr.ph.i.i167, label %_ZSt7reverseIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvT_S9_.exit.preheader, !llvm.loop !393

_ZSt7reverseIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvT_S9_.exit.preheader: ; preds = %.lr.ph.i.i167
  %i.jx = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.k
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !167
  %i.ka = icmp sgt i32 %i.jz, 0
  br i1 %i.ka, label %_ZSt7reverseIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvT_S9_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread48

bb.bj:                                            ; preds = %bb.al
  %i.kb = landingpad { ptr, i32 }
          cleanup
  %i.kc = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.kd = load i8, ptr %i.kc, align 8, !tbaa !169, !range !53, !noundef !54
  %i.ke = trunc nuw i8 %i.kd to i1
  br i1 %i.ke, label %bb.bk, label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit171

bb.bk:                                            ; preds = %bb.bj
  store i8 0, ptr %i.kc, align 8, !tbaa !169
  %i.kf = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.kh = icmp eq ptr %i.kf, %i.kg
  br i1 %i.kh, label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i169: ; preds = %bb.bk
  %i.ki = load i64, ptr %i.kg, align 8, !tbaa !23
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.kj) #31
  br label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit171

_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit171: ; preds = %bb.bk, %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279

bb.bl:                                            ; preds = %bb.ao, %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit174

bb.bm:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.kn = load i8, ptr %i.km, align 8, !tbaa !169, !range !53, !noundef !54
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %bb.bn, label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit174

bb.bn:                                            ; preds = %bb.bm
  store i8 0, ptr %i.km, align 8, !tbaa !169
  %i.kp = load ptr, ptr %10, align 8, !tbaa !22   ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i172: ; preds = %bb.bn
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !23
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #31
  br label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit174

_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit174: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i172, %bb.bm, %bb.bl
  %.pn = phi { ptr, i32 } [ %i.kk, %bb.bl ], [ %i.kl, %bb.bm ], [ %i.kl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i172 ], [ %i.kl, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276

bb.bo:                                            ; preds = %bb.as, %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit144
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177

bb.bp:                                            ; preds = %bb.at
  %i.kv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.kx = load i8, ptr %i.kw, align 8, !tbaa !169, !range !53, !noundef !54
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %bb.bq, label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.kw, align 8, !tbaa !169
  %i.kz = load ptr, ptr %12, align 8, !tbaa !22   ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.lb = icmp eq ptr %i.kz, %i.la
  br i1 %i.lb, label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i175: ; preds = %bb.bq
  %i.lc = load i64, ptr %i.la, align 8, !tbaa !23
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.ld) #31
  br label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177

_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit177: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i175, %bb.bp, %bb.bo
  %.pn118 = phi { ptr, i32 } [ %i.ku, %bb.bo ], [ %i.kv, %bb.bp ], [ %i.kv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i175 ], [ %i.kv, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273

bb.br:                                            ; preds = %bb.aw, %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit147
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit180

bb.bs:                                            ; preds = %bb.ax
  %i.lf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.lh = load i8, ptr %i.lg, align 8, !tbaa !169, !range !53, !noundef !54
  %i.li = trunc nuw i8 %i.lh to i1
  br i1 %i.li, label %bb.bt, label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit180

bb.bt:                                            ; preds = %bb.bs
  store i8 0, ptr %i.lg, align 8, !tbaa !169
  %i.lj = load ptr, ptr %14, align 8, !tbaa !22   ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i178: ; preds = %bb.bt
  %i.lm = load i64, ptr %i.lk, align 8, !tbaa !23
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.ln) #31
  br label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit180

_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit180: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i178, %bb.bs, %bb.br
  %.pn120 = phi { ptr, i32 } [ %i.le, %bb.br ], [ %i.lf, %bb.bs ], [ %i.lf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i178 ], [ %i.lf, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270

bb.bu:                                            ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2IS5_RiTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit156
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

_ZSt7reverseIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvT_S9_.exit: ; preds = %_ZSt7reverseIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvT_S9_.exit.preheader, %_ZSt7reverseIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvT_S9_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZSt7reverseIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvT_S9_.exit ], [ 0, %_ZSt7reverseIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvT_S9_.exit.preheader ] ; 3 uses
  %i.lp = getelementptr inbounds nuw [40 x i8], ptr %15, i64 %indvars.iv
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 32
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !171
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store i32 %i.lr, ptr %i.ls, align 4, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lt = load i32, ptr %i.jy, align 8, !tbaa !167
  %i.lu = sext i32 %i.lt to i64
  %i.lv = icmp slt i64 %indvars.iv.next, %i.lu
  br i1 %i.lv, label %_ZSt7reverseIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvT_S9_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread48, !llvm.loop !394

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread48: ; preds = %_ZSt7reverseIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvT_S9_.exit, %_ZSt7reverseIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvT_S9_.exit.preheader, %bb.bg, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit166, %bb.be
  %i.lw = and i32 %0, 30
  %or.cond7 = icmp eq i32 %i.lw, 24
  br i1 %or.cond7, label %bb.bv, label %bb.ev

bb.bv:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread48
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.lx = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr %i.lx, ptr %16, align 8, !tbaa !18
  %i.ly = load ptr, ptr %15, align 8, !tbaa !22   ; 2 uses
  %i.lz = load i64, ptr %i.gt, align 8, !tbaa !24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  store i64 %i.lz, ptr %i.j, align 8, !tbaa !20
  %i.ma = icmp ugt i64 %i.lz, 15
  br i1 %i.ma, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.bv
  %i.mb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc unwind label %.thread  ; 2 uses

.thread:                                          ; preds = %.noexc.i
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit92

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.mb, ptr %16, align 8, !tbaa !22
  %i.md = load i64, ptr %i.j, align 8, !tbaa !20
  store i64 %i.md, ptr %i.lx, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.bv
  %i.me = phi ptr [ %i.mb, %.noexc ], [ %i.lx, %bb.bv ] ; 2 uses
  switch i64 %i.lz, label %bb.bx [
    i64 1, label %bb.bw
    i64 0, label %bb.by
  ]

bb.bw:                                            ; preds = %._crit_edge.i.i
  %i.mf = load i8, ptr %i.ly, align 1, !tbaa !23
  store i8 %i.mf, ptr %i.me, align 1, !tbaa !23
  br label %bb.by

bb.bx:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.me, ptr align 1 %i.ly, i64 %i.lz, i1 false)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %._crit_edge.i.i
  %i.mg = load i64, ptr %i.j, align 8, !tbaa !20  ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.mg, ptr %i.mh, align 8, !tbaa !24
end_hunk_1
