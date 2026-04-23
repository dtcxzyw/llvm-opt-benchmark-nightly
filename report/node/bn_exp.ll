inline.NumInlined: 16
inline.NumDeleted: 5
begin_hunk_0_@bn_power5
; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @MOD_EXP_CTIME_COPY_FROM_PREBUF(ptr noundef nonnull %0, i32 noundef range(i32 -2147483648, 1048576) %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef range(i32 1, 7) %4) unnamed_addr #0 {
bb.a:
  %i.a = shl nuw nsw i32 1, %4
  %.fr444 = freeze i32 %i.a                       ; 3 uses
  %i.b = tail call ptr @bn_wexpand(ptr noundef nonnull %0, i32 noundef %1) #7
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b
end_hunk_0
begin_hunk_1_@MOD_EXP_CTIME_COPY_FROM_PREBUF:bb.a
  br i1 %i.e, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader81
  %i.f = zext i32 %.fr444 to i64                  ; 3 uses
  %i.g = zext i32 %3 to i64                       ; 5 uses
  %wide.trip.count364 = zext nneg i32 %1 to i64
  %xtraiter438 = and i64 %i.f, 3                  ; 3 uses
  %5 = add i32 %.fr444, -1
  %i.h = icmp ult i32 %5, 3
  %unroll_iter442 = and i64 %i.f, 4294967292
  %lcmp.mod439.not = icmp eq i64 %xtraiter438, 0
  %lcmp.mod441 = icmp ne i64 %xtraiter438, 0
  br label %.preheader
end_hunk_1
begin_hunk_2_@MOD_EXP_CTIME_COPY_FROM_PREBUF:bb.a
  %i.ag = or i64 %i.af, %.069160.epil             ; 2 uses
  %indvars.iv.next356.epil = add nuw nsw i64 %indvars.iv355.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter438
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !60

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %.lcssa = phi i64 [ %i.ab, %.unr-lcssa ], [ %i.ag, %bb.c ]
  %6 = load ptr, ptr %0, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv361
  store i64 %.lcssa, ptr %i.ah, align 8, !tbaa !17
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.067162, i64 %i.f
end_hunk_2
begin_hunk_3_@MOD_EXP_CTIME_COPY_FROM_PREBUF:bb.a
  br i1 %exitcond365.not, label %.loopexit, label %.preheader, !llvm.loop !61

bb.d:                                             ; preds = %bb.b
  %i.aj = add nsw i32 %4, -2                      ; 4 uses
  %i.ak = shl nuw nsw i32 1, %i.aj
  %.fr = freeze i32 %i.ak                         ; 13 uses
  %i.al = ashr i32 %3, %i.aj
  %.fr164 = freeze i32 %i.al                      ; 2 uses
  %i.am = add nsw i32 %.fr, -1
  %i.an = and i32 %i.am, %3                       ; 4 uses
  %i.ao = icmp eq i32 %.fr164, 3                  ; 3 uses
  %i.ap = icmp sgt i32 %1, 0
end_hunk_3
begin_hunk_4_@MOD_EXP_CTIME_COPY_FROM_PREBUF:bb.a
.preheader82.lr.ph:                               ; preds = %bb.d
  %i.aq = shl nuw nsw i32 2, %i.aj                ; 4 uses
  %i.ar = shl nuw nsw i32 3, %i.aj                ; 4 uses
  %i.as = zext nneg i32 %.fr444 to i64            ; 4 uses
  %wide.trip.count199 = zext nneg i32 %1 to i64   ; 4 uses
  switch i32 %.fr164, label %.preheader82.preheader [
    i32 0, label %.preheader82.us.preheader
end_hunk_4
begin_hunk_5_@MOD_EXP_CTIME_COPY_FROM_PREBUF:bb.a
  ]

.preheader82.us.preheader:                        ; preds = %.preheader82.lr.ph
  %i.at = zext i32 %.fr to i64                    ; 3 uses
  %i.au = zext nneg i32 %i.aq to i64
  %i.av = zext nneg i32 %i.ar to i64
  %i.aw = zext nneg i32 %i.an to i64              ; 3 uses
  %xtraiter424 = and i64 %i.at, 1
  %i.ax = icmp eq i32 %.fr, 1
  %unroll_iter428 = and i64 %i.at, 4294967294
  %lcmp.mod425.not = icmp eq i64 %xtraiter424, 0
  %lcmp.mod427 = trunc i32 %.fr to i1
  br label %.preheader82.us

.preheader82.us:                                  ; preds = %.preheader82.us.preheader, %.split.us.us.split.split.split
end_hunk_5
begin_hunk_6_@MOD_EXP_CTIME_COPY_FROM_PREBUF:bb.a
  %i.br = load volatile i64, ptr %gep395.epil, align 8, !tbaa !17 ; 0 uses
  %gep397.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep396, i64 %indvars.iv267.epil.init
  %i.bs = load volatile i64, ptr %gep397.epil, align 8, !tbaa !17 ; 0 uses
  %i.bt = icmp eq i64 %indvars.iv267.epil.init, %i.aw
  %i.bu = select i1 %i.bt, i64 %i.bp, i64 0
  %i.bv = or i64 %i.bu, %.085.us.us.epil.init
  br label %.split.us.us.split.split.split

.split.us.us.split.split.split:                   ; preds = %.split.us.us.split.split.split.unr-lcssa, %.epil.preheader423
  %.lcssa409 = phi i64 [ %i.bn, %.split.us.us.split.split.split.unr-lcssa ], [ %i.bv, %.epil.preheader423 ]
  %7 = load ptr, ptr %0, align 8, !tbaa !16
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv273
  store i64 %.lcssa409, ptr %i.bw, align 8, !tbaa !17
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.16898.us, i64 %i.as
end_hunk_6
begin_hunk_7_@MOD_EXP_CTIME_COPY_FROM_PREBUF:bb.a
  br i1 %exitcond277.not, label %.loopexit, label %.preheader82.us, !llvm.loop !63

.preheader82.us102.preheader:                     ; preds = %.preheader82.lr.ph
  %i.by = zext i32 %.fr to i64                    ; 3 uses
  %i.bz = zext nneg i32 %i.aq to i64
  %i.ca = zext nneg i32 %i.ar to i64
  %i.cb = zext nneg i32 %i.an to i64              ; 3 uses
  %xtraiter417 = and i64 %i.by, 1
  %i.cc = icmp eq i32 %.fr, 1
  %unroll_iter421 = and i64 %i.by, 4294967294
  %lcmp.mod418.not = icmp eq i64 %xtraiter417, 0
  %lcmp.mod420 = trunc i32 %.fr to i1
  br label %.preheader82.us102

.preheader82.us102:                               ; preds = %.preheader82.us102.preheader, %.split.split.us.us.split.split
end_hunk_7
begin_hunk_8_@MOD_EXP_CTIME_COPY_FROM_PREBUF:bb.a
  %i.cw = load volatile i64, ptr %gep389.epil, align 8, !tbaa !17 ; 0 uses
  %gep391.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep390, i64 %indvars.iv223.epil.init
  %i.cx = load volatile i64, ptr %gep391.epil, align 8, !tbaa !17 ; 0 uses
  %i.cy = icmp eq i64 %indvars.iv223.epil.init, %i.cb
  %i.cz = select i1 %i.cy, i64 %i.cv, i64 0
  %i.da = or i64 %i.cz, %.085.us86.us.epil.init
  br label %.split.split.us.us.split.split

.split.split.us.us.split.split:                   ; preds = %.split.split.us.us.split.split.unr-lcssa, %.epil.preheader416
  %.lcssa411 = phi i64 [ %i.cs, %.split.split.us.us.split.split.unr-lcssa ], [ %i.da, %.epil.preheader416 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !16
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv229
  store i64 %.lcssa411, ptr %i.db, align 8, !tbaa !17
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.16898.us104, i64 %i.as
end_hunk_8
begin_hunk_9_@MOD_EXP_CTIME_COPY_FROM_PREBUF:bb.a
  br i1 %exitcond233.not, label %.loopexit, label %.preheader82.us102, !llvm.loop !63

.preheader82.preheader:                           ; preds = %.preheader82.lr.ph
  %i.dd = zext nneg i32 %i.an to i64              ; 3 uses
  %i.de = zext i32 %.fr to i64                    ; 3 uses
  %i.df = zext nneg i32 %i.aq to i64
  %i.dg = zext nneg i32 %i.ar to i64
  %xtraiter431 = and i64 %i.de, 1
  %i.dh = icmp eq i32 %.fr, 1
  %unroll_iter435 = and i64 %i.de, 4294967294
  %lcmp.mod432.not = icmp eq i64 %xtraiter431, 0
  %lcmp.mod434 = trunc i32 %.fr to i1
  br label %.preheader82

.preheader82.us105.preheader:                     ; preds = %.preheader82.lr.ph
  %i.di = zext i32 %.fr to i64                    ; 3 uses
  %i.dj = zext nneg i32 %i.aq to i64
  %i.dk = zext nneg i32 %i.ar to i64
  %i.dl = zext nneg i32 %i.an to i64              ; 3 uses
  %xtraiter = and i64 %i.di, 1
  %i.dm = icmp eq i32 %.fr, 1
  %unroll_iter = and i64 %i.di, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod415 = trunc i32 %.fr to i1
  br label %.preheader82.us105

.preheader82.us105:                               ; preds = %.preheader82.us105.preheader, %.split.split.split.us.us.split
end_hunk_9
begin_hunk_10_@MOD_EXP_CTIME_COPY_FROM_PREBUF:bb.a
  %i.eg = load volatile i64, ptr %gep383.epil, align 8, !tbaa !17
  %gep385.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep384, i64 %indvars.iv201.epil.init
  %i.eh = load volatile i64, ptr %gep385.epil, align 8, !tbaa !17 ; 0 uses
  %i.ei = icmp eq i64 %indvars.iv201.epil.init, %i.dl
  %i.ej = select i1 %i.ei, i64 %i.eg, i64 0
  %i.ek = or i64 %i.ej, %.085.us92.us.epil.init
  br label %.split.split.split.us.us.split

.split.split.split.us.us.split:                   ; preds = %.split.split.split.us.us.split.unr-lcssa, %.epil.preheader
  %.lcssa413 = phi i64 [ %i.ec, %.split.split.split.us.us.split.unr-lcssa ], [ %i.ek, %.epil.preheader ]
  %9 = load ptr, ptr %0, align 8, !tbaa !16
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv207
  store i64 %.lcssa413, ptr %i.el, align 8, !tbaa !17
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.16898.us107, i64 %i.as
end_hunk_10
begin_hunk_11_@MOD_EXP_CTIME_COPY_FROM_PREBUF:bb.a
  %i.fi = load volatile i64, ptr %gep377.epil, align 8, !tbaa !17 ; 0 uses
  %gep379.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep378, i64 %indvars.iv.epil.init
  %i.fj = load volatile i64, ptr %gep379.epil, align 8, !tbaa !17
  %i.fk = icmp eq i64 %indvars.iv.epil.init, %i.dd
  %i.fl = and i1 %i.fk, %i.ao
  %i.fm = select i1 %i.fl, i64 %i.fj, i64 0
  %i.fn = or i64 %i.fm, %.085.epil.init
end_hunk_11
begin_hunk_12_@MOD_EXP_CTIME_COPY_FROM_PREBUF:bb.a

.split.split.split:                               ; preds = %.split.split.split.unr-lcssa, %.epil.preheader430
  %.lcssa407 = phi i64 [ %i.fe, %.split.split.split.unr-lcssa ], [ %i.fn, %.epil.preheader430 ]
  %10 = load ptr, ptr %0, align 8, !tbaa !16
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv196
  store i64 %.lcssa407, ptr %i.fo, align 8, !tbaa !17
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.16898, i64 %i.as
end_hunk_12
