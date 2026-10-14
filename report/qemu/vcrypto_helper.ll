Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vcrypto_helper?download=true
inline.NumInlined: 368
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@helper_vror_vx_w:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vror_vx_w(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = trunc i64 %1 to i32
  %i.e = tail call noundef i32 @llvm.fshr.i32(i32 %i.c, i32 %i.c, i32 %i.d)
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  store i32 %i.e, ptr %i.f, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vror_vx_d(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vror_vx_d, i32 noundef 8) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vror_vx_d(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = tail call noundef i64 @llvm.fshr.i64(i64 %i.c, i64 %i.c, i64 %1)
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  store i64 %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vrol_vv_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vrol_vv_b, i32 noundef 1) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vrol_vv_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = tail call i8 @llvm.fshl.i8(i8 %i.e, i8 %i.e, i8 %i.c)
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.a
  store i8 %i.f, ptr %i.g, align 1
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vrol_vv_h(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vrol_vv_h, i32 noundef 2) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vrol_vv_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [2 x i8], ptr %1, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2
  %i.d = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.e = load i16, ptr %i.d, align 2              ; 2 uses
  %i.f = tail call i16 @llvm.fshl.i16(i16 %i.e, i16 %i.e, i16 %i.c)
  %i.g = getelementptr inbounds [2 x i8], ptr %0, i64 %i.a
  store i16 %i.f, ptr %i.g, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vrol_vv_w(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vrol_vv_w, i32 noundef 4) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vrol_vv_w(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %1, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = tail call noundef i32 @llvm.fshl.i32(i32 %i.e, i32 %i.e, i32 %i.c)
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  store i32 %i.f, ptr %i.g, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vrol_vv_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vrol_vv_d, i32 noundef 8) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vrol_vv_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = tail call noundef i64 @llvm.fshl.i64(i64 %i.e, i64 %i.e, i64 %i.c)
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  store i64 %i.f, ptr %i.g, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vrol_vx_b(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vrol_vx_b, i32 noundef 1) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vrol_vx_b(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %i.d = trunc i64 %1 to i8
  %i.e = tail call i8 @llvm.fshl.i8(i8 %i.c, i8 %i.c, i8 %i.d)
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.a
  store i8 %i.e, ptr %i.f, align 1
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vrol_vx_h(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vrol_vx_h, i32 noundef 2) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vrol_vx_h(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2              ; 2 uses
  %i.d = trunc i64 %1 to i16
  %i.e = tail call i16 @llvm.fshl.i16(i16 %i.c, i16 %i.c, i16 %i.d)
  %i.f = getelementptr inbounds [2 x i8], ptr %0, i64 %i.a
  store i16 %i.e, ptr %i.f, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vrol_vx_w(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vrol_vx_w, i32 noundef 4) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vrol_vx_w(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = trunc i64 %1 to i32
  %i.e = tail call noundef i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 %i.d)
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  store i32 %i.e, ptr %i.f, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vrol_vx_d(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vrol_vx_d, i32 noundef 8) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vrol_vx_d(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = tail call noundef i64 @llvm.fshl.i64(i64 %i.c, i64 %i.c, i64 %1)
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  store i64 %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vbrev8_v_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4616
  %i.d = load i32, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.e, align 16
  %i.f = shl i32 %4, 3
  %i.g = and i32 %i.f, 2040
  %i.h = add nuw nsw i32 %i.g, 8
  %i.i = trunc i64 %.val to i32
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 7
  %i.l = shl i32 %4, 18
  %i.m = ashr i32 %i.l, 29
  %i.n = sub nsw i32 %i.m, %i.k
  %i.o = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.p = shl nuw nsw i32 %i.h, %i.o
  %i.q = lshr i32 %4, 14
  %i.r = and i32 %i.q, 1
  %i.s = lshr i32 %4, 16
  %i.t = and i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 9 uses
  %.not = icmp ult i32 %i.v, %i.d
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.w = and i32 %4, 1024
  %.not29 = icmp eq i32 %i.w, 0
  br i1 %.not29, label %.preheader.split.us, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.x = sub i32 %i.d, %i.v                       ; 7 uses
  %min.iters.check = icmp ult i32 %i.x, 8
  %i.y = add i32 %i.d, -1
  %i.z = icmp slt i32 %i.y, %i.v
  %or.cond = or i1 %min.iters.check, %i.z
  %i.aa = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond46 = or i1 %or.cond, %diff.check
  br i1 %or.cond46, label %.preheader.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check37 = icmp ult i32 %i.x, 32
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i32 %i.x, 24
  %n.vec = and i32 %i.x, -32                      ; 4 uses
  %i.ac = add i32 %i.v, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add nuw i32 %i.v, %index
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <16 x i8>, ptr %i.af, align 1
  %wide.load38 = load <16 x i8>, ptr %i.ag, align 1
  %i.ah = tail call <16 x i8> @llvm.bitreverse.v16i8(<16 x i8> %wide.load)
  %i.ai = tail call <16 x i8> @llvm.bitreverse.v16i8(<16 x i8> %wide.load38)
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <16 x i8> %i.ah, ptr %i.aj, align 1
  store <16 x i8> %i.ai, ptr %i.ak, align 1
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.al = icmp eq i32 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.x, %n.vec
  br i1 %cmp.n, label %.split.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.preheader.split.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i32 %i.x, -8                     ; 3 uses
  %i.am = add i32 %i.v, %n.vec39
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %i.an = add nuw i32 %i.v, %index40
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.ao
  %wide.load41 = load <8 x i8>, ptr %i.ap, align 1
  %i.aq = tail call <8 x i8> @llvm.bitreverse.v8i8(<8 x i8> %wide.load41)
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.ao
  store <8 x i8> %i.aq, ptr %i.ar, align 1
  %index.next42 = add nuw i32 %index40, 8         ; 2 uses
  %i.as = icmp eq i32 %index.next42, %n.vec39
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i32 %i.x, %n.vec39
  br i1 %cmp.n43, label %.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.031.ph = phi i32 [ %i.v, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  br label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.031.us = phi i32 [ %.pre-phi, %bb.d ], [ %i.v, %.preheader ] ; 6 uses
  %i.at = sdiv i32 %.031.us, 64
  %i.au = srem i32 %.031.us, 64
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = zext nneg i32 %i.au to i64
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = and i64 %i.ax, %i.az
  %.not30.us = icmp eq i64 %i.ba, 0
  br i1 %.not30.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.bb = sext i32 %.031.us to i64                ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %2, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %rev.i.us = tail call i8 @llvm.bitreverse.i8(i8 %i.bd)
  %i.be = getelementptr inbounds i8, ptr %0, i64 %i.bb
  store i8 %rev.i.us, ptr %i.be, align 1
  %.pre = add i32 %.031.us, 1
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.bf = add i32 %.031.us, 1                     ; 2 uses
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.t, i32 noundef %.031.us, i32 noundef %i.bf) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i32 [ %i.bf, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %exitcond33.not = icmp eq i32 %.pre-phi, %i.d
  br i1 %exitcond33.not, label %.split.us, label %.preheader.split.us, !llvm.loop !18

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.u, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.preheader, %.preheader.split
  %.031 = phi i32 [ %i.bk, %.preheader.split ], [ %.031.ph, %.preheader.split.preheader ] ; 2 uses
  %i.bg = sext i32 %.031 to i64                   ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %2, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %rev.i = tail call i8 @llvm.bitreverse.i8(i8 %i.bi)
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bg
  store i8 %rev.i, ptr %i.bj, align 1
  %i.bk = add nuw i32 %.031, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bk, %i.d
  br i1 %exitcond.not, label %.split.us, label %.preheader.split, !llvm.loop !19

.split.us:                                        ; preds = %.preheader.split, %bb.d, %middle.block, %vec.epilog.middle.block
  store i32 0, ptr %i.u, align 4
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.d, i32 noundef %i.p) #12
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @vext_set_elems_1s(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vbrev8_v_h(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4616
  %i.d = load i32, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.e, align 16
  %i.f = shl i32 %4, 3
  %i.g = and i32 %i.f, 2040
  %i.h = add nuw nsw i32 %i.g, 8
  %i.i = trunc i64 %.val to i32
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 7
  %i.l = shl i32 %4, 18
  %i.m = ashr i32 %i.l, 29
  %reass.sub = sub nsw i32 %i.m, %i.k
  %i.n = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -1)
  %i.o = add nsw i32 %i.n, 1
  %i.p = shl nuw nsw i32 %i.h, %i.o
  %.zext = and i32 %i.p, 65528
  %i.q = lshr i32 %4, 14
  %i.r = and i32 %i.q, 1
  %i.s = lshr i32 %4, 16
  %i.t = and i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 7 uses
  %.not = icmp ult i32 %i.v, %i.d
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.w = and i32 %4, 1024
  %.not29 = icmp eq i32 %i.w, 0
  br i1 %.not29, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.x = sub i32 %i.d, %i.v                       ; 3 uses
  %min.iters.check = icmp ult i32 %i.x, 8
  %i.y = add i32 %i.d, -1
  %i.z = icmp slt i32 %i.y, %i.v
  %or.cond = or i1 %min.iters.check, %i.z
  %i.aa = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.aa, -16
  %or.cond39 = or i1 %or.cond, %diff.check
  br i1 %or.cond39, label %.preheader.split.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.preheader.split.preheader
  %n.vec = and i32 %i.x, -8                       ; 3 uses
  %i.ab = add i32 %i.v, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = add nuw i32 %i.v, %index
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ad
  %wide.load = load <8 x i16>, ptr %i.ae, align 2 ; 2 uses
  %i.af = shl <8 x i16> %wide.load, splat (i16 1)
  %i.ag = and <8 x i16> %i.af, splat (i16 -21846)
  %i.ah = lshr <8 x i16> %wide.load, splat (i16 1)
  %i.ai = and <8 x i16> %i.ah, splat (i16 21845)
  %i.aj = or disjoint <8 x i16> %i.ag, %i.ai      ; 2 uses
  %i.ak = shl <8 x i16> %i.aj, splat (i16 2)
  %i.al = and <8 x i16> %i.ak, splat (i16 -13108)
  %i.am = lshr <8 x i16> %i.aj, splat (i16 2)
  %i.an = and <8 x i16> %i.am, splat (i16 13107)
end_hunk_0
begin_hunk_1_@helper_vbrev8_v_w:bb.a
  %i.ck = lshr i32 %i.ch, 2
  %i.cl = and i32 %i.ck, 858993459
  %i.cm = or disjoint i32 %i.cj, %i.cl            ; 2 uses
  %i.cn = shl i32 %i.cm, 4
  %i.co = and i32 %i.cn, -252645136
  %i.cp = lshr i32 %i.cm, 4
  %i.cq = and i32 %i.cp, 252645135
  %i.cr = or disjoint i32 %i.co, %i.cq
  %i.cs = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ca
  store i32 %i.cr, ptr %i.cs, align 4
  %i.ct = add nuw i32 %.031, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ct, %i.d
  br i1 %exitcond.not, label %.split.us, label %.preheader.split, !llvm.loop !25

.split.us:                                        ; preds = %.preheader.split, %bb.d, %middle.block
  store i32 0, ptr %i.u, align 4
  %i.cu = shl i32 %i.d, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.cu, i32 noundef %i.p) #12
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vbrev8_v_d(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4616
  %i.d = load i32, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.e, align 16
  %i.f = shl i32 %4, 3
  %i.g = and i32 %i.f, 2040
  %i.h = add nuw nsw i32 %i.g, 8
  %i.i = trunc i64 %.val to i32
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 7
  %i.l = shl i32 %4, 18
  %i.m = ashr i32 %i.l, 29
  %reass.sub = sub nsw i32 %i.m, %i.k
  %i.n = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -3)
  %i.o = add nsw i32 %i.n, 3
  %i.p = shl nuw nsw i32 %i.h, %i.o
  %i.q = lshr i32 %4, 14
  %i.r = and i32 %i.q, 1
  %i.s = lshr i32 %4, 16
  %i.t = and i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 7 uses
  %.not = icmp ult i32 %i.v, %i.d
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.w = and i32 %4, 1024
  %.not29 = icmp eq i32 %i.w, 0
  br i1 %.not29, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.x = sub i32 %i.d, %i.v                       ; 3 uses
  %min.iters.check = icmp ult i32 %i.x, 4
  %i.y = add i32 %i.d, -1
  %i.z = icmp slt i32 %i.y, %i.v
  %or.cond = or i1 %min.iters.check, %i.z
  %i.aa = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.aa, -16
  %or.cond39 = or i1 %or.cond, %diff.check
  br i1 %or.cond39, label %.preheader.split.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.preheader.split.preheader
  %n.vec = and i32 %i.x, -2                       ; 3 uses
  %i.ab = add i32 %i.v, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = add nuw i32 %i.v, %index
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ad
  %wide.load = load <2 x i64>, ptr %i.ae, align 8 ; 2 uses
  %i.af = shl <2 x i64> %wide.load, splat (i64 1)
  %i.ag = and <2 x i64> %i.af, splat (i64 -6148914691236517206)
  %i.ah = lshr <2 x i64> %wide.load, splat (i64 1)
  %i.ai = and <2 x i64> %i.ah, splat (i64 6148914691236517205)
  %i.aj = or disjoint <2 x i64> %i.ag, %i.ai      ; 2 uses
  %i.ak = shl <2 x i64> %i.aj, splat (i64 2)
  %i.al = and <2 x i64> %i.ak, splat (i64 -3689348814741910324)
  %i.am = lshr <2 x i64> %i.aj, splat (i64 2)
  %i.an = and <2 x i64> %i.am, splat (i64 3689348814741910323)
  %i.ao = or disjoint <2 x i64> %i.al, %i.an      ; 2 uses
  %i.ap = shl <2 x i64> %i.ao, splat (i64 4)
  %i.aq = and <2 x i64> %i.ap, splat (i64 -1085102592571150096)
  %i.ar = lshr <2 x i64> %i.ao, splat (i64 4)
  %i.as = and <2 x i64> %i.ar, splat (i64 1085102592571150095)
  %i.at = or disjoint <2 x i64> %i.aq, %i.as
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ad
  store <2 x i64> %i.at, ptr %i.au, align 8
  %index.next = add nuw i32 %index, 2             ; 2 uses
  %i.av = icmp eq i32 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.x, %n.vec
  br i1 %cmp.n, label %.split.us, label %.preheader.split.preheader40

.preheader.split.preheader40:                     ; preds = %.preheader.split.preheader, %middle.block
  %.031.ph = phi i32 [ %i.v, %.preheader.split.preheader ], [ %i.ab, %middle.block ]
  br label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.031.us = phi i32 [ %i.bz, %bb.d ], [ %i.v, %.preheader ] ; 5 uses
  %i.aw = sdiv i32 %.031.us, 64
  %i.ax = srem i32 %.031.us, 64
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = zext nneg i32 %i.ax to i64
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = and i64 %i.ba, %i.bc
  %.not30.us = icmp eq i64 %i.bd, 0
  br i1 %.not30.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.be = sext i32 %.031.us to i64                ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %2, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = shl i64 %i.bg, 1
  %i.bi = and i64 %i.bh, -6148914691236517206
  %i.bj = lshr i64 %i.bg, 1
  %i.bk = and i64 %i.bj, 6148914691236517205
  %i.bl = or disjoint i64 %i.bi, %i.bk            ; 2 uses
  %i.bm = shl i64 %i.bl, 2
  %i.bn = and i64 %i.bm, -3689348814741910324
  %i.bo = lshr i64 %i.bl, 2
  %i.bp = and i64 %i.bo, 3689348814741910323
  %i.bq = or disjoint i64 %i.bn, %i.bp            ; 2 uses
  %i.br = shl i64 %i.bq, 4
  %i.bs = and i64 %i.br, -1085102592571150096
  %i.bt = lshr i64 %i.bq, 4
  %i.bu = and i64 %i.bt, 1085102592571150095
  %i.bv = or disjoint i64 %i.bs, %i.bu
  %i.bw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.be
  store i64 %i.bv, ptr %i.bw, align 8
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.bx = shl i32 %.031.us, 3                     ; 2 uses
  %i.by = add i32 %i.bx, 8
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.bx, i32 noundef %i.by) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bz = add i32 %.031.us, 1                     ; 2 uses
  %exitcond33.not = icmp eq i32 %i.bz, %i.d
  br i1 %exitcond33.not, label %.split.us, label %.preheader.split.us, !llvm.loop !27

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.u, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.preheader40, %.preheader.split
  %.031 = phi i32 [ %i.ct, %.preheader.split ], [ %.031.ph, %.preheader.split.preheader40 ] ; 2 uses
  %i.ca = sext i32 %.031 to i64                   ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8            ; 2 uses
  %i.cd = shl i64 %i.cc, 1
  %i.ce = and i64 %i.cd, -6148914691236517206
  %i.cf = lshr i64 %i.cc, 1
  %i.cg = and i64 %i.cf, 6148914691236517205
  %i.ch = or disjoint i64 %i.ce, %i.cg            ; 2 uses
  %i.ci = shl i64 %i.ch, 2
  %i.cj = and i64 %i.ci, -3689348814741910324
  %i.ck = lshr i64 %i.ch, 2
  %i.cl = and i64 %i.ck, 3689348814741910323
  %i.cm = or disjoint i64 %i.cj, %i.cl            ; 2 uses
  %i.cn = shl i64 %i.cm, 4
  %i.co = and i64 %i.cn, -1085102592571150096
  %i.cp = lshr i64 %i.cm, 4
  %i.cq = and i64 %i.cp, 1085102592571150095
  %i.cr = or disjoint i64 %i.co, %i.cq
  %i.cs = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ca
  store i64 %i.cr, ptr %i.cs, align 8
  %i.ct = add nuw i32 %.031, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ct, %i.d
  br i1 %exitcond.not, label %.split.us, label %.preheader.split, !llvm.loop !28

.split.us:                                        ; preds = %.preheader.split, %bb.d, %middle.block
  store i32 0, ptr %i.u, align 4
  %i.cu = shl i32 %i.d, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.cu, i32 noundef %i.p) #12
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vrev8_v_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4616
  %i.d = load i32, ptr %i.c, align 8              ; 8 uses
  %i.e = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.e, align 16
  %i.f = shl i32 %4, 3
  %i.g = and i32 %i.f, 2040
  %i.h = add nuw nsw i32 %i.g, 8
  %i.i = trunc i64 %.val to i32
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 7
  %i.l = shl i32 %4, 18
  %i.m = ashr i32 %i.l, 29
  %i.n = sub nsw i32 %i.m, %i.k
  %i.o = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.p = shl nuw nsw i32 %i.h, %i.o
  %i.q = lshr i32 %4, 14
  %i.r = and i32 %i.q, 1
  %i.s = lshr i32 %4, 16
  %i.t = and i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 9 uses
  %.not = icmp ult i32 %i.v, %i.d
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.w = and i32 %4, 1024
  %.not29 = icmp eq i32 %i.w, 0
  br i1 %.not29, label %.preheader.split.us, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.x = sub i32 %i.d, %i.v                       ; 7 uses
  %min.iters.check = icmp ult i32 %i.x, 8
  %i.y = add i32 %i.d, -1
  %i.z = icmp slt i32 %i.y, %i.v
  %or.cond = or i1 %min.iters.check, %i.z
  %i.aa = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond46 = or i1 %or.cond, %diff.check
  br i1 %or.cond46, label %.preheader.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check37 = icmp ult i32 %i.x, 32
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i32 %i.x, 24
  %n.vec = and i32 %i.x, -32                      ; 4 uses
  %i.ac = add i32 %i.v, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add nuw i32 %i.v, %index
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <16 x i8>, ptr %i.af, align 1
  %wide.load38 = load <16 x i8>, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <16 x i8> %wide.load, ptr %i.ah, align 1
  store <16 x i8> %wide.load38, ptr %i.ai, align 1
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.aj = icmp eq i32 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.x, %n.vec
  br i1 %cmp.n, label %.split.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.preheader.split.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i32 %i.x, -8                     ; 3 uses
  %i.ak = add i32 %i.v, %n.vec39
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %i.al = add nuw i32 %i.v, %index40
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
  %wide.load41 = load <8 x i8>, ptr %i.an, align 1
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %i.am
  store <8 x i8> %wide.load41, ptr %i.ao, align 1
  %index.next42 = add nuw i32 %index40, 8         ; 2 uses
  %i.ap = icmp eq i32 %index.next42, %n.vec39
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i32 %i.x, %n.vec39
  br i1 %cmp.n43, label %.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.031.ph = phi i32 [ %i.v, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ] ; 4 uses
  %i.aq = sub i32 %i.d, %.031.ph
  %xtraiter = and i32 %i.aq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.split.prol.loopexit, label %.preheader.split.prol

.preheader.split.prol:                            ; preds = %.preheader.split.preheader, %.preheader.split.prol
  %.031.prol = phi i32 [ %i.av, %.preheader.split.prol ], [ %.031.ph, %.preheader.split.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.split.prol ], [ 0, %.preheader.split.preheader ]
  %i.ar = sext i32 %.031.prol to i64              ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %2, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1
  %i.au = getelementptr inbounds i8, ptr %0, i64 %i.ar
  store i8 %i.at, ptr %i.au, align 1
  %i.av = add nuw i32 %.031.prol, 1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.split.prol.loopexit, label %.preheader.split.prol, !llvm.loop !31

.preheader.split.prol.loopexit:                   ; preds = %.preheader.split.prol, %.preheader.split.preheader
  %.031.unr = phi i32 [ %.031.ph, %.preheader.split.preheader ], [ %i.av, %.preheader.split.prol ]
  %i.aw = sub i32 %.031.ph, %i.d
  %i.ax = icmp ugt i32 %i.aw, -4
  br i1 %i.ax, label %.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.031.us = phi i32 [ %.pre-phi, %bb.d ], [ %i.v, %.preheader ] ; 6 uses
  %i.ay = sdiv i32 %.031.us, 64
  %i.az = srem i32 %.031.us, 64
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = zext nneg i32 %i.az to i64
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = and i64 %i.bc, %i.be
  %.not30.us = icmp eq i64 %i.bf, 0
  br i1 %.not30.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.bg = sext i32 %.031.us to i64                ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %2, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bg
  store i8 %i.bi, ptr %i.bj, align 1
  %.pre = add i32 %.031.us, 1
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.bk = add i32 %.031.us, 1                     ; 2 uses
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.t, i32 noundef %.031.us, i32 noundef %i.bk) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i32 [ %i.bk, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %exitcond33.not = icmp eq i32 %.pre-phi, %i.d
  br i1 %exitcond33.not, label %.split.us, label %.preheader.split.us, !llvm.loop !32

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.u, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.prol.loopexit, %.preheader.split
  %.031 = phi i32 [ %i.ce, %.preheader.split ], [ %.031.unr, %.preheader.split.prol.loopexit ] ; 5 uses
  %i.bl = sext i32 %.031 to i64                   ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %2, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %i.bl
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = add nuw i32 %.031, 1
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %2, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = getelementptr inbounds i8, ptr %0, i64 %i.bq
  store i8 %i.bs, ptr %i.bt, align 1
  %i.bu = add nuw i32 %.031, 2
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %2, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = getelementptr inbounds i8, ptr %0, i64 %i.bv
  store i8 %i.bx, ptr %i.by, align 1
  %i.bz = add nuw i32 %.031, 3
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %2, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = getelementptr inbounds i8, ptr %0, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1
  %i.ce = add nuw i32 %.031, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.ce, %i.d
  br i1 %exitcond.not.3, label %.split.us, label %.preheader.split, !llvm.loop !33

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block, %vec.epilog.middle.block
  store i32 0, ptr %i.u, align 4
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.d, i32 noundef %i.p) #12
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vrev8_v_h(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4616
  %i.d = load i32, ptr %i.c, align 8              ; 8 uses
  %i.e = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.e, align 16
  %i.f = shl i32 %4, 3
  %i.g = and i32 %i.f, 2040
  %i.h = add nuw nsw i32 %i.g, 8
  %i.i = trunc i64 %.val to i32
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 7
  %i.l = shl i32 %4, 18
  %i.m = ashr i32 %i.l, 29
  %reass.sub = sub nsw i32 %i.m, %i.k
  %i.n = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -1)
  %i.o = add nsw i32 %i.n, 1
  %i.p = shl nuw nsw i32 %i.h, %i.o
  %.zext = and i32 %i.p, 65528
  %i.q = lshr i32 %4, 14
  %i.r = and i32 %i.q, 1
  %i.s = lshr i32 %4, 16
  %i.t = and i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 9 uses
  %.not = icmp ult i32 %i.v, %i.d
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.w = and i32 %4, 1024
  %.not29 = icmp eq i32 %i.w, 0
  br i1 %.not29, label %.preheader.split.us, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.x = sub i32 %i.d, %i.v                       ; 7 uses
  %min.iters.check = icmp ult i32 %i.x, 4
  %i.y = add i32 %i.d, -1
  %i.z = icmp slt i32 %i.y, %i.v
  %or.cond = or i1 %min.iters.check, %i.z
  %i.aa = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond47 = or i1 %or.cond, %diff.check
  br i1 %or.cond47, label %.preheader.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check38 = icmp ult i32 %i.x, 16
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i32 %i.x, 12
  %n.vec = and i32 %i.x, -16                      ; 4 uses
  %i.ac = add i32 %i.v, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add nuw i32 %i.v, %index
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <8 x i16>, ptr %i.af, align 2
  %wide.load39 = load <8 x i16>, ptr %i.ag, align 2
  %i.ah = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.ai = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load39)
  %i.aj = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ae ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <8 x i16> %i.ah, ptr %i.aj, align 2
  store <8 x i16> %i.ai, ptr %i.ak, align 2
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.al = icmp eq i32 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.x, %n.vec
  br i1 %cmp.n, label %.split.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.preheader.split.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec40 = and i32 %i.x, -4                     ; 3 uses
  %i.am = add i32 %i.v, %n.vec40
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next43, %vec.epilog.vector.body ] ; 2 uses
  %i.an = add nuw i32 %i.v, %index41
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ao
  %wide.load42 = load <4 x i16>, ptr %i.ap, align 2
  %i.aq = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load42)
  %i.ar = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ao
  store <4 x i16> %i.aq, ptr %i.ar, align 2
  %index.next43 = add nuw i32 %index41, 4         ; 2 uses
  %i.as = icmp eq i32 %index.next43, %n.vec40
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n44 = icmp eq i32 %i.x, %n.vec40
  br i1 %cmp.n44, label %.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.031.ph = phi i32 [ %i.v, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ] ; 4 uses
  %i.at = sub i32 %i.d, %.031.ph
  %xtraiter = and i32 %i.at, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.split.prol.loopexit, label %.preheader.split.prol

.preheader.split.prol:                            ; preds = %.preheader.split.preheader, %.preheader.split.prol
  %.031.prol = phi i32 [ %i.az, %.preheader.split.prol ], [ %.031.ph, %.preheader.split.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.split.prol ], [ 0, %.preheader.split.preheader ]
  %i.au = sext i32 %.031.prol to i64              ; 2 uses
  %i.av = getelementptr inbounds [2 x i8], ptr %2, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = tail call i16 @llvm.bswap.i16(i16 %i.aw)
  %i.ay = getelementptr inbounds [2 x i8], ptr %0, i64 %i.au
  store i16 %i.ax, ptr %i.ay, align 2
  %i.az = add nuw i32 %.031.prol, 1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.split.prol.loopexit, label %.preheader.split.prol, !llvm.loop !36

.preheader.split.prol.loopexit:                   ; preds = %.preheader.split.prol, %.preheader.split.preheader
  %.031.unr = phi i32 [ %.031.ph, %.preheader.split.preheader ], [ %i.az, %.preheader.split.prol ]
  %i.ba = sub i32 %.031.ph, %i.d
  %i.bb = icmp ugt i32 %i.ba, -4
  br i1 %i.bb, label %.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.031.us = phi i32 [ %i.br, %bb.d ], [ %i.v, %.preheader ] ; 5 uses
  %i.bc = sdiv i32 %.031.us, 64
  %i.bd = srem i32 %.031.us, 64
  %i.be = sext i32 %i.bc to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %1, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = zext nneg i32 %i.bd to i64
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = and i64 %i.bg, %i.bi
  %.not30.us = icmp eq i64 %i.bj, 0
  br i1 %.not30.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.bk = sext i32 %.031.us to i64                ; 2 uses
  %i.bl = getelementptr inbounds [2 x i8], ptr %2, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = tail call i16 @llvm.bswap.i16(i16 %i.bm)
  %i.bo = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bk
  store i16 %i.bn, ptr %i.bo, align 2
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.bp = shl i32 %.031.us, 1                     ; 2 uses
  %i.bq = add i32 %i.bp, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.bp, i32 noundef %i.bq) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.br = add i32 %.031.us, 1                     ; 2 uses
  %exitcond33.not = icmp eq i32 %i.br, %i.d
  br i1 %exitcond33.not, label %.split.us, label %.preheader.split.us, !llvm.loop !37

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.u, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.prol.loopexit, %.preheader.split
  %.031 = phi i32 [ %i.cp, %.preheader.split ], [ %.031.unr, %.preheader.split.prol.loopexit ] ; 5 uses
  %i.bs = sext i32 %.031 to i64                   ; 2 uses
  %i.bt = getelementptr inbounds [2 x i8], ptr %2, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = tail call i16 @llvm.bswap.i16(i16 %i.bu)
  %i.bw = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bs
  store i16 %i.bv, ptr %i.bw, align 2
  %i.bx = add nuw i32 %.031, 1
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds [2 x i8], ptr %2, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = tail call i16 @llvm.bswap.i16(i16 %i.ca)
  %i.cc = getelementptr inbounds [2 x i8], ptr %0, i64 %i.by
  store i16 %i.cb, ptr %i.cc, align 2
  %i.cd = add nuw i32 %.031, 2
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = tail call i16 @llvm.bswap.i16(i16 %i.cg)
  %i.ci = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ce
  store i16 %i.ch, ptr %i.ci, align 2
  %i.cj = add nuw i32 %.031, 3
  %i.ck = sext i32 %i.cj to i64                   ; 2 uses
  %i.cl = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = tail call i16 @llvm.bswap.i16(i16 %i.cm)
  %i.co = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ck
  store i16 %i.cn, ptr %i.co, align 2
  %i.cp = add nuw i32 %.031, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.cp, %i.d
  br i1 %exitcond.not.3, label %.split.us, label %.preheader.split, !llvm.loop !38

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block, %vec.epilog.middle.block
  store i32 0, ptr %i.u, align 4
  %i.cq = shl i32 %i.d, 1
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.cq, i32 noundef %.zext) #12
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vrev8_v_w(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4616
  %i.d = load i32, ptr %i.c, align 8              ; 8 uses
  %i.e = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.e, align 16
  %i.f = shl i32 %4, 3
  %i.g = and i32 %i.f, 2040
  %i.h = add nuw nsw i32 %i.g, 8
  %i.i = trunc i64 %.val to i32
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 7
  %i.l = shl i32 %4, 18
  %i.m = ashr i32 %i.l, 29
  %reass.sub = sub nsw i32 %i.m, %i.k
  %i.n = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -2)
  %i.o = add nsw i32 %i.n, 2
  %i.p = shl nuw nsw i32 %i.h, %i.o
  %i.q = lshr i32 %4, 14
  %i.r = and i32 %i.q, 1
  %i.s = lshr i32 %4, 16
  %i.t = and i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 7 uses
  %.not = icmp ult i32 %i.v, %i.d
  br i1 %.not, label %.preheader, label %bb.e

end_hunk_1
begin_hunk_2_@helper_vrev8_v_d:bb.a
  %i.bx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = tail call i64 @llvm.bswap.i64(i64 %i.by)
  %i.ca = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bw
  store i64 %i.bz, ptr %i.ca, align 8
  %i.cb = add nuw i32 %.031, 3
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = tail call i64 @llvm.bswap.i64(i64 %i.ce)
  %i.cg = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cc
  store i64 %i.cf, ptr %i.cg, align 8
  %i.ch = add nuw i32 %.031, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.ch, %i.d
  br i1 %exitcond.not.3, label %.split.us, label %.preheader.split, !llvm.loop !46

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block
  store i32 0, ptr %i.u, align 4
  %i.ci = shl i32 %i.d, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.ci, i32 noundef %i.p) #12
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vandn_vv_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vandn_vv_b, i32 noundef 1) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vandn_vv_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.e = load i8, ptr %i.d, align 1
  %i.f = xor i8 %i.c, -1
  %i.g = and i8 %i.e, %i.f
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.a
  store i8 %i.g, ptr %i.h, align 1
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vandn_vv_h(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vandn_vv_h, i32 noundef 2) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vandn_vv_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [2 x i8], ptr %1, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2
  %i.d = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.e = load i16, ptr %i.d, align 2
  %i.f = xor i16 %i.c, -1
  %i.g = and i16 %i.e, %i.f
  %i.h = getelementptr inbounds [2 x i8], ptr %0, i64 %i.a
  store i16 %i.g, ptr %i.h, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vandn_vv_w(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vandn_vv_w, i32 noundef 4) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vandn_vv_w(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %1, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.e = load i32, ptr %i.d, align 4
  %i.f = xor i32 %i.c, -1
  %i.g = and i32 %i.e, %i.f
  %i.h = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  store i32 %i.g, ptr %i.h, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vandn_vv_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vandn_vv_d, i32 noundef 8) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vandn_vv_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.e = load i64, ptr %i.d, align 8
  %i.f = xor i64 %i.c, -1
  %i.g = and i64 %i.e, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  store i64 %i.g, ptr %i.h, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vandn_vx_b(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vandn_vx_b, i32 noundef 1) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vandn_vx_b(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = trunc i64 %1 to i8
  %i.e = xor i8 %i.d, -1
  %i.f = and i8 %i.c, %i.e
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.a
  store i8 %i.f, ptr %i.g, align 1
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vandn_vx_h(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vandn_vx_h, i32 noundef 2) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vandn_vx_h(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2
  %i.d = trunc i64 %1 to i16
  %i.e = xor i16 %i.d, -1
  %i.f = and i16 %i.c, %i.e
  %i.g = getelementptr inbounds [2 x i8], ptr %0, i64 %i.a
  store i16 %i.f, ptr %i.g, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vandn_vx_w(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vandn_vx_w, i32 noundef 4) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vandn_vx_w(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4
  %i.d = trunc i64 %1 to i32
  %i.e = xor i32 %i.d, -1
  %i.f = and i32 %i.c, %i.e
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  store i32 %i.f, ptr %i.g, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vandn_vx_d(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vandn_vx_d, i32 noundef 8) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vandn_vx_d(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8
  %i.d = xor i64 %1, -1
  %i.e = and i64 %i.c, %i.d
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  store i64 %i.e, ptr %i.f, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vbrev_v_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4616
  %i.d = load i32, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.e, align 16
  %i.f = shl i32 %4, 3
  %i.g = and i32 %i.f, 2040
  %i.h = add nuw nsw i32 %i.g, 8
  %i.i = trunc i64 %.val to i32
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 7
  %i.l = shl i32 %4, 18
  %i.m = ashr i32 %i.l, 29
  %i.n = sub nsw i32 %i.m, %i.k
  %i.o = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.p = shl nuw nsw i32 %i.h, %i.o
  %i.q = lshr i32 %4, 14
  %i.r = and i32 %i.q, 1
  %i.s = lshr i32 %4, 16
  %i.t = and i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 9 uses
  %.not = icmp ult i32 %i.v, %i.d
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.w = and i32 %4, 1024
  %.not29 = icmp eq i32 %i.w, 0
  br i1 %.not29, label %.preheader.split.us, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.x = sub i32 %i.d, %i.v                       ; 7 uses
  %min.iters.check = icmp ult i32 %i.x, 8
  %i.y = add i32 %i.d, -1
  %i.z = icmp slt i32 %i.y, %i.v
  %or.cond = or i1 %min.iters.check, %i.z
  %i.aa = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond46 = or i1 %or.cond, %diff.check
  br i1 %or.cond46, label %.preheader.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check37 = icmp ult i32 %i.x, 32
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i32 %i.x, 24
  %n.vec = and i32 %i.x, -32                      ; 4 uses
  %i.ac = add i32 %i.v, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add nuw i32 %i.v, %index
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <16 x i8>, ptr %i.af, align 1
  %wide.load38 = load <16 x i8>, ptr %i.ag, align 1
  %i.ah = tail call <16 x i8> @llvm.bitreverse.v16i8(<16 x i8> %wide.load)
  %i.ai = tail call <16 x i8> @llvm.bitreverse.v16i8(<16 x i8> %wide.load38)
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <16 x i8> %i.ah, ptr %i.aj, align 1
  store <16 x i8> %i.ai, ptr %i.ak, align 1
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.al = icmp eq i32 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.x, %n.vec
  br i1 %cmp.n, label %.split.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.preheader.split.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i32 %i.x, -8                     ; 3 uses
  %i.am = add i32 %i.v, %n.vec39
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %i.an = add nuw i32 %i.v, %index40
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.ao
  %wide.load41 = load <8 x i8>, ptr %i.ap, align 1
  %i.aq = tail call <8 x i8> @llvm.bitreverse.v8i8(<8 x i8> %wide.load41)
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.ao
  store <8 x i8> %i.aq, ptr %i.ar, align 1
  %index.next42 = add nuw i32 %index40, 8         ; 2 uses
  %i.as = icmp eq i32 %index.next42, %n.vec39
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !48

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i32 %i.x, %n.vec39
  br i1 %cmp.n43, label %.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.031.ph = phi i32 [ %i.v, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  br label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.031.us = phi i32 [ %.pre-phi, %bb.d ], [ %i.v, %.preheader ] ; 6 uses
  %i.at = sdiv i32 %.031.us, 64
  %i.au = srem i32 %.031.us, 64
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = zext nneg i32 %i.au to i64
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = and i64 %i.ax, %i.az
  %.not30.us = icmp eq i64 %i.ba, 0
  br i1 %.not30.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.bb = sext i32 %.031.us to i64                ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %2, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = tail call noundef i8 @llvm.bitreverse.i8(i8 %i.bd)
  %i.bf = getelementptr inbounds i8, ptr %0, i64 %i.bb
  store i8 %i.be, ptr %i.bf, align 1
  %.pre = add i32 %.031.us, 1
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.bg = add i32 %.031.us, 1                     ; 2 uses
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.t, i32 noundef %.031.us, i32 noundef %i.bg) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i32 [ %i.bg, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %exitcond33.not = icmp eq i32 %.pre-phi, %i.d
  br i1 %exitcond33.not, label %.split.us, label %.preheader.split.us, !llvm.loop !49

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.u, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.preheader, %.preheader.split
  %.031 = phi i32 [ %i.bm, %.preheader.split ], [ %.031.ph, %.preheader.split.preheader ] ; 2 uses
  %i.bh = sext i32 %.031 to i64                   ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %2, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = tail call noundef i8 @llvm.bitreverse.i8(i8 %i.bj)
  %i.bl = getelementptr inbounds i8, ptr %0, i64 %i.bh
  store i8 %i.bk, ptr %i.bl, align 1
  %i.bm = add nuw i32 %.031, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bm, %i.d
  br i1 %exitcond.not, label %.split.us, label %.preheader.split, !llvm.loop !50

.split.us:                                        ; preds = %.preheader.split, %bb.d, %middle.block, %vec.epilog.middle.block
  store i32 0, ptr %i.u, align 4
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.d, i32 noundef %i.p) #12
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vbrev_v_h(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4616
  %i.d = load i32, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.e, align 16
  %i.f = shl i32 %4, 3
  %i.g = and i32 %i.f, 2040
  %i.h = add nuw nsw i32 %i.g, 8
  %i.i = trunc i64 %.val to i32
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 7
  %i.l = shl i32 %4, 18
  %i.m = ashr i32 %i.l, 29
  %reass.sub = sub nsw i32 %i.m, %i.k
  %i.n = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -1)
  %i.o = add nsw i32 %i.n, 1
  %i.p = shl nuw nsw i32 %i.h, %i.o
  %.zext = and i32 %i.p, 65528
  %i.q = lshr i32 %4, 14
  %i.r = and i32 %i.q, 1
  %i.s = lshr i32 %4, 16
  %i.t = and i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 7 uses
  %.not = icmp ult i32 %i.v, %i.d
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.w = and i32 %4, 1024
  %.not29 = icmp eq i32 %i.w, 0
  br i1 %.not29, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.x = sub i32 %i.d, %i.v                       ; 3 uses
  %min.iters.check = icmp ult i32 %i.x, 8
  %i.y = add i32 %i.d, -1
  %i.z = icmp slt i32 %i.y, %i.v
  %or.cond = or i1 %min.iters.check, %i.z
  %i.aa = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.aa, -16
  %or.cond39 = or i1 %or.cond, %diff.check
  br i1 %or.cond39, label %.preheader.split.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.preheader.split.preheader
  %n.vec = and i32 %i.x, -8                       ; 3 uses
  %i.ab = add i32 %i.v, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = add nuw i32 %i.v, %index
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ad
  %wide.load = load <8 x i16>, ptr %i.ae, align 2
  %i.af = tail call <8 x i16> @llvm.bitreverse.v8i16(<8 x i16> %wide.load)
  %i.ag = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ad
  store <8 x i16> %i.af, ptr %i.ag, align 2
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.ah = icmp eq i32 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.x, %n.vec
  br i1 %cmp.n, label %.split.us, label %.preheader.split.preheader40

.preheader.split.preheader40:                     ; preds = %.preheader.split.preheader, %middle.block
  %.031.ph = phi i32 [ %i.v, %.preheader.split.preheader ], [ %i.ab, %middle.block ]
  br label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.031.us = phi i32 [ %i.ax, %bb.d ], [ %i.v, %.preheader ] ; 5 uses
end_hunk_2
begin_hunk_3_@helper_vbrev_v_w:bb.a
  %cmp.n = icmp eq i32 %i.x, %n.vec
  br i1 %cmp.n, label %.split.us, label %.preheader.split.preheader40

.preheader.split.preheader40:                     ; preds = %.preheader.split.preheader, %middle.block
  %.031.ph = phi i32 [ %i.v, %.preheader.split.preheader ], [ %i.ab, %middle.block ]
  br label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.031.us = phi i32 [ %i.ax, %bb.d ], [ %i.v, %.preheader ] ; 5 uses
  %i.ai = sdiv i32 %.031.us, 64
  %i.aj = srem i32 %.031.us, 64
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8
  %i.an = zext nneg i32 %i.aj to i64
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.am, %i.ao
  %.not30.us = icmp eq i64 %i.ap, 0
  br i1 %.not30.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.aq = sext i32 %.031.us to i64                ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.as)
  %i.au = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aq
  store i32 %i.at, ptr %i.au, align 4
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.av = shl i32 %.031.us, 2                     ; 2 uses
  %i.aw = add i32 %i.av, 4
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.av, i32 noundef %i.aw) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.031.us, 1                     ; 2 uses
  %exitcond33.not = icmp eq i32 %i.ax, %i.d
  br i1 %exitcond33.not, label %.split.us, label %.preheader.split.us, !llvm.loop !55

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.u, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.preheader40, %.preheader.split
  %.031 = phi i32 [ %i.bd, %.preheader.split ], [ %.031.ph, %.preheader.split.preheader40 ] ; 2 uses
  %i.ay = sext i32 %.031 to i64                   ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.ba)
  %i.bc = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ay
  store i32 %i.bb, ptr %i.bc, align 4
  %i.bd = add nuw i32 %.031, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %i.d
  br i1 %exitcond.not, label %.split.us, label %.preheader.split, !llvm.loop !56

.split.us:                                        ; preds = %.preheader.split, %bb.d, %middle.block
  store i32 0, ptr %i.u, align 4
  %i.be = shl i32 %i.d, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.be, i32 noundef %i.p) #12
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vbrev_v_d(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4616
  %i.d = load i32, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.e, align 16
  %i.f = shl i32 %4, 3
  %i.g = and i32 %i.f, 2040
  %i.h = add nuw nsw i32 %i.g, 8
  %i.i = trunc i64 %.val to i32
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 7
  %i.l = shl i32 %4, 18
  %i.m = ashr i32 %i.l, 29
  %reass.sub = sub nsw i32 %i.m, %i.k
  %i.n = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -3)
  %i.o = add nsw i32 %i.n, 3
  %i.p = shl nuw nsw i32 %i.h, %i.o
  %i.q = lshr i32 %4, 14
  %i.r = and i32 %i.q, 1
  %i.s = lshr i32 %4, 16
  %i.t = and i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 7 uses
  %.not = icmp ult i32 %i.v, %i.d
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.w = and i32 %4, 1024
  %.not29 = icmp eq i32 %i.w, 0
  br i1 %.not29, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.x = sub i32 %i.d, %i.v                       ; 3 uses
  %min.iters.check = icmp ult i32 %i.x, 4
  %i.y = add i32 %i.d, -1
  %i.z = icmp slt i32 %i.y, %i.v
  %or.cond = or i1 %min.iters.check, %i.z
  %i.aa = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.aa, -16
  %or.cond39 = or i1 %or.cond, %diff.check
  br i1 %or.cond39, label %.preheader.split.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.preheader.split.preheader
  %n.vec = and i32 %i.x, -2                       ; 3 uses
  %i.ab = add i32 %i.v, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = add nuw i32 %i.v, %index
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ad
  %wide.load = load <2 x i64>, ptr %i.ae, align 8
  %i.af = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %wide.load)
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ad
  store <2 x i64> %i.af, ptr %i.ag, align 8
  %index.next = add nuw i32 %index, 2             ; 2 uses
  %i.ah = icmp eq i32 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.x, %n.vec
  br i1 %cmp.n, label %.split.us, label %.preheader.split.preheader40

.preheader.split.preheader40:                     ; preds = %.preheader.split.preheader, %middle.block
  %.031.ph = phi i32 [ %i.v, %.preheader.split.preheader ], [ %i.ab, %middle.block ]
  br label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.031.us = phi i32 [ %i.ax, %bb.d ], [ %i.v, %.preheader ] ; 5 uses
  %i.ai = sdiv i32 %.031.us, 64
  %i.aj = srem i32 %.031.us, 64
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8
  %i.an = zext nneg i32 %i.aj to i64
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.am, %i.ao
  %.not30.us = icmp eq i64 %i.ap, 0
  br i1 %.not30.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.aq = sext i32 %.031.us to i64                ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = tail call noundef i64 @llvm.bitreverse.i64(i64 %i.as)
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  store i64 %i.at, ptr %i.au, align 8
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.av = shl i32 %.031.us, 3                     ; 2 uses
  %i.aw = add i32 %i.av, 8
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.av, i32 noundef %i.aw) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.031.us, 1                     ; 2 uses
  %exitcond33.not = icmp eq i32 %i.ax, %i.d
  br i1 %exitcond33.not, label %.split.us, label %.preheader.split.us, !llvm.loop !58

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.u, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.preheader40, %.preheader.split
  %.031 = phi i32 [ %i.bd, %.preheader.split ], [ %.031.ph, %.preheader.split.preheader40 ] ; 2 uses
  %i.ay = sext i32 %.031 to i64                   ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = tail call noundef i64 @llvm.bitreverse.i64(i64 %i.ba)
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ay
  store i64 %i.bb, ptr %i.bc, align 8
  %i.bd = add nuw i32 %.031, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %i.d
  br i1 %exitcond.not, label %.split.us, label %.preheader.split, !llvm.loop !59

.split.us:                                        ; preds = %.preheader.split, %bb.d, %middle.block
  store i32 0, ptr %i.u, align 4
  %i.be = shl i32 %i.d, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.be, i32 noundef %i.p) #12
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vclz_v_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4616
  %i.d = load i32, ptr %i.c, align 8              ; 8 uses
  %i.e = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.e, align 16
  %i.f = shl i32 %4, 3
  %i.g = and i32 %i.f, 2040
  %i.h = add nuw nsw i32 %i.g, 8
  %i.i = trunc i64 %.val to i32
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 7
  %i.l = shl i32 %4, 18
  %i.m = ashr i32 %i.l, 29
  %i.n = sub nsw i32 %i.m, %i.k
  %i.o = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.p = shl nuw nsw i32 %i.h, %i.o
  %i.q = lshr i32 %4, 14
  %i.r = and i32 %i.q, 1
  %i.s = lshr i32 %4, 16
  %i.t = and i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 9 uses
  %.not = icmp ult i32 %i.v, %i.d
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.w = and i32 %4, 1024
  %.not29 = icmp eq i32 %i.w, 0
  br i1 %.not29, label %.preheader.split.us, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.x = sub i32 %i.d, %i.v                       ; 7 uses
  %min.iters.check = icmp ult i32 %i.x, 8
  %i.y = add i32 %i.d, -1
  %i.z = icmp slt i32 %i.y, %i.v
  %or.cond = or i1 %min.iters.check, %i.z
  %i.aa = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond46 = or i1 %or.cond, %diff.check
  br i1 %or.cond46, label %.preheader.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check37 = icmp ult i32 %i.x, 32
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i32 %i.x, 24
  %n.vec = and i32 %i.x, -32                      ; 4 uses
  %i.ac = add i32 %i.v, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add nuw i32 %i.v, %index
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <16 x i8>, ptr %i.af, align 1
  %wide.load38 = load <16 x i8>, ptr %i.ag, align 1
  %i.ah = tail call range(i8 0, 9) <16 x i8> @llvm.ctlz.v16i8(<16 x i8> %wide.load, i1 false)
  %i.ai = tail call range(i8 0, 9) <16 x i8> @llvm.ctlz.v16i8(<16 x i8> %wide.load38, i1 false)
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <16 x i8> %i.ah, ptr %i.aj, align 1
  store <16 x i8> %i.ai, ptr %i.ak, align 1
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.al = icmp eq i32 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.x, %n.vec
  br i1 %cmp.n, label %.split.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.preheader.split.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i32 %i.x, -8                     ; 3 uses
  %i.am = add i32 %i.v, %n.vec39
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %i.an = add nuw i32 %i.v, %index40
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.ao
  %wide.load41 = load <8 x i8>, ptr %i.ap, align 1
  %i.aq = tail call range(i8 0, 9) <8 x i8> @llvm.ctlz.v8i8(<8 x i8> %wide.load41, i1 false)
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.ao
  store <8 x i8> %i.aq, ptr %i.ar, align 1
  %index.next42 = add nuw i32 %index40, 8         ; 2 uses
  %i.as = icmp eq i32 %index.next42, %n.vec39
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !61

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i32 %i.x, %n.vec39
  br i1 %cmp.n43, label %.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.031.ph = phi i32 [ %i.v, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ] ; 5 uses
  %i.at = sub i32 %i.d, %.031.ph
  %.neg = add i32 %.031.ph, 1
  %xtraiter = and i32 %i.at, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.split.prol.loopexit, label %.preheader.split.prol

.preheader.split.prol:                            ; preds = %.preheader.split.preheader
  %i.au = sext i32 %.031.ph to i64                ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %i.aw, i1 false)
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %i.au
  store i8 %i.ax, ptr %i.ay, align 1
  %i.az = add nuw i32 %.031.ph, 1
  br label %.preheader.split.prol.loopexit

.preheader.split.prol.loopexit:                   ; preds = %.preheader.split.prol, %.preheader.split.preheader
  %.031.unr = phi i32 [ %.031.ph, %.preheader.split.preheader ], [ %i.az, %.preheader.split.prol ]
  %i.ba = icmp eq i32 %i.d, %.neg
  br i1 %i.ba, label %.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.031.us = phi i32 [ %.pre-phi, %bb.d ], [ %i.v, %.preheader ] ; 6 uses
  %i.bb = sdiv i32 %.031.us, 64
  %i.bc = srem i32 %.031.us, 64
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = zext nneg i32 %i.bc to i64
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = and i64 %i.bf, %i.bh
  %.not30.us = icmp eq i64 %i.bi, 0
  br i1 %.not30.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.bj = sext i32 %.031.us to i64                ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %i.bl, i1 false)
  %i.bn = getelementptr inbounds i8, ptr %0, i64 %i.bj
  store i8 %i.bm, ptr %i.bn, align 1
  %.pre = add i32 %.031.us, 1
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.bo = add i32 %.031.us, 1                     ; 2 uses
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.t, i32 noundef %.031.us, i32 noundef %i.bo) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i32 [ %i.bo, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %exitcond33.not = icmp eq i32 %.pre-phi, %i.d
  br i1 %exitcond33.not, label %.split.us, label %.preheader.split.us, !llvm.loop !62

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.u, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.prol.loopexit, %.preheader.split
  %.031 = phi i32 [ %i.ca, %.preheader.split ], [ %.031.unr, %.preheader.split.prol.loopexit ] ; 3 uses
  %i.bp = sext i32 %.031 to i64                   ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %2, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %i.br, i1 false)
  %i.bt = getelementptr inbounds i8, ptr %0, i64 %i.bp
  store i8 %i.bs, ptr %i.bt, align 1
  %i.bu = add nuw i32 %.031, 1
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %2, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %i.bx, i1 false)
  %i.bz = getelementptr inbounds i8, ptr %0, i64 %i.bv
  store i8 %i.by, ptr %i.bz, align 1
  %i.ca = add nuw i32 %.031, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ca, %i.d
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !63

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block, %vec.epilog.middle.block
  store i32 0, ptr %i.u, align 4
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.d, i32 noundef %i.p) #12
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vclz_v_h(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4616
  %i.d = load i32, ptr %i.c, align 8              ; 8 uses
  %i.e = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.e, align 16
  %i.f = shl i32 %4, 3
  %i.g = and i32 %i.f, 2040
  %i.h = add nuw nsw i32 %i.g, 8
  %i.i = trunc i64 %.val to i32
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 7
  %i.l = shl i32 %4, 18
  %i.m = ashr i32 %i.l, 29
  %reass.sub = sub nsw i32 %i.m, %i.k
  %i.n = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -1)
  %i.o = add nsw i32 %i.n, 1
  %i.p = shl nuw nsw i32 %i.h, %i.o
  %.zext = and i32 %i.p, 65528
  %i.q = lshr i32 %4, 14
  %i.r = and i32 %i.q, 1
  %i.s = lshr i32 %4, 16
  %i.t = and i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 9 uses
  %.not = icmp ult i32 %i.v, %i.d
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.w = and i32 %4, 1024
  %.not29 = icmp eq i32 %i.w, 0
  br i1 %.not29, label %.preheader.split.us, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.x = sub i32 %i.d, %i.v                       ; 7 uses
  %min.iters.check = icmp ult i32 %i.x, 8
  %i.y = add i32 %i.d, -1
  %i.z = icmp slt i32 %i.y, %i.v
  %or.cond = or i1 %min.iters.check, %i.z
  %i.aa = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond47 = or i1 %or.cond, %diff.check
  br i1 %or.cond47, label %.preheader.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check38 = icmp ult i32 %i.x, 16
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i32 %i.x, 8
  %n.vec = and i32 %i.x, -16                      ; 4 uses
  %i.ac = add i32 %i.v, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add nuw i32 %i.v, %index
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <8 x i16>, ptr %i.af, align 2
  %wide.load39 = load <8 x i16>, ptr %i.ag, align 2
  %i.ah = tail call range(i16 0, 17) <8 x i16> @llvm.ctlz.v8i16(<8 x i16> %wide.load, i1 false)
  %i.ai = tail call range(i16 0, 17) <8 x i16> @llvm.ctlz.v8i16(<8 x i16> %wide.load39, i1 false)
  %i.aj = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ae ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <8 x i16> %i.ah, ptr %i.aj, align 2
  store <8 x i16> %i.ai, ptr %i.ak, align 2
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.al = icmp eq i32 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.x, %n.vec
  br i1 %cmp.n, label %.split.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i32 %i.ab, 0
  br i1 %min.epilog.iters.check.not.not, label %.preheader.split.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec40 = and i32 %i.x, -8                     ; 3 uses
  %i.am = add i32 %i.v, %n.vec40
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next43, %vec.epilog.vector.body ] ; 2 uses
  %i.an = add nuw i32 %i.v, %index41
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ao
  %wide.load42 = load <8 x i16>, ptr %i.ap, align 2
  %i.aq = tail call range(i16 0, 17) <8 x i16> @llvm.ctlz.v8i16(<8 x i16> %wide.load42, i1 false)
  %i.ar = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ao
  store <8 x i16> %i.aq, ptr %i.ar, align 2
  %index.next43 = add nuw i32 %index41, 8         ; 2 uses
  %i.as = icmp eq i32 %index.next43, %n.vec40
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n44 = icmp eq i32 %i.x, %n.vec40
  br i1 %cmp.n44, label %.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.031.ph = phi i32 [ %i.v, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ] ; 5 uses
  %i.at = sub i32 %i.d, %.031.ph
  %.neg = add i32 %.031.ph, 1
  %xtraiter = and i32 %i.at, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.split.prol.loopexit, label %.preheader.split.prol

.preheader.split.prol:                            ; preds = %.preheader.split.preheader
  %i.au = sext i32 %.031.ph to i64                ; 2 uses
  %i.av = getelementptr inbounds [2 x i8], ptr %2, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.aw, i1 false)
  %i.ay = getelementptr inbounds [2 x i8], ptr %0, i64 %i.au
  store i16 %i.ax, ptr %i.ay, align 2
  %i.az = add nuw i32 %.031.ph, 1
  br label %.preheader.split.prol.loopexit

.preheader.split.prol.loopexit:                   ; preds = %.preheader.split.prol, %.preheader.split.preheader
  %.031.unr = phi i32 [ %.031.ph, %.preheader.split.preheader ], [ %i.az, %.preheader.split.prol ]
  %i.ba = icmp eq i32 %i.d, %.neg
  br i1 %i.ba, label %.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.031.us = phi i32 [ %i.bq, %bb.d ], [ %i.v, %.preheader ] ; 5 uses
  %i.bb = sdiv i32 %.031.us, 64
  %i.bc = srem i32 %.031.us, 64
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = zext nneg i32 %i.bc to i64
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = and i64 %i.bf, %i.bh
  %.not30.us = icmp eq i64 %i.bi, 0
  br i1 %.not30.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.bj = sext i32 %.031.us to i64                ; 2 uses
  %i.bk = getelementptr inbounds [2 x i8], ptr %2, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.bl, i1 false)
  %i.bn = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bj
  store i16 %i.bm, ptr %i.bn, align 2
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.bo = shl i32 %.031.us, 1                     ; 2 uses
  %i.bp = add i32 %i.bo, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.bo, i32 noundef %i.bp) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bq = add i32 %.031.us, 1                     ; 2 uses
  %exitcond33.not = icmp eq i32 %i.bq, %i.d
  br i1 %exitcond33.not, label %.split.us, label %.preheader.split.us, !llvm.loop !66

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.u, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.prol.loopexit, %.preheader.split
  %.031 = phi i32 [ %i.cc, %.preheader.split ], [ %.031.unr, %.preheader.split.prol.loopexit ] ; 3 uses
  %i.br = sext i32 %.031 to i64                   ; 2 uses
  %i.bs = getelementptr inbounds [2 x i8], ptr %2, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.bt, i1 false)
  %i.bv = getelementptr inbounds [2 x i8], ptr %0, i64 %i.br
  store i16 %i.bu, ptr %i.bv, align 2
  %i.bw = add nuw i32 %.031, 1
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds [2 x i8], ptr %2, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.bz, i1 false)
  %i.cb = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bx
  store i16 %i.ca, ptr %i.cb, align 2
  %i.cc = add nuw i32 %.031, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.cc, %i.d
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !67

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block, %vec.epilog.middle.block
  store i32 0, ptr %i.u, align 4
  %i.cd = shl i32 %i.d, 1
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.cd, i32 noundef %.zext) #12
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vclz_v_w(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4616
  %i.d = load i32, ptr %i.c, align 8              ; 8 uses
  %i.e = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.e, align 16
  %i.f = shl i32 %4, 3
  %i.g = and i32 %i.f, 2040
  %i.h = add nuw nsw i32 %i.g, 8
  %i.i = trunc i64 %.val to i32
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 7
  %i.l = shl i32 %4, 18
  %i.m = ashr i32 %i.l, 29
  %reass.sub = sub nsw i32 %i.m, %i.k
  %i.n = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -2)
  %i.o = add nsw i32 %i.n, 2
  %i.p = shl nuw nsw i32 %i.h, %i.o
  %i.q = lshr i32 %4, 14
  %i.r = and i32 %i.q, 1
  %i.s = lshr i32 %4, 16
  %i.t = and i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 7 uses
  %.not = icmp ult i32 %i.v, %i.d
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.w = and i32 %4, 1024
  %.not29 = icmp eq i32 %i.w, 0
  br i1 %.not29, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.x = sub i32 %i.d, %i.v                       ; 3 uses
  %min.iters.check = icmp ult i32 %i.x, 12
  %i.y = add i32 %i.d, -1
  %i.z = icmp slt i32 %i.y, %i.v
  %or.cond = or i1 %min.iters.check, %i.z
  %i.aa = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond40 = or i1 %or.cond, %diff.check
  br i1 %or.cond40, label %.preheader.split.preheader41, label %vector.ph

vector.ph:                                        ; preds = %.preheader.split.preheader
  %n.vec = and i32 %i.x, -8                       ; 3 uses
end_hunk_3
begin_hunk_4_@helper_vclz_v_w:bb.a
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.am
  store i32 %i.ap, ptr %i.aq, align 4
  %i.ar = add nuw i32 %.031.ph, 1
  br label %.preheader.split.prol.loopexit

.preheader.split.prol.loopexit:                   ; preds = %.preheader.split.prol, %.preheader.split.preheader41
  %.031.unr = phi i32 [ %.031.ph, %.preheader.split.preheader41 ], [ %i.ar, %.preheader.split.prol ]
  %i.as = icmp eq i32 %i.d, %.neg
  br i1 %i.as, label %.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.031.us = phi i32 [ %i.bi, %bb.d ], [ %i.v, %.preheader ] ; 5 uses
  %i.at = sdiv i32 %.031.us, 64
  %i.au = srem i32 %.031.us, 64
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = zext nneg i32 %i.au to i64
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = and i64 %i.ax, %i.az
  %.not30.us = icmp eq i64 %i.ba, 0
  br i1 %.not30.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.bb = sext i32 %.031.us to i64                ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bd, i1 false)
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bb
  store i32 %i.be, ptr %i.bf, align 4
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.bg = shl i32 %.031.us, 2                     ; 2 uses
  %i.bh = add i32 %i.bg, 4
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.bg, i32 noundef %i.bh) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bi = add i32 %.031.us, 1                     ; 2 uses
  %exitcond33.not = icmp eq i32 %i.bi, %i.d
  br i1 %exitcond33.not, label %.split.us, label %.preheader.split.us, !llvm.loop !70

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.u, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.prol.loopexit, %.preheader.split
  %.031 = phi i32 [ %i.bu, %.preheader.split ], [ %.031.unr, %.preheader.split.prol.loopexit ] ; 3 uses
  %i.bj = sext i32 %.031 to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bl, i1 false)
  %i.bn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bj
  store i32 %i.bm, ptr %i.bn, align 4
  %i.bo = add nuw i32 %.031, 1
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.br, i1 false)
  %i.bt = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bp
  store i32 %i.bs, ptr %i.bt, align 4
  %i.bu = add nuw i32 %.031, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.bu, %i.d
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !71

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block
  store i32 0, ptr %i.u, align 4
  %i.bv = shl i32 %i.d, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.bv, i32 noundef %i.p) #12
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vclz_v_d(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.c, align 16
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = add nuw nsw i32 %i.e, 8
  %i.g = trunc i64 %.val to i32
  %i.h = lshr i32 %i.g, 3
  %i.i = and i32 %i.h, 7
  %i.j = shl i32 %4, 18
  %i.k = ashr i32 %i.j, 29
  %reass.sub = sub nsw i32 %i.k, %i.i
  %i.l = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -3)
  %i.m = add nsw i32 %i.l, 3
  %i.n = shl nuw nsw i32 %i.f, %i.m
  %i.o = lshr i32 %4, 14
  %i.p = and i32 %i.o, 1
  %i.q = lshr i32 %4, 16
  %i.r = and i32 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4              ; 7 uses
  %.not = icmp ult i32 %i.t, %i.b
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.u = and i32 %4, 1024
  %.not29 = icmp eq i32 %i.u, 0
  br i1 %.not29, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.v = sub i32 %i.b, %i.t
  %.neg = add i32 %i.t, 1
  %xtraiter = and i32 %i.v, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.split.prol.loopexit, label %.preheader.split.prol

.preheader.split.prol:                            ; preds = %.preheader.split.preheader
  %i.w = sext i32 %i.t to i64                     ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %2, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 false)
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %i.w
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = add nuw i32 %i.t, 1
  br label %.preheader.split.prol.loopexit

.preheader.split.prol.loopexit:                   ; preds = %.preheader.split.prol, %.preheader.split.preheader
  %.031.unr = phi i32 [ %i.t, %.preheader.split.preheader ], [ %i.ab, %.preheader.split.prol ]
  %i.ac = icmp eq i32 %i.b, %.neg
  br i1 %i.ac, label %.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.031.us = phi i32 [ %i.as, %bb.d ], [ %i.t, %.preheader ] ; 5 uses
  %i.ad = sdiv i32 %.031.us, 64
  %i.ae = srem i32 %.031.us, 64
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %1, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = zext nneg i32 %i.ae to i64
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = and i64 %i.ah, %i.aj
  %.not30.us = icmp eq i64 %i.ak, 0
  br i1 %.not30.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.al = sext i32 %.031.us to i64                ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %2, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.an, i1 false)
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.al
  store i64 %i.ao, ptr %i.ap, align 8
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.aq = shl i32 %.031.us, 3                     ; 2 uses
  %i.ar = add i32 %i.aq, 8
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.aq, i32 noundef %i.ar) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.as = add i32 %.031.us, 1                     ; 2 uses
  %exitcond33.not = icmp eq i32 %i.as, %i.b
  br i1 %exitcond33.not, label %.split.us, label %.preheader.split.us, !llvm.loop !72

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.s, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.prol.loopexit, %.preheader.split
  %.031 = phi i32 [ %i.be, %.preheader.split ], [ %.031.unr, %.preheader.split.prol.loopexit ] ; 3 uses
  %i.at = sext i32 %.031 to i64                   ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %2, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 false)
  %i.ax = getelementptr inbounds [8 x i8], ptr %0, i64 %i.at
  store i64 %i.aw, ptr %i.ax, align 8
  %i.ay = add nuw i32 %.031, 1
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %2, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 false)
  %i.bd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.az
  store i64 %i.bc, ptr %i.bd, align 8
  %i.be = add nuw i32 %.031, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.be, %i.b
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !72

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d
  store i32 0, ptr %i.s, align 4
  %i.bf = shl i32 %i.b, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.p, i32 noundef %i.bf, i32 noundef %i.n) #12
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vctz_v_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4616
  %i.d = load i32, ptr %i.c, align 8              ; 8 uses
  %i.e = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.e, align 16
  %i.f = shl i32 %4, 3
  %i.g = and i32 %i.f, 2040
  %i.h = add nuw nsw i32 %i.g, 8
  %i.i = trunc i64 %.val to i32
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 7
  %i.l = shl i32 %4, 18
  %i.m = ashr i32 %i.l, 29
  %i.n = sub nsw i32 %i.m, %i.k
  %i.o = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.p = shl nuw nsw i32 %i.h, %i.o
  %i.q = lshr i32 %4, 14
  %i.r = and i32 %i.q, 1
  %i.s = lshr i32 %4, 16
  %i.t = and i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 9 uses
  %.not = icmp ult i32 %i.v, %i.d
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.w = and i32 %4, 1024
  %.not29 = icmp eq i32 %i.w, 0
  br i1 %.not29, label %.preheader.split.us, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.x = sub i32 %i.d, %i.v                       ; 7 uses
  %min.iters.check = icmp ult i32 %i.x, 8
  %i.y = add i32 %i.d, -1
  %i.z = icmp slt i32 %i.y, %i.v
  %or.cond = or i1 %min.iters.check, %i.z
  %i.aa = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond46 = or i1 %or.cond, %diff.check
  br i1 %or.cond46, label %.preheader.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check37 = icmp ult i32 %i.x, 32
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i32 %i.x, 24
  %n.vec = and i32 %i.x, -32                      ; 4 uses
  %i.ac = add i32 %i.v, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add nuw i32 %i.v, %index
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <16 x i8>, ptr %i.af, align 1
  %wide.load38 = load <16 x i8>, ptr %i.ag, align 1
  %i.ah = tail call range(i8 0, 9) <16 x i8> @llvm.cttz.v16i8(<16 x i8> %wide.load, i1 false)
  %i.ai = tail call range(i8 0, 9) <16 x i8> @llvm.cttz.v16i8(<16 x i8> %wide.load38, i1 false)
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <16 x i8> %i.ah, ptr %i.aj, align 1
  store <16 x i8> %i.ai, ptr %i.ak, align 1
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.al = icmp eq i32 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.x, %n.vec
  br i1 %cmp.n, label %.split.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.preheader.split.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i32 %i.x, -8                     ; 3 uses
  %i.am = add i32 %i.v, %n.vec39
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %i.an = add nuw i32 %i.v, %index40
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.ao
  %wide.load41 = load <8 x i8>, ptr %i.ap, align 1
  %i.aq = tail call range(i8 0, 9) <8 x i8> @llvm.cttz.v8i8(<8 x i8> %wide.load41, i1 false)
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.ao
  store <8 x i8> %i.aq, ptr %i.ar, align 1
  %index.next42 = add nuw i32 %index40, 8         ; 2 uses
  %i.as = icmp eq i32 %index.next42, %n.vec39
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !74

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i32 %i.x, %n.vec39
  br i1 %cmp.n43, label %.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.031.ph = phi i32 [ %i.v, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ] ; 5 uses
  %i.at = sub i32 %i.d, %.031.ph
  %.neg = add i32 %.031.ph, 1
  %xtraiter = and i32 %i.at, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.split.prol.loopexit, label %.preheader.split.prol

.preheader.split.prol:                            ; preds = %.preheader.split.preheader
  %i.au = sext i32 %.031.ph to i64                ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = tail call range(i8 0, 9) i8 @llvm.cttz.i8(i8 %i.aw, i1 false)
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %i.au
  store i8 %i.ax, ptr %i.ay, align 1
  %i.az = add nuw i32 %.031.ph, 1
  br label %.preheader.split.prol.loopexit

.preheader.split.prol.loopexit:                   ; preds = %.preheader.split.prol, %.preheader.split.preheader
  %.031.unr = phi i32 [ %.031.ph, %.preheader.split.preheader ], [ %i.az, %.preheader.split.prol ]
  %i.ba = icmp eq i32 %i.d, %.neg
  br i1 %i.ba, label %.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.031.us = phi i32 [ %.pre-phi, %bb.d ], [ %i.v, %.preheader ] ; 6 uses
  %i.bb = sdiv i32 %.031.us, 64
  %i.bc = srem i32 %.031.us, 64
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = zext nneg i32 %i.bc to i64
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = and i64 %i.bf, %i.bh
  %.not30.us = icmp eq i64 %i.bi, 0
  br i1 %.not30.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.bj = sext i32 %.031.us to i64                ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = tail call range(i8 0, 9) i8 @llvm.cttz.i8(i8 %i.bl, i1 false)
  %i.bn = getelementptr inbounds i8, ptr %0, i64 %i.bj
  store i8 %i.bm, ptr %i.bn, align 1
  %.pre = add i32 %.031.us, 1
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.bo = add i32 %.031.us, 1                     ; 2 uses
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.t, i32 noundef %.031.us, i32 noundef %i.bo) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i32 [ %i.bo, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %exitcond33.not = icmp eq i32 %.pre-phi, %i.d
  br i1 %exitcond33.not, label %.split.us, label %.preheader.split.us, !llvm.loop !75

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.u, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.prol.loopexit, %.preheader.split
  %.031 = phi i32 [ %i.ca, %.preheader.split ], [ %.031.unr, %.preheader.split.prol.loopexit ] ; 3 uses
  %i.bp = sext i32 %.031 to i64                   ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %2, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = tail call range(i8 0, 9) i8 @llvm.cttz.i8(i8 %i.br, i1 false)
  %i.bt = getelementptr inbounds i8, ptr %0, i64 %i.bp
  store i8 %i.bs, ptr %i.bt, align 1
  %i.bu = add nuw i32 %.031, 1
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %2, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = tail call range(i8 0, 9) i8 @llvm.cttz.i8(i8 %i.bx, i1 false)
  %i.bz = getelementptr inbounds i8, ptr %0, i64 %i.bv
  store i8 %i.by, ptr %i.bz, align 1
  %i.ca = add nuw i32 %.031, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ca, %i.d
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !76

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block, %vec.epilog.middle.block
  store i32 0, ptr %i.u, align 4
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.d, i32 noundef %i.p) #12
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vctz_v_h(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4616
  %i.d = load i32, ptr %i.c, align 8              ; 8 uses
  %i.e = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.e, align 16
  %i.f = shl i32 %4, 3
  %i.g = and i32 %i.f, 2040
  %i.h = add nuw nsw i32 %i.g, 8
  %i.i = trunc i64 %.val to i32
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 7
  %i.l = shl i32 %4, 18
  %i.m = ashr i32 %i.l, 29
  %reass.sub = sub nsw i32 %i.m, %i.k
  %i.n = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -1)
  %i.o = add nsw i32 %i.n, 1
  %i.p = shl nuw nsw i32 %i.h, %i.o
  %.zext = and i32 %i.p, 65528
  %i.q = lshr i32 %4, 14
  %i.r = and i32 %i.q, 1
  %i.s = lshr i32 %4, 16
  %i.t = and i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 7 uses
  %.not = icmp ult i32 %i.v, %i.d
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.w = and i32 %4, 1024
  %.not29 = icmp eq i32 %i.w, 0
  br i1 %.not29, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.x = sub i32 %i.d, %i.v                       ; 3 uses
  %min.iters.check = icmp ult i32 %i.x, 8
  %i.y = add i32 %i.d, -1
  %i.z = icmp slt i32 %i.y, %i.v
  %or.cond = or i1 %min.iters.check, %i.z
  %i.aa = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.aa, -16
  %or.cond39 = or i1 %or.cond, %diff.check
  br i1 %or.cond39, label %.preheader.split.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.preheader.split.preheader
  %n.vec = and i32 %i.x, -8                       ; 3 uses
end_hunk_4
begin_hunk_5_@helper_vctz_v_w:bb.a
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = add nuw i32 %i.t, 1
  br label %.preheader.split.prol.loopexit

.preheader.split.prol.loopexit:                   ; preds = %.preheader.split.prol, %.preheader.split.preheader
  %.031.unr = phi i32 [ %i.t, %.preheader.split.preheader ], [ %i.ab, %.preheader.split.prol ]
  %i.ac = icmp eq i32 %i.b, %.neg
  br i1 %i.ac, label %.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.031.us = phi i32 [ %i.as, %bb.d ], [ %i.t, %.preheader ] ; 5 uses
  %i.ad = sdiv i32 %.031.us, 64
  %i.ae = srem i32 %.031.us, 64
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %1, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = zext nneg i32 %i.ae to i64
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = and i64 %i.ah, %i.aj
  %.not30.us = icmp eq i64 %i.ak, 0
  br i1 %.not30.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.al = sext i32 %.031.us to i64                ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %2, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.an, i1 false)
  %i.ap = getelementptr inbounds [4 x i8], ptr %0, i64 %i.al
  store i32 %i.ao, ptr %i.ap, align 4
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.aq = shl i32 %.031.us, 2                     ; 2 uses
  %i.ar = add i32 %i.aq, 4
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.aq, i32 noundef %i.ar) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.as = add i32 %.031.us, 1                     ; 2 uses
  %exitcond33.not = icmp eq i32 %i.as, %i.b
  br i1 %exitcond33.not, label %.split.us, label %.preheader.split.us, !llvm.loop !80

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.s, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.prol.loopexit, %.preheader.split
  %.031 = phi i32 [ %i.be, %.preheader.split ], [ %.031.unr, %.preheader.split.prol.loopexit ] ; 3 uses
  %i.at = sext i32 %.031 to i64                   ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %2, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.av, i1 false)
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %i.at
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = add nuw i32 %.031, 1
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %2, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bb, i1 false)
  %i.bd = getelementptr inbounds [4 x i8], ptr %0, i64 %i.az
  store i32 %i.bc, ptr %i.bd, align 4
  %i.be = add nuw i32 %.031, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.be, %i.b
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !80

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d
  store i32 0, ptr %i.s, align 4
  %i.bf = shl i32 %i.b, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.p, i32 noundef %i.bf, i32 noundef %i.n) #12
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vctz_v_d(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.c, align 16
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = add nuw nsw i32 %i.e, 8
  %i.g = trunc i64 %.val to i32
  %i.h = lshr i32 %i.g, 3
  %i.i = and i32 %i.h, 7
  %i.j = shl i32 %4, 18
  %i.k = ashr i32 %i.j, 29
  %reass.sub = sub nsw i32 %i.k, %i.i
  %i.l = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -3)
  %i.m = add nsw i32 %i.l, 3
  %i.n = shl nuw nsw i32 %i.f, %i.m
  %i.o = lshr i32 %4, 14
  %i.p = and i32 %i.o, 1
  %i.q = lshr i32 %4, 16
  %i.r = and i32 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4              ; 7 uses
  %.not = icmp ult i32 %i.t, %i.b
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.u = and i32 %4, 1024
  %.not29 = icmp eq i32 %i.u, 0
  br i1 %.not29, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.v = sub i32 %i.b, %i.t
  %.neg = add i32 %i.t, 1
  %xtraiter = and i32 %i.v, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.split.prol.loopexit, label %.preheader.split.prol

.preheader.split.prol:                            ; preds = %.preheader.split.preheader
  %i.w = sext i32 %i.t to i64                     ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %2, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8
  %i.z = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.y, i1 false)
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %i.w
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = add nuw i32 %i.t, 1
  br label %.preheader.split.prol.loopexit

.preheader.split.prol.loopexit:                   ; preds = %.preheader.split.prol, %.preheader.split.preheader
  %.031.unr = phi i32 [ %i.t, %.preheader.split.preheader ], [ %i.ab, %.preheader.split.prol ]
  %i.ac = icmp eq i32 %i.b, %.neg
  br i1 %i.ac, label %.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.031.us = phi i32 [ %i.as, %bb.d ], [ %i.t, %.preheader ] ; 5 uses
  %i.ad = sdiv i32 %.031.us, 64
  %i.ae = srem i32 %.031.us, 64
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %1, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = zext nneg i32 %i.ae to i64
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = and i64 %i.ah, %i.aj
  %.not30.us = icmp eq i64 %i.ak, 0
  br i1 %.not30.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.al = sext i32 %.031.us to i64                ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %2, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.an, i1 false)
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.al
  store i64 %i.ao, ptr %i.ap, align 8
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.aq = shl i32 %.031.us, 3                     ; 2 uses
  %i.ar = add i32 %i.aq, 8
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.aq, i32 noundef %i.ar) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.as = add i32 %.031.us, 1                     ; 2 uses
  %exitcond33.not = icmp eq i32 %i.as, %i.b
  br i1 %exitcond33.not, label %.split.us, label %.preheader.split.us, !llvm.loop !81

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.s, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.prol.loopexit, %.preheader.split
  %.031 = phi i32 [ %i.be, %.preheader.split ], [ %.031.unr, %.preheader.split.prol.loopexit ] ; 3 uses
  %i.at = sext i32 %.031 to i64                   ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %2, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.av, i1 false)
  %i.ax = getelementptr inbounds [8 x i8], ptr %0, i64 %i.at
  store i64 %i.aw, ptr %i.ax, align 8
  %i.ay = add nuw i32 %.031, 1
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %2, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bb, i1 false)
  %i.bd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.az
  store i64 %i.bc, ptr %i.bd, align 8
  %i.be = add nuw i32 %.031, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.be, %i.b
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !81

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d
  store i32 0, ptr %i.s, align 4
  %i.bf = shl i32 %i.b, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.p, i32 noundef %i.bf, i32 noundef %i.n) #12
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vcpop_v_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4616
  %i.d = load i32, ptr %i.c, align 8              ; 8 uses
  %i.e = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.e, align 16
  %i.f = shl i32 %4, 3
  %i.g = and i32 %i.f, 2040
  %i.h = add nuw nsw i32 %i.g, 8
  %i.i = trunc i64 %.val to i32
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 7
  %i.l = shl i32 %4, 18
  %i.m = ashr i32 %i.l, 29
  %i.n = sub nsw i32 %i.m, %i.k
  %i.o = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.p = shl nuw nsw i32 %i.h, %i.o
  %i.q = lshr i32 %4, 14
  %i.r = and i32 %i.q, 1
  %i.s = lshr i32 %4, 16
  %i.t = and i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 9 uses
  %.not = icmp ult i32 %i.v, %i.d
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.w = and i32 %4, 1024
  %.not29 = icmp eq i32 %i.w, 0
  br i1 %.not29, label %.preheader.split.us, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.x = sub i32 %i.d, %i.v                       ; 7 uses
  %min.iters.check = icmp ult i32 %i.x, 8
  %i.y = add i32 %i.d, -1
  %i.z = icmp slt i32 %i.y, %i.v
  %or.cond = or i1 %min.iters.check, %i.z
  %i.aa = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond46 = or i1 %or.cond, %diff.check
  br i1 %or.cond46, label %.preheader.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check37 = icmp ult i32 %i.x, 32
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i32 %i.x, 24
  %n.vec = and i32 %i.x, -32                      ; 4 uses
  %i.ac = add i32 %i.v, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add nuw i32 %i.v, %index
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <16 x i8>, ptr %i.af, align 1
  %wide.load38 = load <16 x i8>, ptr %i.ag, align 1
  %i.ah = tail call range(i8 0, 9) <16 x i8> @llvm.ctpop.v16i8(<16 x i8> %wide.load)
  %i.ai = tail call range(i8 0, 9) <16 x i8> @llvm.ctpop.v16i8(<16 x i8> %wide.load38)
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <16 x i8> %i.ah, ptr %i.aj, align 1
  store <16 x i8> %i.ai, ptr %i.ak, align 1
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.al = icmp eq i32 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.x, %n.vec
  br i1 %cmp.n, label %.split.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.preheader.split.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i32 %i.x, -8                     ; 3 uses
  %i.am = add i32 %i.v, %n.vec39
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %i.an = add nuw i32 %i.v, %index40
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.ao
  %wide.load41 = load <8 x i8>, ptr %i.ap, align 1
  %i.aq = tail call range(i8 0, 9) <8 x i8> @llvm.ctpop.v8i8(<8 x i8> %wide.load41)
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.ao
  store <8 x i8> %i.aq, ptr %i.ar, align 1
  %index.next42 = add nuw i32 %index40, 8         ; 2 uses
  %i.as = icmp eq i32 %index.next42, %n.vec39
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !83

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i32 %i.x, %n.vec39
  br i1 %cmp.n43, label %.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.031.ph = phi i32 [ %i.v, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ] ; 5 uses
  %i.at = sub i32 %i.d, %.031.ph
  %.neg = add i32 %.031.ph, 1
  %xtraiter = and i32 %i.at, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.split.prol.loopexit, label %.preheader.split.prol

.preheader.split.prol:                            ; preds = %.preheader.split.preheader
  %i.au = sext i32 %.031.ph to i64                ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.aw)
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %i.au
  store i8 %i.ax, ptr %i.ay, align 1
  %i.az = add nuw i32 %.031.ph, 1
  br label %.preheader.split.prol.loopexit

.preheader.split.prol.loopexit:                   ; preds = %.preheader.split.prol, %.preheader.split.preheader
  %.031.unr = phi i32 [ %.031.ph, %.preheader.split.preheader ], [ %i.az, %.preheader.split.prol ]
  %i.ba = icmp eq i32 %i.d, %.neg
  br i1 %i.ba, label %.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.031.us = phi i32 [ %.pre-phi, %bb.d ], [ %i.v, %.preheader ] ; 6 uses
  %i.bb = sdiv i32 %.031.us, 64
  %i.bc = srem i32 %.031.us, 64
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = zext nneg i32 %i.bc to i64
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = and i64 %i.bf, %i.bh
  %.not30.us = icmp eq i64 %i.bi, 0
  br i1 %.not30.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.bj = sext i32 %.031.us to i64                ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.bl)
  %i.bn = getelementptr inbounds i8, ptr %0, i64 %i.bj
  store i8 %i.bm, ptr %i.bn, align 1
  %.pre = add i32 %.031.us, 1
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.bo = add i32 %.031.us, 1                     ; 2 uses
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.t, i32 noundef %.031.us, i32 noundef %i.bo) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i32 [ %i.bo, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %exitcond33.not = icmp eq i32 %.pre-phi, %i.d
  br i1 %exitcond33.not, label %.split.us, label %.preheader.split.us, !llvm.loop !84

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.u, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.prol.loopexit, %.preheader.split
  %.031 = phi i32 [ %i.ca, %.preheader.split ], [ %.031.unr, %.preheader.split.prol.loopexit ] ; 3 uses
  %i.bp = sext i32 %.031 to i64                   ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %2, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.br)
  %i.bt = getelementptr inbounds i8, ptr %0, i64 %i.bp
  store i8 %i.bs, ptr %i.bt, align 1
  %i.bu = add nuw i32 %.031, 1
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %2, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.bx)
  %i.bz = getelementptr inbounds i8, ptr %0, i64 %i.bv
  store i8 %i.by, ptr %i.bz, align 1
  %i.ca = add nuw i32 %.031, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ca, %i.d
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !85

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block, %vec.epilog.middle.block
  store i32 0, ptr %i.u, align 4
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.d, i32 noundef %i.p) #12
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vcpop_v_h(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4616
  %i.d = load i32, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.e, align 16
  %i.f = shl i32 %4, 3
  %i.g = and i32 %i.f, 2040
  %i.h = add nuw nsw i32 %i.g, 8
  %i.i = trunc i64 %.val to i32
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 7
  %i.l = shl i32 %4, 18
  %i.m = ashr i32 %i.l, 29
  %reass.sub = sub nsw i32 %i.m, %i.k
  %i.n = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -1)
  %i.o = add nsw i32 %i.n, 1
  %i.p = shl nuw nsw i32 %i.h, %i.o
  %.zext = and i32 %i.p, 65528
  %i.q = lshr i32 %4, 14
  %i.r = and i32 %i.q, 1
  %i.s = lshr i32 %4, 16
  %i.t = and i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 9 uses
  %.not = icmp ult i32 %i.v, %i.d
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.w = and i32 %4, 1024
  %.not29 = icmp eq i32 %i.w, 0
  br i1 %.not29, label %.preheader.split.us, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.x = sub i32 %i.d, %i.v                       ; 7 uses
  %min.iters.check = icmp ult i32 %i.x, 4
  %i.y = add i32 %i.d, -1
  %i.z = icmp slt i32 %i.y, %i.v
  %or.cond = or i1 %min.iters.check, %i.z
  %i.aa = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond47 = or i1 %or.cond, %diff.check
  br i1 %or.cond47, label %.preheader.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check38 = icmp ult i32 %i.x, 16
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i32 %i.x, 12
  %n.vec = and i32 %i.x, -16                      ; 4 uses
  %i.ac = add i32 %i.v, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add nuw i32 %i.v, %index
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <8 x i16>, ptr %i.af, align 2
  %wide.load39 = load <8 x i16>, ptr %i.ag, align 2
  %i.ah = tail call range(i16 0, 17) <8 x i16> @llvm.ctpop.v8i16(<8 x i16> %wide.load)
  %i.ai = tail call range(i16 0, 17) <8 x i16> @llvm.ctpop.v8i16(<8 x i16> %wide.load39)
  %i.aj = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ae ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <8 x i16> %i.ah, ptr %i.aj, align 2
  store <8 x i16> %i.ai, ptr %i.ak, align 2
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.al = icmp eq i32 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.x, %n.vec
  br i1 %cmp.n, label %.split.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.preheader.split.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec40 = and i32 %i.x, -4                     ; 3 uses
  %i.am = add i32 %i.v, %n.vec40
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next43, %vec.epilog.vector.body ] ; 2 uses
  %i.an = add nuw i32 %i.v, %index41
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ao
  %wide.load42 = load <4 x i16>, ptr %i.ap, align 2
  %i.aq = tail call range(i16 0, 17) <4 x i16> @llvm.ctpop.v4i16(<4 x i16> %wide.load42)
  %i.ar = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ao
  store <4 x i16> %i.aq, ptr %i.ar, align 2
  %index.next43 = add nuw i32 %index41, 4         ; 2 uses
  %i.as = icmp eq i32 %index.next43, %n.vec40
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !87

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n44 = icmp eq i32 %i.x, %n.vec40
  br i1 %cmp.n44, label %.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.031.ph = phi i32 [ %i.v, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  br label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.031.us = phi i32 [ %i.bi, %bb.d ], [ %i.v, %.preheader ] ; 5 uses
  %i.at = sdiv i32 %.031.us, 64
  %i.au = srem i32 %.031.us, 64
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = zext nneg i32 %i.au to i64
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = and i64 %i.ax, %i.az
  %.not30.us = icmp eq i64 %i.ba, 0
  br i1 %.not30.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.bb = sext i32 %.031.us to i64                ; 2 uses
  %i.bc = getelementptr inbounds [2 x i8], ptr %2, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.bd)
  %i.bf = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bb
  store i16 %i.be, ptr %i.bf, align 2
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.bg = shl i32 %.031.us, 1                     ; 2 uses
  %i.bh = add i32 %i.bg, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.bg, i32 noundef %i.bh) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bi = add i32 %.031.us, 1                     ; 2 uses
  %exitcond33.not = icmp eq i32 %i.bi, %i.d
  br i1 %exitcond33.not, label %.split.us, label %.preheader.split.us, !llvm.loop !88

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.u, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.preheader, %.preheader.split
  %.031 = phi i32 [ %i.bo, %.preheader.split ], [ %.031.ph, %.preheader.split.preheader ] ; 2 uses
  %i.bj = sext i32 %.031 to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [2 x i8], ptr %2, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.bl)
  %i.bn = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bj
  store i16 %i.bm, ptr %i.bn, align 2
  %i.bo = add nuw i32 %.031, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bo, %i.d
  br i1 %exitcond.not, label %.split.us, label %.preheader.split, !llvm.loop !89

.split.us:                                        ; preds = %.preheader.split, %bb.d, %middle.block, %vec.epilog.middle.block
  store i32 0, ptr %i.u, align 4
  %i.bp = shl i32 %i.d, 1
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.bp, i32 noundef %.zext) #12
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vcpop_v_w(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4616
  %i.d = load i32, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.e, align 16
  %i.f = shl i32 %4, 3
  %i.g = and i32 %i.f, 2040
  %i.h = add nuw nsw i32 %i.g, 8
  %i.i = trunc i64 %.val to i32
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 7
  %i.l = shl i32 %4, 18
  %i.m = ashr i32 %i.l, 29
  %reass.sub = sub nsw i32 %i.m, %i.k
  %i.n = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -2)
  %i.o = add nsw i32 %i.n, 2
  %i.p = shl nuw nsw i32 %i.h, %i.o
  %i.q = lshr i32 %4, 14
  %i.r = and i32 %i.q, 1
  %i.s = lshr i32 %4, 16
  %i.t = and i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 7 uses
  %.not = icmp ult i32 %i.v, %i.d
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.w = and i32 %4, 1024
  %.not29 = icmp eq i32 %i.w, 0
  br i1 %.not29, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.x = sub i32 %i.d, %i.v                       ; 3 uses
  %min.iters.check = icmp ult i32 %i.x, 4
  %i.y = add i32 %i.d, -1
  %i.z = icmp slt i32 %i.y, %i.v
  %or.cond = or i1 %min.iters.check, %i.z
  %i.aa = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.aa, -16
  %or.cond39 = or i1 %or.cond, %diff.check
  br i1 %or.cond39, label %.preheader.split.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.preheader.split.preheader
  %n.vec = and i32 %i.x, -4                       ; 3 uses
  %i.ab = add i32 %i.v, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = add nuw i32 %i.v, %index
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ad
  %wide.load = load <4 x i32>, ptr %i.ae, align 4
  %i.af = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load)
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ad
  store <4 x i32> %i.af, ptr %i.ag, align 4
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ah = icmp eq i32 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.x, %n.vec
  br i1 %cmp.n, label %.split.us, label %.preheader.split.preheader40

.preheader.split.preheader40:                     ; preds = %.preheader.split.preheader, %middle.block
  %.031.ph = phi i32 [ %i.v, %.preheader.split.preheader ], [ %i.ab, %middle.block ]
  br label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.031.us = phi i32 [ %i.ax, %bb.d ], [ %i.v, %.preheader ] ; 5 uses
end_hunk_5
