inline.NumInlined: 797
inline.NumDeleted: 120
begin_hunk_0_@inf_BackwardWeakening:bb.a
  %i.cj = tail call i32 @unify_UnifyNoOC(ptr noundef %i.ch, ptr noundef nonnull %.0.i98, ptr noundef %i.ci, ptr noundef nonnull %.0.i135137) #12 ; 0 uses
  %i.ck = tail call fastcc ptr @inf_InternWeakening(ptr noundef nonnull %.val82, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.q, ptr noundef %i.cb, ptr noundef %3, ptr noundef %4) ; 4 uses
  %.not.i115 = icmp eq ptr %i.ck, null
  br i1 %.not.i115, label %list_Nconc.exit, label %bb.t

bb.t:                                             ; preds = %sort_Intersect.exit114
  %.not16.i = icmp eq ptr %.1150, null
  br i1 %.not16.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.t, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %i.ck, %bb.t ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.u, label %.preheader.i, !llvm.loop !8

bb.u:                                             ; preds = %.preheader.i
  store ptr %.1150, ptr %.012.i, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %sort_Intersect.exit114, %bb.t, %bb.u
  %.0.i116 = phi ptr [ %i.ck, %bb.u ], [ %.1150, %sort_Intersect.exit114 ], [ %i.ck, %bb.t ] ; 2 uses
  %.pr.i = load i32, ptr @cont_BINDINGS, align 4  ; 5 uses
  %i.cl = icmp sgt i32 %.pr.i, 0
  br i1 %i.cl, label %.lr.ph.i118.preheader, label %._crit_edge.i

.lr.ph.i118.preheader:                            ; preds = %list_Nconc.exit
  %xtraiter = and i32 %.pr.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i118.prol.loopexit, label %.lr.ph.i118.prol

.lr.ph.i118.prol:                                 ; preds = %.lr.ph.i118.preheader
  %i.cm = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.cm, ptr @cont_CURRENTBINDING, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 24
  %.val.i.i.i.prol = load ptr, ptr %i.cn, align 8
  store ptr %.val.i.i.i.prol, ptr @cont_LASTBINDING, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.co, i8 0, i64 20, i1 false)
  %i.cp = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store ptr null, ptr %i.cq, align 8
  %i.cr = add nsw i32 %.pr.i, -1                  ; 2 uses
  store i32 %i.cr, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i118.prol.loopexit

.lr.ph.i118.prol.loopexit:                        ; preds = %.lr.ph.i118.prol, %.lr.ph.i118.preheader
  %.unr = phi i32 [ %.pr.i, %.lr.ph.i118.preheader ], [ %i.cr, %.lr.ph.i118.prol ]
  %i.cs = icmp eq i32 %.pr.i, 1
  br i1 %i.cs, label %._crit_edge.i, label %.lr.ph.i118

.lr.ph.i118:                                      ; preds = %.lr.ph.i118.prol.loopexit, %.lr.ph.i118
  %i.ct = phi i32 [ %i.df, %.lr.ph.i118 ], [ %.unr, %.lr.ph.i118.prol.loopexit ] ; 3 uses
  %i.cu = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.cu, ptr @cont_CURRENTBINDING, align 8
  %i.cv = getelementptr i8, ptr %i.cu, i64 24
  %.val.i.i.i = load ptr, ptr %i.cv, align 8
  store ptr %.val.i.i.i, ptr @cont_LASTBINDING, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cw, i8 0, i64 20, i1 false)
  %i.cx = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store ptr null, ptr %i.cy, align 8
  %i.cz = add nsw i32 %i.ct, -1
  store i32 %i.cz, ptr @cont_BINDINGS, align 4
  %i.da = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.da, ptr @cont_CURRENTBINDING, align 8
  %i.db = getelementptr i8, ptr %i.da, i64 24
  %.val.i.i.i.1 = load ptr, ptr %i.db, align 8
  store ptr %.val.i.i.i.1, ptr @cont_LASTBINDING, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dc, i8 0, i64 20, i1 false)
  %i.dd = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store ptr null, ptr %i.de, align 8
  %i.df = add nsw i32 %i.ct, -2                   ; 2 uses
  store i32 %i.df, ptr @cont_BINDINGS, align 4
  %i.dg = icmp sgt i32 %i.ct, 2
  br i1 %i.dg, label %.lr.ph.i118, label %._crit_edge.i, !llvm.loop !47

._crit_edge.i:                                    ; preds = %.lr.ph.i118.prol.loopexit, %.lr.ph.i118, %list_Nconc.exit
  %i.dh = load i32, ptr @cont_STACKPOINTER, align 4 ; 2 uses
  %.not.i117 = icmp eq i32 %i.dh, 0
  br i1 %.not.i117, label %.lr.ph.i119.preheader, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  %i.di = add nsw i32 %i.dh, -1                   ; 2 uses
  store i32 %i.di, ptr @cont_STACKPOINTER, align 4
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr @cont_STACK, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4
  store i32 %i.dl, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i119.preheader

.lr.ph.i119.preheader:                            ; preds = %._crit_edge.i, %bb.v
  br label %.lr.ph.i119

.lr.ph.i119:                                      ; preds = %.lr.ph.i119.preheader, %.lr.ph.i119
  %.07.i = phi ptr [ %.0.val.i120, %.lr.ph.i119 ], [ %i.bx, %.lr.ph.i119.preheader ] ; 3 uses
  %.0.val.i120 = load ptr, ptr %.07.i, align 8    ; 2 uses
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = sext i32 %i.do to i64
  %i.dq = load i64, ptr @memory_FREEDBYTES, align 8
  %i.dr = add i64 %i.dq, %i.dp
  store i64 %i.dr, ptr @memory_FREEDBYTES, align 8
  %i.ds = load ptr, ptr %i.dm, align 8
  store ptr %i.ds, ptr %.07.i, align 8
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.dt, align 8
  %.not.i121 = icmp eq ptr %.0.val.i120, null
  br i1 %.not.i121, label %list_Delete.exit, label %.lr.ph.i119, !llvm.loop !9

list_Delete.exit:                                 ; preds = %.lr.ph.i119
  %.val.i123 = load ptr, ptr %.val.i123147149, align 8 ; 2 uses
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load i32, ptr %i.dv, align 8
  %i.dx = sext i32 %i.dw to i64
  %i.dy = load i64, ptr @memory_FREEDBYTES, align 8
  %i.dz = add i64 %i.dy, %i.dx
  store i64 %i.dz, ptr @memory_FREEDBYTES, align 8
  %i.ea = load ptr, ptr %i.du, align 8
  store ptr %i.ea, ptr %.val.i123147149, align 8
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.val.i123147149, ptr %i.eb, align 8
  %.not141 = icmp eq ptr %.val.i123, null
  br i1 %.not141, label %.lr.ph.i125.preheader, label %.lr.ph151, !llvm.loop !69

.lr.ph.i125.preheader:                            ; preds = %list_Delete.exit, %inf_GetSortFromLits.exit
  %.1.lcssa = phi ptr [ %.0157, %inf_GetSortFromLits.exit ], [ %.0.i116, %list_Delete.exit ]
  tail call void @sort_Delete(ptr noundef %.0.i.i.i) #12
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.preheader, %.lr.ph.i125
  %.07.i126 = phi ptr [ %.0.val.i127, %.lr.ph.i125 ], [ %i.aj, %.lr.ph.i125.preheader ] ; 3 uses
  %.0.val.i127 = load ptr, ptr %.07.i126, align 8 ; 2 uses
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = sext i32 %i.ee to i64
  %i.eg = load i64, ptr @memory_FREEDBYTES, align 8
  %i.eh = add i64 %i.eg, %i.ef
  store i64 %i.eh, ptr @memory_FREEDBYTES, align 8
  %i.ei = load ptr, ptr %i.ec, align 8
  store ptr %i.ei, ptr %.07.i126, align 8
  %i.ej = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i126, ptr %i.ej, align 8
  %.not.i128 = icmp eq ptr %.0.val.i127, null
  br i1 %.not.i128, label %list_Delete.exit130, label %.lr.ph.i125, !llvm.loop !9

list_Delete.exit130:                              ; preds = %.lr.ph.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %clause_LiteralIsSort.exit.thread

clause_LiteralIsSort.exit.thread:                 ; preds = %clause_LiteralPredicate.exit.i, %symbol_IsPredicate.exit.i, %clause_LiteralAtom.exit.thread, %list_Delete.exit130, %bb.e, %clause_LiteralIsSort.exit, %clause_LiteralAtom.exit
  %.2 = phi ptr [ %.1.lcssa, %list_Delete.exit130 ], [ %.0157, %bb.e ], [ %.0157, %clause_LiteralIsSort.exit ], [ %.0157, %clause_LiteralAtom.exit ], [ %.0157, %clause_LiteralAtom.exit.thread ], [ %.0157, %symbol_IsPredicate.exit.i ], [ %.0157, %clause_LiteralPredicate.exit.i ] ; 2 uses
  %indvars.iv.next164 = add nsw i64 %indvars.iv163, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next164 to i32
  %exitcond.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge160, label %bb.b, !llvm.loop !70

._crit_edge160:                                   ; preds = %clause_LiteralIsSort.exit.thread, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %.2, %clause_LiteralIsSort.exit.thread ]
  ret ptr %.0.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc void @inf_GetBackwardPartnerLits(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef range(i32 0, 2) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.b = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val60 = load ptr, ptr %i.c, align 8           ; 3 uses
  %.val5.val.i = load i32, ptr %.val60, align 8
  %i.d = load i32, ptr @fol_NOT, align 4
  %.not.i = icmp eq i32 %.val5.val.i, %i.d
  br i1 %.not.i, label %bb.b, label %clause_LiteralAtom.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val60, i64 16
  %.val6.i = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %.val6.i, i64 8
  %.val6.val.i = load ptr, ptr %i.f, align 8
  br label %clause_LiteralAtom.exit

clause_LiteralAtom.exit:                          ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %.val6.val.i, %bb.b ], [ %.val60, %bb.a ]
  %i.g = getelementptr i8, ptr %.0.i, i64 16
  %.val = load ptr, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.h, align 8
  %i.i = tail call ptr @st_GetUnifier(ptr noundef %i.a, ptr noundef %1, ptr noundef %i.b, ptr noundef %.val.val) #12 ; 2 uses
  %.not104 = icmp eq ptr %i.i, null
  br i1 %.not104, label %._crit_edge, label %.lr.ph106

.lr.ph106:                                        ; preds = %clause_LiteralAtom.exit
  %i.j = load i32, ptr @symbol_TYPEMASK, align 4  ; 2 uses
  %i.k = load i32, ptr @symbol_TYPESTATBITS, align 4
  %7 = icmp ne i32 %4, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph106, %.loopexit
  %.0105 = phi ptr [ %i.i, %.lr.ph106 ], [ %.val.i88, %.loopexit ] ; 4 uses
  %i.l = getelementptr i8, ptr %.0105, i64 8      ; 3 uses
  %.0.val59 = load ptr, ptr %i.l, align 8         ; 2 uses
  %.val64 = load i32, ptr %.0.val59, align 8      ; 2 uses
  %.not.i.i = icmp sgt i32 %.val64, -1
  br i1 %.not.i.i, label %term_IsAtom.exit.thread, label %term_IsAtom.exit

term_IsAtom.exit:                                 ; preds = %bb.c
  %i.m = sub nsw i32 0, %.val64
  %i.n = and i32 %i.j, %i.m
  %.not91 = icmp eq i32 %i.n, 2
  br i1 %.not91, label %.loopexit, label %term_IsAtom.exit.thread

term_IsAtom.exit.thread:                          ; preds = %bb.c, %term_IsAtom.exit
  %i.o = getelementptr i8, ptr %.0.val59, i64 8
  %.042100 = load ptr, ptr %i.o, align 8          ; 2 uses
  %.not92101 = icmp eq ptr %.042100, null
  br i1 %.not92101, label %.loopexit, label %.lr.ph103

.lr.ph103:                                        ; preds = %term_IsAtom.exit.thread, %term_IsDeclaration.exit.thread
  %.042102 = phi ptr [ %.042, %term_IsDeclaration.exit.thread ], [ %.042100, %term_IsAtom.exit.thread ] ; 2 uses
  %i.p = getelementptr i8, ptr %.042102, i64 8
  %.042.val = load ptr, ptr %i.p, align 8         ; 2 uses
  %.val72 = load i32, ptr %.042.val, align 8      ; 2 uses
  %.not.i.i.i = icmp sgt i32 %.val72, -1
  br i1 %.not.i.i.i, label %term_IsDeclaration.exit.thread, label %term_IsAtom.exit.i

term_IsAtom.exit.i:                               ; preds = %.lr.ph103
  %i.q = sub nsw i32 0, %.val72                   ; 2 uses
  %i.r = and i32 %i.j, %i.q
  %.not.i77 = icmp eq i32 %i.r, 2
  br i1 %.not.i77, label %term_IsDeclaration.exit, label %term_IsDeclaration.exit.thread

term_IsDeclaration.exit:                          ; preds = %term_IsAtom.exit.i
  %i.s = lshr i32 %i.q, %i.k
  %i.t = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i32, ptr %i.x, align 8
  %.not93 = icmp eq i32 %i.y, 1
  br i1 %.not93, label %bb.d, label %term_IsDeclaration.exit.thread

bb.d:                                             ; preds = %term_IsDeclaration.exit
  %i.z = tail call ptr @sharing_NAtomDataList(ptr noundef nonnull %.042.val) #12 ; 2 uses
  %.not9498 = icmp eq ptr %i.z, null
  br i1 %.not9498, label %term_IsDeclaration.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.r
  %.04399 = phi ptr [ %.043.val76, %bb.r ], [ %i.z, %bb.d ] ; 2 uses
  %i.aa = getelementptr i8, ptr %.04399, i64 8
  %.043.val = load ptr, ptr %i.aa, align 8        ; 5 uses
  %i.ab = getelementptr i8, ptr %.043.val, i64 16
  %.val68 = load ptr, ptr %i.ab, align 8          ; 6 uses
  %i.ac = getelementptr i8, ptr %.val68, i64 48
  %.val70 = load i32, ptr %i.ac, align 8
  %i.ad = and i32 %.val70, 1
  %.not48 = icmp eq i32 %i.ad, 0
  br i1 %.not48, label %bb.r, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ae = getelementptr i8, ptr %.043.val, i64 24 ; 2 uses
  %.val73 = load ptr, ptr %i.ae, align 8
  %.val73.val = load i32, ptr %.val73, align 8
  %i.af = load i32, ptr @fol_NOT, align 4
  %.not95 = icmp eq i32 %.val73.val, %i.af
  br i1 %.not95, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val61 = load i32, ptr %.043.val, align 8
  %i.ag = and i32 %.val61, 2
  %.not51 = icmp eq i32 %i.ag, 0
  br i1 %.not51, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0.val57 = load ptr, ptr %i.l, align 8
  %.val67 = load i32, ptr %.0.val57, align 8
  %i.ah = icmp slt i32 %.val67, 1
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr i8, ptr %.val68, i64 64
  %.val74 = load i32, ptr %i.ai, align 8
  %.not96 = icmp eq i32 %.val74, 0
  br i1 %.not96, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = tail call i32 @clause_HasSolvedConstraint(ptr noundef nonnull %.val68) #12
  %.not54 = icmp eq i32 %i.aj, 0
  br i1 %.not54, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val63 = load ptr, ptr %i.c, align 8           ; 2 uses
  %.val5.val.i.i = load i32, ptr %.val63, align 8 ; 2 uses
  %i.ak = load i32, ptr @fol_NOT, align 4         ; 2 uses
  %.not.i.i78 = icmp eq i32 %.val5.val.i.i, %i.ak
  br i1 %.not.i.i78, label %bb.k, label %clause_LiteralPredicate.exit

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr i8, ptr %.val63, i64 16
  %.val6.i.i = load ptr, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.am, align 8
  %.val.pre.i = load i32, ptr %.val6.val.i.i, align 8
  br label %clause_LiteralPredicate.exit

clause_LiteralPredicate.exit:                     ; preds = %bb.j, %bb.k
  %.val.i = phi i32 [ %.val.pre.i, %bb.k ], [ %.val5.val.i.i, %bb.j ]
  %.val62 = load ptr, ptr %i.ae, align 8          ; 2 uses
  %.val5.val.i.i79 = load i32, ptr %.val62, align 8 ; 2 uses
  %.not.i.i80 = icmp eq i32 %.val5.val.i.i79, %i.ak
  br i1 %.not.i.i80, label %bb.l, label %clause_LiteralPredicate.exit85

bb.l:                                             ; preds = %clause_LiteralPredicate.exit
  %i.an = getelementptr i8, ptr %.val62, i64 16
  %.val6.i.i82 = load ptr, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %.val6.i.i82, i64 8
  %.val6.val.i.i83 = load ptr, ptr %i.ao, align 8
  %.val.pre.i84 = load i32, ptr %.val6.val.i.i83, align 8
  br label %clause_LiteralPredicate.exit85

clause_LiteralPredicate.exit85:                   ; preds = %clause_LiteralPredicate.exit, %bb.l
  %.val.i81 = phi i32 [ %.val.pre.i84, %bb.l ], [ %.val5.val.i.i79, %clause_LiteralPredicate.exit ]
  %.not97 = icmp eq i32 %.val.i, %.val.i81
  br i1 %.not97, label %bb.r, label %.sink.split

bb.m:                                             ; preds = %bb.e
  %i.ap = getelementptr i8, ptr %.val68, i64 56
  %.val.i86 = load ptr, ptr %i.ap, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.val.i86, i64 %indvars.iv.i
  %i.ar = load ptr, ptr %i.aq, align 8
  %.not.i87 = icmp eq ptr %i.ar, %.043.val
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i87, label %clause_LiteralGetIndex.exit, label %bb.n, !llvm.loop !4

clause_LiteralGetIndex.exit:                      ; preds = %bb.n
  %i.as = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.at = getelementptr i8, ptr %.val68, i64 64
  %.val69 = load i32, ptr %i.at, align 8
  %i.au = icmp sgt i32 %.val69, %i.as
  br i1 %i.au, label %bb.o, label %bb.r

bb.o:                                             ; preds = %clause_LiteralGetIndex.exit
  %.0.val56 = load ptr, ptr %i.l, align 8
  %.val66 = load i32, ptr %.0.val56, align 8
  %i.av = icmp sgt i32 %.val66, 0                 ; 2 uses
  %i.aw = zext i1 %i.av to i32
  %i.ax = or i32 %4, %i.aw
  %or.cond.not = icmp eq i32 %i.ax, 0
  br i1 %or.cond.not, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %or.cond3 = and i1 %7, %i.av
  br i1 %or.cond3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = tail call i32 @clause_HasOnlyVarsInConstraint(ptr noundef nonnull %.val68, ptr noundef %5, ptr noundef %6) #12
  %.not50 = icmp eq i32 %i.ay, 0
  br i1 %.not50, label %bb.r, label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.o, %clause_LiteralPredicate.exit85
  %.sink = phi ptr [ %3, %clause_LiteralPredicate.exit85 ], [ %2, %bb.o ], [ %2, %bb.q ] ; 2 uses
  %i.az = load ptr, ptr %.sink, align 8
  %i.ba = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %.043.val, ptr %i.bb, align 8
  store ptr %i.az, ptr %i.ba, align 8
  store ptr %i.ba, ptr %.sink, align 8
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %.lr.ph, %clause_LiteralGetIndex.exit, %bb.p, %bb.q, %bb.f, %bb.h, %bb.i, %clause_LiteralPredicate.exit85
  %.043.val76 = load ptr, ptr %.04399, align 8    ; 2 uses
  %.not94 = icmp eq ptr %.043.val76, null
  br i1 %.not94, label %term_IsDeclaration.exit.thread, label %.lr.ph, !llvm.loop !71

term_IsDeclaration.exit.thread:                   ; preds = %bb.r, %bb.d, %.lr.ph103, %term_IsAtom.exit.i, %term_IsDeclaration.exit
  %.042 = load ptr, ptr %.042102, align 8         ; 2 uses
  %.not92 = icmp eq ptr %.042, null
  br i1 %.not92, label %.loopexit, label %.lr.ph103, !llvm.loop !72

.loopexit:                                        ; preds = %term_IsDeclaration.exit.thread, %term_IsAtom.exit.thread, %term_IsAtom.exit
  %.val.i88 = load ptr, ptr %.0105, align 8       ; 2 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = sext i32 %i.be to i64
  %i.bg = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bh = add i64 %i.bg, %i.bf
  store i64 %i.bh, ptr @memory_FREEDBYTES, align 8
  %i.bi = load ptr, ptr %i.bc, align 8
  store ptr %i.bi, ptr %.0105, align 8
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.0105, ptr %i.bj, align 8
  %.not = icmp eq ptr %.val.i88, null
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !73

._crit_edge:                                      ; preds = %.loopexit, %clause_LiteralAtom.exit
  %i.bk = load ptr, ptr %2, align 8
  %i.bl = tail call ptr @list_DeleteDuplicates(ptr noundef %i.bk, ptr noundef nonnull @inf_LiteralsHaveSameSubtermAndAreFromSameClause) #12
  store ptr %i.bl, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @inf_ForwardEmptySortPlusPlus(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val86 = load i32, ptr %i.a, align 8           ; 3 uses
  %.not149 = icmp sgt i32 %.val86, 0
  br i1 %.not149, label %.lr.ph154, label %.critedge

.lr.ph154:                                        ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 68
  %i.d = getelementptr i8, ptr %0, i64 72
  %.168141 = add nsw i32 %.val86, -1
  %i.e = zext nneg i32 %.val86 to i64             ; 2 uses
  %i.f = add nsw i64 %i.e, -1
  %i.g = zext nneg i32 %.168141 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph154, %list_Delete.exit133
  %indvars.iv162 = phi i64 [ 0, %.lr.ph154 ], [ %indvars.iv.next163, %list_Delete.exit133 ] ; 5 uses
  %.val90 = load ptr, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val90, i64 %indvars.iv162
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %.val1.i = load ptr, ptr %i.j, align 8          ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val1.i, align 8
  %i.k = load i32, ptr @fol_NOT, align 4
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.k
  %i.l = getelementptr i8, ptr %.val1.i, i64 16
  %.val6.i.i = load ptr, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.m, align 8    ; 3 uses
  br i1 %.not.i.i, label %clause_GetLiteralAtom.exit, label %clause_GetLiteralAtom.exit.thread

clause_GetLiteralAtom.exit:                       ; preds = %bb.b
  %i.n = getelementptr i8, ptr %.val6.val.i.i, i64 16
  %.val81 = load ptr, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %.val81, i64 8
  %.val81.val = load ptr, ptr %i.o, align 8       ; 2 uses
  %.val84 = load i32, ptr %.val81.val, align 8
  %i.p = icmp slt i32 %.val84, 1
  br i1 %i.p, label %list_Delete.exit133, label %clause_LiteralAtom.exit

clause_GetLiteralAtom.exit.thread:                ; preds = %bb.b
  %.val84137 = load i32, ptr %.val6.val.i.i, align 8
  %i.q = icmp slt i32 %.val84137, 1
  br i1 %i.q, label %list_Delete.exit133, label %clause_LiteralAtom.exit

clause_LiteralAtom.exit:                          ; preds = %clause_GetLiteralAtom.exit, %clause_GetLiteralAtom.exit.thread
  %.val80.val = phi ptr [ %.val6.val.i.i, %clause_GetLiteralAtom.exit.thread ], [ %.val81.val, %clause_GetLiteralAtom.exit ] ; 2 uses
  %.val.i.i = load i32, ptr %i.a, align 8         ; 3 uses
  %.val3.i.i = load i32, ptr %i.c, align 4
  %.val4.i.i = load i32, ptr %i.d, align 8
  %i.r = add i32 %.val.i.i, -1
  %i.s = add i32 %i.r, %.val3.i.i
  %i.t = add i32 %i.s, %.val4.i.i                 ; 2 uses
  %.not157 = icmp sgt i32 %.val.i.i, %i.t
  br i1 %.not157, label %.critedge156.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %clause_LiteralAtom.exit
  %i.u = sext i32 %.val.i.i to i64
  %i.v = sext i32 %i.t to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %clause_GetLiteralAtom.exit97
  %indvars.iv = phi i64 [ %i.u, %.lr.ph.preheader ], [ %indvars.iv.next, %clause_GetLiteralAtom.exit97 ] ; 3 uses
  %.val89 = load ptr, ptr %i.b, align 8
  %i.w = getelementptr inbounds [8 x i8], ptr %.val89, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %.val1.i91 = load ptr, ptr %i.y, align 8        ; 3 uses
  %.val5.val.i.i92 = load i32, ptr %.val1.i91, align 8
  %i.z = load i32, ptr @fol_NOT, align 4
  %.not.i.i93 = icmp eq i32 %.val5.val.i.i92, %i.z
  br i1 %.not.i.i93, label %bb.c, label %clause_GetLiteralAtom.exit97

bb.c:                                             ; preds = %.lr.ph
  %i.aa = getelementptr i8, ptr %.val1.i91, i64 16
  %.val6.i.i95 = load ptr, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %.val6.i.i95, i64 8
  %.val6.val.i.i96 = load ptr, ptr %i.ab, align 8
  br label %clause_GetLiteralAtom.exit97

clause_GetLiteralAtom.exit97:                     ; preds = %.lr.ph, %bb.c
  %.0.i.i94 = phi ptr [ %.val6.val.i.i96, %bb.c ], [ %.val1.i91, %.lr.ph ]
  %.val78 = load i32, ptr %.val80.val, align 8
  %i.ac = tail call i32 @term_ContainsSymbol(ptr noundef %.0.i.i94, i32 noundef %.val78) #12
  %.not75 = icmp eq i32 %i.ac, 0                  ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ad = icmp slt i64 %indvars.iv, %i.v
  %i.ae = and i1 %.not75, %i.ad
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %clause_GetLiteralAtom.exit97
  br i1 %.not75, label %._crit_edge..critedge156_crit_edge, label %list_Delete.exit133

._crit_edge..critedge156_crit_edge:               ; preds = %._crit_edge
  %i.af = getelementptr i8, ptr %i.i, i64 24      ; 2 uses
  %.val87.pre = load ptr, ptr %i.af, align 8
  br label %.critedge156

.critedge156.loopexit:                            ; preds = %clause_LiteralAtom.exit
  %i.ag = getelementptr i8, ptr %i.i, i64 24
  br label %.critedge156

.critedge156:                                     ; preds = %.critedge156.loopexit, %._crit_edge..critedge156_crit_edge
  %i.ah = phi ptr [ %i.af, %._crit_edge..critedge156_crit_edge ], [ %i.ag, %.critedge156.loopexit ]
  %.val87 = phi ptr [ %.val87.pre, %._crit_edge..critedge156_crit_edge ], [ %.val1.i, %.critedge156.loopexit ]
  %i.ai = tail call fastcc ptr @inf_GetForwardPartnerLits(ptr %.val87, ptr noundef %1) ; 4 uses
  %.not139 = icmp eq ptr %i.ai, null
  br i1 %.not139, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.critedge156
  %.val82 = load ptr, ptr %i.ah, align 8          ; 3 uses
  %.val5.val.i98 = load i32, ptr %.val82, align 8
  %i.aj = load i32, ptr @fol_NOT, align 4
  %.not.i99 = icmp eq i32 %.val5.val.i98, %i.aj
  br i1 %.not.i99, label %bb.e, label %clause_LiteralAtom.exit103

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr i8, ptr %.val82, i64 16
  %.val6.i101 = load ptr, ptr %i.ak, align 8
  %i.al = getelementptr i8, ptr %.val6.i101, i64 8
  %.val6.val.i102 = load ptr, ptr %i.al, align 8
  br label %clause_LiteralAtom.exit103

clause_LiteralAtom.exit103:                       ; preds = %bb.d, %bb.e
  %.0.i100 = phi ptr [ %.val6.val.i102, %bb.e ], [ %.val82, %bb.d ]
  %i.am = icmp samesign ult i64 %indvars.iv162, %i.g
  br i1 %i.am, label %.lr.ph145, label %._crit_edge146

.lr.ph145:                                        ; preds = %clause_LiteralAtom.exit103, %sort_Intersect.exit
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %sort_Intersect.exit ], [ %i.f, %clause_LiteralAtom.exit103 ] ; 3 uses
  %.060143 = phi ptr [ %.161, %sort_Intersect.exit ], [ null, %clause_LiteralAtom.exit103 ] ; 4 uses
  %.065142 = phi ptr [ %.166, %sort_Intersect.exit ], [ null, %clause_LiteralAtom.exit103 ] ; 2 uses
  %.val88 = load ptr, ptr %i.b, align 8
  %i.an = getelementptr inbounds [8 x i8], ptr %.val88, i64 %indvars.iv159
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 24
  %.val1.i104 = load ptr, ptr %i.ap, align 8      ; 3 uses
  %.val5.val.i.i105 = load i32, ptr %.val1.i104, align 8
  %i.aq = load i32, ptr @fol_NOT, align 4
  %.not.i.i106 = icmp eq i32 %.val5.val.i.i105, %i.aq
  br i1 %.not.i.i106, label %bb.f, label %clause_GetLiteralAtom.exit110

bb.f:                                             ; preds = %.lr.ph145
  %i.ar = getelementptr i8, ptr %.val1.i104, i64 16
  %.val6.i.i108 = load ptr, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %.val6.i.i108, i64 8
  %.val6.val.i.i109 = load ptr, ptr %i.as, align 8
  br label %clause_GetLiteralAtom.exit110
end_hunk_0
