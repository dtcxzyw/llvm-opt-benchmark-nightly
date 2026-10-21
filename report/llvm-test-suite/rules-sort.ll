Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/rules-sort?download=true
inline.NumInlined: 797
inline.NumDeleted: 120
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@inf_BackwardEmptySort:bb.a
  %i.cy = getelementptr inbounds [8 x i8], ptr %.val131, i64 %indvars.iv239
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr i8, ptr %i.cz, i64 24
  %.val1.i161 = load ptr, ptr %i.da, align 8      ; 3 uses
  %.val5.val.i.i162 = load i32, ptr %.val1.i161, align 8
  %i.db = load i32, ptr @fol_NOT, align 4
  %.not.i.i163 = icmp eq i32 %.val5.val.i.i162, %i.db
  br i1 %.not.i.i163, label %bb.t, label %clause_GetLiteralAtom.exit167

bb.t:                                             ; preds = %bb.s
  %i.dc = getelementptr i8, ptr %.val1.i161, i64 16
  %.val6.i.i165 = load ptr, ptr %i.dc, align 8
  %i.dd = getelementptr i8, ptr %.val6.i.i165, i64 8
  %.val6.val.i.i166 = load ptr, ptr %i.dd, align 8
  br label %clause_GetLiteralAtom.exit167

clause_GetLiteralAtom.exit167:                    ; preds = %bb.s, %bb.t
  %.0.i.i164 = phi ptr [ %.val6.val.i.i166, %bb.t ], [ %.val1.i161, %bb.s ]
  call void @cont_Check() #12
  %i.de = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.df = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %i.dg = call i32 @unify_UnifyNoOC(ptr noundef %i.de, ptr noundef %.0.i141, ptr noundef %i.df, ptr noundef %.0.i.i164) #12 ; 0 uses
  %i.dh = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.di = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  call void @subst_ExtractUnifier(ptr noundef %i.dh, ptr noundef nonnull %i.a, ptr noundef %i.di, ptr noundef nonnull %i.b) #12
  %i.dj = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not1.i = icmp eq ptr %i.dj, null
  br i1 %.not1.i, label %cont_Reset.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %clause_GetLiteralAtom.exit167
  %cont_BINDINGS.promoted.i = load i32, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.dk = phi ptr [ %i.dr, %.lr.ph.i ], [ %i.dj, %.lr.ph.preheader.i ] ; 3 uses
  %i.dl = phi i32 [ %i.dq, %.lr.ph.i ], [ %cont_BINDINGS.promoted.i, %.lr.ph.preheader.i ]
  store ptr %i.dk, ptr @cont_CURRENTBINDING, align 8
  %i.dm = getelementptr i8, ptr %i.dk, i64 24
  %.val.i.i.i = load ptr, ptr %i.dm, align 8
  store ptr %.val.i.i.i, ptr @cont_LASTBINDING, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dn, i8 0, i64 20, i1 false)
  %i.do = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  store ptr null, ptr %i.dp, align 8
  %i.dq = add nsw i32 %i.dl, -1                   ; 2 uses
  store i32 %i.dq, ptr @cont_BINDINGS, align 4
  %i.dr = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not.i168 = icmp eq ptr %i.dr, null
  br i1 %.not.i168, label %cont_Reset.exit, label %.lr.ph.i, !llvm.loop !1

cont_Reset.exit:                                  ; preds = %.lr.ph.i, %clause_GetLiteralAtom.exit167
  store i32 0, ptr @cont_BINDINGS, align 4
  store i32 1, ptr @cont_STACKPOINTER, align 4
  store i32 2000, ptr @cont_INDEXVARSCANNER, align 4
  %i.ds = load ptr, ptr %i.b, align 8
  call void @subst_Delete(ptr noundef %i.ds) #12
  %i.dt = load ptr, ptr %i.a, align 8
  %i.du = call fastcc ptr @inf_ConstraintHyperResolvents(ptr noundef nonnull %.val125, ptr noundef %.086.lcssa, ptr noundef %i.dt, ptr noundef %.084.lcssa, ptr noundef nonnull %i.cw, ptr noundef %1, ptr noundef %4, ptr noundef %5) ; 4 uses
  %.not.i169 = icmp eq ptr %i.du, null
  br i1 %.not.i169, label %list_Nconc.exit, label %bb.u

bb.u:                                             ; preds = %cont_Reset.exit
  %.not16.i = icmp eq ptr %.2217, null
  br i1 %.not16.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.u, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %i.du, %bb.u ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.v, label %.preheader.i, !llvm.loop !2

bb.v:                                             ; preds = %.preheader.i
  store ptr %.2217, ptr %.012.i, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %cont_Reset.exit, %bb.u, %bb.v
  %.0.i170 = phi ptr [ %i.du, %bb.v ], [ %.2217, %cont_Reset.exit ], [ %i.du, %bb.u ]
  br label %.lr.ph.i171

.lr.ph.i171:                                      ; preds = %list_Nconc.exit, %.lr.ph.i171
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i171 ], [ %i.cw, %list_Nconc.exit ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = sext i32 %i.dx to i64
  %i.dz = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ea = add i64 %i.dz, %i.dy
  store i64 %i.ea, ptr @memory_FREEDBYTES, align 8
  %i.eb = load ptr, ptr %i.dv, align 8
  store ptr %i.eb, ptr %.07.i, align 8
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.ec, align 8
  %.not.i172 = icmp eq ptr %.0.val.i, null
  br i1 %.not.i172, label %list_Delete.exit, label %.lr.ph.i171, !llvm.loop !3

list_Delete.exit:                                 ; preds = %.lr.ph.i171
  %i.ed = load ptr, ptr %i.a, align 8
  call void @subst_Delete(ptr noundef %i.ed) #12
  call void @clause_Delete(ptr noundef nonnull %i.cu) #12
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
  %i.ee = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.eg = load i32, ptr %i.ef, align 8
  %i.eh = sext i32 %i.eg to i64
  %i.ei = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ej = add i64 %i.ei, %i.eh
  store i64 %i.ej, ptr @memory_FREEDBYTES, align 8
  %i.ek = load ptr, ptr %i.ee, align 8
  store ptr %i.ek, ptr %.07.i181, align 8
  %i.el = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i181, ptr %i.el, align 8
  %.not.i183 = icmp eq ptr %.0.val.i182, null
  br i1 %.not.i183, label %list_Delete.exit184, label %.lr.ph.i180, !llvm.loop !3

list_Delete.exit184:                              ; preds = %.lr.ph.i180, %bb.w
  %.not6.i185 = icmp eq ptr %.084.lcssa, null
  br i1 %.not6.i185, label %list_Delete.exit190, label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %list_Delete.exit184, %.lr.ph.i186
  %.07.i187 = phi ptr [ %.0.val.i188, %.lr.ph.i186 ], [ %.084.lcssa, %list_Delete.exit184 ] ; 3 uses
  %.0.val.i188 = load ptr, ptr %.07.i187, align 8 ; 2 uses
  %i.em = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.eo = load i32, ptr %i.en, align 8
  %i.ep = sext i32 %i.eo to i64
  %i.eq = load i64, ptr @memory_FREEDBYTES, align 8
  %i.er = add i64 %i.eq, %i.ep
  store i64 %i.er, ptr @memory_FREEDBYTES, align 8
  %i.es = load ptr, ptr %i.em, align 8
  store ptr %i.es, ptr %.07.i187, align 8
  %i.et = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i187, ptr %i.et, align 8
  %.not.i189 = icmp eq ptr %.0.val.i188, null
  br i1 %.not.i189, label %list_Delete.exit190, label %.lr.ph.i186, !llvm.loop !3

list_Delete.exit190:                              ; preds = %.lr.ph.i186, %list_Delete.exit184, %._crit_edge, %bb.i, %bb.h, %clause_LiteralGetIndex.exit
  %.5 = phi ptr [ %.2217, %clause_LiteralGetIndex.exit ], [ %.2217, %bb.i ], [ %.2217, %bb.h ], [ %.2217, %._crit_edge ], [ %.3, %list_Delete.exit184 ], [ %.3, %.lr.ph.i186 ] ; 2 uses
  %.092.val130 = load ptr, ptr %.092216, align 8  ; 2 uses
  %.not204 = icmp eq ptr %.092.val130, null
  br i1 %.not204, label %term_IsAtom.exit.thread, label %.lr.ph219, !llvm.loop !36

term_IsAtom.exit.thread:                          ; preds = %list_Delete.exit190, %bb.f, %.lr.ph225, %term_IsAtom.exit, %bb.e
  %.6 = phi ptr [ %.1223, %term_IsAtom.exit ], [ %.1223, %bb.e ], [ %.1223, %.lr.ph225 ], [ %.1223, %bb.f ], [ %.5, %list_Delete.exit190 ] ; 2 uses
  %.val.i191 = load ptr, ptr %.093222, align 8    ; 2 uses
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ew = load i32, ptr %i.ev, align 8
  %i.ex = sext i32 %i.ew to i64
  %i.ey = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ez = add i64 %i.ey, %i.ex
  store i64 %i.ez, ptr @memory_FREEDBYTES, align 8
  %i.fa = load ptr, ptr %i.eu, align 8
  store ptr %i.fa, ptr %.093222, align 8
  %i.fb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.093222, ptr %i.fb, align 8
  %.not202 = icmp eq ptr %.val.i191, null
  br i1 %.not202, label %clause_LiteralIsSort.exit.thread, label %.lr.ph225, !llvm.loop !37

clause_LiteralIsSort.exit.thread:                 ; preds = %term_IsAtom.exit.thread, %bb.d, %clause_LiteralPredicate.exit.i, %symbol_IsPredicate.exit.i, %clause_LiteralAtom.exit.thread, %clause_LiteralIsSort.exit, %clause_LiteralAtom.exit
  %.7 = phi ptr [ %.0229, %clause_LiteralAtom.exit ], [ %.0229, %clause_LiteralIsSort.exit ], [ %.0229, %clause_LiteralPredicate.exit.i ], [ %.0229, %clause_LiteralAtom.exit.thread ], [ %.0229, %symbol_IsPredicate.exit.i ], [ %.0229, %bb.d ], [ %.6, %term_IsAtom.exit.thread ] ; 2 uses
  %indvars.iv.next240 = add nsw i64 %indvars.iv239, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next240 to i32
  %exitcond242.not = icmp eq i32 %i.p, %lftr.wideiv
  br i1 %exitcond242.not, label %._crit_edge232, label %bb.b, !llvm.loop !38

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
  br i1 %i.ac, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !39

.loopexit.loopexit:                               ; preds = %clause_GetLiteralAtom.exit86
  %i.ad = xor i1 %.not65, true
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %clause_GetLiteralAtom.exit
  %.3 = phi i1 [ true, %clause_GetLiteralAtom.exit ], [ %i.ad, %.loopexit.loopexit ] ; 3 uses
  %i.ae = zext i1 %.3 to i32
  %spec.select66 = add nuw nsw i32 %.051110, %i.ae ; 3 uses
  %.not = icmp slt i32 %spec.select66, %.val75
  %or.cond = and i1 %.not, %.3
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !40

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
  %wide.trip.count = zext i32 %i.b to i64
  %.pre126.a = load i32, ptr @fol_NOT, align 4
  br label %.lr.ph118

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %bb.i
  %i.ar = phi i32 [ %.pre126.a, %.lr.ph118.preheader ], [ %i.bc, %bb.i ] ; 2 uses
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
  %.pre.a = load i32, ptr @fol_NOT, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %clause_GetLiteralAtom.exit100
  %i.bc = phi i32 [ %.pre.a, %bb.h ], [ %i.ar, %clause_GetLiteralAtom.exit100 ]
  %.154 = phi ptr [ %i.ba, %bb.h ], [ %.053116, %clause_GetLiteralAtom.exit100 ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph118, !llvm.loop !41

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
  br i1 %.not.i, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !3

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
  br i1 %.not.i105, label %list_Delete.exit106, label %.lr.ph.i102, !llvm.loop !3

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

end_hunk_0
