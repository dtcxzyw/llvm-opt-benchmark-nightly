inline.NumInlined: 797
inline.NumDeleted: 120
begin_hunk_0_@inf_ConstraintHyperResolvents:bb.a
  store ptr %.020.val.i, ptr %i.kw, align 8
  store ptr %.142.i, ptr %i.kv, align 8
  br label %list_PointerMember.exit.i71

list_PointerMember.exit.i71:                      ; preds = %.lr.ph.i.i65, %.loopexit.i70, %bb.as, %bb.ar, %bb.aq, %.lr.ph.i63
  %.2.i = phi ptr [ %.142.i, %.lr.ph.i63 ], [ %i.kv, %.loopexit.i70 ], [ %.142.i, %bb.as ], [ %.142.i, %bb.ar ], [ %.142.i, %bb.aq ], [ %.142.i, %.lr.ph.i.i65 ] ; 2 uses
  %.020.val33.i = load ptr, ptr %.02041.i, align 8 ; 2 uses
  %.not38.i = icmp eq ptr %.020.val33.i, null
  br i1 %.not38.i, label %term_IsAtom.exit.thread.i, label %.lr.ph.i63, !llvm.loop !24

term_IsAtom.exit.thread.i:                        ; preds = %list_PointerMember.exit.i71, %bb.ap, %term_IsAtom.exit.i, %bb.ao
  %.3.i = phi ptr [ %.045.i, %bb.ao ], [ %.045.i, %term_IsAtom.exit.i ], [ %.045.i, %bb.ap ], [ %.2.i, %list_PointerMember.exit.i71 ] ; 2 uses
  %.val.i.i60 = load ptr, ptr %.01944.i, align 8  ; 2 uses
  %i.kx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  %i.kz = load i32, ptr %i.ky, align 8
  %i.la = sext i32 %i.kz to i64
  %i.lb = load i64, ptr @memory_FREEDBYTES, align 8
  %i.lc = add i64 %i.lb, %i.la
  store i64 %i.lc, ptr @memory_FREEDBYTES, align 8
  %i.ld = load ptr, ptr %i.kx, align 8
  store ptr %i.ld, ptr %.01944.i, align 8
  %i.le = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.01944.i, ptr %i.le, align 8
  %.not.i61 = icmp eq ptr %.val.i.i60, null
  br i1 %.not.i61, label %inf_GetSortResolutionPartnerLits.exit, label %bb.ao, !llvm.loop !25

inf_GetSortResolutionPartnerLits.exit:            ; preds = %term_IsAtom.exit.thread.i, %clause_LiteralAtom.exit
  %.0.lcssa.i = phi ptr [ null, %clause_LiteralAtom.exit ], [ %.3.i, %term_IsAtom.exit.thread.i ] ; 2 uses
  %i.lf = getelementptr i8, ptr %0, i64 52
  %.val57 = load i32, ptr %i.lf, align 4
  %i.lg = tail call i32 @clause_AtomMaxVar(ptr noundef %i.kc) #12
  %i.lh = tail call i32 @llvm.smax.i32(i32 %.val57, i32 %i.lg)
  %.not9094 = icmp eq ptr %.0.lcssa.i, null
  br i1 %.not9094, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %inf_GetSortResolutionPartnerLits.exit, %list_Nconc.exit
  %.04697 = phi ptr [ %.val.i87, %list_Nconc.exit ], [ %4, %inf_GetSortResolutionPartnerLits.exit ]
  %.04796 = phi ptr [ %.0.i86, %list_Nconc.exit ], [ null, %inf_GetSortResolutionPartnerLits.exit ] ; 3 uses
  %.04895 = phi ptr [ %.val.i88, %list_Nconc.exit ], [ %.0.lcssa.i, %inf_GetSortResolutionPartnerLits.exit ] ; 4 uses
  %i.li = getelementptr i8, ptr %.04895, i64 8
  %.048.val = load ptr, ptr %i.li, align 8        ; 3 uses
  %i.lj = getelementptr i8, ptr %.048.val, i64 16 ; 2 uses
  %.val4.i = load ptr, ptr %i.lj, align 8
  %i.lk = getelementptr i8, ptr %.val4.i, i64 56
  %.val.i72 = load ptr, ptr %i.lk, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph
  %indvars.iv.i73 = phi i64 [ %indvars.iv.next.i75, %bb.av ], [ 0, %.lr.ph ] ; 3 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %.val.i72, i64 %indvars.iv.i73
  %i.lm = load ptr, ptr %i.ll, align 8
  %.not.i74 = icmp eq ptr %i.lm, %.048.val
  %indvars.iv.next.i75 = add nuw nsw i64 %indvars.iv.i73, 1
  br i1 %.not.i74, label %clause_LiteralGetIndex.exit, label %bb.av, !llvm.loop !4

clause_LiteralGetIndex.exit:                      ; preds = %bb.av
  %i.ln = call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 6 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  store ptr %.048.val, ptr %i.lo, align 8
  store ptr %.04697, ptr %i.ln, align 8
  %.val55 = load ptr, ptr %i.lj, align 8
  %i.lp = call ptr @clause_Copy(ptr noundef %.val55) #12 ; 3 uses
  call void @clause_RenameVarsBiggerThan(ptr noundef %i.lp, i32 noundef %i.lh) #12
  %i.lq = getelementptr i8, ptr %i.lp, i64 56
  %.val = load ptr, ptr %i.lq, align 8
  %sext91 = shl i64 %indvars.iv.i73, 32
  %i.lr = ashr exact i64 %sext91, 29
  %i.ls = getelementptr inbounds i8, ptr %.val, i64 %i.lr
  %i.lt = load ptr, ptr %i.ls, align 8
  call void @cont_Check() #12
  %i.lu = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.lv = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %i.lw = getelementptr i8, ptr %i.lt, i64 24
  %.val53 = load ptr, ptr %i.lw, align 8          ; 3 uses
  %.val5.val.i76 = load i32, ptr %.val53, align 8
  %i.lx = load i32, ptr @fol_NOT, align 4
  %.not.i77 = icmp eq i32 %.val5.val.i76, %i.lx
  br i1 %.not.i77, label %bb.aw, label %clause_LiteralAtom.exit81

bb.aw:                                            ; preds = %clause_LiteralGetIndex.exit
  %i.ly = getelementptr i8, ptr %.val53, i64 16
  %.val6.i79 = load ptr, ptr %i.ly, align 8
  %i.lz = getelementptr i8, ptr %.val6.i79, i64 8
  %.val6.val.i80 = load ptr, ptr %i.lz, align 8
  br label %clause_LiteralAtom.exit81

clause_LiteralAtom.exit81:                        ; preds = %clause_LiteralGetIndex.exit, %bb.aw
  %.0.i78 = phi ptr [ %.val6.val.i80, %bb.aw ], [ %.val53, %clause_LiteralGetIndex.exit ]
  %i.ma = call i32 @unify_UnifyNoOC(ptr noundef %i.lu, ptr noundef %i.kc, ptr noundef %i.lv, ptr noundef %.0.i78) #12 ; 0 uses
  %i.mb = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.mc = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  call void @subst_ExtractUnifier(ptr noundef %i.mb, ptr noundef nonnull %i.c, ptr noundef %i.mc, ptr noundef nonnull %i.d) #12
  %i.md = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not1.i = icmp eq ptr %i.md, null
  br i1 %.not1.i, label %cont_Reset.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %clause_LiteralAtom.exit81
  %cont_BINDINGS.promoted.i = load i32, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %.lr.ph.i82, %.lr.ph.preheader.i
  %i.me = phi ptr [ %i.ml, %.lr.ph.i82 ], [ %i.md, %.lr.ph.preheader.i ] ; 3 uses
  %i.mf = phi i32 [ %i.mk, %.lr.ph.i82 ], [ %cont_BINDINGS.promoted.i, %.lr.ph.preheader.i ]
  store ptr %i.me, ptr @cont_CURRENTBINDING, align 8
  %i.mg = getelementptr i8, ptr %i.me, i64 24
  %.val.i.i.i = load ptr, ptr %i.mg, align 8
  store ptr %.val.i.i.i, ptr @cont_LASTBINDING, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.mh, i8 0, i64 20, i1 false)
  %i.mi = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  store ptr null, ptr %i.mj, align 8
  %i.mk = add nsw i32 %i.mf, -1                   ; 2 uses
  store i32 %i.mk, ptr @cont_BINDINGS, align 4
  %i.ml = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not.i83 = icmp eq ptr %i.ml, null
  br i1 %.not.i83, label %cont_Reset.exit, label %.lr.ph.i82, !llvm.loop !7

cont_Reset.exit:                                  ; preds = %.lr.ph.i82, %clause_LiteralAtom.exit81
  store i32 0, ptr @cont_BINDINGS, align 4
  store i32 1, ptr @cont_STACKPOINTER, align 4
  store i32 2000, ptr @cont_INDEXVARSCANNER, align 4
  %i.mm = load ptr, ptr %i.d, align 8
  call void @subst_Delete(ptr noundef %i.mm) #12
  %i.mn = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.mo = call ptr @subst_Copy(ptr noundef %2) #12
  %i.mp = call ptr @subst_Compose(ptr noundef %i.mn, ptr noundef %i.mo) #12 ; 2 uses
  store ptr %i.mp, ptr %i.c, align 8
  %.val56 = load ptr, ptr %3, align 8
  %i.mq = call fastcc ptr @inf_ConstraintHyperResolvents(ptr noundef %0, ptr noundef %1, ptr noundef %i.mp, ptr noundef %.val56, ptr noundef nonnull %i.ln, ptr noundef %5, ptr noundef %6, ptr noundef %7) ; 4 uses
  %.not.i85 = icmp eq ptr %i.mq, null
  br i1 %.not.i85, label %list_Nconc.exit, label %bb.ax

bb.ax:                                            ; preds = %cont_Reset.exit
  %.not16.i = icmp eq ptr %.04796, null
  br i1 %.not16.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ax, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %i.mq, %bb.ax ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.ay, label %.preheader.i, !llvm.loop !8

bb.ay:                                            ; preds = %.preheader.i
  store ptr %.04796, ptr %.012.i, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %cont_Reset.exit, %bb.ax, %bb.ay
  %.0.i86 = phi ptr [ %i.mq, %bb.ay ], [ %.04796, %cont_Reset.exit ], [ %i.mq, %bb.ax ] ; 2 uses
  %i.mr = load ptr, ptr %i.c, align 8
  call void @subst_Delete(ptr noundef %i.mr) #12
  call void @subst_Delete(ptr noundef %i.mn) #12
  call void @clause_Delete(ptr noundef nonnull %i.lp) #12
  %.val.i87 = load ptr, ptr %i.ln, align 8
  %i.ms = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %i.mu = load i32, ptr %i.mt, align 8
  %i.mv = sext i32 %i.mu to i64
  %i.mw = load i64, ptr @memory_FREEDBYTES, align 8
  %i.mx = add i64 %i.mw, %i.mv
  store i64 %i.mx, ptr @memory_FREEDBYTES, align 8
  %i.my = load ptr, ptr %i.ms, align 8
  store ptr %i.my, ptr %i.ln, align 8
  %i.mz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %i.ln, ptr %i.mz, align 8
  %.val.i88 = load ptr, ptr %.04895, align 8      ; 2 uses
  %i.na = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.nc = load i32, ptr %i.nb, align 8
  %i.nd = sext i32 %i.nc to i64
  %i.ne = load i64, ptr @memory_FREEDBYTES, align 8
  %i.nf = add i64 %i.ne, %i.nd
  store i64 %i.nf, ptr @memory_FREEDBYTES, align 8
  %i.ng = load ptr, ptr %i.na, align 8
  store ptr %i.ng, ptr %.04895, align 8
  %i.nh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.04895, ptr %i.nh, align 8
  %.not90 = icmp eq ptr %.val.i88, null
  br i1 %.not90, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %list_Nconc.exit, %inf_GetSortResolutionPartnerLits.exit
  %.047.lcssa = phi ptr [ null, %inf_GetSortResolutionPartnerLits.exit ], [ %.0.i86, %list_Nconc.exit ]
  call void @term_Delete(ptr noundef %i.kc) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge, %inf_BuildConstraintHyperResolvent.exit
  %.0 = phi ptr [ %i.jp, %inf_BuildConstraintHyperResolvent.exit ], [ %.047.lcssa, %._crit_edge ]
  ret ptr %.0
}

declare void @clause_Delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @inf_ForwardSortResolution(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val52 = load i32, ptr %i.a, align 8           ; 3 uses
  %i.b = add i32 %.val52, -1                      ; 2 uses
  %.not76 = icmp sgt i32 %.val52, 0
  br i1 %.not76, label %.lr.ph, label %list_Delete.exit75

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 56
  %.val55 = load ptr, ptr %i.c, align 8
  %i.d = load i32, ptr @fol_NOT, align 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %clause_GetLiteralAtom.exit
  %.03877 = phi i32 [ 0, %.lr.ph ], [ %.139, %clause_GetLiteralAtom.exit ] ; 2 uses
  %i.e = zext nneg i32 %.03877 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.val55, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %.val1.i = load ptr, ptr %i.h, align 8          ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val1.i, align 8
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.d
  br i1 %.not.i.i, label %bb.c, label %clause_GetLiteralAtom.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val1.i, i64 16
  %.val6.i.i = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.j, align 8
  br label %clause_GetLiteralAtom.exit

clause_GetLiteralAtom.exit:                       ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %.val6.val.i.i, %bb.c ], [ %.val1.i, %bb.b ]
  %i.k = getelementptr i8, ptr %.0.i.i, i64 16
  %.val50 = load ptr, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.val50, i64 8
  %.val50.val = load ptr, ptr %i.l, align 8
  %.val51 = load i32, ptr %.val50.val, align 8
  %i.m = icmp sgt i32 %.val51, 0                  ; 3 uses
  %i.n = zext i1 %i.m to i32
  %.139 = add nuw nsw i32 %.03877, %i.n           ; 4 uses
  %.not = icmp slt i32 %.139, %.val52
  %or.cond = and i1 %.not, %i.m
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !27

.critedge:                                        ; preds = %clause_GetLiteralAtom.exit
  br i1 %i.m, label %list_Delete.exit75, label %bb.d

bb.d:                                             ; preds = %.critedge
  %6 = getelementptr i8, ptr %0, i64 56           ; 2 uses
  %.val54 = load ptr, ptr %6, align 8
  %i.o = zext nneg i32 %.139 to i64               ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val54, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %.val1.i56 = load ptr, ptr %i.r, align 8        ; 3 uses
  %.val5.val.i.i57 = load i32, ptr %.val1.i56, align 8
  %i.s = load i32, ptr @fol_NOT, align 4
  %.not.i.i58 = icmp eq i32 %.val5.val.i.i57, %i.s
  br i1 %.not.i.i58, label %bb.e, label %clause_GetLiteralAtom.exit62

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %.val1.i56, i64 16
  %.val6.i.i60 = load ptr, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %.val6.i.i60, i64 8
  %.val6.val.i.i61 = load ptr, ptr %i.u, align 8
  br label %clause_GetLiteralAtom.exit62

clause_GetLiteralAtom.exit62:                     ; preds = %bb.d, %bb.e
  %.0.i.i59 = phi ptr [ %.val6.val.i.i61, %bb.e ], [ %.val1.i56, %bb.d ]
  %i.v = inttoptr i64 %i.o to ptr
  %i.w = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %i.x, align 8
  store ptr null, ptr %i.w, align 8
  %.not45.not81 = icmp slt i32 %.139, %i.b
  br i1 %.not45.not81, label %.lr.ph84, label %._crit_edge

.lr.ph84:                                         ; preds = %clause_GetLiteralAtom.exit62
  %i.y = getelementptr i8, ptr %.0.i.i59, i64 16
  %wide.trip.count = zext i32 %i.b to i64
  %.pre88 = load i32, ptr @fol_NOT, align 4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph84, %bb.i
  %i.z = phi i32 [ %.pre88, %.lr.ph84 ], [ %i.am, %bb.i ] ; 2 uses
  %indvars.iv = phi i64 [ %i.o, %.lr.ph84 ], [ %indvars.iv.next, %bb.i ]
  %.04182 = phi ptr [ %i.w, %.lr.ph84 ], [ %.142, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %.val53 = load ptr, ptr %6, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val53, i64 %indvars.iv.next
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  %.val1.i63 = load ptr, ptr %i.ac, align 8       ; 3 uses
  %.val5.val.i.i64 = load i32, ptr %.val1.i63, align 8
  %.not.i.i65 = icmp eq i32 %.val5.val.i.i64, %i.z
  br i1 %.not.i.i65, label %bb.g, label %clause_GetLiteralAtom.exit69

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %.val1.i63, i64 16
  %.val6.i.i67 = load ptr, ptr %i.ad, align 8
  %i.ae = getelementptr i8, ptr %.val6.i.i67, i64 8
  %.val6.val.i.i68 = load ptr, ptr %i.ae, align 8
  br label %clause_GetLiteralAtom.exit69

clause_GetLiteralAtom.exit69:                     ; preds = %bb.f, %bb.g
  %.0.i.i66 = phi ptr [ %.val6.val.i.i68, %bb.g ], [ %.val1.i63, %bb.f ]
  %i.af = getelementptr i8, ptr %.0.i.i66, i64 16
  %.val49 = load ptr, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %.val49, i64 8
  %.val49.val = load ptr, ptr %i.ag, align 8
  %.val = load ptr, ptr %i.y, align 8
  %i.ah = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.ah, align 8
  %i.ai = icmp eq ptr %.val49.val, %.val.val
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %clause_GetLiteralAtom.exit69
  %i.aj = inttoptr i64 %indvars.iv.next to ptr
  %i.ak = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  store ptr %.04182, ptr %i.ak, align 8
  %.pre = load i32, ptr @fol_NOT, align 4
  br label %bb.i

bb.i:                                             ; preds = %clause_GetLiteralAtom.exit69, %bb.h
  %i.am = phi i32 [ %.pre, %bb.h ], [ %i.z, %clause_GetLiteralAtom.exit69 ]
  %.142 = phi ptr [ %i.ak, %bb.h ], [ %.04182, %clause_GetLiteralAtom.exit69 ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.i, %clause_GetLiteralAtom.exit62
  %.041.lcssa = phi ptr [ %i.w, %clause_GetLiteralAtom.exit62 ], [ %.142, %bb.i ] ; 5 uses
  %i.an = tail call ptr @list_Copy(ptr noundef %.041.lcssa) #12 ; 3 uses
  %.not46 = icmp eq i32 %3, 0
  br i1 %.not46, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ao = tail call fastcc i32 @inf_SubsortPrecheck(ptr noundef nonnull %0, ptr noundef %.041.lcssa, ptr noundef null, ptr noundef %1, ptr noundef %2)
  %.not47 = icmp eq i32 %i.ao, 0
  br i1 %.not47, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.ap = tail call fastcc ptr @inf_ConstraintHyperResolvents(ptr noundef nonnull %0, ptr noundef %.041.lcssa, ptr noundef null, ptr noundef %i.an, ptr noundef null, ptr noundef %1, ptr noundef %4, ptr noundef %5)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.040 = phi ptr [ %i.ap, %bb.k ], [ null, %bb.j ] ; 2 uses
  %.not6.i = icmp eq ptr %i.an, null
  br i1 %.not6.i, label %list_Delete.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %i.an, %bb.l ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = sext i32 %i.as to i64
  %i.au = load i64, ptr @memory_FREEDBYTES, align 8
  %i.av = add i64 %i.au, %i.at
  store i64 %i.av, ptr @memory_FREEDBYTES, align 8
  %i.aw = load ptr, ptr %i.aq, align 8
  store ptr %i.aw, ptr %.07.i, align 8
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.ax, align 8
  %.not.i = icmp eq ptr %.0.val.i, null
  br i1 %.not.i, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !9

list_Delete.exit:                                 ; preds = %.lr.ph.i, %bb.l
  %.not6.i70 = icmp eq ptr %.041.lcssa, null
  br i1 %.not6.i70, label %list_Delete.exit75, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %list_Delete.exit, %.lr.ph.i71
  %.07.i72 = phi ptr [ %.0.val.i73, %.lr.ph.i71 ], [ %.041.lcssa, %list_Delete.exit ] ; 3 uses
  %.0.val.i73 = load ptr, ptr %.07.i72, align 8   ; 2 uses
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = sext i32 %i.ba to i64
  %i.bc = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bd = add i64 %i.bc, %i.bb
  store i64 %i.bd, ptr @memory_FREEDBYTES, align 8
  %i.be = load ptr, ptr %i.ay, align 8
  store ptr %i.be, ptr %.07.i72, align 8
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i72, ptr %i.bf, align 8
  %.not.i74 = icmp eq ptr %.0.val.i73, null
  br i1 %.not.i74, label %list_Delete.exit75, label %.lr.ph.i71, !llvm.loop !9

list_Delete.exit75:                               ; preds = %.lr.ph.i71, %bb.a, %list_Delete.exit, %.critedge
  %.036 = phi ptr [ null, %.critedge ], [ %.040, %list_Delete.exit ], [ null, %bb.a ], [ %.040, %.lr.ph.i71 ]
  ret ptr %.036
}

declare ptr @list_Copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @inf_BackwardEmptySort(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 64
  %.val.i.i = load i32, ptr %i.c, align 8         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 68
  %.val3.i.i = load i32, ptr %i.d, align 4        ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 72
  %.val4.i.i = load i32, ptr %i.e, align 8        ; 2 uses
  %i.f = add i32 %.val3.i.i, %.val.i.i            ; 3 uses
  %i.g = add i32 %i.f, -1
  %i.h = add i32 %i.g, %.val4.i.i
  %.not227 = icmp sgt i32 %i.f, %i.h
  br i1 %.not227, label %._crit_edge232, label %.lr.ph231

.lr.ph231:                                        ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 56
  %i.j = load i32, ptr @symbol_TYPEMASK, align 4  ; 2 uses
  %i.k = load i32, ptr @symbol_TYPESTATBITS, align 4
  %.not103 = icmp eq i32 %3, 0
  %i.l = sext i32 %.val.i.i to i64
  %i.m = sext i32 %.val3.i.i to i64
  %i.n = add nsw i64 %i.l, %i.m
  %i.o = add i32 %i.f, %.val4.i.i
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph231, %clause_LiteralIsSort.exit.thread
  %indvars.iv239 = phi i64 [ %i.n, %.lr.ph231 ], [ %indvars.iv.next240, %clause_LiteralIsSort.exit.thread ] ; 3 uses
  %.0229 = phi ptr [ null, %.lr.ph231 ], [ %.7, %clause_LiteralIsSort.exit.thread ] ; 7 uses
  %.val109 = load ptr, ptr %i.i, align 8
  %i.p = getelementptr inbounds [8 x i8], ptr %.val109, i64 %indvars.iv239
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %.val120 = load ptr, ptr %i.r, align 8          ; 3 uses
  %.val5.val.i = load i32, ptr %.val120, align 8  ; 2 uses
  %i.s = load i32, ptr @fol_NOT, align 4
  %.not.i = icmp eq i32 %.val5.val.i, %i.s
  %.val121 = load i32, ptr %i.q, align 8
  %i.t = and i32 %.val121, 2
  %.not94 = icmp eq i32 %i.t, 0                   ; 2 uses
  br i1 %.not.i, label %clause_LiteralAtom.exit, label %clause_LiteralAtom.exit.thread

clause_LiteralAtom.exit:                          ; preds = %bb.b
  br i1 %.not94, label %clause_LiteralIsSort.exit.thread, label %bb.c

clause_LiteralAtom.exit.thread:                   ; preds = %bb.b
  br i1 %.not94, label %clause_LiteralIsSort.exit.thread, label %clause_LiteralPredicate.exit.i

bb.c:                                             ; preds = %clause_LiteralAtom.exit
  %i.u = getelementptr i8, ptr %.val120, i64 16
  %.val6.i = load ptr, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %.val6.i, i64 8
  %.val6.val.i = load ptr, ptr %i.v, align 8      ; 2 uses
  %.val.pre.i.i = load i32, ptr %.val6.val.i, align 8
  br label %clause_LiteralPredicate.exit.i

clause_LiteralPredicate.exit.i:                   ; preds = %clause_LiteralAtom.exit.thread, %bb.c
  %.0.i196198 = phi ptr [ %.val6.val.i, %bb.c ], [ %.val120, %clause_LiteralAtom.exit.thread ]
  %.val.i.i134 = phi i32 [ %.val.pre.i.i, %bb.c ], [ %.val5.val.i, %clause_LiteralAtom.exit.thread ] ; 2 uses
  %.not.i.i = icmp sgt i32 %.val.i.i134, -1
  br i1 %.not.i.i, label %clause_LiteralIsSort.exit.thread, label %symbol_IsPredicate.exit.i

symbol_IsPredicate.exit.i:                        ; preds = %clause_LiteralPredicate.exit.i
  %i.w = sub nsw i32 0, %.val.i.i134              ; 2 uses
  %i.x = and i32 %i.j, %i.w
  %.not.i135 = icmp eq i32 %i.x, 2
  br i1 %.not.i135, label %clause_LiteralIsSort.exit, label %clause_LiteralIsSort.exit.thread

clause_LiteralIsSort.exit:                        ; preds = %symbol_IsPredicate.exit.i
  %i.y = lshr i32 %i.w, %i.k
  %i.z = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8
  %.not201 = icmp eq i32 %i.ae, 1
  br i1 %.not201, label %bb.d, label %clause_LiteralIsSort.exit.thread

bb.d:                                             ; preds = %clause_LiteralIsSort.exit
  %i.af = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.ag = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %i.ah = call ptr @st_GetUnifier(ptr noundef %i.af, ptr noundef %1, ptr noundef %i.ag, ptr noundef nonnull %.0.i196198) #12 ; 2 uses
  %.not202221 = icmp eq ptr %i.ah, null
  br i1 %.not202221, label %clause_LiteralIsSort.exit.thread, label %.lr.ph225.preheader

.lr.ph225.preheader:                              ; preds = %bb.d
  %i.ai = insertelement <2 x ptr> <ptr null, ptr poison>, ptr %i.q, i64 1
  br label %.lr.ph225

.lr.ph225:                                        ; preds = %.lr.ph225.preheader, %term_IsAtom.exit.thread
  %.1223 = phi ptr [ %.6, %term_IsAtom.exit.thread ], [ %.0229, %.lr.ph225.preheader ] ; 5 uses
  %.084222 = phi ptr [ %.val.i191, %term_IsAtom.exit.thread ], [ %i.ah, %.lr.ph225.preheader ] ; 4 uses
  %i.aj = getelementptr i8, ptr %.084222, i64 8
  %.084.val112 = load ptr, ptr %i.aj, align 8     ; 3 uses
  %.val123 = load i32, ptr %.084.val112, align 8  ; 2 uses
  %.not.i.i136 = icmp sgt i32 %.val123, -1
  br i1 %.not.i.i136, label %term_IsAtom.exit.thread, label %term_IsAtom.exit

term_IsAtom.exit:                                 ; preds = %.lr.ph225
  %i.ak = sub nsw i32 0, %.val123
  %i.al = and i32 %i.j, %i.ak
  %.not203 = icmp eq i32 %i.al, 2
  br i1 %.not203, label %bb.e, label %term_IsAtom.exit.thread

bb.e:                                             ; preds = %term_IsAtom.exit
  %i.am = getelementptr i8, ptr %.084.val112, i64 16
  %.val116 = load ptr, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %.val116, i64 8
  %.val116.val = load ptr, ptr %i.an, align 8
  %.val124 = load i32, ptr %.val116.val, align 8
  %i.ao = icmp slt i32 %.val124, 1
  br i1 %i.ao, label %term_IsAtom.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = call ptr @sharing_NAtomDataList(ptr noundef nonnull %.084.val112) #12 ; 2 uses
  %.not204215 = icmp eq ptr %i.ap, null
  br i1 %.not204215, label %term_IsAtom.exit.thread, label %.lr.ph219

.lr.ph219:                                        ; preds = %bb.f, %list_Delete.exit190
  %.2217 = phi ptr [ %.5, %list_Delete.exit190 ], [ %.1223, %bb.f ] ; 8 uses
  %.089216 = phi ptr [ %.089.val130, %list_Delete.exit190 ], [ %i.ap, %bb.f ] ; 2 uses
  %i.aq = getelementptr i8, ptr %.089216, i64 8
  %.089.val = load ptr, ptr %i.aq, align 8        ; 4 uses
  %i.ar = getelementptr i8, ptr %.089.val, i64 16 ; 2 uses
  %.val125 = load ptr, ptr %i.ar, align 8         ; 9 uses
  %i.as = getelementptr i8, ptr %.val125, i64 56  ; 3 uses
  %.val.i = load ptr, ptr %i.as, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph219
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %.lr.ph219 ] ; 3 uses
end_hunk_0
begin_hunk_1_@inf_BackwardEmptySort:bb.a
  %.val133 = load i32, ptr %i.cw, align 4
  %i.cx = call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  store <2 x ptr> %i.ai, ptr %i.cx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @clause_RenameVarsBiggerThan(ptr noundef %i.cv, i32 noundef %.val133) #12
  %i.cy = getelementptr i8, ptr %i.cv, i64 56
  %.val131 = load ptr, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds [8 x i8], ptr %.val131, i64 %indvars.iv239
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr i8, ptr %i.da, i64 24
  %.val1.i161 = load ptr, ptr %i.db, align 8      ; 3 uses
  %.val5.val.i.i162 = load i32, ptr %.val1.i161, align 8
  %i.dc = load i32, ptr @fol_NOT, align 4
  %.not.i.i163 = icmp eq i32 %.val5.val.i.i162, %i.dc
  br i1 %.not.i.i163, label %bb.t, label %clause_GetLiteralAtom.exit167

bb.t:                                             ; preds = %bb.s
  %i.dd = getelementptr i8, ptr %.val1.i161, i64 16
  %.val6.i.i165 = load ptr, ptr %i.dd, align 8
  %i.de = getelementptr i8, ptr %.val6.i.i165, i64 8
  %.val6.val.i.i166 = load ptr, ptr %i.de, align 8
  br label %clause_GetLiteralAtom.exit167

clause_GetLiteralAtom.exit167:                    ; preds = %bb.s, %bb.t
  %.0.i.i164 = phi ptr [ %.val6.val.i.i166, %bb.t ], [ %.val1.i161, %bb.s ]
  call void @cont_Check() #12
  %i.df = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.dg = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %i.dh = call i32 @unify_UnifyNoOC(ptr noundef %i.df, ptr noundef %.0.i141, ptr noundef %i.dg, ptr noundef %.0.i.i164) #12 ; 0 uses
  %i.di = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.dj = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  call void @subst_ExtractUnifier(ptr noundef %i.di, ptr noundef nonnull %i.a, ptr noundef %i.dj, ptr noundef nonnull %i.b) #12
  %i.dk = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not1.i = icmp eq ptr %i.dk, null
  br i1 %.not1.i, label %cont_Reset.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %clause_GetLiteralAtom.exit167
  %cont_BINDINGS.promoted.i = load i32, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.dl = phi ptr [ %i.ds, %.lr.ph.i ], [ %i.dk, %.lr.ph.preheader.i ] ; 3 uses
  %i.dm = phi i32 [ %i.dr, %.lr.ph.i ], [ %cont_BINDINGS.promoted.i, %.lr.ph.preheader.i ]
  store ptr %i.dl, ptr @cont_CURRENTBINDING, align 8
  %i.dn = getelementptr i8, ptr %i.dl, i64 24
  %.val.i.i.i = load ptr, ptr %i.dn, align 8
  store ptr %.val.i.i.i, ptr @cont_LASTBINDING, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.do, i8 0, i64 20, i1 false)
  %i.dp = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store ptr null, ptr %i.dq, align 8
  %i.dr = add nsw i32 %i.dm, -1                   ; 2 uses
  store i32 %i.dr, ptr @cont_BINDINGS, align 4
  %i.ds = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not.i168 = icmp eq ptr %i.ds, null
  br i1 %.not.i168, label %cont_Reset.exit, label %.lr.ph.i, !llvm.loop !7

cont_Reset.exit:                                  ; preds = %.lr.ph.i, %clause_GetLiteralAtom.exit167
  store i32 0, ptr @cont_BINDINGS, align 4
  store i32 1, ptr @cont_STACKPOINTER, align 4
  store i32 2000, ptr @cont_INDEXVARSCANNER, align 4
  %i.dt = load ptr, ptr %i.b, align 8
  call void @subst_Delete(ptr noundef %i.dt) #12
  %i.du = load ptr, ptr %i.a, align 8
  %i.dv = call fastcc ptr @inf_ConstraintHyperResolvents(ptr noundef nonnull %.val125, ptr noundef %.087.lcssa, ptr noundef %i.du, ptr noundef %.085.lcssa, ptr noundef nonnull %i.cx, ptr noundef %1, ptr noundef %4, ptr noundef %5) ; 4 uses
  %.not.i169 = icmp eq ptr %i.dv, null
  br i1 %.not.i169, label %list_Nconc.exit, label %bb.u

bb.u:                                             ; preds = %cont_Reset.exit
  %.not16.i = icmp eq ptr %.2217, null
  br i1 %.not16.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.u, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %i.dv, %bb.u ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.v, label %.preheader.i, !llvm.loop !8

bb.v:                                             ; preds = %.preheader.i
  store ptr %.2217, ptr %.012.i, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %cont_Reset.exit, %bb.u, %bb.v
  %.0.i170 = phi ptr [ %i.dv, %bb.v ], [ %.2217, %cont_Reset.exit ], [ %i.dv, %bb.u ]
  br label %.lr.ph.i171

.lr.ph.i171:                                      ; preds = %list_Nconc.exit, %.lr.ph.i171
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i171 ], [ %i.cx, %list_Nconc.exit ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load i32, ptr %i.dx, align 8
  %i.dz = sext i32 %i.dy to i64
  %i.ea = load i64, ptr @memory_FREEDBYTES, align 8
  %i.eb = add i64 %i.ea, %i.dz
  store i64 %i.eb, ptr @memory_FREEDBYTES, align 8
  %i.ec = load ptr, ptr %i.dw, align 8
  store ptr %i.ec, ptr %.07.i, align 8
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.ed, align 8
  %.not.i172 = icmp eq ptr %.0.val.i, null
  br i1 %.not.i172, label %list_Delete.exit, label %.lr.ph.i171, !llvm.loop !9

list_Delete.exit:                                 ; preds = %.lr.ph.i171
  %i.ee = load ptr, ptr %i.a, align 8
  call void @subst_Delete(ptr noundef %i.ee) #12
  call void @clause_Delete(ptr noundef nonnull %i.cv) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.w

bb.w:                                             ; preds = %list_Delete.exit, %bb.r
  %.3 = phi ptr [ %.0.i170, %list_Delete.exit ], [ %.2217, %bb.r ] ; 2 uses
  %.not6.i179 = icmp eq ptr %.087.lcssa, null
  br i1 %.not6.i179, label %list_Delete.exit184, label %.lr.ph.i180

.lr.ph.i180:                                      ; preds = %bb.w, %.lr.ph.i180
  %.07.i181 = phi ptr [ %.0.val.i182, %.lr.ph.i180 ], [ %.087.lcssa, %bb.w ] ; 3 uses
  %.0.val.i182 = load ptr, ptr %.07.i181, align 8 ; 2 uses
  %i.ef = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load i32, ptr %i.eg, align 8
  %i.ei = sext i32 %i.eh to i64
  %i.ej = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ek = add i64 %i.ej, %i.ei
  store i64 %i.ek, ptr @memory_FREEDBYTES, align 8
  %i.el = load ptr, ptr %i.ef, align 8
  store ptr %i.el, ptr %.07.i181, align 8
  %i.em = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i181, ptr %i.em, align 8
  %.not.i183 = icmp eq ptr %.0.val.i182, null
  br i1 %.not.i183, label %list_Delete.exit184, label %.lr.ph.i180, !llvm.loop !9

list_Delete.exit184:                              ; preds = %.lr.ph.i180, %bb.w
  %.not6.i185 = icmp eq ptr %.085.lcssa, null
  br i1 %.not6.i185, label %list_Delete.exit190, label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %list_Delete.exit184, %.lr.ph.i186
  %.07.i187 = phi ptr [ %.0.val.i188, %.lr.ph.i186 ], [ %.085.lcssa, %list_Delete.exit184 ] ; 3 uses
  %.0.val.i188 = load ptr, ptr %.07.i187, align 8 ; 2 uses
  %i.en = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.ep = load i32, ptr %i.eo, align 8
  %i.eq = sext i32 %i.ep to i64
  %i.er = load i64, ptr @memory_FREEDBYTES, align 8
  %i.es = add i64 %i.er, %i.eq
  store i64 %i.es, ptr @memory_FREEDBYTES, align 8
  %i.et = load ptr, ptr %i.en, align 8
  store ptr %i.et, ptr %.07.i187, align 8
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i187, ptr %i.eu, align 8
  %.not.i189 = icmp eq ptr %.0.val.i188, null
  br i1 %.not.i189, label %list_Delete.exit190, label %.lr.ph.i186, !llvm.loop !9

list_Delete.exit190:                              ; preds = %.lr.ph.i186, %list_Delete.exit184, %._crit_edge, %bb.i, %bb.h, %clause_LiteralGetIndex.exit
  %.5 = phi ptr [ %.2217, %clause_LiteralGetIndex.exit ], [ %.2217, %bb.i ], [ %.2217, %bb.h ], [ %.2217, %._crit_edge ], [ %.3, %list_Delete.exit184 ], [ %.3, %.lr.ph.i186 ] ; 2 uses
  %.089.val130 = load ptr, ptr %.089216, align 8  ; 2 uses
  %.not204 = icmp eq ptr %.089.val130, null
  br i1 %.not204, label %term_IsAtom.exit.thread, label %.lr.ph219, !llvm.loop !31

term_IsAtom.exit.thread:                          ; preds = %list_Delete.exit190, %bb.f, %.lr.ph225, %term_IsAtom.exit, %bb.e
  %.6 = phi ptr [ %.1223, %term_IsAtom.exit ], [ %.1223, %bb.e ], [ %.1223, %.lr.ph225 ], [ %.1223, %bb.f ], [ %.5, %list_Delete.exit190 ] ; 2 uses
  %.val.i191 = load ptr, ptr %.084222, align 8    ; 2 uses
  %i.ev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.ex = load i32, ptr %i.ew, align 8
  %i.ey = sext i32 %i.ex to i64
  %i.ez = load i64, ptr @memory_FREEDBYTES, align 8
  %i.fa = add i64 %i.ez, %i.ey
  store i64 %i.fa, ptr @memory_FREEDBYTES, align 8
  %i.fb = load ptr, ptr %i.ev, align 8
  store ptr %i.fb, ptr %.084222, align 8
  %i.fc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.084222, ptr %i.fc, align 8
  %.not202 = icmp eq ptr %.val.i191, null
  br i1 %.not202, label %clause_LiteralIsSort.exit.thread, label %.lr.ph225, !llvm.loop !32

clause_LiteralIsSort.exit.thread:                 ; preds = %term_IsAtom.exit.thread, %bb.d, %clause_LiteralPredicate.exit.i, %symbol_IsPredicate.exit.i, %clause_LiteralAtom.exit.thread, %clause_LiteralIsSort.exit, %clause_LiteralAtom.exit
  %.7 = phi ptr [ %.0229, %clause_LiteralAtom.exit ], [ %.0229, %clause_LiteralIsSort.exit ], [ %.0229, %clause_LiteralPredicate.exit.i ], [ %.0229, %clause_LiteralAtom.exit.thread ], [ %.0229, %symbol_IsPredicate.exit.i ], [ %.0229, %bb.d ], [ %.6, %term_IsAtom.exit.thread ] ; 2 uses
  %indvars.iv.next240 = add nsw i64 %indvars.iv239, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next240 to i32
  %exitcond242.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond242.not, label %._crit_edge232, label %bb.b, !llvm.loop !33

._crit_edge232:                                   ; preds = %clause_LiteralIsSort.exit.thread, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %.7, %clause_LiteralIsSort.exit.thread ]
  ret ptr %.0.lcssa
}

declare i32 @clause_HasOnlyVarsInConstraint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @term_ContainsSymbol(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @inf_ForwardEmptySort(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val75 = load i32, ptr %i.a, align 8           ; 3 uses
  %i.b = add i32 %.val75, -1                      ; 2 uses
  %.not109 = icmp sgt i32 %.val75, 0
  br i1 %.not109, label %.lr.ph111, label %list_Delete.exit106

.lr.ph111:                                        ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 68
  %i.e = getelementptr i8, ptr %0, i64 72
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph111, %.loopexit
  %.055110 = phi i32 [ 0, %.lr.ph111 ], [ %spec.select66, %.loopexit ] ; 3 uses
  %.val79 = load ptr, ptr %i.c, align 8
  %i.f = zext nneg i32 %.055110 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val79, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %.val1.i = load ptr, ptr %i.i, align 8          ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val1.i, align 8
  %i.j = load i32, ptr @fol_NOT, align 4
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.j
  br i1 %.not.i.i, label %bb.c, label %clause_GetLiteralAtom.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %.val1.i, i64 16
  %.val6.i.i = load ptr, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.l, align 8
  br label %clause_GetLiteralAtom.exit

clause_GetLiteralAtom.exit:                       ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %.val6.val.i.i, %bb.c ], [ %.val1.i, %bb.b ]
  %i.m = getelementptr i8, ptr %.0.i.i, i64 16
  %.val72 = load ptr, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %.val72, i64 8
  %.val72.val = load ptr, ptr %i.n, align 8
  %.val73 = load i32, ptr %.val72.val, align 8    ; 2 uses
  %i.o = icmp slt i32 %.val73, 1
  br i1 %i.o, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %clause_GetLiteralAtom.exit
  %.val.i.i = load i32, ptr %i.a, align 8         ; 3 uses
  %.val3.i.i = load i32, ptr %i.d, align 4
  %.val4.i.i = load i32, ptr %i.e, align 8
  %i.p = add i32 %.val.i.i, -1
  %i.q = add i32 %i.p, %.val3.i.i
  %i.r = add i32 %i.q, %.val4.i.i                 ; 2 uses
  %.not120 = icmp sgt i32 %.val.i.i, %i.r
  br i1 %.not120, label %.critedge.thread137, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.s = sext i32 %.val.i.i to i64
  %i.t = sext i32 %i.r to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %clause_GetLiteralAtom.exit86
  %indvars.iv = phi i64 [ %i.s, %.lr.ph.preheader ], [ %indvars.iv.next, %clause_GetLiteralAtom.exit86 ] ; 3 uses
  %.val78 = load ptr, ptr %i.c, align 8
  %i.u = getelementptr inbounds [8 x i8], ptr %.val78, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 24
  %.val1.i80 = load ptr, ptr %i.w, align 8        ; 3 uses
  %.val5.val.i.i81 = load i32, ptr %.val1.i80, align 8
  %i.x = load i32, ptr @fol_NOT, align 4
  %.not.i.i82 = icmp eq i32 %.val5.val.i.i81, %i.x
  br i1 %.not.i.i82, label %bb.e, label %clause_GetLiteralAtom.exit86

bb.e:                                             ; preds = %.lr.ph
  %i.y = getelementptr i8, ptr %.val1.i80, i64 16
  %.val6.i.i84 = load ptr, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %.val6.i.i84, i64 8
  %.val6.val.i.i85 = load ptr, ptr %i.z, align 8
  br label %clause_GetLiteralAtom.exit86

clause_GetLiteralAtom.exit86:                     ; preds = %.lr.ph, %bb.e
  %.0.i.i83 = phi ptr [ %.val6.val.i.i85, %bb.e ], [ %.val1.i80, %.lr.ph ]
  %i.aa = tail call i32 @term_ContainsSymbol(ptr noundef %.0.i.i83, i32 noundef %.val73) #12
  %.not65 = icmp eq i32 %i.aa, 0                  ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ab = icmp slt i64 %indvars.iv, %i.t
  %i.ac = and i1 %i.ab, %.not65
  br i1 %i.ac, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !34

.loopexit.loopexit:                               ; preds = %clause_GetLiteralAtom.exit86
  %i.ad = xor i1 %.not65, true
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %clause_GetLiteralAtom.exit
  %.3 = phi i1 [ true, %clause_GetLiteralAtom.exit ], [ %i.ad, %.loopexit.loopexit ] ; 3 uses
  %i.ae = zext i1 %.3 to i32
  %spec.select66 = add nuw nsw i32 %.055110, %i.ae ; 3 uses
  %.not = icmp slt i32 %spec.select66, %.val75
  %or.cond = and i1 %.not, %.3
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !35

.critedge:                                        ; preds = %.loopexit
  br i1 %.3, label %list_Delete.exit106, label %.critedge.thread137

.critedge.thread137:                              ; preds = %bb.d, %.critedge
  %.055.lcssa140 = phi i32 [ %spec.select66, %.critedge ], [ %.055110, %bb.d ] ; 2 uses
  %6 = getelementptr i8, ptr %0, i64 56           ; 2 uses
  %.val77 = load ptr, ptr %6, align 8
  %i.af = zext nneg i32 %.055.lcssa140 to i64     ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val77, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %.val1.i87 = load ptr, ptr %i.ai, align 8       ; 3 uses
  %.val5.val.i.i88 = load i32, ptr %.val1.i87, align 8
  %i.aj = load i32, ptr @fol_NOT, align 4
  %.not.i.i89 = icmp eq i32 %.val5.val.i.i88, %i.aj
  br i1 %.not.i.i89, label %bb.f, label %clause_GetLiteralAtom.exit93

bb.f:                                             ; preds = %.critedge.thread137
  %i.ak = getelementptr i8, ptr %.val1.i87, i64 16
  %.val6.i.i91 = load ptr, ptr %i.ak, align 8
  %i.al = getelementptr i8, ptr %.val6.i.i91, i64 8
  %.val6.val.i.i92 = load ptr, ptr %i.al, align 8
  br label %clause_GetLiteralAtom.exit93

clause_GetLiteralAtom.exit93:                     ; preds = %.critedge.thread137, %bb.f
  %.0.i.i90 = phi ptr [ %.val6.val.i.i92, %bb.f ], [ %.val1.i87, %.critedge.thread137 ]
  %i.am = getelementptr i8, ptr %.0.i.i90, i64 16
  %.val70 = load ptr, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %.val70, i64 8
  %.val70.val = load ptr, ptr %i.an, align 8
  %.val67 = load i32, ptr %.val70.val, align 8
  %i.ao = inttoptr i64 %i.af to ptr
  %i.ap = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ao, ptr %i.aq, align 8
  store ptr null, ptr %i.ap, align 8
  %.not59.not115 = icmp slt i32 %.055.lcssa140, %i.b
  br i1 %.not59.not115, label %.lr.ph118.preheader, label %._crit_edge

.lr.ph118.preheader:                              ; preds = %clause_GetLiteralAtom.exit93
  %wide.trip.count = zext i32 %i.b to i64
  %.pre125 = load i32, ptr @fol_NOT, align 4
  br label %.lr.ph118

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %bb.i
  %i.ar = phi i32 [ %.pre125, %.lr.ph118.preheader ], [ %i.bc, %bb.i ] ; 2 uses
  %indvars.iv122 = phi i64 [ %i.af, %.lr.ph118.preheader ], [ %indvars.iv.next123, %bb.i ]
  %.051116 = phi ptr [ %i.ap, %.lr.ph118.preheader ], [ %.152, %bb.i ] ; 2 uses
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 4 uses
  %.val76 = load ptr, ptr %6, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val76, i64 %indvars.iv.next123
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 24
  %.val1.i94 = load ptr, ptr %i.au, align 8       ; 3 uses
  %.val5.val.i.i95 = load i32, ptr %.val1.i94, align 8
  %.not.i.i96 = icmp eq i32 %.val5.val.i.i95, %i.ar
  br i1 %.not.i.i96, label %bb.g, label %clause_GetLiteralAtom.exit100

bb.g:                                             ; preds = %.lr.ph118
  %i.av = getelementptr i8, ptr %.val1.i94, i64 16
  %.val6.i.i98 = load ptr, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %.val6.i.i98, i64 8
  %.val6.val.i.i99 = load ptr, ptr %i.aw, align 8
  br label %clause_GetLiteralAtom.exit100

clause_GetLiteralAtom.exit100:                    ; preds = %.lr.ph118, %bb.g
  %.0.i.i97 = phi ptr [ %.val6.val.i.i99, %bb.g ], [ %.val1.i94, %.lr.ph118 ]
  %i.ax = getelementptr i8, ptr %.0.i.i97, i64 16
  %.val69 = load ptr, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %.val69, i64 8
  %.val69.val = load ptr, ptr %i.ay, align 8
  %.val = load i32, ptr %.val69.val, align 8
  %.not107 = icmp eq i32 %.val, %.val67
  br i1 %.not107, label %bb.h, label %bb.i

bb.h:                                             ; preds = %clause_GetLiteralAtom.exit100
  %i.az = inttoptr i64 %indvars.iv.next123 to ptr
  %i.ba = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.az, ptr %i.bb, align 8
  store ptr %.051116, ptr %i.ba, align 8
  %.pre = load i32, ptr @fol_NOT, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %clause_GetLiteralAtom.exit100
  %i.bc = phi i32 [ %.pre, %bb.h ], [ %i.ar, %clause_GetLiteralAtom.exit100 ]
  %.152 = phi ptr [ %i.ba, %bb.h ], [ %.051116, %clause_GetLiteralAtom.exit100 ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph118, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.i, %clause_GetLiteralAtom.exit93
  %.051.lcssa = phi ptr [ %i.ap, %clause_GetLiteralAtom.exit93 ], [ %.152, %bb.i ] ; 5 uses
  %i.bd = tail call ptr @list_Copy(ptr noundef %.051.lcssa) #12 ; 3 uses
  %.not60 = icmp eq i32 %3, 0
  br i1 %.not60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.be = tail call fastcc i32 @inf_SubsortPrecheck(ptr noundef nonnull %0, ptr noundef %.051.lcssa, ptr noundef null, ptr noundef %1, ptr noundef %2)
  %.not61 = icmp eq i32 %i.be, 0
  br i1 %.not61, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.bf = tail call fastcc ptr @inf_ConstraintHyperResolvents(ptr noundef nonnull %0, ptr noundef %.051.lcssa, ptr noundef null, ptr noundef %i.bd, ptr noundef null, ptr noundef %1, ptr noundef %4, ptr noundef %5)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.050 = phi ptr [ %i.bf, %bb.k ], [ null, %bb.j ] ; 2 uses
  %.not6.i = icmp eq ptr %i.bd, null
  br i1 %.not6.i, label %list_Delete.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %i.bd, %bb.l ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = sext i32 %i.bi to i64
  %i.bk = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bl = add i64 %i.bk, %i.bj
  store i64 %i.bl, ptr @memory_FREEDBYTES, align 8
  %i.bm = load ptr, ptr %i.bg, align 8
  store ptr %i.bm, ptr %.07.i, align 8
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.bn, align 8
  %.not.i = icmp eq ptr %.0.val.i, null
  br i1 %.not.i, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !9

list_Delete.exit:                                 ; preds = %.lr.ph.i, %bb.l
  %.not6.i101 = icmp eq ptr %.051.lcssa, null
  br i1 %.not6.i101, label %list_Delete.exit106, label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %list_Delete.exit, %.lr.ph.i102
  %.07.i103 = phi ptr [ %.0.val.i104, %.lr.ph.i102 ], [ %.051.lcssa, %list_Delete.exit ] ; 3 uses
  %.0.val.i104 = load ptr, ptr %.07.i103, align 8 ; 2 uses
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = sext i32 %i.bq to i64
  %i.bs = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bt = add i64 %i.bs, %i.br
  store i64 %i.bt, ptr @memory_FREEDBYTES, align 8
  %i.bu = load ptr, ptr %i.bo, align 8
  store ptr %i.bu, ptr %.07.i103, align 8
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i103, ptr %i.bv, align 8
  %.not.i105 = icmp eq ptr %.0.val.i104, null
  br i1 %.not.i105, label %list_Delete.exit106, label %.lr.ph.i102, !llvm.loop !9

list_Delete.exit106:                              ; preds = %.lr.ph.i102, %bb.a, %list_Delete.exit, %.critedge
  %.0 = phi ptr [ null, %.critedge ], [ %.050, %list_Delete.exit ], [ null, %bb.a ], [ %.050, %.lr.ph.i102 ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @inf_ForwardWeakening(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val67 = load i32, ptr %i.a, align 8           ; 3 uses
  %.not112 = icmp sgt i32 %.val67, 0
  br i1 %.not112, label %.lr.ph116, label %.critedge

.lr.ph116:                                        ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %.056107 = add nsw i32 %.val67, -1
  %i.c = zext nneg i32 %.val67 to i64             ; 2 uses
  %i.d = add nsw i64 %i.c, -1
  %i.e = zext nneg i32 %.056107 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph116, %list_Delete.exit105
  %indvars.iv119 = phi i64 [ 0, %.lr.ph116 ], [ %indvars.iv.next120, %list_Delete.exit105 ] ; 6 uses
  %.0114 = phi ptr [ null, %.lr.ph116 ], [ %.2, %list_Delete.exit105 ] ; 5 uses
  %.val71 = load ptr, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.val71, i64 %indvars.iv119
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %.val1.i = load ptr, ptr %i.h, align 8          ; 4 uses
  %.val5.val.i.i = load i32, ptr %.val1.i, align 8
  %i.i = load i32, ptr @fol_NOT, align 4
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.i
  br i1 %.not.i.i, label %bb.c, label %clause_GetLiteralAtom.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %.val1.i, i64 16
  %.val6.i.i = load ptr, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.k, align 8
  br label %clause_GetLiteralAtom.exit

clause_GetLiteralAtom.exit:                       ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %.val6.val.i.i, %bb.c ], [ %.val1.i, %bb.b ]
  %i.l = getelementptr i8, ptr %.0.i.i, i64 16
  %.val65 = load ptr, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %.val65, i64 8
  %.val65.val = load ptr, ptr %i.m, align 8
  %.val66 = load i32, ptr %.val65.val, align 8
  %i.n = icmp sgt i32 %.val66, 0                  ; 2 uses
  br i1 %i.n, label %list_Delete.exit105, label %bb.d

bb.d:                                             ; preds = %clause_GetLiteralAtom.exit
  %i.o = tail call fastcc ptr @inf_GetForwardPartnerLits(ptr nonnull %.val1.i, ptr noundef %1) ; 4 uses
  %.not106 = icmp eq ptr %i.o, null
  br i1 %.not106, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val70 = load ptr, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val70, i64 %indvars.iv119
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %.val1.i72 = load ptr, ptr %i.r, align 8        ; 3 uses
  %.val5.val.i.i73 = load i32, ptr %.val1.i72, align 8
  %i.s = load i32, ptr @fol_NOT, align 4
  %.not.i.i74 = icmp eq i32 %.val5.val.i.i73, %i.s
  br i1 %.not.i.i74, label %bb.f, label %clause_GetLiteralAtom.exit78

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %.val1.i72, i64 16
  %.val6.i.i76 = load ptr, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %.val6.i.i76, i64 8
  %.val6.val.i.i77 = load ptr, ptr %i.u, align 8
  br label %clause_GetLiteralAtom.exit78

clause_GetLiteralAtom.exit78:                     ; preds = %bb.e, %bb.f
  %.0.i.i75 = phi ptr [ %.val6.val.i.i77, %bb.f ], [ %.val1.i72, %bb.e ] ; 2 uses
  %i.v = icmp samesign ult i64 %indvars.iv119, %i.e
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %clause_GetLiteralAtom.exit78
  %i.w = getelementptr i8, ptr %.0.i.i75, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %sort_Intersect.exit
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %sort_Intersect.exit ] ; 3 uses
  %.050109 = phi ptr [ null, %.lr.ph ], [ %.151, %sort_Intersect.exit ] ; 4 uses
  %.054108 = phi ptr [ null, %.lr.ph ], [ %.155, %sort_Intersect.exit ] ; 2 uses
  %.val69 = load ptr, ptr %i.b, align 8
  %i.x = getelementptr inbounds [8 x i8], ptr %.val69, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 24
  %.val1.i79 = load ptr, ptr %i.z, align 8        ; 3 uses
  %.val5.val.i.i80 = load i32, ptr %.val1.i79, align 8
  %i.aa = load i32, ptr @fol_NOT, align 4
  %.not.i.i81 = icmp eq i32 %.val5.val.i.i80, %i.aa
  br i1 %.not.i.i81, label %bb.h, label %clause_GetLiteralAtom.exit85

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %.val1.i79, i64 16
  %.val6.i.i83 = load ptr, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %.val6.i.i83, i64 8
  %.val6.val.i.i84 = load ptr, ptr %i.ac, align 8
  br label %clause_GetLiteralAtom.exit85

clause_GetLiteralAtom.exit85:                     ; preds = %bb.g, %bb.h
  %.0.i.i82 = phi ptr [ %.val6.val.i.i84, %bb.h ], [ %.val1.i79, %bb.g ] ; 2 uses
  %i.ad = getelementptr i8, ptr %.0.i.i82, i64 16
  %.val64 = load ptr, ptr %i.ad, align 8
  %i.ae = getelementptr i8, ptr %.val64, i64 8
  %.val64.val = load ptr, ptr %i.ae, align 8
  %.val63 = load ptr, ptr %i.w, align 8
  %i.af = getelementptr i8, ptr %.val63, i64 8
  %.val63.val = load ptr, ptr %i.af, align 8
  %i.ag = icmp eq ptr %.val64.val, %.val63.val
  br i1 %i.ag, label %bb.i, label %sort_Intersect.exit

bb.i:                                             ; preds = %clause_GetLiteralAtom.exit85
  %i.ah = inttoptr i64 %indvars.iv to ptr
  %i.ai = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ah, ptr %i.aj, align 8
  store ptr %.054108, ptr %i.ai, align 8
  %.val62 = load i32, ptr %.0.i.i82, align 8
  %i.ak = tail call ptr @sort_TheorySortOfSymbol(ptr noundef %2, i32 noundef %.val62) #12 ; 4 uses
  %.not.i.i86 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i86, label %sort_Intersect.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not16.i.i = icmp eq ptr %.050109, null
  br i1 %.not16.i.i, label %sort_Intersect.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.j, %.preheader.i.i
  %.012.i.i = phi ptr [ %.012.val15.i.i, %.preheader.i.i ], [ %i.ak, %bb.j ] ; 2 uses
  %.012.val15.i.i = load ptr, ptr %.012.i.i, align 8 ; 2 uses
  %.not17.i.i = icmp eq ptr %.012.val15.i.i, null
  br i1 %.not17.i.i, label %bb.k, label %.preheader.i.i, !llvm.loop !8

bb.k:                                             ; preds = %.preheader.i.i
  store ptr %.050109, ptr %.012.i.i, align 8
  br label %sort_Intersect.exit

end_hunk_1
