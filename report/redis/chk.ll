inline.NumInlined: 21
inline.NumDeleted: 8
begin_hunk_0_@chkTopKRelease:.preheader
  %i.f = sub i64 %i.e, %i.d
  store i64 %i.f, ptr %i.b, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  call void @zfree_usable(ptr noundef %i.h, ptr noundef nonnull %i.a) #17
  %i.i = load i64, ptr %i.a, align 8, !tbaa !20
  %i.j = load i64, ptr %i.b, align 8, !tbaa !24
  %i.k = sub i64 %i.j, %i.i
  store i64 %i.k, ptr %i.b, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6224 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !31   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.a

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28
  call void @zfree_usable(ptr noundef %i.q, ptr noundef nonnull %i.a) #17
  %i.r = load i64, ptr %i.a, align 8, !tbaa !20
  %i.s = load i64, ptr %i.b, align 8, !tbaa !24
  %i.t = sub i64 %i.s, %i.r
  store i64 %i.t, ptr %i.b, align 8, !tbaa !24
  call void @zfree(ptr noundef nonnull %0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.h
  %i.u = phi i32 [ %i.m, %.lr.ph ], [ %i.au, %bb.h ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35   ; 7 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %.val.i = load i8, ptr %i.z, align 1, !tbaa !36 ; 2 uses
  %i.aa = and i8 %.val.i, 7
  switch i8 %i.aa, label %sdsAllocSize.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.ab = lshr i8 %.val.i, 3
  %narrow.i = add nuw nsw i8 %i.ab, 2
  %i.ac = zext nneg i8 %narrow.i to i64
  br label %sdsAllocSize.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 -2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !36
  %i.af = zext i8 %i.ae to i64
  %i.ag = add nuw nsw i64 %i.af, 4
  br label %sdsAllocSize.exit

bb.e:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds i8, ptr %i.y, i64 -3
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !37
  %i.aj = zext i16 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.aj, 6
  br label %sdsAllocSize.exit

bb.f:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds i8, ptr %i.y, i64 -5
  %i.am = load i32, ptr %i.al, align 1, !tbaa !9
  %i.an = zext i32 %i.am to i64
  %i.ao = add nuw nsw i64 %i.an, 10
  br label %sdsAllocSize.exit

bb.g:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds i8, ptr %i.y, i64 -9
  %i.aq = load i64, ptr %i.ap, align 1, !tbaa !20
  %i.ar = add i64 %i.aq, 18
  br label %sdsAllocSize.exit

sdsAllocSize.exit:                                ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.ar, %bb.g ], [ %i.ac, %bb.c ], [ %i.ag, %bb.d ], [ %i.ak, %bb.e ], [ %i.ao, %bb.f ], [ 0, %bb.b ]
  %i.as = load i64, ptr %i.b, align 8, !tbaa !24
  %i.at = sub i64 %i.as, %.0.i
  store i64 %i.at, ptr %i.b, align 8, !tbaa !24
  call void @sdsfree(ptr noundef nonnull %i.y) #17
  %.pre = load i32, ptr %i.l, align 8, !tbaa !31
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %sdsAllocSize.exit
  %i.au = phi i32 [ %i.u, %bb.a ], [ %.pre, %sdsAllocSize.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %bb.a, label %._crit_edge, !llvm.loop !39
}

declare void @zfree_usable(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sdsfree(ptr noundef) local_unnamed_addr #3

declare void @zfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable
define dso_local void @generateItemFpAndIdxs(ptr dead_on_unwind noalias writable writeonly sret(%struct.fpAndIdx) align 8 captures(none) initializes((0, 18)) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = tail call i64 @XXH3_64bits_withSeed(ptr noundef captures(none) %2, i64 noundef %i.a, i64 noundef 0) #19 ; 3 uses
  %i.c = trunc i64 %i.b to i16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.c, ptr %i.d, align 8, !tbaa !40
  %i.e = lshr i64 %i.b, 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 6228
  %i.g = load i32, ptr %i.f, align 4, !tbaa !32
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = and i64 %i.e, %i.i                       ; 2 uses
  store i64 %i.j, ptr %0, align 8, !tbaa !20
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = trunc i64 %i.b to i32
  %i.m = and i32 %i.l, 65535
  %i.n = mul i32 %i.m, 1540483477
  %i.o = xor i32 %i.n, %i.k
  %i.p = and i32 %i.o, %i.h
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @XXH3_64bits_withSeed(ptr noundef captures(none), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @checkHeavyEntries(ptr noundef readonly captures(none) %0, ptr noundef readonly byval(%struct.fpAndIdx) align 8 captures(none) %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i16, ptr %i.a, align 8              ; 5 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !20
  %i.d = load ptr, ptr %0, align 8, !tbaa !27
  %sext = shl i64 %i.c, 32
  %i.e = ashr exact i64 %sext, 32
  %i.f = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.e ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %.not.not = icmp eq i64 %i.g, 0
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i16, ptr %i.h, align 8, !tbaa !44
  %i.j = icmp eq i16 %i.i, %i.b
  br i1 %i.j, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %spec.select.1 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %.340.ph = phi i32 [ -1, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %.not.1 = icmp eq i64 %i.l, 0
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.n = load i16, ptr %i.m, align 8, !tbaa !44
  %i.o = icmp eq i16 %i.n, %i.b
  br i1 %i.o, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.340.ph.1 = phi i32 [ %.340.ph, %bb.d ], [ %spec.select.1, %bb.c ] ; 2 uses
  %.3.ph.1 = phi i32 [ %.340.ph, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27
  %sext.1 = shl i64 %i.q, 32
  %i.t = ashr exact i64 %sext.1, 32
  %i.u = getelementptr inbounds [40 x i8], ptr %i.s, i64 %i.t ; 5 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !42   ; 2 uses
  %.not.197 = icmp eq i64 %i.v, 0
  br i1 %.not.197, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i16, ptr %i.w, align 8, !tbaa !44
  %i.y = icmp eq i16 %i.x, %i.b
  br i1 %i.y, label %bb.k, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.z = icmp eq i32 %.3.ph.1, -1                 ; 2 uses
  %spec.select.198 = select i1 %i.z, i32 0, i32 %.340.ph.1
  %spec.select49.199 = select i1 %i.z, i32 1, i32 %.3.ph.1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.340.ph.1100 = phi i32 [ %spec.select.198, %bb.g ], [ %.340.ph.1, %bb.f ] ; 2 uses
  %.3.ph.1101 = phi i32 [ %spec.select49.199, %bb.g ], [ %.3.ph.1, %bb.f ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !42 ; 2 uses
  %.not.1.1 = icmp eq i64 %i.ab, 0
  br i1 %.not.1.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !44
  %i.ae = icmp eq i16 %i.ad, %i.b
  br i1 %i.ae, label %bb.k, label %.thread68

bb.j:                                             ; preds = %bb.h
  %i.af = icmp eq i32 %.3.ph.1101, -1             ; 2 uses
  %spec.select.1.1 = select i1 %i.af, i32 1, i32 %.340.ph.1100 ; 2 uses
  br i1 %i.af, label %.thread68.thread, label %.thread68

.thread68:                                        ; preds = %bb.j, %bb.i
  %.340.ph.1.1 = phi i32 [ %spec.select.1.1, %bb.j ], [ %.340.ph.1100, %bb.i ]
  %i.ag = icmp eq i32 %.3.ph.1101, -1
  br i1 %i.ag, label %bb.l, label %.thread68.thread

bb.k:                                             ; preds = %bb.i, %bb.f, %bb.d, %bb.b
  %.04385.lcssa = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.f ], [ 1, %bb.i ]
  %.03683.lcssa.wide = phi i32 [ 0, %bb.b ], [ 1, %bb.d ], [ 0, %bb.f ], [ 1, %bb.i ]
  %.lcssa91 = phi ptr [ %i.f, %bb.b ], [ %i.k, %bb.d ], [ %i.u, %bb.f ], [ %i.aa, %bb.i ]
  %.lcssa = phi i64 [ %i.g, %bb.b ], [ %i.l, %bb.d ], [ %i.v, %bb.f ], [ %i.ab, %bb.i ]
  %i.ah = add i64 %.lcssa, %2
  store i64 %i.ah, ptr %.lcssa91, align 8, !tbaa !42
  br label %bb.l

.thread68.thread:                                 ; preds = %bb.j, %.thread68
  %.3.ph.1.1108 = phi i32 [ %.3.ph.1101, %.thread68 ], [ 1, %bb.j ] ; 2 uses
  %.340.ph.1.1107 = phi i32 [ %.340.ph.1.1, %.thread68 ], [ %spec.select.1.1, %bb.j ] ; 2 uses
  %i.ai = zext nneg i32 %.3.ph.1.1108 to i64      ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !27
  %sext48 = shl i64 %i.ak, 32
  %i.an = ashr exact i64 %sext48, 32
  %i.ao = getelementptr inbounds [40 x i8], ptr %i.am, i64 %i.an
  %i.ap = sext i32 %.340.ph.1.1107 to i64
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i16 %i.b, ptr %i.ar, align 8, !tbaa !44
  store i64 %2, ptr %i.aq, align 8, !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread68, %.thread68.thread
  %.sroa.0.5 = phi i32 [ %.04385.lcssa, %bb.k ], [ %.3.ph.1.1108, %.thread68.thread ], [ -1, %.thread68 ]
  %.sroa.4.5 = phi i32 [ %.03683.lcssa.wide, %bb.k ], [ %.340.ph.1.1107, %.thread68.thread ], [ -1, %.thread68 ]
  %.sroa.4.0.insert.ext = zext i32 %.sroa.4.5 to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.5 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @isHeavyHitter(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = uitofp i64 %1 to double
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6216
  %i.c = load i64, ptr %i.b, align 8, !tbaa !45
  %i.d = uitofp i64 %i.c to double
  %i.e = fmul nnan double %i.d, 8.000000e-03
  %i.f = fcmp ole double %i.e, %i.a
  %i.g = zext i1 %i.f to i32
  ret i32 %i.g
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @kickout(ptr noundef readonly captures(none) %0, i64 %1, i16 %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #10 {
bb.a:
  %.sroa.7 = alloca [6 x i8], align 2             ; 3 uses
  %.sroa.534 = alloca [6 x i8], align 2           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6216
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6228
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %.sroa.5.061 = phi i16 [ %2, %bb.a ], [ %.sroa.4.0.copyload, %bb.e ] ; 3 uses
  %.sroa.0.060 = phi i64 [ %1, %bb.a ], [ %.sroa.033.0.copyload, %bb.e ] ; 3 uses
  %.04259 = phi i32 [ 0, %bb.a ], [ %i.aa, %bb.e ]
  %.04358 = phi i32 [ %4, %bb.a ], [ %i.h, %bb.e ]
  %.04457 = phi i32 [ %3, %bb.a ], [ %i.n, %bb.e ]
  %i.c = uitofp i64 %.sroa.0.060 to double
  %i.d = load i64, ptr %i.a, align 8, !tbaa !45
  %i.e = uitofp i64 %i.d to double
  %i.f = fmul nnan double %i.e, 8.000000e-03
  %i.g = fcmp ugt double %i.f, %i.c
  br i1 %i.g, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sub nsw i32 1, %.04358                   ; 2 uses
  %i.i = load i32, ptr %i.b, align 4, !tbaa !32
  %i.j = zext i16 %.sroa.5.061 to i32
  %i.k = mul i32 %i.j, 1540483477
  %i.l = xor i32 %i.k, %.04457
  %i.m = add nsw i32 %i.i, -1
  %i.n = and i32 %i.m, %i.l                       ; 2 uses
  %i.o = sext i32 %i.h to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = sext i32 %i.n to i64
  %i.s = getelementptr inbounds [40 x i8], ptr %i.q, i64 %i.r ; 5 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !42   ; 3 uses
  %.not46 = icmp eq i64 %i.t, 0
  br i1 %.not46, label %.split.loop.exit70, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !42   ; 2 uses
  %.not46.1 = icmp eq i64 %i.v, 0
  br i1 %.not46.1, label %.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i64 %i.t, -1
  %i.w = icmp ult i64 %i.v, %i.t
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.534)
  %i.x = sext i1 %.not to i64
  %i.y = select i1 %i.w, i64 1, i64 %i.x
  %i.z = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.y ; 4 uses
  %.sroa.033.0.copyload = load i64, ptr %i.z, align 8, !tbaa !20
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.sroa.4.0.copyload = load i16, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !37
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 10 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.534, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.534.0..sroa_idx, i64 6, i1 false), !tbaa.struct !46
  store i64 %.sroa.0.060, ptr %i.z, align 8, !tbaa !20
  store i16 %.sroa.5.061, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.534.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7, i64 6, i1 false), !tbaa.struct !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.534, i64 6, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.534)
  %i.aa = add nuw nsw i32 %.04259, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.aa, 16
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !47

.split.loop.exit:                                 ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %.split.loop.exit70

.split.loop.exit70:                               ; preds = %bb.c, %.split.loop.exit
  %.lcssa = phi ptr [ %i.ab, %.split.loop.exit ], [ %i.s, %bb.c ] ; 3 uses
  store i64 %.sroa.0.060, ptr %.lcssa, align 8, !tbaa !20
  %.sroa.5.0..0.3.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  store i16 %.sroa.5.061, ptr %.sroa.5.0..0.3.sroa_idx, align 8, !tbaa !37
  %.sroa.7.0..0.3.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.0..0.3.sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7, i64 6, i1 false), !tbaa.struct !46
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.e, %.split.loop.exit70
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @tryPromoteAndKickout(ptr noundef readonly captures(none) %0, ptr noundef readonly byval(%struct.fpAndIdx) align 8 captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %.sroa.7.i = alloca [6 x i8], align 2           ; 5 uses
  %.sroa.534.i = alloca [6 x i8], align 2         ; 4 uses
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  %sext = shl i64 %i.c, 32
  %i.g = ashr exact i64 %sext, 32
  %i.h = getelementptr inbounds [40 x i8], ptr %i.f, i64 %i.g ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !42   ; 4 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %.04553.lcssa.wide = phi i32 [ 0, %bb.a ], [ 1, %bb.c ]
  %.lcssa68 = phi ptr [ %i.h, %bb.a ], [ %i.n, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i16, ptr %i.k, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %.lcssa68, i64 8
  store i16 %i.l, ptr %i.m, align 8, !tbaa !44
  store i64 %2, ptr %.lcssa68, align 8, !tbaa !42
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !42   ; 3 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.c
  %.not = icmp eq i64 %i.i, -1
  %spec.select = sext i1 %.not to i32
  %i.q = icmp ult i64 %i.o, %i.i
  %spec.select.1 = select i1 %i.q, i32 1, i32 %spec.select ; 2 uses
  %spec.select47.1 = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.i) ; 2 uses
  %i.r = icmp ugt i64 %spec.select47.1, %2
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.s = add i64 %2, -16
  %i.t = uitofp i64 %i.s to double
  %i.u = add i64 %spec.select47.1, -16
  %i.v = uitofp i64 %i.u to double
  %i.w = fdiv double %i.t, %i.v
  %i.x = tail call i32 @rand() #17
  %i.y = sitofp i32 %i.x to double
  %i.z = fdiv double %i.y, f0x41DFFFFFFFC00000
  %i.aa = fcmp ult double %i.z, %i.w
  br i1 %i.aa, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d, %.critedge
  %i.ab = sext i32 %spec.select.1 to i64
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.ab ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.ac, align 8, !tbaa !20
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %.sroa.4.0.copyload = load i16, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !48
  store i16 %i.ae, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 34
  store i8 0, ptr %i.af, align 2, !tbaa !51
  store i16 0, ptr %i.ad, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 6216
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6228
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.sroa.5.061.i = phi i16 [ %.sroa.4.0.copyload, %bb.e ], [ %.sroa.4.0.copyload.i, %bb.i ] ; 3 uses
  %.sroa.0.060.i = phi i64 [ %.sroa.0.0.copyload, %bb.e ], [ %.sroa.033.0.copyload.i, %bb.i ] ; 3 uses
  %.04259.i = phi i32 [ 0, %bb.e ], [ %i.bg, %bb.i ]
  %.04358.i = phi i32 [ %3, %bb.e ], [ %i.an, %bb.i ]
  %.04457.i = phi i32 [ %i.d, %bb.e ], [ %i.at, %bb.i ]
  %i.ai = uitofp i64 %.sroa.0.060.i to double
end_hunk_0
begin_hunk_1_@checkLobbyEntries:bb.a
  %.sroa.0.0.insert.ext = zext i32 %spec.select to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @chkDecayCounter(ptr noundef readonly captures(none) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  switch i64 %2, label %bb.c [
    i64 0, label %._crit_edge
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = zext i8 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4144
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.a
  %i.d = load double, ptr %i.c, align 8, !tbaa !33
  %i.e = tail call i32 @rand() #17
  %i.f = sitofp i32 %i.e to double
  %i.g = fdiv double %i.f, f0x41DFFFFFFFC00000
  %i.h = fcmp olt double %i.g, %i.d
  %i.i = sext i1 %i.h to i8
  %.0 = add i8 %1, %i.i
  br label %._crit_edge

bb.c:                                             ; preds = %bb.a
  %i.j = zext i8 %1 to i64                        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2088
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load double, ptr %i.l, align 8, !tbaa !33 ; 2 uses
  %i.n = fptoui double %i.m to i64
  %i.o = icmp ult i64 %2, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = uitofp i64 %2 to double
  %i.q = fdiv double %i.p, %i.m
  %i.r = tail call i32 @rand() #17
  %i.s = sitofp i32 %i.r to double
  %i.t = fdiv double %i.s, f0x41DFFFFFFFC00000
  %i.u = fcmp olt double %i.t, %i.q
  %i.v = sext i1 %i.u to i8
  %.1 = add i8 %1, %i.v
  br label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.j
  %i.y = load double, ptr %i.x, align 8, !tbaa !33 ; 2 uses
  %i.z = fptoui double %i.y to i64
  %.not = icmp uge i64 %2, %i.z
  %.not42 = icmp eq i8 %1, 0
  %or.cond = or i1 %.not, %.not42
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.aa = zext i8 %1 to i32
  %i.ab = uitofp i64 %2 to double
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.03541 = phi i32 [ %i.aa, %.lr.ph ], [ %.136, %bb.f ] ; 2 uses
  %.03740 = phi i32 [ 0, %.lr.ph ], [ %.138, %bb.f ] ; 3 uses
  %i.ac = sub nsw i32 %.03541, %.03740
  %i.ad = lshr i32 %i.ac, 1
  %i.ae = add nuw nsw i32 %i.ad, %.03740          ; 3 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !33
  %i.ai = fadd double %i.ah, %i.ab
  %i.aj = fcmp ult double %i.ai, %i.y             ; 2 uses
  %i.ak = add nuw nsw i32 %i.ae, 1
  %.138 = select i1 %i.aj, i32 %i.ak, i32 %.03740 ; 3 uses
  %.136 = select i1 %i.aj, i32 %.03541, i32 %i.ae ; 2 uses
  %i.al = icmp slt i32 %.138, %.136
  br i1 %i.al, label %bb.f, label %._crit_edge.loopexit, !llvm.loop !54

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.am = trunc i32 %.138 to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d, %bb.e, %bb.a, %bb.b
  %.4 = phi i8 [ %1, %bb.a ], [ %.0, %bb.b ], [ %.1, %bb.d ], [ 0, %bb.e ], [ %i.am, %._crit_edge.loopexit ]
  ret i8 %.4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @chkTopKUpdate(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %.sroa.6.i139 = alloca { ptr, i64 }, align 8    ; 4 uses
  %.sroa.6.i = alloca { ptr, i64 }, align 8       ; 4 uses
  %4 = alloca %struct.fpAndIdx, align 8           ; 9 uses
  %5 = alloca %struct.fpAndIdx, align 8           ; 14 uses
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.bu, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6216 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !45
  %i.d = add i64 %i.c, %3
  store i64 %i.d, ptr %i.b, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.e = sext i32 %2 to i64                       ; 5 uses
  %i.f = tail call i64 @XXH3_64bits_withSeed(ptr noundef readonly captures(none) %1, i64 noundef %i.e, i64 noundef 0) #19, !noalias !55 ; 4 uses
  %i.g = trunc i64 %i.f to i16                    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %i.g, ptr %i.h, align 8, !tbaa !40, !alias.scope !55
  %i.i = lshr i64 %i.f, 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6228
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32, !noalias !55
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = and i64 %i.i, %i.m                       ; 3 uses
  store i64 %i.n, ptr %5, align 8, !tbaa !20, !alias.scope !55
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = trunc i64 %i.f to i32
  %i.q = and i32 %i.p, 65535
  %i.r = mul i32 %i.q, 1540483477
  %i.s = xor i32 %i.r, %i.o
  %i.t = and i32 %i.s, %i.l
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !20, !alias.scope !55
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i16, ptr %i.w, align 8              ; 5 uses
  %i.y = load i64, ptr %4, align 8, !tbaa !20
  %i.z = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %sext.i = shl i64 %i.y, 32
  %i.aa = ashr exact i64 %sext.i, 32
  %i.ab = getelementptr inbounds [40 x i8], ptr %i.z, i64 %i.aa ; 5 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %.not.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !44
  %i.af = icmp eq i16 %i.ae, %i.x
  br i1 %i.af, label %checkHeavyEntries.exit.thread215, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %spec.select.1.i = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  %.340.ph.i = phi i32 [ -1, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !42 ; 2 uses
  %.not.1.i = icmp eq i64 %i.ah, 0
  br i1 %.not.1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.aj = load i16, ptr %i.ai, align 8, !tbaa !44
  %i.ak = icmp eq i16 %i.aj, %i.x
  br i1 %i.ak, label %checkHeavyEntries.exit.thread215, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.340.ph.1.i = phi i32 [ %.340.ph.i, %bb.e ], [ %spec.select.1.i, %bb.d ] ; 2 uses
  %.3.ph.1.i = phi i32 [ %.340.ph.i, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27
  %sext.1.i = shl i64 %i.am, 32
  %i.ap = ashr exact i64 %sext.1.i, 32
  %i.aq = getelementptr inbounds [40 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !42 ; 2 uses
  %.not.197.i = icmp eq i64 %i.ar, 0
  br i1 %.not.197.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load i16, ptr %i.as, align 8, !tbaa !44
  %i.au = icmp eq i16 %i.at, %i.x
  br i1 %i.au, label %checkHeavyEntries.exit.thread215, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.av = icmp eq i32 %.3.ph.1.i, -1              ; 2 uses
  %spec.select.198.i = select i1 %i.av, i32 0, i32 %.340.ph.1.i
  %spec.select49.199.i = select i1 %i.av, i32 1, i32 %.3.ph.1.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.340.ph.1100.i = phi i32 [ %spec.select.198.i, %bb.h ], [ %.340.ph.1.i, %bb.g ] ; 2 uses
  %.3.ph.1101.i = phi i32 [ %spec.select49.199.i, %bb.h ], [ %.3.ph.1.i, %bb.g ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !42 ; 2 uses
  %.not.1.1.i = icmp eq i64 %i.ax, 0
  br i1 %.not.1.1.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !44
  %i.ba = icmp eq i16 %i.az, %i.x
  br i1 %i.ba, label %checkHeavyEntries.exit.thread215, label %.thread68.i

bb.k:                                             ; preds = %bb.i
  %i.bb = icmp eq i32 %.3.ph.1101.i, -1           ; 2 uses
  %spec.select169 = select i1 %i.bb, i32 1, i32 %.340.ph.1100.i
  %spec.select233 = select i1 %i.bb, i32 1, i32 %.3.ph.1101.i
  br label %checkHeavyEntries.exit

.thread68.i:                                      ; preds = %bb.j
  %i.bc = icmp eq i32 %.3.ph.1101.i, -1
  br i1 %i.bc, label %checkHeavyEntries.exit.thread, label %checkHeavyEntries.exit

checkHeavyEntries.exit.thread:                    ; preds = %.thread68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.l

checkHeavyEntries.exit.thread215:                 ; preds = %bb.c, %bb.e, %bb.g, %bb.j
  %.04385.lcssa.i = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %bb.g ], [ 1, %bb.j ]
  %.03683.lcssa.wide.i = phi i32 [ 0, %bb.c ], [ 1, %bb.e ], [ 0, %bb.g ], [ 1, %bb.j ]
  %.lcssa91.i = phi ptr [ %i.ab, %bb.c ], [ %i.ag, %bb.e ], [ %i.aq, %bb.g ], [ %i.aw, %bb.j ]
  %.lcssa.i = phi i64 [ %i.ac, %bb.c ], [ %i.ah, %bb.e ], [ %i.ar, %bb.g ], [ %i.ax, %bb.j ]
  %i.bd = add i64 %.lcssa.i, %3
  store i64 %i.bd, ptr %.lcssa91.i, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %checkLobbyEntries.exit

checkHeavyEntries.exit:                           ; preds = %bb.k, %.thread68.i
  %.3.ph.1.1108.i = phi i32 [ %.3.ph.1101.i, %.thread68.i ], [ %spec.select233, %bb.k ] ; 3 uses
  %.340.ph.1.1107.i = phi i32 [ %.340.ph.1100.i, %.thread68.i ], [ %spec.select169, %bb.k ] ; 2 uses
  %i.be = zext nneg i32 %.3.ph.1.1108.i to i64    ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.be
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !27
  %sext48.i = shl i64 %i.bg, 32
  %i.bj = ashr exact i64 %sext48.i, 32
  %i.bk = getelementptr inbounds [40 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = sext i32 %.340.ph.1.1107.i to i64
  %i.bm = getelementptr inbounds [16 x i8], ptr %i.bk, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i16 %i.x, ptr %i.bn, align 8, !tbaa !44
  store i64 %3, ptr %i.bm, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not = icmp eq i32 %.3.ph.1.1108.i, -1
  br i1 %.not, label %bb.l, label %checkLobbyEntries.exit

bb.l:                                             ; preds = %checkHeavyEntries.exit.thread, %checkHeavyEntries.exit
  %.sroa.0.0.copyload = load i64, ptr %5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.6.0.copyload = load i16, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %sext.i122 = shl i64 %.sroa.0.0.copyload, 32
  %i.bo = ashr exact i64 %sext.i122, 32
  %i.bp = getelementptr inbounds [40 x i8], ptr %i.z, i64 %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !52
  %.not.i = icmp eq i16 %i.br, %.sroa.6.0.copyload
  br i1 %.not.i, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 34
  %i.bt = load i8, ptr %i.bs, align 2, !tbaa !53  ; 2 uses
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.r, %bb.m
  %.036.lcssa.wide.i = phi i32 [ 0, %bb.m ], [ 1, %bb.r ] ; 3 uses
  %.lcssa38.i = phi ptr [ %i.bp, %bb.m ], [ %i.ce, %bb.r ]
  %.lcssa.i127 = phi i8 [ %i.bt, %bb.m ], [ %i.ci, %bb.r ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.lcssa38.i, i64 34
  %i.bw = zext i8 %.lcssa.i127 to i64
  %i.bx = add i64 %3, %i.bw                       ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  br i1 %i.by, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bz = trunc nuw nsw i64 %i.bx to i8
  br label %.thread.sink.split.i

bb.p:                                             ; preds = %bb.n
  %i.ca = tail call i32 @tryPromoteAndKickout(ptr noundef nonnull readonly %0, ptr noundef nonnull byval(%struct.fpAndIdx) align 8 %5, i64 noundef %i.bx, i32 noundef %.036.lcssa.wide.i) ; 2 uses
  %.not27.i = icmp eq i32 %i.ca, -1
  br i1 %.not27.i, label %.thread.sink.split.i, label %checkLobbyEntries.exit

bb.q:                                             ; preds = %bb.m, %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !27
  %sext.1.i123 = shl i64 %.sroa.5.0.copyload, 32
  %i.cd = ashr exact i64 %sext.1.i123, 32
  %i.ce = getelementptr inbounds [40 x i8], ptr %i.cc, i64 %i.cd ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !52
  %.not.1.i124 = icmp eq i16 %i.cg, %.sroa.6.0.copyload
  br i1 %.not.1.i124, label %bb.r, label %.preheader.preheader

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 34
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !53  ; 2 uses
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %.preheader.preheader, label %bb.n

.thread.sink.split.i:                             ; preds = %bb.p, %bb.o
  %.sink.i = phi i8 [ %i.bz, %bb.o ], [ 16, %bb.p ]
  store i8 %.sink.i, ptr %i.bv, align 2, !tbaa !53
  br label %checkLobbyEntries.exit

.preheader.preheader:                             ; preds = %bb.r, %bb.q
  %i.ck = load ptr, ptr %0, align 8, !tbaa !27
  %sext = shl nuw i64 %i.n, 32
  %i.cl = ashr exact i64 %sext, 32
  %i.cm = getelementptr inbounds [40 x i8], ptr %i.ck, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 34
  %i.co = load i8, ptr %i.cn, align 2, !tbaa !51
  %.not114 = icmp eq i8 %i.co, 0
  br i1 %.not114, label %bb.s, label %.preheader.1

bb.s:                                             ; preds = %.preheader.1, %.preheader.preheader
  %.0103179.lcssa.wide = phi i32 [ 0, %.preheader.preheader ], [ 1, %.preheader.1 ] ; 2 uses
  %.lcssa184 = phi ptr [ %i.cm, %.preheader.preheader ], [ %i.cw, %.preheader.1 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.lcssa184, i64 34 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.lcssa184, i64 32
  store i16 %i.g, ptr %i.cq, align 8, !tbaa !48
  %i.cr = icmp ult i64 %3, 16
  br i1 %i.cr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cs = trunc nuw nsw i64 %3 to i8
  store i8 %i.cs, ptr %i.cp, align 2, !tbaa !51
  br label %chkHeapifyDown.exit

bb.u:                                             ; preds = %bb.s
  %i.ct = tail call i32 @tryPromoteAndKickout(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.fpAndIdx) align 8 %5, i64 noundef %3, i32 noundef %.0103179.lcssa.wide) ; 2 uses
  %.not113 = icmp eq i32 %i.ct, -1
  br i1 %.not113, label %bb.v, label %checkLobbyEntries.exit

bb.v:                                             ; preds = %bb.u
  store i8 16, ptr %i.cp, align 2, !tbaa !51
  br label %chkHeapifyDown.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !27
  %i.cw = getelementptr inbounds [40 x i8], ptr %i.cv, i64 %i.u ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 34
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !51
  %.not114.1 = icmp eq i8 %i.cy, 0
  br i1 %.not114.1, label %bb.s, label %bb.w

bb.w:                                             ; preds = %.preheader.1
  %i.cz = and i16 %i.g, 1
  %i.da = zext nneg i16 %i.cz to i32              ; 2 uses
  %i.db = and i64 %i.f, 1                         ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !20
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.db
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !27
  %sext115 = shl i64 %i.dd, 32
  %i.dg = ashr exact i64 %sext115, 32
  %i.dh = getelementptr inbounds [40 x i8], ptr %i.df, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 34 ; 4 uses
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !53  ; 5 uses
  %cond = icmp eq i64 %3, 1
  %i.dk = zext i8 %i.dj to i64                    ; 4 uses
  br i1 %cond, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 4144
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dk
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !33
  %i.do = tail call i32 @rand() #17
  %i.dp = sitofp i32 %i.do to double
  %i.dq = fdiv double %i.dp, f0x41DFFFFFFFC00000
  %i.dr = fcmp olt double %i.dq, %i.dn
  %i.ds = sext i1 %i.dr to i8
  %.0.i = add i8 %i.dj, %i.ds
  br label %chkDecayCounter.exit

bb.y:                                             ; preds = %bb.w
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 2088
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dk
  %i.dv = load double, ptr %i.du, align 8, !tbaa !33 ; 2 uses
  %i.dw = fptoui double %i.dv to i64
  %i.dx = icmp ult i64 %3, %i.dw
  br i1 %i.dx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dy = uitofp i64 %3 to double
  %i.dz = fdiv double %i.dy, %i.dv
  %i.ea = tail call i32 @rand() #17
  %i.eb = sitofp i32 %i.ea to double
  %i.ec = fdiv double %i.eb, f0x41DFFFFFFFC00000
  %i.ed = fcmp olt double %i.ec, %i.dz
  %i.ee = sext i1 %i.ed to i8
  %.1.i = add i8 %i.dj, %i.ee
  br label %chkDecayCounter.exit

bb.aa:                                            ; preds = %bb.y
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.dk
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !33 ; 2 uses
  %i.ei = fptoui double %i.eh to i64
  %.not.i128 = icmp uge i64 %3, %i.ei
  %.not42.i = icmp eq i8 %i.dj, 0
  %or.cond.i = or i1 %.not42.i, %.not.i128
  br i1 %or.cond.i, label %chkDecayCounter.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aa
  %i.ej = zext i8 %i.dj to i32
  %i.ek = uitofp i64 %3 to double
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph.i
  %.03541.i = phi i32 [ %i.ej, %.lr.ph.i ], [ %.136.i, %bb.ab ] ; 2 uses
  %.03740.i = phi i32 [ 0, %.lr.ph.i ], [ %.138.i, %bb.ab ] ; 3 uses
  %i.el = sub nsw i32 %.03541.i, %.03740.i
  %i.em = lshr i32 %i.el, 1
  %i.en = add nuw nsw i32 %i.em, %.03740.i        ; 3 uses
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !33
  %i.er = fadd double %i.eq, %i.ek
  %i.es = fcmp ult double %i.er, %i.eh            ; 2 uses
  %i.et = add nuw nsw i32 %i.en, 1
  %.138.i = select i1 %i.es, i32 %i.et, i32 %.03740.i ; 3 uses
  %.136.i = select i1 %i.es, i32 %.03541.i, i32 %i.en ; 2 uses
  %i.eu = icmp slt i32 %.138.i, %.136.i
  br i1 %i.eu, label %bb.ab, label %._crit_edge.loopexit.i, !llvm.loop !54

._crit_edge.loopexit.i:                           ; preds = %bb.ab
  %i.ev = trunc i32 %.138.i to i8
  br label %chkDecayCounter.exit

chkDecayCounter.exit:                             ; preds = %bb.x, %bb.z, %._crit_edge.loopexit.i
  %.4.i = phi i8 [ %i.ev, %._crit_edge.loopexit.i ], [ %.0.i, %bb.x ], [ %.1.i, %bb.z ] ; 2 uses
  %i.ew = icmp eq i8 %.4.i, 0
  br i1 %i.ew, label %chkDecayCounter.exit.chkDecayCounter.exit.thread_crit_edge, label %select.unfold

chkDecayCounter.exit.chkDecayCounter.exit.thread_crit_edge: ; preds = %chkDecayCounter.exit
  %.pre = load i8, ptr %i.di, align 2, !tbaa !53
  %.pre188 = zext i8 %.pre to i64
  br label %chkDecayCounter.exit.thread

chkDecayCounter.exit.thread:                      ; preds = %chkDecayCounter.exit.chkDecayCounter.exit.thread_crit_edge, %bb.aa
  %.pre-phi = phi i64 [ %.pre188, %chkDecayCounter.exit.chkDecayCounter.exit.thread_crit_edge ], [ %i.dk, %bb.aa ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store i16 %i.g, ptr %i.ex, align 2, !tbaa !52
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %.pre-phi
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !33
  %i.fb = fptoui double %i.fa to i64
  %.fr = freeze i64 %i.fb                         ; 2 uses
  %.not116 = icmp ugt i64 %3, %.fr
  %i.fc = sub nuw i64 %3, %.fr
  %i.fd = tail call i64 @llvm.umin.i64(i64 %i.fc, i64 255)
  %i.fe = trunc nuw i64 %i.fd to i8
  br i1 %.not116, label %select.unfold, label %.thread160

.thread160:                                       ; preds = %chkDecayCounter.exit.thread
  store i8 1, ptr %i.di, align 2, !tbaa !53
  br label %chkHeapifyDown.exit

select.unfold:                                    ; preds = %chkDecayCounter.exit.thread, %chkDecayCounter.exit
  %storemerge = phi i8 [ %.4.i, %chkDecayCounter.exit ], [ %i.fe, %chkDecayCounter.exit.thread ] ; 3 uses
  store i8 %storemerge, ptr %i.di, align 2, !tbaa !53
  %i.ff = icmp ugt i8 %storemerge, 15
  br i1 %i.ff, label %bb.ac, label %chkHeapifyDown.exit

bb.ac:                                            ; preds = %select.unfold
  %i.fg = zext i8 %storemerge to i64
  %i.fh = tail call i32 @tryPromoteAndKickout(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.fpAndIdx) align 8 %5, i64 noundef %i.fg, i32 noundef %i.da) ; 2 uses
  %.not117 = icmp eq i32 %i.fh, -1
  %spec.select = select i1 %.not117, i32 -1, i32 %i.da
  br label %checkLobbyEntries.exit

checkLobbyEntries.exit:                           ; preds = %.thread.sink.split.i, %bb.p, %checkHeavyEntries.exit.thread215, %bb.u, %bb.ac, %checkHeavyEntries.exit
  %.sroa.050.4 = phi i32 [ %.3.ph.1.1108.i, %checkHeavyEntries.exit ], [ %.04385.lcssa.i, %checkHeavyEntries.exit.thread215 ], [ %spec.select, %bb.ac ], [ %.0103179.lcssa.wide, %bb.u ], [ %.036.lcssa.wide.i, %bb.p ], [ %.036.lcssa.wide.i, %.thread.sink.split.i ] ; 2 uses
  %.sroa.10.6 = phi i32 [ %.340.ph.1.1107.i, %checkHeavyEntries.exit ], [ %.03683.lcssa.wide.i, %checkHeavyEntries.exit.thread215 ], [ %i.fh, %bb.ac ], [ %i.ct, %bb.u ], [ %i.ca, %bb.p ], [ -1, %.thread.sink.split.i ] ; 2 uses
  %i.fi = icmp eq i32 %.sroa.050.4, -1
  %i.fj = icmp eq i32 %.sroa.10.6, -1
  %or.cond = select i1 %i.fi, i1 true, i1 %i.fj
  br i1 %or.cond, label %chkHeapifyDown.exit, label %bb.ad

bb.ad:                                            ; preds = %checkLobbyEntries.exit
  %i.fk = zext nneg i32 %.sroa.050.4 to i64       ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !20
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !28 ; 13 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !13
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fk
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !27
  %sext118 = shl i64 %i.fm, 32
  %i.fs = ashr exact i64 %sext118, 32
  %i.ft = getelementptr inbounds [40 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = zext nneg i32 %.sroa.10.6 to i64
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !42 ; 6 uses
  %i.fx = icmp ult i64 %i.fw, %i.fp
  br i1 %i.fx, label %chkHeapifyDown.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fy = tail call i64 @XXH3_64bits_withSeed(ptr noundef captures(none) %1, i64 noundef %i.e, i64 noundef 1919) #19 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 6224 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !31 ; 3 uses
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %.lr.ph.i129, label %.loopexit

.lr.ph.i129:                                      ; preds = %bb.ae
  %i.gc = zext nneg i32 %i.ga to i64              ; 4 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ao, %.lr.ph.i129
  %indvars.iv.i = phi i64 [ %i.gc, %.lr.ph.i129 ], [ %indvars.iv.next.i, %bb.ao ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 5 uses
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %indvars.iv.next.i ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !58
  %i.gg = icmp eq i64 %i.gf, %i.fy
  br i1 %i.gg, label %bb.ag, label %bb.ao

bb.ag:                                            ; preds = %bb.af
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !35 ; 7 uses
  %.not.i130 = icmp eq ptr %i.gi, null
  br i1 %.not.i130, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gj = getelementptr i8, ptr %i.gi, i64 -1
  %.val.i.i = load i8, ptr %i.gj, align 1, !tbaa !36 ; 2 uses
  %i.gk = and i8 %.val.i.i, 7
  switch i8 %i.gk, label %sdslen.exit.i [
    i8 0, label %bb.ai
    i8 1, label %bb.aj
    i8 2, label %bb.ak
    i8 3, label %bb.al
    i8 4, label %bb.am
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.gl = lshr i8 %.val.i.i, 3
  %i.gm = zext nneg i8 %i.gl to i64
  br label %sdslen.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.gn = getelementptr inbounds i8, ptr %i.gi, i64 -3
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !36
  %i.gp = zext i8 %i.go to i64
  br label %sdslen.exit.i

bb.ak:                                            ; preds = %bb.ah
  %i.gq = getelementptr inbounds i8, ptr %i.gi, i64 -5
  %i.gr = load i16, ptr %i.gq, align 1, !tbaa !37
  %i.gs = zext i16 %i.gr to i64
  br label %sdslen.exit.i

bb.al:                                            ; preds = %bb.ah
  %i.gt = getelementptr inbounds i8, ptr %i.gi, i64 -9
  %i.gu = load i32, ptr %i.gt, align 1, !tbaa !9
  %i.gv = zext i32 %i.gu to i64
  br label %sdslen.exit.i

bb.am:                                            ; preds = %bb.ah
  %i.gw = getelementptr inbounds i8, ptr %i.gi, i64 -17
  %i.gx = load i64, ptr %i.gw, align 1, !tbaa !20
  br label %sdslen.exit.i

sdslen.exit.i:                                    ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.0.i.i = phi i64 [ %i.gx, %bb.am ], [ %i.gm, %bb.ai ], [ %i.gp, %bb.aj ], [ %i.gs, %bb.ak ], [ %i.gv, %bb.al ], [ 0, %bb.ah ]
  %i.gy = icmp eq i64 %.0.i.i, %i.e
  br i1 %i.gy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %sdslen.exit.i
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.gi, ptr readonly %1, i64 %i.e)
  %i.gz = icmp eq i32 %bcmp.i, 0
  br i1 %i.gz, label %chkCheckExistInHeap.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %sdslen.exit.i, %bb.ag, %bb.af
  %i.ha = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ha, label %bb.af, label %.loopexit, !llvm.loop !59

chkCheckExistInHeap.exit:                         ; preds = %bb.an
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i64 %i.fw, ptr %i.gd, align 8, !tbaa !13
  %i.hc = icmp eq i32 %i.ga, 1
  br i1 %i.hc, label %chkHeapifyDown.exit, label %bb.ap

bb.ap:                                            ; preds = %chkCheckExistInHeap.exit
  %i.hd = add nsw i64 %i.gc, -2
  %i.he = lshr i64 %i.hd, 1                       ; 2 uses
  %i.hf = icmp ult i64 %i.he, %indvars.iv.next.i
  br i1 %i.hf, label %chkHeapifyDown.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hg = shl nuw nsw i64 %indvars.iv.next.i, 1   ; 2 uses
  %i.hh = or disjoint i64 %i.hg, 1                ; 3 uses
  %i.hi = add nuw nsw i64 %i.hg, 2                ; 3 uses
  %i.hj = icmp samesign ult i64 %i.hi, %i.gc
  br i1 %i.hj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.hh
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !13
  %i.hm = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.hi
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !13
  %i.ho = icmp ugt i64 %i.hl, %i.hn
  %spec.select.i133 = select i1 %i.ho, i64 %i.hi, i64 %i.hh
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0.i131 = phi i64 [ %i.hh, %bb.aq ], [ %spec.select.i133, %bb.ar ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %.0.i131
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !13
  %i.hr = icmp ugt i64 %i.hq, %i.fw
  br i1 %i.hr, label %chkHeapifyDown.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i64 16, i1 false), !tbaa.struct !18
  br label %bb.au

bb.au:                                            ; preds = %bb.ax, %bb.at
  %.039.i = phi i64 [ %indvars.iv.next.i, %bb.at ], [ %.1.i132, %bb.ax ]
  %.1.i132 = phi i64 [ %.0.i131, %bb.at ], [ %.2.i, %bb.ax ] ; 4 uses
  %i.hs = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %.039.i
  %i.ht = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %.1.i132 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, ptr noundef nonnull align 8 dereferenceable(24) %i.ht, i64 24, i1 false)
  %i.hu = icmp ult i64 %i.he, %.1.i132
  br i1 %i.hu, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hv = shl nuw i64 %.1.i132, 1                 ; 2 uses
  %i.hw = or disjoint i64 %i.hv, 1                ; 3 uses
  %i.hx = add nuw i64 %i.hv, 2                    ; 3 uses
  %i.hy = icmp ult i64 %i.hx, %i.gc
  br i1 %i.hy, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hz = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.hw
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !13
  %i.ib = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.hx
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !13
  %i.id = icmp ugt i64 %i.ia, %i.ic
  %spec.select45.i = select i1 %i.id, i64 %i.hx, i64 %i.hw
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.2.i = phi i64 [ %i.hw, %bb.av ], [ %spec.select45.i, %bb.aw ] ; 2 uses
  %i.ie = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %.2.i
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !13
  %i.ig = icmp ult i64 %i.if, %i.fw
  br i1 %i.ig, label %bb.au, label %bb.ay, !llvm.loop !21

bb.ay:                                            ; preds = %bb.ax, %bb.au
  store i64 %i.fw, ptr %i.ht, align 8
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %chkHeapifyDown.exit

.loopexit:                                        ; preds = %bb.ao, %bb.ae
  %i.ih = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !35 ; 9 uses
  %.not120 = icmp eq ptr %i.ii, null
  br i1 %.not120, label %bb.bf, label %bb.az

bb.az:                                            ; preds = %.loopexit
  %i.ij = getelementptr i8, ptr %i.ii, i64 -1
  %.val.i = load i8, ptr %i.ij, align 1, !tbaa !36 ; 2 uses
  %i.ik = and i8 %.val.i, 7
  switch i8 %i.ik, label %sdsAllocSize.exit [
    i8 0, label %bb.ba
    i8 1, label %bb.bb
    i8 2, label %bb.bc
    i8 3, label %bb.bd
    i8 4, label %bb.be
end_hunk_1
