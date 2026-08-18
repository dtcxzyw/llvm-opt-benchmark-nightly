inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__convert_16_to_8:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !148

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index22
  %wide.load23 = load <4 x i16>, ptr %i.q, align 2, !tbaa !85
  %i.r = lshr <4 x i16> %wide.load23, splat (i16 8)
  %i.s = trunc nuw <4 x i16> %i.r to <4 x i8>
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %index22
  store <4 x i8> %i.s, ptr %i.t, align 1, !tbaa !24
  %index.next24 = add nuw i64 %index22, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next24, %n.vec21
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !149

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %n.vec21, %wide.trip.count
  br i1 %cmp.n25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec21, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.v, align 8, !tbaa !26
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.x = load i16, ptr %i.w, align 2, !tbaa !85
  %i.y = lshr i16 %i.x, 8
  %i.z = trunc nuw i16 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !150

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  tail call void @free(ptr noundef %0) #37
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret ptr %i.d
}

; Function Attrs: nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @stbi__convert_8_to_16(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #17 {
bb.a:
  %i.a = mul nsw i32 %2, %1
  %i.b = mul nsw i32 %i.a, %3                     ; 5 uses
  %i.c = shl nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  %i.e = tail call noalias noundef ptr @malloc(i64 noundef %i.d) #38 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i32 %i.b, 0
  br i1 %i.g, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.b, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check21 = icmp ult i32 %i.b, 16
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %wide.load = load <8 x i8>, ptr %i.i, align 1, !tbaa !24
  %wide.load22 = load <8 x i8>, ptr %i.j, align 1, !tbaa !24
  %i.k = zext <8 x i8> %wide.load to <8 x i16>
  %i.l = zext <8 x i8> %wide.load22 to <8 x i16>
  %i.m = mul nuw <8 x i16> %i.k, splat (i16 257)
  %i.n = mul nuw <8 x i16> %i.l, splat (i16 257)
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <8 x i16> %i.m, ptr %i.o, align 2, !tbaa !85
  store <8 x i16> %i.n, ptr %i.p, align 2, !tbaa !85
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !148

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %index24
  %wide.load25 = load <4 x i8>, ptr %i.r, align 1, !tbaa !24
  %i.s = zext <4 x i8> %wide.load25 to <4 x i16>
  %i.t = mul nuw <4 x i16> %i.s, splat (i16 257)
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index24
  store <4 x i16> %i.t, ptr %i.u, align 2, !tbaa !85
  %index.next26 = add nuw i64 %index24, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next26, %n.vec23
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !152

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %n.vec23, %wide.trip.count
  br i1 %cmp.n27, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec23, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.w = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.w, align 8, !tbaa !26
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.y = load i8, ptr %i.x, align 1, !tbaa !24
  %i.z = zext i8 %i.y to i16
  %i.aa = mul nuw i16 %i.z, 257
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !85
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !153

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  tail call void @free(ptr noundef %0) #37
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret ptr %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbi__vertical_flip(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #18 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %3 to i64
  %i.d = mul nsw i64 %i.c, %i.b                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = ashr i32 %2, 1                           ; 2 uses
  %i.f = icmp slt i32 %i.e, 1
  %.not32 = icmp eq i64 %i.d, 0
  %or.cond = select i1 %i.f, i1 true, i1 %.not32
  br i1 %or.cond, label %._crit_edge39.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.g = mul i64 %i.d, %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = trunc i64 %indvars.iv to i32
  %i.j = xor i32 %i.i, -1
  %i.k = add i32 %2, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = mul i64 %i.d, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.02935 = phi i64 [ %i.d, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  %.03034 = phi ptr [ %i.n, %.lr.ph ], [ %i.q, %bb.b ] ; 3 uses
  %.03133 = phi ptr [ %i.h, %.lr.ph ], [ %i.p, %bb.b ] ; 3 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %.02935, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133, i64 %i.o, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133, ptr align 1 %.03034, i64 %i.o, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034, ptr nonnull align 16 %i.a, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.03133, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.03034, i64 %i.o
  %i.r = sub nuw i64 %.02935, %i.o                ; 2 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !154

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge39.split, label %.lr.ph, !llvm.loop !155

._crit_edge39.split:                              ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbi__vertical_flip_slices(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #18 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = mul nsw i32 %2, %1
  %i.d = mul nsw i32 %i.c, %4
  %i.e = sext i32 %1 to i64
  %i.f = sext i32 %4 to i64
  %i.g = mul nsw i64 %i.f, %i.e                   ; 4 uses
  %i.h = ashr i32 %2, 1                           ; 2 uses
  %i.i = icmp slt i32 %i.h, 1
  %.not32.i = icmp eq i64 %i.g, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %.not32.i
  %wide.trip.count.i = zext nneg i32 %i.h to i64
  %i.j = sext i32 %i.d to i64
  br i1 %or.cond.i, label %._crit_edge, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph, %stbi__vertical_flip.exit.loopexit
  %.014 = phi ptr [ %i.w, %stbi__vertical_flip.exit.loopexit ], [ %0, %.lr.ph ] ; 3 uses
  %.01213 = phi i32 [ %i.x, %stbi__vertical_flip.exit.loopexit ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.k = mul i64 %indvars.iv.i, %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 %i.k
  %i.m = trunc i64 %indvars.iv.i to i32
  %i.n = xor i32 %i.m, -1
  %i.o = add i32 %2, %i.n
  %i.p = sext i32 %i.o to i64
  %i.q = mul i64 %i.g, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.014, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.02935.i = phi i64 [ %i.g, %.lr.ph.i ], [ %i.v, %bb.b ] ; 2 uses
  %.03034.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.u, %bb.b ] ; 3 uses
  %.03133.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.t, %bb.b ] ; 3 uses
  %i.s = tail call i64 @llvm.umin.i64(i64 %.02935.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i, i64 %i.s, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i, ptr align 1 %.03034.i, i64 %i.s, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i, ptr nonnull align 16 %i.a, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.03133.i, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.03034.i, i64 %i.s
  %i.v = sub nuw i64 %.02935.i, %i.s              ; 2 uses
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !154

._crit_edge.i:                                    ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbi__vertical_flip.exit.loopexit, label %.lr.ph.i, !llvm.loop !155

stbi__vertical_flip.exit.loopexit:                ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds i8, ptr %.014, i64 %i.j
  %i.x = add nuw nsw i32 %.01213, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.preheader.i, !llvm.loop !156

._crit_edge:                                      ; preds = %stbi__vertical_flip.exit.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @stbi__load_and_postprocess_8bit(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %5 = alloca %struct.stbi__result_info, align 4  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.b = call ptr @stbi__load_main(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5, i32 noundef 8) ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %5, align 4, !tbaa !28
  %.not = icmp eq i32 %i.d, 8
  br i1 %.not, label %stbi__convert_16_to_8.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %1, align 4, !tbaa !27
  %i.f = load i32, ptr %2, align 4, !tbaa !27
  %i.g = icmp eq i32 %4, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %3, align 4, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.i = phi i32 [ %i.h, %bb.d ], [ %4, %bb.c ]
  %i.j = mul nsw i32 %i.f, %i.e
  %i.k = mul nsw i32 %i.j, %i.i                   ; 5 uses
  %i.l = sext i32 %i.k to i64
  %i.m = tail call noalias noundef ptr @malloc(i64 noundef %i.l) #38 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.o = icmp sgt i32 %i.k, 0
  br i1 %i.o, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.k to i64  ; 6 uses
  %min.iters.check = icmp ult i32 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check40 = icmp ult i32 %i.k, 16
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %wide.trip.count.i, 12
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <8 x i16>, ptr %i.q, align 2, !tbaa !85
  %wide.load41 = load <8 x i16>, ptr %i.r, align 2, !tbaa !85
  %i.s = lshr <8 x i16> %wide.load, splat (i16 8)
  %i.t = lshr <8 x i16> %wide.load41, splat (i16 8)
  %i.u = trunc nuw <8 x i16> %i.s to <8 x i8>
  %i.v = trunc nuw <8 x i16> %i.t to <8 x i8>
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store <8 x i8> %i.u, ptr %i.w, align 1, !tbaa !24
  store <8 x i8> %i.v, ptr %i.x, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !148

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index43
  %wide.load44 = load <4 x i16>, ptr %i.z, align 2, !tbaa !85
  %i.aa = lshr <4 x i16> %wide.load44, splat (i16 8)
  %i.ab = trunc nuw <4 x i16> %i.aa to <4 x i8>
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %index43
  store <4 x i8> %i.ab, ptr %i.ac, align 1, !tbaa !24
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !158

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %n.vec42, %wide.trip.count.i
  br i1 %cmp.n46, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ]
  br label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.ae, align 8, !tbaa !26
  br label %stbi__convert_16_to_8.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !85
  %i.ah = lshr i16 %i.ag, 8
  %i.ai = trunc nuw i16 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !159

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  tail call void @free(ptr noundef nonnull %i.b) #37
  br label %stbi__convert_16_to_8.exit

stbi__convert_16_to_8.exit:                       ; preds = %._crit_edge.i, %bb.f, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.m, %bb.f ], [ %i.m, %._crit_edge.i ] ; 5 uses
  %i.ak = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__vertically_flip_on_load_set)
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !27
  %.not23 = icmp eq i32 %i.al, 0
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %stbi__convert_16_to_8.exit
  %i.am = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__vertically_flip_on_load_local)
  %i.an = load i32, ptr %i.am, align 4, !tbaa !27
  %.not25 = icmp eq i32 %i.an, 0
  br i1 %.not25, label %bb.m, label %bb.i

bb.h:                                             ; preds = %stbi__convert_16_to_8.exit
  %i.ao = load i32, ptr @stbi__vertically_flip_on_load_global, align 4, !tbaa !27
  %.not24 = icmp eq i32 %i.ao, 0
  br i1 %.not24, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not26 = icmp eq i32 %4, 0
  br i1 %.not26, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %3, align 4, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aq = phi i32 [ %i.ap, %bb.j ], [ %4, %bb.i ]
  %i.ar = load i32, ptr %1, align 4, !tbaa !27
  %i.as = load i32, ptr %2, align 4, !tbaa !27    ; 2 uses
  %i.at = sext i32 %i.ar to i64
  %i.au = sext i32 %i.aq to i64
  %i.av = mul nsw i64 %i.at, %i.au                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aw = ashr i32 %i.as, 1                       ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 1
  %.not32.i = icmp eq i64 %i.av, 0
  %or.cond.i = select i1 %i.ax, i1 true, i1 %.not32.i
  br i1 %or.cond.i, label %stbi__vertical_flip.exit, label %.lr.ph.preheader.i27

.lr.ph.preheader.i27:                             ; preds = %bb.k
  %wide.trip.count.i28 = zext nneg i32 %i.aw to i64
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %._crit_edge.i31, %.lr.ph.preheader.i27
  %indvars.iv.i30 = phi i64 [ 0, %.lr.ph.preheader.i27 ], [ %indvars.iv.next.i32, %._crit_edge.i31 ] ; 3 uses
  %i.ay = mul i64 %indvars.iv.i30, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ay
  %i.ba = trunc i64 %indvars.iv.i30 to i32
  %i.bb = xor i32 %i.ba, -1
  %i.bc = add i32 %i.as, %i.bb
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul i64 %i.av, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.0, i64 %i.be
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i29
  %.02935.i = phi i64 [ %i.av, %.lr.ph.i29 ], [ %i.bj, %bb.l ] ; 2 uses
  %.03034.i = phi ptr [ %i.bf, %.lr.ph.i29 ], [ %i.bi, %bb.l ] ; 3 uses
  %.03133.i = phi ptr [ %i.az, %.lr.ph.i29 ], [ %i.bh, %bb.l ] ; 3 uses
  %i.bg = tail call i64 @llvm.umin.i64(i64 %.02935.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i, i64 %i.bg, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i, ptr align 1 %.03034.i, i64 %i.bg, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i, ptr nonnull align 16 %i.a, i64 %i.bg, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.03133.i, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.03034.i, i64 %i.bg
  %i.bj = sub nuw i64 %.02935.i, %i.bg            ; 2 uses
  %.not.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i, label %._crit_edge.i31, label %bb.l, !llvm.loop !154

._crit_edge.i31:                                  ; preds = %bb.l
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i30, 1 ; 2 uses
  %exitcond.not.i33 = icmp eq i64 %indvars.iv.next.i32, %wide.trip.count.i28
  br i1 %exitcond.not.i33, label %stbi__vertical_flip.exit, label %.lr.ph.i29, !llvm.loop !155

stbi__vertical_flip.exit:                         ; preds = %._crit_edge.i31, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.h, %stbi__vertical_flip.exit, %bb.a
  %.020 = phi ptr [ null, %bb.a ], [ %.0, %stbi__vertical_flip.exit ], [ %.0, %bb.h ], [ %.0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret ptr %.020
}

; Function Attrs: nounwind uwtable
define ptr @stbi__load_and_postprocess_16bit(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %5 = alloca %struct.stbi__result_info, align 4  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.b = call ptr @stbi__load_main(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5, i32 noundef 16) ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %5, align 4, !tbaa !28
  %.not = icmp eq i32 %i.d, 16
  br i1 %.not, label %stbi__convert_8_to_16.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %1, align 4, !tbaa !27
  %i.f = load i32, ptr %2, align 4, !tbaa !27
  %i.g = icmp eq i32 %4, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %3, align 4, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.i = phi i32 [ %i.h, %bb.d ], [ %4, %bb.c ]
  %i.j = mul nsw i32 %i.f, %i.e
  %i.k = mul nsw i32 %i.j, %i.i                   ; 5 uses
  %i.l = shl nsw i32 %i.k, 1
  %i.m = sext i32 %i.l to i64
  %i.n = tail call noalias noundef ptr @malloc(i64 noundef %i.m) #38 ; 6 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.p = icmp sgt i32 %i.k, 0
  br i1 %i.p, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.k to i64  ; 6 uses
  %min.iters.check = icmp ult i32 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check40 = icmp ult i32 %i.k, 16
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %wide.trip.count.i, 12
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %wide.load = load <8 x i8>, ptr %i.r, align 1, !tbaa !24
  %wide.load41 = load <8 x i8>, ptr %i.s, align 1, !tbaa !24
  %i.t = zext <8 x i8> %wide.load to <8 x i16>
  %i.u = zext <8 x i8> %wide.load41 to <8 x i16>
  %i.v = mul nuw <8 x i16> %i.t, splat (i16 257)
  %i.w = mul nuw <8 x i16> %i.u, splat (i16 257)
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <8 x i16> %i.v, ptr %i.x, align 2, !tbaa !85
  store <8 x i16> %i.w, ptr %i.y, align 2, !tbaa !85
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !148

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %index43
  %wide.load44 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !24
  %i.ab = zext <4 x i8> %wide.load44 to <4 x i16>
  %i.ac = mul nuw <4 x i16> %i.ab, splat (i16 257)
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %index43
  store <4 x i16> %i.ac, ptr %i.ad, align 2, !tbaa !85
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.ae = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !161

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %n.vec42, %wide.trip.count.i
  br i1 %cmp.n46, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ]
  br label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  %i.af = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.af, align 8, !tbaa !26
  br label %stbi__convert_8_to_16.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !24
  %i.ai = zext i8 %i.ah to i16
  %i.aj = mul nuw i16 %i.ai, 257
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.i
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !85
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !162

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  tail call void @free(ptr noundef nonnull %i.b) #37
  br label %stbi__convert_8_to_16.exit

stbi__convert_8_to_16.exit:                       ; preds = %._crit_edge.i, %bb.f, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.n, %bb.f ], [ %i.n, %._crit_edge.i ] ; 5 uses
  %i.al = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__vertically_flip_on_load_set)
  %i.am = load i32, ptr %i.al, align 4, !tbaa !27
  %.not23 = icmp eq i32 %i.am, 0
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %stbi__convert_8_to_16.exit
  %i.an = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__vertically_flip_on_load_local)
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !27
  %.not25 = icmp eq i32 %i.ao, 0
  br i1 %.not25, label %bb.m, label %bb.i

bb.h:                                             ; preds = %stbi__convert_8_to_16.exit
  %i.ap = load i32, ptr @stbi__vertically_flip_on_load_global, align 4, !tbaa !27
  %.not24 = icmp eq i32 %i.ap, 0
  br i1 %.not24, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not26 = icmp eq i32 %4, 0
  br i1 %.not26, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %3, align 4, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ar = phi i32 [ %i.aq, %bb.j ], [ %4, %bb.i ]
  %i.as = load i32, ptr %1, align 4, !tbaa !27
  %i.at = load i32, ptr %2, align 4, !tbaa !27    ; 2 uses
  %i.au = shl i32 %i.ar, 1
  %i.av = sext i32 %i.as to i64
  %i.aw = sext i32 %i.au to i64
  %i.ax = mul nsw i64 %i.aw, %i.av                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ay = ashr i32 %i.at, 1                       ; 2 uses
  %i.az = icmp slt i32 %i.ay, 1
  %.not32.i = icmp eq i64 %i.ax, 0
  %or.cond.i = select i1 %i.az, i1 true, i1 %.not32.i
  br i1 %or.cond.i, label %stbi__vertical_flip.exit, label %.lr.ph.preheader.i27

.lr.ph.preheader.i27:                             ; preds = %bb.k
  %wide.trip.count.i28 = zext nneg i32 %i.ay to i64
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %._crit_edge.i31, %.lr.ph.preheader.i27
  %indvars.iv.i30 = phi i64 [ 0, %.lr.ph.preheader.i27 ], [ %indvars.iv.next.i32, %._crit_edge.i31 ] ; 3 uses
  %i.ba = mul i64 %indvars.iv.i30, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ba
  %i.bc = trunc i64 %indvars.iv.i30 to i32
  %i.bd = xor i32 %i.bc, -1
  %i.be = add i32 %i.at, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %i.ax, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bg
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i29
  %.02935.i = phi i64 [ %i.ax, %.lr.ph.i29 ], [ %i.bl, %bb.l ] ; 2 uses
  %.03034.i = phi ptr [ %i.bh, %.lr.ph.i29 ], [ %i.bk, %bb.l ] ; 3 uses
  %.03133.i = phi ptr [ %i.bb, %.lr.ph.i29 ], [ %i.bj, %bb.l ] ; 3 uses
  %i.bi = tail call i64 @llvm.umin.i64(i64 %.02935.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i, i64 %i.bi, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i, ptr align 1 %.03034.i, i64 %i.bi, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i, ptr nonnull align 16 %i.a, i64 %i.bi, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.03133.i, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %.03034.i, i64 %i.bi
  %i.bl = sub nuw i64 %.02935.i, %i.bi            ; 2 uses
  %.not.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i, label %._crit_edge.i31, label %bb.l, !llvm.loop !154

._crit_edge.i31:                                  ; preds = %bb.l
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i30, 1 ; 2 uses
  %exitcond.not.i33 = icmp eq i64 %indvars.iv.next.i32, %wide.trip.count.i28
  br i1 %exitcond.not.i33, label %stbi__vertical_flip.exit, label %.lr.ph.i29, !llvm.loop !155

stbi__vertical_flip.exit:                         ; preds = %._crit_edge.i31, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.h, %stbi__vertical_flip.exit, %bb.a
  %.020 = phi ptr [ null, %bb.a ], [ %.0, %stbi__vertical_flip.exit ], [ %.0, %bb.h ], [ %.0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret ptr %.020
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi__float_postprocess(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #19 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__vertically_flip_on_load_set)
  %i.c = load i32, ptr %i.b, align 4, !tbaa !27
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__vertically_flip_on_load_local)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !27
  %.not9 = icmp eq i32 %i.e, 0
  %.not10.old = icmp eq ptr %0, null
  %or.cond12 = or i1 %.not10.old, %.not9
  br i1 %or.cond12, label %bb.h, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr @stbi__vertically_flip_on_load_global, align 4, !tbaa !27
  %.not8 = icmp eq i32 %i.f, 0
  %.not10 = icmp eq ptr %0, null
  %or.cond = or i1 %.not10, %.not8
  br i1 %or.cond, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.not11 = icmp eq i32 %4, 0
  br i1 %.not11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %3, align 4, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.h = phi i32 [ %i.g, %bb.e ], [ %4, %bb.d ]
  %i.i = load i32, ptr %1, align 4, !tbaa !27
  %i.j = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  %i.k = shl i32 %i.h, 2
  %i.l = sext i32 %i.i to i64
  %i.m = sext i32 %i.k to i64
  %i.n = mul nsw i64 %i.m, %i.l                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = ashr i32 %i.j, 1                         ; 2 uses
  %i.p = icmp slt i32 %i.o, 1
  %.not32.i = icmp eq i64 %i.n, 0
  %or.cond.i = select i1 %i.p, i1 true, i1 %.not32.i
  br i1 %or.cond.i, label %stbi__vertical_flip.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %wide.trip.count.i = zext nneg i32 %i.o to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.q = mul i64 %indvars.iv.i, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.s = trunc i64 %indvars.iv.i to i32
  %i.t = xor i32 %i.s, -1
  %i.u = add i32 %i.j, %i.t
  %i.v = sext i32 %i.u to i64
  %i.w = mul i64 %i.n, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.02935.i = phi i64 [ %i.n, %.lr.ph.i ], [ %i.ab, %bb.g ] ; 2 uses
  %.03034.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.aa, %bb.g ] ; 3 uses
  %.03133.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.z, %bb.g ] ; 3 uses
  %i.y = tail call i64 @llvm.umin.i64(i64 %.02935.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i, i64 %i.y, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i, ptr align 1 %.03034.i, i64 %i.y, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i, ptr nonnull align 16 %i.a, i64 %i.y, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.03133.i, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.03034.i, i64 %i.y
  %i.ab = sub nuw i64 %.02935.i, %i.y             ; 2 uses
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.g, !llvm.loop !154

._crit_edge.i:                                    ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbi__vertical_flip.exit, label %.lr.ph.i, !llvm.loop !155

stbi__vertical_flip.exit:                         ; preds = %._crit_edge.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %stbi__vertical_flip.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree nounwind uwtable
define noalias noundef ptr @stbi__fopen(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @stbi_load(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.2) ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.3, ptr %i.b, align 8, !tbaa !26
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !19
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.e, align 4, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 4 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !16
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.l = call i32 %i.k(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i32 noundef 128) #37, !inline_history !163 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = load i32, ptr %i.g, align 8, !tbaa !14
  %i.t = add nsw i32 %i.s, %i.r
  store i32 %i.t, ptr %i.g, align 8, !tbaa !14
  %i.u = icmp eq i32 %i.l, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.h, align 8, !tbaa !24
  br label %stbi__start_file.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds i8, ptr %i.h, i64 %i.w
  br label %stbi__start_file.exit.i

stbi__start_file.exit.i:                          ; preds = %bb.e, %bb.d
  %.sink.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.z, align 8, !tbaa !17
  %i.aa = call ptr @stbi__load_and_postprocess_8bit(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %stbi_load_from_file.exit, label %bb.f

bb.f:                                             ; preds = %stbi__start_file.exit.i
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !18
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %.neg.i = sub i64 %i.ae, %i.ad
  %sext.i = shl i64 %.neg.i, 32
  %i.af = ashr exact i64 %sext.i, 32
  %i.ag = call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef %i.af, i32 noundef 1) ; 0 uses
  br label %stbi_load_from_file.exit

stbi_load_from_file.exit:                         ; preds = %stbi__start_file.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ah = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %stbi_load_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.aa, %stbi_load_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @stbi_load_from_file(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !19
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %0, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 4 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !16
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.j = call i32 %i.i(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 128) #37, !inline_history !164 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !14
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !14
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !24
  br label %stbi__start_file.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %stbi__start_file.exit

stbi__start_file.exit:                            ; preds = %bb.b, %bb.c
  %.sink.i.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  store ptr %.sink.i.i.i, ptr %i.w, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i, ptr %i.x, align 8, !tbaa !17
  %i.y = call ptr @stbi__load_and_postprocess_8bit(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %stbi__start_file.exit
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !18
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %.neg = sub i64 %i.ac, %i.ab
  %sext = shl i64 %.neg, 32
  %i.ad = ashr exact i64 %sext, 32
  %i.ae = call i32 @fseek(ptr noundef %0, i64 noundef %i.ad, i32 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %stbi__start_file.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret ptr %i.y
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @stbi_load_from_file_16(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !19
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %0, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
end_hunk_0
begin_hunk_1_@stbi_load_16_from_callbacks:bb.a
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !14
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !24
  br label %stbi__start_callbacks.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %stbi__start_callbacks.exit

stbi__start_callbacks.exit:                       ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !17
  %i.y = call ptr @stbi__load_and_postprocess_16bit(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret ptr %i.y
}

; Function Attrs: nounwind uwtable
define ptr @stbi_load_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 0, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %0, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %0, ptr %i.e, align 8, !tbaa !16
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.g, ptr %i.h, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.g, ptr %i.i, align 8, !tbaa !18
  %i.j = call ptr @stbi__load_and_postprocess_8bit(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define ptr @stbi_load_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !19
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !16
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.j = call i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128) #37, !inline_history !25 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !14
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !14
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !24
  br label %stbi__start_callbacks.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %stbi__start_callbacks.exit

stbi__start_callbacks.exit:                       ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !17
  %i.y = call ptr @stbi__load_and_postprocess_8bit(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret ptr %i.y
}

; Function Attrs: nounwind uwtable
define noundef ptr @stbi_load_gif_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %8 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 0, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 184
  store i32 0, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 208
  store ptr %0, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 192
  store ptr %0, ptr %i.f, align 8, !tbaa !16
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 216
  store ptr %i.h, ptr %i.i, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 200
  store ptr %i.h, ptr %i.j, align 8, !tbaa !18
  %i.k = call ptr @stbi__load_gif_main(ptr noundef nonnull %8, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) ; 2 uses
  %i.l = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__vertically_flip_on_load_set)
  %i.m = load i32, ptr %i.l, align 4, !tbaa !27
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__vertically_flip_on_load_local)
  %i.o = load i32, ptr %i.n, align 4, !tbaa !27
  %.not14 = icmp eq i32 %i.o, 0
  br i1 %.not14, label %stbi__vertical_flip_slices.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = load i32, ptr @stbi__vertically_flip_on_load_global, align 4, !tbaa !27
  %.not13 = icmp eq i32 %i.p, 0
  br i1 %.not13, label %stbi__vertical_flip_slices.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = load i32, ptr %4, align 4, !tbaa !27     ; 3 uses
  %i.r = load i32, ptr %5, align 4, !tbaa !27     ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %stbi__vertical_flip_slices.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.t = load i32, ptr %6, align 4, !tbaa !27     ; 2 uses
  %i.u = load i32, ptr %3, align 4, !tbaa !27     ; 2 uses
  %i.v = mul i32 %i.t, %i.q
  %i.w = mul i32 %i.v, %i.u
  %i.x = sext i32 %i.u to i64
  %i.y = sext i32 %i.t to i64
  %i.z = mul nsw i64 %i.x, %i.y                   ; 4 uses
  %i.aa = ashr i32 %i.q, 1                        ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 1
  %.not32.i.i = icmp eq i64 %i.z, 0
  %or.cond.i.i = select i1 %i.ab, i1 true, i1 %.not32.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.aa to i64
  %i.ac = sext i32 %i.w to i64
  br i1 %or.cond.i.i, label %stbi__vertical_flip_slices.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i, %stbi__vertical_flip.exit.loopexit.i
  %.014.i = phi ptr [ %i.ap, %stbi__vertical_flip.exit.loopexit.i ], [ %i.k, %.lr.ph.i ] ; 3 uses
  %.01213.i = phi i32 [ %i.aq, %stbi__vertical_flip.exit.loopexit.i ], [ 0, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ad = mul i64 %indvars.iv.i.i, %i.z
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i, i64 %i.ad
  %i.af = trunc i64 %indvars.iv.i.i to i32
  %i.ag = xor i32 %i.af, -1
  %i.ah = add i32 %i.q, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul i64 %i.z, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.014.i, i64 %i.aj
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.02935.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %i.ao, %bb.e ] ; 2 uses
  %.03034.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %i.an, %bb.e ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.am, %bb.e ] ; 3 uses
  %i.al = call i64 @llvm.umin.i64(i64 %.02935.i.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i, i64 %i.al, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i, ptr align 1 %.03034.i.i, i64 %i.al, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i, ptr nonnull align 16 %i.a, i64 %i.al, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.03133.i.i, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.03034.i.i, i64 %i.al
  %i.ao = sub nuw i64 %.02935.i.i, %i.al          ; 2 uses
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.e, !llvm.loop !154

._crit_edge.i.i:                                  ; preds = %bb.e
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %stbi__vertical_flip.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !155

stbi__vertical_flip.exit.loopexit.i:              ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = getelementptr inbounds i8, ptr %.014.i, i64 %i.ac
  %i.aq = add nuw nsw i32 %.01213.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.aq, %i.r
  br i1 %exitcond.not.i, label %stbi__vertical_flip_slices.exit, label %.lr.ph.preheader.i.i, !llvm.loop !156

stbi__vertical_flip_slices.exit:                  ; preds = %stbi__vertical_flip.exit.loopexit.i, %.lr.ph.i, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  ret ptr %i.k
}

; Function Attrs: nounwind uwtable
define noundef ptr @stbi__load_gif_main(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %7 = alloca %struct.stbi__gif, align 8          ; 27 uses
  %i.a = tail call i32 @stbi__gif_test_raw(ptr noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load <2 x ptr>, ptr %i.b, align 8, !tbaa !26
  store <2 x ptr> %i.d, ptr %i.c, align 8, !tbaa !26
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34928) %7, i8 0, i64 34928, i1 false)
  %.not91 = icmp eq ptr %1, null                  ; 6 uses
  br i1 %.not91, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !166
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = call ptr @stbi__gif_load_next(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef %5, i32 poison, ptr noundef null) ; 4 uses
  %i.f = icmp eq ptr %i.e, %0
  %.not9293128 = icmp eq ptr %i.e, null
  %.not92129 = or i1 %i.f, %.not9293128
  br i1 %.not92129, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 34920 ; 2 uses
  %i.i = load i32, ptr %7, align 8, !tbaa !34     ; 2 uses
  store i32 %i.i, ptr %2, align 4, !tbaa !27
  %i.j = load i32, ptr %i.g, align 4, !tbaa !36   ; 2 uses
  store i32 %i.j, ptr %3, align 4, !tbaa !27
  %i.k = mul nsw i32 %i.j, %i.i
  %i.l = shl nsw i32 %i.k, 2                      ; 3 uses
  %i.m = sext i32 %i.l to i64
  %i.n = call noalias noundef ptr @malloc(i64 noundef %i.m) #38 ; 6 uses
  %.not95.peel = icmp eq ptr %i.n, null
  br i1 %.not95.peel, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not91, label %.thread172, label %bb.g

.thread172:                                       ; preds = %bb.f
  %i.o = sext i32 %i.l to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = call noalias noundef dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #38 ; 2 uses
  store ptr %i.p, ptr %1, align 8, !tbaa !166
  %.not96.peel = icmp eq ptr %i.p, null
  br i1 %.not96.peel, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = sext i32 %i.l to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %i.e, i64 %i.q, i1 false)
  %i.r = load i32, ptr %i.h, align 8, !tbaa !168
  %i.s = load ptr, ptr %1, align 8, !tbaa !166
  store i32 %i.r, ptr %i.s, align 4, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %.thread172, %bb.h
  %i.t = call ptr @stbi__gif_load_next(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef %5, i32 poison, ptr noundef null) ; 3 uses
  %i.u = icmp eq ptr %i.t, %0
  %.not9293.peel = icmp eq ptr %i.t, null
  %.not92.peel = or i1 %i.u, %.not9293.peel
  br i1 %.not92.peel, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.i, %bb.w
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 1, %bb.i ] ; 3 uses
  %i.v = phi ptr [ %i.bx, %bb.w ], [ %i.t, %bb.i ]
  %.072131 = phi ptr [ %i.ad, %bb.w ], [ %i.n, %bb.i ] ; 2 uses
  %i.w = load i32, ptr %7, align 8, !tbaa !34     ; 2 uses
  store i32 %i.w, ptr %2, align 4, !tbaa !27
  %i.x = load i32, ptr %i.g, align 4, !tbaa !36   ; 2 uses
  store i32 %i.x, ptr %3, align 4, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.y = mul nsw i32 %i.x, %i.w                   ; 2 uses
  %i.z = shl nsw i32 %i.y, 2                      ; 3 uses
  %i.aa = trunc nuw i64 %indvars.iv.next to i32
  %i.ab = mul nsw i32 %i.z, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = call ptr @realloc(ptr noundef nonnull %.072131, i64 noundef %i.ac) #39 ; 6 uses
  %.not97 = icmp eq ptr %i.ad, null
  br i1 %.not97, label %.loopexit, label %bb.l

.loopexit:                                        ; preds = %.peel.next
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !37
  call void @free(ptr noundef %i.af) #37
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  call void @free(ptr noundef %i.ah) #37
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !39
  call void @free(ptr noundef %i.aj) #37
  call void @free(ptr noundef nonnull %.072131) #37
  br i1 %.not91, label %stbi__load_gif_main_outofmem.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.ak = load ptr, ptr %1, align 8, !tbaa !166   ; 2 uses
  %.not11.i = icmp eq ptr %i.ak, null
  br i1 %.not11.i, label %stbi__load_gif_main_outofmem.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef nonnull %i.ak) #37
  br label %stbi__load_gif_main_outofmem.exit

stbi__load_gif_main_outofmem.exit:                ; preds = %.loopexit, %bb.j, %bb.k
  %i.al = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.al, align 8, !tbaa !26
  br label %.critedge

bb.l:                                             ; preds = %.peel.next
  br i1 %.not91, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %1, align 8, !tbaa !166
  %i.an = shl nuw nsw i64 %indvars.iv.next, 2
  %i.ao = call ptr @realloc(ptr noundef %i.am, i64 noundef %i.an) #39 ; 2 uses
  %.not98.not = icmp eq ptr %i.ao, null
  br i1 %.not98.not, label %.loopexit148, label %bb.o

.loopexit148:                                     ; preds = %bb.m
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !37
  call void @free(ptr noundef %.pre) #37
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  call void @free(ptr noundef %i.aq) #37
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39
  call void @free(ptr noundef %i.as) #37
  call void @free(ptr noundef nonnull %i.ad) #37
  %i.at = load ptr, ptr %1, align 8, !tbaa !166   ; 2 uses
  %.not11.i101 = icmp eq ptr %i.at, null
  br i1 %.not11.i101, label %.thread, label %bb.n

bb.n:                                             ; preds = %.loopexit148
  call void @free(ptr noundef nonnull %i.at) #37
  br label %.thread

.thread:                                          ; preds = %bb.n, %.loopexit148
  %i.au = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.au, align 8, !tbaa !26
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  store ptr %i.ao, ptr %1, align 8, !tbaa !166
  br label %bb.u

bb.p:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !37
  call void @free(ptr noundef %i.aw) #37
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !38
  call void @free(ptr noundef %i.ay) #37
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !39
  call void @free(ptr noundef %i.ba) #37
  br i1 %.not91, label %stbi__load_gif_main_outofmem.exit105, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %1, align 8, !tbaa !166   ; 2 uses
  %.not11.i104 = icmp eq ptr %i.bb, null
  br i1 %.not11.i104, label %stbi__load_gif_main_outofmem.exit105, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.bb) #37
  br label %stbi__load_gif_main_outofmem.exit105

stbi__load_gif_main_outofmem.exit105:             ; preds = %bb.p, %bb.q, %bb.r
  %i.bc = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.bc, align 8, !tbaa !26
  br label %.critedge

bb.s:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !37
  call void @free(ptr noundef %i.be) #37
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !38
  call void @free(ptr noundef %i.bg) #37
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !39
  call void @free(ptr noundef %i.bi) #37
  call void @free(ptr noundef nonnull %i.n) #37
  %i.bj = load ptr, ptr %1, align 8, !tbaa !166   ; 2 uses
  %.not11.i108 = icmp eq ptr %i.bj, null
  br i1 %.not11.i108, label %stbi__load_gif_main_outofmem.exit109, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.bj) #37
  br label %stbi__load_gif_main_outofmem.exit109

stbi__load_gif_main_outofmem.exit109:             ; preds = %bb.s, %bb.t
  %i.bk = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.bk, align 8, !tbaa !26
  br label %.critedge

bb.u:                                             ; preds = %bb.o, %bb.l
  %i.bl = trunc nuw nsw i64 %indvars.iv to i32
  %i.bm = mul nsw i32 %i.z, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.ad, i64 %i.bn
  %i.bp = sext i32 %i.z to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr nonnull align 1 %i.v, i64 %i.bp, i1 false)
  %i.bq = shl nsw i32 %i.y, 3
  %i.br = sext i32 %i.bq to i64
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.ad, i64 %i.bs
  br i1 %.not91, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = load i32, ptr %i.h, align 8, !tbaa !168
  %i.bv = load ptr, ptr %1, align 8, !tbaa !166
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !27
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bx = call ptr @stbi__gif_load_next(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef %5, i32 poison, ptr noundef nonnull %i.bt) ; 3 uses
  %i.by = icmp eq ptr %i.bx, %0
  %.not9293 = icmp eq ptr %i.bx, null
  %.not92 = or i1 %i.by, %.not9293
  br i1 %.not92, label %._crit_edge.loopexit.loopexit, label %.peel.next, !llvm.loop !169

._crit_edge.loopexit.loopexit:                    ; preds = %bb.w
  %i.bz = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %._crit_edge.loopexit.loopexit, %bb.d
  %.075.lcssa = phi i32 [ 0, %bb.d ], [ 1, %bb.i ], [ %i.bz, %._crit_edge.loopexit.loopexit ] ; 2 uses
  %.072.lcssa = phi ptr [ null, %bb.d ], [ %i.n, %bb.i ], [ %i.ad, %._crit_edge.loopexit.loopexit ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !37
  call void @free(ptr noundef %i.cb) #37
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !38
  call void @free(ptr noundef %i.cd) #37
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !39
  call void @free(ptr noundef %i.cf) #37
  %i.cg = and i32 %6, -5
  %or.cond.not = icmp eq i32 %i.cg, 0
  br i1 %or.cond.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.ch = load i32, ptr %7, align 8, !tbaa !34
  %i.ci = mul nsw i32 %i.ch, %.075.lcssa
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !36
  %i.cl = call ptr @stbi__convert_format(ptr noundef %.072.lcssa, i32 noundef 4, i32 noundef %6, i32 noundef %i.ci, i32 noundef %i.ck)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge
  %.4 = phi ptr [ %i.cl, %bb.x ], [ %.072.lcssa, %._crit_edge ]
  store i32 %.075.lcssa, ptr %4, align 4, !tbaa !27
  br label %.critedge

.critedge:                                        ; preds = %.thread, %stbi__load_gif_main_outofmem.exit, %bb.y, %stbi__load_gif_main_outofmem.exit109, %stbi__load_gif_main_outofmem.exit105
  %.6 = phi ptr [ %.4, %bb.y ], [ null, %stbi__load_gif_main_outofmem.exit105 ], [ null, %stbi__load_gif_main_outofmem.exit109 ], [ null, %stbi__load_gif_main_outofmem.exit ], [ null, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.aa

bb.z:                                             ; preds = %bb.a
  %i.cm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.91, ptr %i.cm, align 8, !tbaa !26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge
  %.7 = phi ptr [ %.6, %.critedge ], [ null, %bb.z ]
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define noundef ptr @stbi__loadf_main(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = tail call i32 @stbi__hdr_test(ptr noundef %0)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @stbi__hdr_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nonnull poison) ; 7 uses
  %.not30 = icmp eq ptr %i.c, null
  br i1 %.not30, label %stbi__float_postprocess.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__vertically_flip_on_load_set)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !27
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__vertically_flip_on_load_local)
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27
  %.not9.i = icmp eq i32 %i.g, 0
  br i1 %.not9.i, label %stbi__float_postprocess.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = load i32, ptr @stbi__vertically_flip_on_load_global, align 4, !tbaa !27
  %.not8.i = icmp eq i32 %i.h, 0
  br i1 %.not8.i, label %stbi__float_postprocess.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not11.i = icmp eq i32 %4, 0
  br i1 %.not11.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = load i32, ptr %3, align 4, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.j = phi i32 [ %i.i, %bb.g ], [ %4, %bb.f ]
  %i.k = load i32, ptr %1, align 4, !tbaa !27
  %i.l = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  %i.m = shl i32 %i.j, 2
  %i.n = sext i32 %i.k to i64
  %i.o = sext i32 %i.m to i64
  %i.p = mul nsw i64 %i.o, %i.n                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = ashr i32 %i.l, 1                         ; 2 uses
  %i.r = icmp slt i32 %i.q, 1
  %.not32.i.i = icmp eq i64 %i.p, 0
  %or.cond.i.i = select i1 %i.r, i1 true, i1 %.not32.i.i
  br i1 %or.cond.i.i, label %stbi__vertical_flip.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.h
  %wide.trip.count.i.i = zext nneg i32 %i.q to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.s = mul i64 %indvars.iv.i.i, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.s
  %i.u = trunc i64 %indvars.iv.i.i to i32
  %i.v = xor i32 %i.u, -1
  %i.w = add i32 %i.l, %i.v
  %i.x = sext i32 %i.w to i64
  %i.y = mul i64 %i.p, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.y
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.02935.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %i.ad, %bb.i ] ; 2 uses
  %.03034.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %i.ac, %bb.i ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.ab, %bb.i ] ; 3 uses
  %i.aa = tail call i64 @llvm.umin.i64(i64 %.02935.i.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i, i64 %i.aa, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i, ptr align 1 %.03034.i.i, i64 %i.aa, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i, ptr nonnull align 16 %i.a, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.03133.i.i, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.03034.i.i, i64 %i.aa
  %i.ad = sub nuw i64 %.02935.i.i, %i.aa          ; 2 uses
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.i, !llvm.loop !154

._crit_edge.i.i:                                  ; preds = %bb.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %stbi__vertical_flip.exit.i, label %.lr.ph.i.i, !llvm.loop !155

stbi__vertical_flip.exit.i:                       ; preds = %._crit_edge.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %stbi__float_postprocess.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = tail call ptr @stbi__load_and_postprocess_8bit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %.not28 = icmp eq ptr %i.ae, null
  br i1 %.not28, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %1, align 4, !tbaa !27
  %i.ag = load i32, ptr %2, align 4, !tbaa !27
  %.not29 = icmp eq i32 %4, 0
  br i1 %.not29, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = load i32, ptr %3, align 4, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ai = phi i32 [ %i.ah, %bb.l ], [ %4, %bb.k ]
  %i.aj = tail call ptr @stbi__ldr_to_hdr(ptr noundef nonnull %i.ae, i32 noundef %i.af, i32 noundef %i.ag, i32 noundef %i.ai)
  br label %stbi__float_postprocess.exit

bb.n:                                             ; preds = %bb.j
  %i.ak = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str, ptr %i.ak, align 8, !tbaa !26
  br label %stbi__float_postprocess.exit

stbi__float_postprocess.exit:                     ; preds = %bb.b, %bb.d, %bb.e, %stbi__vertical_flip.exit.i, %bb.n, %bb.m
  %.0 = phi ptr [ null, %bb.n ], [ %i.aj, %bb.m ], [ %i.c, %stbi__vertical_flip.exit.i ], [ %i.c, %bb.e ], [ %i.c, %bb.d ], [ %i.c, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @stbi__ldr_to_hdr(ptr noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = or i32 %2, %1
  %or.cond.not.i.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %stbi__malloc_mad4.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %stbi__mul2sizes_valid.exit.thread25.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.c
  %i.c = udiv i32 2147483647, %2
  %.not38.i.i = icmp sgt i32 %1, %i.c
  br i1 %.not38.i.i, label %stbi__malloc_mad4.exit.thread, label %stbi__mul2sizes_valid.exit.thread25.i.i

stbi__mul2sizes_valid.exit.thread25.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.c
  %i.d = mul nsw i32 %2, %1                       ; 8 uses
  %i.e = or i32 %3, %i.d
  %or.cond.not.i16.i.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i16.i.i, label %bb.d, label %stbi__malloc_mad4.exit.thread

bb.d:                                             ; preds = %stbi__mul2sizes_valid.exit.thread25.i.i
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %stbi__mul2sizes_valid.exit18.thread30.i.i, label %stbi__mul2sizes_valid.exit18.i.i

stbi__mul2sizes_valid.exit18.i.i:                 ; preds = %bb.d
  %i.g = udiv i32 2147483647, %3
  %.not.i.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i.i, label %stbi__malloc_mad4.exit.thread, label %stbi__mul2sizes_valid.exit18.thread30.i.i

stbi__mul2sizes_valid.exit18.thread30.i.i:        ; preds = %stbi__mul2sizes_valid.exit18.i.i, %bb.d
  %i.h = mul nsw i32 %i.d, %3                     ; 2 uses
  %or.cond = icmp ugt i32 %i.h, 536870911
  br i1 %or.cond, label %stbi__malloc_mad4.exit.thread, label %stbi__malloc_mad4.exit

stbi__malloc_mad4.exit:                           ; preds = %stbi__mul2sizes_valid.exit18.thread30.i.i
  %i.i = shl nuw nsw i32 %i.h, 2
  %i.j = zext nneg i32 %i.i to i64
  %i.k = tail call noalias noundef ptr @malloc(i64 noundef %i.j) #38 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %stbi__malloc_mad4.exit.thread, label %bb.e

stbi__malloc_mad4.exit.thread:                    ; preds = %bb.b, %stbi__mul2sizes_valid.exit.thread25.i.i, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit18.i.i, %stbi__mul2sizes_valid.exit18.thread30.i.i, %stbi__malloc_mad4.exit
  tail call void @free(ptr noundef nonnull %0) #37
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.m, align 8, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %stbi__malloc_mad4.exit
  %i.n = and i32 %3, 1
  %.not47 = icmp eq i32 %i.n, 0                   ; 2 uses
  %i.o = sext i1 %.not47 to i32
  %.0 = add i32 %3, %i.o                          ; 5 uses
  %i.p = icmp sgt i32 %i.d, 0
  br i1 %i.p, label %.preheader49.lr.ph, label %.loopexit

.preheader49.lr.ph:                               ; preds = %bb.e
  %i.q = icmp sgt i32 %.0, 0
  %i.r = load float, ptr @stbi__l2h_gamma, align 4
  %i.s = fpext float %i.r to double               ; 3 uses
  %i.t = load float, ptr @stbi__l2h_scale, align 4
  %i.u = fpext float %i.t to double               ; 3 uses
  br i1 %i.q, label %.preheader49.preheader, label %._crit_edge52.split

.preheader49.preheader:                           ; preds = %.preheader49.lr.ph
  %i.v = sext i32 %3 to i64
  %wide.trip.count59 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %.0 to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.w = icmp eq i32 %.0, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod73 = trunc i32 %.0 to i1
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49.preheader, %._crit_edge
  %indvars.iv56 = phi i64 [ 0, %.preheader49.preheader ], [ %indvars.iv.next57, %._crit_edge ] ; 2 uses
  %i.x = mul nsw i64 %indvars.iv56, %i.v          ; 3 uses
  br i1 %i.w, label %.epil.preheader, label %.preheader49.new

.preheader49.new:                                 ; preds = %.preheader49, %.preheader49.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader49.new ], [ 0, %.preheader49 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader49.new ], [ 0, %.preheader49 ]
  %i.y = add nsw i64 %indvars.iv, %i.x            ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !24
  %i.ab = uitofp i8 %i.aa to float
  %i.ac = fdiv float %i.ab, 2.550000e+02
  %i.ad = fpext float %i.ac to double
  %i.ae = tail call double @pow(double noundef %i.ad, double noundef %i.s) #37
  %i.af = fmul double %i.ae, %i.u
  %i.ag = fptrunc double %i.af to float
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.y
  store float %i.ag, ptr %i.ah, align 4, !tbaa !121
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.ai = add nsw i64 %indvars.iv.next, %i.x      ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !24
  %i.al = uitofp i8 %i.ak to float
  %i.am = fdiv float %i.al, 2.550000e+02
  %i.an = fpext float %i.am to double
  %i.ao = tail call double @pow(double noundef %i.an, double noundef %i.s) #37
  %i.ap = fmul double %i.ao, %i.u
  %i.aq = fptrunc double %i.ap to float
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ai
  store float %i.aq, ptr %i.ar, align 4, !tbaa !121
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader49.new, !llvm.loop !171

._crit_edge.unr-lcssa:                            ; preds = %.preheader49.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader49
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader49 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.as = add nsw i64 %indvars.iv.epil.init, %i.x ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %0, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !24
  %i.av = uitofp i8 %i.au to float
  %i.aw = fdiv float %i.av, 2.550000e+02
  %i.ax = fpext float %i.aw to double
  %i.ay = tail call double @pow(double noundef %i.ax, double noundef %i.s) #37
  %i.az = fmul double %i.ay, %i.u
  %i.ba = fptrunc double %i.az to float
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.as
  store float %i.ba, ptr %i.bb, align 4, !tbaa !121
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %._crit_edge52.split, label %.preheader49, !llvm.loop !172

._crit_edge52.split:                              ; preds = %._crit_edge, %.preheader49.lr.ph
  br i1 %.not47, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %._crit_edge52.split
  %i.bc = sext i32 %3 to i64                      ; 3 uses
  %i.bd = sext i32 %.0 to i64                     ; 3 uses
  %wide.trip.count64 = zext nneg i32 %i.d to i64  ; 2 uses
  %xtraiter74 = and i64 %wide.trip.count64, 1
  %i.be = icmp eq i32 %i.d, 1
  br i1 %i.be, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter77 = and i64 %wide.trip.count64, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv61 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next62.1, %.lr.ph ] ; 3 uses
  %niter78 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter78.next.1, %.lr.ph ]
end_hunk_1
begin_hunk_2_@stbi__build_huffman
define range(i32 0, 2) i32 @stbi__build_huffman(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 6 uses
  br label %.preheader66

.preheader66:                                     ; preds = %bb.a, %._crit_edge
  %indvars.iv92 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next93, %._crit_edge ] ; 3 uses
  %.05474 = phi i32 [ 0, %bb.a ], [ %.155.lcssa, %._crit_edge ] ; 5 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv92 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !27
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader66
  %i.e = trunc i64 %indvars.iv92 to i8
  %i.f = add nuw nsw i8 %i.e, 1                   ; 2 uses
  %i.g = sext i32 %.05474 to i64                  ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %.05474, i32 256)
  %i.h = sub i32 %smax, %.05474
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 %i.g
  store i8 %i.f, ptr %i.i, align 1, !tbaa !24
  %exitcond113 = icmp sgt i32 %.05474, 255
  br i1 %exitcond113, label %.loopexit65.sink.split, label %.lr.ph116

bb.b:                                             ; preds = %.lr.ph116
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.f, ptr %i.j, align 1, !tbaa !24
  %exitcond = icmp eq i32 %i.k, %i.h
  br i1 %exitcond, label %.loopexit65.sink.split, label %.lr.ph116, !llvm.loop !224

.lr.ph116:                                        ; preds = %.lr.ph, %bb.b
  %.05771115 = phi i32 [ %i.k, %bb.b ], [ 0, %.lr.ph ]
  %indvars.iv114 = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.g, %.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv114, 1 ; 3 uses
  %i.k = add nuw nsw i32 %.05771115, 1            ; 3 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !27
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !224

._crit_edge.loopexit:                             ; preds = %.lr.ph116
  %i.n = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader66
  %.155.lcssa = phi i32 [ %.05474, %.preheader66 ], [ %i.n, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next93, 16
  br i1 %exitcond95.not, label %bb.c, label %.preheader66, !llvm.loop !225

bb.c:                                             ; preds = %._crit_edge
  %i.o = sext i32 %.155.lcssa to i64
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 %i.o
  store i8 0, ptr %i.p, align 1, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1612
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1540
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.e
  %indvars.iv99 = phi i64 [ 1, %bb.c ], [ %indvars.iv.next100, %bb.e ] ; 7 uses
  %.083 = phi i32 [ 0, %bb.c ], [ %i.an, %bb.e ]  ; 3 uses
  %.25682 = phi i32 [ 0, %bb.c ], [ %.4, %bb.e ]  ; 3 uses
  %i.t = sub i32 %.25682, %.083
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv99
  store i32 %i.t, ptr %i.u, align 4, !tbaa !27
  %i.v = sext i32 %.25682 to i64                  ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.a, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  %i.y = zext i8 %i.x to i64
  %i.z = icmp eq i64 %indvars.iv99, %i.y
  br i1 %i.z, label %.lr.ph77, label %bb.e

.lr.ph77:                                         ; preds = %bb.d, %.lr.ph77
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %.lr.ph77 ], [ %i.v, %bb.d ] ; 2 uses
  %.176 = phi i32 [ %i.aa, %.lr.ph77 ], [ %.083, %bb.d ] ; 3 uses
  %i.aa = add i32 %.176, 1                        ; 2 uses
  %i.ab = trunc i32 %.176 to i16
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, 1 ; 3 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.r, i64 %indvars.iv96
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !85
  %i.ad = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next97
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !24
  %i.af = zext i8 %i.ae to i64
  %i.ag = icmp eq i64 %indvars.iv99, %i.af
  br i1 %i.ag, label %.lr.ph77, label %._crit_edge78, !llvm.loop !226

._crit_edge78:                                    ; preds = %.lr.ph77
  %i.ah = trunc nsw i64 %indvars.iv.next97 to i32
  %i.ai = trunc nuw nsw i64 %indvars.iv99 to i32
  %.highbits = lshr i32 %.176, %i.ai
  %.not = icmp eq i32 %.highbits, 0
  br i1 %.not, label %bb.e, label %.loopexit65.sink.split

bb.e:                                             ; preds = %._crit_edge78, %bb.d
  %.4 = phi i32 [ %i.ah, %._crit_edge78 ], [ %.25682, %bb.d ] ; 3 uses
  %.2 = phi i32 [ %i.aa, %._crit_edge78 ], [ %.083, %bb.d ] ; 2 uses
  %i.aj = trunc i64 %indvars.iv99 to i32
  %i.ak = sub i32 16, %i.aj
  %i.al = shl i32 %.2, %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv99
  store i32 %i.al, ptr %i.am, align 4, !tbaa !27
  %i.an = shl i32 %.2, 1
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next100, 17
  br i1 %exitcond102.not, label %bb.f, label %bb.d, !llvm.loop !227

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1608
  store i32 -1, ptr %i.ao, align 4, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %0, i8 -1, i64 512, i1 false)
  %i.ap = icmp sgt i32 %.4, 0
  br i1 %i.ap, label %.lr.ph87, label %.loopexit65

.lr.ph87:                                         ; preds = %bb.f
  %wide.trip.count = zext nneg i32 %.4 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph87, %.loopexit
  %indvars.iv106 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next107, %.loopexit ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv106
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !24  ; 2 uses
  %i.as = icmp ult i8 %i.ar, 10
  br i1 %i.as, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv106
  %i.au = load i16, ptr %i.at, align 2, !tbaa !85
  %i.av = zext i16 %i.au to i32
  %narrow = sub nuw nsw i8 9, %i.ar
  %i.aw = zext nneg i8 %narrow to i32             ; 2 uses
  %i.ax = shl nuw nsw i32 %i.av, %i.aw
  %i.ay = trunc i64 %indvars.iv106 to i8
  %i.az = zext nneg i32 %i.ax to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %i.az
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.i
  %indvars.iv103 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next104, %bb.i ] ; 2 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv103
  store i8 %i.ay, ptr %gep, align 1, !tbaa !24
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv.next104 to i32
  %.259.highbits = lshr i32 %i.ba, %i.aw
  %i.bb = icmp eq i32 %.259.highbits, 0
  br i1 %i.bb, label %bb.i, label %.loopexit, !llvm.loop !228

.loopexit:                                        ; preds = %bb.i, %bb.g
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count
  br i1 %exitcond110.not, label %.loopexit65, label %bb.g, !llvm.loop !229

.loopexit65.sink.split:                           ; preds = %.lr.ph, %bb.b, %._crit_edge78
  %.str.6.sink = phi ptr [ @.str.6, %._crit_edge78 ], [ @.str.5, %bb.b ], [ @.str.5, %.lr.ph ]
  %i.bc = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr %.str.6.sink, ptr %i.bc, align 8, !tbaa !26
  br label %.loopexit65

.loopexit65:                                      ; preds = %.loopexit, %.loopexit65.sink.split, %bb.f
  %.062 = phi i32 [ 1, %bb.f ], [ 0, %.loopexit65.sink.split ], [ 1, %.loopexit ]
  ret i32 %.062
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbi__build_fast_ac(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1280
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.d = load i8, ptr %i.c, align 1, !tbaa !24    ; 2 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  store i16 0, ptr %i.e, align 2, !tbaa !85
  %.not = icmp eq i8 %i.d, -1
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext i8 %i.d to i64                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !24
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = and i32 %i.i, 240
  %i.k = and i32 %i.i, 15                         ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %.not36 = icmp eq i32 %i.k, 0
  br i1 %.not36, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = add nuw nsw i32 %i.k, %i.n               ; 2 uses
  %i.p = icmp samesign ult i32 %i.o, 10
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %i.r = shl nuw nsw i32 %i.q, %i.n               ; 2 uses
  %i.s = and i32 %i.r, 511
  %i.t = sub nuw nsw i32 9, %i.k
  %i.u = lshr i32 %i.s, %i.t
  %.highbits.mask = and i32 %i.r, 256
  %i.v = icmp eq i32 %.highbits.mask, 0
  %i.w = shl nsw i32 -1, %i.k
  %i.x = or disjoint i32 %i.w, 1
  %i.y = select i1 %i.v, i32 %i.x, i32 0
  %.0 = add nsw i32 %i.y, %i.u                    ; 2 uses
  %i.z = add nsw i32 %.0, 128
  %or.cond = icmp ult i32 %i.z, 256
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = shl nsw i32 %.0, 8
  %i.ab = or disjoint i32 %i.aa, %i.j
  %i.ac = or disjoint i32 %i.ab, %i.o
  %i.ad = trunc nsw i32 %i.ac to i16
  store i16 %i.ad, ptr %i.e, align 2, !tbaa !85
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.f, %bb.e, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %bb.h, label %bb.b, !llvm.loop !230

bb.h:                                             ; preds = %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbi__grow_buffer_unsafe(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18476 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !231
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.split, label %.split.us

.split.us:                                        ; preds = %bb.a
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !232 ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %.promoted, i32 17)
  %i.f = add nuw i32 %smax, 7
  %i.g = sub i32 %i.f, %.promoted
  %i.h = and i32 %i.g, -8
  %i.i = add i32 %.promoted, %i.h
  %i.j = add i32 %i.i, 8
  store i32 %i.j, ptr %i.b, align 4, !tbaa !232
  br label %.loopexit

.splitthread-pre-split:                           ; preds = %.thread
  %.pr = load i32, ptr %i.a, align 4, !tbaa !231
  br label %.split

.split:                                           ; preds = %bb.a, %.splitthread-pre-split
  %i.k = phi i32 [ %.pr, %.splitthread-pre-split ], [ 0, %bb.a ]
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %.split
  %i.l = load ptr, ptr %0, align 8, !tbaa !103    ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 200 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store ptr %i.r, ptr %i.m, align 8, !tbaa !16
  %i.s = load i8, ptr %i.n, align 1, !tbaa !24
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !13
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !22
  %i.ac = tail call i32 %i.w(ptr noundef %i.y, ptr noundef nonnull %i.z, i32 noundef %i.ab) #37, !inline_history !54 ; 2 uses
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !15
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 184 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !14
  %i.am = add nsw i32 %i.al, %i.aj
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !14
  %i.an = icmp eq i32 %i.ac, 0
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  store i8 0, ptr %i.z, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ap = sext i32 %i.ac to i64
  %i.aq = getelementptr inbounds i8, ptr %i.z, i64 %i.ap
  %.pre.i = load i8, ptr %i.z, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.g, %bb.f
  %i.ar = phi i8 [ 0, %bb.f ], [ %.pre.i, %bb.g ]
  %.sink.i.i = phi ptr [ %i.ao, %bb.f ], [ %i.aq, %bb.g ]
  store ptr %.sink.i.i, ptr %i.o, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  store ptr %i.as, ptr %i.m, align 8, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %stbi__refill_buffer.exit.i, %bb.c
  %.0.i = phi i8 [ %i.s, %bb.c ], [ %i.ar, %stbi__refill_buffer.exit.i ] ; 2 uses
  %i.at = icmp eq i8 %.0.i, -1
  br i1 %i.at, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %0, align 8, !tbaa !103   ; 11 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 192 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !16 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 200 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !18
  %i.az = icmp ult ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !16
  %i.bb = load i8, ptr %i.aw, align 1, !tbaa !24
  br label %stbi__get8.exit23.preheader

bb.k:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !13
  %.not.i18 = icmp eq i32 %i.bd, 0
  br i1 %.not.i18, label %stbi__get8.exit23.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 56 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 52
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !22
  %i.bl = tail call i32 %i.bf(ptr noundef %i.bh, ptr noundef nonnull %i.bi, i32 noundef %i.bk) #37, !inline_history !54 ; 2 uses
  %i.bm = load ptr, ptr %i.av, align 8, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 208
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !15
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = trunc i64 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.au, i64 184 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !14
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !14
  %i.bw = icmp eq i32 %i.bl, 0
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bc, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %i.au, i64 57
  store i8 0, ptr %i.bi, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i20

bb.n:                                             ; preds = %bb.l
  %i.by = sext i32 %i.bl to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bi, i64 %i.by
  %.pre.i19 = load i8, ptr %i.bi, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i20

stbi__refill_buffer.exit.i20:                     ; preds = %bb.n, %bb.m
  %i.ca = phi i8 [ 0, %bb.m ], [ %.pre.i19, %bb.n ]
  %.sink.i.i21 = phi ptr [ %i.bx, %bb.m ], [ %i.bz, %bb.n ]
  store ptr %.sink.i.i21, ptr %i.ax, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.au, i64 57
  store ptr %i.cb, ptr %i.av, align 8, !tbaa !16
  br label %stbi__get8.exit23.preheader

stbi__get8.exit23.preheader:                      ; preds = %bb.j, %bb.k, %stbi__refill_buffer.exit.i20
  %.016.in.ph = phi i8 [ %i.ca, %stbi__refill_buffer.exit.i20 ], [ %i.bb, %bb.j ], [ 0, %bb.k ]
  br label %stbi__get8.exit23

stbi__get8.exit23:                                ; preds = %stbi__get8.exit23.backedge, %stbi__get8.exit23.preheader
  %.016.in = phi i8 [ %.016.in.ph, %stbi__get8.exit23.preheader ], [ %.016.in.be, %stbi__get8.exit23.backedge ] ; 2 uses
  switch i8 %.016.in, label %bb.u [
    i8 -1, label %bb.o
    i8 0, label %.thread
  ]

bb.o:                                             ; preds = %stbi__get8.exit23
  %i.cc = load ptr, ptr %0, align 8, !tbaa !103   ; 11 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 192 ; 4 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !16 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 200 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !18
  %i.ch = icmp ult ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  store ptr %i.ci, ptr %i.cd, align 8, !tbaa !16
  %i.cj = load i8, ptr %i.ce, align 1, !tbaa !24
  br label %stbi__get8.exit23.backedge

stbi__get8.exit23.backedge:                       ; preds = %bb.p, %bb.q, %stbi__refill_buffer.exit.i26
  %.016.in.be = phi i8 [ %i.cj, %bb.p ], [ %i.di, %stbi__refill_buffer.exit.i26 ], [ 0, %bb.q ]
  br label %stbi__get8.exit23, !llvm.loop !233

bb.q:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 48 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !13
  %.not.i24 = icmp eq i32 %i.cl, 0
  br i1 %.not.i24, label %stbi__get8.exit23.backedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 56 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 52
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !22
  %i.ct = tail call i32 %i.cn(ptr noundef %i.cp, ptr noundef nonnull %i.cq, i32 noundef %i.cs) #37, !inline_history !54 ; 2 uses
  %i.cu = load ptr, ptr %i.cd, align 8, !tbaa !16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !15
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = trunc i64 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cc, i64 184 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !14
  %i.dd = add nsw i32 %i.dc, %i.da
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !14
  %i.de = icmp eq i32 %i.ct, 0
  br i1 %i.de, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ck, align 8, !tbaa !13
  %i.df = getelementptr inbounds nuw i8, ptr %i.cc, i64 57
  store i8 0, ptr %i.cq, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i26

bb.t:                                             ; preds = %bb.r
  %i.dg = sext i32 %i.ct to i64
  %i.dh = getelementptr inbounds i8, ptr %i.cq, i64 %i.dg
  %.pre.i25 = load i8, ptr %i.cq, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i26

stbi__refill_buffer.exit.i26:                     ; preds = %bb.t, %bb.s
  %i.di = phi i8 [ 0, %bb.s ], [ %.pre.i25, %bb.t ]
  %.sink.i.i27 = phi ptr [ %i.df, %bb.s ], [ %i.dh, %bb.t ]
  store ptr %.sink.i.i27, ptr %i.cf, align 8, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cc, i64 57
  store ptr %i.dj, ptr %i.cd, align 8, !tbaa !16
  br label %stbi__get8.exit23.backedge

bb.u:                                             ; preds = %stbi__get8.exit23
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 18472
  store i8 %.016.in, ptr %i.dk, align 8, !tbaa !109
  store i32 1, ptr %i.a, align 4, !tbaa !231
  br label %.loopexit

.thread:                                          ; preds = %stbi__get8.exit23, %bb.d, %.split, %bb.h
  %.shrunk = phi i8 [ 0, %.split ], [ 0, %bb.d ], [ %.0.i, %bb.h ], [ -1, %stbi__get8.exit23 ]
  %i.dl = zext i8 %.shrunk to i32
  %i.dm = load i32, ptr %i.b, align 4, !tbaa !232 ; 3 uses
  %i.dn = sub nsw i32 24, %i.dm
  %i.do = shl i32 %i.dl, %i.dn
  %i.dp = load i32, ptr %i.c, align 8, !tbaa !234
  %i.dq = or i32 %i.do, %i.dp
  store i32 %i.dq, ptr %i.c, align 8, !tbaa !234
  %i.dr = add nsw i32 %i.dm, 8
  store i32 %i.dr, ptr %i.b, align 4, !tbaa !232
  %i.ds = icmp slt i32 %i.dm, 17
  br i1 %i.ds, label %.splitthread-pre-split, label %.loopexit, !llvm.loop !235

.loopexit:                                        ; preds = %.thread, %.split.us, %bb.u
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 256) i32 @stbi__jpeg_huff_decode(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !232
  %i.c = icmp slt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !234  ; 5 uses
  %i.f = lshr i32 %i.e, 23
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !24    ; 2 uses
  %.not = icmp eq i8 %i.i, -1
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1280
  %i.k = zext i8 %i.i to i64                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24
  %i.n = zext i8 %i.m to i32                      ; 3 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !232  ; 2 uses
  %i.p = icmp slt i32 %i.o, %i.n
  br i1 %i.p, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = shl i32 %i.e, %i.n
  store i32 %i.q, ptr %i.d, align 8, !tbaa !234
  %i.r = sub nuw nsw i32 %i.o, %i.n
  store i32 %i.r, ptr %i.a, align 4, !tbaa !232
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %i.u = load i8, ptr %i.t, align 1, !tbaa !24
  %i.v = zext i8 %i.u to i32
  br label %bb.m

bb.f:                                             ; preds = %bb.c
  %i.w = lshr i32 %i.e, 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1540
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 10, %bb.f ] ; 6 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !27
  %i.aa = icmp ult i32 %i.w, %i.z
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.aa, label %bb.h, label %bb.g

bb.h:                                             ; preds = %bb.g
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  %i.ac = icmp eq i64 %indvars.iv, 17
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !232 ; 3 uses
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = add nsw i32 %i.ad, -16
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !232
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.af = icmp slt i32 %i.ad, %i.ab
  br i1 %i.af, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = sub nuw nsw i32 32, %i.ab
  %i.ah = lshr i32 %i.e, %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @stbi__bmask, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !27
  %i.ak = and i32 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1612
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !27
  %i.ao = add i32 %i.ak, %i.an                    ; 2 uses
  %or.cond = icmp ugt i32 %i.ao, 255
  br i1 %or.cond, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = sub nuw nsw i32 %i.ad, %i.ab
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !232
  %i.aq = shl i32 %i.e, %i.ab
  store i32 %i.aq, ptr %i.d, align 8, !tbaa !234
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.as = zext nneg i32 %i.ao to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !24
  %i.av = zext i8 %i.au to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.e, %bb.d, %bb.l, %bb.i
  %.1 = phi i32 [ %i.av, %bb.l ], [ -1, %bb.i ], [ -1, %bb.d ], [ -1, %bb.j ], [ %i.v, %bb.e ], [ -1, %bb.k ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @stbi__extend_receive(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !232  ; 2 uses
  %i.c = icmp slt i32 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !232
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = icmp slt i32 %i.d, %1
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !234  ; 3 uses
  %i.h = tail call i32 @llvm.fshl.i32(i32 %i.g, i32 %i.g, i32 %1) ; 2 uses
  %i.i = sext i32 %1 to i64                       ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr @stbi__bmask, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27   ; 2 uses
  %i.l = xor i32 %i.k, -1
  %i.m = and i32 %i.h, %i.l
  store i32 %i.m, ptr %i.f, align 8, !tbaa !234
  %i.n = and i32 %i.h, %i.k
  %i.o = sub nsw i32 %i.d, %1
  store i32 %i.o, ptr %i.a, align 4, !tbaa !232
  %i.p = getelementptr inbounds [4 x i8], ptr @stbi__jbias, i64 %i.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !27
  %.inv = icmp slt i32 %i.g, 0
  %i.r = select i1 %.inv, i32 0, i32 %i.q
  %i.s = add i32 %i.r, %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.s, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @stbi__jpeg_get_bits(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !232  ; 2 uses
  %i.c = icmp slt i32 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !232
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = icmp slt i32 %i.d, %1
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !234  ; 2 uses
  %i.h = tail call i32 @llvm.fshl.i32(i32 %i.g, i32 %i.g, i32 %1) ; 2 uses
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds [4 x i8], ptr @stbi__bmask, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27   ; 2 uses
  %i.l = xor i32 %i.k, -1
  %i.m = and i32 %i.h, %i.l
  store i32 %i.m, ptr %i.f, align 8, !tbaa !234
  %i.n = and i32 %i.h, %i.k
  %i.o = sub nsw i32 %i.d, %1
  store i32 %i.o, ptr %i.a, align 4, !tbaa !232
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.n, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, -2147483647) i32 @stbi__jpeg_get_bit(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !232  ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pr = load i32, ptr %i.a, align 4, !tbaa !232  ; 2 uses
  %i.d = icmp slt i32 %.pr, 1
  br i1 %i.d, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %.pr, %bb.b ], [ %i.b, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !234  ; 2 uses
  %i.h = shl i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !234
  %i.i = add nsw i32 %i.e, -1
  store i32 %i.i, ptr %i.a, align 4, !tbaa !232
  %i.j = and i32 %i.g, -2147483648
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.0 = phi i32 [ %i.j, %.thread ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi__jpeg_decode_block(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 20 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !232
  %i.c = icmp slt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pr = load i32, ptr %i.a, align 4, !tbaa !232
  %i.d = icmp slt i32 %.pr, 16
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 12 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !234  ; 5 uses
  %i.g = lshr i32 %i.f, 23
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !24    ; 2 uses
  %.not.i = icmp eq i8 %i.j, -1
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.l = zext i8 %i.j to i64                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !24
  %i.o = zext i8 %i.n to i32                      ; 3 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !232  ; 2 uses
  %i.q = icmp slt i32 %i.p, %i.o
  br i1 %i.q, label %.thread118.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = shl i32 %i.f, %i.o
  store i32 %i.r, ptr %i.e, align 8, !tbaa !234
  %i.s = sub nuw nsw i32 %i.p, %i.o
  store i32 %i.s, ptr %i.a, align 4, !tbaa !232
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  br label %stbi__jpeg_huff_decode.exit

bb.f:                                             ; preds = %.thread
  %i.v = lshr i32 %i.f, 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 1540
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 10, %bb.f ] ; 6 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !27
  %i.z = icmp ult i32 %i.v, %i.y
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.z, label %bb.h, label %bb.g

bb.h:                                             ; preds = %bb.g
  %i.aa = trunc nuw nsw i64 %indvars.iv.i to i32  ; 4 uses
  %i.ab = icmp eq i64 %indvars.iv.i, 17
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !232 ; 3 uses
  br i1 %i.ab, label %.thread118.sink.split.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp slt i32 %i.ac, %i.aa
  br i1 %i.ad, label %.thread118.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = sub nuw nsw i32 32, %i.aa
  %i.af = lshr i32 %i.f, %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @stbi__bmask, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !27
  %i.ai = and i32 %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !27
  %i.am = add i32 %i.ai, %i.al                    ; 2 uses
  %or.cond.i = icmp ugt i32 %i.am, 255
  br i1 %or.cond.i, label %.thread118.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = sub nuw nsw i32 %i.ac, %i.aa
  store i32 %i.an, ptr %i.a, align 4, !tbaa !232
  %i.ao = shl i32 %i.f, %i.aa
  store i32 %i.ao, ptr %i.e, align 8, !tbaa !234
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.aq = zext nneg i32 %i.am to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  br label %stbi__jpeg_huff_decode.exit

stbi__jpeg_huff_decode.exit:                      ; preds = %bb.e, %bb.k
  %.1.i.in.in = phi ptr [ %i.ar, %bb.k ], [ %i.u, %bb.e ]
  %.1.i.in = load i8, ptr %.1.i.in.in, align 1, !tbaa !24 ; 4 uses
  %.1.i = zext i8 %.1.i.in to i32                 ; 4 uses
  %or.cond = icmp ugt i8 %.1.i.in, 15
  br i1 %or.cond, label %.thread118.sink.split, label %bb.l

bb.l:                                             ; preds = %stbi__jpeg_huff_decode.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  %.not = icmp eq i8 %.1.i.in, 0
  br i1 %.not, label %stbi__extend_receive.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load i32, ptr %i.a, align 4, !tbaa !232 ; 2 uses
  %i.at = icmp slt i32 %i.as, %.1.i
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !232
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.au = phi i32 [ %.pre.i, %bb.n ], [ %i.as, %bb.m ] ; 2 uses
  %i.av = icmp slt i32 %i.au, %.1.i
  br i1 %i.av, label %stbi__extend_receive.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = load i32, ptr %i.e, align 8, !tbaa !234 ; 3 uses
  %i.ax = tail call i32 @llvm.fshl.i32(i32 %i.aw, i32 %i.aw, i32 %.1.i) ; 2 uses
  %i.ay = zext nneg i8 %.1.i.in to i64            ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @stbi__bmask, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !27 ; 2 uses
  %i.bb = xor i32 %i.ba, -1
  %i.bc = and i32 %i.ax, %i.bb
  store i32 %i.bc, ptr %i.e, align 8, !tbaa !234
  %i.bd = and i32 %i.ax, %i.ba
  %i.be = sub nuw nsw i32 %i.au, %.1.i
  store i32 %i.be, ptr %i.a, align 4, !tbaa !232
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr @stbi__jbias, i64 %i.ay
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !27
  %.inv.i = icmp slt i32 %i.aw, 0
  %i.bh = select i1 %.inv.i, i32 0, i32 %i.bg
  %i.bi = add i32 %i.bh, %i.bd
  br label %stbi__extend_receive.exit

stbi__extend_receive.exit:                        ; preds = %bb.p, %bb.o, %bb.l
  %i.bj = phi i32 [ 0, %bb.l ], [ %i.bi, %bb.p ], [ 0, %bb.o ] ; 5 uses
  %i.bk = sext i32 %5 to i64
  %i.bl = getelementptr [96 x i8], ptr %0, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 18104  ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !236 ; 5 uses
  %i.bo = xor i32 %i.bn, %i.bj
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %stbi__addints_valid.exit, label %stbi__addints_valid.exit.thread

stbi__addints_valid.exit:                         ; preds = %stbi__extend_receive.exit
  %i.bq = and i32 %i.bn, %i.bj
  %i.br = sub nsw i32 2147483647, %i.bj
  %i.bs = icmp sgt i32 %i.bn, %i.br
  %i.bt = sub nsw i32 -2147483648, %i.bj
  %i.bu = icmp slt i32 %i.bn, %i.bt
  %or.cond.not.i123 = icmp slt i32 %i.bq, 0
  %.0.shrunk.i = select i1 %or.cond.not.i123, i1 %i.bu, i1 %i.bs
  br i1 %.0.shrunk.i, label %.thread118.sink.split, label %stbi__addints_valid.exit.thread

stbi__addints_valid.exit.thread:                  ; preds = %stbi__extend_receive.exit, %stbi__addints_valid.exit
  %i.bv = add nsw i32 %i.bn, %i.bj                ; 5 uses
  store i32 %i.bv, ptr %i.bm, align 8, !tbaa !236
  %i.bw = load i16, ptr %6, align 2, !tbaa !85    ; 4 uses
  %or.cond.i83 = icmp eq i16 %i.bw, 0
  br i1 %or.cond.i83, label %stbi__mul2shorts_valid.exit.thread, label %bb.q

bb.q:                                             ; preds = %stbi__addints_valid.exit.thread
  %i.bx = icmp sgt i32 %i.bv, -1
  br i1 %i.bx, label %stbi__mul2shorts_valid.exit, label %.split

.split:                                           ; preds = %bb.q
  %i.by = udiv i16 -32768, %i.bw
  %.zext122 = zext i16 %i.by to i32
  %.neg.i = sub nsw i32 0, %.zext122
  %.not150 = icmp slt i32 %i.bv, %.neg.i
  br i1 %.not150, label %.thread118.sink.split, label %stbi__mul2shorts_valid.exit.thread

stbi__mul2shorts_valid.exit:                      ; preds = %bb.q
  %i.bz = udiv i16 32767, %i.bw
  %.zext = zext nneg i16 %i.bz to i32
  %.not151 = icmp samesign ugt i32 %i.bv, %.zext
  br i1 %.not151, label %.thread118.sink.split, label %stbi__mul2shorts_valid.exit.thread

stbi__mul2shorts_valid.exit.thread:               ; preds = %.split, %stbi__addints_valid.exit.thread, %stbi__mul2shorts_valid.exit
  %i.ca = trunc i32 %i.bv to i16
  %i.cb = mul i16 %i.bw, %i.ca
  store i16 %i.cb, ptr %1, align 2, !tbaa !85
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 1280
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 1024
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 1540
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 1612
  %.pre = load i32, ptr %i.a, align 4, !tbaa !232
  br label %bb.r

bb.r:                                             ; preds = %bb.an, %stbi__mul2shorts_valid.exit.thread
  %i.cg = phi i32 [ %.pre, %stbi__mul2shorts_valid.exit.thread ], [ %i.ft, %bb.an ]
  %.066 = phi i32 [ 1, %stbi__mul2shorts_valid.exit.thread ], [ %.4.ph, %bb.an ] ; 3 uses
  %i.ch = icmp slt i32 %i.cg, 16
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ci = load i32, ptr %i.e, align 8, !tbaa !234 ; 3 uses
  %i.cj = lshr i32 %i.ci, 23
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !85 ; 3 uses
  %.not80 = icmp eq i16 %i.cm, 0
  br i1 %.not80, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = zext i16 %i.cm to i32                   ; 2 uses
  %i.co = and i32 %i.cn, 15                       ; 3 uses
  %i.cp = load i32, ptr %i.a, align 4, !tbaa !232 ; 2 uses
  %i.cq = icmp sgt i32 %i.co, %i.cp
  br i1 %i.cq, label %.thread118.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = lshr i32 %i.cn, 4
  %i.cs = and i32 %i.cr, 15
  %i.ct = add nsw i32 %i.cs, %.066                ; 2 uses
  %i.cu = shl i32 %i.ci, %i.co
  store i32 %i.cu, ptr %i.e, align 8, !tbaa !234
  %i.cv = sub nuw nsw i32 %i.cp, %i.co            ; 2 uses
  store i32 %i.cv, ptr %i.a, align 4, !tbaa !232
  %i.cw = add nsw i32 %i.ct, 1
  %i.cx = sext i32 %i.ct to i64
  %i.cy = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !24
  %i.da = ashr i16 %i.cm, 8
  %i.db = zext i8 %i.cz to i64                    ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !85
  %i.de = mul i16 %i.dd, %i.da
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.db
  store i16 %i.de, ptr %i.df, align 2, !tbaa !85
  br label %bb.an

bb.w:                                             ; preds = %bb.t
  %i.dg = load i32, ptr %i.a, align 4, !tbaa !232
  %i.dh = icmp slt i32 %i.dg, 16
  br i1 %i.dh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre124 = load i32, ptr %i.e, align 8, !tbaa !234 ; 2 uses
  %.pre125 = lshr i32 %.pre124, 23
  %.pre126 = zext nneg i32 %.pre125 to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pre-phi127 = phi i64 [ %.pre126, %bb.x ], [ %i.ck, %bb.w ]
  %i.di = phi i32 [ %.pre124, %bb.x ], [ %i.ci, %bb.w ] ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 %.pre-phi127
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !24  ; 2 uses
  %.not.i86 = icmp eq i8 %i.dk, -1
  br i1 %.not.i86, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = zext i8 %i.dk to i64                    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !24
  %i.do = zext i8 %i.dn to i32                    ; 3 uses
  %i.dp = load i32, ptr %i.a, align 4, !tbaa !232 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %i.do
  br i1 %i.dq, label %.thread118.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dr = shl i32 %i.di, %i.do
  store i32 %i.dr, ptr %i.e, align 8, !tbaa !234
  %i.ds = sub nuw nsw i32 %i.dp, %i.do            ; 2 uses
  store i32 %i.ds, ptr %i.a, align 4, !tbaa !232
  br label %stbi__jpeg_huff_decode.exit91

bb.ab:                                            ; preds = %bb.y
  %i.dt = lshr i32 %i.di, 16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %indvars.iv.i88 = phi i64 [ %indvars.iv.next.i89, %bb.ac ], [ 10, %bb.ab ] ; 6 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.i88
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !27
  %i.dw = icmp ult i32 %i.dt, %i.dv
  %indvars.iv.next.i89 = add nuw nsw i64 %indvars.iv.i88, 1
  br i1 %i.dw, label %bb.ad, label %bb.ac

bb.ad:                                            ; preds = %bb.ac
  %i.dx = trunc nuw nsw i64 %indvars.iv.i88 to i32 ; 4 uses
  %i.dy = icmp eq i64 %indvars.iv.i88, 17
  %i.dz = load i32, ptr %i.a, align 4, !tbaa !232 ; 3 uses
  br i1 %i.dy, label %.thread118.sink.split.sink.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ea = icmp slt i32 %i.dz, %i.dx
  br i1 %i.ea, label %.thread118.sink.split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eb = sub nuw nsw i32 32, %i.dx
  %i.ec = lshr i32 %i.di, %i.eb
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr @stbi__bmask, i64 %indvars.iv.i88
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !27
  %i.ef = and i32 %i.ee, %i.ec
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i88
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !27
  %i.ei = add i32 %i.ef, %i.eh                    ; 2 uses
  %or.cond.i90 = icmp ugt i32 %i.ei, 255
  br i1 %or.cond.i90, label %.thread118.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ej = sub nuw nsw i32 %i.dz, %i.dx            ; 2 uses
  store i32 %i.ej, ptr %i.a, align 4, !tbaa !232
  %i.ek = shl i32 %i.di, %i.dx
  store i32 %i.ek, ptr %i.e, align 8, !tbaa !234
  %i.el = zext nneg i32 %i.ei to i64
  br label %stbi__jpeg_huff_decode.exit91

stbi__jpeg_huff_decode.exit91:                    ; preds = %bb.ag, %bb.aa
  %i.em = phi i32 [ %i.ej, %bb.ag ], [ %i.ds, %bb.aa ] ; 3 uses
  %.pn = phi i64 [ %i.el, %bb.ag ], [ %i.dl, %bb.aa ]
  %.1.i87.in.in = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.pn
  %.1.i87.in = load i8, ptr %.1.i87.in.in, align 1, !tbaa !24 ; 2 uses
  %.1.i87 = zext i8 %.1.i87.in to i32             ; 2 uses
  %i.en = and i32 %.1.i87, 15                     ; 6 uses
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %stbi__jpeg_huff_decode.exit91
  %.not81 = icmp eq i8 %.1.i87.in, -16
  br i1 %.not81, label %bb.ai, label %.thread118

bb.ai:                                            ; preds = %bb.ah
  %i.ep = add nsw i32 %.066, 16
  br label %bb.an

bb.aj:                                            ; preds = %stbi__jpeg_huff_decode.exit91
  %i.eq = lshr i32 %.1.i87, 4
  %i.er = add nsw i32 %i.eq, %.066                ; 2 uses
  %i.es = add nsw i32 %i.er, 1
  %i.et = sext i32 %i.er to i64
  %i.eu = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !24
  %i.ew = icmp slt i32 %i.em, %i.en
  br i1 %i.ew, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre.i94 = load i32, ptr %i.a, align 4, !tbaa !232
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ex = phi i32 [ %.pre.i94, %bb.ak ], [ %i.em, %bb.aj ] ; 3 uses
  %i.ey = icmp slt i32 %i.ex, %i.en
  br i1 %i.ey, label %stbi__extend_receive.exit95, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ez = load i32, ptr %i.e, align 8, !tbaa !234 ; 3 uses
  %i.fa = tail call i32 @llvm.fshl.i32(i32 %i.ez, i32 %i.ez, i32 %i.en) ; 2 uses
  %i.fb = zext nneg i32 %i.en to i64              ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr @stbi__bmask, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !27 ; 2 uses
  %i.fe = xor i32 %i.fd, -1
  %i.ff = and i32 %i.fa, %i.fe
  store i32 %i.ff, ptr %i.e, align 8, !tbaa !234
  %i.fg = and i32 %i.fa, %i.fd
  %i.fh = sub nuw nsw i32 %i.ex, %i.en            ; 2 uses
  store i32 %i.fh, ptr %i.a, align 4, !tbaa !232
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr @stbi__jbias, i64 %i.fb
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !27
  %.inv.i92 = icmp slt i32 %i.ez, 0
  %i.fk = select i1 %.inv.i92, i32 0, i32 %i.fj
  %i.fl = add i32 %i.fk, %i.fg
  %i.fm = trunc i32 %i.fl to i16
  br label %stbi__extend_receive.exit95

stbi__extend_receive.exit95:                      ; preds = %bb.al, %bb.am
  %i.fn = phi i32 [ %i.fh, %bb.am ], [ %i.ex, %bb.al ]
  %.0.i93 = phi i16 [ %i.fm, %bb.am ], [ 0, %bb.al ]
  %i.fo = zext i8 %i.ev to i64                    ; 2 uses
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !85
  %i.fr = mul i16 %i.fq, %.0.i93
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.fo
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !85
  br label %bb.an

bb.an:                                            ; preds = %bb.v, %stbi__extend_receive.exit95, %bb.ai
  %i.ft = phi i32 [ %i.em, %bb.ai ], [ %i.fn, %stbi__extend_receive.exit95 ], [ %i.cv, %bb.v ]
  %.4.ph = phi i32 [ %i.ep, %bb.ai ], [ %i.es, %stbi__extend_receive.exit95 ], [ %i.cw, %bb.v ] ; 2 uses
  %i.fu = icmp slt i32 %.4.ph, 64
  br i1 %i.fu, label %bb.r, label %.thread118, !llvm.loop !239

.thread118.sink.split.sink.split:                 ; preds = %bb.ad, %bb.h
  %.lcssa.sink = phi i32 [ %i.ac, %bb.h ], [ %i.dz, %bb.ad ]
  %i.fv = add nsw i32 %.lcssa.sink, -16
  store i32 %i.fv, ptr %i.a, align 4, !tbaa !232
  br label %.thread118.sink.split

.thread118.sink.split:                            ; preds = %bb.af, %bb.ae, %bb.z, %bb.u, %.thread118.sink.split.sink.split, %stbi__mul2shorts_valid.exit, %.split, %stbi__addints_valid.exit, %stbi__jpeg_huff_decode.exit, %bb.d, %bb.i, %bb.j
  %.str.7.sink = phi ptr [ @.str.9, %.split ], [ @.str.9, %stbi__mul2shorts_valid.exit ], [ @.str.8, %stbi__addints_valid.exit ], [ @.str.7, %stbi__jpeg_huff_decode.exit ], [ @.str.7, %bb.j ], [ @.str.7, %bb.i ], [ @.str.7, %bb.d ], [ @.str.7, %.thread118.sink.split.sink.split ], [ @.str.7, %bb.u ], [ @.str.7, %bb.z ], [ @.str.7, %bb.ae ], [ @.str.7, %bb.af ]
  %i.fw = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr %.str.7.sink, ptr %i.fw, align 8, !tbaa !26
  br label %.thread118

.thread118:                                       ; preds = %bb.an, %bb.ah, %.thread118.sink.split
  %.472 = phi i32 [ 0, %.thread118.sink.split ], [ 1, %bb.ah ], [ 1, %bb.an ]
  ret i32 %.472
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi__jpeg_decode_block_prog_dc(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.b = load i32, ptr %i.a, align 8, !tbaa !240
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.9, ptr %i.c, align 8, !tbaa !26
  br label %stbi__jpeg_get_bit.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 12 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !232
  %i.f = icmp slt i32 %i.e, 16
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18492
  %i.h = load i32, ptr %i.g, align 4, !tbaa !241
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.z

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  %i.j = load i32, ptr %i.d, align 4, !tbaa !232
  %i.k = icmp slt i32 %i.j, 16
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !234  ; 5 uses
  %i.n = lshr i32 %i.m, 23
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !24    ; 2 uses
  %.not.i = icmp eq i8 %i.q, -1
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.s = zext i8 %i.q to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !24
  %i.v = zext i8 %i.u to i32                      ; 3 uses
  %i.w = load i32, ptr %i.d, align 4, !tbaa !232  ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.v
  br i1 %i.x, label %stbi__jpeg_huff_decode.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = shl i32 %i.m, %i.v
  store i32 %i.y, ptr %i.l, align 8, !tbaa !234
  %i.z = sub nuw nsw i32 %i.w, %i.v               ; 2 uses
  store i32 %i.z, ptr %i.d, align 4, !tbaa !232
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  br label %stbi__jpeg_huff_decode.exit

bb.k:                                             ; preds = %bb.h
  %i.ac = lshr i32 %i.m, 16
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 1540
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 10, %bb.k ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27
  %i.ag = icmp ult i32 %i.ac, %i.af
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.ag, label %bb.m, label %bb.l

bb.m:                                             ; preds = %bb.l
  %i.ah = trunc nuw nsw i64 %indvars.iv.i to i32  ; 4 uses
  %i.ai = icmp eq i64 %indvars.iv.i, 17
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !232 ; 3 uses
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = add nsw i32 %i.aj, -16
  store i32 %i.ak, ptr %i.d, align 4, !tbaa !232
  br label %stbi__jpeg_huff_decode.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.al = icmp slt i32 %i.aj, %i.ah
  br i1 %i.al, label %stbi__jpeg_huff_decode.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = sub nuw nsw i32 32, %i.ah
  %i.an = lshr i32 %i.m, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @stbi__bmask, i64 %indvars.iv.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !27
  %i.aq = and i32 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !27
  %i.au = add i32 %i.aq, %i.at                    ; 2 uses
  %or.cond.i = icmp ugt i32 %i.au, 255
  br i1 %or.cond.i, label %stbi__jpeg_huff_decode.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = sub nuw nsw i32 %i.aj, %i.ah            ; 2 uses
  store i32 %i.av, ptr %i.d, align 4, !tbaa !232
  %i.aw = shl i32 %i.m, %i.ah
  store i32 %i.aw, ptr %i.l, align 8, !tbaa !234
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ay = zext nneg i32 %i.au to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay
  br label %stbi__jpeg_huff_decode.exit

stbi__jpeg_huff_decode.exit:                      ; preds = %bb.j, %bb.q
  %i.ba = phi i32 [ %i.av, %bb.q ], [ %i.z, %bb.j ] ; 2 uses
  %.1.i.in.in = phi ptr [ %i.az, %bb.q ], [ %i.ab, %bb.j ]
  %.1.i.in = load i8, ptr %.1.i.in.in, align 1, !tbaa !24 ; 4 uses
  %.1.i = zext i8 %.1.i.in to i32                 ; 4 uses
  %or.cond = icmp ugt i8 %.1.i.in, 15
  br i1 %or.cond, label %stbi__jpeg_huff_decode.exit.thread, label %bb.r

stbi__jpeg_huff_decode.exit.thread:               ; preds = %bb.p, %bb.o, %bb.i, %bb.n, %stbi__jpeg_huff_decode.exit
  %i.bb = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.9, ptr %i.bb, align 8, !tbaa !26
  br label %stbi__jpeg_get_bit.exit.thread

bb.r:                                             ; preds = %stbi__jpeg_huff_decode.exit
  %.not32 = icmp eq i8 %.1.i.in, 0
  br i1 %.not32, label %stbi__extend_receive.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = icmp slt i32 %i.ba, %.1.i
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !232
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bd = phi i32 [ %.pre.i, %bb.t ], [ %i.ba, %bb.s ] ; 2 uses
  %i.be = icmp slt i32 %i.bd, %.1.i
  br i1 %i.be, label %stbi__extend_receive.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = load i32, ptr %i.l, align 8, !tbaa !234 ; 3 uses
  %i.bg = tail call i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 %.1.i) ; 2 uses
  %i.bh = zext nneg i8 %.1.i.in to i64            ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @stbi__bmask, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !27 ; 2 uses
  %i.bk = xor i32 %i.bj, -1
  %i.bl = and i32 %i.bg, %i.bk
  store i32 %i.bl, ptr %i.l, align 8, !tbaa !234
  %i.bm = and i32 %i.bg, %i.bj
  %i.bn = sub nuw nsw i32 %i.bd, %.1.i
  store i32 %i.bn, ptr %i.d, align 4, !tbaa !232
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @stbi__jbias, i64 %i.bh
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !27
  %.inv.i = icmp slt i32 %i.bf, 0
  %i.bq = select i1 %.inv.i, i32 0, i32 %i.bp
  %i.br = add i32 %i.bq, %i.bm
  br label %stbi__extend_receive.exit

stbi__extend_receive.exit:                        ; preds = %bb.v, %bb.u, %bb.r
  %i.bs = phi i32 [ 0, %bb.r ], [ %i.br, %bb.v ], [ 0, %bb.u ] ; 5 uses
  %i.bt = sext i32 %3 to i64
  %i.bu = getelementptr [96 x i8], ptr %0, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 18104  ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !236 ; 5 uses
  %i.bx = xor i32 %i.bw, %i.bs
  %i.by = icmp sgt i32 %i.bx, -1
  br i1 %i.by, label %stbi__addints_valid.exit, label %stbi__addints_valid.exit.thread

stbi__addints_valid.exit:                         ; preds = %stbi__extend_receive.exit
  %i.bz = and i32 %i.bw, %i.bs
  %i.ca = sub nsw i32 2147483647, %i.bs
  %i.cb = icmp sgt i32 %i.bw, %i.ca
  %i.cc = sub nsw i32 -2147483648, %i.bs
  %i.cd = icmp slt i32 %i.bw, %i.cc
  %or.cond.not.i50 = icmp slt i32 %i.bz, 0
  %.0.shrunk.i = select i1 %or.cond.not.i50, i1 %i.cd, i1 %i.cb
  br i1 %.0.shrunk.i, label %bb.w, label %stbi__addints_valid.exit.thread

bb.w:                                             ; preds = %stbi__addints_valid.exit
  %i.ce = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.ce, align 8, !tbaa !26
  br label %stbi__jpeg_get_bit.exit.thread

stbi__addints_valid.exit.thread:                  ; preds = %stbi__extend_receive.exit, %stbi__addints_valid.exit
  %i.cf = add nsw i32 %i.bw, %i.bs                ; 6 uses
  store i32 %i.cf, ptr %i.bv, align 8, !tbaa !236
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !242 ; 5 uses
  %i.ci = shl nuw i32 1, %i.ch
  %i.cj = xor i32 %i.ci, %i.cf
  %i.ck = icmp sgt i32 %i.cj, -1
  br i1 %i.ck, label %stbi__mul2shorts_valid.exit, label %bb.x

bb.x:                                             ; preds = %stbi__addints_valid.exit.thread
  %i.cl = icmp eq i32 %i.ch, 31
  br i1 %i.cl, label %.split61, label %.split

.split61:                                         ; preds = %bb.x
  %i.cm = icmp slt i32 %i.cf, 1
  br i1 %i.cm, label %stbi__mul2shorts_valid.exit.thread, label %bb.y

.split:                                           ; preds = %bb.x
  %i.cn = lshr i32 32768, %i.ch
  %.neg.i = sub nsw i32 0, %i.cn
  %.not62 = icmp slt i32 %i.cf, %.neg.i
  br i1 %.not62, label %bb.y, label %stbi__mul2shorts_valid.exit.thread

stbi__mul2shorts_valid.exit:                      ; preds = %stbi__addints_valid.exit.thread
  %i.co = lshr i32 32767, %i.ch
  %.not63 = icmp sgt i32 %i.cf, %i.co
  br i1 %.not63, label %bb.y, label %stbi__mul2shorts_valid.exit.thread

bb.y:                                             ; preds = %.split61, %.split, %stbi__mul2shorts_valid.exit
  %i.cp = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.9, ptr %i.cp, align 8, !tbaa !26
  br label %stbi__jpeg_get_bit.exit.thread

stbi__mul2shorts_valid.exit.thread:               ; preds = %.split61, %.split, %stbi__mul2shorts_valid.exit
  %i.cq = shl i32 %i.cf, %i.ch
  %i.cr = trunc i32 %i.cq to i16
  store i16 %i.cr, ptr %1, align 2, !tbaa !85
  br label %stbi__jpeg_get_bit.exit.thread

bb.z:                                             ; preds = %bb.e
  %i.cs = load i32, ptr %i.d, align 4, !tbaa !232 ; 2 uses
  %i.ct = icmp slt i32 %i.cs, 1
  br i1 %i.ct, label %bb.aa, label %stbi__jpeg_get_bit.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pr.i = load i32, ptr %i.d, align 4, !tbaa !232 ; 2 uses
  %i.cu = icmp slt i32 %.pr.i, 1
  br i1 %i.cu, label %stbi__jpeg_get_bit.exit.thread, label %stbi__jpeg_get_bit.exit

stbi__jpeg_get_bit.exit:                          ; preds = %bb.z, %bb.aa
  %i.cv = phi i32 [ %.pr.i, %bb.aa ], [ %i.cs, %bb.z ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !234 ; 2 uses
  %i.cy = shl i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cw, align 8, !tbaa !234
  %i.cz = add nsw i32 %i.cv, -1
  store i32 %i.cz, ptr %i.d, align 4, !tbaa !232
  %.not31 = icmp sgt i32 %i.cx, -1
  br i1 %.not31, label %stbi__jpeg_get_bit.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %stbi__jpeg_get_bit.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %i.db = load i32, ptr %i.da, align 8, !tbaa !242
  %i.dc = shl nuw i32 1, %i.db
  %i.dd = load i16, ptr %1, align 2, !tbaa !85
  %i.de = trunc i32 %i.dc to i16
  %i.df = add i16 %i.dd, %i.de
  store i16 %i.df, ptr %1, align 2, !tbaa !85
  br label %stbi__jpeg_get_bit.exit.thread

stbi__jpeg_get_bit.exit.thread:                   ; preds = %bb.aa, %stbi__mul2shorts_valid.exit.thread, %bb.ab, %stbi__jpeg_get_bit.exit, %bb.y, %bb.w, %stbi__jpeg_huff_decode.exit.thread, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %stbi__jpeg_huff_decode.exit.thread ], [ 0, %bb.w ], [ 0, %bb.y ], [ 1, %stbi__jpeg_get_bit.exit ], [ 1, %bb.ab ], [ 1, %stbi__mul2shorts_valid.exit.thread ], [ 1, %bb.aa ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi__jpeg_decode_block_prog_ac(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18484
  %i.b = load i32, ptr %i.a, align 4, !tbaa !243  ; 5 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.9, ptr %i.d, align 8, !tbaa !26
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18492
  %i.f = load i32, ptr %i.e, align 4, !tbaa !241
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %i.i = load i32, ptr %i.h, align 8, !tbaa !242  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18500 ; 9 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !244  ; 3 uses
  %.not166 = icmp eq i32 %i.k, 0                  ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.ak

bb.d:                                             ; preds = %bb.c
  br i1 %.not166, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 1540
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %.pre267 = load i32, ptr %i.l, align 4, !tbaa !232
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.k, -1
  store i32 %i.s, ptr %i.j, align 4, !tbaa !244
  br label %.critedge

bb.f:                                             ; preds = %.preheader, %bb.aj
  %i.t = phi i32 [ %i.dy, %bb.aj ], [ %.pre267, %.preheader ]
  %.0120 = phi i32 [ %.4124.ph, %bb.aj ], [ %i.b, %.preheader ] ; 3 uses
  %i.u = icmp slt i32 %i.t, 16
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = load i32, ptr %i.m, align 8, !tbaa !234  ; 3 uses
  %i.w = lshr i32 %i.v, 23
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !85   ; 2 uses
  %i.aa = sext i16 %i.z to i32                    ; 3 uses
  %.not167 = icmp eq i16 %i.z, 0
  br i1 %.not167, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = and i32 %i.aa, 15                       ; 3 uses
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !232 ; 2 uses
  %i.ad = icmp sgt i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.7, ptr %i.ae, align 8, !tbaa !26
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.af = lshr i32 %i.aa, 4
  %i.ag = and i32 %i.af, 15
  %i.ah = add nsw i32 %i.ag, %.0120               ; 2 uses
  %i.ai = shl i32 %i.v, %i.ab
  store i32 %i.ai, ptr %i.m, align 8, !tbaa !234
  %i.aj = sub nuw nsw i32 %i.ac, %i.ab            ; 2 uses
  store i32 %i.aj, ptr %i.l, align 4, !tbaa !232
  %i.ak = add nsw i32 %i.ah, 1
  %i.al = sext i32 %i.ah to i64
  %i.am = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !24
  %i.ao = lshr i32 %i.aa, 8
  %i.ap = shl i32 %i.ao, %i.i
  %i.aq = trunc i32 %i.ap to i16
  %i.ar = zext i8 %i.an to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ar
  store i16 %i.aq, ptr %i.as, align 2, !tbaa !85
  br label %bb.aj

bb.l:                                             ; preds = %bb.h
  %i.at = load i32, ptr %i.l, align 4, !tbaa !232
  %i.au = icmp slt i32 %i.at, 16
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre268 = load i32, ptr %i.m, align 8, !tbaa !234 ; 2 uses
  %.pre269 = lshr i32 %.pre268, 23
  %.pre270 = zext nneg i32 %.pre269 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre-phi271 = phi i64 [ %.pre270, %bb.m ], [ %i.x, %bb.l ]
  %i.av = phi i32 [ %.pre268, %bb.m ], [ %i.v, %bb.l ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %.pre-phi271
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !24  ; 2 uses
  %.not.i = icmp eq i8 %i.ax, -1
  br i1 %.not.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = zext i8 %i.ax to i64                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !24
  %i.bb = zext i8 %i.ba to i32                    ; 3 uses
  %i.bc = load i32, ptr %i.l, align 4, !tbaa !232 ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.bb
  br i1 %i.bd, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = shl i32 %i.av, %i.bb
  store i32 %i.be, ptr %i.m, align 8, !tbaa !234
  %i.bf = sub nuw nsw i32 %i.bc, %i.bb            ; 2 uses
  store i32 %i.bf, ptr %i.l, align 4, !tbaa !232
  br label %stbi__jpeg_huff_decode.exit

bb.q:                                             ; preds = %bb.n
  %i.bg = lshr i32 %i.av, 16
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.r ], [ 10, %bb.q ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !27
  %i.bj = icmp ult i32 %i.bg, %i.bi
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.bj, label %bb.s, label %bb.r

bb.s:                                             ; preds = %bb.r
  %i.bk = trunc nuw nsw i64 %indvars.iv.i to i32  ; 4 uses
  %i.bl = icmp eq i64 %indvars.iv.i, 17
  %i.bm = load i32, ptr %i.l, align 4, !tbaa !232 ; 3 uses
  br i1 %i.bl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bn = add nsw i32 %i.bm, -16
  store i32 %i.bn, ptr %i.l, align 4, !tbaa !232
  br label %.loopexit

bb.u:                                             ; preds = %bb.s
  %i.bo = icmp slt i32 %i.bm, %i.bk
  br i1 %i.bo, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = sub nuw nsw i32 32, %i.bk
  %i.bq = lshr i32 %i.av, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @stbi__bmask, i64 %indvars.iv.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !27
  %i.bt = and i32 %i.bs, %i.bq
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !27
  %i.bw = add i32 %i.bt, %i.bv                    ; 2 uses
  %or.cond.i = icmp ugt i32 %i.bw, 255
  br i1 %or.cond.i, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = sub nuw nsw i32 %i.bm, %i.bk            ; 2 uses
  store i32 %i.bx, ptr %i.l, align 4, !tbaa !232
  %i.by = shl i32 %i.av, %i.bk
  store i32 %i.by, ptr %i.m, align 8, !tbaa !234
  %i.bz = zext nneg i32 %i.bw to i64
  br label %stbi__jpeg_huff_decode.exit

.loopexit:                                        ; preds = %bb.o, %bb.u, %bb.v, %bb.t
  %i.ca = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.7, ptr %i.ca, align 8, !tbaa !26
  br label %.critedge

stbi__jpeg_huff_decode.exit:                      ; preds = %bb.w, %bb.p
  %i.cb = phi i32 [ %i.bx, %bb.w ], [ %i.bf, %bb.p ] ; 5 uses
  %.pn308 = phi i64 [ %i.bz, %bb.w ], [ %i.ay, %bb.p ]
  %.1.i.in.in = getelementptr inbounds nuw i8, ptr %i.o, i64 %.pn308
  %.1.i.in = load i8, ptr %.1.i.in.in, align 1, !tbaa !24 ; 2 uses
  %.1.i = zext i8 %.1.i.in to i32                 ; 2 uses
  %i.cc = and i32 %.1.i, 15                       ; 6 uses
  %i.cd = lshr i32 %.1.i, 4                       ; 8 uses
  %i.ce = icmp eq i32 %i.cc, 0
  br i1 %i.ce, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %stbi__jpeg_huff_decode.exit
  %i.cf = icmp ult i8 %.1.i.in, -16
  br i1 %i.cf, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.cg = shl nuw nsw i32 1, %i.cd
  store i32 %i.cg, ptr %i.j, align 4, !tbaa !244
  %.not168 = icmp eq i32 %i.cd, 0
  br i1 %.not168, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = icmp slt i32 %i.cb, %i.cd
  br i1 %i.ch, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre.i = load i32, ptr %i.l, align 4, !tbaa !232
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ci = phi i32 [ %.pre.i, %bb.aa ], [ %i.cb, %bb.z ] ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.cd
  br i1 %i.cj, label %stbi__jpeg_get_bits.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = load i32, ptr %i.m, align 8, !tbaa !234 ; 2 uses
  %i.cl = tail call i32 @llvm.fshl.i32(i32 %i.ck, i32 %i.ck, i32 %i.cd) ; 2 uses
  %i.cm = zext nneg i32 %i.cd to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @stbi__bmask, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !27 ; 2 uses
  %i.cp = xor i32 %i.co, -1
  %i.cq = and i32 %i.cl, %i.cp
  store i32 %i.cq, ptr %i.m, align 8, !tbaa !234
  %i.cr = and i32 %i.cl, %i.co
  %i.cs = sub nuw nsw i32 %i.ci, %i.cd
  store i32 %i.cs, ptr %i.l, align 4, !tbaa !232
  br label %stbi__jpeg_get_bits.exit

stbi__jpeg_get_bits.exit:                         ; preds = %bb.ab, %bb.ac
  %.0.i = phi i32 [ %i.cr, %bb.ac ], [ 0, %bb.ab ]
  %i.ct = load i32, ptr %i.j, align 4, !tbaa !244
  %i.cu = add nsw i32 %i.ct, %.0.i
  %i.cv = add nsw i32 %i.cu, -1
  br label %bb.ai

bb.ad:                                            ; preds = %bb.x
  %i.cw = add nsw i32 %.0120, 16
  br label %bb.aj

bb.ae:                                            ; preds = %stbi__jpeg_huff_decode.exit
  %i.cx = add nsw i32 %i.cd, %.0120               ; 2 uses
  %i.cy = add nsw i32 %i.cx, 1
  %i.cz = sext i32 %i.cx to i64
  %i.da = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !24
  %i.dc = icmp slt i32 %i.cb, %i.cc
  br i1 %i.dc, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre.i172 = load i32, ptr %i.l, align 4, !tbaa !232
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dd = phi i32 [ %.pre.i172, %bb.af ], [ %i.cb, %bb.ae ] ; 3 uses
  %i.de = icmp slt i32 %i.dd, %i.cc
  br i1 %i.de, label %stbi__extend_receive.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.df = load i32, ptr %i.m, align 8, !tbaa !234 ; 3 uses
  %i.dg = tail call i32 @llvm.fshl.i32(i32 %i.df, i32 %i.df, i32 %i.cc) ; 2 uses
  %i.dh = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @stbi__bmask, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !27 ; 2 uses
  %i.dk = xor i32 %i.dj, -1
  %i.dl = and i32 %i.dg, %i.dk
  store i32 %i.dl, ptr %i.m, align 8, !tbaa !234
  %i.dm = and i32 %i.dg, %i.dj
  %i.dn = sub nuw nsw i32 %i.dd, %i.cc            ; 2 uses
  store i32 %i.dn, ptr %i.l, align 4, !tbaa !232
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @stbi__jbias, i64 %i.dh
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !27
  %.inv.i = icmp slt i32 %i.df, 0
  %i.dq = select i1 %.inv.i, i32 0, i32 %i.dp
  %i.dr = add i32 %i.dq, %i.dm
  br label %stbi__extend_receive.exit

stbi__extend_receive.exit:                        ; preds = %bb.ag, %bb.ah
  %i.ds = phi i32 [ %i.dn, %bb.ah ], [ %i.dd, %bb.ag ]
  %.0.i171 = phi i32 [ %i.dr, %bb.ah ], [ 0, %bb.ag ]
  %i.dt = shl i32 %.0.i171, %i.i
  %i.du = trunc i32 %i.dt to i16
  %i.dv = zext i8 %i.db to i64
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.dv
  store i16 %i.du, ptr %i.dw, align 2, !tbaa !85
  br label %bb.aj

bb.ai:                                            ; preds = %bb.y, %stbi__jpeg_get_bits.exit
  %i.dx = phi i32 [ 0, %bb.y ], [ %i.cv, %stbi__jpeg_get_bits.exit ]
  store i32 %i.dx, ptr %i.j, align 4, !tbaa !244
  br label %.critedge

bb.aj:                                            ; preds = %bb.k, %stbi__extend_receive.exit, %bb.ad
  %i.dy = phi i32 [ %i.cb, %bb.ad ], [ %i.ds, %stbi__extend_receive.exit ], [ %i.aj, %bb.k ]
  %.4124.ph = phi i32 [ %i.cw, %bb.ad ], [ %i.cy, %stbi__extend_receive.exit ], [ %i.ak, %bb.k ] ; 2 uses
  %i.dz = load i32, ptr %i.r, align 8, !tbaa !240
  %.not169 = icmp sgt i32 %.4124.ph, %i.dz
  br i1 %.not169, label %.critedge, label %bb.f, !llvm.loop !245

bb.ak:                                            ; preds = %bb.c
  br i1 %.not166, label %.preheader223, label %bb.al

.preheader223:                                    ; preds = %bb.ak
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 12 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 9 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 1540
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %sext155 = shl i32 65536, %i.i
  %i.eg = ashr exact i32 %sext155, 16             ; 4 uses
  %i.eh = sub nsw i32 0, %i.eg                    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 18488 ; 2 uses
  %i.ej = trunc nsw i32 %i.eg to i16              ; 2 uses
  %.pre = load i32, ptr %i.ea, align 4, !tbaa !232
  br label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.ek = add nsw i32 %i.k, -1
  store i32 %i.ek, ptr %i.j, align 4, !tbaa !244
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 18488 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !240
  %.not162248 = icmp sgt i32 %i.b, %i.em
  br i1 %.not162248, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.al
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  %sext165 = shl i32 65536, %i.i
  %i.ep = ashr exact i32 %sext165, 16             ; 2 uses
  %i.eq = trunc nsw i32 %i.ep to i16              ; 2 uses
  %i.er = sext i32 %i.b to i64
  %i.es = sub i16 0, %i.eq
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph, %stbi__jpeg_get_bit.exit.thread
  %indvars.iv = phi i64 [ %i.er, %.lr.ph ], [ %indvars.iv.next, %stbi__jpeg_get_bit.exit.thread ] ; 3 uses
  %i.et = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %indvars.iv
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !24
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ev ; 3 uses
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !85
  %.not163 = icmp eq i16 %i.ex, 0
  br i1 %.not163, label %stbi__jpeg_get_bit.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ey = load i32, ptr %i.en, align 4, !tbaa !232 ; 2 uses
  %i.ez = icmp slt i32 %i.ey, 1
  br i1 %i.ez, label %bb.ao, label %stbi__jpeg_get_bit.exit

bb.ao:                                            ; preds = %bb.an
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pr.i = load i32, ptr %i.en, align 4, !tbaa !232 ; 2 uses
  %i.fa = icmp slt i32 %.pr.i, 1
  br i1 %i.fa, label %stbi__jpeg_get_bit.exit.thread, label %stbi__jpeg_get_bit.exit

stbi__jpeg_get_bit.exit:                          ; preds = %bb.an, %bb.ao
  %i.fb = phi i32 [ %.pr.i, %bb.ao ], [ %i.ey, %bb.an ]
  %i.fc = load i32, ptr %i.eo, align 8, !tbaa !234 ; 2 uses
  %i.fd = shl i32 %i.fc, 1
  store i32 %i.fd, ptr %i.eo, align 8, !tbaa !234
  %i.fe = add nsw i32 %i.fb, -1
  store i32 %i.fe, ptr %i.en, align 4, !tbaa !232
  %.not164 = icmp sgt i32 %i.fc, -1
  br i1 %.not164, label %stbi__jpeg_get_bit.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %stbi__jpeg_get_bit.exit
  %i.ff = load i16, ptr %i.ew, align 2, !tbaa !85 ; 3 uses
  %i.fg = sext i16 %i.ff to i32
  %i.fh = and i32 %i.ep, %i.fg
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %stbi__jpeg_get_bit.exit.thread.sink.split, label %stbi__jpeg_get_bit.exit.thread

stbi__jpeg_get_bit.exit.thread.sink.split:        ; preds = %bb.ap
  %i.fj = icmp sgt i16 %i.ff, 0
  %.sink.p = select i1 %i.fj, i16 %i.eq, i16 %i.es
  %.sink = add i16 %i.ff, %.sink.p
  store i16 %.sink, ptr %i.ew, align 2, !tbaa !85
  br label %stbi__jpeg_get_bit.exit.thread

stbi__jpeg_get_bit.exit.thread:                   ; preds = %stbi__jpeg_get_bit.exit.thread.sink.split, %bb.ao, %stbi__jpeg_get_bit.exit, %bb.ap, %bb.am
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.fk = load i32, ptr %i.el, align 8, !tbaa !240
  %i.fl = sext i32 %i.fk to i64
  %.not162.not = icmp slt i64 %indvars.iv, %i.fl
  br i1 %.not162.not, label %bb.am, label %.critedge, !llvm.loop !246

bb.aq:                                            ; preds = %.preheader223, %.loopexit222
  %i.fm = phi i32 [ %i.je, %.loopexit222 ], [ %.pre, %.preheader223 ]
  %.6 = phi i32 [ %.9, %.loopexit222 ], [ %i.b, %.preheader223 ] ; 3 uses
  %i.fn = icmp slt i32 %i.fm, 16
  br i1 %i.fn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fo = load i32, ptr %i.eb, align 8, !tbaa !234 ; 5 uses
  %i.fp = lshr i32 %i.fo, 23
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !24  ; 2 uses
  %.not.i174 = icmp eq i8 %i.fs, -1
  br i1 %.not.i174, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ft = zext i8 %i.fs to i64                    ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !24
  %i.fw = zext i8 %i.fv to i32                    ; 3 uses
  %i.fx = load i32, ptr %i.ea, align 4, !tbaa !232 ; 2 uses
  %i.fy = icmp slt i32 %i.fx, %i.fw
  br i1 %i.fy, label %.loopexit224, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fz = shl i32 %i.fo, %i.fw                    ; 2 uses
  store i32 %i.fz, ptr %i.eb, align 8, !tbaa !234
  %i.ga = sub nuw nsw i32 %i.fx, %i.fw            ; 2 uses
  store i32 %i.ga, ptr %i.ea, align 4, !tbaa !232
  br label %stbi__jpeg_huff_decode.exit179

bb.av:                                            ; preds = %bb.as
  %i.gb = lshr i32 %i.fo, 16
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %bb.av
  %indvars.iv.i176 = phi i64 [ %indvars.iv.next.i177, %bb.aw ], [ 10, %bb.av ] ; 6 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.i176
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !27
  %i.ge = icmp ult i32 %i.gb, %i.gd
  %indvars.iv.next.i177 = add nuw nsw i64 %indvars.iv.i176, 1
  br i1 %i.ge, label %bb.ax, label %bb.aw

bb.ax:                                            ; preds = %bb.aw
  %i.gf = trunc nuw nsw i64 %indvars.iv.i176 to i32 ; 4 uses
  %i.gg = icmp eq i64 %indvars.iv.i176, 17
  %i.gh = load i32, ptr %i.ea, align 4, !tbaa !232 ; 3 uses
  br i1 %i.gg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gi = add nsw i32 %i.gh, -16
  store i32 %i.gi, ptr %i.ea, align 4, !tbaa !232
  br label %.loopexit224

bb.az:                                            ; preds = %bb.ax
  %i.gj = icmp slt i32 %i.gh, %i.gf
  br i1 %i.gj, label %.loopexit224, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gk = sub nuw nsw i32 32, %i.gf
  %i.gl = lshr i32 %i.fo, %i.gk
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr @stbi__bmask, i64 %indvars.iv.i176
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !27
  %i.go = and i32 %i.gn, %i.gl
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i176
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !27
  %i.gr = add i32 %i.go, %i.gq                    ; 2 uses
  %or.cond.i178 = icmp ugt i32 %i.gr, 255
  br i1 %or.cond.i178, label %.loopexit224, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gs = sub nuw nsw i32 %i.gh, %i.gf            ; 2 uses
  store i32 %i.gs, ptr %i.ea, align 4, !tbaa !232
  %i.gt = shl i32 %i.fo, %i.gf                    ; 2 uses
  store i32 %i.gt, ptr %i.eb, align 8, !tbaa !234
  %i.gu = zext nneg i32 %i.gr to i64
  br label %stbi__jpeg_huff_decode.exit179

.loopexit224:                                     ; preds = %bb.at, %bb.az, %bb.ba, %bb.ay
  %i.gv = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.7, ptr %i.gv, align 8, !tbaa !26
  br label %.critedge

stbi__jpeg_huff_decode.exit179:                   ; preds = %bb.bb, %bb.au
  %i.gw = phi i32 [ %i.gt, %bb.bb ], [ %i.fz, %bb.au ]
  %i.gx = phi i32 [ %i.gs, %bb.bb ], [ %i.ga, %bb.au ] ; 6 uses
  %.pn = phi i64 [ %i.gu, %bb.bb ], [ %i.ft, %bb.au ]
  %.1.i175.in.in = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.pn
  %.1.i175.in = load i8, ptr %.1.i175.in.in, align 1, !tbaa !24 ; 2 uses
  %.1.i175 = zext i8 %.1.i175.in to i32           ; 2 uses
  %i.gy = and i32 %.1.i175, 15
  %i.gz = lshr i32 %.1.i175, 4                    ; 10 uses
  switch i32 %i.gy, label %bb.bi [
    i32 0, label %bb.bc
    i32 1, label %bb.bj
  ]

bb.bc:                                            ; preds = %stbi__jpeg_huff_decode.exit179
  %i.ha = icmp ult i8 %.1.i175.in, -16
  br i1 %i.ha, label %bb.bd, label %stbi__jpeg_get_bit.exit186.thread

bb.bd:                                            ; preds = %bb.bc
  %notmask = shl nsw i32 -1, %i.gz
  %i.hb = xor i32 %notmask, -1
  store i32 %i.hb, ptr %i.j, align 4, !tbaa !244
  %.not156 = icmp eq i32 %i.gz, 0
  br i1 %.not156, label %stbi__jpeg_get_bit.exit186.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hc = icmp slt i32 %i.gx, %i.gz
  br i1 %i.hc, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre.i181 = load i32, ptr %i.ea, align 4, !tbaa !232
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.hd = phi i32 [ %.pre.i181, %bb.bf ], [ %i.gx, %bb.be ] ; 3 uses
  %i.he = icmp slt i32 %i.hd, %i.gz
  br i1 %i.he, label %stbi__jpeg_get_bits.exit182, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hf = load i32, ptr %i.eb, align 8, !tbaa !234 ; 2 uses
  %i.hg = tail call i32 @llvm.fshl.i32(i32 %i.hf, i32 %i.hf, i32 %i.gz) ; 2 uses
  %i.hh = zext nneg i32 %i.gz to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr @stbi__bmask, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !27 ; 2 uses
  %i.hk = xor i32 %i.hj, -1
  %i.hl = and i32 %i.hg, %i.hk
  store i32 %i.hl, ptr %i.eb, align 8, !tbaa !234
  %i.hm = and i32 %i.hg, %i.hj
  %i.hn = sub nuw nsw i32 %i.hd, %i.gz            ; 2 uses
  store i32 %i.hn, ptr %i.ea, align 4, !tbaa !232
  br label %stbi__jpeg_get_bits.exit182

stbi__jpeg_get_bits.exit182:                      ; preds = %bb.bg, %bb.bh
  %i.ho = phi i32 [ %i.hn, %bb.bh ], [ %i.hd, %bb.bg ]
  %.0.i180 = phi i32 [ %i.hm, %bb.bh ], [ 0, %bb.bg ]
  %i.hp = load i32, ptr %i.j, align 4, !tbaa !244
  %i.hq = add nsw i32 %i.hp, %.0.i180
  store i32 %i.hq, ptr %i.j, align 4, !tbaa !244
  br label %stbi__jpeg_get_bit.exit186.thread

bb.bi:                                            ; preds = %stbi__jpeg_huff_decode.exit179
  %i.hr = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.7, ptr %i.hr, align 8, !tbaa !26
  br label %.critedge

bb.bj:                                            ; preds = %stbi__jpeg_huff_decode.exit179
  %i.hs = icmp slt i32 %i.gx, 1
  br i1 %i.hs, label %bb.bk, label %stbi__jpeg_get_bit.exit186

bb.bk:                                            ; preds = %bb.bj
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pr.i185 = load i32, ptr %i.ea, align 4, !tbaa !232 ; 3 uses
  %i.ht = icmp slt i32 %.pr.i185, 1
  br i1 %i.ht, label %stbi__jpeg_get_bit.exit186.thread, label %.stbi__jpeg_get_bit.exit186_crit_edge

.stbi__jpeg_get_bit.exit186_crit_edge:            ; preds = %bb.bk
  %.pre266 = load i32, ptr %i.eb, align 8, !tbaa !234
  br label %stbi__jpeg_get_bit.exit186

stbi__jpeg_get_bit.exit186:                       ; preds = %.stbi__jpeg_get_bit.exit186_crit_edge, %bb.bj
  %i.hu = phi i32 [ %.pre266, %.stbi__jpeg_get_bit.exit186_crit_edge ], [ %i.gw, %bb.bj ] ; 2 uses
  %i.hv = phi i32 [ %.pr.i185, %.stbi__jpeg_get_bit.exit186_crit_edge ], [ %i.gx, %bb.bj ]
  %i.hw = shl i32 %i.hu, 1
  store i32 %i.hw, ptr %i.eb, align 8, !tbaa !234
  %i.hx = add nsw i32 %i.hv, -1                   ; 2 uses
  store i32 %i.hx, ptr %i.ea, align 4, !tbaa !232
  %.not154323 = icmp slt i32 %i.hu, 0
  %spec.select = select i1 %.not154323, i32 %i.eg, i32 %i.eh
  br label %stbi__jpeg_get_bit.exit186.thread

stbi__jpeg_get_bit.exit186.thread:                ; preds = %stbi__jpeg_get_bit.exit186, %bb.bk, %bb.bd, %stbi__jpeg_get_bits.exit182, %bb.bc
  %i.hy = phi i32 [ %i.hx, %stbi__jpeg_get_bit.exit186 ], [ %i.gx, %bb.bc ], [ %i.gx, %bb.bd ], [ %i.ho, %stbi__jpeg_get_bits.exit182 ], [ %.pr.i185, %bb.bk ] ; 2 uses
  %.0115 = phi i32 [ %i.gz, %stbi__jpeg_get_bit.exit186 ], [ %i.gz, %bb.bc ], [ 64, %bb.bd ], [ 64, %stbi__jpeg_get_bits.exit182 ], [ %i.gz, %bb.bk ]
  %.0 = phi i32 [ %spec.select, %stbi__jpeg_get_bit.exit186 ], [ 0, %bb.bc ], [ 0, %bb.bd ], [ 0, %stbi__jpeg_get_bits.exit182 ], [ %i.eh, %bb.bk ]
  %i.hz = load i32, ptr %i.ei, align 8, !tbaa !240 ; 3 uses
  %.not157250 = icmp sgt i32 %.6, %i.hz
  br i1 %.not157250, label %.loopexit222, label %.lr.ph253.preheader

.lr.ph253.preheader:                              ; preds = %stbi__jpeg_get_bit.exit186.thread
  %i.ia = sext i32 %.6 to i64
  br label %.lr.ph253

.lr.ph253:                                        ; preds = %.lr.ph253.preheader, %stbi__jpeg_get_bit.exit190.thread
  %i.ib = phi i32 [ %i.hz, %.lr.ph253.preheader ], [ %i.ja, %stbi__jpeg_get_bit.exit190.thread ]
  %i.ic = phi i32 [ %i.hy, %.lr.ph253.preheader ], [ %i.iz, %stbi__jpeg_get_bit.exit190.thread ] ; 4 uses
  %indvars.iv263 = phi i64 [ %i.ia, %.lr.ph253.preheader ], [ %indvars.iv.next264, %stbi__jpeg_get_bit.exit190.thread ] ; 3 uses
  %.1252 = phi i32 [ %.0115, %.lr.ph253.preheader ], [ %.3, %stbi__jpeg_get_bit.exit190.thread ] ; 7 uses
  %indvars.iv.next264 = add nsw i64 %indvars.iv263, 1 ; 3 uses
  %i.id = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %indvars.iv263
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !24
  %i.if = zext i8 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.if ; 5 uses
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !85
  %.not158 = icmp eq i16 %i.ih, 0
  br i1 %.not158, label %bb.br, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph253
  %i.ii = icmp slt i32 %i.ic, 1
  br i1 %i.ii, label %bb.bm, label %stbi__jpeg_get_bit.exit190

bb.bm:                                            ; preds = %bb.bl
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pr.i189 = load i32, ptr %i.ea, align 4, !tbaa !232 ; 3 uses
  %i.ij = icmp slt i32 %.pr.i189, 1
  br i1 %i.ij, label %stbi__jpeg_get_bit.exit190.thread, label %stbi__jpeg_get_bit.exit190

stbi__jpeg_get_bit.exit190:                       ; preds = %bb.bl, %bb.bm
  %i.ik = phi i32 [ %.pr.i189, %bb.bm ], [ %i.ic, %bb.bl ]
  %i.il = load i32, ptr %i.eb, align 8, !tbaa !234 ; 2 uses
  %i.im = shl i32 %i.il, 1
  store i32 %i.im, ptr %i.eb, align 8, !tbaa !234
  %i.in = add nsw i32 %i.ik, -1                   ; 5 uses
  store i32 %i.in, ptr %i.ea, align 4, !tbaa !232
  %.not159 = icmp sgt i32 %i.il, -1
  br i1 %.not159, label %stbi__jpeg_get_bit.exit190.thread, label %bb.bn

bb.bn:                                            ; preds = %stbi__jpeg_get_bit.exit190
  %i.io = load i16, ptr %i.ig, align 2, !tbaa !85 ; 4 uses
  %i.ip = sext i16 %i.io to i32
  %i.iq = and i32 %i.eg, %i.ip
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %bb.bo, label %stbi__jpeg_get_bit.exit190.thread

bb.bo:                                            ; preds = %bb.bn
  %i.is = icmp sgt i16 %i.io, 0
  br i1 %i.is, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.it = add i16 %i.io, %i.ej
  store i16 %i.it, ptr %i.ig, align 2, !tbaa !85
  br label %stbi__jpeg_get_bit.exit190.thread

bb.bq:                                            ; preds = %bb.bo
  %i.iu = sub i16 %i.io, %i.ej
  store i16 %i.iu, ptr %i.ig, align 2, !tbaa !85
  br label %stbi__jpeg_get_bit.exit190.thread

bb.br:                                            ; preds = %.lr.ph253
  %i.iv = icmp eq i32 %.1252, 0
  br i1 %i.iv, label %.thread219, label %bb.bs

.thread219:                                       ; preds = %bb.br
  %i.iw = trunc nsw i64 %indvars.iv.next264 to i32
  %i.ix = trunc i32 %.0 to i16
  store i16 %i.ix, ptr %i.ig, align 2, !tbaa !85
  br label %.loopexit222

bb.bs:                                            ; preds = %bb.br
  %i.iy = add nsw i32 %.1252, -1
  br label %stbi__jpeg_get_bit.exit190.thread

stbi__jpeg_get_bit.exit190.thread:                ; preds = %bb.bm, %bb.bs, %bb.bn, %bb.bq, %bb.bp, %stbi__jpeg_get_bit.exit190
  %i.iz = phi i32 [ %i.ic, %bb.bs ], [ %i.in, %bb.bp ], [ %i.in, %bb.bq ], [ %i.in, %bb.bn ], [ %i.in, %stbi__jpeg_get_bit.exit190 ], [ %.pr.i189, %bb.bm ] ; 2 uses
  %.3 = phi i32 [ %i.iy, %bb.bs ], [ %.1252, %bb.bp ], [ %.1252, %bb.bq ], [ %.1252, %bb.bn ], [ %.1252, %stbi__jpeg_get_bit.exit190 ], [ %.1252, %bb.bm ]
  %i.ja = load i32, ptr %i.ei, align 8, !tbaa !240 ; 3 uses
  %i.jb = sext i32 %i.ja to i64
  %.not157.not = icmp slt i64 %indvars.iv263, %i.jb
  br i1 %.not157.not, label %.lr.ph253, label %.loopexit222.loopexit

.loopexit222.loopexit:                            ; preds = %stbi__jpeg_get_bit.exit190.thread
  %i.jc = trunc nsw i64 %indvars.iv.next264 to i32
  br label %.loopexit222

.loopexit222:                                     ; preds = %.loopexit222.loopexit, %stbi__jpeg_get_bit.exit186.thread, %.thread219
  %i.jd = phi i32 [ %i.ib, %.thread219 ], [ %i.hz, %stbi__jpeg_get_bit.exit186.thread ], [ %i.ja, %.loopexit222.loopexit ]
  %i.je = phi i32 [ %i.ic, %.thread219 ], [ %i.hy, %stbi__jpeg_get_bit.exit186.thread ], [ %i.iz, %.loopexit222.loopexit ]
  %.9 = phi i32 [ %i.iw, %.thread219 ], [ %.6, %stbi__jpeg_get_bit.exit186.thread ], [ %i.jc, %.loopexit222.loopexit ] ; 2 uses
  %.not161 = icmp sgt i32 %.9, %i.jd
  br i1 %.not161, label %.critedge, label %bb.aq, !llvm.loop !247

.critedge:                                        ; preds = %stbi__jpeg_get_bit.exit.thread, %.loopexit222, %bb.aj, %bb.al, %bb.ai, %.loopexit, %bb.j, %bb.e, %bb.bi, %.loopexit224, %bb.b
  %.9135 = phi i32 [ 0, %bb.b ], [ 1, %.loopexit222 ], [ 0, %bb.bi ], [ 0, %.loopexit224 ], [ 1, %bb.e ], [ 0, %.loopexit ], [ 1, %bb.al ], [ 0, %bb.j ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ 1, %stbi__jpeg_get_bit.exit.thread ]
  ret i32 %.9135
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i8 @stbi__clamp(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %0, 255
  %i.b = trunc nuw i32 %0 to i8
  %i.c = icmp sgt i32 %0, -1
  %spec.select = sext i1 %i.c to i8
  %.0 = select i1 %i.a, i8 %spec.select, i8 %i.b
  ret i8 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbi__idct_block(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #18 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  br label %bb.b

.preheader:                                       ; preds = %bb.i
  %i.b = sext i32 %1 to i64
  br label %bb.j

bb.b:                                             ; preds = %bb.a, %bb.i
  %.0219 = phi i32 [ 0, %bb.a ], [ %i.do, %bb.i ]
  %.0199218 = phi ptr [ %i.a, %bb.a ], [ %i.dq, %bb.i ] ; 17 uses
  %.0202217 = phi ptr [ %2, %bb.a ], [ %i.dp, %bb.i ] ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0202217, i64 16
  %i.d = load i16, ptr %i.c, align 2, !tbaa !85   ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.0202217, i64 32
  %i.g = load i16, ptr %i.f, align 2, !tbaa !85   ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0202217, i64 48
  %i.j = load i16, ptr %i.i, align 2, !tbaa !85
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0202217, i64 64
  %i.m = load i16, ptr %i.l, align 2, !tbaa !85
  %i.n = icmp eq i16 %i.m, 0
  br i1 %i.n, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.0202217, i64 80
  %i.p = load i16, ptr %i.o, align 2, !tbaa !85
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
end_hunk_2
begin_hunk_3_@stbi__process_marker:bb.a
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !21
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 56 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.er, i64 52
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !22
  %i.fi = tail call i32 %i.fc(ptr noundef %i.fe, ptr noundef nonnull %i.ff, i32 noundef %i.fh) #37, !inline_history !54 ; 2 uses
  %i.fj = load ptr, ptr %i.es, align 8, !tbaa !16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.er, i64 208
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !15
  %i.fm = ptrtoint ptr %i.fj to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.er, i64 184 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !14
  %i.fs = add nsw i32 %i.fr, %i.fp
  store i32 %i.fs, ptr %i.fq, align 8, !tbaa !14
  %i.ft = icmp eq i32 %i.fi, 0
  br i1 %i.ft, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.ez, align 8, !tbaa !13
  %i.fu = getelementptr inbounds nuw i8, ptr %i.er, i64 57
  store i8 0, ptr %i.ff, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i157

bb.ae:                                            ; preds = %bb.ac
  %i.fv = sext i32 %i.fi to i64
  %i.fw = getelementptr inbounds i8, ptr %i.ff, i64 %i.fv
  %.pre.i156 = load i8, ptr %i.ff, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i157

stbi__refill_buffer.exit.i157:                    ; preds = %bb.ae, %bb.ad
  %i.fx = phi i8 [ 0, %bb.ad ], [ %.pre.i156, %bb.ae ]
  %.sink.i.i158 = phi ptr [ %i.fu, %bb.ad ], [ %i.fw, %bb.ae ]
  store ptr %.sink.i.i158, ptr %i.eu, align 8, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %i.er, i64 57
  store ptr %i.fy, ptr %i.es, align 8, !tbaa !16
  br label %stbi__get8.exit160

stbi__get8.exit160:                               ; preds = %bb.aa, %bb.ab, %stbi__refill_buffer.exit.i157
  %.0.i159 = phi i8 [ %i.ey, %bb.aa ], [ %i.fx, %stbi__refill_buffer.exit.i157 ], [ 0, %bb.ab ]
  %i.fz = zext i8 %.0.i159 to i32                 ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !27
  %i.gb = add nuw nsw i32 %.0112196, %i.fz        ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.af, label %.preheader189, !llvm.loop !299

bb.af:                                            ; preds = %stbi__get8.exit160
  %i.gc = icmp samesign ugt i32 %i.gb, 256
  br i1 %i.gc, label %.critedge141.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gd = add nsw i32 %.2198, -17
  %i.ge = icmp ult i8 %.0.i153, 16                ; 2 uses
  %i.gf = zext nneg i8 %i.eo to i64               ; 3 uses
  br i1 %i.ge, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gg = getelementptr inbounds nuw [1680 x i8], ptr %i.de, i64 %i.gf
  %i.gh = call i32 @stbi__build_huffman(ptr noundef nonnull %i.gg, ptr noundef nonnull %i.a)
  %.not132 = icmp eq i32 %i.gh, 0
  br i1 %.not132, label %.critedge141, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.gi = getelementptr inbounds nuw [1680 x i8], ptr %i.dd, i64 %i.gf
  %i.gj = call i32 @stbi__build_huffman(ptr noundef nonnull %i.gi, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.gj, 0
  br i1 %.not, label %.critedge141, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gk = phi i64 [ 8, %bb.ah ], [ 6728, %bb.ai ]
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 %i.gk
  %i.gm = getelementptr inbounds nuw [1680 x i8], ptr %i.gl, i64 %i.gf
  %.0115 = getelementptr inbounds nuw i8, ptr %i.gm, i64 1024
  %.not212 = icmp eq i32 %i.gb, 0
  br i1 %.not212, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aj
  %wide.trip.count = zext nneg i32 %i.gb to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %stbi__get8.exit166
  %indvars.iv217 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next218, %stbi__get8.exit166 ] ; 2 uses
  %i.gn = load ptr, ptr %0, align 8, !tbaa !103   ; 11 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 192 ; 4 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !16 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 200 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !18
  %i.gs = icmp ult ptr %i.gp, %i.gr
  br i1 %i.gs, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  store ptr %i.gt, ptr %i.go, align 8, !tbaa !16
  %i.gu = load i8, ptr %i.gp, align 1, !tbaa !24
  br label %stbi__get8.exit166

bb.al:                                            ; preds = %.lr.ph
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 48 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !13
  %.not.i161 = icmp eq i32 %i.gw, 0
  br i1 %.not.i161, label %stbi__get8.exit166, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !21
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gn, i64 56 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gn, i64 52
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !22
  %i.he = tail call i32 %i.gy(ptr noundef %i.ha, ptr noundef nonnull %i.hb, i32 noundef %i.hd) #37, !inline_history !54 ; 2 uses
  %i.hf = load ptr, ptr %i.go, align 8, !tbaa !16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gn, i64 208
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !15
  %i.hi = ptrtoint ptr %i.hf to i64
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gn, i64 184 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !14
  %i.ho = add nsw i32 %i.hn, %i.hl
  store i32 %i.ho, ptr %i.hm, align 8, !tbaa !14
  %i.hp = icmp eq i32 %i.he, 0
  br i1 %i.hp, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.gv, align 8, !tbaa !13
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gn, i64 57
  store i8 0, ptr %i.hb, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i163

bb.ao:                                            ; preds = %bb.am
  %i.hr = sext i32 %i.he to i64
  %i.hs = getelementptr inbounds i8, ptr %i.hb, i64 %i.hr
  %.pre.i162 = load i8, ptr %i.hb, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i163

stbi__refill_buffer.exit.i163:                    ; preds = %bb.ao, %bb.an
  %i.ht = phi i8 [ 0, %bb.an ], [ %.pre.i162, %bb.ao ]
  %.sink.i.i164 = phi ptr [ %i.hq, %bb.an ], [ %i.hs, %bb.ao ]
  store ptr %.sink.i.i164, ptr %i.gq, align 8, !tbaa !18
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gn, i64 57
  store ptr %i.hu, ptr %i.go, align 8, !tbaa !16
  br label %stbi__get8.exit166

stbi__get8.exit166:                               ; preds = %bb.ak, %bb.al, %stbi__refill_buffer.exit.i163
  %.0.i165 = phi i8 [ %i.gu, %bb.ak ], [ %i.ht, %stbi__refill_buffer.exit.i163 ], [ 0, %bb.al ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.0115, i64 %indvars.iv217
  store i8 %.0.i165, ptr %i.hv, align 1, !tbaa !24
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %exitcond220.not = icmp eq i64 %indvars.iv.next218, %wide.trip.count
  br i1 %exitcond220.not, label %._crit_edge, label %.lr.ph, !llvm.loop !300

._crit_edge:                                      ; preds = %stbi__get8.exit166, %bb.aj
  br i1 %i.ge, label %stbi__build_fast_ac.exit, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  %i.hw = zext nneg i8 %i.eo to i64               ; 2 uses
  %i.hx = getelementptr inbounds nuw [1024 x i8], ptr %i.df, i64 %i.hw
  %i.hy = getelementptr inbounds nuw [1680 x i8], ptr %i.dd, i64 %i.hw ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1024
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 1280
  br label %bb.aq

bb.aq:                                            ; preds = %bb.av, %bb.ap
  %indvars.iv.i = phi i64 [ 0, %bb.ap ], [ %indvars.iv.next.i, %bb.av ] ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 %indvars.iv.i
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !24  ; 2 uses
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.hx, i64 %indvars.iv.i ; 2 uses
  store i16 0, ptr %i.id, align 2, !tbaa !85
  %.not.i167 = icmp eq i8 %i.ic, -1
  br i1 %.not.i167, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ie = zext i8 %i.ic to i64                    ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !24
  %i.ih = zext i8 %i.ig to i32                    ; 2 uses
  %i.ii = and i32 %i.ih, 240
  %i.ij = and i32 %i.ih, 15                       ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ie
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !24
  %i.im = zext i8 %i.il to i32                    ; 2 uses
  %.not36.i = icmp eq i32 %i.ij, 0
  br i1 %.not36.i, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.in = add nuw nsw i32 %i.ij, %i.im            ; 2 uses
  %i.io = icmp samesign ult i32 %i.in, 10
  br i1 %i.io, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.ip = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.iq = shl nuw nsw i32 %i.ip, %i.im            ; 2 uses
  %i.ir = and i32 %i.iq, 511
  %i.is = sub nuw nsw i32 9, %i.ij
  %i.it = lshr i32 %i.ir, %i.is
  %.highbits.mask.i = and i32 %i.iq, 256
  %i.iu = icmp eq i32 %.highbits.mask.i, 0
  %i.iv = shl nsw i32 -1, %i.ij
  %i.iw = or disjoint i32 %i.iv, 1
  %i.ix = select i1 %i.iu, i32 %i.iw, i32 0
  %.0.i168 = add nsw i32 %i.ix, %i.it             ; 2 uses
  %i.iy = add nsw i32 %.0.i168, 128
  %or.cond.i = icmp ult i32 %i.iy, 256
  br i1 %or.cond.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.iz = shl nsw i32 %.0.i168, 8
  %i.ja = or disjoint i32 %i.iz, %i.ii
  %i.jb = or disjoint i32 %i.ja, %i.in
  %i.jc = trunc nsw i32 %i.jb to i16
  store i16 %i.jc, ptr %i.id, align 2, !tbaa !85
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 512
  br i1 %exitcond.not.i, label %stbi__build_fast_ac.exit, label %bb.aq, !llvm.loop !230

stbi__build_fast_ac.exit:                         ; preds = %bb.av, %._crit_edge
  %i.jd = sub nsw i32 %i.gd, %i.gb                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.je = icmp sgt i32 %i.jd, 0
  br i1 %i.je, label %bb.u, label %._crit_edge201, !llvm.loop !301

._crit_edge201:                                   ; preds = %stbi__build_fast_ac.exit, %bb.t
  %.2.lcssa = phi i32 [ %i.db, %bb.t ], [ %i.jd, %stbi__build_fast_ac.exit ]
  %i.jf = icmp eq i32 %.2.lcssa, 0
  br label %.critedge

bb.aw:                                            ; preds = %bb.a
  %i.jg = and i32 %1, -16
  %or.cond6 = icmp eq i32 %i.jg, 224
  %i.jh = icmp eq i32 %1, 254                     ; 2 uses
  %or.cond8 = or i1 %i.jh, %or.cond6
  br i1 %or.cond8, label %bb.ax, label %bb.dl

bb.ax:                                            ; preds = %bb.aw
  %i.ji = load ptr, ptr %0, align 8, !tbaa !103
  %i.jj = tail call i32 @stbi__get16be(ptr noundef %i.ji) ; 7 uses
  %i.jk = icmp samesign ult i32 %i.jj, 2
  br i1 %i.jk, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.jl = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason) ; 2 uses
  br i1 %i.jh, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store ptr @.str.15, ptr %i.jl, align 8, !tbaa !26
  br label %.critedge

bb.ba:                                            ; preds = %bb.ay
  store ptr @.str.16, ptr %i.jl, align 8, !tbaa !26
  br label %.critedge

bb.bb:                                            ; preds = %bb.ax
  %i.jm = icmp eq i32 %1, 224
  %i.jn = icmp samesign ugt i32 %i.jj, 6
  %or.cond10 = select i1 %i.jm, i1 %i.jn, i1 false
  br i1 %or.cond10, label %.preheader.preheader, label %bb.cc

.preheader.preheader:                             ; preds = %bb.bb
  %i.jo = load ptr, ptr %0, align 8, !tbaa !103   ; 13 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 192 ; 4 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !16 ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 200 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !18 ; 3 uses
  %i.jt = icmp ult ptr %i.jq, %i.js
  br i1 %i.jt, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.preheader.preheader
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 1 ; 2 uses
  store ptr %i.ju, ptr %i.jp, align 8, !tbaa !16
  %i.jv = load i8, ptr %i.jq, align 1, !tbaa !24
  br label %stbi__get8.exit174

bb.bd:                                            ; preds = %.preheader.preheader
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jo, i64 48 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !13
  %.not.i169 = icmp eq i32 %i.jx, 0
  br i1 %.not.i169, label %stbi__get8.exit174, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !21
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jo, i64 56 ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jo, i64 52
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !22
  %i.kf = tail call i32 %i.jz(ptr noundef %i.kb, ptr noundef nonnull %i.kc, i32 noundef %i.ke) #37, !inline_history !54 ; 2 uses
  %i.kg = load ptr, ptr %i.jp, align 8, !tbaa !16
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jo, i64 208
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !15
  %i.kj = ptrtoint ptr %i.kg to i64
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = sub i64 %i.kj, %i.kk
  %i.km = trunc i64 %i.kl to i32
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jo, i64 184 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !14
  %i.kp = add nsw i32 %i.ko, %i.km
  store i32 %i.kp, ptr %i.kn, align 8, !tbaa !14
  %i.kq = icmp eq i32 %i.kf, 0
  br i1 %i.kq, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.jw, align 8, !tbaa !13
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jo, i64 57
  store i8 0, ptr %i.kc, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i171

bb.bg:                                            ; preds = %bb.be
  %i.ks = sext i32 %i.kf to i64
  %i.kt = getelementptr inbounds i8, ptr %i.kc, i64 %i.ks
  %.pre.i170 = load i8, ptr %i.kc, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i171

stbi__refill_buffer.exit.i171:                    ; preds = %bb.bg, %bb.bf
  %i.ku = phi i8 [ 0, %bb.bf ], [ %.pre.i170, %bb.bg ]
  %.sink.i.i172 = phi ptr [ %i.kr, %bb.bf ], [ %i.kt, %bb.bg ]
  store ptr %.sink.i.i172, ptr %i.jr, align 8, !tbaa !18
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jo, i64 57
  store ptr %i.kv, ptr %i.jp, align 8, !tbaa !16
  %.pre260 = load ptr, ptr %0, align 8, !tbaa !103 ; 3 uses
  %.phi.trans.insert261 = getelementptr inbounds nuw i8, ptr %.pre260, i64 192
  %.pre262 = load ptr, ptr %.phi.trans.insert261, align 8, !tbaa !16
  %.phi.trans.insert263 = getelementptr inbounds nuw i8, ptr %.pre260, i64 200
  %.pre264 = load ptr, ptr %.phi.trans.insert263, align 8, !tbaa !18
  br label %stbi__get8.exit174

stbi__get8.exit174:                               ; preds = %bb.bc, %bb.bd, %stbi__refill_buffer.exit.i171
  %i.kw = phi ptr [ %i.js, %bb.bc ], [ %.pre264, %stbi__refill_buffer.exit.i171 ], [ %i.js, %bb.bd ] ; 3 uses
  %i.kx = phi ptr [ %i.ju, %bb.bc ], [ %.pre262, %stbi__refill_buffer.exit.i171 ], [ %i.jq, %bb.bd ] ; 4 uses
  %i.ky = phi ptr [ %i.jo, %bb.bc ], [ %.pre260, %stbi__refill_buffer.exit.i171 ], [ %i.jo, %bb.bd ] ; 13 uses
  %.0.i173 = phi i8 [ %i.jv, %bb.bc ], [ %i.ku, %stbi__refill_buffer.exit.i171 ], [ 0, %bb.bd ]
  %.not139 = icmp ne i8 %.0.i173, 74
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 192 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 200
  %i.lb = icmp ult ptr %i.kx, %i.kw
  br i1 %i.lb, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %stbi__get8.exit174
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 48 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !13
  %.not.i169.1 = icmp eq i32 %i.ld, 0
  br i1 %.not.i169.1, label %stbi__get8.exit174.1, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ky, i64 40
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !21
  %i.li = getelementptr inbounds nuw i8, ptr %i.ky, i64 56 ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ky, i64 52
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !22
  %i.ll = tail call i32 %i.lf(ptr noundef %i.lh, ptr noundef nonnull %i.li, i32 noundef %i.lk) #37, !inline_history !54 ; 2 uses
  %i.lm = load ptr, ptr %i.kz, align 8, !tbaa !16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ky, i64 208
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !15
  %i.lp = ptrtoint ptr %i.lm to i64
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = sub i64 %i.lp, %i.lq
  %i.ls = trunc i64 %i.lr to i32
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ky, i64 184 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !14
  %i.lv = add nsw i32 %i.lu, %i.ls
  store i32 %i.lv, ptr %i.lt, align 8, !tbaa !14
  %i.lw = icmp eq i32 %i.ll, 0
  br i1 %i.lw, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lx = sext i32 %i.ll to i64
  %i.ly = getelementptr inbounds i8, ptr %i.li, i64 %i.lx
  %.pre.i170.1 = load i8, ptr %i.li, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i171.1

bb.bk:                                            ; preds = %bb.bi
  store i32 0, ptr %i.lc, align 8, !tbaa !13
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ky, i64 57
  store i8 0, ptr %i.li, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i171.1

stbi__refill_buffer.exit.i171.1:                  ; preds = %bb.bk, %bb.bj
  %i.ma = phi i8 [ 0, %bb.bk ], [ %.pre.i170.1, %bb.bj ]
  %.sink.i.i172.1 = phi ptr [ %i.lz, %bb.bk ], [ %i.ly, %bb.bj ]
  store ptr %.sink.i.i172.1, ptr %i.la, align 8, !tbaa !18
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ky, i64 57
  store ptr %i.mb, ptr %i.kz, align 8, !tbaa !16
  %.pre265 = load ptr, ptr %0, align 8, !tbaa !103 ; 3 uses
  %.phi.trans.insert266 = getelementptr inbounds nuw i8, ptr %.pre265, i64 192
  %.pre267 = load ptr, ptr %.phi.trans.insert266, align 8, !tbaa !16
  %.phi.trans.insert268 = getelementptr inbounds nuw i8, ptr %.pre265, i64 200
  %.pre269 = load ptr, ptr %.phi.trans.insert268, align 8, !tbaa !18
  br label %stbi__get8.exit174.1

end_hunk_3
begin_hunk_4_@stbi__create_png_alpha_expand8:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !24
  %i.bq = load i8, ptr %i.bj, align 1, !tbaa !24
  store i8 %i.bq, ptr %i.bg, align 1, !tbaa !24
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.br = shl nsw i64 %indvars.iv.next, 2
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  store i8 -1, ptr %i.bt, align 1, !tbaa !24
  %i.bu = mul nuw nsw i64 %indvars.iv.next, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %i.bu ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !24
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !24
  %i.cc = load i8, ptr %i.bv, align 1, !tbaa !24
  store i8 %i.cc, ptr %i.bs, align 1, !tbaa !24
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %.not.1 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !430

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph32.prol.loopexit, %.lr.ph32, %middle.block, %.preheader26, %.preheader
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbi__create_png_image_raw(ptr nofree noundef captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !32
  %i.c = mul i32 %4, %3
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !53   ; 6 uses
  %i.h = shl i32 %3, %i.d                         ; 4 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %stbi__malloc_mad3.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 3 uses
  br i1 %i.k, label %stbi__mul2sizes_valid.exit.thread16.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not24.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not24.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i.i

stbi__mul2sizes_valid.exit.thread16.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.b
  %i.m = mul nsw i32 %5, %4                       ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %stbi__malloc_mad3.exit.thread

bb.c:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.i.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8, !tbaa !431
  br label %bb.d

stbi__malloc_mad3.exit:                           ; preds = %bb.c, %stbi__mul2sizes_valid.exit12.i.i
  %i.r = mul nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef %i.s) #38 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !431
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stbi__malloc_mad3.exit.thread, %stbi__malloc_mad3.exit
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.v, align 8, !tbaa !26
  br label %bb.ak

bb.e:                                             ; preds = %stbi__malloc_mad3.exit
  %i.w = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.w, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %stbi__mad3sizes_valid.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.x, label %stbi__mul2sizes_valid.exit.thread16.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.f
  %i.y = udiv i32 2147483647, %4
  %.not24.i = icmp sgt i32 %i.g, %i.y
  br i1 %.not24.i, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i

stbi__mul2sizes_valid.exit.thread16.i:            ; preds = %stbi__mul2sizes_valid.exit.i, %bb.f
  %i.z = mul i32 %i.g, %4                         ; 18 uses
  %i.aa = or i32 %i.z, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.aa, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %stbi__mad3sizes_valid.exit.thread

bb.g:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i
  %i.ab = icmp eq i32 %6, 0
  br i1 %i.ab, label %stbi__mad3sizes_valid.exit._crit_edge, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.g
  %i.ac = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.z, %i.ac
  %i.ad = mul i32 %i.z, %6                        ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 2147483640
  %or.cond = or i1 %.not.i, %i.ae
  br i1 %or.cond, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mad3sizes_valid.exit._crit_edge

stbi__mad3sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread16.i, %bb.e, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit12.i
  %i.af = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.af, align 8, !tbaa !26
  br label %bb.ak

stbi__mad3sizes_valid.exit._crit_edge:            ; preds = %bb.g, %stbi__mul2sizes_valid.exit12.i
  %.pre-phi = phi i32 [ %i.ad, %stbi__mul2sizes_valid.exit12.i ], [ 0, %bb.g ]
  %i.ag = add i32 %.pre-phi, 7
  %i.ah = lshr i32 %i.ag, 3                       ; 13 uses
  br i1 %i.k, label %stbi__mad2sizes_valid.exit, label %stbi__mul2sizes_valid.exit.i299

stbi__mul2sizes_valid.exit.i299:                  ; preds = %stbi__mad3sizes_valid.exit._crit_edge
  %i.ai = udiv i32 2147483647, %5
  %.not11.i = icmp samesign ugt i32 %i.ah, %i.ai
  br i1 %.not11.i, label %stbi__mad2sizes_valid.exit.thread, label %stbi__mad2sizes_valid.exit

stbi__mad2sizes_valid.exit:                       ; preds = %stbi__mad3sizes_valid.exit._crit_edge, %stbi__mul2sizes_valid.exit.i299
  %i.aj = mul nuw nsw i32 %i.ah, %5
  %i.ak = xor i32 %i.ah, 2147483647
  %.not330 = icmp sgt i32 %i.aj, %i.ak
  br i1 %.not330, label %stbi__mad2sizes_valid.exit.thread, label %bb.h

stbi__mad2sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.i299, %stbi__mad2sizes_valid.exit
  %i.al = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.al, align 8, !tbaa !26
  br label %bb.ak

bb.h:                                             ; preds = %stbi__mad2sizes_valid.exit
  %i.am = add nuw nsw i32 %i.ah, 1
  %i.an = mul i32 %i.am, %5
  %i.ao = icmp ult i32 %2, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.49, ptr %i.ap, align 8, !tbaa !26
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.aq = shl nuw nsw i32 %i.ah, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = tail call noalias noundef ptr @malloc(i64 noundef %i.ar) #38 ; 5 uses
  %.not283 = icmp eq ptr %i.as, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.at, align 8, !tbaa !26
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.au = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.l
  %spec.select = select i1 %i.au, i32 1, i32 %i.i ; 10 uses
  %spec.select297 = select i1 %i.au, i32 %i.ah, i32 %4
  %i.av = zext nneg i32 %i.ah to i64
  %i.aw = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.ax = sext i32 %spec.select to i64            ; 40 uses
  %i.ay = icmp slt i32 %spec.select, %i.aw        ; 4 uses
  %i.az = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.ba = icmp sgt i32 %i.aw, 0
  %i.bb = sext i32 %i.aw to i64                   ; 13 uses
  %i.bc = icmp eq i32 %6, 8
  %i.bd = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.be = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.z, 0                  ; 4 uses
  %.030.i305 = add i32 %4, -1                     ; 7 uses
  %i.bf = icmp sgt i32 %.030.i305, -1             ; 4 uses
  %i.bg = zext i32 %.030.i305 to i64              ; 17 uses
  %i.bh = zext i32 %i.z to i64
  %i.bi = icmp eq i32 %7, 0
  %8 = zext nneg i32 %6 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @stbi__depth_scale_table, i64 %8
  %wide.trip.count460 = zext i32 %5 to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.aw to i64     ; 8 uses
  %i.bk = sub nsw i64 %i.bb, %i.ax                ; 28 uses
  %i.bl = add i32 %i.z, -1                        ; 3 uses
  %i.bm = add nuw nsw i64 %i.bg, 1
  %min.iters.check699 = icmp ult i64 %i.bk, 8
  %i.bn = add nsw i64 %i.ax, -1
  %diff.check697 = icmp ult i64 %i.bn, 31
  %or.cond736 = select i1 %min.iters.check699, i1 true, i1 %diff.check697
  %min.iters.check701 = icmp ult i64 %i.bk, 32
  %i.bo = and i64 %i.bk, 24
  %n.vec703 = and i64 %i.bk, -32                  ; 4 uses
  %i.bp = add nsw i64 %n.vec703, %i.ax
  %cmp.n712 = icmp eq i64 %i.bk, %n.vec703
  %min.epilog.iters.check718 = icmp eq i64 %i.bo, 0
  %n.vec720 = and i64 %i.bk, -8                   ; 3 uses
  %i.bq = add nsw i64 %n.vec720, %i.ax
  %cmp.n727 = icmp eq i64 %i.bk, %n.vec720
  %i.br = add nsw i64 %i.bb, -1
  %min.iters.check667 = icmp ult i32 %spec.select, 4
  %min.iters.check669 = icmp ult i32 %spec.select, 32
  %i.bs = and i64 %wide.trip.count424, 28
  %n.vec671 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n680 = icmp eq i64 %n.vec671, %wide.trip.count424
  %min.epilog.iters.check685 = icmp eq i64 %i.bs, 0
  %n.vec687 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec687, %wide.trip.count424
  %xtraiter750 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod751.not = icmp eq i64 %xtraiter750, 0
  %min.iters.check632 = icmp ult i64 %i.bk, 4
  %i.bt = add nsw i64 %i.ax, -1
  %diff.check626 = icmp ult i64 %i.bt, 15
  %min.iters.check634 = icmp ult i64 %i.bk, 16
  %i.bu = and i64 %i.bk, 12
  %n.vec636 = and i64 %i.bk, -16                  ; 4 uses
  %i.bv = add nsw i64 %n.vec636, %i.ax
  %cmp.n645 = icmp eq i64 %i.bk, %n.vec636
  %min.epilog.iters.check651 = icmp eq i64 %i.bu, 0
  %n.vec653 = and i64 %i.bk, -4                   ; 3 uses
  %i.bw = add nsw i64 %n.vec653, %i.ax
  %cmp.n662 = icmp eq i64 %i.bk, %n.vec653
  %min.iters.check596 = icmp ult i32 %spec.select, 4
  %min.iters.check598 = icmp ult i32 %spec.select, 32
  %i.bx = and i64 %wide.trip.count424, 28
  %n.vec600 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n609 = icmp eq i64 %n.vec600, %wide.trip.count424
  %min.epilog.iters.check614 = icmp eq i64 %i.bx, 0
  %n.vec616 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n623 = icmp eq i64 %n.vec616, %wide.trip.count424
  %xtraiter752 = and i64 %wide.trip.count424, 1
  %lcmp.mod753.not = icmp eq i64 %xtraiter752, 0
  %i.by = add nsw i64 %wide.trip.count424, -1
  %min.iters.check563 = icmp ult i64 %i.bk, 4
  %i.bz = add nsw i64 %i.ax, -1
  %diff.check561 = icmp ult i64 %i.bz, 15
  %min.iters.check565 = icmp ult i64 %i.bk, 16
  %i.ca = and i64 %i.bk, 12
  %n.vec567 = and i64 %i.bk, -16                  ; 4 uses
  %i.cb = add nsw i64 %n.vec567, %i.ax
  %cmp.n575 = icmp eq i64 %i.bk, %n.vec567
  %min.epilog.iters.check581 = icmp eq i64 %i.ca, 0
  %n.vec583 = and i64 %i.bk, -4                   ; 3 uses
  %i.cc = add nsw i64 %n.vec583, %i.ax
  %cmp.n591 = icmp eq i64 %i.bk, %n.vec583
  %i.cd = add nsw i64 %i.bb, -1
  %min.iters.check530 = icmp ult i32 %i.aw, 4
  %min.iters.check532 = icmp ult i32 %i.aw, 32
  %i.ce = and i64 %wide.trip.count444, 28
  %n.vec534 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n543 = icmp eq i64 %n.vec534, %wide.trip.count444
  %min.epilog.iters.check548 = icmp eq i64 %i.ce, 0
  %n.vec550 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n557 = icmp eq i64 %n.vec550, %wide.trip.count444
  %xtraiter758 = and i64 %wide.trip.count444, 3   ; 2 uses
  %lcmp.mod759.not = icmp eq i64 %xtraiter758, 0
  %min.iters.check506 = icmp ult i64 %i.bk, 8
  %i.cf = add nsw i64 %i.ax, -1
  %diff.check = icmp ult i64 %i.cf, 31
  %or.cond735 = select i1 %min.iters.check506, i1 true, i1 %diff.check
  %min.iters.check507 = icmp ult i64 %i.bk, 32
  %i.cg = and i64 %i.bk, 24
  %n.vec509 = and i64 %i.bk, -32                  ; 4 uses
  %i.ch = add nsw i64 %n.vec509, %i.ax
  %cmp.n518 = icmp eq i64 %i.bk, %n.vec509
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  %n.vec520 = and i64 %i.bk, -8                   ; 3 uses
  %i.ci = add nsw i64 %n.vec520, %i.ax
  %cmp.n525 = icmp eq i64 %i.bk, %n.vec520
  %i.cj = add nsw i64 %i.bb, -1
  %xtraiter764 = and i32 %4, 1
  %i.ck = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod765.not = icmp eq i32 %xtraiter764, 0
  %lcmp.mod766 = trunc i32 %4 to i1
  %xtraiter767 = and i32 %i.z, 3                  ; 3 uses
  %i.cl = icmp ult i32 %i.z, 4
  %unroll_iter770 = and i32 %i.z, -4
  %lcmp.mod768.not = icmp eq i32 %xtraiter767, 0
  %lcmp.mod769 = icmp ne i32 %xtraiter767, 0
  %i.cm = and i64 %i.bg, 1
  %lcmp.mod773.not.not = icmp eq i64 %i.cm, 0
  %i.cn = shl nuw nsw i64 %i.bg, 2
  %i.co = mul nuw nsw i64 %i.bg, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.bg, -1
  %i.cp = icmp eq i32 %.030.i305, 0
  %i.cq = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %.030.i305, 7
  %n.vec = and i64 %i.cq, 4294967288              ; 3 uses
  %i.cr = sub nsw i64 %i.bg, %n.vec
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  %xtraiter775 = and i32 %i.z, 1
  %i.cs = icmp eq i32 %i.bl, 0
  %unroll_iter779 = and i32 %i.z, -2
  %lcmp.mod777.not = icmp eq i32 %xtraiter775, 0
  %lcmp.mod778 = trunc i32 %i.z to i1
  %xtraiter781 = and i32 %i.z, 1
  %i.ct = icmp eq i32 %i.bl, 0
  %unroll_iter785 = and i32 %i.z, -2
  %lcmp.mod783.not = icmp eq i32 %xtraiter781, 0
  %lcmp.mod784 = trunc i32 %i.z to i1
  %xtraiter787 = and i32 %i.z, 1
  %i.cu = icmp eq i32 %i.bl, 0
  %unroll_iter791 = and i32 %i.z, -2
  %lcmp.mod789.not = icmp eq i32 %xtraiter787, 0
  %lcmp.mod790 = trunc i32 %i.z to i1
  %i.cv = and i64 %i.bg, 1
  %lcmp.mod794.not.not = icmp eq i64 %i.cv, 0
  %i.cw = shl nuw nsw i64 %i.bg, 2
  %i.cx = mul nuw nsw i64 %i.bg, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.bg, -1
  %i.cy = icmp eq i32 %.030.i305, 0
  %xtraiter796 = and i64 %i.bm, 3                 ; 2 uses
  %lcmp.mod797.not = icmp eq i64 %xtraiter796, 0
  %i.cz = icmp ult i32 %.030.i305, 3
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 9 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.ri, %.loopexit ] ; 2 uses
  %i.da = trunc i64 %indvars.iv457 to i32
  %i.db = and i32 %i.da, 1
  %i.dc = xor i32 %i.db, 1
  %i.dd = mul nuw nsw i32 %i.ah, %i.dc
  %i.de = trunc i64 %indvars.iv457 to i32
  %i.df = and i32 %i.de, 1
  %i.dg = xor i32 %i.df, 1
  %i.dh = mul nuw nsw i32 %i.ah, %i.dg
  %i.di = zext nneg i32 %i.dh to i64              ; 2 uses
  %i.dj = trunc i64 %indvars.iv457 to i32
  %i.dk = and i32 %i.dj, 1
  %i.dl = xor i32 %i.dk, 1
  %i.dm = mul nuw nsw i32 %i.ah, %i.dl
  %i.dn = trunc i64 %indvars.iv457 to i32
  %i.do = and i32 %i.dn, 1
  %i.dp = xor i32 %i.do, 1
  %i.dq = mul nuw nsw i32 %i.ah, %i.dp
  %i.dr = trunc i64 %indvars.iv457 to i32
  %i.ds = and i32 %i.dr, 1
  %i.dt = xor i32 %i.ds, 1
  %i.du = mul nuw nsw i32 %i.ah, %i.dt
  %i.dv = trunc nuw i64 %indvars.iv457 to i32     ; 2 uses
  %i.dw = trunc i64 %indvars.iv457 to i1
  %i.dx = select i1 %i.dw, i64 %i.av, i64 0       ; 7 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dx ; 75 uses
  %i.dz = and i32 %i.dv, 1
  %i.ea = xor i32 %i.dz, 1
  %i.eb = mul nuw nsw i32 %i.ea, %i.ah
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ec ; 30 uses
  %i.ee = load ptr, ptr %i.u, align 8, !tbaa !431
  %i.ef = mul i32 %i.e, %i.dv
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eg ; 33 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.ej = load i8, ptr %.0272398, align 1, !tbaa !24 ; 3 uses
  %i.ek = icmp ugt i8 %i.ej, 4
  br i1 %i.ek, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.el = icmp eq i64 %indvars.iv457, 0
  br i1 %i.el, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.em = zext nneg i8 %i.ej to i64
  %i.en = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0248.in = phi i8 [ %i.eo, %bb.o ], [ %i.ej, %bb.n ]
  switch i8 %.0248.in, label %.loopexit348 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.s
  ]
end_hunk_4
begin_hunk_5_@stbi__create_png_image_raw:bb.a
  %niter771 = phi i32 [ %niter771.next.3, %.lr.ph382 ], [ 0, %.lr.ph382.preheader ]
  %i.xg = load i8, ptr %.0249380, align 1, !tbaa !24
  %i.xh = zext i8 %i.xg to i16
  %i.xi = shl nuw i16 %i.xh, 8
  %i.xj = getelementptr inbounds nuw i8, ptr %.0249380, i64 1
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !24
  %i.xl = zext i8 %i.xk to i16
  %i.xm = or disjoint i16 %i.xi, %i.xl
  store i16 %i.xm, ptr %.0381, align 2, !tbaa !85
  %i.xn = getelementptr inbounds nuw i8, ptr %.0381, i64 2
  %i.xo = getelementptr inbounds nuw i8, ptr %.0249380, i64 2
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !24
  %i.xq = zext i8 %i.xp to i16
  %i.xr = shl nuw i16 %i.xq, 8
  %i.xs = getelementptr inbounds nuw i8, ptr %.0249380, i64 3
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !24
  %i.xu = zext i8 %i.xt to i16
  %i.xv = or disjoint i16 %i.xr, %i.xu
  store i16 %i.xv, ptr %i.xn, align 2, !tbaa !85
  %i.xw = getelementptr inbounds nuw i8, ptr %.0381, i64 4
  %i.xx = getelementptr inbounds nuw i8, ptr %.0249380, i64 4
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !24
  %i.xz = zext i8 %i.xy to i16
  %i.ya = shl nuw i16 %i.xz, 8
  %i.yb = getelementptr inbounds nuw i8, ptr %.0249380, i64 5
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !24
  %i.yd = zext i8 %i.yc to i16
  %i.ye = or disjoint i16 %i.ya, %i.yd
  store i16 %i.ye, ptr %i.xw, align 2, !tbaa !85
  %i.yf = getelementptr inbounds nuw i8, ptr %.0381, i64 6
  %i.yg = getelementptr inbounds nuw i8, ptr %.0249380, i64 6
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !24
  %i.yi = zext i8 %i.yh to i16
  %i.yj = shl nuw i16 %i.yi, 8
  %i.yk = getelementptr inbounds nuw i8, ptr %.0249380, i64 7
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !24
  %i.ym = zext i8 %i.yl to i16
  %i.yn = or disjoint i16 %i.yj, %i.ym
  store i16 %i.yn, ptr %i.yf, align 2, !tbaa !85
  %i.yo = getelementptr inbounds nuw i8, ptr %.0381, i64 8 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.0249380, i64 8 ; 2 uses
  %niter771.next.3 = add i32 %niter771, 4         ; 2 uses
  %niter771.ncmp.3 = icmp eq i32 %niter771.next.3, %unroll_iter770
  br i1 %niter771.ncmp.3, label %.loopexit.loopexit743.unr-lcssa, label %.lr.ph382, !llvm.loop !462

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.be, label %.preheader344, label %.preheader346

.preheader346:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph374

.preheader344:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph378.preheader

.lr.ph378.preheader:                              ; preds = %.preheader344
  br i1 %i.ck, label %.lr.ph378.epil.preheader, label %.lr.ph378

.lr.ph378:                                        ; preds = %.lr.ph378.preheader, %.lr.ph378
  %.1377 = phi ptr [ %i.zi, %.lr.ph378 ], [ %i.eh, %.lr.ph378.preheader ] ; 5 uses
  %.1250376 = phi ptr [ %i.zj, %.lr.ph378 ], [ %i.dy, %.lr.ph378.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph378 ], [ 0, %.lr.ph378.preheader ]
  %i.yq = load i8, ptr %.1250376, align 1, !tbaa !24
  %i.yr = zext i8 %i.yq to i16
  %i.ys = shl nuw i16 %i.yr, 8
  %i.yt = getelementptr inbounds nuw i8, ptr %.1250376, i64 1
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !24
  %i.yv = zext i8 %i.yu to i16
  %i.yw = or disjoint i16 %i.ys, %i.yv
  store i16 %i.yw, ptr %.1377, align 2, !tbaa !85
  %i.yx = getelementptr inbounds nuw i8, ptr %.1377, i64 2
  store i16 -1, ptr %i.yx, align 2, !tbaa !85
  %i.yy = getelementptr inbounds nuw i8, ptr %.1377, i64 4
  %i.yz = getelementptr inbounds nuw i8, ptr %.1250376, i64 2
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !24
  %i.zb = zext i8 %i.za to i16
  %i.zc = shl nuw i16 %i.zb, 8
  %i.zd = getelementptr inbounds nuw i8, ptr %.1250376, i64 3
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !24
  %i.zf = zext i8 %i.ze to i16
  %i.zg = or disjoint i16 %i.zc, %i.zf
  store i16 %i.zg, ptr %i.yy, align 2, !tbaa !85
  %i.zh = getelementptr inbounds nuw i8, ptr %.1377, i64 6
  store i16 -1, ptr %i.zh, align 2, !tbaa !85
  %i.zi = getelementptr inbounds nuw i8, ptr %.1377, i64 8 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.1250376, i64 4 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit744.unr-lcssa, label %.lr.ph378, !llvm.loop !463

.lr.ph374:                                        ; preds = %.preheader346, %.lr.ph374
  %.2373 = phi ptr [ %i.aal, %.lr.ph374 ], [ %i.eh, %.preheader346 ] ; 5 uses
  %.2251372 = phi ptr [ %i.aam, %.lr.ph374 ], [ %i.dy, %.preheader346 ] ; 7 uses
  %.5270371 = phi i32 [ %i.aak, %.lr.ph374 ], [ 0, %.preheader346 ]
  %i.zk = load i8, ptr %.2251372, align 1, !tbaa !24
  %i.zl = zext i8 %i.zk to i16
  %i.zm = shl nuw i16 %i.zl, 8
  %i.zn = getelementptr inbounds nuw i8, ptr %.2251372, i64 1
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !24
  %i.zp = zext i8 %i.zo to i16
  %i.zq = or disjoint i16 %i.zm, %i.zp
  store i16 %i.zq, ptr %.2373, align 2, !tbaa !85
  %i.zr = getelementptr inbounds nuw i8, ptr %.2251372, i64 2
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !24
  %i.zt = zext i8 %i.zs to i16
  %i.zu = shl nuw i16 %i.zt, 8
  %i.zv = getelementptr inbounds nuw i8, ptr %.2251372, i64 3
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !24
  %i.zx = zext i8 %i.zw to i16
  %i.zy = or disjoint i16 %i.zu, %i.zx
  %i.zz = getelementptr inbounds nuw i8, ptr %.2373, i64 2
  store i16 %i.zy, ptr %i.zz, align 2, !tbaa !85
  %i.aaa = getelementptr inbounds nuw i8, ptr %.2251372, i64 4
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !24
  %i.aac = zext i8 %i.aab to i16
  %i.aad = shl nuw i16 %i.aac, 8
  %i.aae = getelementptr inbounds nuw i8, ptr %.2251372, i64 5
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !24
  %i.aag = zext i8 %i.aaf to i16
  %i.aah = or disjoint i16 %i.aad, %i.aag
  %i.aai = getelementptr inbounds nuw i8, ptr %.2373, i64 4
  store i16 %i.aah, ptr %i.aai, align 2, !tbaa !85
  %i.aaj = getelementptr inbounds nuw i8, ptr %.2373, i64 6
  store i16 -1, ptr %i.aaj, align 2, !tbaa !85
  %i.aak = add nuw i32 %.5270371, 1               ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.2373, i64 8
  %i.aam = getelementptr inbounds nuw i8, ptr %.2251372, i64 6
  %exitcond451.not = icmp eq i32 %i.aak, %4
  br i1 %exitcond451.not, label %.loopexit, label %.lr.ph374, !llvm.loop !464

.loopexit.loopexit743.unr-lcssa:                  ; preds = %.lr.ph382
  br i1 %lcmp.mod768.not, label %.loopexit, label %.lr.ph382.epil.preheader

.lr.ph382.epil.preheader:                         ; preds = %.loopexit.loopexit743.unr-lcssa, %.lr.ph382.preheader
  %.0381.epil.init = phi ptr [ %i.eh, %.lr.ph382.preheader ], [ %i.yo, %.loopexit.loopexit743.unr-lcssa ]
  %.0249380.epil.init = phi ptr [ %i.dy, %.lr.ph382.preheader ], [ %i.yp, %.loopexit.loopexit743.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod769)
  br label %.lr.ph382.epil

.lr.ph382.epil:                                   ; preds = %.lr.ph382.epil, %.lr.ph382.epil.preheader
  %.0381.epil = phi ptr [ %i.aau, %.lr.ph382.epil ], [ %.0381.epil.init, %.lr.ph382.epil.preheader ] ; 2 uses
  %.0249380.epil = phi ptr [ %i.aav, %.lr.ph382.epil ], [ %.0249380.epil.init, %.lr.ph382.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph382.epil ], [ 0, %.lr.ph382.epil.preheader ]
  %i.aan = load i8, ptr %.0249380.epil, align 1, !tbaa !24
  %i.aao = zext i8 %i.aan to i16
  %i.aap = shl nuw i16 %i.aao, 8
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 1
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !24
  %i.aas = zext i8 %i.aar to i16
  %i.aat = or disjoint i16 %i.aap, %i.aas
  store i16 %i.aat, ptr %.0381.epil, align 2, !tbaa !85
  %i.aau = getelementptr inbounds nuw i8, ptr %.0381.epil, i64 2
  %i.aav = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter767
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph382.epil, !llvm.loop !465

.loopexit.loopexit744.unr-lcssa:                  ; preds = %.lr.ph378
  br i1 %lcmp.mod765.not, label %.loopexit, label %.lr.ph378.epil.preheader

.lr.ph378.epil.preheader:                         ; preds = %.loopexit.loopexit744.unr-lcssa, %.lr.ph378.preheader
  %.1377.epil.init = phi ptr [ %i.eh, %.lr.ph378.preheader ], [ %i.zi, %.loopexit.loopexit744.unr-lcssa ] ; 2 uses
  %.1250376.epil.init = phi ptr [ %i.dy, %.lr.ph378.preheader ], [ %i.zj, %.loopexit.loopexit744.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod766)
  %i.aaw = load i8, ptr %.1250376.epil.init, align 1, !tbaa !24
  %i.aax = zext i8 %i.aaw to i16
  %i.aay = shl nuw i16 %i.aax, 8
  %i.aaz = getelementptr inbounds nuw i8, ptr %.1250376.epil.init, i64 1
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !24
  %i.abb = zext i8 %i.aba to i16
  %i.abc = or disjoint i16 %i.aay, %i.abb
  store i16 %i.abc, ptr %.1377.epil.init, align 2, !tbaa !85
  %i.abd = getelementptr inbounds nuw i8, ptr %.1377.epil.init, i64 2
  store i16 -1, ptr %i.abd, align 2, !tbaa !85
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph374, %.lr.ph378.epil.preheader, %.loopexit.loopexit744.unr-lcssa, %.loopexit.loopexit743.unr-lcssa, %.lr.ph382.epil, %.lr.ph.i308.prol.loopexit, %.lr.ph.i308, %.lr.ph32.i314, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph32.i.prol.loopexit, %.lr.ph32.i, %middle.block, %.preheader346, %.preheader344, %.preheader342, %.loopexit335, %bb.ag, %bb.ae, %.preheader26.i, %.preheader.i, %.preheader26.i306, %.preheader.i312
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %indvars.iv.next458, %wide.trip.count460
  br i1 %exitcond461.not, label %._crit_edge, label %bb.m, !llvm.loop !466

._crit_edge:                                      ; preds = %.loopexit, %bb.l
  tail call void @free(ptr noundef %i.as) #37
  br label %bb.ak

bb.aj:                                            ; preds = %bb.m
  %i.abe = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.50, ptr %i.abe, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.as) #37
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge, %bb.k, %bb.i, %stbi__mad2sizes_valid.exit.thread, %stbi__mad3sizes_valid.exit.thread, %bb.d
  %.0271 = phi i32 [ 0, %bb.i ], [ 0, %bb.d ], [ 0, %stbi__mad3sizes_valid.exit.thread ], [ 0, %bb.k ], [ 0, %stbi__mad2sizes_valid.exit.thread ], [ 0, %bb.aj ], [ 1, %._crit_edge ]
  ret i32 %.0271
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbi__create_png_image(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq i32 %4, 16
  %i.b = zext i1 %i.a to i32
  %i.c = shl i32 %3, %i.b                         ; 7 uses
  %.not = icmp eq i32 %6, 0
  %i.d = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !44   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !43   ; 5 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.e, i32 noundef %i.g, i32 noundef %4, i32 noundef %5)
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.i = or i32 %i.g, %i.e
  %or.cond.not.i.i.i = icmp sgt i32 %i.i, -1
  br i1 %or.cond.not.i.i.i, label %bb.d, label %stbi__malloc_mad3.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %i.g, 0
  br i1 %i.j, label %stbi__mul2sizes_valid.exit.thread16.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.d
  %i.k = udiv i32 2147483647, %i.g
  %.not24.i.i = icmp sgt i32 %i.e, %i.k
  br i1 %.not24.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i.i

stbi__mul2sizes_valid.exit.thread16.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.d
  %i.l = mul nsw i32 %i.g, %i.e                   ; 3 uses
  %i.m = or i32 %i.l, %i.c
  %or.cond.not.i10.i.i = icmp sgt i32 %i.m, -1
  br i1 %or.cond.not.i10.i.i, label %bb.e, label %stbi__malloc_mad3.exit.thread

bb.e:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i
  %i.n = icmp eq i32 %i.c, 0
  br i1 %i.n, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.e
  %i.o = udiv i32 2147483647, %i.c
  %.not.i.i = icmp sgt i32 %i.l, %i.o
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit:                           ; preds = %bb.e, %stbi__mul2sizes_valid.exit12.i.i
  %i.p = mul nsw i32 %i.l, %i.c
  %i.q = sext i32 %i.p to i64
  %i.r = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #38 ; 4 uses
  %.not92 = icmp eq ptr %i.r, null
  br i1 %.not92, label %stbi__malloc_mad3.exit.thread, label %.preheader100

.preheader100:                                    ; preds = %stbi__malloc_mad3.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %7 = zext nneg i32 %i.c to i64                  ; 3 uses
  %i.t = sext i32 %i.c to i64                     ; 6 uses
  br label %bb.f

stbi__malloc_mad3.exit.thread:                    ; preds = %bb.c, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.thread16.i.i, %stbi__malloc_mad3.exit
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.u, align 8, !tbaa !26
  br label %.critedge

bb.f:                                             ; preds = %.preheader100, %bb.h
  %indvars.iv112 = phi i64 [ 0, %.preheader100 ], [ %indvars.iv.next113, %bb.h ] ; 5 uses
  %.076106 = phi ptr [ %1, %.preheader100 ], [ %.379, %bb.h ] ; 3 uses
  %.085104 = phi i32 [ %2, %.preheader100 ], [ %.388, %bb.h ] ; 3 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !32     ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xorig, i64 %indvars.iv112
  %i.y = load i32, ptr %i.x, align 4, !tbaa !27   ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xspc, i64 %indvars.iv112
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !27  ; 4 uses
  %i.ab = xor i32 %i.y, -1
  %i.ac = add i32 %i.w, %i.ab
  %i.ad = add i32 %i.ac, %i.aa                    ; 2 uses
  %i.ae = udiv i32 %i.ad, %i.aa                   ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !43
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yorig, i64 %indvars.iv112
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !27 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yspc, i64 %indvars.iv112
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !27 ; 4 uses
  %i.al = xor i32 %i.ai, -1
  %i.am = add i32 %i.ag, %i.al
  %i.an = add i32 %i.am, %i.ak                    ; 2 uses
  %i.ao = udiv i32 %i.an, %i.ak                   ; 4 uses
  %i.ap = icmp ule i32 %i.aa, %i.ad
  %i.aq = icmp ule i32 %i.ak, %i.an
  %or.cond = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !53
  %i.at = mul i32 %i.ae, %4
  %i.au = mul i32 %i.at, %i.as
  %i.av = add nsw i32 %i.au, 7
  %i.aw = ashr i32 %i.av, 3
  %i.ax = add nsw i32 %i.aw, 1
  %i.ay = mul nsw i32 %i.ax, %i.ao                ; 2 uses
  %i.az = tail call i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef %.076106, i32 noundef %.085104, i32 noundef %3, i32 noundef %i.ae, i32 noundef %i.ao, i32 noundef %4, i32 noundef %5)
  %.not93.not = icmp eq i32 %i.az, 0
  br i1 %.not93.not, label %.thread, label %.preheader99

.preheader99:                                     ; preds = %bb.g
  %i.ba = icmp sgt i32 %i.ao, 0
  %i.bb = icmp sgt i32 %i.ae, 0
  %or.cond107 = and i1 %i.ba, %i.bb
  %.pre115 = load ptr, ptr %i.s, align 8, !tbaa !431 ; 4 uses
  br i1 %or.cond107, label %.preheader.lr.ph.split, label %._crit_edge103.split

.preheader.lr.ph.split:                           ; preds = %.preheader99
  %i.bc = load ptr, ptr %0, align 8, !tbaa !32
  %i.bd = sext i32 %i.aa to i64                   ; 3 uses
  %i.be = sext i32 %i.y to i64                    ; 3 uses
  %i.bf = zext nneg i32 %i.ae to i64              ; 3 uses
  %i.bg = zext nneg i32 %i.ao to i64
  %.pre.pre = load i32, ptr %i.bc, align 8, !tbaa !44
  %factor.op.mul = mul i32 %i.c, %.pre.pre
  %xtraiter = and i64 %i.bf, 1
  %i.bh = icmp eq i32 %i.ae, 1
  %unroll_iter = and i64 %i.bf, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod122 = trunc i32 %i.ae to i1
  br label %.preheader

.thread:                                          ; preds = %bb.g
  tail call void @free(ptr noundef %i.r) #37
  br label %.critedge

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv109 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next110, %._crit_edge ] ; 3 uses
  %i.bi = trunc i64 %indvars.iv109 to i32
  %i.bj = mul i32 %i.ak, %i.bi
  %i.bk = add i32 %i.bj, %i.ai
  %.reass = mul i32 %i.bk, %factor.op.mul
  %i.bl = mul nuw nsw i64 %indvars.iv109, %i.bf   ; 3 uses
  %i.bm = zext i32 %.reass to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bm ; 3 uses
  br i1 %i.bh, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bo = mul nsw i64 %indvars.iv, %i.bd
  %i.bp = add nsw i64 %i.bo, %i.be
  %i.bq = mul nsw i64 %i.bp, %i.t
  %i.br = getelementptr inbounds i8, ptr %i.bn, i64 %i.bq
  %i.bs = add nuw nsw i64 %indvars.iv, %i.bl
  %i.bt = mul nsw i64 %i.bs, %i.t
  %i.bu = getelementptr inbounds i8, ptr %.pre115, i64 %i.bt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr align 1 %i.bu, i64 %7, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bv = mul nsw i64 %indvars.iv.next, %i.bd
  %i.bw = add nsw i64 %i.bv, %i.be
  %i.bx = mul nsw i64 %i.bw, %i.t
  %i.by = getelementptr inbounds i8, ptr %i.bn, i64 %i.bx
  %i.bz = add nuw nsw i64 %indvars.iv.next, %i.bl
  %i.ca = mul nsw i64 %i.bz, %i.t
  %i.cb = getelementptr inbounds i8, ptr %.pre115, i64 %i.ca
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr align 1 %i.cb, i64 %7, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !467

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.cc = mul nsw i64 %indvars.iv.epil.init, %i.bd
  %i.cd = add nsw i64 %i.cc, %i.be
  %i.ce = mul nsw i64 %i.cd, %i.t
  %i.cf = getelementptr inbounds i8, ptr %i.bn, i64 %i.ce
  %i.cg = add nuw nsw i64 %indvars.iv.epil.init, %i.bl
  %i.ch = mul nsw i64 %i.cg, %i.t
  %i.ci = getelementptr inbounds i8, ptr %.pre115, i64 %i.ch
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr align 1 %i.ci, i64 %7, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.cj = icmp samesign ult i64 %indvars.iv.next110, %i.bg
  br i1 %i.cj, label %.preheader, label %._crit_edge103.split, !llvm.loop !468

._crit_edge103.split:                             ; preds = %._crit_edge, %.preheader99
  tail call void @free(ptr noundef %.pre115) #37
  %i.ck = zext i32 %i.ay to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.076106, i64 %i.ck
  %i.cm = sub i32 %.085104, %i.ay
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge103.split, %bb.f
  %.388 = phi i32 [ %.085104, %bb.f ], [ %i.cm, %._crit_edge103.split ]
  %.379 = phi ptr [ %.076106, %bb.f ], [ %i.cl, %._crit_edge103.split ]
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next113, 7
  br i1 %exitcond.not, label %bb.i, label %bb.f, !llvm.loop !469

bb.i:                                             ; preds = %bb.h
  store ptr %i.r, ptr %i.s, align 8, !tbaa !431
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.i, %stbi__malloc_mad3.exit.thread, %bb.b
  %.4 = phi i32 [ %i.h, %bb.b ], [ 1, %bb.i ], [ 0, %stbi__malloc_mad3.exit.thread ], [ 0, %.thread ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @stbi__compute_transparency(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #28 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43
  %i.e = mul i32 %i.d, %i.b                       ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !431  ; 3 uses
  %i.h = icmp eq i32 %2, 2
  %.not31 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.h, label %.preheader, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %.preheader
  %xtraiter = and i32 %i.e, 3                     ; 3 uses
  %i.k = icmp ult i32 %i.e, 4
  br i1 %i.k, label %.lr.ph30.epil.preheader, label %.lr.ph30.preheader.new

.lr.ph30.preheader.new:                           ; preds = %.lr.ph30.preheader
  %unroll_iter = and i32 %i.e, -4
  br label %.lr.ph30

.lr.ph30:                                         ; preds = %.lr.ph30, %.lr.ph30.preheader.new
  %.029 = phi ptr [ %i.g, %.lr.ph30.preheader.new ], [ %i.ai, %.lr.ph30 ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph30.preheader.new ], [ %niter.next.3, %.lr.ph30 ]
  %i.l = load i8, ptr %.029, align 1, !tbaa !24
  %i.m = load i8, ptr %1, align 1, !tbaa !24
  %i.n = icmp ne i8 %i.l, %i.m
  %i.o = sext i1 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.029, i64 1
  store i8 %i.o, ptr %i.p, align 1, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %.029, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !24
  %i.s = load i8, ptr %1, align 1, !tbaa !24
  %i.t = icmp ne i8 %i.r, %i.s
  %i.u = sext i1 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.029, i64 3
  store i8 %i.u, ptr %i.v, align 1, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %.029, i64 4
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  %i.y = load i8, ptr %1, align 1, !tbaa !24
  %i.z = icmp ne i8 %i.x, %i.y
  %i.aa = sext i1 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.029, i64 5
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %.029, i64 6
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !24
  %i.ae = load i8, ptr %1, align 1, !tbaa !24
  %i.af = icmp ne i8 %i.ad, %i.ae
  %i.ag = sext i1 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.029, i64 7
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %.029, i64 8 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph30, !llvm.loop !470

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.127 = phi ptr [ %i.g, %.lr.ph ], [ %i.av, %bb.f ] ; 5 uses
  %.12326 = phi i32 [ 0, %.lr.ph ], [ %i.aw, %bb.f ]
  %i.aj = load i8, ptr %.127, align 1, !tbaa !24
  %i.ak = load i8, ptr %1, align 1, !tbaa !24
  %i.al = icmp eq i8 %i.aj, %i.ak
  br i1 %i.al, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %.127, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !24
  %i.ao = load i8, ptr %i.i, align 1, !tbaa !24
  %i.ap = icmp eq i8 %i.an, %i.ao
  br i1 %i.ap, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %.127, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !24
  %i.as = load i8, ptr %i.j, align 1, !tbaa !24
  %i.at = icmp eq i8 %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %.127, i64 3
  store i8 0, ptr %i.au, align 1, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %.127, i64 4
  %i.aw = add nuw i32 %.12326, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.aw, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !471

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph30
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph30.epil.preheader

.lr.ph30.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph30.preheader
  %.029.epil.init = phi ptr [ %i.g, %.lr.ph30.preheader ], [ %i.ai, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph30.epil

.lr.ph30.epil:                                    ; preds = %.lr.ph30.epil, %.lr.ph30.epil.preheader
  %.029.epil = phi ptr [ %i.bc, %.lr.ph30.epil ], [ %.029.epil.init, %.lr.ph30.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph30.epil ], [ 0, %.lr.ph30.epil.preheader ]
  %i.ax = load i8, ptr %.029.epil, align 1, !tbaa !24
  %i.ay = load i8, ptr %1, align 1, !tbaa !24
  %i.az = icmp ne i8 %i.ax, %i.ay
  %i.ba = sext i1 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %.029.epil, i64 1
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %.029.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph30.epil, !llvm.loop !472

.loopexit:                                        ; preds = %bb.f, %.loopexit.loopexit.unr-lcssa, %.lr.ph30.epil, %.preheader24, %.preheader
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @stbi__compute_transparency16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #28 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43
  %i.e = mul i32 %i.d, %i.b                       ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !431  ; 10 uses
  %i.h = icmp eq i32 %2, 2
  %.not31 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.h, label %.preheader, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %.preheader
  %i.k = zext i32 %i.e to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.e, 25
  br i1 %min.iters.check, label %.lr.ph30.preheader42, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph30.preheader
  %i.l = add i32 %i.e, -1
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = getelementptr i8, ptr %i.g, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 4
  %scevgep37 = getelementptr i8, ptr %1, i64 2
  %bound0 = icmp ult ptr %i.g, %scevgep37
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
end_hunk_5
