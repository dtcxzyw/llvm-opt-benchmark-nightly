Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/rules-sort?download=true
inline.NumInlined: 797
inline.NumDeleted: 120
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@inf_ConstraintHyperResolvents:bb.a
  %.val53 = load ptr, ptr %i.lt, align 8          ; 3 uses
  %.val5.val.i76 = load i32, ptr %.val53, align 8
  %i.lu = load i32, ptr @fol_NOT, align 4
  %.not.i77 = icmp eq i32 %.val5.val.i76, %i.lu
  br i1 %.not.i77, label %bb.aw, label %clause_LiteralAtom.exit81

bb.aw:                                            ; preds = %clause_LiteralGetIndex.exit
  %i.lv = getelementptr i8, ptr %.val53, i64 16
  %.val6.i79 = load ptr, ptr %i.lv, align 8
  %i.lw = getelementptr i8, ptr %.val6.i79, i64 8
  %.val6.val.i80 = load ptr, ptr %i.lw, align 8
  br label %clause_LiteralAtom.exit81

clause_LiteralAtom.exit81:                        ; preds = %clause_LiteralGetIndex.exit, %bb.aw
  %.0.i78 = phi ptr [ %.val6.val.i80, %bb.aw ], [ %.val53, %clause_LiteralGetIndex.exit ]
  %i.lx = call i32 @unify_UnifyNoOC(ptr noundef %i.lr, ptr noundef %i.ka, ptr noundef %i.ls, ptr noundef %.0.i78) #12 ; 0 uses
  %i.ly = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.lz = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  call void @subst_ExtractUnifier(ptr noundef %i.ly, ptr noundef nonnull %i.c, ptr noundef %i.lz, ptr noundef nonnull %i.d) #12
  %i.ma = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not1.i = icmp eq ptr %i.ma, null
  br i1 %.not1.i, label %cont_Reset.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %clause_LiteralAtom.exit81
  %cont_BINDINGS.promoted.i = load i32, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %.lr.ph.i82, %.lr.ph.preheader.i
  %i.mb = phi ptr [ %i.mi, %.lr.ph.i82 ], [ %i.ma, %.lr.ph.preheader.i ] ; 3 uses
  %i.mc = phi i32 [ %i.mh, %.lr.ph.i82 ], [ %cont_BINDINGS.promoted.i, %.lr.ph.preheader.i ]
  store ptr %i.mb, ptr @cont_CURRENTBINDING, align 8
  %i.md = getelementptr i8, ptr %i.mb, i64 24
  %.val.i.i.i = load ptr, ptr %i.md, align 8
  store ptr %.val.i.i.i, ptr @cont_LASTBINDING, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.me, i8 0, i64 20, i1 false)
  %i.mf = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  store ptr null, ptr %i.mg, align 8
  %i.mh = add nsw i32 %i.mc, -1                   ; 2 uses
  store i32 %i.mh, ptr @cont_BINDINGS, align 4
  %i.mi = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not.i83 = icmp eq ptr %i.mi, null
  br i1 %.not.i83, label %cont_Reset.exit, label %.lr.ph.i82, !llvm.loop !7

cont_Reset.exit:                                  ; preds = %.lr.ph.i82, %clause_LiteralAtom.exit81
  store i32 0, ptr @cont_BINDINGS, align 4
  store i32 1, ptr @cont_STACKPOINTER, align 4
  store i32 2000, ptr @cont_INDEXVARSCANNER, align 4
  %i.mj = load ptr, ptr %i.d, align 8
  call void @subst_Delete(ptr noundef %i.mj) #12
  %i.mk = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ml = call ptr @subst_Copy(ptr noundef %2) #12
  %i.mm = call ptr @subst_Compose(ptr noundef %i.mk, ptr noundef %i.ml) #12 ; 2 uses
  store ptr %i.mm, ptr %i.c, align 8
  %.val56 = load ptr, ptr %3, align 8
  %i.mn = call fastcc ptr @inf_ConstraintHyperResolvents(ptr noundef %0, ptr noundef %1, ptr noundef %i.mm, ptr noundef %.val56, ptr noundef nonnull %i.ll, ptr noundef %5, ptr noundef %6, ptr noundef %7) ; 4 uses
  %.not.i85 = icmp eq ptr %i.mn, null
  br i1 %.not.i85, label %list_Nconc.exit, label %bb.ax

bb.ax:                                            ; preds = %cont_Reset.exit
  %.not16.i = icmp eq ptr %.04695, null
  br i1 %.not16.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ax, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %i.mn, %bb.ax ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.ay, label %.preheader.i, !llvm.loop !8

bb.ay:                                            ; preds = %.preheader.i
  store ptr %.04695, ptr %.012.i, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %cont_Reset.exit, %bb.ax, %bb.ay
  %.0.i86 = phi ptr [ %i.mn, %bb.ay ], [ %.04695, %cont_Reset.exit ], [ %i.mn, %bb.ax ] ; 2 uses
  %i.mo = load ptr, ptr %i.c, align 8
  call void @subst_Delete(ptr noundef %i.mo) #12
  call void @subst_Delete(ptr noundef %i.mk) #12
  call void @clause_Delete(ptr noundef nonnull %i.ln) #12
  %.val.i87 = load ptr, ptr %i.ll, align 8
  %i.mp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 32
  %i.mr = load i32, ptr %i.mq, align 8
  %i.ms = sext i32 %i.mr to i64
  %i.mt = load i64, ptr @memory_FREEDBYTES, align 8
  %i.mu = add i64 %i.mt, %i.ms
  store i64 %i.mu, ptr @memory_FREEDBYTES, align 8
  %i.mv = load ptr, ptr %i.mp, align 8
  store ptr %i.mv, ptr %i.ll, align 8
  %i.mw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %i.ll, ptr %i.mw, align 8
  %.val.i88 = load ptr, ptr %.096, align 8        ; 2 uses
  %i.mx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 32
  %i.mz = load i32, ptr %i.my, align 8
  %i.na = sext i32 %i.mz to i64
  %i.nb = load i64, ptr @memory_FREEDBYTES, align 8
  %i.nc = add i64 %i.nb, %i.na
  store i64 %i.nc, ptr @memory_FREEDBYTES, align 8
  %i.nd = load ptr, ptr %i.mx, align 8
  store ptr %i.nd, ptr %.096, align 8
  %i.ne = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.096, ptr %i.ne, align 8
  %.not90 = icmp eq ptr %.val.i88, null
  br i1 %.not90, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %list_Nconc.exit, %inf_GetSortResolutionPartnerLits.exit
  %.046.lcssa = phi ptr [ null, %inf_GetSortResolutionPartnerLits.exit ], [ %.0.i86, %list_Nconc.exit ]
  call void @term_Delete(ptr noundef %i.ka) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge, %inf_BuildConstraintHyperResolvent.exit
  %.047 = phi ptr [ %i.jn, %inf_BuildConstraintHyperResolvent.exit ], [ %.046.lcssa, %._crit_edge ]
  ret ptr %.047
}

declare void @clause_Delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @inf_ForwardSortResolution(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val52 = load i32, ptr %i.a, align 8           ; 3 uses
  %i.b = add nsw i32 %.val52, -1                  ; 2 uses
  %.not76 = icmp sgt i32 %.val52, 0
  br i1 %.not76, label %.lr.ph, label %list_Delete.exit75

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %.val55 = load ptr, ptr %i.c, align 8           ; 2 uses
  %i.d = load i32, ptr @fol_NOT, align 4          ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %clause_GetLiteralAtom.exit
  %.03777 = phi i32 [ 0, %.lr.ph ], [ %.138, %clause_GetLiteralAtom.exit ] ; 2 uses
  %i.e = zext nneg i32 %.03777 to i64             ; 2 uses
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
  %.138 = add nuw nsw i32 %.03777, %i.n           ; 4 uses
  %.not = icmp slt i32 %.138, %.val52
  %or.cond = and i1 %.not, %i.m
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !27

.critedge:                                        ; preds = %clause_GetLiteralAtom.exit
  br i1 %i.m, label %list_Delete.exit75, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.o = zext nneg i32 %.138 to i64               ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val55, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %.val1.i56 = load ptr, ptr %i.r, align 8        ; 3 uses
  %.val5.val.i.i57 = load i32, ptr %.val1.i56, align 8
  %.not.i.i58 = icmp eq i32 %.val5.val.i.i57, %i.d
  br i1 %.not.i.i58, label %bb.e, label %clause_GetLiteralAtom.exit62

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %.val1.i56, i64 16
  %.val6.i.i60 = load ptr, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %.val6.i.i60, i64 8
  %.val6.val.i.i61 = load ptr, ptr %i.t, align 8
  br label %clause_GetLiteralAtom.exit62

clause_GetLiteralAtom.exit62:                     ; preds = %bb.d, %bb.e
  %.0.i.i59 = phi ptr [ %.val6.val.i.i61, %bb.e ], [ %.val1.i56, %bb.d ]
  %i.u = inttoptr i64 %i.o to ptr
  %i.v = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %i.w, align 8
  store ptr null, ptr %i.v, align 8
  %.not45.not81 = icmp slt i32 %.138, %i.b
  br i1 %.not45.not81, label %.lr.ph84, label %._crit_edge

.lr.ph84:                                         ; preds = %clause_GetLiteralAtom.exit62
  %i.x = getelementptr i8, ptr %.0.i.i59, i64 16
  %sext = sext i32 %i.b to i64
  %.pre87 = load i32, ptr @fol_NOT, align 4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph84, %bb.i
  %i.y = phi i32 [ %.pre87, %.lr.ph84 ], [ %i.al, %bb.i ] ; 2 uses
  %indvars.iv = phi i64 [ %i.e, %.lr.ph84 ], [ %indvars.iv.next, %bb.i ]
  %.03982 = phi ptr [ %i.v, %.lr.ph84 ], [ %.140, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %.val53 = load ptr, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val53, i64 %indvars.iv.next
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 24
  %.val1.i63 = load ptr, ptr %i.ab, align 8       ; 3 uses
  %.val5.val.i.i64 = load i32, ptr %.val1.i63, align 8
  %.not.i.i65 = icmp eq i32 %.val5.val.i.i64, %i.y
  br i1 %.not.i.i65, label %bb.g, label %clause_GetLiteralAtom.exit69

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %.val1.i63, i64 16
  %.val6.i.i67 = load ptr, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %.val6.i.i67, i64 8
  %.val6.val.i.i68 = load ptr, ptr %i.ad, align 8
  br label %clause_GetLiteralAtom.exit69

clause_GetLiteralAtom.exit69:                     ; preds = %bb.f, %bb.g
  %.0.i.i66 = phi ptr [ %.val6.val.i.i68, %bb.g ], [ %.val1.i63, %bb.f ]
  %i.ae = getelementptr i8, ptr %.0.i.i66, i64 16
  %.val49 = load ptr, ptr %i.ae, align 8
  %i.af = getelementptr i8, ptr %.val49, i64 8
  %.val49.val = load ptr, ptr %i.af, align 8
  %.val = load ptr, ptr %i.x, align 8
  %i.ag = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.ag, align 8
  %i.ah = icmp eq ptr %.val49.val, %.val.val
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %clause_GetLiteralAtom.exit69
  %i.ai = inttoptr i64 %indvars.iv.next to ptr
  %i.aj = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ai, ptr %i.ak, align 8
  store ptr %.03982, ptr %i.aj, align 8
  %.pre = load i32, ptr @fol_NOT, align 4
  br label %bb.i

bb.i:                                             ; preds = %clause_GetLiteralAtom.exit69, %bb.h
  %i.al = phi i32 [ %.pre, %bb.h ], [ %i.y, %clause_GetLiteralAtom.exit69 ]
  %.140 = phi ptr [ %i.aj, %bb.h ], [ %.03982, %clause_GetLiteralAtom.exit69 ] ; 2 uses
  %6 = icmp slt i64 %indvars.iv.next, %sext
  br i1 %6, label %bb.f, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.i, %clause_GetLiteralAtom.exit62
  %.039.lcssa = phi ptr [ %i.v, %clause_GetLiteralAtom.exit62 ], [ %.140, %bb.i ] ; 5 uses
  %i.am = tail call ptr @list_Copy(ptr noundef %.039.lcssa) #12 ; 3 uses
  %.not46 = icmp eq i32 %3, 0
  br i1 %.not46, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.an = tail call fastcc i32 @inf_SubsortPrecheck(ptr noundef nonnull %0, ptr noundef %.039.lcssa, ptr noundef null, ptr noundef %1, ptr noundef %2)
  %.not47 = icmp eq i32 %i.an, 0
  br i1 %.not47, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.ao = tail call fastcc ptr @inf_ConstraintHyperResolvents(ptr noundef nonnull %0, ptr noundef %.039.lcssa, ptr noundef null, ptr noundef %i.am, ptr noundef null, ptr noundef %1, ptr noundef %4, ptr noundef %5)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.041 = phi ptr [ %i.ao, %bb.k ], [ null, %bb.j ] ; 2 uses
  %.not6.i = icmp eq ptr %i.am, null
  br i1 %.not6.i, label %list_Delete.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %i.am, %bb.l ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = sext i32 %i.ar to i64
  %i.at = load i64, ptr @memory_FREEDBYTES, align 8
  %i.au = add i64 %i.at, %i.as
  store i64 %i.au, ptr @memory_FREEDBYTES, align 8
  %i.av = load ptr, ptr %i.ap, align 8
  store ptr %i.av, ptr %.07.i, align 8
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.aw, align 8
  %.not.i = icmp eq ptr %.0.val.i, null
  br i1 %.not.i, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !9

list_Delete.exit:                                 ; preds = %.lr.ph.i, %bb.l
  %.not6.i70 = icmp eq ptr %.039.lcssa, null
  br i1 %.not6.i70, label %list_Delete.exit75, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %list_Delete.exit, %.lr.ph.i71
  %.07.i72 = phi ptr [ %.0.val.i73, %.lr.ph.i71 ], [ %.039.lcssa, %list_Delete.exit ] ; 3 uses
  %.0.val.i73 = load ptr, ptr %.07.i72, align 8   ; 2 uses
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = sext i32 %i.az to i64
  %i.bb = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bc = add i64 %i.bb, %i.ba
  store i64 %i.bc, ptr @memory_FREEDBYTES, align 8
  %i.bd = load ptr, ptr %i.ax, align 8
  store ptr %i.bd, ptr %.07.i72, align 8
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i72, ptr %i.be, align 8
  %.not.i74 = icmp eq ptr %.0.val.i73, null
  br i1 %.not.i74, label %list_Delete.exit75, label %.lr.ph.i71, !llvm.loop !9

list_Delete.exit75:                               ; preds = %.lr.ph.i71, %bb.a, %list_Delete.exit, %.critedge
  %.042 = phi ptr [ null, %.critedge ], [ %.041, %list_Delete.exit ], [ null, %bb.a ], [ %.041, %.lr.ph.i71 ]
  ret ptr %.042
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
  %.093222 = phi ptr [ %.val.i191, %term_IsAtom.exit.thread ], [ %i.ah, %.lr.ph225.preheader ] ; 4 uses
  %i.aj = getelementptr i8, ptr %.093222, i64 8
  %.093.val112 = load ptr, ptr %i.aj, align 8     ; 3 uses
  %.val123 = load i32, ptr %.093.val112, align 8  ; 2 uses
  %.not.i.i136 = icmp sgt i32 %.val123, -1
  br i1 %.not.i.i136, label %term_IsAtom.exit.thread, label %term_IsAtom.exit

term_IsAtom.exit:                                 ; preds = %.lr.ph225
  %i.ak = sub nsw i32 0, %.val123
  %i.al = and i32 %i.j, %i.ak
  %.not203 = icmp eq i32 %i.al, 2
  br i1 %.not203, label %bb.e, label %term_IsAtom.exit.thread

bb.e:                                             ; preds = %term_IsAtom.exit
  %i.am = getelementptr i8, ptr %.093.val112, i64 16
  %.val116 = load ptr, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %.val116, i64 8
  %.val116.val = load ptr, ptr %i.an, align 8
  %.val124 = load i32, ptr %.val116.val, align 8
  %i.ao = icmp slt i32 %.val124, 1
  br i1 %i.ao, label %term_IsAtom.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = call ptr @sharing_NAtomDataList(ptr noundef nonnull %.093.val112) #12 ; 2 uses
  %.not204215 = icmp eq ptr %i.ap, null
  br i1 %.not204215, label %term_IsAtom.exit.thread, label %.lr.ph219

.lr.ph219:                                        ; preds = %bb.f, %list_Delete.exit190
  %.2217 = phi ptr [ %.5, %list_Delete.exit190 ], [ %.1223, %bb.f ] ; 8 uses
  %.092216 = phi ptr [ %.092.val130, %list_Delete.exit190 ], [ %i.ap, %bb.f ] ; 2 uses
  %i.aq = getelementptr i8, ptr %.092216, i64 8
  %.092.val = load ptr, ptr %i.aq, align 8        ; 4 uses
  %i.ar = getelementptr i8, ptr %.092.val, i64 16 ; 2 uses
  %.val125 = load ptr, ptr %i.ar, align 8         ; 9 uses
  %i.as = getelementptr i8, ptr %.val125, i64 56  ; 3 uses
  %.val.i = load ptr, ptr %i.as, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph219
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %.lr.ph219 ] ; 3 uses
end_hunk_0
begin_hunk_1_@inf_BackwardEmptySort:bb.a
  %.val133 = load i32, ptr %i.cu, align 4
  %i.cv = call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  store <2 x ptr> %i.ai, ptr %i.cv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @clause_RenameVarsBiggerThan(ptr noundef %i.ct, i32 noundef %.val133) #12
  %i.cw = getelementptr i8, ptr %i.ct, i64 56
  %.val131 = load ptr, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds [8 x i8], ptr %.val131, i64 %indvars.iv239
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr i8, ptr %i.cy, i64 24
  %.val1.i161 = load ptr, ptr %i.cz, align 8      ; 3 uses
  %.val5.val.i.i162 = load i32, ptr %.val1.i161, align 8
  %i.da = load i32, ptr @fol_NOT, align 4
  %.not.i.i163 = icmp eq i32 %.val5.val.i.i162, %i.da
  br i1 %.not.i.i163, label %bb.t, label %clause_GetLiteralAtom.exit167

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr i8, ptr %.val1.i161, i64 16
  %.val6.i.i165 = load ptr, ptr %i.db, align 8
  %i.dc = getelementptr i8, ptr %.val6.i.i165, i64 8
  %.val6.val.i.i166 = load ptr, ptr %i.dc, align 8
  br label %clause_GetLiteralAtom.exit167

clause_GetLiteralAtom.exit167:                    ; preds = %bb.s, %bb.t
  %.0.i.i164 = phi ptr [ %.val6.val.i.i166, %bb.t ], [ %.val1.i161, %bb.s ]
  call void @cont_Check() #12
  %i.dd = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.de = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %i.df = call i32 @unify_UnifyNoOC(ptr noundef %i.dd, ptr noundef %.0.i141, ptr noundef %i.de, ptr noundef %.0.i.i164) #12 ; 0 uses
  %i.dg = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.dh = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  call void @subst_ExtractUnifier(ptr noundef %i.dg, ptr noundef nonnull %i.a, ptr noundef %i.dh, ptr noundef nonnull %i.b) #12
  %i.di = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not1.i = icmp eq ptr %i.di, null
  br i1 %.not1.i, label %cont_Reset.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %clause_GetLiteralAtom.exit167
  %cont_BINDINGS.promoted.i = load i32, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.dj = phi ptr [ %i.dq, %.lr.ph.i ], [ %i.di, %.lr.ph.preheader.i ] ; 3 uses
  %i.dk = phi i32 [ %i.dp, %.lr.ph.i ], [ %cont_BINDINGS.promoted.i, %.lr.ph.preheader.i ]
  store ptr %i.dj, ptr @cont_CURRENTBINDING, align 8
  %i.dl = getelementptr i8, ptr %i.dj, i64 24
  %.val.i.i.i = load ptr, ptr %i.dl, align 8
  store ptr %.val.i.i.i, ptr @cont_LASTBINDING, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dm, i8 0, i64 20, i1 false)
  %i.dn = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store ptr null, ptr %i.do, align 8
  %i.dp = add nsw i32 %i.dk, -1                   ; 2 uses
  store i32 %i.dp, ptr @cont_BINDINGS, align 4
  %i.dq = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not.i168 = icmp eq ptr %i.dq, null
  br i1 %.not.i168, label %cont_Reset.exit, label %.lr.ph.i, !llvm.loop !7

cont_Reset.exit:                                  ; preds = %.lr.ph.i, %clause_GetLiteralAtom.exit167
  store i32 0, ptr @cont_BINDINGS, align 4
  store i32 1, ptr @cont_STACKPOINTER, align 4
  store i32 2000, ptr @cont_INDEXVARSCANNER, align 4
  %i.dr = load ptr, ptr %i.b, align 8
  call void @subst_Delete(ptr noundef %i.dr) #12
  %i.ds = load ptr, ptr %i.a, align 8
  %i.dt = call fastcc ptr @inf_ConstraintHyperResolvents(ptr noundef nonnull %.val125, ptr noundef %.086.lcssa, ptr noundef %i.ds, ptr noundef %.084.lcssa, ptr noundef nonnull %i.cv, ptr noundef %1, ptr noundef %4, ptr noundef %5) ; 4 uses
  %.not.i169 = icmp eq ptr %i.dt, null
  br i1 %.not.i169, label %list_Nconc.exit, label %bb.u

bb.u:                                             ; preds = %cont_Reset.exit
  %.not16.i = icmp eq ptr %.2217, null
  br i1 %.not16.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.u, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %i.dt, %bb.u ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.v, label %.preheader.i, !llvm.loop !8

bb.v:                                             ; preds = %.preheader.i
  store ptr %.2217, ptr %.012.i, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %cont_Reset.exit, %bb.u, %bb.v
  %.0.i170 = phi ptr [ %i.dt, %bb.v ], [ %.2217, %cont_Reset.exit ], [ %i.dt, %bb.u ]
  br label %.lr.ph.i171

.lr.ph.i171:                                      ; preds = %list_Nconc.exit, %.lr.ph.i171
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i171 ], [ %i.cv, %list_Nconc.exit ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load i32, ptr %i.dv, align 8
  %i.dx = sext i32 %i.dw to i64
  %i.dy = load i64, ptr @memory_FREEDBYTES, align 8
  %i.dz = add i64 %i.dy, %i.dx
  store i64 %i.dz, ptr @memory_FREEDBYTES, align 8
  %i.ea = load ptr, ptr %i.du, align 8
  store ptr %i.ea, ptr %.07.i, align 8
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.eb, align 8
  %.not.i172 = icmp eq ptr %.0.val.i, null
  br i1 %.not.i172, label %list_Delete.exit, label %.lr.ph.i171, !llvm.loop !9

list_Delete.exit:                                 ; preds = %.lr.ph.i171
  %i.ec = load ptr, ptr %i.a, align 8
  call void @subst_Delete(ptr noundef %i.ec) #12
  call void @clause_Delete(ptr noundef nonnull %i.ct) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.w

bb.w:                                             ; preds = %list_Delete.exit, %bb.r
  %.3 = phi ptr [ %.0.i170, %list_Delete.exit ], [ %.2217, %bb.r ] ; 2 uses
  %.not6.i179 = icmp eq ptr %.086.lcssa, null
  br i1 %.not6.i179, label %list_Delete.exit184, label %.lr.ph.i180

.lr.ph.i180:                                      ; preds = %bb.w, %.lr.ph.i180
  %.07.i181 = phi ptr [ %.0.val.i182, %.lr.ph.i180 ], [ %.086.lcssa, %bb.w ] ; 3 uses
  %.0.val.i182 = load ptr, ptr %.07.i181, align 8 ; 2 uses
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = sext i32 %i.ef to i64
  %i.eh = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ei = add i64 %i.eh, %i.eg
  store i64 %i.ei, ptr @memory_FREEDBYTES, align 8
  %i.ej = load ptr, ptr %i.ed, align 8
  store ptr %i.ej, ptr %.07.i181, align 8
  %i.ek = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i181, ptr %i.ek, align 8
  %.not.i183 = icmp eq ptr %.0.val.i182, null
  br i1 %.not.i183, label %list_Delete.exit184, label %.lr.ph.i180, !llvm.loop !9

list_Delete.exit184:                              ; preds = %.lr.ph.i180, %bb.w
  %.not6.i185 = icmp eq ptr %.084.lcssa, null
  br i1 %.not6.i185, label %list_Delete.exit190, label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %list_Delete.exit184, %.lr.ph.i186
  %.07.i187 = phi ptr [ %.0.val.i188, %.lr.ph.i186 ], [ %.084.lcssa, %list_Delete.exit184 ] ; 3 uses
  %.0.val.i188 = load ptr, ptr %.07.i187, align 8 ; 2 uses
  %i.el = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = load i32, ptr %i.em, align 8
  %i.eo = sext i32 %i.en to i64
  %i.ep = load i64, ptr @memory_FREEDBYTES, align 8
  %i.eq = add i64 %i.ep, %i.eo
  store i64 %i.eq, ptr @memory_FREEDBYTES, align 8
  %i.er = load ptr, ptr %i.el, align 8
  store ptr %i.er, ptr %.07.i187, align 8
  %i.es = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i187, ptr %i.es, align 8
  %.not.i189 = icmp eq ptr %.0.val.i188, null
  br i1 %.not.i189, label %list_Delete.exit190, label %.lr.ph.i186, !llvm.loop !9

list_Delete.exit190:                              ; preds = %.lr.ph.i186, %list_Delete.exit184, %._crit_edge, %bb.i, %bb.h, %clause_LiteralGetIndex.exit
  %.5 = phi ptr [ %.2217, %clause_LiteralGetIndex.exit ], [ %.2217, %bb.i ], [ %.2217, %bb.h ], [ %.2217, %._crit_edge ], [ %.3, %list_Delete.exit184 ], [ %.3, %.lr.ph.i186 ] ; 2 uses
  %.092.val130 = load ptr, ptr %.092216, align 8  ; 2 uses
  %.not204 = icmp eq ptr %.092.val130, null
  br i1 %.not204, label %term_IsAtom.exit.thread, label %.lr.ph219, !llvm.loop !31

term_IsAtom.exit.thread:                          ; preds = %list_Delete.exit190, %bb.f, %.lr.ph225, %term_IsAtom.exit, %bb.e
  %.6 = phi ptr [ %.1223, %term_IsAtom.exit ], [ %.1223, %bb.e ], [ %.1223, %.lr.ph225 ], [ %.1223, %bb.f ], [ %.5, %list_Delete.exit190 ] ; 2 uses
  %.val.i191 = load ptr, ptr %.093222, align 8    ; 2 uses
  %i.et = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = load i32, ptr %i.eu, align 8
  %i.ew = sext i32 %i.ev to i64
  %i.ex = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ey = add i64 %i.ex, %i.ew
  store i64 %i.ey, ptr @memory_FREEDBYTES, align 8
  %i.ez = load ptr, ptr %i.et, align 8
  store ptr %i.ez, ptr %.093222, align 8
  %i.fa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.093222, ptr %i.fa, align 8
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
  %i.b = add nsw i32 %.val75, -1                  ; 2 uses
  %.not109 = icmp sgt i32 %.val75, 0
  br i1 %.not109, label %.lr.ph111, label %list_Delete.exit106

.lr.ph111:                                        ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 56         ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 68
  %i.e = getelementptr i8, ptr %0, i64 72
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph111, %.loopexit
  %.051110 = phi i32 [ 0, %.lr.ph111 ], [ %spec.select66, %.loopexit ] ; 3 uses
  %.val79 = load ptr, ptr %i.c, align 8
  %i.f = zext nneg i32 %.051110 to i64            ; 2 uses
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
  br i1 %.not120, label %.critedge.thread, label %.lr.ph.preheader

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
  %spec.select66 = add nuw nsw i32 %.051110, %i.ae ; 3 uses
  %.not = icmp slt i32 %spec.select66, %.val75
  %or.cond = and i1 %.not, %.3
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !35

.critedge:                                        ; preds = %.loopexit
  br i1 %.3, label %list_Delete.exit106, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.d, %.critedge
  %spec.select66134137 = phi i32 [ %spec.select66, %.critedge ], [ %.051110, %bb.d ] ; 2 uses
  %.val77 = load ptr, ptr %i.c, align 8
  %i.af = zext nneg i32 %spec.select66134137 to i64 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val77, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %.val1.i87 = load ptr, ptr %i.ai, align 8       ; 3 uses
  %.val5.val.i.i88 = load i32, ptr %.val1.i87, align 8
  %i.aj = load i32, ptr @fol_NOT, align 4
  %.not.i.i89 = icmp eq i32 %.val5.val.i.i88, %i.aj
  br i1 %.not.i.i89, label %bb.f, label %clause_GetLiteralAtom.exit93

bb.f:                                             ; preds = %.critedge.thread
  %i.ak = getelementptr i8, ptr %.val1.i87, i64 16
  %.val6.i.i91 = load ptr, ptr %i.ak, align 8
  %i.al = getelementptr i8, ptr %.val6.i.i91, i64 8
  %.val6.val.i.i92 = load ptr, ptr %i.al, align 8
  br label %clause_GetLiteralAtom.exit93

clause_GetLiteralAtom.exit93:                     ; preds = %.critedge.thread, %bb.f
  %.0.i.i90 = phi ptr [ %.val6.val.i.i92, %bb.f ], [ %.val1.i87, %.critedge.thread ]
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
  %.not59.not115 = icmp slt i32 %spec.select66134137, %i.b
  br i1 %.not59.not115, label %.lr.ph118.preheader, label %._crit_edge

.lr.ph118.preheader:                              ; preds = %clause_GetLiteralAtom.exit93
  %sext = sext i32 %i.b to i64
  %.pre126 = load i32, ptr @fol_NOT, align 4
  br label %.lr.ph118

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %bb.i
  %i.ar = phi i32 [ %.pre126, %.lr.ph118.preheader ], [ %i.bc, %bb.i ] ; 2 uses
  %indvars.iv123 = phi i64 [ %i.f, %.lr.ph118.preheader ], [ %indvars.iv.next124, %bb.i ]
  %.053116 = phi ptr [ %i.ap, %.lr.ph118.preheader ], [ %.154, %bb.i ] ; 2 uses
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 4 uses
  %.val76 = load ptr, ptr %i.c, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val76, i64 %indvars.iv.next124
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
  %i.az = inttoptr i64 %indvars.iv.next124 to ptr
  %i.ba = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.az, ptr %i.bb, align 8
  store ptr %.053116, ptr %i.ba, align 8
  %.pre = load i32, ptr @fol_NOT, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %clause_GetLiteralAtom.exit100
  %i.bc = phi i32 [ %.pre, %bb.h ], [ %i.ar, %clause_GetLiteralAtom.exit100 ]
  %.154 = phi ptr [ %i.ba, %bb.h ], [ %.053116, %clause_GetLiteralAtom.exit100 ] ; 2 uses
  %6 = icmp slt i64 %indvars.iv.next124, %sext
  br i1 %6, label %.lr.ph118, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.i, %clause_GetLiteralAtom.exit93
  %.053.lcssa = phi ptr [ %i.ap, %clause_GetLiteralAtom.exit93 ], [ %.154, %bb.i ] ; 5 uses
  %i.bd = tail call ptr @list_Copy(ptr noundef %.053.lcssa) #12 ; 3 uses
  %.not60 = icmp eq i32 %3, 0
  br i1 %.not60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.be = tail call fastcc i32 @inf_SubsortPrecheck(ptr noundef nonnull %0, ptr noundef %.053.lcssa, ptr noundef null, ptr noundef %1, ptr noundef %2)
  %.not61 = icmp eq i32 %i.be, 0
  br i1 %.not61, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.bf = tail call fastcc ptr @inf_ConstraintHyperResolvents(ptr noundef nonnull %0, ptr noundef %.053.lcssa, ptr noundef null, ptr noundef %i.bd, ptr noundef null, ptr noundef %1, ptr noundef %4, ptr noundef %5)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.055 = phi ptr [ %i.bf, %bb.k ], [ null, %bb.j ] ; 2 uses
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
  %.not6.i101 = icmp eq ptr %.053.lcssa, null
  br i1 %.not6.i101, label %list_Delete.exit106, label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %list_Delete.exit, %.lr.ph.i102
  %.07.i103 = phi ptr [ %.0.val.i104, %.lr.ph.i102 ], [ %.053.lcssa, %list_Delete.exit ] ; 3 uses
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
  %.056 = phi ptr [ null, %.critedge ], [ %.055, %list_Delete.exit ], [ null, %bb.a ], [ %.055, %.lr.ph.i102 ]
  ret ptr %.056
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
  %.051107 = add nsw i32 %.val67, -1
  %i.c = zext nneg i32 %.val67 to i64             ; 2 uses
  %i.d = add nsw i64 %i.c, -1
  %i.e = zext nneg i32 %.051107 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph116, %list_Delete.exit105
  %indvars.iv119 = phi i64 [ 0, %.lr.ph116 ], [ %indvars.iv.next120, %list_Delete.exit105 ] ; 6 uses
  %.055113 = phi ptr [ null, %.lr.ph116 ], [ %.2, %list_Delete.exit105 ] ; 5 uses
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
  %.0109 = phi ptr [ null, %.lr.ph ], [ %.1, %sort_Intersect.exit ] ; 4 uses
  %.049108 = phi ptr [ null, %.lr.ph ], [ %.150, %sort_Intersect.exit ] ; 2 uses
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
  store ptr %.049108, ptr %i.ai, align 8
  %.val62 = load i32, ptr %.0.i.i82, align 8
  %i.ak = tail call ptr @sort_TheorySortOfSymbol(ptr noundef %2, i32 noundef %.val62) #12 ; 4 uses
  %.not.i.i86 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i86, label %sort_Intersect.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not16.i.i = icmp eq ptr %.0109, null
  br i1 %.not16.i.i, label %sort_Intersect.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.j, %.preheader.i.i
  %.012.i.i = phi ptr [ %.012.val15.i.i, %.preheader.i.i ], [ %i.ak, %bb.j ] ; 2 uses
  %.012.val15.i.i = load ptr, ptr %.012.i.i, align 8 ; 2 uses
  %.not17.i.i = icmp eq ptr %.012.val15.i.i, null
  br i1 %.not17.i.i, label %bb.k, label %.preheader.i.i, !llvm.loop !8

bb.k:                                             ; preds = %.preheader.i.i
  store ptr %.0109, ptr %.012.i.i, align 8
  br label %sort_Intersect.exit

end_hunk_1
