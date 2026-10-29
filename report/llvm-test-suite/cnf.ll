Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/cnf?download=true
inline.NumInlined: 2507
inline.NumDeleted: 162
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@cnf_ContainsPredicateIntern:bb.a
  %.val129 = load i32, ptr %.val138.val.val, align 8 ; 2 uses
  %i.em = load i32, ptr @fol_AND, align 4         ; 2 uses
  %i.en = icmp eq i32 %.val129, %i.em
  br i1 %i.en, label %tailrecurse.outer._crit_edge, label %.lr.ph.split.split, !llvm.loop !31

.split215.us:                                     ; preds = %bb.e, %bb.t, %bb.i, %bb.n, %bb.y, %bb.am
  %.us-phi216 = phi ptr [ %.tr197, %bb.am ], [ %.tr197.us.us279, %bb.i ], [ %.tr197.us, %bb.n ], [ %.tr197.us220260, %bb.y ], [ %.tr.ph285, %bb.t ], [ %.tr.ph285, %bb.e ] ; 5 uses
  %.us-phi217 = phi i32 [ %.val129198, %bb.am ], [ %.val129198.us.us278, %bb.i ], [ %.val129198.us, %bb.n ], [ %.val129198.us219259, %bb.y ], [ %.val129195288, %bb.t ], [ %.val129195288, %bb.e ]
  %.not159 = icmp eq i32 %.us-phi217, %1
  br i1 %.not159, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %.split215.us
  %i.eo = getelementptr i8, ptr %.us-phi216, i64 16
  %.0295 = load ptr, ptr %i.eo, align 8           ; 2 uses
  %.not160296 = icmp eq ptr %.0295, null
  br i1 %.not160296, label %.loopexit.sink.split.sink.split, label %.lr.ph299

.lr.ph299:                                        ; preds = %bb.ao, %list_Nconc.exit151
  %.0297 = phi ptr [ %.0, %list_Nconc.exit151 ], [ %.0295, %bb.ao ] ; 2 uses
  %i.ep = getelementptr i8, ptr %.0297, i64 8
  %.0.val = load ptr, ptr %i.ep, align 8
  %i.eq = tail call ptr @fol_FreeVariables(ptr noundef %.0.val) #19 ; 4 uses
  %i.er = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i144 = icmp eq ptr %i.eq, null
  br i1 %.not.i144, label %list_Nconc.exit151, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph299
  %.not16.i145 = icmp eq ptr %i.er, null
  br i1 %.not16.i145, label %list_Nconc.exit151, label %.preheader.i146

.preheader.i146:                                  ; preds = %bb.ap, %.preheader.i146
  %.012.i147 = phi ptr [ %.012.val15.i148, %.preheader.i146 ], [ %i.eq, %bb.ap ] ; 2 uses
  %.012.val15.i148 = load ptr, ptr %.012.i147, align 8 ; 2 uses
  %.not17.i149 = icmp eq ptr %.012.val15.i148, null
  br i1 %.not17.i149, label %bb.aq, label %.preheader.i146, !llvm.loop !3

bb.aq:                                            ; preds = %.preheader.i146
  store ptr %i.er, ptr %.012.i147, align 8
  br label %list_Nconc.exit151

list_Nconc.exit151:                               ; preds = %.lr.ph299, %bb.ap, %bb.aq
  %.0.i150 = phi ptr [ %i.eq, %bb.aq ], [ %i.er, %.lr.ph299 ], [ %i.eq, %bb.ap ] ; 2 uses
  store ptr %.0.i150, ptr %5, align 8
  %.0 = load ptr, ptr %.0297, align 8             ; 2 uses
  %.not160 = icmp eq ptr %.0, null
  br i1 %.not160, label %.loopexit.sink.split, label %.lr.ph299, !llvm.loop !32

.loopexit.sink.split.sink.split:                  ; preds = %bb.ao, %bb.ab
  %.sink.ph = phi ptr [ %i.cv, %bb.ab ], [ %.us-phi216, %bb.ao ]
  %.tr.lcssa.sink.ph = phi ptr [ %.tr.lcssa, %bb.ab ], [ %.us-phi216, %bb.ao ]
  %.pre = load ptr, ptr %5, align 8
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %list_Nconc.exit151, %list_Nconc.exit, %.loopexit.sink.split.sink.split
  %.sink629 = phi ptr [ %.pre, %.loopexit.sink.split.sink.split ], [ %.0.i, %list_Nconc.exit ], [ %.0.i150, %list_Nconc.exit151 ]
  %.sink = phi ptr [ %.sink.ph, %.loopexit.sink.split.sink.split ], [ %i.cv, %list_Nconc.exit ], [ %.us-phi216, %list_Nconc.exit151 ]
  %.tr.lcssa.sink = phi ptr [ %.tr.lcssa.sink.ph, %.loopexit.sink.split.sink.split ], [ %.tr.lcssa, %list_Nconc.exit ], [ %.us-phi216, %list_Nconc.exit151 ]
  %i.es = tail call ptr @list_DeleteDuplicates(ptr noundef %.sink629, ptr noundef nonnull @term_Equal) #19
  store ptr %i.es, ptr %5, align 8
  store ptr %.sink, ptr %3, align 8
  store ptr %.tr.lcssa.sink, ptr %4, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.u, %bb.j, %bb.o, %bb.z, %bb.an, %term_ListContainsTerm.exit.thread, %bb.af, %bb.ae, %.loopexit.sink.split, %.lr.ph294, %bb.aj, %.split215.us, %.split206.us, %bb.ai, %tailrecurse.outer._crit_edge
  %.2 = phi i32 [ 1, %bb.z ], [ 0, %tailrecurse.outer._crit_edge ], [ 1, %bb.j ], [ 1, %bb.ai ], [ 0, %.split215.us ], [ 0, %.split206.us ], [ 1, %bb.aj ], [ 1, %bb.an ], [ 1, %.loopexit.sink.split ], [ 1, %.lr.ph294 ], [ 1, %bb.o ], [ 1, %term_ListContainsTerm.exit.thread ], [ 0, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.u ], [ 1, %bb.f ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cnf_ApplyDefinitionOnce(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = tail call i32 @term_MaxVar(ptr noundef %2) #19
  %i.c = tail call i32 @term_MaxVar(ptr noundef %1) #19
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.c, i32 %i.b)
  store i32 %spec.select, ptr @symbol_STANDARDVARCOUNTER, align 4
  %i.d = tail call ptr @fol_BoundVariables(ptr noundef %1) #19 ; 3 uses
  %cond = icmp eq ptr %i.d, null
  br i1 %cond, label %list_Delete.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.030 = phi ptr [ %.0.val28, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.e = getelementptr i8, ptr %.030, i64 8       ; 2 uses
  %.0.val27 = load ptr, ptr %i.e, align 8
  %.val26 = load i32, ptr %.0.val27, align 8
  %i.f = tail call i32 @term_ContainsSymbol(ptr noundef %2, i32 noundef %.val26) #19
  %.not25 = icmp eq i32 %i.f, 0
  br i1 %.not25, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.0.val = load ptr, ptr %i.e, align 8
  %.val = load i32, ptr %.0.val, align 8
  %i.g = load i32, ptr @symbol_STANDARDVARCOUNTER, align 4
  %i.h = add nsw i32 %i.g, 1                      ; 2 uses
  store i32 %i.h, ptr @symbol_STANDARDVARCOUNTER, align 4
  tail call void @term_ExchangeVariable(ptr noundef %1, i32 noundef %.val, i32 noundef %i.h) #19
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.0.val28 = load ptr, ptr %.030, align 8        ; 2 uses
  %.not = icmp eq ptr %.0.val28, null
  br i1 %.not, label %.lr.ph.i, label %.lr.ph, !llvm.loop !34

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %i.d, %bb.c ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 8
  %i.l = sext i32 %i.k to i64
  %i.m = load i64, ptr @memory_FREEDBYTES, align 8
  %i.n = add i64 %i.m, %i.l
  store i64 %i.n, ptr @memory_FREEDBYTES, align 8
  %i.o = load ptr, ptr %i.i, align 8
  store ptr %i.o, ptr %.07.i, align 8
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.p, align 8
  %.not.i = icmp eq ptr %.0.val.i, null
  br i1 %.not.i, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !0

list_Delete.exit:                                 ; preds = %.lr.ph.i, %bb.a
  %i.q = call fastcc ptr @cnf_ApplyDefinitionInternOnce(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.a) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 148
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp ne i32 %i.s, 0
  %i.u = load i32, ptr %i.a, align 4
  %i.v = icmp ne i32 %i.u, 0
  %or.cond = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %list_Delete.exit
  %i.w = load ptr, ptr @stdout, align 8
  %fwrite = call i64 @fwrite(ptr nonnull @.str, i64 28, i64 1, ptr %i.w) ; 0 uses
  call void @fol_PrettyPrint(ptr noundef %i.q) #19
  %i.x = call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %list_Delete.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %i.q
}

declare i32 @term_MaxVar(ptr noundef) local_unnamed_addr #1

declare ptr @fol_BoundVariables(ptr noundef) local_unnamed_addr #1

declare i32 @term_ContainsSymbol(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @term_ExchangeVariable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @cnf_ApplyDefinitionInternOnce(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %.val47 = load i32, ptr %2, align 8             ; 10 uses
  %i.a = load i32, ptr @fol_ALL, align 4
  %.not.i = icmp eq i32 %i.a, %.val47
  %i.b = load i32, ptr @fol_EXIST, align 4
  %i.c = icmp eq i32 %i.b, %.val47
  %narrow.i = select i1 %.not.i, i1 true, i1 %i.c
  br i1 %narrow.i, label %bb.b, label %bb.c

common.ret93:                                     ; preds = %bb.e, %cnf_RplacVar.exit, %bb.d, %.lr.ph, %bb.b
  %common.ret93.op = phi ptr [ %2, %bb.b ], [ %2, %bb.d ], [ %2, %bb.e ], [ %1, %cnf_RplacVar.exit ], [ %2, %.lr.ph ]
  ret ptr %common.ret93.op

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 16         ; 3 uses
  %.val54 = load ptr, ptr %i.d, align 8
  %.val54.val = load ptr, ptr %.val54, align 8
  %i.e = getelementptr i8, ptr %.val54.val, i64 8
  %.val54.val.val = load ptr, ptr %i.e, align 8
  %i.f = tail call fastcc ptr @cnf_ApplyDefinitionInternOnce(ptr noundef %0, ptr noundef %1, ptr noundef %.val54.val.val, ptr noundef %3, ptr noundef %4)
  %.val55 = load ptr, ptr %i.d, align 8
  %.val55.val = load ptr, ptr %.val55, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.val55.val, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %.val53 = load ptr, ptr %i.d, align 8
  %.val53.val = load ptr, ptr %.val53, align 8
  %i.h = getelementptr i8, ptr %.val53.val, i64 8
  %.val53.val.val = load ptr, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val53.val.val, i64 8
  store ptr %2, ptr %i.i, align 8
  br label %common.ret93

bb.c:                                             ; preds = %bb.a
  %i.j = load i32, ptr @fol_AND, align 4
  %.not.i56 = icmp eq i32 %.val47, %i.j
  %i.k = load i32, ptr @fol_OR, align 4
  %.not15.i = icmp eq i32 %.val47, %i.k
  %i.l = load i32, ptr @fol_NOT, align 4
  %.not16.i = icmp eq i32 %.val47, %i.l
  %i.m = load i32, ptr @fol_IMPLIED, align 4
  %.not17.i = icmp eq i32 %.val47, %i.m
  %i.n = load i32, ptr @fol_VARLIST, align 4
  %.not18.i = icmp eq i32 %.val47, %i.n
  %i.o = load i32, ptr @fol_IMPLIES, align 4
  %.not19.i = icmp eq i32 %.val47, %i.o
  %i.p = load i32, ptr @fol_EQUIV, align 4
  %i.q = icmp eq i32 %.val47, %i.p
  %op.rdx = select i1 %.not.i56, i1 true, i1 %.not16.i
  %5 = freeze i1 %op.rdx
  %.not15.i.fr = freeze i1 %.not15.i
  %op.rdx82 = or i1 %5, %.not15.i.fr
  %.not17.i.fr = freeze i1 %.not17.i
  %op.rdx83 = or i1 %op.rdx82, %.not17.i.fr
  %.not18.i.fr = freeze i1 %.not18.i
  %op.rdx84 = or i1 %op.rdx83, %.not18.i.fr
  %.not19.i.fr = freeze i1 %.not19.i
  %op.rdx85 = or i1 %op.rdx84, %.not19.i.fr
  %op.rdx86 = select i1 %op.rdx85, i1 true, i1 %i.q
  br i1 %op.rdx86, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %2, i64 16
  %.03866 = load ptr, ptr %i.r, align 8           ; 2 uses
  %.not67 = icmp eq ptr %.03866, null
  br i1 %.not67, label %common.ret93, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.03868 = phi ptr [ %.038, %.lr.ph ], [ %.03866, %bb.d ] ; 2 uses
  %i.s = getelementptr i8, ptr %.03868, i64 8     ; 2 uses
  %.038.val51 = load ptr, ptr %i.s, align 8
  %i.t = tail call fastcc ptr @cnf_ApplyDefinitionInternOnce(ptr noundef %0, ptr noundef %1, ptr noundef %.038.val51, ptr noundef %3, ptr noundef %4) ; 2 uses
  store ptr %i.t, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %2, ptr %i.u, align 8
  %.038 = load ptr, ptr %.03868, align 8          ; 2 uses
  %.not = icmp eq ptr %.038, null
  br i1 %.not, label %common.ret93, label %.lr.ph, !llvm.loop !35

bb.e:                                             ; preds = %bb.c
  %.val = load i32, ptr %0, align 8
  %i.v = icmp eq i32 %.val47, %.val
  %i.w = icmp eq ptr %2, %3
  %or.cond = and i1 %i.w, %i.v
  br i1 %or.cond, label %bb.f, label %common.ret93

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %0, i64 16
  %.val49 = load ptr, ptr %i.x, align 8           ; 2 uses
  %i.y = getelementptr i8, ptr %2, i64 16
  %.val48 = load ptr, ptr %i.y, align 8
  %i.z = load i32, ptr @vec_MAX, align 4          ; 5 uses
  %i.aa = add nsw i32 %i.z, 1                     ; 2 uses
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr @vec_VECTOR, i64 %i.ab
  store ptr %1, ptr %i.ac, align 8
  %.not52.i = icmp eq ptr %.val49, null
  br i1 %.not52.i, label %.lr.ph49.split.i, label %.lr.ph49.split.us.i

.lr.ph49.split.us.i:                              ; preds = %bb.f, %.critedge.us.i
  %i.ad = phi i32 [ %i.ar, %.critedge.us.i ], [ %i.aa, %bb.f ]
  %i.ae = add nsw i32 %i.ad, -1                   ; 4 uses
  store i32 %i.ae, ptr @vec_MAX, align 4
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr @vec_VECTOR, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.val32.us.i = load i32, ptr %i.ah, align 8     ; 2 uses
  %i.ai = icmp slt i32 %.val32.us.i, 1
  %i.aj = getelementptr i8, ptr %i.ah, i64 16     ; 2 uses
  br i1 %i.ai, label %bb.h, label %.preheader43.us.i

.preheader43.us.i:                                ; preds = %.lr.ph49.split.us.i, %bb.g
  %.02046.us.i = phi ptr [ %.020.val38.us.i, %bb.g ], [ %.val48, %.lr.ph49.split.us.i ] ; 2 uses
  %.02145.us.i = phi ptr [ %.021.val39.us.i, %bb.g ], [ %.val49, %.lr.ph49.split.us.i ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.02145.us.i, i64 8
  %.021.val.us.i = load ptr, ptr %i.ak, align 8
  %.val30.us.i = load i32, ptr %.021.val.us.i, align 8
  %.not40.us.not.i = icmp eq i32 %.val32.us.i, %.val30.us.i
  br i1 %.not40.us.not.i, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %.preheader43.us.i
  %i.al = getelementptr i8, ptr %.02046.us.i, i64 8 ; 2 uses
  %.020.val36.us.i = load ptr, ptr %i.al, align 8
  %.val.us.i = load i32, ptr %.020.val36.us.i, align 8
  store i32 %.val.us.i, ptr %i.ah, align 8
  %.020.val.us.i = load ptr, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %.020.val.us.i, i64 16
  %.val35.us.i = load ptr, ptr %i.am, align 8
  %i.an = tail call ptr @list_CopyWithElement(ptr noundef %.val35.us.i, ptr noundef nonnull @term_Copy) #19
  store ptr %i.an, ptr %i.aj, align 8
  %.pre.i.pre = load i32, ptr @vec_MAX, align 4
  br label %.critedge.us.i

bb.g:                                             ; preds = %.preheader43.us.i
  %.021.val39.us.i = load ptr, ptr %.02145.us.i, align 8 ; 2 uses
  %.020.val38.us.i = load ptr, ptr %.02046.us.i, align 8
  %.not66.i = icmp eq ptr %.021.val39.us.i, null
  br i1 %.not66.i, label %.critedge.us.i, label %.preheader43.us.i, !llvm.loop !36

bb.h:                                             ; preds = %.lr.ph49.split.us.i
  %.val34.us.i = load ptr, ptr %i.aj, align 8     ; 2 uses
  %.not41.us.i = icmp eq ptr %.val34.us.i, null
  br i1 %.not41.us.i, label %.critedge.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.h, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.us.i ], [ %i.af, %bb.h ] ; 2 uses
  %.12247.us.i = phi ptr [ %.122.val37.us.i, %.preheader.us.i ], [ %.val34.us.i, %bb.h ] ; 2 uses
  %i.ao = getelementptr i8, ptr %.12247.us.i, i64 8
  %.122.val.us.i = load ptr, ptr %i.ao, align 8
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ap = trunc nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  store i32 %i.ap, ptr @vec_MAX, align 4
  %i.aq = getelementptr inbounds [8 x i8], ptr @vec_VECTOR, i64 %indvars.iv.i
  store ptr %.122.val.us.i, ptr %i.aq, align 8
  %.122.val37.us.i = load ptr, ptr %.12247.us.i, align 8 ; 2 uses
  %.not42.us.i = icmp eq ptr %.122.val37.us.i, null
  br i1 %.not42.us.i, label %.critedge.us.i, label %.preheader.us.i, !llvm.loop !37

.critedge.us.i:                                   ; preds = %bb.g, %.preheader.us.i, %.thread.i, %bb.h
  %i.ar = phi i32 [ %i.ap, %.preheader.us.i ], [ %i.ae, %bb.h ], [ %.pre.i.pre, %.thread.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.not.us.i = icmp eq i32 %i.z, %i.ar
  br i1 %.not.us.i, label %cnf_RplacVar.exit, label %.lr.ph49.split.us.i, !llvm.loop !38

.lr.ph49.split.i:                                 ; preds = %bb.f, %.critedge.i
  %i.as = phi i32 [ %vec_MAX.promoted51.i, %.critedge.i ], [ %i.aa, %bb.f ] ; 2 uses
  %i.at = add nsw i32 %i.as, -1                   ; 4 uses
  store i32 %i.at, ptr @vec_MAX, align 4
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr @vec_VECTOR, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.val32.i = load i32, ptr %i.aw, align 8
  %i.ax = icmp slt i32 %.val32.i, 1
  br i1 %i.ax, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %.lr.ph49.split.i
  %i.ay = getelementptr i8, ptr %i.aw, i64 16
  %.val34.i = load ptr, ptr %i.ay, align 8        ; 2 uses
  %.not41.i = icmp eq ptr %.val34.i, null
  br i1 %.not41.i, label %.critedge.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.i
  %i.az = sext i32 %i.as to i64
  %i.ba = add nsw i64 %i.az, -1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv56.i = phi i64 [ %i.ba, %.preheader.preheader.i ], [ %indvars.iv.next57.i, %.preheader.i ] ; 2 uses
  %.12247.i = phi ptr [ %.val34.i, %.preheader.preheader.i ], [ %.122.val37.i, %.preheader.i ] ; 2 uses
  %i.bb = getelementptr i8, ptr %.12247.i, i64 8
  %.122.val.i = load ptr, ptr %i.bb, align 8
  %indvars.iv.next57.i = add nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %i.bc = trunc nsw i64 %indvars.iv.next57.i to i32 ; 2 uses
  store i32 %i.bc, ptr @vec_MAX, align 4
  %i.bd = getelementptr inbounds [8 x i8], ptr @vec_VECTOR, i64 %indvars.iv56.i
  store ptr %.122.val.i, ptr %i.bd, align 8
  %.122.val37.i = load ptr, ptr %.12247.i, align 8 ; 2 uses
  %.not42.i = icmp eq ptr %.122.val37.i, null
  br i1 %.not42.i, label %.critedge.i, label %.preheader.i, !llvm.loop !37

.critedge.i:                                      ; preds = %.preheader.i, %bb.i, %.lr.ph49.split.i
  %vec_MAX.promoted51.i = phi i32 [ %i.at, %bb.i ], [ %i.at, %.lr.ph49.split.i ], [ %i.bc, %.preheader.i ] ; 2 uses
  %.not.i58 = icmp eq i32 %i.z, %vec_MAX.promoted51.i
  br i1 %.not.i58, label %cnf_RplacVar.exit, label %.lr.ph49.split.i, !llvm.loop !38

cnf_RplacVar.exit:                                ; preds = %.critedge.us.i, %.critedge.i
  store i32 %i.z, ptr @vec_MAX, align 4
  tail call void @term_AddFatherLinks(ptr noundef %1) #19
  tail call void @term_Delete(ptr noundef nonnull %2) #19
  store i32 1, ptr %4, align 4
  br label %common.ret93
}

declare void @fol_PrettyPrint(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cnf_NegationNormalFormula(ptr noundef returned %0) local_unnamed_addr #0 {
.lr.ph124.preheader:
  %i.a = load i32, ptr @vec_MAX, align 4          ; 4 uses
  %i.b = add nsw i32 %i.a, 1
  %i.c = sext i32 %i.a to i64
  %i.d = getelementptr inbounds [8 x i8], ptr @vec_VECTOR, i64 %i.c
  store ptr %0, ptr %i.d, align 8
  br label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %.loopexit
  %i.e = phi i32 [ %i.cp, %.loopexit ], [ %i.b, %.lr.ph124.preheader ]
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr @vec_MAX, align 4
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr @vec_VECTOR, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8              ; 8 uses
  %.val61 = load i32, ptr %i.i, align 8           ; 3 uses
  %i.j = load i32, ptr @fol_NOT, align 4
  %.not111 = icmp eq i32 %.val61, %i.j
  br i1 %.not111, label %bb.a, label %bb.e

bb.a:                                             ; preds = %.lr.ph124
  %i.k = getelementptr i8, ptr %i.i, i64 16       ; 6 uses
  %.val73 = load ptr, ptr %i.k, align 8           ; 3 uses
  %i.l = getelementptr i8, ptr %.val73, i64 8
  %.val74 = load ptr, ptr %i.l, align 8           ; 8 uses
  %.val60 = load i32, ptr %.val74, align 8        ; 6 uses
  %.not112 = icmp eq i32 %.val60, %.val61
  br i1 %.not112, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %.val74, i64 16    ; 4 uses
  %.val80 = load ptr, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %.val80, i64 8
  %.val80.val = load ptr, ptr %i.n, align 8
  %.val59 = load i32, ptr %.val80.val, align 8
  store i32 %.val59, ptr %i.i, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %.val73, %bb.b ] ; 3 uses
end_hunk_0
