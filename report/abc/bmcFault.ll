inline.NumInlined: 577
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Gia_ManFormulaUnfold:bb.a
  %i.kq = call ptr @Gia_ManCleanup(ptr noundef nonnull %i.w) #25
  call void @Gia_ManStop(ptr noundef nonnull %i.w) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %i.kq
}

declare void @Gia_ManCleanMark0(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @Gia_ManFaultCofactor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val53 = load i32, ptr %i.a, align 8, !tbaa !64
  %i.b = tail call ptr @Gia_ManStart(i32 noundef %.val53) #25 ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !65     ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.c) #26
  %i.e = add i64 %i.d, 1
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #24 ; 2 uses
  %i.g = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull readonly dereferenceable(1) %i.c) #25 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  store ptr %i.h, ptr %i.b, align 8, !tbaa !65
  tail call void @Gia_ManHashAlloc(ptr noundef nonnull %i.b) #25
  %i.i = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %.val54 = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %.val54, i64 8
  store i32 0, ptr %i.j, align 4, !tbaa !66
  %i.k = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val5561 = load i32, ptr %i.k, align 8, !tbaa !68
  %.val5662 = load ptr, ptr %i.l, align 8, !tbaa !69 ; 2 uses
  %i.m = getelementptr i8, ptr %.val5662, i64 4
  %.val56.val63 = load i32, ptr %i.m, align 4, !tbaa !40
  %i.n = icmp sgt i32 %.val56.val63, %.val5561
  br i1 %i.n, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_UtilStrsav.exit
  %i.o = getelementptr i8, ptr %1, i64 4
  %i.p = getelementptr i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %.val5665 = phi ptr [ %.val5662, %.lr.ph ], [ %.val56, %bb.f ]
  %.val57 = load ptr, ptr %i.i, align 8, !tbaa !8 ; 2 uses
  %.not = icmp eq ptr %.val57, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %.val5665, i64 8
  %.val58.val = load ptr, ptr %i.q, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val58.val, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !36
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %.val57, i64 %i.t
  %i.v = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.b)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store i32 %i.v, ptr %i.w, align 4, !tbaa !66
  %.val52 = load i32, ptr %i.o, align 4, !tbaa !40
  %i.x = sext i32 %.val52 to i64
  %i.y = icmp slt i64 %indvars.iv, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.val48 = load ptr, ptr %i.p, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val48, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !36
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val55 = load i32, ptr %i.k, align 8, !tbaa !68
  %.val56 = load ptr, ptr %i.l, align 8, !tbaa !69 ; 2 uses
  %i.ab = getelementptr i8, ptr %.val56, i64 4
  %.val56.val = load i32, ptr %i.ab, align 4, !tbaa !40
  %i.ac = sub nsw i32 %.val56.val, %.val55
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next, %i.ad
  br i1 %i.ae, label %bb.c, label %.critedge, !llvm.loop !103

.critedge:                                        ; preds = %bb.c, %bb.f, %Abc_UtilStrsav.exit
  %i.af = load i32, ptr %i.a, align 8, !tbaa !64  ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph68, label %.critedge2

.lr.ph68:                                         ; preds = %.critedge, %bb.i
  %i.ah = phi i32 [ %i.bg, %bb.i ], [ %i.af, %.critedge ]
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %bb.i ], [ 0, %.critedge ] ; 2 uses
  %.val = load ptr, ptr %i.i, align 8, !tbaa !8   ; 2 uses
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %indvars.iv75 ; 4 uses
  %.not44 = icmp eq ptr %.val, null
  br i1 %.not44, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.lr.ph68
  %.val47 = load i64, ptr %i.ai, align 4          ; 5 uses
  %i.aj = and i64 %.val47, 2147483648
  %.not.i59 = icmp ne i64 %i.aj, 0
  %i.ak = and i64 %.val47, 536870911              ; 2 uses
  %i.al = icmp eq i64 %i.ak, 536870911
  %narrow.i.not = or i1 %.not.i59, %i.al
  br i1 %narrow.i.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = sub nsw i64 0, %i.ak
  %i.an = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !66
  %i.aq = trunc i64 %.val47 to i32
  %i.ar = lshr i32 %i.aq, 29
  %i.as = and i32 %i.ar, 1
  %i.at = xor i32 %i.ap, %i.as
  %i.au = lshr i64 %.val47, 32
  %i.av = and i64 %i.au, 536870911
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !66
  %i.ba = lshr i64 %.val47, 61
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 1
  %i.bd = xor i32 %i.az, %i.bc
  %i.be = tail call i32 @Gia_ManHashAnd(ptr noundef nonnull %i.b, i32 noundef %i.at, i32 noundef %i.bd) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !66
  %.pre = load i32, ptr %i.a, align 8, !tbaa !64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bg = phi i32 [ %.pre, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next76, %i.bh
  br i1 %i.bi, label %.lr.ph68, label %.critedge2, !llvm.loop !104

.critedge2:                                       ; preds = %.lr.ph68, %bb.i, %.critedge
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !38 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 4
  %.val5170 = load i32, ptr %i.bl, align 4, !tbaa !40
  %i.bm = icmp sgt i32 %.val5170, 0
  br i1 %i.bm, label %.lr.ph72, label %.critedge4

.lr.ph72:                                         ; preds = %.critedge2, %bb.j
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %bb.j ], [ 0, %.critedge2 ] ; 2 uses
  %i.bn = phi ptr [ %i.cf, %bb.j ], [ %i.bk, %.critedge2 ]
  %.val49 = load ptr, ptr %i.i, align 8, !tbaa !8 ; 2 uses
  %.not45 = icmp eq ptr %.val49, null
  br i1 %.not45, label %.critedge4, label %bb.j

bb.j:                                             ; preds = %.lr.ph72
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %.val50.val = load ptr, ptr %i.bo, align 8, !tbaa !39
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.val50.val, i64 %indvars.iv78
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !36
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [12 x i8], ptr %.val49, i64 %i.br ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 4            ; 2 uses
  %i.bu = and i64 %i.bt, 536870911
  %i.bv = sub nsw i64 0, %i.bu
  %i.bw = getelementptr inbounds [12 x i8], ptr %i.bs, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !66
  %i.bz = trunc i64 %i.bt to i32
  %i.ca = lshr i32 %i.bz, 29
  %i.cb = and i32 %i.ca, 1
  %i.cc = xor i32 %i.cb, %i.by
  %i.cd = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.b, i32 noundef %i.cc)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !66
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.cf = load ptr, ptr %i.bj, align 8, !tbaa !38 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  %.val51 = load i32, ptr %i.cg, align 4, !tbaa !40
  %i.ch = sext i32 %.val51 to i64
  %i.ci = icmp slt i64 %indvars.iv.next79, %i.ch
  br i1 %i.ci, label %.lr.ph72, label %.critedge4, !llvm.loop !105

.critedge4:                                       ; preds = %.lr.ph72, %bb.j, %.critedge2
  %i.cj = tail call ptr @Gia_ManCleanup(ptr noundef nonnull %i.b) #25
  tail call void @Gia_ManStop(ptr noundef nonnull %i.b) #25
  ret ptr %i.cj
}

; Function Attrs: nofree nounwind uwtable
define void @Gia_ManDumpTests(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %2, ptr noundef nonnull @.str.21) ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 4
  %.val15 = load i32, ptr %i.b, align 4, !tbaa !40
  %i.c = sdiv i32 %.val15, %1                     ; 3 uses
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge20

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = icmp sgt i32 %i.c, 0
  %i.f = getelementptr i8, ptr %0, i64 8
  br i1 %i.e, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us
  %.019.us.a = phi i32 [ %indvars.iv.next, %._crit_edge.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.01318.us = phi i32 [ %i.k, %._crit_edge.us ], [ 0, %.preheader.lr.ph ]
  %i.g = sext i32 %.019.us.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv = phi i64 [ %i.g, %.preheader.us ], [ %indvars.iv.next.a, %bb.b ] ; 2 uses
  %.01416.us = phi i32 [ 0, %.preheader.us ], [ %3, %bb.b ]
  %indvars.iv.next.a = add nsw i64 %indvars.iv, 1
  %.val.us = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = getelementptr inbounds [4 x i8], ptr %.val.us, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.2, i32 noundef %i.i) #25 ; 0 uses
  %3 = add nuw nsw i32 %.01416.us, 1              ; 2 uses
  %exitcond23.not = icmp eq i32 %3, %i.c
  br i1 %exitcond23.not, label %._crit_edge.us, label %bb.b, !llvm.loop !106

._crit_edge.us:                                   ; preds = %bb.b
  %i.k = add nuw nsw i32 %.01318.us, 1            ; 2 uses
  %fputc.us = tail call i32 @fputc(i32 10, ptr %i.a) ; 0 uses
  %indvars.iv.next = add i32 %.019.us.a, %i.c
  %exitcond24.not = icmp eq i32 %i.k, %1
  br i1 %exitcond24.not, label %._crit_edge20, label %.preheader.us, !llvm.loop !107

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.019 = phi i32 [ %i.l, %.preheader ], [ 0, %.preheader.lr.ph ]
  %i.l = add nuw nsw i32 %.019, 1                 ; 2 uses
  %fputc = tail call i32 @fputc(i32 10, ptr %i.a) ; 0 uses
  %exitcond.not = icmp eq i32 %i.l, %1
  br i1 %exitcond.not, label %._crit_edge20, label %.preheader, !llvm.loop !107

._crit_edge20:                                    ; preds = %.preheader, %._crit_edge.us, %bb.a
  %i.m = tail call i32 @fclose(ptr noundef %i.a)  ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_ManDumpTestsSimulate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %.val61 = load ptr, ptr %i.a, align 8, !tbaa !8 ; 2 uses
  %i.b = load i64, ptr %.val61, align 4
  %i.c = and i64 %i.b, -1073741825
  store i64 %i.c, ptr %.val61, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val6069 = load i32, ptr %i.f, align 4, !tbaa !40
  %i.g = icmp sgt i32 %.val6069, 0
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.i = phi ptr [ %i.e, %.lr.ph ], [ %i.w, %bb.c ]
  %.val63 = load ptr, ptr %i.a, align 8, !tbaa !8 ; 2 uses
  %.not = icmp eq ptr %.val63, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val64.val = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.val64.val, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !36
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [12 x i8], ptr %.val63, i64 %i.m ; 2 uses
  %.val54 = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val54, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !36
  %i.q = load i64, ptr %i.n, align 4
  %i.r = shl i32 %i.p, 30
  %i.s = and i32 %i.r, 1073741824
  %i.t = zext nneg i32 %i.s to i64
  %i.u = and i64 %i.q, -1073741825
  %i.v = or disjoint i64 %i.u, %i.t
  store i64 %i.v, ptr %i.n, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val60 = load i32, ptr %i.x, align 4, !tbaa !40
  %i.y = sext i32 %.val60 to i64
  %i.z = icmp slt i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %bb.b, label %.critedge, !llvm.loop !108

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !64 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph73, label %.critedge2

.lr.ph73:                                         ; preds = %.critedge, %bb.f
  %i.ad = phi i32 [ %i.bg, %bb.f ], [ %i.ab, %.critedge ]
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %bb.f ], [ 0, %.critedge ] ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %indvars.iv85 ; 4 uses
  %.not46 = icmp eq ptr %.val, null
  br i1 %.not46, label %.critedge2, label %bb.d

bb.d:                                             ; preds = %.lr.ph73
  %.val50 = load i64, ptr %i.ae, align 4          ; 6 uses
  %i.af = and i64 %.val50, 2147483648
  %.not.i = icmp ne i64 %i.af, 0
  %i.ag = and i64 %.val50, 536870911              ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 536870911
  %narrow.i.not = or i1 %.not.i, %i.ah
  br i1 %narrow.i.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = sub nsw i64 0, %i.ag
  %i.aj = getelementptr inbounds [12 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 4
  %i.al = trunc i64 %i.ak to i32
  %i.am = lshr i32 %i.al, 30
  %i.an = trunc i64 %.val50 to i32
  %i.ao = lshr i32 %i.an, 29
  %i.ap = xor i32 %i.am, %i.ao
  %i.aq = lshr i64 %.val50, 32
  %i.ar = and i64 %i.aq, 536870911
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds [12 x i8], ptr %i.ae, i64 %i.as
  %i.au = load i64, ptr %i.at, align 4
  %i.av = trunc i64 %i.au to i32
  %i.aw = lshr i32 %i.av, 30
  %i.ax = lshr i64 %.val50, 61
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = xor i32 %i.aw, %i.ay
  %i.ba = and i32 %i.ap, 1
  %i.bb = and i32 %i.ba, %i.az
  %i.bc = shl nuw nsw i32 %i.bb, 30
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = and i64 %.val50, -3221225473
  %i.bf = or disjoint i64 %i.be, %i.bd
  store i64 %i.bf, ptr %i.ae, align 4
  %.pre = load i32, ptr %i.aa, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bg = phi i32 [ %.pre, %bb.e ], [ %i.ad, %bb.d ] ; 2 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next86, %i.bh
  br i1 %i.bi, label %.lr.ph73, label %.critedge2, !llvm.loop !109

.critedge2:                                       ; preds = %.lr.ph73, %bb.f, %.critedge
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !38 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 4
  %.val5975 = load i32, ptr %i.bl, align 4, !tbaa !40
  %i.bm = icmp sgt i32 %.val5975, 0
  br i1 %i.bm, label %.lr.ph77, label %.critedge4

.lr.ph77:                                         ; preds = %.critedge2, %bb.g
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %bb.g ], [ 0, %.critedge2 ] ; 2 uses
  %i.bn = phi ptr [ %i.cc, %bb.g ], [ %i.bk, %.critedge2 ]
  %.val57 = load ptr, ptr %i.a, align 8, !tbaa !8 ; 2 uses
  %.not47 = icmp eq ptr %.val57, null
  br i1 %.not47, label %.critedge4, label %bb.g

bb.g:                                             ; preds = %.lr.ph77
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %.val58.val = load ptr, ptr %i.bo, align 8, !tbaa !39
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.val58.val, i64 %indvars.iv88
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !36
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [12 x i8], ptr %.val57, i64 %i.br ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 4            ; 3 uses
  %i.bu = and i64 %i.bt, 536870911
  %i.bv = sub nsw i64 0, %i.bu
  %i.bw = getelementptr inbounds [12 x i8], ptr %i.bs, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 4
  %i.by = shl i64 %i.bt, 1
  %.mask68 = xor i64 %i.by, %i.bx
  %i.bz = and i64 %.mask68, 1073741824
  %i.ca = and i64 %i.bt, -1073741825
  %i.cb = or disjoint i64 %i.bz, %i.ca
  store i64 %i.cb, ptr %i.bs, align 4
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.cc = load ptr, ptr %i.bj, align 8, !tbaa !38 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 4
  %.val59 = load i32, ptr %i.cd, align 4, !tbaa !40
  %i.ce = sext i32 %.val59 to i64
  %i.cf = icmp slt i64 %indvars.iv.next89, %i.ce
  br i1 %i.cf, label %.lr.ph77, label %.critedge4, !llvm.loop !110

.critedge4:                                       ; preds = %.lr.ph77, %bb.g, %.critedge2
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  store i32 0, ptr %i.cg, align 4, !tbaa !40
  %i.ch = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %.val6279 = load i32, ptr %i.ch, align 8, !tbaa !68 ; 2 uses
  %i.ci = icmp sgt i32 %.val6279, 0
  br i1 %i.ci, label %.lr.ph82, label %.critedge6

.lr.ph82:                                         ; preds = %.critedge4
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph82, %Vec_IntPush.exit
  %.val6281 = phi i32 [ %.val6279, %.lr.ph82 ], [ %.val62, %Vec_IntPush.exit ]
  %.380 = phi i32 [ 0, %.lr.ph82 ], [ %i.dq, %Vec_IntPush.exit ] ; 2 uses
  %.val55 = load ptr, ptr %i.a, align 8, !tbaa !8 ; 2 uses
  %.not48 = icmp eq ptr %.val55, null
  br i1 %.not48, label %.critedge6, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val66 = load ptr, ptr %i.bj, align 8, !tbaa !38 ; 2 uses
  %i.ck = getelementptr i8, ptr %.val66, i64 8
  %.val56.val = load ptr, ptr %i.ck, align 8, !tbaa !39
  %i.cl = getelementptr i8, ptr %.val66, i64 4
  %.val66.val = load i32, ptr %i.cl, align 4, !tbaa !40
end_hunk_0
