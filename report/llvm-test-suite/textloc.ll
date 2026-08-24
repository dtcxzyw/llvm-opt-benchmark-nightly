Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/textloc?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@MergeComponents:bb.a
  br i1 %.not68, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !59
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.thread
  store ptr %i.be, ptr %3, align 8, !tbaa !60
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @free(ptr noundef nonnull %1) #15
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @EliminateLargeSpreadComponents(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %.not36 = icmp eq ptr %i.a, null
  br i1 %.not36, label %._crit_edge40, label %.lr.ph39

.lr.ph39:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.pre41 = load i32, ptr @KILL_SMALL_COMP, align 4, !tbaa !4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph39, %bb.g
  %i.e = phi i32 [ %.pre41, %.lr.ph39 ], [ %i.at, %bb.g ] ; 2 uses
  %i.f = phi ptr [ %i.a, %.lr.ph39 ], [ %i.au, %bb.g ] ; 11 uses
  %.02737 = phi ptr [ %0, %.lr.ph39 ], [ %.1, %bb.g ] ; 2 uses
  %.not29 = icmp eq i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = sitofp i32 %i.k to double
  %i.m = load i32, ptr %i.b, align 8, !tbaa !17
  %i.n = sitofp i32 %i.m to float
  %i.o = fpext nnan ninf float %i.n to double
  %i.p = load double, ptr @VSPREAD_THRESHOLD, align 8, !tbaa !75
  %i.q = fmul double %i.p, %i.o
  %i.r = fcmp ugt double %i.q, %i.l               ; 2 uses
  br i1 %.not29, label %.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.r, label %bb.d, label %.critedge

.split:                                           ; preds = %bb.b
  br i1 %i.r, label %bb.f, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !55
  %i.w = sub nsw i32 %i.t, %i.v
  %i.x = load i32, ptr @SMALL_THRESHOLD, align 4, !tbaa !4
  %.not32 = icmp slt i32 %i.w, %i.x
  br i1 %.not32, label %.critedge, label %bb.f

.critedge:                                        ; preds = %.split, %bb.c, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.02633 = load ptr, ptr %i.y, align 8, !tbaa !76 ; 2 uses
  %.not3134 = icmp eq ptr %.02633, null
  br i1 %.not3134, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.02635 = phi ptr [ %.02633, %.lr.ph ], [ %.026, %bb.e ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02635, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !64
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !8
  %i.ad = mul nsw i32 %i.ac, %i.ab
  %i.ae = load i32, ptr %.02635, align 8, !tbaa !62
  %i.af = add nsw i32 %i.ad, %i.ae
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ag
  store i32 0, ptr %i.ah, align 4, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %.02635, i64 8
  %.026 = load ptr, ptr %i.ai, align 8, !tbaa !76 ; 2 uses
  %.not31 = icmp eq ptr %.026, null
  br i1 %.not31, label %._crit_edge, label %bb.e, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.e, %.critedge
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !59
  store ptr %i.ak, ptr %.02737, align 8, !tbaa !60
  tail call void @free(ptr noundef nonnull %i.f) #15
  %.pre = load i32, ptr @KILL_SMALL_COMP, align 4, !tbaa !4
  br label %bb.g

bb.f:                                             ; preds = %.split, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.am = load float, ptr %i.al, align 4, !tbaa !67
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ao = load float, ptr %i.an, align 8, !tbaa !68
  %i.ap = fcmp ult float %i.am, %i.ao
  %i.aq = zext i1 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i8 %i.aq, ptr %i.ar, align 4, !tbaa !78
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.at = phi i32 [ %.pre, %._crit_edge ], [ %i.e, %bb.f ]
  %.1 = phi ptr [ %.02737, %._crit_edge ], [ %i.as, %bb.f ] ; 2 uses
  %i.au = load ptr, ptr %.1, align 8, !tbaa !60   ; 2 uses
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %._crit_edge40, label %bb.b, !llvm.loop !79

._crit_edge40:                                    ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local void @PrintConnectedComponents(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not17 = icmp eq ptr %0, null
  br i1 %.not17, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.019 = phi i32 [ %i.aa, %.lr.ph ], [ 0, %bb.a ]
  %.01418 = phi ptr [ %i.ac, %.lr.ph ], [ %0, %bb.a ] ; 9 uses
  %puts16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.a = load i32, ptr %.01418, align 8, !tbaa !47
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.a) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01418, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.d) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01418, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !52
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.g) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01418, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !53
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.j) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01418, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.m) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01418, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !55
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.p) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01418, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !56
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.s) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01418, i64 44
  %i.v = load i8, ptr %i.u, align 4, !tbaa !78
  %i.w = icmp eq i8 %i.v, 0
  %i.x = select i1 %i.w, ptr @.str.9, ptr @.str.10
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %i.x) ; 0 uses
  %i.z = load i32, ptr %i.c, align 4, !tbaa !51
  %i.aa = add nsw i32 %i.z, %.019                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01418, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !59 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %.lr.ph
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.aa) ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @WriteConnectedComponentsToPGM(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 8, !tbaa !81
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8    ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = load i32, ptr @WriteConnectedComponentsToPGM.index, align 4
  %i.j = icmp sgt i32 %i.i, 99
  %or.cond = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = mul nsw i32 %i.g, %i.d
  %i.l = sext i32 %i.k to i64
  %i.m = tail call noalias ptr @calloc(i64 noundef %i.l, i64 noundef 1) #14 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.03444 = phi ptr [ %0, %bb.e ], [ %i.y, %._crit_edge ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03444, i64 48
  %.03341 = load ptr, ptr %i.n, align 8, !tbaa !76 ; 2 uses
  %.not3942 = icmp eq ptr %.03341, null
  br i1 %.not3942, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.o = load i32, ptr %i.c, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.03343 = phi ptr [ %.03341, %.lr.ph ], [ %.033, %bb.g ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.03343, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !64
  %i.r = mul nsw i32 %i.o, %i.q
  %i.s = load i32, ptr %.03343, align 8, !tbaa !62
  %i.t = add nsw i32 %i.r, %i.s
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.m, i64 %i.u
  store i8 -1, ptr %i.v, align 1, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %.03343, i64 8
  %.033 = load ptr, ptr %i.w, align 8, !tbaa !76  ; 2 uses
  %.not39 = icmp eq ptr %.033, null
  br i1 %.not39, label %._crit_edge, label %bb.g, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.03444, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59   ; 2 uses
  %.not38 = icmp eq ptr %i.y, null
  br i1 %.not38, label %bb.h, label %bb.f, !llvm.loop !83

bb.h:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !84  ; 2 uses
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #16
  %i.ac = add i64 %i.ab, 12
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #13 ; 2 uses
  %2 = load i32, ptr @WriteConnectedComponentsToPGM.index, align 4, !tbaa !4 ; 2 uses
  %i.ae = add nsw i32 %2, 1
  store i32 %i.ae, ptr @WriteConnectedComponentsToPGM.index, align 4, !tbaa !4
  %i.af = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ad, ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %i.aa, i32 noundef %2) #15 ; 0 uses
  %i.ag = load ptr, ptr @stdout, align 8, !tbaa !85 ; 4 uses
  %i.ah = tail call i64 @fwrite(ptr nonnull @.str.14, i64 3, i64 1, ptr %i.ag) ; 0 uses
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !8
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !17
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.15, i32 noundef %i.ai, i32 noundef %i.aj) #15 ; 0 uses
  %i.al = tail call i64 @fwrite(ptr nonnull @.str.16, i64 4, i64 1, ptr %i.ag) ; 0 uses
  %i.am = load i32, ptr %i.c, align 4, !tbaa !8
  %i.an = load i32, ptr %i.f, align 8, !tbaa !17
  %i.ao = mul nsw i32 %i.an, %i.am
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph47, label %._crit_edge48

.lr.ph47:                                         ; preds = %bb.h, %.lr.ph47
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph47 ], [ 0, %bb.h ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %char = load i8, ptr %i.aq, align 1
  %chari = sext i8 %char to i32
  %fputc = tail call i32 @fputc(i32 %chari, ptr %i.ag) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !8
  %i.as = load i32, ptr %i.f, align 8, !tbaa !17
  %i.at = mul nsw i32 %i.as, %i.ar
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next, %i.au
  br i1 %i.av, label %.lr.ph47, label %._crit_edge48, !llvm.loop !86

._crit_edge48:                                    ; preds = %.lr.ph47, %bb.h
  tail call void @free(ptr noundef nonnull %i.ad) #15
  tail call void @free(ptr noundef %i.m) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %._crit_edge48
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreeConnectedComponents(ptr noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not14 = icmp eq ptr %0, null
  br i1 %.not14, label %._crit_edge18, label %.lr.ph17

.lr.ph17:                                         ; preds = %bb.a, %._crit_edge
  %.01015 = phi ptr [ %i.b, %._crit_edge ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.01015, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01015, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %.not1112 = icmp eq ptr %i.d, null
  br i1 %.not1112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph17, %.lr.ph
  %.013 = phi ptr [ %i.f, %.lr.ph ], [ %i.d, %.lr.ph17 ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66   ; 2 uses
  tail call void @free(ptr noundef nonnull %.013) #15
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph, !llvm.loop !87

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph17
  tail call void @free(ptr noundef nonnull %.01015) #15
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge18, label %.lr.ph17, !llvm.loop !88

._crit_edge18:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MergeRowComponents(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %.06 = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %.not7 = icmp eq ptr %.06, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi ptr [ %.0, %.lr.ph ], [ %.06, %bb.a ] ; 2 uses
  tail call void @MergeToLeft(ptr noundef nonnull %.08, ptr noundef nonnull %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %.08, i64 72
  %.0 = load ptr, ptr %i.a, align 8, !tbaa !60    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !89

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MergeToLeft(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !57
  %i.e = load i32, ptr @SAME_ROW_V, align 4, !tbaa !4 ; 3 uses
  %.not86 = icmp slt i32 %i.e, 0
  br i1 %.not86, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.a
  %i.f = sub nsw i32 0, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph90, %._crit_edge80
  %i.k = phi i32 [ %i.e, %.lr.ph90 ], [ %i.an, %._crit_edge80 ] ; 3 uses
  %.05488 = phi i32 [ 0, %.lr.ph90 ], [ %.1.lcssa, %._crit_edge80 ] ; 4 uses
  %.05587 = phi i32 [ %i.f, %.lr.ph90 ], [ %i.ao, %._crit_edge80 ] ; 3 uses
  %i.l = load i32, ptr @SAME_ROW_H, align 4, !tbaa !4 ; 2 uses
  %i.m = sub nsw i32 0, %i.l
  %i.n = icmp sgt i32 %i.l, -1
  br i1 %i.n, label %.lr.ph79, label %._crit_edge80

.lr.ph79:                                         ; preds = %bb.b
  %i.o = add nsw i32 %.05587, %i.d                ; 4 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %._crit_edge80, label %.lr.ph79.split

.lr.ph79.split:                                   ; preds = %.lr.ph79
  %i.q = load i32, ptr %i.g, align 8, !tbaa !17
  %i.r = icmp slt i32 %i.o, %i.q
  br i1 %i.r, label %.lr.ph79.split.split, label %._crit_edge80

.lr.ph79.split.split:                             ; preds = %.lr.ph79.split, %bb.i
  %.177 = phi i32 [ %.2, %bb.i ], [ %.05488, %.lr.ph79.split ] ; 7 uses
  %.05676 = phi i32 [ %i.am, %bb.i ], [ %i.m, %.lr.ph79.split ] ; 3 uses
  %i.s = load i32, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %.not61 = icmp slt i32 %i.o, %i.s
  br i1 %.not61, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.lr.ph79.split.split
  %i.t = add nsw i32 %.05676, %i.b                ; 3 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.h, align 4, !tbaa !8    ; 3 uses
  %.not62 = icmp slt i32 %i.t, %i.v
  br i1 %.not62, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.w = mul nsw i32 %i.v, %i.o
  %i.x = add nuw nsw i32 %i.w, %i.t               ; 2 uses
  %i.y = mul nsw i32 %i.v, %i.s
  %i.z = icmp samesign ugt i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.ab = zext nneg i32 %i.x to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4  ; 6 uses
  %.not63 = icmp eq i32 %i.ad, 0
  br i1 %.not63, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %0, align 8, !tbaa !47
  %.not64 = icmp eq i32 %i.ad, %i.ae
  %.not65 = icmp eq i32 %i.ad, %.177
  %or.cond68 = select i1 %.not64, i1 true, i1 %.not65
  br i1 %or.cond68, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.g
  %.05372 = load ptr, ptr %1, align 8, !tbaa !60  ; 4 uses
  %cond73 = icmp eq ptr %.05372, null
  br i1 %cond73, label %.preheader._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.af = load i32, ptr %.05372, align 8, !tbaa !47
  %.not67112 = icmp eq i32 %i.af, %i.ad
  br i1 %.not67112, label %.critedge, label %.lr.ph114

.lr.ph:                                           ; preds = %.lr.ph114
  %i.ag = load i32, ptr %.053, align 8, !tbaa !47
  %.not67 = icmp eq i32 %i.ag, %i.ad
  br i1 %.not67, label %.critedge, label %.lr.ph114, !llvm.loop !90

.lr.ph114:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.05375113 = phi ptr [ %.053, %.lr.ph ], [ %.05372, %.lr.ph.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05375113, i64 72
  %.053 = load ptr, ptr %i.ah, align 8, !tbaa !60 ; 4 uses
  %cond = icmp eq ptr %.053, null
  br i1 %cond, label %.preheader._crit_edge, label %.lr.ph, !llvm.loop !90

.preheader._crit_edge:                            ; preds = %.preheader, %.lr.ph114
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  tail call void @exit(i32 noundef 1) #17
end_hunk_0
