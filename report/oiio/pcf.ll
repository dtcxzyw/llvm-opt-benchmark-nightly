inline.NumInlined: 21
inline.NumDeleted: 9
begin_hunk_0_@pcf_interpret_style:bb.a
  br label %pred.store.continue413

pred.store.continue413:                           ; preds = %pred.store.if412, %pred.store.continue411
  %index.next414 = add nuw i64 %index347, 32      ; 2 uses
  %i.ku = icmp eq i64 %index.next414, %n.vec345
  br i1 %i.ku, label %middle.block415, label %vector.body346, !llvm.loop !181

middle.block415:                                  ; preds = %pred.store.continue413
  %cmp.n416 = icmp eq i64 %.sroa.12.0252, %n.vec345
  br i1 %cmp.n416, label %.loopexit.3, label %vec.epilog.iter.check420

vec.epilog.iter.check420:                         ; preds = %middle.block415
  %min.epilog.iters.check421 = icmp eq i64 %n.mod.vf344, 0
  br i1 %min.epilog.iters.check421, label %.lr.ph.3.preheader, label %vec.epilog.ph422, !prof !102

vec.epilog.ph422:                                 ; preds = %vector.main.loop.iter.check341, %vec.epilog.iter.check420
  %vec.epilog.resume.val417 = phi i64 [ %n.vec345, %vec.epilog.iter.check420 ], [ 0, %vector.main.loop.iter.check341 ]
  %n.vec424 = and i64 %.sroa.12.0252, -8          ; 3 uses
  br label %vec.epilog.vector.body425

vec.epilog.vector.body425:                        ; preds = %pred.store.continue443, %vec.epilog.ph422
  %index426 = phi i64 [ %vec.epilog.resume.val417, %vec.epilog.ph422 ], [ %index.next444, %pred.store.continue443 ] ; 9 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.174.3, i64 %index426 ; 2 uses
  %wide.load427 = load <8 x i8>, ptr %i.kv, align 1, !tbaa !40
  %i.kw = icmp eq <8 x i8> %wide.load427, splat (i8 32) ; 8 uses
  %i.kx = extractelement <8 x i1> %i.kw, i64 0
  br i1 %i.kx, label %pred.store.if428, label %pred.store.continue429

pred.store.if428:                                 ; preds = %vec.epilog.vector.body425
  store i8 45, ptr %i.kv, align 1, !tbaa !40
  br label %pred.store.continue429

pred.store.continue429:                           ; preds = %pred.store.if428, %vec.epilog.vector.body425
  %i.ky = extractelement <8 x i1> %i.kw, i64 1
  br i1 %i.ky, label %pred.store.if430, label %pred.store.continue431

pred.store.if430:                                 ; preds = %pred.store.continue429
  %i.kz = getelementptr inbounds nuw i8, ptr %.174.3, i64 %index426
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 1
  store i8 45, ptr %i.la, align 1, !tbaa !40
  br label %pred.store.continue431

pred.store.continue431:                           ; preds = %pred.store.if430, %pred.store.continue429
  %i.lb = extractelement <8 x i1> %i.kw, i64 2
  br i1 %i.lb, label %pred.store.if432, label %pred.store.continue433

pred.store.if432:                                 ; preds = %pred.store.continue431
  %i.lc = getelementptr inbounds nuw i8, ptr %.174.3, i64 %index426
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 2
  store i8 45, ptr %i.ld, align 1, !tbaa !40
  br label %pred.store.continue433

pred.store.continue433:                           ; preds = %pred.store.if432, %pred.store.continue431
  %i.le = extractelement <8 x i1> %i.kw, i64 3
  br i1 %i.le, label %pred.store.if434, label %pred.store.continue435

pred.store.if434:                                 ; preds = %pred.store.continue433
  %i.lf = getelementptr inbounds nuw i8, ptr %.174.3, i64 %index426
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 3
  store i8 45, ptr %i.lg, align 1, !tbaa !40
  br label %pred.store.continue435

pred.store.continue435:                           ; preds = %pred.store.if434, %pred.store.continue433
  %i.lh = extractelement <8 x i1> %i.kw, i64 4
  br i1 %i.lh, label %pred.store.if436, label %pred.store.continue437

pred.store.if436:                                 ; preds = %pred.store.continue435
  %i.li = getelementptr inbounds nuw i8, ptr %.174.3, i64 %index426
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  store i8 45, ptr %i.lj, align 1, !tbaa !40
  br label %pred.store.continue437

pred.store.continue437:                           ; preds = %pred.store.if436, %pred.store.continue435
  %i.lk = extractelement <8 x i1> %i.kw, i64 5
  br i1 %i.lk, label %pred.store.if438, label %pred.store.continue439

pred.store.if438:                                 ; preds = %pred.store.continue437
  %i.ll = getelementptr inbounds nuw i8, ptr %.174.3, i64 %index426
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 5
  store i8 45, ptr %i.lm, align 1, !tbaa !40
  br label %pred.store.continue439

pred.store.continue439:                           ; preds = %pred.store.if438, %pred.store.continue437
  %i.ln = extractelement <8 x i1> %i.kw, i64 6
  br i1 %i.ln, label %pred.store.if440, label %pred.store.continue441

pred.store.if440:                                 ; preds = %pred.store.continue439
  %i.lo = getelementptr inbounds nuw i8, ptr %.174.3, i64 %index426
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 6
  store i8 45, ptr %i.lp, align 1, !tbaa !40
  br label %pred.store.continue441

pred.store.continue441:                           ; preds = %pred.store.if440, %pred.store.continue439
  %i.lq = extractelement <8 x i1> %i.kw, i64 7
  br i1 %i.lq, label %pred.store.if442, label %pred.store.continue443

pred.store.if442:                                 ; preds = %pred.store.continue441
  %i.lr = getelementptr inbounds nuw i8, ptr %.174.3, i64 %index426
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 7
  store i8 45, ptr %i.ls, align 1, !tbaa !40
  br label %pred.store.continue443

pred.store.continue443:                           ; preds = %pred.store.if442, %pred.store.continue441
  %index.next444 = add nuw i64 %index426, 8       ; 2 uses
  %i.lt = icmp eq i64 %index.next444, %n.vec424
  br i1 %i.lt, label %vec.epilog.middle.block445, label %vec.epilog.vector.body425, !llvm.loop !182

vec.epilog.middle.block445:                       ; preds = %pred.store.continue443
  %cmp.n446 = icmp eq i64 %.sroa.12.0252, %n.vec424
  br i1 %cmp.n446, label %.loopexit.3, label %.lr.ph.3.preheader

.lr.ph.3.preheader:                               ; preds = %iter.check418, %vec.epilog.iter.check420, %vec.epilog.middle.block445
  %.0147.3.ph = phi i64 [ 0, %iter.check418 ], [ %n.vec345, %vec.epilog.iter.check420 ], [ %n.vec424, %vec.epilog.middle.block445 ]
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.3.preheader, %bb.aa
  %.0147.3 = phi i64 [ %i.lx, %bb.aa ], [ %.0147.3.ph, %.lr.ph.3.preheader ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.174.3, i64 %.0147.3 ; 2 uses
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !40
  %i.lw = icmp eq i8 %i.lv, 32
  br i1 %i.lw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.3
  store i8 45, ptr %i.lu, align 1, !tbaa !40
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.3
  %i.lx = add nuw i64 %.0147.3, 1                 ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.lx, %.sroa.12.0252
  br i1 %exitcond.3.not, label %.loopexit.3, label %.lr.ph.3, !llvm.loop !183

.loopexit.3:                                      ; preds = %bb.aa, %middle.block415, %vec.epilog.middle.block445, %bb.y
  %i.ly = getelementptr inbounds nuw i8, ptr %.174.3, i64 %.sroa.12.0252
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.3, %.preheader.3
  %.2.3 = phi ptr [ %i.ly, %.loopexit.3 ], [ %.2.2, %.preheader.3 ]
  store i8 0, ptr %.2.3, align 1, !tbaa !40
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %.thread223, %bb.ab
  %spec.select = phi i32 [ %i.bs, %.thread223 ], [ %.pre, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %spec.select
}

declare hidden ptr @ft_mem_strdup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden ptr @ft_mem_alloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @FT_MulDiv(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare hidden i32 @FT_Stream_Seek(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden i32 @FT_Stream_ReadFields(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden ptr @ft_mem_qrealloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare hidden void @ft_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @FT_Stream_ReadULongLE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @FT_Stream_ReadULong(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @FT_Stream_Skip(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @FT_Stream_Read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden ptr @ft_mem_realloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pcf_get_metric(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.PCF_Compressed_MetricRec_, align 4 ; 5 uses
  %i.a = and i64 %1, 4294967040
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %1, 4
  %.not16 = icmp eq i64 %i.c, 0
  %i.d = select i1 %.not16, ptr @pcf_metric_header, ptr @pcf_metric_msb_header
  %i.e = tail call i32 @FT_Stream_ReadFields(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %2) #13
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.f = call i32 @FT_Stream_ReadFields(ptr noundef %0, ptr noundef nonnull @pcf_compressed_metric_header, ptr noundef nonnull %3) #13 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load <4 x i8>, ptr %3, align 4, !tbaa !40
  %i.h = zext <4 x i8> %i.g to <4 x i16>
  %4 = add nsw <4 x i16> %i.h, splat (i16 -128)
  store <4 x i16> %4, ptr %2, align 8, !tbaa !105
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = load i8, ptr %i.i, align 4, !tbaa !156
  %i.k = zext i8 %i.j to i16
  %5 = add nsw i16 %i.k, -128
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 %5, ptr %6, align 8, !tbaa !69
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i16 0, ptr %7, align 2, !tbaa !157
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.015 = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.e ]
  ret i32 %.015
}

declare hidden zeroext i16 @FT_Stream_ReadUShort(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden zeroext i16 @FT_Stream_ReadUShortLE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @FT_Stream_EnterFrame(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden i32 @FT_Stream_GetULongLE(ptr noundef) local_unnamed_addr #2

declare hidden i32 @FT_Stream_GetULong(ptr noundef) local_unnamed_addr #2

declare hidden void @FT_Stream_ExitFrame(ptr noundef) local_unnamed_addr #2

declare hidden zeroext i16 @FT_Stream_GetUShort(ptr noundef) local_unnamed_addr #2

declare hidden zeroext i16 @FT_Stream_GetUShortLE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @pcf_cmap_init(ptr noundef captures(none) initializes((24, 32)) %0, ptr readnone captures(none) %1) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !184
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.c, align 8, !tbaa !187
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @pcf_cmap_done(ptr noundef writeonly captures(none) initializes((24, 32)) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.a, align 8, !tbaa !187
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 65536) i32 @pcf_cmap_char_index(ptr noundef readonly captures(none) %0, i32 noundef %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187  ; 5 uses
  %i.c = lshr i32 %1, 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i16, ptr %i.d, align 4, !tbaa !170
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = sub nsw i32 %i.c, %i.f                   ; 2 uses
  %i.h = and i32 %1, 255
  %i.i = load i16, ptr %i.b, align 8, !tbaa !168
  %i.j = zext i16 %i.i to i32                     ; 2 uses
  %i.k = sub nsw i32 %i.h, %i.j                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.m = load i16, ptr %i.l, align 2, !tbaa !171
  %i.n = zext i16 %i.m to i32
  %reass.sub = sub nsw i32 %i.n, %i.f
  %i.o = add nsw i32 %reass.sub, 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.q = load i16, ptr %i.p, align 2, !tbaa !169
  %i.r = zext i16 %i.q to i32
  %i.s = sub nsw i32 %i.r, %i.j
  %i.t = add nsw i32 %i.s, 1                      ; 2 uses
  %.not = icmp ult i32 %i.g, %i.o
  %.not20 = icmp ult i32 %i.k, %i.t
  %or.cond = select i1 %.not, i1 %.not20, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !174
  %i.w = mul i32 %i.t, %i.g
  %i.x = add i32 %i.w, %i.k
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !105
  %i.ab = zext i16 %i.aa to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.ab, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 65536) i32 @pcf_cmap_char_next(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187  ; 5 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !3
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = lshr i32 %i.d, 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = load i16, ptr %i.f, align 4, !tbaa !170
  %i.h = zext i16 %i.g to i32                     ; 3 uses
  %i.i = sub nsw i32 %i.e, %i.h
  %i.j = and i32 %i.d, 255
  %i.k = load i16, ptr %i.b, align 8, !tbaa !168
  %i.l = zext i16 %i.k to i32                     ; 3 uses
  %i.m = sub nsw i32 %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.o = load i16, ptr %i.n, align 2, !tbaa !171
  %i.p = zext i16 %i.o to i32
  %reass.sub = sub nsw i32 %i.p, %i.h             ; 2 uses
  %i.q = add nsw i32 %reass.sub, 1                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !169
  %i.t = zext i16 %i.s to i32
  %i.u = sub nsw i32 %i.t, %i.l
  %i.v = add nsw i32 %i.u, 1                      ; 3 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.i, i32 0) ; 3 uses
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.m, i32 0) ; 2 uses
  %i.w = icmp ult i32 %spec.store.select, %i.q
  br i1 %i.w, label %.preheader.lr.ph, label %.loopexit36

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.047 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1.lcssa, %._crit_edge ]
  %.02946 = phi i32 [ %spec.store.select, %.preheader.lr.ph ], [ %i.ah, %._crit_edge ] ; 4 uses
  %.03045 = phi i32 [ %spec.store.select1, %.preheader.lr.ph ], [ 0, %._crit_edge ] ; 2 uses
  %i.y = icmp ult i32 %.03045, %i.v
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !174
  %i.aa = mul i32 %.02946, %i.v
  %i.ab = zext nneg i32 %.03045 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.ac = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ad = add i32 %i.aa, %i.ac
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !105 ; 2 uses
  %.not = icmp eq i16 %i.ag, -1
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !190

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %.1.lcssa = phi i32 [ %.047, %.preheader ], [ 65535, %bb.c ] ; 2 uses
  %i.ah = add nuw i32 %.02946, 1
  %exitcond55.not = icmp eq i32 %.02946, %reass.sub
  br i1 %exitcond55.not, label %.loopexit36, label %.preheader, !llvm.loop !191

.loopexit:                                        ; preds = %bb.b
  %i.ai = zext i16 %i.ag to i32
  br label %.loopexit36

.loopexit36:                                      ; preds = %._crit_edge, %bb.a, %.loopexit
  %.02941 = phi i32 [ %.02946, %.loopexit ], [ %spec.store.select, %bb.a ], [ %i.q, %._crit_edge ]
  %.232 = phi i32 [ %i.ac, %.loopexit ], [ %spec.store.select1, %bb.a ], [ 0, %._crit_edge ]
  %.2 = phi i32 [ %i.ai, %.loopexit ], [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  %i.aj = add i32 %.02941, %i.h
  %i.ak = shl i32 %i.aj, 8
  %i.al = add i32 %.232, %i.l
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %1, align 4, !tbaa !3
  ret i32 %.2
}

declare hidden void @FT_Stream_Close(ptr noundef) local_unnamed_addr #2

declare hidden void @ft_synthesize_vertical_metrics(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden i32 @ft_glyphslot_alloc_bitmap(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

declare hidden void @FT_Select_Metrics(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.uadd.sat.i16(i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
