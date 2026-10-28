Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vector_helper?download=true
inline.NumInlined: 5693
inline.NumDeleted: 634
loop-unroll.NumRuntimeUnrolled: 372
loop-unroll.NumUnrolled: 373
begin_hunk_0_@do_vand_vx_h:bb.a
; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vand_vx_w(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vand_vx_w, i32 noundef 4) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vand_vx_w(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4
  %i.d = trunc i64 %1 to i32
  %i.e = and i32 %i.c, %i.d
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  store i32 %i.e, ptr %i.f, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vand_vx_d(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vand_vx_d, i32 noundef 8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vand_vx_d(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, %1
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  store i64 %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vor_vx_b(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vor_vx_b, i32 noundef 1) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vor_vx_b(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = trunc i64 %1 to i8
  %i.e = or i8 %i.c, %i.d
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.a
  store i8 %i.e, ptr %i.f, align 1
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vor_vx_h(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vor_vx_h, i32 noundef 2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vor_vx_h(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2
  %i.d = trunc i64 %1 to i16
  %i.e = or i16 %i.c, %i.d
  %i.f = getelementptr inbounds [2 x i8], ptr %0, i64 %i.a
  store i16 %i.e, ptr %i.f, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vor_vx_w(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vor_vx_w, i32 noundef 4) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vor_vx_w(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4
  %i.d = trunc i64 %1 to i32
  %i.e = or i32 %i.c, %i.d
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  store i32 %i.e, ptr %i.f, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vor_vx_d(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vor_vx_d, i32 noundef 8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vor_vx_d(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, %1
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  store i64 %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vxor_vx_b(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vxor_vx_b, i32 noundef 1) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vxor_vx_b(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = trunc i64 %1 to i8
  %i.e = xor i8 %i.c, %i.d
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.a
  store i8 %i.e, ptr %i.f, align 1
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vxor_vx_h(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vxor_vx_h, i32 noundef 2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vxor_vx_h(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2
  %i.d = trunc i64 %1 to i16
  %i.e = xor i16 %i.c, %i.d
  %i.f = getelementptr inbounds [2 x i8], ptr %0, i64 %i.a
  store i16 %i.e, ptr %i.f, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vxor_vx_w(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vxor_vx_w, i32 noundef 4) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vxor_vx_w(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4
  %i.d = trunc i64 %1 to i32
  %i.e = xor i32 %i.c, %i.d
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  store i32 %i.e, ptr %i.f, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vxor_vx_d(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vxor_vx_d, i32 noundef 8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vxor_vx_d(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8
  %i.d = xor i64 %i.c, %1
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  store i64 %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vsll_vv_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %3 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr i8, ptr %4, i64 4608
  %.val = load i64, ptr %i.f, align 16
  %i.g = shl i32 %5, 3
  %i.h = and i32 %i.g, 2040
  %i.i = add nuw nsw i32 %i.h, 8
  %i.j = trunc i64 %.val to i32
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 7
  %i.m = shl i32 %5, 18
  %i.n = ashr i32 %i.m, 29
  %i.o = sub nsw i32 %i.n, %i.l
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = shl nuw nsw i32 %i.i, %i.p
  %i.r = lshr i32 %5, 14
  %i.s = and i32 %i.r, 1
  %i.t = lshr i32 %5, 16
  %i.u = and i32 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %.not = icmp ult i32 %i.w, %i.e
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.x = and i32 %5, 1024
  %.not39 = icmp eq i32 %i.x, 0
  %i.y = zext i32 %i.w to i64                     ; 8 uses
  br i1 %.not39, label %.preheader.split.us, label %iter.check

iter.check:                                       ; preds = %.preheader
  %wide.trip.count = zext i32 %i.e to i64         ; 4 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y       ; 7 uses
  %min.iters.check = icmp ult i64 %i.z, 8
  br i1 %min.iters.check, label %.preheader.split.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aa = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.aa, -16
  %i.ab = sub i64 %i.c, %i.a
  %diff.check52 = icmp ugt i64 %i.ab, -16
  %conflict.rdx = or i1 %diff.check, %diff.check52
  br i1 %conflict.rdx, label %.preheader.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check53 = icmp ult i64 %i.z, 16
  br i1 %min.iters.check53, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %i.z, 8
  %n.vec = and i64 %i.z, -16                      ; 4 uses
  %i.ad = add nsw i64 %n.vec, %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = add nuw i64 %index, %i.y                ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  %wide.load = load <16 x i8>, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %i.ae
  %wide.load54 = load <16 x i8>, ptr %i.ag, align 1
  %i.ah = and <16 x i8> %wide.load, splat (i8 7)
  %i.ai = shl <16 x i8> %wide.load54, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  store <16 x i8> %i.ai, ptr %i.aj, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !222

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %.split.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check.not.not, label %.preheader.split.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec55 = and i64 %i.z, -8                     ; 3 uses
  %i.al = add nsw i64 %n.vec55, %i.y
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 2 uses
  %i.am = add nuw i64 %index56, %i.y              ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %i.am
  %wide.load57 = load <8 x i8>, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %i.am
  %wide.load58 = load <8 x i8>, ptr %i.ao, align 1
  %i.ap = and <8 x i8> %wide.load57, splat (i8 7)
  %i.aq = shl <8 x i8> %wide.load58, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  store <8 x i8> %i.aq, ptr %i.ar, align 1
  %index.next59 = add nuw i64 %index56, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next59, %n.vec55
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !223

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n60 = icmp eq i64 %i.z, %n.vec55
  br i1 %cmp.n60, label %.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.y, %iter.check ], [ %i.y, %vector.memcheck ], [ %i.ad, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ] ; 7 uses
  %i.at = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.at, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.split.prol.loopexit, label %.preheader.split.prol

.preheader.split.prol:                            ; preds = %.preheader.split.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.ph
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.ph
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = and i8 %i.av, 7
  %i.az = shl i8 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.ph
  store i8 %i.az, ptr %i.ba, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %.preheader.split.prol.loopexit

.preheader.split.prol.loopexit:                   ; preds = %.preheader.split.prol, %.preheader.split.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader.split.preheader ], [ %indvars.iv.next.prol, %.preheader.split.prol ]
  %i.bb = add nsw i64 %wide.trip.count, -1
  %i.bc = icmp eq i64 %indvars.iv.ph, %i.bb
  br i1 %i.bc, label %.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %bb.d ], [ %i.y, %.preheader ] ; 5 uses
  %indvars46 = trunc i64 %indvars.iv44 to i32     ; 4 uses
  %i.bd = sdiv i32 %indvars46, 64
  %i.be = srem i32 %indvars46, 64
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = zext nneg i32 %i.be to i64
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = and i64 %i.bh, %i.bj
  %.not40.us = icmp eq i64 %i.bk, 0
  br i1 %.not40.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv44
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv44
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = and i8 %i.bm, 7
  %i.bq = shl i8 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv44
  store i8 %i.bq, ptr %i.br, align 1
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.bs = add nuw i32 %indvars46, 1
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.u, i32 noundef %indvars46, i32 noundef %i.bs) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next45 to i32
  %exitcond47.not = icmp eq i32 %i.e, %lftr.wideiv
  br i1 %exitcond47.not, label %.split.us, label %.preheader.split.us, !llvm.loop !224

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.v, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.prol.loopexit, %.preheader.split
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.split ], [ %indvars.iv.unr, %.preheader.split.prol.loopexit ] ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = and i8 %i.bu, 7
  %i.by = shl i8 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.by, ptr %i.bz, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = and i8 %i.cb, 7
  %i.cf = shl i8 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  store i8 %i.cf, ptr %i.cg, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !225

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block, %vec.epilog.middle.block
  store i32 0, ptr %i.v, align 4
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.e, i32 noundef %i.q) #17
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vsll_vv_h(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr i8, ptr %4, i64 4608
  %.val = load i64, ptr %i.f, align 16
  %i.g = shl i32 %5, 3
  %i.h = and i32 %i.g, 2040
  %i.i = add nuw nsw i32 %i.h, 8
  %i.j = trunc i64 %.val to i32
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 7
  %i.m = shl i32 %5, 18
  %i.n = ashr i32 %i.m, 29
  %reass.sub = sub nsw i32 %i.n, %i.l
  %i.o = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -1)
  %i.p = add nsw i32 %i.o, 1
  %i.q = shl nuw nsw i32 %i.i, %i.p
  %.zext = and i32 %i.q, 65528
  %i.r = lshr i32 %5, 14
  %i.s = and i32 %i.r, 1
  %i.t = lshr i32 %5, 16
  %i.u = and i32 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %.not = icmp ult i32 %i.w, %i.e
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.x = and i32 %5, 1024
  %.not39 = icmp eq i32 %i.x, 0
  %i.y = zext i32 %i.w to i64                     ; 6 uses
  br i1 %.not39, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %wide.trip.count = zext i32 %i.e to i64         ; 4 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y       ; 3 uses
end_hunk_0
begin_hunk_1_@helper_vsll_vv_w:bb.a
  store i32 %i.by, ptr %i.bz, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !231

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block
  store i32 0, ptr %i.v, align 4
  %i.ca = shl i32 %i.e, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.ca, i32 noundef %i.q) #17
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vsll_vv_d(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr i8, ptr %4, i64 4608
  %.val = load i64, ptr %i.f, align 16
  %i.g = shl i32 %5, 3
  %i.h = and i32 %i.g, 2040
  %i.i = add nuw nsw i32 %i.h, 8
  %i.j = trunc i64 %.val to i32
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 7
  %i.m = shl i32 %5, 18
  %i.n = ashr i32 %i.m, 29
  %reass.sub = sub nsw i32 %i.n, %i.l
  %i.o = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -3)
  %i.p = add nsw i32 %i.o, 3
  %i.q = shl nuw nsw i32 %i.i, %i.p
  %i.r = lshr i32 %5, 14
  %i.s = and i32 %i.r, 1
  %i.t = lshr i32 %5, 16
  %i.u = and i32 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %.not = icmp ult i32 %i.w, %i.e
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.x = and i32 %5, 1024
  %.not39 = icmp eq i32 %i.x, 0
  %i.y = zext i32 %i.w to i64                     ; 6 uses
  br i1 %.not39, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %wide.trip.count = zext i32 %i.e to i64         ; 4 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y       ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 10
  br i1 %min.iters.check, label %.preheader.split.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.split.preheader
  %i.aa = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.aa, -32
  %i.ab = sub i64 %i.a, %i.c
  %diff.check52 = icmp ugt i64 %i.ab, -32
  %conflict.rdx = or i1 %diff.check, %diff.check52
  br i1 %conflict.rdx, label %.preheader.split.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, -4                       ; 3 uses
  %i.ac = add nsw i64 %n.vec, %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add nuw i64 %index, %i.y                ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <2 x i64>, ptr %i.ae, align 8
  %wide.load53 = load <2 x i64>, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ad ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load54 = load <2 x i64>, ptr %i.ag, align 8
  %wide.load55 = load <2 x i64>, ptr %i.ah, align 8
  %i.ai = and <2 x i64> %wide.load, splat (i64 63)
  %i.aj = and <2 x i64> %wide.load53, splat (i64 63)
  %i.ak = shl <2 x i64> %wide.load54, %i.ai
  %i.al = shl <2 x i64> %wide.load55, %i.aj
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ad ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> %i.ak, ptr %i.am, align 8
  store <2 x i64> %i.al, ptr %i.an, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !232

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %.split.us, label %.preheader.split.preheader56

.preheader.split.preheader56:                     ; preds = %vector.memcheck, %.preheader.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.y, %vector.memcheck ], [ %i.y, %.preheader.split.preheader ], [ %i.ac, %middle.block ] ; 7 uses
  %i.ap = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.ap, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.split.prol.loopexit, label %.preheader.split.prol

.preheader.split.prol:                            ; preds = %.preheader.split.preheader56
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.ph
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.ph
  %i.at = load i64, ptr %i.as, align 8
  %i.au = and i64 %i.ar, 63
  %i.av = shl i64 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.ph
  store i64 %i.av, ptr %i.aw, align 8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %.preheader.split.prol.loopexit

.preheader.split.prol.loopexit:                   ; preds = %.preheader.split.prol, %.preheader.split.preheader56
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader.split.preheader56 ], [ %indvars.iv.next.prol, %.preheader.split.prol ]
  %i.ax = add nsw i64 %wide.trip.count, -1
  %i.ay = icmp eq i64 %indvars.iv.ph, %i.ax
  br i1 %i.ay, label %.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %bb.d ], [ %i.y, %.preheader ] ; 5 uses
  %i.az = trunc nuw i64 %indvars.iv44 to i32      ; 3 uses
  %i.ba = sdiv i32 %i.az, 64
  %i.bb = srem i32 %i.az, 64
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = zext nneg i32 %i.bb to i64
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = and i64 %i.be, %i.bg
  %.not40.us = icmp eq i64 %i.bh, 0
  br i1 %.not40.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv44
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv44
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = and i64 %i.bj, 63
  %i.bn = shl i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv44
  store i64 %i.bn, ptr %i.bo, align 8
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.bp = shl i32 %i.az, 3                        ; 2 uses
  %i.bq = add i32 %i.bp, 8
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.u, i32 noundef %i.bp, i32 noundef %i.bq) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next45 to i32
  %exitcond47.not = icmp eq i32 %i.e, %lftr.wideiv
  br i1 %exitcond47.not, label %.split.us, label %.preheader.split.us, !llvm.loop !233

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.v, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.prol.loopexit, %.preheader.split
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.split ], [ %indvars.iv.unr, %.preheader.split.prol.loopexit ] ; 5 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = and i64 %i.bs, 63
  %i.bw = shl i64 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 %i.bw, ptr %i.bx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = and i64 %i.bz, 63
  %i.cd = shl i64 %i.cb, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  store i64 %i.cd, ptr %i.ce, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !234

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block
  store i32 0, ptr %i.v, align 4
  %i.cf = shl i32 %i.e, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.cf, i32 noundef %i.q) #17
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vsrl_vv_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %3 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr i8, ptr %4, i64 4608
  %.val = load i64, ptr %i.f, align 16
  %i.g = shl i32 %5, 3
  %i.h = and i32 %i.g, 2040
  %i.i = add nuw nsw i32 %i.h, 8
  %i.j = trunc i64 %.val to i32
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 7
  %i.m = shl i32 %5, 18
  %i.n = ashr i32 %i.m, 29
  %i.o = sub nsw i32 %i.n, %i.l
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = shl nuw nsw i32 %i.i, %i.p
  %i.r = lshr i32 %5, 14
  %i.s = and i32 %i.r, 1
  %i.t = lshr i32 %5, 16
  %i.u = and i32 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %.not = icmp ult i32 %i.w, %i.e
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.x = and i32 %5, 1024
  %.not39 = icmp eq i32 %i.x, 0
  %i.y = zext i32 %i.w to i64                     ; 8 uses
  br i1 %.not39, label %.preheader.split.us, label %iter.check

iter.check:                                       ; preds = %.preheader
  %wide.trip.count = zext i32 %i.e to i64         ; 4 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y       ; 7 uses
  %min.iters.check = icmp ult i64 %i.z, 8
  br i1 %min.iters.check, label %.preheader.split.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aa = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.aa, -16
  %i.ab = sub i64 %i.c, %i.a
  %diff.check52 = icmp ugt i64 %i.ab, -16
  %conflict.rdx = or i1 %diff.check, %diff.check52
  br i1 %conflict.rdx, label %.preheader.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check53 = icmp ult i64 %i.z, 16
  br i1 %min.iters.check53, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %i.z, 8
  %n.vec = and i64 %i.z, -16                      ; 4 uses
  %i.ad = add nsw i64 %n.vec, %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = add nuw i64 %index, %i.y                ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  %wide.load = load <16 x i8>, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %i.ae
  %wide.load54 = load <16 x i8>, ptr %i.ag, align 1
  %i.ah = and <16 x i8> %wide.load, splat (i8 7)
  %i.ai = lshr <16 x i8> %wide.load54, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  store <16 x i8> %i.ai, ptr %i.aj, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %.split.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check.not.not, label %.preheader.split.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec55 = and i64 %i.z, -8                     ; 3 uses
  %i.al = add nsw i64 %n.vec55, %i.y
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 2 uses
  %i.am = add nuw i64 %index56, %i.y              ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %i.am
  %wide.load57 = load <8 x i8>, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %i.am
  %wide.load58 = load <8 x i8>, ptr %i.ao, align 1
  %i.ap = and <8 x i8> %wide.load57, splat (i8 7)
  %i.aq = lshr <8 x i8> %wide.load58, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  store <8 x i8> %i.aq, ptr %i.ar, align 1
  %index.next59 = add nuw i64 %index56, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next59, %n.vec55
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !236

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n60 = icmp eq i64 %i.z, %n.vec55
  br i1 %cmp.n60, label %.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.y, %iter.check ], [ %i.y, %vector.memcheck ], [ %i.ad, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ] ; 7 uses
  %i.at = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.at, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.split.prol.loopexit, label %.preheader.split.prol

.preheader.split.prol:                            ; preds = %.preheader.split.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.ph
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.ph
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = and i8 %i.av, 7
  %i.az = lshr i8 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.ph
  store i8 %i.az, ptr %i.ba, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %.preheader.split.prol.loopexit

.preheader.split.prol.loopexit:                   ; preds = %.preheader.split.prol, %.preheader.split.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader.split.preheader ], [ %indvars.iv.next.prol, %.preheader.split.prol ]
  %i.bb = add nsw i64 %wide.trip.count, -1
  %i.bc = icmp eq i64 %indvars.iv.ph, %i.bb
  br i1 %i.bc, label %.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %bb.d ], [ %i.y, %.preheader ] ; 5 uses
  %indvars46 = trunc i64 %indvars.iv44 to i32     ; 4 uses
  %i.bd = sdiv i32 %indvars46, 64
  %i.be = srem i32 %indvars46, 64
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = zext nneg i32 %i.be to i64
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = and i64 %i.bh, %i.bj
  %.not40.us = icmp eq i64 %i.bk, 0
  br i1 %.not40.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv44
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv44
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = and i8 %i.bm, 7
  %i.bq = lshr i8 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv44
  store i8 %i.bq, ptr %i.br, align 1
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.bs = add nuw i32 %indvars46, 1
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.u, i32 noundef %indvars46, i32 noundef %i.bs) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next45 to i32
  %exitcond47.not = icmp eq i32 %i.e, %lftr.wideiv
  br i1 %exitcond47.not, label %.split.us, label %.preheader.split.us, !llvm.loop !237

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.v, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.prol.loopexit, %.preheader.split
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.split ], [ %indvars.iv.unr, %.preheader.split.prol.loopexit ] ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = and i8 %i.bu, 7
  %i.by = lshr i8 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.by, ptr %i.bz, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = and i8 %i.cb, 7
  %i.cf = lshr i8 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  store i8 %i.cf, ptr %i.cg, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !238

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block, %vec.epilog.middle.block
  store i32 0, ptr %i.v, align 4
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.e, i32 noundef %i.q) #17
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vsrl_vv_h(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr i8, ptr %4, i64 4608
  %.val = load i64, ptr %i.f, align 16
  %i.g = shl i32 %5, 3
  %i.h = and i32 %i.g, 2040
  %i.i = add nuw nsw i32 %i.h, 8
  %i.j = trunc i64 %.val to i32
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 7
  %i.m = shl i32 %5, 18
  %i.n = ashr i32 %i.m, 29
  %reass.sub = sub nsw i32 %i.n, %i.l
  %i.o = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -1)
  %i.p = add nsw i32 %i.o, 1
  %i.q = shl nuw nsw i32 %i.i, %i.p
  %.zext = and i32 %i.q, 65528
  %i.r = lshr i32 %5, 14
  %i.s = and i32 %i.r, 1
  %i.t = lshr i32 %5, 16
  %i.u = and i32 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %.not = icmp ult i32 %i.w, %i.e
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.x = and i32 %5, 1024
  %.not39 = icmp eq i32 %i.x, 0
  %i.y = zext i32 %i.w to i64                     ; 6 uses
  br i1 %.not39, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %wide.trip.count = zext i32 %i.e to i64         ; 4 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y       ; 3 uses
end_hunk_1
begin_hunk_2_@helper_vsrl_vv_w:bb.a
  store i32 %i.cd, ptr %i.ce, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !244

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block
  store i32 0, ptr %i.v, align 4
  %i.cf = shl i32 %i.e, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.cf, i32 noundef %i.q) #17
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vsrl_vv_d(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr i8, ptr %4, i64 4608
  %.val = load i64, ptr %i.f, align 16
  %i.g = shl i32 %5, 3
  %i.h = and i32 %i.g, 2040
  %i.i = add nuw nsw i32 %i.h, 8
  %i.j = trunc i64 %.val to i32
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 7
  %i.m = shl i32 %5, 18
  %i.n = ashr i32 %i.m, 29
  %reass.sub = sub nsw i32 %i.n, %i.l
  %i.o = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -3)
  %i.p = add nsw i32 %i.o, 3
  %i.q = shl nuw nsw i32 %i.i, %i.p
  %i.r = lshr i32 %5, 14
  %i.s = and i32 %i.r, 1
  %i.t = lshr i32 %5, 16
  %i.u = and i32 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %.not = icmp ult i32 %i.w, %i.e
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.x = and i32 %5, 1024
  %.not39 = icmp eq i32 %i.x, 0
  %i.y = zext i32 %i.w to i64                     ; 6 uses
  br i1 %.not39, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %wide.trip.count = zext i32 %i.e to i64         ; 4 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y       ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 10
  br i1 %min.iters.check, label %.preheader.split.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.split.preheader
  %i.aa = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.aa, -32
  %i.ab = sub i64 %i.a, %i.c
  %diff.check52 = icmp ugt i64 %i.ab, -32
  %conflict.rdx = or i1 %diff.check, %diff.check52
  br i1 %conflict.rdx, label %.preheader.split.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, -4                       ; 3 uses
  %i.ac = add nsw i64 %n.vec, %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add nuw i64 %index, %i.y                ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <2 x i64>, ptr %i.ae, align 8
  %wide.load53 = load <2 x i64>, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ad ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load54 = load <2 x i64>, ptr %i.ag, align 8
  %wide.load55 = load <2 x i64>, ptr %i.ah, align 8
  %i.ai = and <2 x i64> %wide.load, splat (i64 63)
  %i.aj = and <2 x i64> %wide.load53, splat (i64 63)
  %i.ak = lshr <2 x i64> %wide.load54, %i.ai
  %i.al = lshr <2 x i64> %wide.load55, %i.aj
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ad ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> %i.ak, ptr %i.am, align 8
  store <2 x i64> %i.al, ptr %i.an, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !245

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %.split.us, label %.preheader.split.preheader56

.preheader.split.preheader56:                     ; preds = %vector.memcheck, %.preheader.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.y, %vector.memcheck ], [ %i.y, %.preheader.split.preheader ], [ %i.ac, %middle.block ] ; 7 uses
  %i.ap = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.ap, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.split.prol.loopexit, label %.preheader.split.prol

.preheader.split.prol:                            ; preds = %.preheader.split.preheader56
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.ph
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.ph
  %i.at = load i64, ptr %i.as, align 8
  %i.au = and i64 %i.ar, 63
  %i.av = lshr i64 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.ph
  store i64 %i.av, ptr %i.aw, align 8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %.preheader.split.prol.loopexit

.preheader.split.prol.loopexit:                   ; preds = %.preheader.split.prol, %.preheader.split.preheader56
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader.split.preheader56 ], [ %indvars.iv.next.prol, %.preheader.split.prol ]
  %i.ax = add nsw i64 %wide.trip.count, -1
  %i.ay = icmp eq i64 %indvars.iv.ph, %i.ax
  br i1 %i.ay, label %.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %bb.d ], [ %i.y, %.preheader ] ; 5 uses
  %i.az = trunc nuw i64 %indvars.iv44 to i32      ; 3 uses
  %i.ba = sdiv i32 %i.az, 64
  %i.bb = srem i32 %i.az, 64
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = zext nneg i32 %i.bb to i64
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = and i64 %i.be, %i.bg
  %.not40.us = icmp eq i64 %i.bh, 0
  br i1 %.not40.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv44
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv44
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = and i64 %i.bj, 63
  %i.bn = lshr i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv44
  store i64 %i.bn, ptr %i.bo, align 8
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.bp = shl i32 %i.az, 3                        ; 2 uses
  %i.bq = add i32 %i.bp, 8
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.u, i32 noundef %i.bp, i32 noundef %i.bq) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next45 to i32
  %exitcond47.not = icmp eq i32 %i.e, %lftr.wideiv
  br i1 %exitcond47.not, label %.split.us, label %.preheader.split.us, !llvm.loop !246

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.v, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.prol.loopexit, %.preheader.split
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.split ], [ %indvars.iv.unr, %.preheader.split.prol.loopexit ] ; 5 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = and i64 %i.bs, 63
  %i.bw = lshr i64 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 %i.bw, ptr %i.bx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = and i64 %i.bz, 63
  %i.cd = lshr i64 %i.cb, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  store i64 %i.cd, ptr %i.ce, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !247

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block
  store i32 0, ptr %i.v, align 4
  %i.cf = shl i32 %i.e, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.cf, i32 noundef %i.q) #17
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vsra_vv_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %3 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr i8, ptr %4, i64 4608
  %.val = load i64, ptr %i.f, align 16
  %i.g = shl i32 %5, 3
  %i.h = and i32 %i.g, 2040
  %i.i = add nuw nsw i32 %i.h, 8
  %i.j = trunc i64 %.val to i32
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 7
  %i.m = shl i32 %5, 18
  %i.n = ashr i32 %i.m, 29
  %i.o = sub nsw i32 %i.n, %i.l
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = shl nuw nsw i32 %i.i, %i.p
  %i.r = lshr i32 %5, 14
  %i.s = and i32 %i.r, 1
  %i.t = lshr i32 %5, 16
  %i.u = and i32 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %.not = icmp ult i32 %i.w, %i.e
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.x = and i32 %5, 1024
  %.not39 = icmp eq i32 %i.x, 0
  %i.y = zext i32 %i.w to i64                     ; 8 uses
  br i1 %.not39, label %.preheader.split.us, label %iter.check

iter.check:                                       ; preds = %.preheader
  %wide.trip.count = zext i32 %i.e to i64         ; 4 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y       ; 7 uses
  %min.iters.check = icmp ult i64 %i.z, 8
  br i1 %min.iters.check, label %.preheader.split.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aa = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.aa, -16
  %i.ab = sub i64 %i.c, %i.a
  %diff.check52 = icmp ugt i64 %i.ab, -16
  %conflict.rdx = or i1 %diff.check, %diff.check52
  br i1 %conflict.rdx, label %.preheader.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check53 = icmp ult i64 %i.z, 16
  br i1 %min.iters.check53, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %i.z, 8
  %n.vec = and i64 %i.z, -16                      ; 4 uses
  %i.ad = add nsw i64 %n.vec, %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = add nuw i64 %index, %i.y                ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  %wide.load = load <16 x i8>, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %i.ae
  %wide.load54 = load <16 x i8>, ptr %i.ag, align 1
  %i.ah = and <16 x i8> %wide.load, splat (i8 7)
  %i.ai = ashr <16 x i8> %wide.load54, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  store <16 x i8> %i.ai, ptr %i.aj, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %.split.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check.not.not, label %.preheader.split.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec55 = and i64 %i.z, -8                     ; 3 uses
  %i.al = add nsw i64 %n.vec55, %i.y
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 2 uses
  %i.am = add nuw i64 %index56, %i.y              ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %i.am
  %wide.load57 = load <8 x i8>, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %i.am
  %wide.load58 = load <8 x i8>, ptr %i.ao, align 1
  %i.ap = and <8 x i8> %wide.load57, splat (i8 7)
  %i.aq = ashr <8 x i8> %wide.load58, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  store <8 x i8> %i.aq, ptr %i.ar, align 1
  %index.next59 = add nuw i64 %index56, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next59, %n.vec55
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !249

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n60 = icmp eq i64 %i.z, %n.vec55
  br i1 %cmp.n60, label %.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.y, %iter.check ], [ %i.y, %vector.memcheck ], [ %i.ad, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ] ; 7 uses
  %i.at = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.at, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.split.prol.loopexit, label %.preheader.split.prol

.preheader.split.prol:                            ; preds = %.preheader.split.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.ph
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.ph
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = and i8 %i.av, 7
  %i.az = ashr i8 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.ph
  store i8 %i.az, ptr %i.ba, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %.preheader.split.prol.loopexit

.preheader.split.prol.loopexit:                   ; preds = %.preheader.split.prol, %.preheader.split.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader.split.preheader ], [ %indvars.iv.next.prol, %.preheader.split.prol ]
  %i.bb = add nsw i64 %wide.trip.count, -1
  %i.bc = icmp eq i64 %indvars.iv.ph, %i.bb
  br i1 %i.bc, label %.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %bb.d ], [ %i.y, %.preheader ] ; 5 uses
  %indvars46 = trunc i64 %indvars.iv44 to i32     ; 4 uses
  %i.bd = sdiv i32 %indvars46, 64
  %i.be = srem i32 %indvars46, 64
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = zext nneg i32 %i.be to i64
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = and i64 %i.bh, %i.bj
  %.not40.us = icmp eq i64 %i.bk, 0
  br i1 %.not40.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv44
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv44
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = and i8 %i.bm, 7
  %i.bq = ashr i8 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv44
  store i8 %i.bq, ptr %i.br, align 1
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.bs = add nuw i32 %indvars46, 1
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.u, i32 noundef %indvars46, i32 noundef %i.bs) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next45 to i32
  %exitcond47.not = icmp eq i32 %i.e, %lftr.wideiv
  br i1 %exitcond47.not, label %.split.us, label %.preheader.split.us, !llvm.loop !250

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.v, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.prol.loopexit, %.preheader.split
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.split ], [ %indvars.iv.unr, %.preheader.split.prol.loopexit ] ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = and i8 %i.bu, 7
  %i.by = ashr i8 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.by, ptr %i.bz, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = and i8 %i.cb, 7
  %i.cf = ashr i8 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  store i8 %i.cf, ptr %i.cg, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !251

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block, %vec.epilog.middle.block
  store i32 0, ptr %i.v, align 4
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.e, i32 noundef %i.q) #17
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vsra_vv_h(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr i8, ptr %4, i64 4608
  %.val = load i64, ptr %i.f, align 16
  %i.g = shl i32 %5, 3
  %i.h = and i32 %i.g, 2040
  %i.i = add nuw nsw i32 %i.h, 8
  %i.j = trunc i64 %.val to i32
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 7
  %i.m = shl i32 %5, 18
  %i.n = ashr i32 %i.m, 29
  %reass.sub = sub nsw i32 %i.n, %i.l
  %i.o = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -1)
  %i.p = add nsw i32 %i.o, 1
  %i.q = shl nuw nsw i32 %i.i, %i.p
  %.zext = and i32 %i.q, 65528
  %i.r = lshr i32 %5, 14
  %i.s = and i32 %i.r, 1
  %i.t = lshr i32 %5, 16
  %i.u = and i32 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %.not = icmp ult i32 %i.w, %i.e
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.x = and i32 %5, 1024
  %.not39 = icmp eq i32 %i.x, 0
  %i.y = zext i32 %i.w to i64                     ; 6 uses
  br i1 %.not39, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %wide.trip.count = zext i32 %i.e to i64         ; 4 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y       ; 3 uses
end_hunk_2
begin_hunk_3_@helper_vssub_vx_d:bb.a
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.s, i32 noundef %i.by, i32 noundef %i.bz) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %do_vssub_vx_d.exit19
  %exitcond23.not.i64.i = icmp eq i32 %i.bn, %i.b
  br i1 %exitcond23.not.i64.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.us.i61.i, !llvm.loop !12

.lr.ph.split.i58.i:                               ; preds = %.lr.ph.i56.i, %do_vssub_vx_d.exit16
  %.021.i59.i = phi i32 [ %i.ck, %do_vssub_vx_d.exit16 ], [ %i.u, %.lr.ph.i56.i ] ; 2 uses
  %i.ca = sext i32 %.021.i59.i to i64             ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8            ; 4 uses
  %i.cd = sub i64 %i.cc, %2                       ; 2 uses
  %i.ce = xor i64 %i.cd, %i.cc
  %i.cf = xor i64 %i.cc, %2
  %i.cg = and i64 %i.ce, %i.cf
  %.not.i.i14 = icmp sgt i64 %i.cg, -1
  br i1 %.not.i.i14, label %do_vssub_vx_d.exit16, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.i58.i
  %i.ch = icmp sgt i64 %i.cc, -1
  %i.ci = select i1 %i.ch, i64 9223372036854775807, i64 -9223372036854775808
  store i8 1, ptr %i.y, align 1
  br label %do_vssub_vx_d.exit16

do_vssub_vx_d.exit16:                             ; preds = %.lr.ph.split.i58.i, %bb.m
  %.0.i.i15 = phi i64 [ %i.ci, %bb.m ], [ %i.cd, %.lr.ph.split.i58.i ]
  %i.cj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ca
  store i64 %.0.i.i15, ptr %i.cj, align 8
  %i.ck = add i32 %.021.i59.i, 1                  ; 2 uses
  %exitcond.not.i60.i = icmp eq i32 %i.ck, %i.b
  br i1 %exitcond.not.i60.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i58.i, !llvm.loop !12

.lr.ph.i66.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i71.i, label %.lr.ph.split.i68.i

.lr.ph.split.us.i71.i:                            ; preds = %.lr.ph.i66.i, %bb.q
  %.021.us.i72.i = phi i32 [ %i.ct, %bb.q ], [ %i.u, %.lr.ph.i66.i ] ; 5 uses
  %i.cl = sdiv i32 %.021.us.i72.i, 64
  %i.cm = srem i32 %.021.us.i72.i, 64
  %i.cn = sext i32 %i.cl to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = zext nneg i32 %i.cm to i64
  %i.cr = shl nuw i64 1, %i.cq
  %i.cs = and i64 %i.cr, %i.cp
  %.not20.us.i73.i = icmp eq i64 %i.cs, 0
  %i.ct = add nuw i32 %.021.us.i72.i, 1           ; 3 uses
  br i1 %.not20.us.i73.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us.i71.i
  %i.cu = sext i32 %.021.us.i72.i to i64          ; 2 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8            ; 4 uses
  %i.cx = sub i64 %i.cw, %2                       ; 2 uses
  %i.cy = xor i64 %i.cx, %i.cw
  %i.cz = xor i64 %i.cw, %2
  %i.da = and i64 %i.cy, %i.cz
  %.not.i.i11 = icmp sgt i64 %i.da, -1
  br i1 %.not.i.i11, label %do_vssub_vx_d.exit13, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.db = icmp sgt i64 %i.cw, -1
  %i.dc = select i1 %i.db, i64 9223372036854775807, i64 -9223372036854775808
  store i8 1, ptr %i.y, align 1
  br label %do_vssub_vx_d.exit13

do_vssub_vx_d.exit13:                             ; preds = %bb.n, %bb.o
  %.0.i.i12 = phi i64 [ %i.dc, %bb.o ], [ %i.cx, %bb.n ]
  %i.dd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cu
  store i64 %.0.i.i12, ptr %i.dd, align 8
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.split.us.i71.i
  %i.de = shl i32 %.021.us.i72.i, 3
  %i.df = shl i32 %i.ct, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.s, i32 noundef %i.de, i32 noundef %i.df) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %do_vssub_vx_d.exit13
  %exitcond23.not.i74.i = icmp eq i32 %i.ct, %i.b
  br i1 %exitcond23.not.i74.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.us.i71.i, !llvm.loop !12

.lr.ph.split.i68.i:                               ; preds = %.lr.ph.i66.i, %do_vssub_vx_d.exit10
  %.021.i69.i = phi i32 [ %i.dq, %do_vssub_vx_d.exit10 ], [ %i.u, %.lr.ph.i66.i ] ; 2 uses
  %i.dg = sext i32 %.021.i69.i to i64             ; 2 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %3, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8            ; 4 uses
  %i.dj = sub i64 %i.di, %2                       ; 2 uses
  %i.dk = xor i64 %i.dj, %i.di
  %i.dl = xor i64 %i.di, %2
  %i.dm = and i64 %i.dk, %i.dl
  %.not.i.i8 = icmp sgt i64 %i.dm, -1
  br i1 %.not.i.i8, label %do_vssub_vx_d.exit10, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.i68.i
  %i.dn = icmp sgt i64 %i.di, -1
  %i.do = select i1 %i.dn, i64 9223372036854775807, i64 -9223372036854775808
  store i8 1, ptr %i.y, align 1
  br label %do_vssub_vx_d.exit10

do_vssub_vx_d.exit10:                             ; preds = %.lr.ph.split.i68.i, %bb.r
  %.0.i.i9 = phi i64 [ %i.do, %bb.r ], [ %i.dj, %.lr.ph.split.i68.i ]
  %i.dp = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dg
  store i64 %.0.i.i9, ptr %i.dp, align 8
  %i.dq = add i32 %.021.i69.i, 1                  ; 2 uses
  %exitcond.not.i70.i = icmp eq i32 %i.dq, %i.b
  br i1 %exitcond.not.i70.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i68.i, !llvm.loop !12

.lr.ph.i76.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i81.i, label %.lr.ph.split.i78.i

.lr.ph.split.us.i81.i:                            ; preds = %.lr.ph.i76.i, %bb.v
  %.021.us.i82.i = phi i32 [ %i.dz, %bb.v ], [ %i.u, %.lr.ph.i76.i ] ; 5 uses
  %i.dr = sdiv i32 %.021.us.i82.i, 64
  %i.ds = srem i32 %.021.us.i82.i, 64
  %i.dt = sext i32 %i.dr to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = zext nneg i32 %i.ds to i64
  %i.dx = shl nuw i64 1, %i.dw
  %i.dy = and i64 %i.dx, %i.dv
  %.not20.us.i83.i = icmp eq i64 %i.dy, 0
  %i.dz = add nuw i32 %.021.us.i82.i, 1           ; 3 uses
  br i1 %.not20.us.i83.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.us.i81.i
  %i.ea = sext i32 %.021.us.i82.i to i64          ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8            ; 4 uses
  %i.ed = sub i64 %i.ec, %2                       ; 2 uses
  %i.ee = xor i64 %i.ed, %i.ec
  %i.ef = xor i64 %i.ec, %2
  %i.eg = and i64 %i.ee, %i.ef
  %.not.i.i5 = icmp sgt i64 %i.eg, -1
  br i1 %.not.i.i5, label %do_vssub_vx_d.exit7, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eh = icmp sgt i64 %i.ec, -1
  %i.ei = select i1 %i.eh, i64 9223372036854775807, i64 -9223372036854775808
  store i8 1, ptr %i.y, align 1
  br label %do_vssub_vx_d.exit7

do_vssub_vx_d.exit7:                              ; preds = %bb.s, %bb.t
  %.0.i.i6 = phi i64 [ %i.ei, %bb.t ], [ %i.ed, %bb.s ]
  %i.ej = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ea
  store i64 %.0.i.i6, ptr %i.ej, align 8
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.split.us.i81.i
  %i.ek = shl i32 %.021.us.i82.i, 3
  %i.el = shl i32 %i.dz, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.s, i32 noundef %i.ek, i32 noundef %i.el) #17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %do_vssub_vx_d.exit7
  %exitcond23.not.i84.i = icmp eq i32 %i.dz, %i.b
  br i1 %exitcond23.not.i84.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.us.i81.i, !llvm.loop !12

.lr.ph.split.i78.i:                               ; preds = %.lr.ph.i76.i, %do_vssub_vx_d.exit
  %.021.i79.i = phi i32 [ %i.ew, %do_vssub_vx_d.exit ], [ %i.u, %.lr.ph.i76.i ] ; 2 uses
  %i.em = sext i32 %.021.i79.i to i64             ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %3, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8            ; 4 uses
  %i.ep = sub i64 %i.eo, %2                       ; 2 uses
  %i.eq = xor i64 %i.ep, %i.eo
  %i.er = xor i64 %i.eo, %2
  %i.es = and i64 %i.eq, %i.er
  %.not.i.i = icmp sgt i64 %i.es, -1
  br i1 %.not.i.i, label %do_vssub_vx_d.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.i78.i
  %i.et = icmp sgt i64 %i.eo, -1
  %i.eu = select i1 %i.et, i64 9223372036854775807, i64 -9223372036854775808
  store i8 1, ptr %i.y, align 1
  br label %do_vssub_vx_d.exit

do_vssub_vx_d.exit:                               ; preds = %.lr.ph.split.i78.i, %bb.w
  %.0.i.i = phi i64 [ %i.eu, %bb.w ], [ %i.ep, %.lr.ph.split.i78.i ]
  %i.ev = getelementptr inbounds [8 x i8], ptr %0, i64 %i.em
  store i64 %.0.i.i, ptr %i.ev, align 8
  %i.ew = add i32 %.021.i79.i, 1                  ; 2 uses
  %exitcond.not.i80.i = icmp eq i32 %i.ew, %i.b
  br i1 %exitcond.not.i80.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i78.i, !llvm.loop !12

vext_vx_rm_1.exit.i:                              ; preds = %do_vssub_vx_d.exit10, %bb.q, %do_vssub_vx_d.exit16, %bb.l, %do_vssub_vx_d.exit22, %bb.g, %do_vssub_vx_d.exit, %bb.v
  store i32 0, ptr %i.t, align 4
  %i.ex = shl i32 %i.b, 3
  %.fr.i = freeze i32 %i.o
  %i.ey = and i32 %.fr.i, -8
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.ex, i32 noundef %i.ey) #17
  br label %vext_vx_rm_2.exit

vext_vx_rm_2.exit:                                ; preds = %bb.b, %vext_vx_rm_1.exit.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vaadd_vv_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.e = load i32, ptr %i.d, align 8              ; 22 uses
  %i.f = getelementptr i8, ptr %4, i64 4608
  %.val.i = load i64, ptr %i.f, align 16
  %i.g = shl i32 %5, 3
  %i.h = and i32 %i.g, 2040
  %i.i = add nuw nsw i32 %i.h, 8
  %i.j = trunc i64 %.val.i to i32
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 7
  %i.m = shl i32 %5, 18
  %i.n = ashr i32 %i.m, 29
  %i.o = sub nsw i32 %i.n, %i.l
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = shl nuw nsw i32 %i.i, %i.p
  %i.r = lshr i32 %5, 14
  %i.s = and i32 %i.r, 1
  %i.t = lshr i32 %5, 16
  %i.u = and i32 %i.t, 1                          ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4              ; 31 uses
  %.not.i = icmp ult i32 %i.w, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.v, align 4
  br label %vext_vv_rm_2.exit

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 4624
  %i.y = load i8, ptr %i.x, align 16
  %i.z = and i32 %5, 1024
  %.not.i77.i = icmp eq i32 %i.z, 0               ; 4 uses
  switch i8 %i.y, label %.lr.ph.i76.i [
    i8 0, label %.lr.ph.i.i
    i8 1, label %.lr.ph.i56.i
    i8 2, label %.lr.ph.i66.i
  ]

.lr.ph.i.i:                                       ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i.i, label %iter.check69

iter.check69:                                     ; preds = %.lr.ph.i.i
  %i.aa = sub i32 %i.e, %i.w                      ; 7 uses
  %min.iters.check53 = icmp ult i32 %i.aa, 8
  %i.ab = add i32 %i.e, -1
  %i.ac = icmp slt i32 %i.ab, %i.w
  %or.cond = or i1 %min.iters.check53, %i.ac
  br i1 %or.cond, label %.lr.ph.split.i.i.preheader, label %vector.memcheck54

vector.memcheck54:                                ; preds = %iter.check69
  %i.ad = sub i64 %i.b, %i.a
  %diff.check55 = icmp ugt i64 %i.ad, -16
  %i.ae = sub i64 %i.c, %i.a
  %diff.check56 = icmp ugt i64 %i.ae, -16
  %conflict.rdx57 = or i1 %diff.check55, %diff.check56
  br i1 %conflict.rdx57, label %.lr.ph.split.i.i.preheader, label %vector.main.loop.iter.check58

vector.main.loop.iter.check58:                    ; preds = %vector.memcheck54
  %min.iters.check59 = icmp ult i32 %i.aa, 16
  br i1 %min.iters.check59, label %vec.epilog.ph73, label %vector.ph60

vector.ph60:                                      ; preds = %vector.main.loop.iter.check58
  %i.af = and i32 %i.aa, 8
  %n.vec61 = and i32 %i.aa, -16                   ; 4 uses
  %i.ag = add i32 %i.w, %n.vec61
  br label %vector.body62

vector.body62:                                    ; preds = %vector.ph60, %vector.body62
  %index63 = phi i32 [ 0, %vector.ph60 ], [ %index.next66, %vector.body62 ] ; 2 uses
  %i.ah = add i32 %i.w, %index63
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  %wide.load64 = load <16 x i8>, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds i8, ptr %3, i64 %i.ai
  %wide.load65 = load <16 x i8>, ptr %i.ak, align 1
  %i.al = sext <16 x i8> %wide.load65 to <16 x i64>
  %i.am = sext <16 x i8> %wide.load64 to <16 x i64>
  %i.an = add nsw <16 x i64> %i.al, %i.am         ; 2 uses
  %i.ao = lshr <16 x i64> %i.an, splat (i64 1)
  %i.ap = and <16 x i64> %i.an, splat (i64 1)
  %i.aq = add nuw <16 x i64> %i.ap, %i.ao
  %i.ar = trunc <16 x i64> %i.aq to <16 x i8>
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ai
  store <16 x i8> %i.ar, ptr %i.as, align 1
  %index.next66 = add nuw i32 %index63, 16        ; 2 uses
  %i.at = icmp eq i32 %index.next66, %n.vec61
  br i1 %i.at, label %middle.block67, label %vector.body62, !llvm.loop !1701

middle.block67:                                   ; preds = %vector.body62
  %cmp.n68 = icmp eq i32 %i.aa, %n.vec61
  br i1 %cmp.n68, label %vext_vv_rm_1.exit.i, label %vec.epilog.iter.check70

vec.epilog.iter.check70:                          ; preds = %middle.block67
  %min.epilog.iters.check72.not.not = icmp eq i32 %i.af, 0
  br i1 %min.epilog.iters.check72.not.not, label %.lr.ph.split.i.i.preheader, label %vec.epilog.ph73, !prof !32

vec.epilog.ph73:                                  ; preds = %vector.main.loop.iter.check58, %vec.epilog.iter.check70
  %vec.epilog.resume.val74 = phi i32 [ %n.vec61, %vec.epilog.iter.check70 ], [ 0, %vector.main.loop.iter.check58 ]
  %n.vec75 = and i32 %i.aa, -8                    ; 3 uses
  %i.au = add i32 %i.w, %n.vec75
  br label %vec.epilog.vector.body76

vec.epilog.vector.body76:                         ; preds = %vec.epilog.vector.body76, %vec.epilog.ph73
  %index77 = phi i32 [ %vec.epilog.resume.val74, %vec.epilog.ph73 ], [ %index.next80, %vec.epilog.vector.body76 ] ; 2 uses
  %i.av = add i32 %i.w, %index77
  %i.aw = sext i32 %i.av to i64                   ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %2, i64 %i.aw
  %wide.load78 = load <8 x i8>, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds i8, ptr %3, i64 %i.aw
  %wide.load79 = load <8 x i8>, ptr %i.ay, align 1
  %i.az = sext <8 x i8> %wide.load79 to <8 x i64>
  %i.ba = sext <8 x i8> %wide.load78 to <8 x i64>
  %i.bb = add nsw <8 x i64> %i.az, %i.ba          ; 2 uses
  %i.bc = lshr <8 x i64> %i.bb, splat (i64 1)
  %i.bd = and <8 x i64> %i.bb, splat (i64 1)
  %i.be = add nuw <8 x i64> %i.bd, %i.bc
  %i.bf = trunc <8 x i64> %i.be to <8 x i8>
  %i.bg = getelementptr inbounds i8, ptr %0, i64 %i.aw
  store <8 x i8> %i.bf, ptr %i.bg, align 1
  %index.next80 = add nuw i32 %index77, 8         ; 2 uses
  %i.bh = icmp eq i32 %index.next80, %n.vec75
  br i1 %i.bh, label %vec.epilog.middle.block81, label %vec.epilog.vector.body76, !llvm.loop !1702

vec.epilog.middle.block81:                        ; preds = %vec.epilog.vector.body76
  %cmp.n82 = icmp eq i32 %i.aa, %n.vec75
  br i1 %cmp.n82, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %iter.check69, %vector.memcheck54, %vec.epilog.iter.check70, %vec.epilog.middle.block81
  %.021.i.i.ph = phi i32 [ %i.w, %iter.check69 ], [ %i.w, %vector.memcheck54 ], [ %i.ag, %vec.epilog.iter.check70 ], [ %i.au, %vec.epilog.middle.block81 ] ; 5 uses
  %i.bi = sub i32 %i.e, %.021.i.i.ph
  %.neg101 = add i32 %.021.i.i.ph, 1
  %xtraiter96 = and i32 %i.bi, 1
  %lcmp.mod97.not = icmp eq i32 %xtraiter96, 0
  br i1 %lcmp.mod97.not, label %.lr.ph.split.i.i.prol.loopexit, label %.lr.ph.split.i.i.prol

.lr.ph.split.i.i.prol:                            ; preds = %.lr.ph.split.i.i.preheader
  %i.bj = sext i32 %.021.i.i.ph to i64            ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = getelementptr inbounds i8, ptr %3, i64 %i.bj
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = sext i8 %i.bn to i64
  %i.bp = sext i8 %i.bl to i64
  %i.bq = add nsw i64 %i.bo, %i.bp                ; 2 uses
  %i.br = lshr i64 %i.bq, 1
  %i.bs = and i64 %i.bq, 1
  %i.bt = add nuw i64 %i.bs, %i.br
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = getelementptr inbounds i8, ptr %0, i64 %i.bj
  store i8 %i.bu, ptr %i.bv, align 1
  %i.bw = add i32 %.021.i.i.ph, 1
  br label %.lr.ph.split.i.i.prol.loopexit

.lr.ph.split.i.i.prol.loopexit:                   ; preds = %.lr.ph.split.i.i.prol, %.lr.ph.split.i.i.preheader
  %.021.i.i.unr = phi i32 [ %.021.i.i.ph, %.lr.ph.split.i.i.preheader ], [ %i.bw, %.lr.ph.split.i.i.prol ]
  %i.bx = icmp eq i32 %i.e, %.neg101
  br i1 %i.bx, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.f
  %.021.us.i.i = phi i32 [ %i.cg, %bb.f ], [ %i.w, %.lr.ph.i.i ] ; 5 uses
  %i.by = sdiv i32 %.021.us.i.i, 64
  %i.bz = srem i32 %.021.us.i.i, 64
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = zext nneg i32 %i.bz to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.ce, %i.cc
  %.not20.us.i.i = icmp eq i64 %i.cf, 0
  %i.cg = add nuw i32 %.021.us.i.i, 1             ; 3 uses
  br i1 %.not20.us.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.i.i
  %i.ch = sext i32 %.021.us.i.i to i64            ; 3 uses
  %i.ci = getelementptr inbounds i8, ptr %2, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = getelementptr inbounds i8, ptr %3, i64 %i.ch
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = sext i8 %i.cl to i64
  %i.cn = sext i8 %i.cj to i64
  %i.co = add nsw i64 %i.cm, %i.cn                ; 2 uses
  %i.cp = lshr i64 %i.co, 1
  %i.cq = and i64 %i.co, 1
  %i.cr = add nuw i64 %i.cq, %i.cp
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = getelementptr inbounds i8, ptr %0, i64 %i.ch
  store i8 %i.cs, ptr %i.ct, align 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.us.i.i
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %.021.us.i.i, i32 noundef %i.cg) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %exitcond23.not.i.i = icmp eq i32 %i.cg, %i.e
  br i1 %exitcond23.not.i.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !11

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.prol.loopexit, %.lr.ph.split.i.i
  %.021.i.i = phi i32 [ %i.dv, %.lr.ph.split.i.i ], [ %.021.i.i.unr, %.lr.ph.split.i.i.prol.loopexit ] ; 3 uses
  %i.cu = sext i32 %.021.i.i to i64               ; 3 uses
  %i.cv = getelementptr inbounds i8, ptr %2, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = getelementptr inbounds i8, ptr %3, i64 %i.cu
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = sext i8 %i.cy to i64
  %i.da = sext i8 %i.cw to i64
  %i.db = add nsw i64 %i.cz, %i.da                ; 2 uses
  %i.dc = lshr i64 %i.db, 1
  %i.dd = and i64 %i.db, 1
  %i.de = add nuw i64 %i.dd, %i.dc
  %i.df = trunc i64 %i.de to i8
  %i.dg = getelementptr inbounds i8, ptr %0, i64 %i.cu
  store i8 %i.df, ptr %i.dg, align 1
  %i.dh = add i32 %.021.i.i, 1
  %i.di = sext i32 %i.dh to i64                   ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %2, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = getelementptr inbounds i8, ptr %3, i64 %i.di
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = sext i8 %i.dm to i64
  %i.do = sext i8 %i.dk to i64
  %i.dp = add nsw i64 %i.dn, %i.do                ; 2 uses
  %i.dq = lshr i64 %i.dp, 1
  %i.dr = and i64 %i.dp, 1
  %i.ds = add nuw i64 %i.dr, %i.dq
  %i.dt = trunc i64 %i.ds to i8
  %i.du = getelementptr inbounds i8, ptr %0, i64 %i.di
  store i8 %i.dt, ptr %i.du, align 1
  %i.dv = add i32 %.021.i.i, 2                    ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i32 %i.dv, %i.e
  br i1 %exitcond.not.i.i.1, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i.i, !llvm.loop !1703

.lr.ph.i56.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i61.i, label %.lr.ph.split.i58.i.preheader

.lr.ph.split.i58.i.preheader:                     ; preds = %.lr.ph.i56.i
  %i.dw = sub i32 %i.e, %i.w
  %.neg100 = add i32 %i.w, 1
  %xtraiter94 = and i32 %i.dw, 1
  %lcmp.mod95.not = icmp eq i32 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %.lr.ph.split.i58.i.prol.loopexit, label %.lr.ph.split.i58.i.prol

.lr.ph.split.i58.i.prol:                          ; preds = %.lr.ph.split.i58.i.preheader
  %i.dx = sext i32 %i.w to i64                    ; 3 uses
  %i.dy = getelementptr inbounds i8, ptr %2, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = getelementptr inbounds i8, ptr %3, i64 %i.dx
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = sext i8 %i.eb to i64
  %i.ed = sext i8 %i.dz to i64
  %i.ee = add nsw i64 %i.ec, %i.ed                ; 2 uses
  %i.ef = lshr i64 %i.ee, 1
  %i.eg = and i64 %i.ee, 3
  %i.eh = icmp eq i64 %i.eg, 3
  %i.ei = zext i1 %i.eh to i64
  %i.ej = add nuw i64 %i.ef, %i.ei
  %i.ek = trunc i64 %i.ej to i8
  %i.el = getelementptr inbounds i8, ptr %0, i64 %i.dx
  store i8 %i.ek, ptr %i.el, align 1
  %i.em = add i32 %i.w, 1
  br label %.lr.ph.split.i58.i.prol.loopexit

.lr.ph.split.i58.i.prol.loopexit:                 ; preds = %.lr.ph.split.i58.i.prol, %.lr.ph.split.i58.i.preheader
  %.021.i59.i.unr = phi i32 [ %i.w, %.lr.ph.split.i58.i.preheader ], [ %i.em, %.lr.ph.split.i58.i.prol ]
  %i.en = icmp eq i32 %i.e, %.neg100
  br i1 %i.en, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i58.i

.lr.ph.split.us.i61.i:                            ; preds = %.lr.ph.i56.i, %bb.i
  %.021.us.i62.i = phi i32 [ %i.ew, %bb.i ], [ %i.w, %.lr.ph.i56.i ] ; 5 uses
  %i.eo = sdiv i32 %.021.us.i62.i, 64
  %i.ep = srem i32 %.021.us.i62.i, 64
  %i.eq = sext i32 %i.eo to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %1, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8
  %i.et = zext nneg i32 %i.ep to i64
  %i.eu = shl nuw i64 1, %i.et
  %i.ev = and i64 %i.eu, %i.es
  %.not20.us.i63.i = icmp eq i64 %i.ev, 0
  %i.ew = add nuw i32 %.021.us.i62.i, 1           ; 3 uses
  br i1 %.not20.us.i63.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.i61.i
  %i.ex = sext i32 %.021.us.i62.i to i64          ; 3 uses
  %i.ey = getelementptr inbounds i8, ptr %2, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = getelementptr inbounds i8, ptr %3, i64 %i.ex
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = sext i8 %i.fb to i64
  %i.fd = sext i8 %i.ez to i64
  %i.fe = add nsw i64 %i.fc, %i.fd                ; 2 uses
  %i.ff = lshr i64 %i.fe, 1
  %i.fg = and i64 %i.fe, 3
  %i.fh = icmp eq i64 %i.fg, 3
  %i.fi = zext i1 %i.fh to i64
  %i.fj = add nuw i64 %i.ff, %i.fi
  %i.fk = trunc i64 %i.fj to i8
  %i.fl = getelementptr inbounds i8, ptr %0, i64 %i.ex
  store i8 %i.fk, ptr %i.fl, align 1
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.us.i61.i
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %.021.us.i62.i, i32 noundef %i.ew) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %exitcond23.not.i64.i = icmp eq i32 %i.ew, %i.e
  br i1 %exitcond23.not.i64.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.us.i61.i, !llvm.loop !11

.lr.ph.split.i58.i:                               ; preds = %.lr.ph.split.i58.i.prol.loopexit, %.lr.ph.split.i58.i
  %.021.i59.i = phi i32 [ %i.gr, %.lr.ph.split.i58.i ], [ %.021.i59.i.unr, %.lr.ph.split.i58.i.prol.loopexit ] ; 3 uses
  %i.fm = sext i32 %.021.i59.i to i64             ; 3 uses
  %i.fn = getelementptr inbounds i8, ptr %2, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = getelementptr inbounds i8, ptr %3, i64 %i.fm
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = sext i8 %i.fq to i64
  %i.fs = sext i8 %i.fo to i64
  %i.ft = add nsw i64 %i.fr, %i.fs                ; 2 uses
  %i.fu = lshr i64 %i.ft, 1
  %i.fv = and i64 %i.ft, 3
  %i.fw = icmp eq i64 %i.fv, 3
  %i.fx = zext i1 %i.fw to i64
  %i.fy = add nuw i64 %i.fu, %i.fx
  %i.fz = trunc i64 %i.fy to i8
  %i.ga = getelementptr inbounds i8, ptr %0, i64 %i.fm
  store i8 %i.fz, ptr %i.ga, align 1
  %i.gb = add i32 %.021.i59.i, 1
  %i.gc = sext i32 %i.gb to i64                   ; 3 uses
  %i.gd = getelementptr inbounds i8, ptr %2, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = getelementptr inbounds i8, ptr %3, i64 %i.gc
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = sext i8 %i.gg to i64
  %i.gi = sext i8 %i.ge to i64
  %i.gj = add nsw i64 %i.gh, %i.gi                ; 2 uses
  %i.gk = lshr i64 %i.gj, 1
  %i.gl = and i64 %i.gj, 3
  %i.gm = icmp eq i64 %i.gl, 3
  %i.gn = zext i1 %i.gm to i64
  %i.go = add nuw i64 %i.gk, %i.gn
  %i.gp = trunc i64 %i.go to i8
  %i.gq = getelementptr inbounds i8, ptr %0, i64 %i.gc
  store i8 %i.gp, ptr %i.gq, align 1
  %i.gr = add i32 %.021.i59.i, 2                  ; 2 uses
  %exitcond.not.i60.i.1 = icmp eq i32 %i.gr, %i.e
  br i1 %exitcond.not.i60.i.1, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i58.i, !llvm.loop !11

.lr.ph.i66.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i71.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph.i66.i
  %i.gs = sub i32 %i.e, %i.w                      ; 7 uses
  %min.iters.check = icmp ult i32 %i.gs, 4
  %i.gt = add i32 %i.e, -1
  %i.gu = icmp slt i32 %i.gt, %i.w
  %or.cond86 = or i1 %min.iters.check, %i.gu
  br i1 %or.cond86, label %.lr.ph.split.i68.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.gv = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.gv, -16
  %i.gw = sub i64 %i.c, %i.a
  %diff.check39 = icmp ugt i64 %i.gw, -16
  %conflict.rdx = or i1 %diff.check, %diff.check39
  br i1 %conflict.rdx, label %.lr.ph.split.i68.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i32 %i.gs, 16
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gx = and i32 %i.gs, 12
  %n.vec = and i32 %i.gs, -16                     ; 4 uses
  %i.gy = add i32 %i.w, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gz = add i32 %i.w, %index
  %i.ha = sext i32 %i.gz to i64                   ; 3 uses
  %i.hb = getelementptr inbounds i8, ptr %2, i64 %i.ha
  %wide.load = load <16 x i8>, ptr %i.hb, align 1
  %i.hc = getelementptr inbounds i8, ptr %3, i64 %i.ha
  %wide.load41 = load <16 x i8>, ptr %i.hc, align 1
  %i.hd = sext <16 x i8> %wide.load41 to <16 x i16>
  %i.he = sext <16 x i8> %wide.load to <16 x i16>
  %i.hf = add nsw <16 x i16> %i.hd, %i.he
  %i.hg = lshr <16 x i16> %i.hf, splat (i16 1)
  %i.hh = trunc <16 x i16> %i.hg to <16 x i8>
  %i.hi = getelementptr inbounds i8, ptr %0, i64 %i.ha
  store <16 x i8> %i.hh, ptr %i.hi, align 1
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.hj = icmp eq i32 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !1704

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.gs, %n.vec
  br i1 %cmp.n, label %vext_vv_rm_1.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.gx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.i68.i.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i32 %i.gs, -4                    ; 3 uses
  %i.hk = add i32 %i.w, %n.vec42
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 2 uses
  %i.hl = add i32 %i.w, %index43
  %i.hm = sext i32 %i.hl to i64                   ; 3 uses
  %i.hn = getelementptr inbounds i8, ptr %2, i64 %i.hm
  %wide.load44 = load <4 x i8>, ptr %i.hn, align 1
  %i.ho = getelementptr inbounds i8, ptr %3, i64 %i.hm
  %wide.load45 = load <4 x i8>, ptr %i.ho, align 1
  %i.hp = sext <4 x i8> %wide.load45 to <4 x i16>
  %i.hq = sext <4 x i8> %wide.load44 to <4 x i16>
  %i.hr = add nsw <4 x i16> %i.hp, %i.hq
  %i.hs = lshr <4 x i16> %i.hr, splat (i16 1)
  %i.ht = trunc <4 x i16> %i.hs to <4 x i8>
  %i.hu = getelementptr inbounds i8, ptr %0, i64 %i.hm
  store <4 x i8> %i.ht, ptr %i.hu, align 1
  %index.next46 = add nuw i32 %index43, 4         ; 2 uses
  %i.hv = icmp eq i32 %index.next46, %n.vec42
  br i1 %i.hv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1705

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i32 %i.gs, %n.vec42
  br i1 %cmp.n47, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i68.i.preheader

.lr.ph.split.i68.i.preheader:                     ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.021.i69.i.ph = phi i32 [ %i.w, %iter.check ], [ %i.w, %vector.memcheck ], [ %i.gy, %vec.epilog.iter.check ], [ %i.hk, %vec.epilog.middle.block ] ; 5 uses
  %i.hw = sub i32 %i.e, %.021.i69.i.ph
  %.neg = add i32 %.021.i69.i.ph, 1
  %xtraiter = and i32 %i.hw, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i68.i.prol.loopexit, label %.lr.ph.split.i68.i.prol

.lr.ph.split.i68.i.prol:                          ; preds = %.lr.ph.split.i68.i.preheader
  %i.hx = sext i32 %.021.i69.i.ph to i64          ; 3 uses
  %i.hy = getelementptr inbounds i8, ptr %2, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1
  %i.ia = getelementptr inbounds i8, ptr %3, i64 %i.hx
  %i.ib = load i8, ptr %i.ia, align 1
  %i.ic = sext i8 %i.ib to i16
  %i.id = sext i8 %i.hz to i16
  %i.ie = add nsw i16 %i.ic, %i.id
  %i.if = lshr i16 %i.ie, 1
  %i.ig = trunc i16 %i.if to i8
  %i.ih = getelementptr inbounds i8, ptr %0, i64 %i.hx
  store i8 %i.ig, ptr %i.ih, align 1
  %i.ii = add i32 %.021.i69.i.ph, 1
  br label %.lr.ph.split.i68.i.prol.loopexit

.lr.ph.split.i68.i.prol.loopexit:                 ; preds = %.lr.ph.split.i68.i.prol, %.lr.ph.split.i68.i.preheader
  %.021.i69.i.unr = phi i32 [ %.021.i69.i.ph, %.lr.ph.split.i68.i.preheader ], [ %i.ii, %.lr.ph.split.i68.i.prol ]
  %i.ij = icmp eq i32 %i.e, %.neg
  br i1 %i.ij, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i68.i

.lr.ph.split.us.i71.i:                            ; preds = %.lr.ph.i66.i, %bb.l
  %.021.us.i72.i = phi i32 [ %i.is, %bb.l ], [ %i.w, %.lr.ph.i66.i ] ; 5 uses
  %i.ik = sdiv i32 %.021.us.i72.i, 64
  %i.il = srem i32 %.021.us.i72.i, 64
  %i.im = sext i32 %i.ik to i64
  %i.in = getelementptr inbounds [8 x i8], ptr %1, i64 %i.im
  %i.io = load i64, ptr %i.in, align 8
  %i.ip = zext nneg i32 %i.il to i64
  %i.iq = shl nuw i64 1, %i.ip
  %i.ir = and i64 %i.iq, %i.io
  %.not20.us.i73.i = icmp eq i64 %i.ir, 0
  %i.is = add nuw i32 %.021.us.i72.i, 1           ; 3 uses
  br i1 %.not20.us.i73.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us.i71.i
  %i.it = sext i32 %.021.us.i72.i to i64          ; 3 uses
  %i.iu = getelementptr inbounds i8, ptr %2, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1
  %i.iw = getelementptr inbounds i8, ptr %3, i64 %i.it
  %i.ix = load i8, ptr %i.iw, align 1
  %i.iy = sext i8 %i.ix to i16
  %i.iz = sext i8 %i.iv to i16
  %i.ja = add nsw i16 %i.iy, %i.iz
  %i.jb = lshr i16 %i.ja, 1
  %i.jc = trunc i16 %i.jb to i8
  %i.jd = getelementptr inbounds i8, ptr %0, i64 %i.it
  store i8 %i.jc, ptr %i.jd, align 1
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.us.i71.i
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %.021.us.i72.i, i32 noundef %i.is) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %exitcond23.not.i74.i = icmp eq i32 %i.is, %i.e
  br i1 %exitcond23.not.i74.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.us.i71.i, !llvm.loop !11

.lr.ph.split.i68.i:                               ; preds = %.lr.ph.split.i68.i.prol.loopexit, %.lr.ph.split.i68.i
  %.021.i69.i = phi i32 [ %i.kb, %.lr.ph.split.i68.i ], [ %.021.i69.i.unr, %.lr.ph.split.i68.i.prol.loopexit ] ; 3 uses
  %i.je = sext i32 %.021.i69.i to i64             ; 3 uses
  %i.jf = getelementptr inbounds i8, ptr %2, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1
  %i.jh = getelementptr inbounds i8, ptr %3, i64 %i.je
  %i.ji = load i8, ptr %i.jh, align 1
  %i.jj = sext i8 %i.ji to i16
  %i.jk = sext i8 %i.jg to i16
  %i.jl = add nsw i16 %i.jj, %i.jk
  %i.jm = lshr i16 %i.jl, 1
  %i.jn = trunc i16 %i.jm to i8
  %i.jo = getelementptr inbounds i8, ptr %0, i64 %i.je
  store i8 %i.jn, ptr %i.jo, align 1
  %i.jp = add i32 %.021.i69.i, 1
  %i.jq = sext i32 %i.jp to i64                   ; 3 uses
  %i.jr = getelementptr inbounds i8, ptr %2, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1
  %i.jt = getelementptr inbounds i8, ptr %3, i64 %i.jq
  %i.ju = load i8, ptr %i.jt, align 1
  %i.jv = sext i8 %i.ju to i16
  %i.jw = sext i8 %i.js to i16
  %i.jx = add nsw i16 %i.jv, %i.jw
  %i.jy = lshr i16 %i.jx, 1
  %i.jz = trunc i16 %i.jy to i8
  %i.ka = getelementptr inbounds i8, ptr %0, i64 %i.jq
  store i8 %i.jz, ptr %i.ka, align 1
  %i.kb = add i32 %.021.i69.i, 2                  ; 2 uses
  %exitcond.not.i70.i.1 = icmp eq i32 %i.kb, %i.e
  br i1 %exitcond.not.i70.i.1, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i68.i, !llvm.loop !1706

.lr.ph.i76.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i81.i, label %.lr.ph.split.i78.i.preheader

.lr.ph.split.i78.i.preheader:                     ; preds = %.lr.ph.i76.i
  %i.kc = sub i32 %i.e, %i.w
  %.neg102 = add i32 %i.w, 1
  %xtraiter98 = and i32 %i.kc, 1
  %lcmp.mod99.not = icmp eq i32 %xtraiter98, 0
  br i1 %lcmp.mod99.not, label %.lr.ph.split.i78.i.prol.loopexit, label %.lr.ph.split.i78.i.prol

.lr.ph.split.i78.i.prol:                          ; preds = %.lr.ph.split.i78.i.preheader
  %i.kd = sext i32 %i.w to i64                    ; 3 uses
  %i.ke = getelementptr inbounds i8, ptr %2, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1
  %i.kg = getelementptr inbounds i8, ptr %3, i64 %i.kd
  %i.kh = load i8, ptr %i.kg, align 1
  %i.ki = sext i8 %i.kh to i64
  %i.kj = sext i8 %i.kf to i64
  %i.kk = add nsw i64 %i.ki, %i.kj                ; 2 uses
  %i.kl = lshr i64 %i.kk, 1
  %i.km = and i64 %i.kk, 3
  %i.kn = icmp eq i64 %i.km, 1
  %i.ko = zext i1 %i.kn to i64
  %i.kp = add nuw i64 %i.kl, %i.ko
  %i.kq = trunc i64 %i.kp to i8
  %i.kr = getelementptr inbounds i8, ptr %0, i64 %i.kd
  store i8 %i.kq, ptr %i.kr, align 1
  %i.ks = add i32 %i.w, 1
  br label %.lr.ph.split.i78.i.prol.loopexit

.lr.ph.split.i78.i.prol.loopexit:                 ; preds = %.lr.ph.split.i78.i.prol, %.lr.ph.split.i78.i.preheader
  %.021.i79.i.unr = phi i32 [ %i.w, %.lr.ph.split.i78.i.preheader ], [ %i.ks, %.lr.ph.split.i78.i.prol ]
  %i.kt = icmp eq i32 %i.e, %.neg102
end_hunk_3
begin_hunk_4_@helper_vaadd_vx_d:bb.a
  %i.gp = sdiv i32 %.021.us.i72.i, 64
  %i.gq = srem i32 %.021.us.i72.i, 64
  %i.gr = sext i32 %i.gp to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 8
  %i.gu = zext nneg i32 %i.gq to i64
  %i.gv = shl nuw i64 1, %i.gu
  %i.gw = and i64 %i.gv, %i.gt
  %.not20.us.i73.i = icmp eq i64 %i.gw, 0
  %i.gx = add nuw i32 %.021.us.i72.i, 1           ; 3 uses
  br i1 %.not20.us.i73.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us.i71.i
  %i.gy = sext i32 %.021.us.i72.i to i64          ; 2 uses
  %i.gz = getelementptr inbounds [8 x i8], ptr %3, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8            ; 2 uses
  %i.hb = add i64 %i.ha, %2                       ; 3 uses
  %i.hc = xor i64 %i.hb, %i.ha
  %i.hd = xor i64 %i.hb, %2
  %i.he = and i64 %i.hd, -9223372036854775808
  %i.hf = and i64 %i.he, %i.hc
  %i.hg = ashr i64 %i.hb, 1
  %i.hh = xor i64 %i.hf, %i.hg
  %i.hi = getelementptr inbounds [8 x i8], ptr %0, i64 %i.gy
  store i64 %i.hh, ptr %i.hi, align 8
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.us.i71.i
  %i.hj = shl i32 %.021.us.i72.i, 3
  %i.hk = shl i32 %i.gx, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %i.hj, i32 noundef %i.hk) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %exitcond23.not.i74.i = icmp eq i32 %i.gx, %i.d
  br i1 %exitcond23.not.i74.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.us.i71.i, !llvm.loop !12

.lr.ph.split.i68.i:                               ; preds = %.lr.ph.split.i68.i.prol.loopexit, %.lr.ph.split.i68.i
  %.021.i69.i = phi i32 [ %i.ii, %.lr.ph.split.i68.i ], [ %.021.i69.i.unr, %.lr.ph.split.i68.i.prol.loopexit ] ; 3 uses
  %i.hl = sext i32 %.021.i69.i to i64             ; 2 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %3, i64 %i.hl
  %i.hn = load i64, ptr %i.hm, align 8            ; 2 uses
  %i.ho = add i64 %i.hn, %2                       ; 3 uses
  %i.hp = xor i64 %i.ho, %i.hn
  %i.hq = xor i64 %i.ho, %2
  %i.hr = and i64 %i.hq, -9223372036854775808
  %i.hs = and i64 %i.hr, %i.hp
  %i.ht = ashr i64 %i.ho, 1
  %i.hu = xor i64 %i.hs, %i.ht
  %i.hv = getelementptr inbounds [8 x i8], ptr %0, i64 %i.hl
  store i64 %i.hu, ptr %i.hv, align 8
  %i.hw = add i32 %.021.i69.i, 1
  %i.hx = sext i32 %i.hw to i64                   ; 2 uses
  %i.hy = getelementptr inbounds [8 x i8], ptr %3, i64 %i.hx
  %i.hz = load i64, ptr %i.hy, align 8            ; 2 uses
  %i.ia = add i64 %i.hz, %2                       ; 3 uses
  %i.ib = xor i64 %i.ia, %i.hz
  %i.ic = xor i64 %i.ia, %2
  %i.id = and i64 %i.ic, -9223372036854775808
  %i.ie = and i64 %i.id, %i.ib
  %i.if = ashr i64 %i.ia, 1
  %i.ig = xor i64 %i.ie, %i.if
  %i.ih = getelementptr inbounds [8 x i8], ptr %0, i64 %i.hx
  store i64 %i.ig, ptr %i.ih, align 8
  %i.ii = add i32 %.021.i69.i, 2                  ; 2 uses
  %exitcond.not.i70.i.1 = icmp eq i32 %i.ii, %i.d
  br i1 %exitcond.not.i70.i.1, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i68.i, !llvm.loop !1762

.lr.ph.i76.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i81.i, label %.lr.ph.split.i78.i.preheader

.lr.ph.split.i78.i.preheader:                     ; preds = %.lr.ph.i76.i
  %i.ij = sub i32 %i.d, %i.w                      ; 3 uses
  %min.iters.check80 = icmp ult i32 %i.ij, 4
  %i.ik = add i32 %i.d, -1
  %i.il = icmp slt i32 %i.ik, %i.w
  %or.cond103 = or i1 %min.iters.check80, %i.il
  %i.im = sub i64 %i.a, %i.b
  %diff.check82 = icmp ugt i64 %i.im, -16
  %or.cond104 = or i1 %or.cond103, %diff.check82
  br i1 %or.cond104, label %.lr.ph.split.i78.i.preheader105, label %vector.ph83

vector.ph83:                                      ; preds = %.lr.ph.split.i78.i.preheader
  %n.vec84 = and i32 %i.ij, -2                    ; 3 uses
  %i.in = add i32 %i.w, %n.vec84
  %broadcast.splatinsert85 = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat86 = shufflevector <2 x i64> %broadcast.splatinsert85, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph83
  %index88 = phi i32 [ 0, %vector.ph83 ], [ %index.next90, %vector.body87 ] ; 2 uses
  %i.io = add i32 %i.w, %index88
  %i.ip = sext i32 %i.io to i64                   ; 2 uses
  %i.iq = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ip
  %wide.load89 = load <2 x i64>, ptr %i.iq, align 8 ; 2 uses
  %i.ir = add <2 x i64> %wide.load89, %broadcast.splat86 ; 4 uses
  %i.is = and <2 x i64> %i.ir, splat (i64 3)
  %i.it = icmp eq <2 x i64> %i.is, splat (i64 1)
  %i.iu = zext <2 x i1> %i.it to <2 x i64>
  %i.iv = xor <2 x i64> %i.ir, %wide.load89
  %i.iw = xor <2 x i64> %i.ir, %broadcast.splat86
  %i.ix = and <2 x i64> %i.iw, splat (i64 -9223372036854775808)
  %i.iy = and <2 x i64> %i.ix, %i.iv
  %i.iz = ashr <2 x i64> %i.ir, splat (i64 1)
  %i.ja = xor <2 x i64> %i.iy, %i.iz
  %i.jb = add <2 x i64> %i.ja, %i.iu
  %i.jc = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ip
  store <2 x i64> %i.jb, ptr %i.jc, align 8
  %index.next90 = add nuw i32 %index88, 2         ; 2 uses
  %i.jd = icmp eq i32 %index.next90, %n.vec84
  br i1 %i.jd, label %middle.block91, label %vector.body87, !llvm.loop !1763

middle.block91:                                   ; preds = %vector.body87
  %cmp.n92 = icmp eq i32 %i.ij, %n.vec84
  br i1 %cmp.n92, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i78.i.preheader105

.lr.ph.split.i78.i.preheader105:                  ; preds = %.lr.ph.split.i78.i.preheader, %middle.block91
  %.021.i79.i.ph = phi i32 [ %i.w, %.lr.ph.split.i78.i.preheader ], [ %i.in, %middle.block91 ]
  br label %.lr.ph.split.i78.i

.lr.ph.split.us.i81.i:                            ; preds = %.lr.ph.i76.i, %bb.o
  %.021.us.i82.i = phi i32 [ %i.jm, %bb.o ], [ %i.w, %.lr.ph.i76.i ] ; 5 uses
  %i.je = sdiv i32 %.021.us.i82.i, 64
  %i.jf = srem i32 %.021.us.i82.i, 64
  %i.jg = sext i32 %i.je to i64
  %i.jh = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jg
  %i.ji = load i64, ptr %i.jh, align 8
  %i.jj = zext nneg i32 %i.jf to i64
  %i.jk = shl nuw i64 1, %i.jj
  %i.jl = and i64 %i.jk, %i.ji
  %.not20.us.i83.i = icmp eq i64 %i.jl, 0
  %i.jm = add nuw i32 %.021.us.i82.i, 1           ; 3 uses
  br i1 %.not20.us.i83.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us.i81.i
  %i.jn = sext i32 %.021.us.i82.i to i64          ; 2 uses
  %i.jo = getelementptr inbounds [8 x i8], ptr %3, i64 %i.jn
  %i.jp = load i64, ptr %i.jo, align 8            ; 2 uses
  %i.jq = add i64 %i.jp, %2                       ; 4 uses
  %i.jr = and i64 %i.jq, 3
  %i.js = icmp eq i64 %i.jr, 1
  %i.jt = zext i1 %i.js to i64
  %i.ju = xor i64 %i.jq, %i.jp
  %i.jv = xor i64 %i.jq, %2
  %i.jw = and i64 %i.jv, -9223372036854775808
  %i.jx = and i64 %i.jw, %i.ju
  %i.jy = ashr i64 %i.jq, 1
  %i.jz = xor i64 %i.jx, %i.jy
  %i.ka = add i64 %i.jz, %i.jt
  %i.kb = getelementptr inbounds [8 x i8], ptr %0, i64 %i.jn
  store i64 %i.ka, ptr %i.kb, align 8
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.split.us.i81.i
  %i.kc = shl i32 %.021.us.i82.i, 3
  %i.kd = shl i32 %i.jm, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %i.kc, i32 noundef %i.kd) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %exitcond23.not.i84.i = icmp eq i32 %i.jm, %i.d
  br i1 %exitcond23.not.i84.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.us.i81.i, !llvm.loop !12

.lr.ph.split.i78.i:                               ; preds = %.lr.ph.split.i78.i.preheader105, %.lr.ph.split.i78.i
  %.021.i79.i = phi i32 [ %i.kt, %.lr.ph.split.i78.i ], [ %.021.i79.i.ph, %.lr.ph.split.i78.i.preheader105 ] ; 2 uses
  %i.ke = sext i32 %.021.i79.i to i64             ; 2 uses
  %i.kf = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ke
  %i.kg = load i64, ptr %i.kf, align 8            ; 2 uses
  %i.kh = add i64 %i.kg, %2                       ; 4 uses
  %i.ki = and i64 %i.kh, 3
  %i.kj = icmp eq i64 %i.ki, 1
  %i.kk = zext i1 %i.kj to i64
  %i.kl = xor i64 %i.kh, %i.kg
  %i.km = xor i64 %i.kh, %2
  %i.kn = and i64 %i.km, -9223372036854775808
  %i.ko = and i64 %i.kn, %i.kl
  %i.kp = ashr i64 %i.kh, 1
  %i.kq = xor i64 %i.ko, %i.kp
  %i.kr = add i64 %i.kq, %i.kk
  %i.ks = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ke
  store i64 %i.kr, ptr %i.ks, align 8
  %i.kt = add i32 %.021.i79.i, 1                  ; 2 uses
  %exitcond.not.i80.i = icmp eq i32 %i.kt, %i.d
  br i1 %exitcond.not.i80.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i78.i, !llvm.loop !1764

vext_vx_rm_1.exit.i:                              ; preds = %.lr.ph.split.i68.i.prol.loopexit, %.lr.ph.split.i68.i, %bb.l, %.lr.ph.split.i58.i, %bb.i, %.lr.ph.split.i.i, %bb.f, %.lr.ph.split.i78.i, %bb.o, %middle.block, %middle.block54, %middle.block73, %middle.block91
  store i32 0, ptr %i.v, align 4
  %i.ku = shl i32 %i.d, 3
  %.fr.i = freeze i32 %i.q
  %i.kv = and i32 %.fr.i, -8
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.ku, i32 noundef %i.kv) #17
  br label %vext_vx_rm_2.exit

vext_vx_rm_2.exit:                                ; preds = %bb.b, %vext_vx_rm_1.exit.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vaaddu_vv_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.c = ptrtoaddr ptr %3 to i64                  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.e = load i32, ptr %i.d, align 8              ; 24 uses
  %i.f = getelementptr i8, ptr %4, i64 4608
  %.val.i = load i64, ptr %i.f, align 16
  %i.g = shl i32 %5, 3
  %i.h = and i32 %i.g, 2040
  %i.i = add nuw nsw i32 %i.h, 8
  %i.j = trunc i64 %.val.i to i32
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 7
  %i.m = shl i32 %5, 18
  %i.n = ashr i32 %i.m, 29
  %i.o = sub nsw i32 %i.n, %i.l
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = shl nuw nsw i32 %i.i, %i.p
  %i.r = lshr i32 %5, 14
  %i.s = and i32 %i.r, 1
  %i.t = lshr i32 %5, 16
  %i.u = and i32 %i.t, 1                          ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4              ; 34 uses
  %.not.i = icmp ult i32 %i.w, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.v, align 4
  br label %vext_vv_rm_2.exit

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 4624
  %i.y = load i8, ptr %i.x, align 16
  %i.z = and i32 %5, 1024
  %.not.i77.i = icmp eq i32 %i.z, 0               ; 4 uses
  switch i8 %i.y, label %.lr.ph.i76.i [
    i8 0, label %.lr.ph.i.i
    i8 1, label %.lr.ph.i56.i
    i8 2, label %.lr.ph.i66.i
  ]

.lr.ph.i.i:                                       ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i.i, label %iter.check107

iter.check107:                                    ; preds = %.lr.ph.i.i
  %i.aa = sub i32 %i.e, %i.w                      ; 7 uses
  %min.iters.check91 = icmp ult i32 %i.aa, 4
  %i.ab = add i32 %i.e, -1
  %i.ac = icmp slt i32 %i.ab, %i.w
  %or.cond = or i1 %min.iters.check91, %i.ac
  br i1 %or.cond, label %.lr.ph.split.i.i.preheader, label %vector.memcheck92

vector.memcheck92:                                ; preds = %iter.check107
  %i.ad = sub i64 %i.b, %i.a
  %diff.check93 = icmp ugt i64 %i.ad, -16
  %i.ae = sub i64 %i.c, %i.a
  %diff.check94 = icmp ugt i64 %i.ae, -16
  %conflict.rdx95 = or i1 %diff.check93, %diff.check94
  br i1 %conflict.rdx95, label %.lr.ph.split.i.i.preheader, label %vector.main.loop.iter.check96

vector.main.loop.iter.check96:                    ; preds = %vector.memcheck92
  %min.iters.check97 = icmp ult i32 %i.aa, 16
  br i1 %min.iters.check97, label %vec.epilog.ph111, label %vector.ph98

vector.ph98:                                      ; preds = %vector.main.loop.iter.check96
  %i.af = and i32 %i.aa, 12
  %n.vec99 = and i32 %i.aa, -16                   ; 4 uses
  %i.ag = add i32 %i.w, %n.vec99
  br label %vector.body100

vector.body100:                                   ; preds = %vector.ph98, %vector.body100
  %index101 = phi i32 [ 0, %vector.ph98 ], [ %index.next104, %vector.body100 ] ; 2 uses
  %i.ah = add i32 %i.w, %index101
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  %wide.load102 = load <16 x i8>, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds i8, ptr %3, i64 %i.ai
  %wide.load103 = load <16 x i8>, ptr %i.ak, align 1
  %i.al = zext <16 x i8> %wide.load103 to <16 x i16>
  %i.am = zext <16 x i8> %wide.load102 to <16 x i16>
  %i.an = add nuw nsw <16 x i16> %i.al, %i.am     ; 2 uses
  %i.ao = lshr <16 x i16> %i.an, splat (i16 1)
  %i.ap = and <16 x i16> %i.an, splat (i16 1)
  %i.aq = add nuw nsw <16 x i16> %i.ap, %i.ao
  %i.ar = trunc <16 x i16> %i.aq to <16 x i8>
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ai
  store <16 x i8> %i.ar, ptr %i.as, align 1
  %index.next104 = add nuw i32 %index101, 16      ; 2 uses
  %i.at = icmp eq i32 %index.next104, %n.vec99
  br i1 %i.at, label %middle.block105, label %vector.body100, !llvm.loop !1765

middle.block105:                                  ; preds = %vector.body100
  %cmp.n106 = icmp eq i32 %i.aa, %n.vec99
  br i1 %cmp.n106, label %vext_vv_rm_1.exit.i, label %vec.epilog.iter.check108

vec.epilog.iter.check108:                         ; preds = %middle.block105
  %min.epilog.iters.check110 = icmp eq i32 %i.af, 0
  br i1 %min.epilog.iters.check110, label %.lr.ph.split.i.i.preheader, label %vec.epilog.ph111, !prof !27

vec.epilog.ph111:                                 ; preds = %vector.main.loop.iter.check96, %vec.epilog.iter.check108
  %vec.epilog.resume.val112 = phi i32 [ %n.vec99, %vec.epilog.iter.check108 ], [ 0, %vector.main.loop.iter.check96 ]
  %n.vec113 = and i32 %i.aa, -4                   ; 3 uses
  %i.au = add i32 %i.w, %n.vec113
  br label %vec.epilog.vector.body114

vec.epilog.vector.body114:                        ; preds = %vec.epilog.vector.body114, %vec.epilog.ph111
  %index115 = phi i32 [ %vec.epilog.resume.val112, %vec.epilog.ph111 ], [ %index.next118, %vec.epilog.vector.body114 ] ; 2 uses
  %i.av = add i32 %i.w, %index115
  %i.aw = sext i32 %i.av to i64                   ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %2, i64 %i.aw
  %wide.load116 = load <4 x i8>, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds i8, ptr %3, i64 %i.aw
  %wide.load117 = load <4 x i8>, ptr %i.ay, align 1
  %i.az = zext <4 x i8> %wide.load117 to <4 x i16>
  %i.ba = zext <4 x i8> %wide.load116 to <4 x i16>
  %i.bb = add nuw nsw <4 x i16> %i.az, %i.ba      ; 2 uses
  %i.bc = lshr <4 x i16> %i.bb, splat (i16 1)
  %i.bd = and <4 x i16> %i.bb, splat (i16 1)
  %i.be = add nuw nsw <4 x i16> %i.bd, %i.bc
  %i.bf = trunc <4 x i16> %i.be to <4 x i8>
  %i.bg = getelementptr inbounds i8, ptr %0, i64 %i.aw
  store <4 x i8> %i.bf, ptr %i.bg, align 1
  %index.next118 = add nuw i32 %index115, 4       ; 2 uses
  %i.bh = icmp eq i32 %index.next118, %n.vec113
  br i1 %i.bh, label %vec.epilog.middle.block119, label %vec.epilog.vector.body114, !llvm.loop !1766

vec.epilog.middle.block119:                       ; preds = %vec.epilog.vector.body114
  %cmp.n120 = icmp eq i32 %i.aa, %n.vec113
  br i1 %cmp.n120, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %iter.check107, %vector.memcheck92, %vec.epilog.iter.check108, %vec.epilog.middle.block119
  %.021.i.i.ph = phi i32 [ %i.w, %iter.check107 ], [ %i.w, %vector.memcheck92 ], [ %i.ag, %vec.epilog.iter.check108 ], [ %i.au, %vec.epilog.middle.block119 ] ; 5 uses
  %i.bi = sub i32 %i.e, %.021.i.i.ph
  %.neg141 = add i32 %.021.i.i.ph, 1
  %xtraiter136 = and i32 %i.bi, 1
  %lcmp.mod137.not = icmp eq i32 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %.lr.ph.split.i.i.prol.loopexit, label %.lr.ph.split.i.i.prol

.lr.ph.split.i.i.prol:                            ; preds = %.lr.ph.split.i.i.preheader
  %i.bj = sext i32 %.021.i.i.ph to i64            ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = getelementptr inbounds i8, ptr %3, i64 %i.bj
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i16
  %i.bp = zext i8 %i.bl to i16
  %i.bq = add nuw nsw i16 %i.bo, %i.bp            ; 2 uses
  %i.br = lshr i16 %i.bq, 1
  %i.bs = and i16 %i.bq, 1
  %i.bt = add nuw nsw i16 %i.bs, %i.br
  %i.bu = trunc i16 %i.bt to i8
  %i.bv = getelementptr inbounds i8, ptr %0, i64 %i.bj
  store i8 %i.bu, ptr %i.bv, align 1
  %i.bw = add i32 %.021.i.i.ph, 1
  br label %.lr.ph.split.i.i.prol.loopexit

.lr.ph.split.i.i.prol.loopexit:                   ; preds = %.lr.ph.split.i.i.prol, %.lr.ph.split.i.i.preheader
  %.021.i.i.unr = phi i32 [ %.021.i.i.ph, %.lr.ph.split.i.i.preheader ], [ %i.bw, %.lr.ph.split.i.i.prol ]
  %i.bx = icmp eq i32 %i.e, %.neg141
  br i1 %i.bx, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.f
  %.021.us.i.i = phi i32 [ %i.cg, %bb.f ], [ %i.w, %.lr.ph.i.i ] ; 5 uses
  %i.by = sdiv i32 %.021.us.i.i, 64
  %i.bz = srem i32 %.021.us.i.i, 64
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = zext nneg i32 %i.bz to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.ce, %i.cc
  %.not20.us.i.i = icmp eq i64 %i.cf, 0
  %i.cg = add nuw i32 %.021.us.i.i, 1             ; 3 uses
  br i1 %.not20.us.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.i.i
  %i.ch = sext i32 %.021.us.i.i to i64            ; 3 uses
  %i.ci = getelementptr inbounds i8, ptr %2, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = getelementptr inbounds i8, ptr %3, i64 %i.ch
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i16
  %i.cn = zext i8 %i.cj to i16
  %i.co = add nuw nsw i16 %i.cm, %i.cn            ; 2 uses
  %i.cp = lshr i16 %i.co, 1
  %i.cq = and i16 %i.co, 1
  %i.cr = add nuw nsw i16 %i.cq, %i.cp
  %i.cs = trunc i16 %i.cr to i8
  %i.ct = getelementptr inbounds i8, ptr %0, i64 %i.ch
  store i8 %i.cs, ptr %i.ct, align 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.us.i.i
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %.021.us.i.i, i32 noundef %i.cg) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %exitcond23.not.i.i = icmp eq i32 %i.cg, %i.e
  br i1 %exitcond23.not.i.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !11

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.prol.loopexit, %.lr.ph.split.i.i
  %.021.i.i = phi i32 [ %i.dv, %.lr.ph.split.i.i ], [ %.021.i.i.unr, %.lr.ph.split.i.i.prol.loopexit ] ; 3 uses
  %i.cu = sext i32 %.021.i.i to i64               ; 3 uses
  %i.cv = getelementptr inbounds i8, ptr %2, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = getelementptr inbounds i8, ptr %3, i64 %i.cu
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = zext i8 %i.cy to i16
  %i.da = zext i8 %i.cw to i16
  %i.db = add nuw nsw i16 %i.cz, %i.da            ; 2 uses
  %i.dc = lshr i16 %i.db, 1
  %i.dd = and i16 %i.db, 1
  %i.de = add nuw nsw i16 %i.dd, %i.dc
  %i.df = trunc i16 %i.de to i8
  %i.dg = getelementptr inbounds i8, ptr %0, i64 %i.cu
  store i8 %i.df, ptr %i.dg, align 1
  %i.dh = add i32 %.021.i.i, 1
  %i.di = sext i32 %i.dh to i64                   ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %2, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = getelementptr inbounds i8, ptr %3, i64 %i.di
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i16
  %i.do = zext i8 %i.dk to i16
  %i.dp = add nuw nsw i16 %i.dn, %i.do            ; 2 uses
  %i.dq = lshr i16 %i.dp, 1
  %i.dr = and i16 %i.dp, 1
  %i.ds = add nuw nsw i16 %i.dr, %i.dq
  %i.dt = trunc i16 %i.ds to i8
  %i.du = getelementptr inbounds i8, ptr %0, i64 %i.di
  store i8 %i.dt, ptr %i.du, align 1
  %i.dv = add i32 %.021.i.i, 2                    ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i32 %i.dv, %i.e
  br i1 %exitcond.not.i.i.1, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i.i, !llvm.loop !1767

.lr.ph.i56.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i61.i, label %iter.check71

iter.check71:                                     ; preds = %.lr.ph.i56.i
  %i.dw = sub i32 %i.e, %i.w                      ; 7 uses
  %min.iters.check55 = icmp ult i32 %i.dw, 4
  %i.dx = add i32 %i.e, -1
  %i.dy = icmp slt i32 %i.dx, %i.w
  %or.cond124 = or i1 %min.iters.check55, %i.dy
  br i1 %or.cond124, label %.lr.ph.split.i58.i.preheader, label %vector.memcheck56

vector.memcheck56:                                ; preds = %iter.check71
  %i.dz = sub i64 %i.b, %i.a
  %diff.check57 = icmp ugt i64 %i.dz, -16
  %i.ea = sub i64 %i.c, %i.a
  %diff.check58 = icmp ugt i64 %i.ea, -16
  %conflict.rdx59 = or i1 %diff.check57, %diff.check58
  br i1 %conflict.rdx59, label %.lr.ph.split.i58.i.preheader, label %vector.main.loop.iter.check60

vector.main.loop.iter.check60:                    ; preds = %vector.memcheck56
  %min.iters.check61 = icmp ult i32 %i.dw, 16
  br i1 %min.iters.check61, label %vec.epilog.ph75, label %vector.ph62

vector.ph62:                                      ; preds = %vector.main.loop.iter.check60
  %i.eb = and i32 %i.dw, 12
  %n.vec63 = and i32 %i.dw, -16                   ; 4 uses
  %i.ec = add i32 %i.w, %n.vec63
  br label %vector.body64

vector.body64:                                    ; preds = %vector.ph62, %vector.body64
  %index65 = phi i32 [ 0, %vector.ph62 ], [ %index.next68, %vector.body64 ] ; 2 uses
  %i.ed = add i32 %i.w, %index65
  %i.ee = sext i32 %i.ed to i64                   ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %2, i64 %i.ee
  %wide.load66 = load <16 x i8>, ptr %i.ef, align 1
  %i.eg = getelementptr inbounds i8, ptr %3, i64 %i.ee
  %wide.load67 = load <16 x i8>, ptr %i.eg, align 1
  %i.eh = zext <16 x i8> %wide.load67 to <16 x i16>
  %i.ei = zext <16 x i8> %wide.load66 to <16 x i16>
  %i.ej = add nuw nsw <16 x i16> %i.eh, %i.ei     ; 2 uses
  %i.ek = lshr <16 x i16> %i.ej, splat (i16 1)
  %i.el = and <16 x i16> %i.ej, splat (i16 3)
  %i.em = icmp eq <16 x i16> %i.el, splat (i16 3)
  %i.en = zext <16 x i1> %i.em to <16 x i16>
  %i.eo = add nuw nsw <16 x i16> %i.ek, %i.en
  %i.ep = trunc <16 x i16> %i.eo to <16 x i8>
  %i.eq = getelementptr inbounds i8, ptr %0, i64 %i.ee
  store <16 x i8> %i.ep, ptr %i.eq, align 1
  %index.next68 = add nuw i32 %index65, 16        ; 2 uses
  %i.er = icmp eq i32 %index.next68, %n.vec63
  br i1 %i.er, label %middle.block69, label %vector.body64, !llvm.loop !1768

middle.block69:                                   ; preds = %vector.body64
  %cmp.n70 = icmp eq i32 %i.dw, %n.vec63
  br i1 %cmp.n70, label %vext_vv_rm_1.exit.i, label %vec.epilog.iter.check72

vec.epilog.iter.check72:                          ; preds = %middle.block69
  %min.epilog.iters.check74 = icmp eq i32 %i.eb, 0
  br i1 %min.epilog.iters.check74, label %.lr.ph.split.i58.i.preheader, label %vec.epilog.ph75, !prof !27

vec.epilog.ph75:                                  ; preds = %vector.main.loop.iter.check60, %vec.epilog.iter.check72
  %vec.epilog.resume.val76 = phi i32 [ %n.vec63, %vec.epilog.iter.check72 ], [ 0, %vector.main.loop.iter.check60 ]
  %n.vec77 = and i32 %i.dw, -4                    ; 3 uses
  %i.es = add i32 %i.w, %n.vec77
  br label %vec.epilog.vector.body78

vec.epilog.vector.body78:                         ; preds = %vec.epilog.vector.body78, %vec.epilog.ph75
  %index79 = phi i32 [ %vec.epilog.resume.val76, %vec.epilog.ph75 ], [ %index.next82, %vec.epilog.vector.body78 ] ; 2 uses
  %i.et = add i32 %i.w, %index79
  %i.eu = sext i32 %i.et to i64                   ; 3 uses
  %i.ev = getelementptr inbounds i8, ptr %2, i64 %i.eu
  %wide.load80 = load <4 x i8>, ptr %i.ev, align 1
  %i.ew = getelementptr inbounds i8, ptr %3, i64 %i.eu
  %wide.load81 = load <4 x i8>, ptr %i.ew, align 1
  %i.ex = zext <4 x i8> %wide.load81 to <4 x i16>
  %i.ey = zext <4 x i8> %wide.load80 to <4 x i16>
  %i.ez = add nuw nsw <4 x i16> %i.ex, %i.ey      ; 2 uses
  %i.fa = lshr <4 x i16> %i.ez, splat (i16 1)
  %i.fb = and <4 x i16> %i.ez, splat (i16 3)
  %i.fc = icmp eq <4 x i16> %i.fb, splat (i16 3)
  %i.fd = zext <4 x i1> %i.fc to <4 x i16>
  %i.fe = add nuw nsw <4 x i16> %i.fa, %i.fd
  %i.ff = trunc <4 x i16> %i.fe to <4 x i8>
  %i.fg = getelementptr inbounds i8, ptr %0, i64 %i.eu
  store <4 x i8> %i.ff, ptr %i.fg, align 1
  %index.next82 = add nuw i32 %index79, 4         ; 2 uses
  %i.fh = icmp eq i32 %index.next82, %n.vec77
  br i1 %i.fh, label %vec.epilog.middle.block83, label %vec.epilog.vector.body78, !llvm.loop !1769

vec.epilog.middle.block83:                        ; preds = %vec.epilog.vector.body78
  %cmp.n84 = icmp eq i32 %i.dw, %n.vec77
  br i1 %cmp.n84, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i58.i.preheader

.lr.ph.split.i58.i.preheader:                     ; preds = %iter.check71, %vector.memcheck56, %vec.epilog.iter.check72, %vec.epilog.middle.block83
  %.021.i59.i.ph = phi i32 [ %i.w, %iter.check71 ], [ %i.w, %vector.memcheck56 ], [ %i.ec, %vec.epilog.iter.check72 ], [ %i.es, %vec.epilog.middle.block83 ] ; 5 uses
  %i.fi = sub i32 %i.e, %.021.i59.i.ph
  %.neg140 = add i32 %.021.i59.i.ph, 1
  %xtraiter134 = and i32 %i.fi, 1
  %lcmp.mod135.not = icmp eq i32 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %.lr.ph.split.i58.i.prol.loopexit, label %.lr.ph.split.i58.i.prol

.lr.ph.split.i58.i.prol:                          ; preds = %.lr.ph.split.i58.i.preheader
  %i.fj = sext i32 %.021.i59.i.ph to i64          ; 3 uses
  %i.fk = getelementptr inbounds i8, ptr %2, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = getelementptr inbounds i8, ptr %3, i64 %i.fj
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = zext i8 %i.fn to i16
  %i.fp = zext i8 %i.fl to i16
  %i.fq = add nuw nsw i16 %i.fo, %i.fp            ; 2 uses
  %i.fr = lshr i16 %i.fq, 1
  %i.fs = and i16 %i.fq, 3
  %i.ft = icmp eq i16 %i.fs, 3
  %i.fu = zext i1 %i.ft to i16
  %i.fv = add nuw nsw i16 %i.fr, %i.fu
  %i.fw = trunc i16 %i.fv to i8
  %i.fx = getelementptr inbounds i8, ptr %0, i64 %i.fj
  store i8 %i.fw, ptr %i.fx, align 1
  %i.fy = add i32 %.021.i59.i.ph, 1
  br label %.lr.ph.split.i58.i.prol.loopexit

.lr.ph.split.i58.i.prol.loopexit:                 ; preds = %.lr.ph.split.i58.i.prol, %.lr.ph.split.i58.i.preheader
  %.021.i59.i.unr = phi i32 [ %.021.i59.i.ph, %.lr.ph.split.i58.i.preheader ], [ %i.fy, %.lr.ph.split.i58.i.prol ]
  %i.fz = icmp eq i32 %i.e, %.neg140
  br i1 %i.fz, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i58.i

.lr.ph.split.us.i61.i:                            ; preds = %.lr.ph.i56.i, %bb.i
  %.021.us.i62.i = phi i32 [ %i.gi, %bb.i ], [ %i.w, %.lr.ph.i56.i ] ; 5 uses
  %i.ga = sdiv i32 %.021.us.i62.i, 64
  %i.gb = srem i32 %.021.us.i62.i, 64
  %i.gc = sext i32 %i.ga to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gc
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = zext nneg i32 %i.gb to i64
  %i.gg = shl nuw i64 1, %i.gf
  %i.gh = and i64 %i.gg, %i.ge
  %.not20.us.i63.i = icmp eq i64 %i.gh, 0
  %i.gi = add nuw i32 %.021.us.i62.i, 1           ; 3 uses
  br i1 %.not20.us.i63.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.i61.i
  %i.gj = sext i32 %.021.us.i62.i to i64          ; 3 uses
  %i.gk = getelementptr inbounds i8, ptr %2, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1
  %i.gm = getelementptr inbounds i8, ptr %3, i64 %i.gj
  %i.gn = load i8, ptr %i.gm, align 1
  %i.go = zext i8 %i.gn to i16
  %i.gp = zext i8 %i.gl to i16
  %i.gq = add nuw nsw i16 %i.go, %i.gp            ; 2 uses
  %i.gr = lshr i16 %i.gq, 1
  %i.gs = and i16 %i.gq, 3
  %i.gt = icmp eq i16 %i.gs, 3
  %i.gu = zext i1 %i.gt to i16
  %i.gv = add nuw nsw i16 %i.gr, %i.gu
  %i.gw = trunc i16 %i.gv to i8
  %i.gx = getelementptr inbounds i8, ptr %0, i64 %i.gj
  store i8 %i.gw, ptr %i.gx, align 1
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.us.i61.i
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %.021.us.i62.i, i32 noundef %i.gi) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %exitcond23.not.i64.i = icmp eq i32 %i.gi, %i.e
  br i1 %exitcond23.not.i64.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.us.i61.i, !llvm.loop !11

.lr.ph.split.i58.i:                               ; preds = %.lr.ph.split.i58.i.prol.loopexit, %.lr.ph.split.i58.i
  %.021.i59.i = phi i32 [ %i.id, %.lr.ph.split.i58.i ], [ %.021.i59.i.unr, %.lr.ph.split.i58.i.prol.loopexit ] ; 3 uses
  %i.gy = sext i32 %.021.i59.i to i64             ; 3 uses
  %i.gz = getelementptr inbounds i8, ptr %2, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = getelementptr inbounds i8, ptr %3, i64 %i.gy
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = zext i8 %i.hc to i16
  %i.he = zext i8 %i.ha to i16
  %i.hf = add nuw nsw i16 %i.hd, %i.he            ; 2 uses
  %i.hg = lshr i16 %i.hf, 1
  %i.hh = and i16 %i.hf, 3
  %i.hi = icmp eq i16 %i.hh, 3
  %i.hj = zext i1 %i.hi to i16
  %i.hk = add nuw nsw i16 %i.hg, %i.hj
  %i.hl = trunc i16 %i.hk to i8
  %i.hm = getelementptr inbounds i8, ptr %0, i64 %i.gy
  store i8 %i.hl, ptr %i.hm, align 1
  %i.hn = add i32 %.021.i59.i, 1
  %i.ho = sext i32 %i.hn to i64                   ; 3 uses
  %i.hp = getelementptr inbounds i8, ptr %2, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1
  %i.hr = getelementptr inbounds i8, ptr %3, i64 %i.ho
  %i.hs = load i8, ptr %i.hr, align 1
  %i.ht = zext i8 %i.hs to i16
  %i.hu = zext i8 %i.hq to i16
  %i.hv = add nuw nsw i16 %i.ht, %i.hu            ; 2 uses
  %i.hw = lshr i16 %i.hv, 1
  %i.hx = and i16 %i.hv, 3
  %i.hy = icmp eq i16 %i.hx, 3
  %i.hz = zext i1 %i.hy to i16
  %i.ia = add nuw nsw i16 %i.hw, %i.hz
  %i.ib = trunc i16 %i.ia to i8
  %i.ic = getelementptr inbounds i8, ptr %0, i64 %i.ho
  store i8 %i.ib, ptr %i.ic, align 1
  %i.id = add i32 %.021.i59.i, 2                  ; 2 uses
  %exitcond.not.i60.i.1 = icmp eq i32 %i.id, %i.e
  br i1 %exitcond.not.i60.i.1, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i58.i, !llvm.loop !1770

.lr.ph.i66.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i71.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph.i66.i
  %i.ie = sub i32 %i.e, %i.w                      ; 7 uses
  %min.iters.check = icmp ult i32 %i.ie, 8
  %i.if = add i32 %i.e, -1
  %i.ig = icmp slt i32 %i.if, %i.w
  %or.cond126 = or i1 %min.iters.check, %i.ig
  br i1 %or.cond126, label %.lr.ph.split.i68.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ih = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.ih, -32
  %i.ii = sub i64 %i.c, %i.a
  %diff.check39 = icmp ugt i64 %i.ii, -32
  %conflict.rdx = or i1 %diff.check, %diff.check39
  br i1 %conflict.rdx, label %.lr.ph.split.i68.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i32 %i.ie, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ij = and i32 %i.ie, 24
  %n.vec = and i32 %i.ie, -32                     ; 4 uses
  %i.ik = add i32 %i.w, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.il = add i32 %i.w, %index
  %i.im = sext i32 %i.il to i64                   ; 3 uses
  %i.in = getelementptr inbounds i8, ptr %2, i64 %i.im ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %wide.load = load <16 x i8>, ptr %i.in, align 1
  %wide.load41 = load <16 x i8>, ptr %i.io, align 1
  %i.ip = getelementptr inbounds i8, ptr %3, i64 %i.im ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %wide.load42 = load <16 x i8>, ptr %i.ip, align 1
  %wide.load43 = load <16 x i8>, ptr %i.iq, align 1
  %i.ir = zext <16 x i8> %wide.load42 to <16 x i16>
  %i.is = zext <16 x i8> %wide.load43 to <16 x i16>
  %i.it = zext <16 x i8> %wide.load to <16 x i16>
  %i.iu = zext <16 x i8> %wide.load41 to <16 x i16>
  %i.iv = add nuw nsw <16 x i16> %i.ir, %i.it
  %i.iw = add nuw nsw <16 x i16> %i.is, %i.iu
  %i.ix = lshr <16 x i16> %i.iv, splat (i16 1)
  %i.iy = lshr <16 x i16> %i.iw, splat (i16 1)
  %i.iz = trunc nuw <16 x i16> %i.ix to <16 x i8>
  %i.ja = trunc nuw <16 x i16> %i.iy to <16 x i8>
  %i.jb = getelementptr inbounds i8, ptr %0, i64 %i.im ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <16 x i8> %i.iz, ptr %i.jb, align 1
  store <16 x i8> %i.ja, ptr %i.jc, align 1
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.jd = icmp eq i32 %index.next, %n.vec
  br i1 %i.jd, label %middle.block, label %vector.body, !llvm.loop !1771

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.ie, %n.vec
  br i1 %cmp.n, label %vext_vv_rm_1.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ij, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.i68.i.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i32 %i.ie, -8                    ; 3 uses
  %i.je = add i32 %i.w, %n.vec44
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 2 uses
  %i.jf = add i32 %i.w, %index45
  %i.jg = sext i32 %i.jf to i64                   ; 3 uses
  %i.jh = getelementptr inbounds i8, ptr %2, i64 %i.jg
  %wide.load46 = load <8 x i8>, ptr %i.jh, align 1
  %i.ji = getelementptr inbounds i8, ptr %3, i64 %i.jg
  %wide.load47 = load <8 x i8>, ptr %i.ji, align 1
  %i.jj = zext <8 x i8> %wide.load47 to <8 x i16>
  %i.jk = zext <8 x i8> %wide.load46 to <8 x i16>
  %i.jl = add nuw nsw <8 x i16> %i.jj, %i.jk
  %i.jm = lshr <8 x i16> %i.jl, splat (i16 1)
  %i.jn = trunc nuw <8 x i16> %i.jm to <8 x i8>
  %i.jo = getelementptr inbounds i8, ptr %0, i64 %i.jg
  store <8 x i8> %i.jn, ptr %i.jo, align 1
  %index.next48 = add nuw i32 %index45, 8         ; 2 uses
  %i.jp = icmp eq i32 %index.next48, %n.vec44
  br i1 %i.jp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1772

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i32 %i.ie, %n.vec44
  br i1 %cmp.n49, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i68.i.preheader

.lr.ph.split.i68.i.preheader:                     ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.021.i69.i.ph = phi i32 [ %i.w, %iter.check ], [ %i.w, %vector.memcheck ], [ %i.ik, %vec.epilog.iter.check ], [ %i.je, %vec.epilog.middle.block ] ; 5 uses
  %i.jq = sub i32 %i.e, %.021.i69.i.ph
  %.neg = add i32 %.021.i69.i.ph, 1
  %xtraiter = and i32 %i.jq, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i68.i.prol.loopexit, label %.lr.ph.split.i68.i.prol

.lr.ph.split.i68.i.prol:                          ; preds = %.lr.ph.split.i68.i.preheader
  %i.jr = sext i32 %.021.i69.i.ph to i64          ; 3 uses
  %i.js = getelementptr inbounds i8, ptr %2, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1
  %i.ju = getelementptr inbounds i8, ptr %3, i64 %i.jr
  %i.jv = load i8, ptr %i.ju, align 1
  %i.jw = zext i8 %i.jv to i16
  %i.jx = zext i8 %i.jt to i16
  %i.jy = add nuw nsw i16 %i.jw, %i.jx
  %i.jz = lshr i16 %i.jy, 1
  %i.ka = trunc nuw i16 %i.jz to i8
  %i.kb = getelementptr inbounds i8, ptr %0, i64 %i.jr
  store i8 %i.ka, ptr %i.kb, align 1
  %i.kc = add i32 %.021.i69.i.ph, 1
  br label %.lr.ph.split.i68.i.prol.loopexit

.lr.ph.split.i68.i.prol.loopexit:                 ; preds = %.lr.ph.split.i68.i.prol, %.lr.ph.split.i68.i.preheader
  %.021.i69.i.unr = phi i32 [ %.021.i69.i.ph, %.lr.ph.split.i68.i.preheader ], [ %i.kc, %.lr.ph.split.i68.i.prol ]
  %i.kd = icmp eq i32 %i.e, %.neg
  br i1 %i.kd, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i68.i

.lr.ph.split.us.i71.i:                            ; preds = %.lr.ph.i66.i, %bb.l
  %.021.us.i72.i = phi i32 [ %i.km, %bb.l ], [ %i.w, %.lr.ph.i66.i ] ; 5 uses
  %i.ke = sdiv i32 %.021.us.i72.i, 64
  %i.kf = srem i32 %.021.us.i72.i, 64
  %i.kg = sext i32 %i.ke to i64
  %i.kh = getelementptr inbounds [8 x i8], ptr %1, i64 %i.kg
  %i.ki = load i64, ptr %i.kh, align 8
  %i.kj = zext nneg i32 %i.kf to i64
  %i.kk = shl nuw i64 1, %i.kj
  %i.kl = and i64 %i.kk, %i.ki
  %.not20.us.i73.i = icmp eq i64 %i.kl, 0
  %i.km = add nuw i32 %.021.us.i72.i, 1           ; 3 uses
  br i1 %.not20.us.i73.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us.i71.i
  %i.kn = sext i32 %.021.us.i72.i to i64          ; 3 uses
  %i.ko = getelementptr inbounds i8, ptr %2, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1
  %i.kq = getelementptr inbounds i8, ptr %3, i64 %i.kn
  %i.kr = load i8, ptr %i.kq, align 1
  %i.ks = zext i8 %i.kr to i16
  %i.kt = zext i8 %i.kp to i16
  %i.ku = add nuw nsw i16 %i.ks, %i.kt
  %i.kv = lshr i16 %i.ku, 1
  %i.kw = trunc nuw i16 %i.kv to i8
  %i.kx = getelementptr inbounds i8, ptr %0, i64 %i.kn
  store i8 %i.kw, ptr %i.kx, align 1
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.us.i71.i
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %.021.us.i72.i, i32 noundef %i.km) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %exitcond23.not.i74.i = icmp eq i32 %i.km, %i.e
  br i1 %exitcond23.not.i74.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.us.i71.i, !llvm.loop !11

.lr.ph.split.i68.i:                               ; preds = %.lr.ph.split.i68.i.prol.loopexit, %.lr.ph.split.i68.i
  %.021.i69.i = phi i32 [ %i.lv, %.lr.ph.split.i68.i ], [ %.021.i69.i.unr, %.lr.ph.split.i68.i.prol.loopexit ] ; 3 uses
  %i.ky = sext i32 %.021.i69.i to i64             ; 3 uses
  %i.kz = getelementptr inbounds i8, ptr %2, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1
  %i.lb = getelementptr inbounds i8, ptr %3, i64 %i.ky
  %i.lc = load i8, ptr %i.lb, align 1
  %i.ld = zext i8 %i.lc to i16
  %i.le = zext i8 %i.la to i16
  %i.lf = add nuw nsw i16 %i.ld, %i.le
  %i.lg = lshr i16 %i.lf, 1
  %i.lh = trunc nuw i16 %i.lg to i8
  %i.li = getelementptr inbounds i8, ptr %0, i64 %i.ky
  store i8 %i.lh, ptr %i.li, align 1
  %i.lj = add i32 %.021.i69.i, 1
  %i.lk = sext i32 %i.lj to i64                   ; 3 uses
  %i.ll = getelementptr inbounds i8, ptr %2, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1
  %i.ln = getelementptr inbounds i8, ptr %3, i64 %i.lk
  %i.lo = load i8, ptr %i.ln, align 1
  %i.lp = zext i8 %i.lo to i16
  %i.lq = zext i8 %i.lm to i16
  %i.lr = add nuw nsw i16 %i.lp, %i.lq
  %i.ls = lshr i16 %i.lr, 1
  %i.lt = trunc nuw i16 %i.ls to i8
  %i.lu = getelementptr inbounds i8, ptr %0, i64 %i.lk
  store i8 %i.lt, ptr %i.lu, align 1
  %i.lv = add i32 %.021.i69.i, 2                  ; 2 uses
  %exitcond.not.i70.i.1 = icmp eq i32 %i.lv, %i.e
  br i1 %exitcond.not.i70.i.1, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i68.i, !llvm.loop !1773

.lr.ph.i76.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i81.i, label %.lr.ph.split.i78.i.preheader

.lr.ph.split.i78.i.preheader:                     ; preds = %.lr.ph.i76.i
  %i.lw = sub i32 %i.e, %i.w
  %.neg142 = add i32 %i.w, 1
  %xtraiter138 = and i32 %i.lw, 1
  %lcmp.mod139.not = icmp eq i32 %xtraiter138, 0
  br i1 %lcmp.mod139.not, label %.lr.ph.split.i78.i.prol.loopexit, label %.lr.ph.split.i78.i.prol

.lr.ph.split.i78.i.prol:                          ; preds = %.lr.ph.split.i78.i.preheader
  %i.lx = sext i32 %i.w to i64                    ; 3 uses
  %i.ly = getelementptr inbounds i8, ptr %2, i64 %i.lx
  %i.lz = load i8, ptr %i.ly, align 1
  %i.ma = getelementptr inbounds i8, ptr %3, i64 %i.lx
  %i.mb = load i8, ptr %i.ma, align 1
  %i.mc = zext i8 %i.mb to i64
  %i.md = zext i8 %i.lz to i64
  %i.me = add nuw nsw i64 %i.mc, %i.md            ; 2 uses
  %i.mf = lshr i64 %i.me, 1
  %i.mg = and i64 %i.me, 3
  %i.mh = icmp eq i64 %i.mg, 1
end_hunk_4
begin_hunk_5_@helper_vaaddu_vx_d:bb.a
  %i.gj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.gb
  store i64 %i.gi, ptr %i.gj, align 8
  %i.gk = add i32 %.021.i69.i.ph, 1
  br label %.lr.ph.split.i68.i.prol.loopexit

.lr.ph.split.i68.i.prol.loopexit:                 ; preds = %.lr.ph.split.i68.i.prol, %.lr.ph.split.i68.i.preheader113
  %.021.i69.i.unr = phi i32 [ %.021.i69.i.ph, %.lr.ph.split.i68.i.preheader113 ], [ %i.gk, %.lr.ph.split.i68.i.prol ]
  %i.gl = icmp eq i32 %i.d, %.neg
  br i1 %i.gl, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i68.i

.lr.ph.split.us.i71.i:                            ; preds = %.lr.ph.i66.i, %bb.l
  %.021.us.i72.i = phi i32 [ %i.gu, %bb.l ], [ %i.w, %.lr.ph.i66.i ] ; 5 uses
  %i.gm = sdiv i32 %.021.us.i72.i, 64
  %i.gn = srem i32 %.021.us.i72.i, 64
  %i.go = sext i32 %i.gm to i64
  %i.gp = getelementptr inbounds [8 x i8], ptr %1, i64 %i.go
  %i.gq = load i64, ptr %i.gp, align 8
  %i.gr = zext nneg i32 %i.gn to i64
  %i.gs = shl nuw i64 1, %i.gr
  %i.gt = and i64 %i.gs, %i.gq
  %.not20.us.i73.i = icmp eq i64 %i.gt, 0
  %i.gu = add nuw i32 %.021.us.i72.i, 1           ; 3 uses
  br i1 %.not20.us.i73.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us.i71.i
  %i.gv = sext i32 %.021.us.i72.i to i64          ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %3, i64 %i.gv
  %i.gx = load i64, ptr %i.gw, align 8            ; 2 uses
  %i.gy = add i64 %i.gx, %2                       ; 2 uses
  %i.gz = lshr i64 %i.gy, 1
  %i.ha = icmp ult i64 %i.gy, %i.gx
  %i.hb = select i1 %i.ha, i64 -9223372036854775808, i64 0
  %i.hc = or disjoint i64 %i.hb, %i.gz
  %i.hd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.gv
  store i64 %i.hc, ptr %i.hd, align 8
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.us.i71.i
  %i.he = shl i32 %.021.us.i72.i, 3
  %i.hf = shl i32 %i.gu, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %i.he, i32 noundef %i.hf) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %exitcond23.not.i74.i = icmp eq i32 %i.gu, %i.d
  br i1 %exitcond23.not.i74.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.us.i71.i, !llvm.loop !12

.lr.ph.split.i68.i:                               ; preds = %.lr.ph.split.i68.i.prol.loopexit, %.lr.ph.split.i68.i
  %.021.i69.i = phi i32 [ %i.hz, %.lr.ph.split.i68.i ], [ %.021.i69.i.unr, %.lr.ph.split.i68.i.prol.loopexit ] ; 3 uses
  %i.hg = sext i32 %.021.i69.i to i64             ; 2 uses
  %i.hh = getelementptr inbounds [8 x i8], ptr %3, i64 %i.hg
  %i.hi = load i64, ptr %i.hh, align 8            ; 2 uses
  %i.hj = add i64 %i.hi, %2                       ; 2 uses
  %i.hk = lshr i64 %i.hj, 1
  %i.hl = icmp ult i64 %i.hj, %i.hi
  %i.hm = select i1 %i.hl, i64 -9223372036854775808, i64 0
  %i.hn = or disjoint i64 %i.hm, %i.hk
  %i.ho = getelementptr inbounds [8 x i8], ptr %0, i64 %i.hg
  store i64 %i.hn, ptr %i.ho, align 8
  %i.hp = add i32 %.021.i69.i, 1
  %i.hq = sext i32 %i.hp to i64                   ; 2 uses
  %i.hr = getelementptr inbounds [8 x i8], ptr %3, i64 %i.hq
  %i.hs = load i64, ptr %i.hr, align 8            ; 2 uses
  %i.ht = add i64 %i.hs, %2                       ; 2 uses
  %i.hu = lshr i64 %i.ht, 1
  %i.hv = icmp ult i64 %i.ht, %i.hs
  %i.hw = select i1 %i.hv, i64 -9223372036854775808, i64 0
  %i.hx = or disjoint i64 %i.hw, %i.hu
  %i.hy = getelementptr inbounds [8 x i8], ptr %0, i64 %i.hq
  store i64 %i.hx, ptr %i.hy, align 8
  %i.hz = add i32 %.021.i69.i, 2                  ; 2 uses
  %exitcond.not.i70.i.1 = icmp eq i32 %i.hz, %i.d
  br i1 %exitcond.not.i70.i.1, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i68.i, !llvm.loop !1829

.lr.ph.i76.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i81.i, label %.lr.ph.split.i78.i.preheader

.lr.ph.split.i78.i.preheader:                     ; preds = %.lr.ph.i76.i
  %i.ia = sub i32 %i.d, %i.w                      ; 3 uses
  %min.iters.check79 = icmp ult i32 %i.ia, 6
  %i.ib = add i32 %i.d, -1
  %i.ic = icmp slt i32 %i.ib, %i.w
  %or.cond102 = or i1 %min.iters.check79, %i.ic
  %i.id = sub i64 %i.a, %i.b
  %diff.check81 = icmp ugt i64 %i.id, -16
  %or.cond103 = or i1 %or.cond102, %diff.check81
  br i1 %or.cond103, label %.lr.ph.split.i78.i.preheader104, label %vector.ph82

vector.ph82:                                      ; preds = %.lr.ph.split.i78.i.preheader
  %n.vec83 = and i32 %i.ia, -2                    ; 3 uses
  %i.ie = add i32 %i.w, %n.vec83
  %broadcast.splatinsert84 = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat85 = shufflevector <2 x i64> %broadcast.splatinsert84, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph82
  %index87 = phi i32 [ 0, %vector.ph82 ], [ %index.next89, %vector.body86 ] ; 2 uses
  %i.if = add i32 %i.w, %index87
  %i.ig = sext i32 %i.if to i64                   ; 2 uses
  %i.ih = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ig
  %wide.load88 = load <2 x i64>, ptr %i.ih, align 8 ; 2 uses
  %i.ii = add <2 x i64> %wide.load88, %broadcast.splat85 ; 3 uses
  %i.ij = lshr <2 x i64> %i.ii, splat (i64 1)
  %i.ik = and <2 x i64> %i.ii, splat (i64 3)
  %i.il = icmp eq <2 x i64> %i.ik, splat (i64 1)
  %i.im = zext <2 x i1> %i.il to <2 x i64>
  %i.in = icmp ult <2 x i64> %i.ii, %wide.load88
  %i.io = select <2 x i1> %i.in, <2 x i64> splat (i64 -9223372036854775808), <2 x i64> zeroinitializer
  %i.ip = or disjoint <2 x i64> %i.io, %i.ij
  %i.iq = add <2 x i64> %i.ip, %i.im
  %i.ir = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ig
  store <2 x i64> %i.iq, ptr %i.ir, align 8
  %index.next89 = add nuw i32 %index87, 2         ; 2 uses
  %i.is = icmp eq i32 %index.next89, %n.vec83
  br i1 %i.is, label %middle.block90, label %vector.body86, !llvm.loop !1830

middle.block90:                                   ; preds = %vector.body86
  %cmp.n91 = icmp eq i32 %i.ia, %n.vec83
  br i1 %cmp.n91, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i78.i.preheader104

.lr.ph.split.i78.i.preheader104:                  ; preds = %.lr.ph.split.i78.i.preheader, %middle.block90
  %.021.i79.i.ph = phi i32 [ %i.w, %.lr.ph.split.i78.i.preheader ], [ %i.ie, %middle.block90 ]
  br label %.lr.ph.split.i78.i

.lr.ph.split.us.i81.i:                            ; preds = %.lr.ph.i76.i, %bb.o
  %.021.us.i82.i = phi i32 [ %i.jb, %bb.o ], [ %i.w, %.lr.ph.i76.i ] ; 5 uses
  %i.it = sdiv i32 %.021.us.i82.i, 64
  %i.iu = srem i32 %.021.us.i82.i, 64
  %i.iv = sext i32 %i.it to i64
  %i.iw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.iv
  %i.ix = load i64, ptr %i.iw, align 8
  %i.iy = zext nneg i32 %i.iu to i64
  %i.iz = shl nuw i64 1, %i.iy
  %i.ja = and i64 %i.iz, %i.ix
  %.not20.us.i83.i = icmp eq i64 %i.ja, 0
  %i.jb = add nuw i32 %.021.us.i82.i, 1           ; 3 uses
  br i1 %.not20.us.i83.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us.i81.i
  %i.jc = sext i32 %.021.us.i82.i to i64          ; 2 uses
  %i.jd = getelementptr inbounds [8 x i8], ptr %3, i64 %i.jc
  %i.je = load i64, ptr %i.jd, align 8            ; 2 uses
  %i.jf = add i64 %i.je, %2                       ; 3 uses
  %i.jg = lshr i64 %i.jf, 1
  %i.jh = and i64 %i.jf, 3
  %i.ji = icmp eq i64 %i.jh, 1
  %i.jj = zext i1 %i.ji to i64
  %i.jk = icmp ult i64 %i.jf, %i.je
  %i.jl = select i1 %i.jk, i64 -9223372036854775808, i64 0
  %i.jm = or disjoint i64 %i.jl, %i.jg
  %i.jn = add i64 %i.jm, %i.jj
  %i.jo = getelementptr inbounds [8 x i8], ptr %0, i64 %i.jc
  store i64 %i.jn, ptr %i.jo, align 8
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.split.us.i81.i
  %i.jp = shl i32 %.021.us.i82.i, 3
  %i.jq = shl i32 %i.jb, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %i.jp, i32 noundef %i.jq) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %exitcond23.not.i84.i = icmp eq i32 %i.jb, %i.d
  br i1 %exitcond23.not.i84.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.us.i81.i, !llvm.loop !12

.lr.ph.split.i78.i:                               ; preds = %.lr.ph.split.i78.i.preheader104, %.lr.ph.split.i78.i
  %.021.i79.i = phi i32 [ %i.ke, %.lr.ph.split.i78.i ], [ %.021.i79.i.ph, %.lr.ph.split.i78.i.preheader104 ] ; 2 uses
  %i.jr = sext i32 %.021.i79.i to i64             ; 2 uses
  %i.js = getelementptr inbounds [8 x i8], ptr %3, i64 %i.jr
  %i.jt = load i64, ptr %i.js, align 8            ; 2 uses
  %i.ju = add i64 %i.jt, %2                       ; 3 uses
  %i.jv = lshr i64 %i.ju, 1
  %i.jw = and i64 %i.ju, 3
  %i.jx = icmp eq i64 %i.jw, 1
  %i.jy = zext i1 %i.jx to i64
  %i.jz = icmp ult i64 %i.ju, %i.jt
  %i.ka = select i1 %i.jz, i64 -9223372036854775808, i64 0
  %i.kb = or disjoint i64 %i.ka, %i.jv
  %i.kc = add i64 %i.kb, %i.jy
  %i.kd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.jr
  store i64 %i.kc, ptr %i.kd, align 8
  %i.ke = add i32 %.021.i79.i, 1                  ; 2 uses
  %exitcond.not.i80.i = icmp eq i32 %i.ke, %i.d
  br i1 %exitcond.not.i80.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i78.i, !llvm.loop !1831

vext_vx_rm_1.exit.i:                              ; preds = %.lr.ph.split.i68.i.prol.loopexit, %.lr.ph.split.i68.i, %bb.l, %.lr.ph.split.i58.i, %bb.i, %.lr.ph.split.i.i.prol.loopexit, %.lr.ph.split.i.i, %bb.f, %.lr.ph.split.i78.i, %bb.o, %middle.block, %middle.block54, %middle.block72, %middle.block90
  store i32 0, ptr %i.v, align 4
  %i.kf = shl i32 %i.d, 3
  %.fr.i = freeze i32 %i.q
  %i.kg = and i32 %.fr.i, -8
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.kf, i32 noundef %i.kg) #17
  br label %vext_vx_rm_2.exit

vext_vx_rm_2.exit:                                ; preds = %bb.b, %vext_vx_rm_1.exit.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vasub_vv_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.e = load i32, ptr %i.d, align 8              ; 22 uses
  %i.f = getelementptr i8, ptr %4, i64 4608
  %.val.i = load i64, ptr %i.f, align 16
  %i.g = shl i32 %5, 3
  %i.h = and i32 %i.g, 2040
  %i.i = add nuw nsw i32 %i.h, 8
  %i.j = trunc i64 %.val.i to i32
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 7
  %i.m = shl i32 %5, 18
  %i.n = ashr i32 %i.m, 29
  %i.o = sub nsw i32 %i.n, %i.l
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = shl nuw nsw i32 %i.i, %i.p
  %i.r = lshr i32 %5, 14
  %i.s = and i32 %i.r, 1
  %i.t = lshr i32 %5, 16
  %i.u = and i32 %i.t, 1                          ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4              ; 31 uses
  %.not.i = icmp ult i32 %i.w, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.v, align 4
  br label %vext_vv_rm_2.exit

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 4624
  %i.y = load i8, ptr %i.x, align 16
  %i.z = and i32 %5, 1024
  %.not.i77.i = icmp eq i32 %i.z, 0               ; 4 uses
  switch i8 %i.y, label %.lr.ph.i76.i [
    i8 0, label %.lr.ph.i.i
    i8 1, label %.lr.ph.i56.i
    i8 2, label %.lr.ph.i66.i
  ]

.lr.ph.i.i:                                       ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i.i, label %iter.check69

iter.check69:                                     ; preds = %.lr.ph.i.i
  %i.aa = sub i32 %i.e, %i.w                      ; 7 uses
  %min.iters.check53 = icmp ult i32 %i.aa, 8
  %i.ab = add i32 %i.e, -1
  %i.ac = icmp slt i32 %i.ab, %i.w
  %or.cond = or i1 %min.iters.check53, %i.ac
  br i1 %or.cond, label %.lr.ph.split.i.i.preheader, label %vector.memcheck54

vector.memcheck54:                                ; preds = %iter.check69
  %i.ad = sub i64 %i.b, %i.a
  %diff.check55 = icmp ugt i64 %i.ad, -16
  %i.ae = sub i64 %i.c, %i.a
  %diff.check56 = icmp ugt i64 %i.ae, -16
  %conflict.rdx57 = or i1 %diff.check55, %diff.check56
  br i1 %conflict.rdx57, label %.lr.ph.split.i.i.preheader, label %vector.main.loop.iter.check58

vector.main.loop.iter.check58:                    ; preds = %vector.memcheck54
  %min.iters.check59 = icmp ult i32 %i.aa, 16
  br i1 %min.iters.check59, label %vec.epilog.ph73, label %vector.ph60

vector.ph60:                                      ; preds = %vector.main.loop.iter.check58
  %i.af = and i32 %i.aa, 8
  %n.vec61 = and i32 %i.aa, -16                   ; 4 uses
  %i.ag = add i32 %i.w, %n.vec61
  br label %vector.body62

vector.body62:                                    ; preds = %vector.ph60, %vector.body62
  %index63 = phi i32 [ 0, %vector.ph60 ], [ %index.next66, %vector.body62 ] ; 2 uses
  %i.ah = add i32 %i.w, %index63
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  %wide.load64 = load <16 x i8>, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds i8, ptr %3, i64 %i.ai
  %wide.load65 = load <16 x i8>, ptr %i.ak, align 1
  %i.al = sext <16 x i8> %wide.load65 to <16 x i64>
  %i.am = sext <16 x i8> %wide.load64 to <16 x i64>
  %i.an = sub nsw <16 x i64> %i.al, %i.am         ; 2 uses
  %i.ao = lshr <16 x i64> %i.an, splat (i64 1)
  %i.ap = and <16 x i64> %i.an, splat (i64 1)
  %i.aq = add nuw <16 x i64> %i.ap, %i.ao
  %i.ar = trunc <16 x i64> %i.aq to <16 x i8>
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ai
  store <16 x i8> %i.ar, ptr %i.as, align 1
  %index.next66 = add nuw i32 %index63, 16        ; 2 uses
  %i.at = icmp eq i32 %index.next66, %n.vec61
  br i1 %i.at, label %middle.block67, label %vector.body62, !llvm.loop !1832

middle.block67:                                   ; preds = %vector.body62
  %cmp.n68 = icmp eq i32 %i.aa, %n.vec61
  br i1 %cmp.n68, label %vext_vv_rm_1.exit.i, label %vec.epilog.iter.check70

vec.epilog.iter.check70:                          ; preds = %middle.block67
  %min.epilog.iters.check72.not.not = icmp eq i32 %i.af, 0
  br i1 %min.epilog.iters.check72.not.not, label %.lr.ph.split.i.i.preheader, label %vec.epilog.ph73, !prof !32

vec.epilog.ph73:                                  ; preds = %vector.main.loop.iter.check58, %vec.epilog.iter.check70
  %vec.epilog.resume.val74 = phi i32 [ %n.vec61, %vec.epilog.iter.check70 ], [ 0, %vector.main.loop.iter.check58 ]
  %n.vec75 = and i32 %i.aa, -8                    ; 3 uses
  %i.au = add i32 %i.w, %n.vec75
  br label %vec.epilog.vector.body76

vec.epilog.vector.body76:                         ; preds = %vec.epilog.vector.body76, %vec.epilog.ph73
  %index77 = phi i32 [ %vec.epilog.resume.val74, %vec.epilog.ph73 ], [ %index.next80, %vec.epilog.vector.body76 ] ; 2 uses
  %i.av = add i32 %i.w, %index77
  %i.aw = sext i32 %i.av to i64                   ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %2, i64 %i.aw
  %wide.load78 = load <8 x i8>, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds i8, ptr %3, i64 %i.aw
  %wide.load79 = load <8 x i8>, ptr %i.ay, align 1
  %i.az = sext <8 x i8> %wide.load79 to <8 x i64>
  %i.ba = sext <8 x i8> %wide.load78 to <8 x i64>
  %i.bb = sub nsw <8 x i64> %i.az, %i.ba          ; 2 uses
  %i.bc = lshr <8 x i64> %i.bb, splat (i64 1)
  %i.bd = and <8 x i64> %i.bb, splat (i64 1)
  %i.be = add nuw <8 x i64> %i.bd, %i.bc
  %i.bf = trunc <8 x i64> %i.be to <8 x i8>
  %i.bg = getelementptr inbounds i8, ptr %0, i64 %i.aw
  store <8 x i8> %i.bf, ptr %i.bg, align 1
  %index.next80 = add nuw i32 %index77, 8         ; 2 uses
  %i.bh = icmp eq i32 %index.next80, %n.vec75
  br i1 %i.bh, label %vec.epilog.middle.block81, label %vec.epilog.vector.body76, !llvm.loop !1833

vec.epilog.middle.block81:                        ; preds = %vec.epilog.vector.body76
  %cmp.n82 = icmp eq i32 %i.aa, %n.vec75
  br i1 %cmp.n82, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %iter.check69, %vector.memcheck54, %vec.epilog.iter.check70, %vec.epilog.middle.block81
  %.021.i.i.ph = phi i32 [ %i.w, %iter.check69 ], [ %i.w, %vector.memcheck54 ], [ %i.ag, %vec.epilog.iter.check70 ], [ %i.au, %vec.epilog.middle.block81 ] ; 5 uses
  %i.bi = sub i32 %i.e, %.021.i.i.ph
  %.neg101 = add i32 %.021.i.i.ph, 1
  %xtraiter96 = and i32 %i.bi, 1
  %lcmp.mod97.not = icmp eq i32 %xtraiter96, 0
  br i1 %lcmp.mod97.not, label %.lr.ph.split.i.i.prol.loopexit, label %.lr.ph.split.i.i.prol

.lr.ph.split.i.i.prol:                            ; preds = %.lr.ph.split.i.i.preheader
  %i.bj = sext i32 %.021.i.i.ph to i64            ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = getelementptr inbounds i8, ptr %3, i64 %i.bj
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = sext i8 %i.bn to i64
  %i.bp = sext i8 %i.bl to i64
  %i.bq = sub nsw i64 %i.bo, %i.bp                ; 2 uses
  %i.br = lshr i64 %i.bq, 1
  %i.bs = and i64 %i.bq, 1
  %i.bt = add nuw i64 %i.bs, %i.br
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = getelementptr inbounds i8, ptr %0, i64 %i.bj
  store i8 %i.bu, ptr %i.bv, align 1
  %i.bw = add i32 %.021.i.i.ph, 1
  br label %.lr.ph.split.i.i.prol.loopexit

.lr.ph.split.i.i.prol.loopexit:                   ; preds = %.lr.ph.split.i.i.prol, %.lr.ph.split.i.i.preheader
  %.021.i.i.unr = phi i32 [ %.021.i.i.ph, %.lr.ph.split.i.i.preheader ], [ %i.bw, %.lr.ph.split.i.i.prol ]
  %i.bx = icmp eq i32 %i.e, %.neg101
  br i1 %i.bx, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.f
  %.021.us.i.i = phi i32 [ %i.cg, %bb.f ], [ %i.w, %.lr.ph.i.i ] ; 5 uses
  %i.by = sdiv i32 %.021.us.i.i, 64
  %i.bz = srem i32 %.021.us.i.i, 64
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = zext nneg i32 %i.bz to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.ce, %i.cc
  %.not20.us.i.i = icmp eq i64 %i.cf, 0
  %i.cg = add nuw i32 %.021.us.i.i, 1             ; 3 uses
  br i1 %.not20.us.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.i.i
  %i.ch = sext i32 %.021.us.i.i to i64            ; 3 uses
  %i.ci = getelementptr inbounds i8, ptr %2, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = getelementptr inbounds i8, ptr %3, i64 %i.ch
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = sext i8 %i.cl to i64
  %i.cn = sext i8 %i.cj to i64
  %i.co = sub nsw i64 %i.cm, %i.cn                ; 2 uses
  %i.cp = lshr i64 %i.co, 1
  %i.cq = and i64 %i.co, 1
  %i.cr = add nuw i64 %i.cq, %i.cp
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = getelementptr inbounds i8, ptr %0, i64 %i.ch
  store i8 %i.cs, ptr %i.ct, align 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.us.i.i
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %.021.us.i.i, i32 noundef %i.cg) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %exitcond23.not.i.i = icmp eq i32 %i.cg, %i.e
  br i1 %exitcond23.not.i.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !11

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.prol.loopexit, %.lr.ph.split.i.i
  %.021.i.i = phi i32 [ %i.dv, %.lr.ph.split.i.i ], [ %.021.i.i.unr, %.lr.ph.split.i.i.prol.loopexit ] ; 3 uses
  %i.cu = sext i32 %.021.i.i to i64               ; 3 uses
  %i.cv = getelementptr inbounds i8, ptr %2, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = getelementptr inbounds i8, ptr %3, i64 %i.cu
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = sext i8 %i.cy to i64
  %i.da = sext i8 %i.cw to i64
  %i.db = sub nsw i64 %i.cz, %i.da                ; 2 uses
  %i.dc = lshr i64 %i.db, 1
  %i.dd = and i64 %i.db, 1
  %i.de = add nuw i64 %i.dd, %i.dc
  %i.df = trunc i64 %i.de to i8
  %i.dg = getelementptr inbounds i8, ptr %0, i64 %i.cu
  store i8 %i.df, ptr %i.dg, align 1
  %i.dh = add i32 %.021.i.i, 1
  %i.di = sext i32 %i.dh to i64                   ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %2, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = getelementptr inbounds i8, ptr %3, i64 %i.di
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = sext i8 %i.dm to i64
  %i.do = sext i8 %i.dk to i64
  %i.dp = sub nsw i64 %i.dn, %i.do                ; 2 uses
  %i.dq = lshr i64 %i.dp, 1
  %i.dr = and i64 %i.dp, 1
  %i.ds = add nuw i64 %i.dr, %i.dq
  %i.dt = trunc i64 %i.ds to i8
  %i.du = getelementptr inbounds i8, ptr %0, i64 %i.di
  store i8 %i.dt, ptr %i.du, align 1
  %i.dv = add i32 %.021.i.i, 2                    ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i32 %i.dv, %i.e
  br i1 %exitcond.not.i.i.1, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i.i, !llvm.loop !1834

.lr.ph.i56.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i61.i, label %.lr.ph.split.i58.i.preheader

.lr.ph.split.i58.i.preheader:                     ; preds = %.lr.ph.i56.i
  %i.dw = sub i32 %i.e, %i.w
  %.neg100 = add i32 %i.w, 1
  %xtraiter94 = and i32 %i.dw, 1
  %lcmp.mod95.not = icmp eq i32 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %.lr.ph.split.i58.i.prol.loopexit, label %.lr.ph.split.i58.i.prol

.lr.ph.split.i58.i.prol:                          ; preds = %.lr.ph.split.i58.i.preheader
  %i.dx = sext i32 %i.w to i64                    ; 3 uses
  %i.dy = getelementptr inbounds i8, ptr %2, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = getelementptr inbounds i8, ptr %3, i64 %i.dx
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = sext i8 %i.eb to i64
  %i.ed = sext i8 %i.dz to i64
  %i.ee = sub nsw i64 %i.ec, %i.ed                ; 2 uses
  %i.ef = lshr i64 %i.ee, 1
  %i.eg = and i64 %i.ee, 3
  %i.eh = icmp eq i64 %i.eg, 3
  %i.ei = zext i1 %i.eh to i64
  %i.ej = add nuw i64 %i.ef, %i.ei
  %i.ek = trunc i64 %i.ej to i8
  %i.el = getelementptr inbounds i8, ptr %0, i64 %i.dx
  store i8 %i.ek, ptr %i.el, align 1
  %i.em = add i32 %i.w, 1
  br label %.lr.ph.split.i58.i.prol.loopexit

.lr.ph.split.i58.i.prol.loopexit:                 ; preds = %.lr.ph.split.i58.i.prol, %.lr.ph.split.i58.i.preheader
  %.021.i59.i.unr = phi i32 [ %i.w, %.lr.ph.split.i58.i.preheader ], [ %i.em, %.lr.ph.split.i58.i.prol ]
  %i.en = icmp eq i32 %i.e, %.neg100
  br i1 %i.en, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i58.i

.lr.ph.split.us.i61.i:                            ; preds = %.lr.ph.i56.i, %bb.i
  %.021.us.i62.i = phi i32 [ %i.ew, %bb.i ], [ %i.w, %.lr.ph.i56.i ] ; 5 uses
  %i.eo = sdiv i32 %.021.us.i62.i, 64
  %i.ep = srem i32 %.021.us.i62.i, 64
  %i.eq = sext i32 %i.eo to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %1, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8
  %i.et = zext nneg i32 %i.ep to i64
  %i.eu = shl nuw i64 1, %i.et
  %i.ev = and i64 %i.eu, %i.es
  %.not20.us.i63.i = icmp eq i64 %i.ev, 0
  %i.ew = add nuw i32 %.021.us.i62.i, 1           ; 3 uses
  br i1 %.not20.us.i63.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.i61.i
  %i.ex = sext i32 %.021.us.i62.i to i64          ; 3 uses
  %i.ey = getelementptr inbounds i8, ptr %2, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = getelementptr inbounds i8, ptr %3, i64 %i.ex
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = sext i8 %i.fb to i64
  %i.fd = sext i8 %i.ez to i64
  %i.fe = sub nsw i64 %i.fc, %i.fd                ; 2 uses
  %i.ff = lshr i64 %i.fe, 1
  %i.fg = and i64 %i.fe, 3
  %i.fh = icmp eq i64 %i.fg, 3
  %i.fi = zext i1 %i.fh to i64
  %i.fj = add nuw i64 %i.ff, %i.fi
  %i.fk = trunc i64 %i.fj to i8
  %i.fl = getelementptr inbounds i8, ptr %0, i64 %i.ex
  store i8 %i.fk, ptr %i.fl, align 1
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.us.i61.i
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %.021.us.i62.i, i32 noundef %i.ew) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %exitcond23.not.i64.i = icmp eq i32 %i.ew, %i.e
  br i1 %exitcond23.not.i64.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.us.i61.i, !llvm.loop !11

.lr.ph.split.i58.i:                               ; preds = %.lr.ph.split.i58.i.prol.loopexit, %.lr.ph.split.i58.i
  %.021.i59.i = phi i32 [ %i.gr, %.lr.ph.split.i58.i ], [ %.021.i59.i.unr, %.lr.ph.split.i58.i.prol.loopexit ] ; 3 uses
  %i.fm = sext i32 %.021.i59.i to i64             ; 3 uses
  %i.fn = getelementptr inbounds i8, ptr %2, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = getelementptr inbounds i8, ptr %3, i64 %i.fm
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = sext i8 %i.fq to i64
  %i.fs = sext i8 %i.fo to i64
  %i.ft = sub nsw i64 %i.fr, %i.fs                ; 2 uses
  %i.fu = lshr i64 %i.ft, 1
  %i.fv = and i64 %i.ft, 3
  %i.fw = icmp eq i64 %i.fv, 3
  %i.fx = zext i1 %i.fw to i64
  %i.fy = add nuw i64 %i.fu, %i.fx
  %i.fz = trunc i64 %i.fy to i8
  %i.ga = getelementptr inbounds i8, ptr %0, i64 %i.fm
  store i8 %i.fz, ptr %i.ga, align 1
  %i.gb = add i32 %.021.i59.i, 1
  %i.gc = sext i32 %i.gb to i64                   ; 3 uses
  %i.gd = getelementptr inbounds i8, ptr %2, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = getelementptr inbounds i8, ptr %3, i64 %i.gc
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = sext i8 %i.gg to i64
  %i.gi = sext i8 %i.ge to i64
  %i.gj = sub nsw i64 %i.gh, %i.gi                ; 2 uses
  %i.gk = lshr i64 %i.gj, 1
  %i.gl = and i64 %i.gj, 3
  %i.gm = icmp eq i64 %i.gl, 3
  %i.gn = zext i1 %i.gm to i64
  %i.go = add nuw i64 %i.gk, %i.gn
  %i.gp = trunc i64 %i.go to i8
  %i.gq = getelementptr inbounds i8, ptr %0, i64 %i.gc
  store i8 %i.gp, ptr %i.gq, align 1
  %i.gr = add i32 %.021.i59.i, 2                  ; 2 uses
  %exitcond.not.i60.i.1 = icmp eq i32 %i.gr, %i.e
  br i1 %exitcond.not.i60.i.1, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i58.i, !llvm.loop !11

.lr.ph.i66.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i71.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph.i66.i
  %i.gs = sub i32 %i.e, %i.w                      ; 7 uses
  %min.iters.check = icmp ult i32 %i.gs, 4
  %i.gt = add i32 %i.e, -1
  %i.gu = icmp slt i32 %i.gt, %i.w
  %or.cond86 = or i1 %min.iters.check, %i.gu
  br i1 %or.cond86, label %.lr.ph.split.i68.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.gv = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.gv, -16
  %i.gw = sub i64 %i.c, %i.a
  %diff.check39 = icmp ugt i64 %i.gw, -16
  %conflict.rdx = or i1 %diff.check, %diff.check39
  br i1 %conflict.rdx, label %.lr.ph.split.i68.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i32 %i.gs, 16
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gx = and i32 %i.gs, 12
  %n.vec = and i32 %i.gs, -16                     ; 4 uses
  %i.gy = add i32 %i.w, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gz = add i32 %i.w, %index
  %i.ha = sext i32 %i.gz to i64                   ; 3 uses
  %i.hb = getelementptr inbounds i8, ptr %2, i64 %i.ha
  %wide.load = load <16 x i8>, ptr %i.hb, align 1
  %i.hc = getelementptr inbounds i8, ptr %3, i64 %i.ha
  %wide.load41 = load <16 x i8>, ptr %i.hc, align 1
  %i.hd = sext <16 x i8> %wide.load41 to <16 x i16>
  %i.he = sext <16 x i8> %wide.load to <16 x i16>
  %i.hf = sub nsw <16 x i16> %i.hd, %i.he
  %i.hg = lshr <16 x i16> %i.hf, splat (i16 1)
  %i.hh = trunc <16 x i16> %i.hg to <16 x i8>
  %i.hi = getelementptr inbounds i8, ptr %0, i64 %i.ha
  store <16 x i8> %i.hh, ptr %i.hi, align 1
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.hj = icmp eq i32 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !1835

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.gs, %n.vec
  br i1 %cmp.n, label %vext_vv_rm_1.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.gx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.i68.i.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i32 %i.gs, -4                    ; 3 uses
  %i.hk = add i32 %i.w, %n.vec42
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 2 uses
  %i.hl = add i32 %i.w, %index43
  %i.hm = sext i32 %i.hl to i64                   ; 3 uses
  %i.hn = getelementptr inbounds i8, ptr %2, i64 %i.hm
  %wide.load44 = load <4 x i8>, ptr %i.hn, align 1
  %i.ho = getelementptr inbounds i8, ptr %3, i64 %i.hm
  %wide.load45 = load <4 x i8>, ptr %i.ho, align 1
  %i.hp = sext <4 x i8> %wide.load45 to <4 x i16>
  %i.hq = sext <4 x i8> %wide.load44 to <4 x i16>
  %i.hr = sub nsw <4 x i16> %i.hp, %i.hq
  %i.hs = lshr <4 x i16> %i.hr, splat (i16 1)
  %i.ht = trunc <4 x i16> %i.hs to <4 x i8>
  %i.hu = getelementptr inbounds i8, ptr %0, i64 %i.hm
  store <4 x i8> %i.ht, ptr %i.hu, align 1
  %index.next46 = add nuw i32 %index43, 4         ; 2 uses
  %i.hv = icmp eq i32 %index.next46, %n.vec42
  br i1 %i.hv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1836

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i32 %i.gs, %n.vec42
  br i1 %cmp.n47, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i68.i.preheader

.lr.ph.split.i68.i.preheader:                     ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.021.i69.i.ph = phi i32 [ %i.w, %iter.check ], [ %i.w, %vector.memcheck ], [ %i.gy, %vec.epilog.iter.check ], [ %i.hk, %vec.epilog.middle.block ] ; 5 uses
  %i.hw = sub i32 %i.e, %.021.i69.i.ph
  %.neg = add i32 %.021.i69.i.ph, 1
  %xtraiter = and i32 %i.hw, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i68.i.prol.loopexit, label %.lr.ph.split.i68.i.prol

.lr.ph.split.i68.i.prol:                          ; preds = %.lr.ph.split.i68.i.preheader
  %i.hx = sext i32 %.021.i69.i.ph to i64          ; 3 uses
  %i.hy = getelementptr inbounds i8, ptr %2, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1
  %i.ia = getelementptr inbounds i8, ptr %3, i64 %i.hx
  %i.ib = load i8, ptr %i.ia, align 1
  %i.ic = sext i8 %i.ib to i16
  %i.id = sext i8 %i.hz to i16
  %i.ie = sub nsw i16 %i.ic, %i.id
  %i.if = lshr i16 %i.ie, 1
  %i.ig = trunc i16 %i.if to i8
  %i.ih = getelementptr inbounds i8, ptr %0, i64 %i.hx
  store i8 %i.ig, ptr %i.ih, align 1
  %i.ii = add i32 %.021.i69.i.ph, 1
  br label %.lr.ph.split.i68.i.prol.loopexit

.lr.ph.split.i68.i.prol.loopexit:                 ; preds = %.lr.ph.split.i68.i.prol, %.lr.ph.split.i68.i.preheader
  %.021.i69.i.unr = phi i32 [ %.021.i69.i.ph, %.lr.ph.split.i68.i.preheader ], [ %i.ii, %.lr.ph.split.i68.i.prol ]
  %i.ij = icmp eq i32 %i.e, %.neg
  br i1 %i.ij, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i68.i

.lr.ph.split.us.i71.i:                            ; preds = %.lr.ph.i66.i, %bb.l
  %.021.us.i72.i = phi i32 [ %i.is, %bb.l ], [ %i.w, %.lr.ph.i66.i ] ; 5 uses
  %i.ik = sdiv i32 %.021.us.i72.i, 64
  %i.il = srem i32 %.021.us.i72.i, 64
  %i.im = sext i32 %i.ik to i64
  %i.in = getelementptr inbounds [8 x i8], ptr %1, i64 %i.im
  %i.io = load i64, ptr %i.in, align 8
  %i.ip = zext nneg i32 %i.il to i64
  %i.iq = shl nuw i64 1, %i.ip
  %i.ir = and i64 %i.iq, %i.io
  %.not20.us.i73.i = icmp eq i64 %i.ir, 0
  %i.is = add nuw i32 %.021.us.i72.i, 1           ; 3 uses
  br i1 %.not20.us.i73.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us.i71.i
  %i.it = sext i32 %.021.us.i72.i to i64          ; 3 uses
  %i.iu = getelementptr inbounds i8, ptr %2, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1
  %i.iw = getelementptr inbounds i8, ptr %3, i64 %i.it
  %i.ix = load i8, ptr %i.iw, align 1
  %i.iy = sext i8 %i.ix to i16
  %i.iz = sext i8 %i.iv to i16
  %i.ja = sub nsw i16 %i.iy, %i.iz
  %i.jb = lshr i16 %i.ja, 1
  %i.jc = trunc i16 %i.jb to i8
  %i.jd = getelementptr inbounds i8, ptr %0, i64 %i.it
  store i8 %i.jc, ptr %i.jd, align 1
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.us.i71.i
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %.021.us.i72.i, i32 noundef %i.is) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %exitcond23.not.i74.i = icmp eq i32 %i.is, %i.e
  br i1 %exitcond23.not.i74.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.us.i71.i, !llvm.loop !11

.lr.ph.split.i68.i:                               ; preds = %.lr.ph.split.i68.i.prol.loopexit, %.lr.ph.split.i68.i
  %.021.i69.i = phi i32 [ %i.kb, %.lr.ph.split.i68.i ], [ %.021.i69.i.unr, %.lr.ph.split.i68.i.prol.loopexit ] ; 3 uses
  %i.je = sext i32 %.021.i69.i to i64             ; 3 uses
  %i.jf = getelementptr inbounds i8, ptr %2, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1
  %i.jh = getelementptr inbounds i8, ptr %3, i64 %i.je
  %i.ji = load i8, ptr %i.jh, align 1
  %i.jj = sext i8 %i.ji to i16
  %i.jk = sext i8 %i.jg to i16
  %i.jl = sub nsw i16 %i.jj, %i.jk
  %i.jm = lshr i16 %i.jl, 1
  %i.jn = trunc i16 %i.jm to i8
  %i.jo = getelementptr inbounds i8, ptr %0, i64 %i.je
  store i8 %i.jn, ptr %i.jo, align 1
  %i.jp = add i32 %.021.i69.i, 1
  %i.jq = sext i32 %i.jp to i64                   ; 3 uses
  %i.jr = getelementptr inbounds i8, ptr %2, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1
  %i.jt = getelementptr inbounds i8, ptr %3, i64 %i.jq
  %i.ju = load i8, ptr %i.jt, align 1
  %i.jv = sext i8 %i.ju to i16
  %i.jw = sext i8 %i.js to i16
  %i.jx = sub nsw i16 %i.jv, %i.jw
  %i.jy = lshr i16 %i.jx, 1
  %i.jz = trunc i16 %i.jy to i8
  %i.ka = getelementptr inbounds i8, ptr %0, i64 %i.jq
  store i8 %i.jz, ptr %i.ka, align 1
  %i.kb = add i32 %.021.i69.i, 2                  ; 2 uses
  %exitcond.not.i70.i.1 = icmp eq i32 %i.kb, %i.e
  br i1 %exitcond.not.i70.i.1, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i68.i, !llvm.loop !1837

.lr.ph.i76.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i81.i, label %.lr.ph.split.i78.i.preheader

.lr.ph.split.i78.i.preheader:                     ; preds = %.lr.ph.i76.i
  %i.kc = sub i32 %i.e, %i.w
  %.neg102 = add i32 %i.w, 1
  %xtraiter98 = and i32 %i.kc, 1
  %lcmp.mod99.not = icmp eq i32 %xtraiter98, 0
  br i1 %lcmp.mod99.not, label %.lr.ph.split.i78.i.prol.loopexit, label %.lr.ph.split.i78.i.prol

.lr.ph.split.i78.i.prol:                          ; preds = %.lr.ph.split.i78.i.preheader
  %i.kd = sext i32 %i.w to i64                    ; 3 uses
  %i.ke = getelementptr inbounds i8, ptr %2, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1
  %i.kg = getelementptr inbounds i8, ptr %3, i64 %i.kd
  %i.kh = load i8, ptr %i.kg, align 1
  %i.ki = sext i8 %i.kh to i64
  %i.kj = sext i8 %i.kf to i64
  %i.kk = sub nsw i64 %i.ki, %i.kj                ; 2 uses
  %i.kl = lshr i64 %i.kk, 1
  %i.km = and i64 %i.kk, 3
  %i.kn = icmp eq i64 %i.km, 1
  %i.ko = zext i1 %i.kn to i64
  %i.kp = add nuw i64 %i.kl, %i.ko
  %i.kq = trunc i64 %i.kp to i8
  %i.kr = getelementptr inbounds i8, ptr %0, i64 %i.kd
  store i8 %i.kq, ptr %i.kr, align 1
  %i.ks = add i32 %i.w, 1
  br label %.lr.ph.split.i78.i.prol.loopexit

.lr.ph.split.i78.i.prol.loopexit:                 ; preds = %.lr.ph.split.i78.i.prol, %.lr.ph.split.i78.i.preheader
  %.021.i79.i.unr = phi i32 [ %i.w, %.lr.ph.split.i78.i.preheader ], [ %i.ks, %.lr.ph.split.i78.i.prol ]
  %i.kt = icmp eq i32 %i.e, %.neg102
end_hunk_5
begin_hunk_6_@helper_vasub_vx_d:bb.a
  %i.gp = sdiv i32 %.021.us.i72.i, 64
  %i.gq = srem i32 %.021.us.i72.i, 64
  %i.gr = sext i32 %i.gp to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 8
  %i.gu = zext nneg i32 %i.gq to i64
  %i.gv = shl nuw i64 1, %i.gu
  %i.gw = and i64 %i.gv, %i.gt
  %.not20.us.i73.i = icmp eq i64 %i.gw, 0
  %i.gx = add nuw i32 %.021.us.i72.i, 1           ; 3 uses
  br i1 %.not20.us.i73.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us.i71.i
  %i.gy = sext i32 %.021.us.i72.i to i64          ; 2 uses
  %i.gz = getelementptr inbounds [8 x i8], ptr %3, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8            ; 3 uses
  %i.hb = sub i64 %i.ha, %2                       ; 2 uses
  %i.hc = xor i64 %i.hb, %i.ha
  %i.hd = xor i64 %i.ha, %2
  %i.he = and i64 %i.hd, -9223372036854775808
  %i.hf = and i64 %i.he, %i.hc
  %i.hg = ashr i64 %i.hb, 1
  %i.hh = xor i64 %i.hf, %i.hg
  %i.hi = getelementptr inbounds [8 x i8], ptr %0, i64 %i.gy
  store i64 %i.hh, ptr %i.hi, align 8
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.us.i71.i
  %i.hj = shl i32 %.021.us.i72.i, 3
  %i.hk = shl i32 %i.gx, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %i.hj, i32 noundef %i.hk) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %exitcond23.not.i74.i = icmp eq i32 %i.gx, %i.d
  br i1 %exitcond23.not.i74.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.us.i71.i, !llvm.loop !12

.lr.ph.split.i68.i:                               ; preds = %.lr.ph.split.i68.i.prol.loopexit, %.lr.ph.split.i68.i
  %.021.i69.i = phi i32 [ %i.ii, %.lr.ph.split.i68.i ], [ %.021.i69.i.unr, %.lr.ph.split.i68.i.prol.loopexit ] ; 3 uses
  %i.hl = sext i32 %.021.i69.i to i64             ; 2 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %3, i64 %i.hl
  %i.hn = load i64, ptr %i.hm, align 8            ; 3 uses
  %i.ho = sub i64 %i.hn, %2                       ; 2 uses
  %i.hp = xor i64 %i.ho, %i.hn
  %i.hq = xor i64 %i.hn, %2
  %i.hr = and i64 %i.hq, -9223372036854775808
  %i.hs = and i64 %i.hr, %i.hp
  %i.ht = ashr i64 %i.ho, 1
  %i.hu = xor i64 %i.hs, %i.ht
  %i.hv = getelementptr inbounds [8 x i8], ptr %0, i64 %i.hl
  store i64 %i.hu, ptr %i.hv, align 8
  %i.hw = add i32 %.021.i69.i, 1
  %i.hx = sext i32 %i.hw to i64                   ; 2 uses
  %i.hy = getelementptr inbounds [8 x i8], ptr %3, i64 %i.hx
  %i.hz = load i64, ptr %i.hy, align 8            ; 3 uses
  %i.ia = sub i64 %i.hz, %2                       ; 2 uses
  %i.ib = xor i64 %i.ia, %i.hz
  %i.ic = xor i64 %i.hz, %2
  %i.id = and i64 %i.ic, -9223372036854775808
  %i.ie = and i64 %i.id, %i.ib
  %i.if = ashr i64 %i.ia, 1
  %i.ig = xor i64 %i.ie, %i.if
  %i.ih = getelementptr inbounds [8 x i8], ptr %0, i64 %i.hx
  store i64 %i.ig, ptr %i.ih, align 8
  %i.ii = add i32 %.021.i69.i, 2                  ; 2 uses
  %exitcond.not.i70.i.1 = icmp eq i32 %i.ii, %i.d
  br i1 %exitcond.not.i70.i.1, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i68.i, !llvm.loop !1893

.lr.ph.i76.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i81.i, label %.lr.ph.split.i78.i.preheader

.lr.ph.split.i78.i.preheader:                     ; preds = %.lr.ph.i76.i
  %i.ij = sub i32 %i.d, %i.w                      ; 3 uses
  %min.iters.check80 = icmp ult i32 %i.ij, 4
  %i.ik = add i32 %i.d, -1
  %i.il = icmp slt i32 %i.ik, %i.w
  %or.cond103 = or i1 %min.iters.check80, %i.il
  %i.im = sub i64 %i.a, %i.b
  %diff.check82 = icmp ugt i64 %i.im, -16
  %or.cond104 = or i1 %or.cond103, %diff.check82
  br i1 %or.cond104, label %.lr.ph.split.i78.i.preheader105, label %vector.ph83

vector.ph83:                                      ; preds = %.lr.ph.split.i78.i.preheader
  %n.vec84 = and i32 %i.ij, -2                    ; 3 uses
  %i.in = add i32 %i.w, %n.vec84
  %broadcast.splatinsert85 = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat86 = shufflevector <2 x i64> %broadcast.splatinsert85, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph83
  %index88 = phi i32 [ 0, %vector.ph83 ], [ %index.next90, %vector.body87 ] ; 2 uses
  %i.io = add i32 %i.w, %index88
  %i.ip = sext i32 %i.io to i64                   ; 2 uses
  %i.iq = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ip
  %wide.load89 = load <2 x i64>, ptr %i.iq, align 8 ; 3 uses
  %i.ir = sub <2 x i64> %wide.load89, %broadcast.splat86 ; 3 uses
  %i.is = and <2 x i64> %i.ir, splat (i64 3)
  %i.it = icmp eq <2 x i64> %i.is, splat (i64 1)
  %i.iu = zext <2 x i1> %i.it to <2 x i64>
  %i.iv = xor <2 x i64> %i.ir, %wide.load89
  %i.iw = xor <2 x i64> %wide.load89, %broadcast.splat86
  %i.ix = and <2 x i64> %i.iw, splat (i64 -9223372036854775808)
  %i.iy = and <2 x i64> %i.ix, %i.iv
  %i.iz = ashr <2 x i64> %i.ir, splat (i64 1)
  %i.ja = xor <2 x i64> %i.iy, %i.iz
  %i.jb = add <2 x i64> %i.ja, %i.iu
  %i.jc = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ip
  store <2 x i64> %i.jb, ptr %i.jc, align 8
  %index.next90 = add nuw i32 %index88, 2         ; 2 uses
  %i.jd = icmp eq i32 %index.next90, %n.vec84
  br i1 %i.jd, label %middle.block91, label %vector.body87, !llvm.loop !1894

middle.block91:                                   ; preds = %vector.body87
  %cmp.n92 = icmp eq i32 %i.ij, %n.vec84
  br i1 %cmp.n92, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i78.i.preheader105

.lr.ph.split.i78.i.preheader105:                  ; preds = %.lr.ph.split.i78.i.preheader, %middle.block91
  %.021.i79.i.ph = phi i32 [ %i.w, %.lr.ph.split.i78.i.preheader ], [ %i.in, %middle.block91 ]
  br label %.lr.ph.split.i78.i

.lr.ph.split.us.i81.i:                            ; preds = %.lr.ph.i76.i, %bb.o
  %.021.us.i82.i = phi i32 [ %i.jm, %bb.o ], [ %i.w, %.lr.ph.i76.i ] ; 5 uses
  %i.je = sdiv i32 %.021.us.i82.i, 64
  %i.jf = srem i32 %.021.us.i82.i, 64
  %i.jg = sext i32 %i.je to i64
  %i.jh = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jg
  %i.ji = load i64, ptr %i.jh, align 8
  %i.jj = zext nneg i32 %i.jf to i64
  %i.jk = shl nuw i64 1, %i.jj
  %i.jl = and i64 %i.jk, %i.ji
  %.not20.us.i83.i = icmp eq i64 %i.jl, 0
  %i.jm = add nuw i32 %.021.us.i82.i, 1           ; 3 uses
  br i1 %.not20.us.i83.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us.i81.i
  %i.jn = sext i32 %.021.us.i82.i to i64          ; 2 uses
  %i.jo = getelementptr inbounds [8 x i8], ptr %3, i64 %i.jn
  %i.jp = load i64, ptr %i.jo, align 8            ; 3 uses
  %i.jq = sub i64 %i.jp, %2                       ; 3 uses
  %i.jr = and i64 %i.jq, 3
  %i.js = icmp eq i64 %i.jr, 1
  %i.jt = zext i1 %i.js to i64
  %i.ju = xor i64 %i.jq, %i.jp
  %i.jv = xor i64 %i.jp, %2
  %i.jw = and i64 %i.jv, -9223372036854775808
  %i.jx = and i64 %i.jw, %i.ju
  %i.jy = ashr i64 %i.jq, 1
  %i.jz = xor i64 %i.jx, %i.jy
  %i.ka = add i64 %i.jz, %i.jt
  %i.kb = getelementptr inbounds [8 x i8], ptr %0, i64 %i.jn
  store i64 %i.ka, ptr %i.kb, align 8
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.split.us.i81.i
  %i.kc = shl i32 %.021.us.i82.i, 3
  %i.kd = shl i32 %i.jm, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %i.kc, i32 noundef %i.kd) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %exitcond23.not.i84.i = icmp eq i32 %i.jm, %i.d
  br i1 %exitcond23.not.i84.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.us.i81.i, !llvm.loop !12

.lr.ph.split.i78.i:                               ; preds = %.lr.ph.split.i78.i.preheader105, %.lr.ph.split.i78.i
  %.021.i79.i = phi i32 [ %i.kt, %.lr.ph.split.i78.i ], [ %.021.i79.i.ph, %.lr.ph.split.i78.i.preheader105 ] ; 2 uses
  %i.ke = sext i32 %.021.i79.i to i64             ; 2 uses
  %i.kf = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ke
  %i.kg = load i64, ptr %i.kf, align 8            ; 3 uses
  %i.kh = sub i64 %i.kg, %2                       ; 3 uses
  %i.ki = and i64 %i.kh, 3
  %i.kj = icmp eq i64 %i.ki, 1
  %i.kk = zext i1 %i.kj to i64
  %i.kl = xor i64 %i.kh, %i.kg
  %i.km = xor i64 %i.kg, %2
  %i.kn = and i64 %i.km, -9223372036854775808
  %i.ko = and i64 %i.kn, %i.kl
  %i.kp = ashr i64 %i.kh, 1
  %i.kq = xor i64 %i.ko, %i.kp
  %i.kr = add i64 %i.kq, %i.kk
  %i.ks = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ke
  store i64 %i.kr, ptr %i.ks, align 8
  %i.kt = add i32 %.021.i79.i, 1                  ; 2 uses
  %exitcond.not.i80.i = icmp eq i32 %i.kt, %i.d
  br i1 %exitcond.not.i80.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i78.i, !llvm.loop !1895

vext_vx_rm_1.exit.i:                              ; preds = %.lr.ph.split.i68.i.prol.loopexit, %.lr.ph.split.i68.i, %bb.l, %.lr.ph.split.i58.i, %bb.i, %.lr.ph.split.i.i, %bb.f, %.lr.ph.split.i78.i, %bb.o, %middle.block, %middle.block54, %middle.block73, %middle.block91
  store i32 0, ptr %i.v, align 4
  %i.ku = shl i32 %i.d, 3
  %.fr.i = freeze i32 %i.q
  %i.kv = and i32 %.fr.i, -8
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.ku, i32 noundef %i.kv) #17
  br label %vext_vx_rm_2.exit

vext_vx_rm_2.exit:                                ; preds = %bb.b, %vext_vx_rm_1.exit.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vasubu_vv_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.e = load i32, ptr %i.d, align 8              ; 22 uses
  %i.f = getelementptr i8, ptr %4, i64 4608
  %.val.i = load i64, ptr %i.f, align 16
  %i.g = shl i32 %5, 3
  %i.h = and i32 %i.g, 2040
  %i.i = add nuw nsw i32 %i.h, 8
  %i.j = trunc i64 %.val.i to i32
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 7
  %i.m = shl i32 %5, 18
  %i.n = ashr i32 %i.m, 29
  %i.o = sub nsw i32 %i.n, %i.l
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = shl nuw nsw i32 %i.i, %i.p
  %i.r = lshr i32 %5, 14
  %i.s = and i32 %i.r, 1
  %i.t = lshr i32 %5, 16
  %i.u = and i32 %i.t, 1                          ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4              ; 31 uses
  %.not.i = icmp ult i32 %i.w, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.v, align 4
  br label %vext_vv_rm_2.exit

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 4624
  %i.y = load i8, ptr %i.x, align 16
  %i.z = and i32 %5, 1024
  %.not.i77.i = icmp eq i32 %i.z, 0               ; 4 uses
  switch i8 %i.y, label %.lr.ph.i76.i [
    i8 0, label %.lr.ph.i.i
    i8 1, label %.lr.ph.i56.i
    i8 2, label %.lr.ph.i66.i
  ]

.lr.ph.i.i:                                       ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i.i, label %iter.check71

iter.check71:                                     ; preds = %.lr.ph.i.i
  %i.aa = sub i32 %i.e, %i.w                      ; 7 uses
  %min.iters.check55 = icmp ult i32 %i.aa, 8
  %i.ab = add i32 %i.e, -1
  %i.ac = icmp slt i32 %i.ab, %i.w
  %or.cond = or i1 %min.iters.check55, %i.ac
  br i1 %or.cond, label %.lr.ph.split.i.i.preheader, label %vector.memcheck56

vector.memcheck56:                                ; preds = %iter.check71
  %i.ad = sub i64 %i.b, %i.a
  %diff.check57 = icmp ugt i64 %i.ad, -16
  %i.ae = sub i64 %i.c, %i.a
  %diff.check58 = icmp ugt i64 %i.ae, -16
  %conflict.rdx59 = or i1 %diff.check57, %diff.check58
  br i1 %conflict.rdx59, label %.lr.ph.split.i.i.preheader, label %vector.main.loop.iter.check60

vector.main.loop.iter.check60:                    ; preds = %vector.memcheck56
  %min.iters.check61 = icmp ult i32 %i.aa, 16
  br i1 %min.iters.check61, label %vec.epilog.ph75, label %vector.ph62

vector.ph62:                                      ; preds = %vector.main.loop.iter.check60
  %i.af = and i32 %i.aa, 8
  %n.vec63 = and i32 %i.aa, -16                   ; 4 uses
  %i.ag = add i32 %i.w, %n.vec63
  br label %vector.body64

vector.body64:                                    ; preds = %vector.ph62, %vector.body64
  %index65 = phi i32 [ 0, %vector.ph62 ], [ %index.next68, %vector.body64 ] ; 2 uses
  %i.ah = add i32 %i.w, %index65
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  %wide.load66 = load <16 x i8>, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds i8, ptr %3, i64 %i.ai
  %wide.load67 = load <16 x i8>, ptr %i.ak, align 1
  %i.al = zext <16 x i8> %wide.load67 to <16 x i64>
  %i.am = zext <16 x i8> %wide.load66 to <16 x i64>
  %i.an = sub nsw <16 x i64> %i.al, %i.am         ; 2 uses
  %i.ao = lshr <16 x i64> %i.an, splat (i64 1)
  %i.ap = and <16 x i64> %i.an, splat (i64 1)
  %i.aq = add nuw <16 x i64> %i.ap, %i.ao
  %i.ar = trunc <16 x i64> %i.aq to <16 x i8>
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ai
  store <16 x i8> %i.ar, ptr %i.as, align 1
  %index.next68 = add nuw i32 %index65, 16        ; 2 uses
  %i.at = icmp eq i32 %index.next68, %n.vec63
  br i1 %i.at, label %middle.block69, label %vector.body64, !llvm.loop !1896

middle.block69:                                   ; preds = %vector.body64
  %cmp.n70 = icmp eq i32 %i.aa, %n.vec63
  br i1 %cmp.n70, label %vext_vv_rm_1.exit.i, label %vec.epilog.iter.check72

vec.epilog.iter.check72:                          ; preds = %middle.block69
  %min.epilog.iters.check74.not.not = icmp eq i32 %i.af, 0
  br i1 %min.epilog.iters.check74.not.not, label %.lr.ph.split.i.i.preheader, label %vec.epilog.ph75, !prof !32

vec.epilog.ph75:                                  ; preds = %vector.main.loop.iter.check60, %vec.epilog.iter.check72
  %vec.epilog.resume.val76 = phi i32 [ %n.vec63, %vec.epilog.iter.check72 ], [ 0, %vector.main.loop.iter.check60 ]
  %n.vec77 = and i32 %i.aa, -8                    ; 3 uses
  %i.au = add i32 %i.w, %n.vec77
  br label %vec.epilog.vector.body78

vec.epilog.vector.body78:                         ; preds = %vec.epilog.vector.body78, %vec.epilog.ph75
  %index79 = phi i32 [ %vec.epilog.resume.val76, %vec.epilog.ph75 ], [ %index.next82, %vec.epilog.vector.body78 ] ; 2 uses
  %i.av = add i32 %i.w, %index79
  %i.aw = sext i32 %i.av to i64                   ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %2, i64 %i.aw
  %wide.load80 = load <8 x i8>, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds i8, ptr %3, i64 %i.aw
  %wide.load81 = load <8 x i8>, ptr %i.ay, align 1
  %i.az = zext <8 x i8> %wide.load81 to <8 x i64>
  %i.ba = zext <8 x i8> %wide.load80 to <8 x i64>
  %i.bb = sub nsw <8 x i64> %i.az, %i.ba          ; 2 uses
  %i.bc = lshr <8 x i64> %i.bb, splat (i64 1)
  %i.bd = and <8 x i64> %i.bb, splat (i64 1)
  %i.be = add nuw <8 x i64> %i.bd, %i.bc
  %i.bf = trunc <8 x i64> %i.be to <8 x i8>
  %i.bg = getelementptr inbounds i8, ptr %0, i64 %i.aw
  store <8 x i8> %i.bf, ptr %i.bg, align 1
  %index.next82 = add nuw i32 %index79, 8         ; 2 uses
  %i.bh = icmp eq i32 %index.next82, %n.vec77
  br i1 %i.bh, label %vec.epilog.middle.block83, label %vec.epilog.vector.body78, !llvm.loop !1897

vec.epilog.middle.block83:                        ; preds = %vec.epilog.vector.body78
  %cmp.n84 = icmp eq i32 %i.aa, %n.vec77
  br i1 %cmp.n84, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %iter.check71, %vector.memcheck56, %vec.epilog.iter.check72, %vec.epilog.middle.block83
  %.021.i.i.ph = phi i32 [ %i.w, %iter.check71 ], [ %i.w, %vector.memcheck56 ], [ %i.ag, %vec.epilog.iter.check72 ], [ %i.au, %vec.epilog.middle.block83 ] ; 5 uses
  %i.bi = sub i32 %i.e, %.021.i.i.ph
  %.neg103 = add i32 %.021.i.i.ph, 1
  %xtraiter98 = and i32 %i.bi, 1
  %lcmp.mod99.not = icmp eq i32 %xtraiter98, 0
  br i1 %lcmp.mod99.not, label %.lr.ph.split.i.i.prol.loopexit, label %.lr.ph.split.i.i.prol

.lr.ph.split.i.i.prol:                            ; preds = %.lr.ph.split.i.i.preheader
  %i.bj = sext i32 %.021.i.i.ph to i64            ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = getelementptr inbounds i8, ptr %3, i64 %i.bj
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i64
  %i.bp = zext i8 %i.bl to i64
  %i.bq = sub nsw i64 %i.bo, %i.bp                ; 2 uses
  %i.br = lshr i64 %i.bq, 1
  %i.bs = and i64 %i.bq, 1
  %i.bt = add nuw i64 %i.bs, %i.br
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = getelementptr inbounds i8, ptr %0, i64 %i.bj
  store i8 %i.bu, ptr %i.bv, align 1
  %i.bw = add i32 %.021.i.i.ph, 1
  br label %.lr.ph.split.i.i.prol.loopexit

.lr.ph.split.i.i.prol.loopexit:                   ; preds = %.lr.ph.split.i.i.prol, %.lr.ph.split.i.i.preheader
  %.021.i.i.unr = phi i32 [ %.021.i.i.ph, %.lr.ph.split.i.i.preheader ], [ %i.bw, %.lr.ph.split.i.i.prol ]
  %i.bx = icmp eq i32 %i.e, %.neg103
  br i1 %i.bx, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.f
  %.021.us.i.i = phi i32 [ %i.cg, %bb.f ], [ %i.w, %.lr.ph.i.i ] ; 5 uses
  %i.by = sdiv i32 %.021.us.i.i, 64
  %i.bz = srem i32 %.021.us.i.i, 64
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = zext nneg i32 %i.bz to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.ce, %i.cc
  %.not20.us.i.i = icmp eq i64 %i.cf, 0
  %i.cg = add nuw i32 %.021.us.i.i, 1             ; 3 uses
  br i1 %.not20.us.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.i.i
  %i.ch = sext i32 %.021.us.i.i to i64            ; 3 uses
  %i.ci = getelementptr inbounds i8, ptr %2, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = getelementptr inbounds i8, ptr %3, i64 %i.ch
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i64
  %i.cn = zext i8 %i.cj to i64
  %i.co = sub nsw i64 %i.cm, %i.cn                ; 2 uses
  %i.cp = lshr i64 %i.co, 1
  %i.cq = and i64 %i.co, 1
  %i.cr = add nuw i64 %i.cq, %i.cp
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = getelementptr inbounds i8, ptr %0, i64 %i.ch
  store i8 %i.cs, ptr %i.ct, align 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.us.i.i
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %.021.us.i.i, i32 noundef %i.cg) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %exitcond23.not.i.i = icmp eq i32 %i.cg, %i.e
  br i1 %exitcond23.not.i.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !11

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.prol.loopexit, %.lr.ph.split.i.i
  %.021.i.i = phi i32 [ %i.dv, %.lr.ph.split.i.i ], [ %.021.i.i.unr, %.lr.ph.split.i.i.prol.loopexit ] ; 3 uses
  %i.cu = sext i32 %.021.i.i to i64               ; 3 uses
  %i.cv = getelementptr inbounds i8, ptr %2, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = getelementptr inbounds i8, ptr %3, i64 %i.cu
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = zext i8 %i.cy to i64
  %i.da = zext i8 %i.cw to i64
  %i.db = sub nsw i64 %i.cz, %i.da                ; 2 uses
  %i.dc = lshr i64 %i.db, 1
  %i.dd = and i64 %i.db, 1
  %i.de = add nuw i64 %i.dd, %i.dc
  %i.df = trunc i64 %i.de to i8
  %i.dg = getelementptr inbounds i8, ptr %0, i64 %i.cu
  store i8 %i.df, ptr %i.dg, align 1
  %i.dh = add i32 %.021.i.i, 1
  %i.di = sext i32 %i.dh to i64                   ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %2, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = getelementptr inbounds i8, ptr %3, i64 %i.di
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i64
  %i.do = zext i8 %i.dk to i64
  %i.dp = sub nsw i64 %i.dn, %i.do                ; 2 uses
  %i.dq = lshr i64 %i.dp, 1
  %i.dr = and i64 %i.dp, 1
  %i.ds = add nuw i64 %i.dr, %i.dq
  %i.dt = trunc i64 %i.ds to i8
  %i.du = getelementptr inbounds i8, ptr %0, i64 %i.di
  store i8 %i.dt, ptr %i.du, align 1
  %i.dv = add i32 %.021.i.i, 2                    ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i32 %i.dv, %i.e
  br i1 %exitcond.not.i.i.1, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i.i, !llvm.loop !1898

.lr.ph.i56.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i61.i, label %.lr.ph.split.i58.i.preheader

.lr.ph.split.i58.i.preheader:                     ; preds = %.lr.ph.i56.i
  %i.dw = sub i32 %i.e, %i.w
  %.neg102 = add i32 %i.w, 1
  %xtraiter96 = and i32 %i.dw, 1
  %lcmp.mod97.not = icmp eq i32 %xtraiter96, 0
  br i1 %lcmp.mod97.not, label %.lr.ph.split.i58.i.prol.loopexit, label %.lr.ph.split.i58.i.prol

.lr.ph.split.i58.i.prol:                          ; preds = %.lr.ph.split.i58.i.preheader
  %i.dx = sext i32 %i.w to i64                    ; 3 uses
  %i.dy = getelementptr inbounds i8, ptr %2, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = getelementptr inbounds i8, ptr %3, i64 %i.dx
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = zext i8 %i.eb to i64
  %i.ed = zext i8 %i.dz to i64
  %i.ee = sub nsw i64 %i.ec, %i.ed                ; 2 uses
  %i.ef = lshr i64 %i.ee, 1
  %i.eg = and i64 %i.ee, 3
  %i.eh = icmp eq i64 %i.eg, 3
  %i.ei = zext i1 %i.eh to i64
  %i.ej = add nuw i64 %i.ef, %i.ei
  %i.ek = trunc i64 %i.ej to i8
  %i.el = getelementptr inbounds i8, ptr %0, i64 %i.dx
  store i8 %i.ek, ptr %i.el, align 1
  %i.em = add i32 %i.w, 1
  br label %.lr.ph.split.i58.i.prol.loopexit

.lr.ph.split.i58.i.prol.loopexit:                 ; preds = %.lr.ph.split.i58.i.prol, %.lr.ph.split.i58.i.preheader
  %.021.i59.i.unr = phi i32 [ %i.w, %.lr.ph.split.i58.i.preheader ], [ %i.em, %.lr.ph.split.i58.i.prol ]
  %i.en = icmp eq i32 %i.e, %.neg102
  br i1 %i.en, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i58.i

.lr.ph.split.us.i61.i:                            ; preds = %.lr.ph.i56.i, %bb.i
  %.021.us.i62.i = phi i32 [ %i.ew, %bb.i ], [ %i.w, %.lr.ph.i56.i ] ; 5 uses
  %i.eo = sdiv i32 %.021.us.i62.i, 64
  %i.ep = srem i32 %.021.us.i62.i, 64
  %i.eq = sext i32 %i.eo to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %1, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8
  %i.et = zext nneg i32 %i.ep to i64
  %i.eu = shl nuw i64 1, %i.et
  %i.ev = and i64 %i.eu, %i.es
  %.not20.us.i63.i = icmp eq i64 %i.ev, 0
  %i.ew = add nuw i32 %.021.us.i62.i, 1           ; 3 uses
  br i1 %.not20.us.i63.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.i61.i
  %i.ex = sext i32 %.021.us.i62.i to i64          ; 3 uses
  %i.ey = getelementptr inbounds i8, ptr %2, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = getelementptr inbounds i8, ptr %3, i64 %i.ex
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = zext i8 %i.fb to i64
  %i.fd = zext i8 %i.ez to i64
  %i.fe = sub nsw i64 %i.fc, %i.fd                ; 2 uses
  %i.ff = lshr i64 %i.fe, 1
  %i.fg = and i64 %i.fe, 3
  %i.fh = icmp eq i64 %i.fg, 3
  %i.fi = zext i1 %i.fh to i64
  %i.fj = add nuw i64 %i.ff, %i.fi
  %i.fk = trunc i64 %i.fj to i8
  %i.fl = getelementptr inbounds i8, ptr %0, i64 %i.ex
  store i8 %i.fk, ptr %i.fl, align 1
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.us.i61.i
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %.021.us.i62.i, i32 noundef %i.ew) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %exitcond23.not.i64.i = icmp eq i32 %i.ew, %i.e
  br i1 %exitcond23.not.i64.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.us.i61.i, !llvm.loop !11

.lr.ph.split.i58.i:                               ; preds = %.lr.ph.split.i58.i.prol.loopexit, %.lr.ph.split.i58.i
  %.021.i59.i = phi i32 [ %i.gr, %.lr.ph.split.i58.i ], [ %.021.i59.i.unr, %.lr.ph.split.i58.i.prol.loopexit ] ; 3 uses
  %i.fm = sext i32 %.021.i59.i to i64             ; 3 uses
  %i.fn = getelementptr inbounds i8, ptr %2, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = getelementptr inbounds i8, ptr %3, i64 %i.fm
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = zext i8 %i.fq to i64
  %i.fs = zext i8 %i.fo to i64
  %i.ft = sub nsw i64 %i.fr, %i.fs                ; 2 uses
  %i.fu = lshr i64 %i.ft, 1
  %i.fv = and i64 %i.ft, 3
  %i.fw = icmp eq i64 %i.fv, 3
  %i.fx = zext i1 %i.fw to i64
  %i.fy = add nuw i64 %i.fu, %i.fx
  %i.fz = trunc i64 %i.fy to i8
  %i.ga = getelementptr inbounds i8, ptr %0, i64 %i.fm
  store i8 %i.fz, ptr %i.ga, align 1
  %i.gb = add i32 %.021.i59.i, 1
  %i.gc = sext i32 %i.gb to i64                   ; 3 uses
  %i.gd = getelementptr inbounds i8, ptr %2, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = getelementptr inbounds i8, ptr %3, i64 %i.gc
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = zext i8 %i.gg to i64
  %i.gi = zext i8 %i.ge to i64
  %i.gj = sub nsw i64 %i.gh, %i.gi                ; 2 uses
  %i.gk = lshr i64 %i.gj, 1
  %i.gl = and i64 %i.gj, 3
  %i.gm = icmp eq i64 %i.gl, 3
  %i.gn = zext i1 %i.gm to i64
  %i.go = add nuw i64 %i.gk, %i.gn
  %i.gp = trunc i64 %i.go to i8
  %i.gq = getelementptr inbounds i8, ptr %0, i64 %i.gc
  store i8 %i.gp, ptr %i.gq, align 1
  %i.gr = add i32 %.021.i59.i, 2                  ; 2 uses
  %exitcond.not.i60.i.1 = icmp eq i32 %i.gr, %i.e
  br i1 %exitcond.not.i60.i.1, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i58.i, !llvm.loop !11

.lr.ph.i66.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i71.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph.i66.i
  %i.gs = sub i32 %i.e, %i.w                      ; 7 uses
  %min.iters.check = icmp ult i32 %i.gs, 8
  %i.gt = add i32 %i.e, -1
  %i.gu = icmp slt i32 %i.gt, %i.w
  %or.cond88 = or i1 %min.iters.check, %i.gu
  br i1 %or.cond88, label %.lr.ph.split.i68.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.gv = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.gv, -32
  %i.gw = sub i64 %i.c, %i.a
  %diff.check39 = icmp ugt i64 %i.gw, -32
  %conflict.rdx = or i1 %diff.check, %diff.check39
  br i1 %conflict.rdx, label %.lr.ph.split.i68.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i32 %i.gs, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gx = and i32 %i.gs, 24
  %n.vec = and i32 %i.gs, -32                     ; 4 uses
  %i.gy = add i32 %i.w, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gz = add i32 %i.w, %index
  %i.ha = sext i32 %i.gz to i64                   ; 3 uses
  %i.hb = getelementptr inbounds i8, ptr %2, i64 %i.ha ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %wide.load = load <16 x i8>, ptr %i.hb, align 1
  %wide.load41 = load <16 x i8>, ptr %i.hc, align 1
  %i.hd = getelementptr inbounds i8, ptr %3, i64 %i.ha ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %wide.load42 = load <16 x i8>, ptr %i.hd, align 1
  %wide.load43 = load <16 x i8>, ptr %i.he, align 1
  %i.hf = zext <16 x i8> %wide.load42 to <16 x i16>
  %i.hg = zext <16 x i8> %wide.load43 to <16 x i16>
  %i.hh = zext <16 x i8> %wide.load to <16 x i16>
  %i.hi = zext <16 x i8> %wide.load41 to <16 x i16>
  %i.hj = sub nsw <16 x i16> %i.hf, %i.hh
  %i.hk = sub nsw <16 x i16> %i.hg, %i.hi
  %i.hl = lshr <16 x i16> %i.hj, splat (i16 1)
  %i.hm = lshr <16 x i16> %i.hk, splat (i16 1)
  %i.hn = trunc <16 x i16> %i.hl to <16 x i8>
  %i.ho = trunc <16 x i16> %i.hm to <16 x i8>
  %i.hp = getelementptr inbounds i8, ptr %0, i64 %i.ha ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store <16 x i8> %i.hn, ptr %i.hp, align 1
  store <16 x i8> %i.ho, ptr %i.hq, align 1
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.hr = icmp eq i32 %index.next, %n.vec
  br i1 %i.hr, label %middle.block, label %vector.body, !llvm.loop !1899

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.gs, %n.vec
  br i1 %cmp.n, label %vext_vv_rm_1.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.gx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.i68.i.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i32 %i.gs, -8                    ; 3 uses
  %i.hs = add i32 %i.w, %n.vec44
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 2 uses
  %i.ht = add i32 %i.w, %index45
  %i.hu = sext i32 %i.ht to i64                   ; 3 uses
  %i.hv = getelementptr inbounds i8, ptr %2, i64 %i.hu
  %wide.load46 = load <8 x i8>, ptr %i.hv, align 1
  %i.hw = getelementptr inbounds i8, ptr %3, i64 %i.hu
  %wide.load47 = load <8 x i8>, ptr %i.hw, align 1
  %i.hx = zext <8 x i8> %wide.load47 to <8 x i16>
  %i.hy = zext <8 x i8> %wide.load46 to <8 x i16>
  %i.hz = sub nsw <8 x i16> %i.hx, %i.hy
  %i.ia = lshr <8 x i16> %i.hz, splat (i16 1)
  %i.ib = trunc <8 x i16> %i.ia to <8 x i8>
  %i.ic = getelementptr inbounds i8, ptr %0, i64 %i.hu
  store <8 x i8> %i.ib, ptr %i.ic, align 1
  %index.next48 = add nuw i32 %index45, 8         ; 2 uses
  %i.id = icmp eq i32 %index.next48, %n.vec44
  br i1 %i.id, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1900

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i32 %i.gs, %n.vec44
  br i1 %cmp.n49, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i68.i.preheader

.lr.ph.split.i68.i.preheader:                     ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.021.i69.i.ph = phi i32 [ %i.w, %iter.check ], [ %i.w, %vector.memcheck ], [ %i.gy, %vec.epilog.iter.check ], [ %i.hs, %vec.epilog.middle.block ] ; 5 uses
  %i.ie = sub i32 %i.e, %.021.i69.i.ph
  %.neg = add i32 %.021.i69.i.ph, 1
  %xtraiter = and i32 %i.ie, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i68.i.prol.loopexit, label %.lr.ph.split.i68.i.prol

.lr.ph.split.i68.i.prol:                          ; preds = %.lr.ph.split.i68.i.preheader
  %i.if = sext i32 %.021.i69.i.ph to i64          ; 3 uses
  %i.ig = getelementptr inbounds i8, ptr %2, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1
  %i.ii = getelementptr inbounds i8, ptr %3, i64 %i.if
  %i.ij = load i8, ptr %i.ii, align 1
  %i.ik = zext i8 %i.ij to i16
  %i.il = zext i8 %i.ih to i16
  %i.im = sub nsw i16 %i.ik, %i.il
  %i.in = lshr i16 %i.im, 1
  %i.io = trunc i16 %i.in to i8
  %i.ip = getelementptr inbounds i8, ptr %0, i64 %i.if
  store i8 %i.io, ptr %i.ip, align 1
  %i.iq = add i32 %.021.i69.i.ph, 1
  br label %.lr.ph.split.i68.i.prol.loopexit

.lr.ph.split.i68.i.prol.loopexit:                 ; preds = %.lr.ph.split.i68.i.prol, %.lr.ph.split.i68.i.preheader
  %.021.i69.i.unr = phi i32 [ %.021.i69.i.ph, %.lr.ph.split.i68.i.preheader ], [ %i.iq, %.lr.ph.split.i68.i.prol ]
  %i.ir = icmp eq i32 %i.e, %.neg
  br i1 %i.ir, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i68.i

.lr.ph.split.us.i71.i:                            ; preds = %.lr.ph.i66.i, %bb.l
  %.021.us.i72.i = phi i32 [ %i.ja, %bb.l ], [ %i.w, %.lr.ph.i66.i ] ; 5 uses
  %i.is = sdiv i32 %.021.us.i72.i, 64
  %i.it = srem i32 %.021.us.i72.i, 64
  %i.iu = sext i32 %i.is to i64
  %i.iv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.iu
  %i.iw = load i64, ptr %i.iv, align 8
  %i.ix = zext nneg i32 %i.it to i64
  %i.iy = shl nuw i64 1, %i.ix
  %i.iz = and i64 %i.iy, %i.iw
  %.not20.us.i73.i = icmp eq i64 %i.iz, 0
  %i.ja = add nuw i32 %.021.us.i72.i, 1           ; 3 uses
  br i1 %.not20.us.i73.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us.i71.i
  %i.jb = sext i32 %.021.us.i72.i to i64          ; 3 uses
  %i.jc = getelementptr inbounds i8, ptr %2, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1
  %i.je = getelementptr inbounds i8, ptr %3, i64 %i.jb
  %i.jf = load i8, ptr %i.je, align 1
  %i.jg = zext i8 %i.jf to i16
  %i.jh = zext i8 %i.jd to i16
  %i.ji = sub nsw i16 %i.jg, %i.jh
  %i.jj = lshr i16 %i.ji, 1
  %i.jk = trunc i16 %i.jj to i8
  %i.jl = getelementptr inbounds i8, ptr %0, i64 %i.jb
  store i8 %i.jk, ptr %i.jl, align 1
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.us.i71.i
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %.021.us.i72.i, i32 noundef %i.ja) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %exitcond23.not.i74.i = icmp eq i32 %i.ja, %i.e
  br i1 %exitcond23.not.i74.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.us.i71.i, !llvm.loop !11

.lr.ph.split.i68.i:                               ; preds = %.lr.ph.split.i68.i.prol.loopexit, %.lr.ph.split.i68.i
  %.021.i69.i = phi i32 [ %i.kj, %.lr.ph.split.i68.i ], [ %.021.i69.i.unr, %.lr.ph.split.i68.i.prol.loopexit ] ; 3 uses
  %i.jm = sext i32 %.021.i69.i to i64             ; 3 uses
  %i.jn = getelementptr inbounds i8, ptr %2, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1
  %i.jp = getelementptr inbounds i8, ptr %3, i64 %i.jm
  %i.jq = load i8, ptr %i.jp, align 1
  %i.jr = zext i8 %i.jq to i16
  %i.js = zext i8 %i.jo to i16
  %i.jt = sub nsw i16 %i.jr, %i.js
  %i.ju = lshr i16 %i.jt, 1
  %i.jv = trunc i16 %i.ju to i8
  %i.jw = getelementptr inbounds i8, ptr %0, i64 %i.jm
  store i8 %i.jv, ptr %i.jw, align 1
  %i.jx = add i32 %.021.i69.i, 1
  %i.jy = sext i32 %i.jx to i64                   ; 3 uses
  %i.jz = getelementptr inbounds i8, ptr %2, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1
  %i.kb = getelementptr inbounds i8, ptr %3, i64 %i.jy
  %i.kc = load i8, ptr %i.kb, align 1
  %i.kd = zext i8 %i.kc to i16
  %i.ke = zext i8 %i.ka to i16
  %i.kf = sub nsw i16 %i.kd, %i.ke
  %i.kg = lshr i16 %i.kf, 1
  %i.kh = trunc i16 %i.kg to i8
  %i.ki = getelementptr inbounds i8, ptr %0, i64 %i.jy
  store i8 %i.kh, ptr %i.ki, align 1
  %i.kj = add i32 %.021.i69.i, 2                  ; 2 uses
  %exitcond.not.i70.i.1 = icmp eq i32 %i.kj, %i.e
  br i1 %exitcond.not.i70.i.1, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i68.i, !llvm.loop !1901

.lr.ph.i76.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i81.i, label %.lr.ph.split.i78.i.preheader

.lr.ph.split.i78.i.preheader:                     ; preds = %.lr.ph.i76.i
  %i.kk = sub i32 %i.e, %i.w
  %.neg104 = add i32 %i.w, 1
  %xtraiter100 = and i32 %i.kk, 1
  %lcmp.mod101.not = icmp eq i32 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.lr.ph.split.i78.i.prol.loopexit, label %.lr.ph.split.i78.i.prol

.lr.ph.split.i78.i.prol:                          ; preds = %.lr.ph.split.i78.i.preheader
  %i.kl = sext i32 %i.w to i64                    ; 3 uses
  %i.km = getelementptr inbounds i8, ptr %2, i64 %i.kl
  %i.kn = load i8, ptr %i.km, align 1
  %i.ko = getelementptr inbounds i8, ptr %3, i64 %i.kl
  %i.kp = load i8, ptr %i.ko, align 1
  %i.kq = zext i8 %i.kp to i64
  %i.kr = zext i8 %i.kn to i64
  %i.ks = sub nsw i64 %i.kq, %i.kr                ; 2 uses
  %i.kt = lshr i64 %i.ks, 1
  %i.ku = and i64 %i.ks, 3
  %i.kv = icmp eq i64 %i.ku, 1
end_hunk_6
begin_hunk_7_@helper_vsmul_vx_d:bb.a
  store i64 %.012.i.i18, ptr %i.dr, align 8
  %i.ds = add i32 %.021.i59.i, 1                  ; 2 uses
  %exitcond.not.i60.i = icmp eq i32 %i.ds, %i.b
  br i1 %exitcond.not.i60.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i58.i, !llvm.loop !12

.lr.ph.i66.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i71.i, label %.lr.ph.split.i68.i

.lr.ph.split.us.i71.i:                            ; preds = %.lr.ph.i66.i, %bb.ah
  %.021.us.i72.i = phi i32 [ %i.eb, %bb.ah ], [ %i.u, %.lr.ph.i66.i ] ; 5 uses
  %i.dt = sdiv i32 %.021.us.i72.i, 64
  %i.du = srem i32 %.021.us.i72.i, 64
  %i.dv = sext i32 %i.dt to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = zext nneg i32 %i.du to i64
  %i.dz = shl nuw i64 1, %i.dy
  %i.ea = and i64 %i.dz, %i.dx
  %.not20.us.i73.i = icmp eq i64 %i.ea, 0
  %i.eb = add nuw i32 %.021.us.i72.i, 1           ; 3 uses
  br i1 %.not20.us.i73.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.split.us.i71.i
  %i.ec = sext i32 %.021.us.i72.i to i64          ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8            ; 2 uses
  %i.ef = icmp eq i64 %i.ee, -9223372036854775808
  %or.cond.i.i13 = and i1 %i.y, %i.ef
  br i1 %or.cond.i.i13, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i8 1, ptr %i.aa, align 1
  br label %do_vsmul_vx_d.exit15

bb.af:                                            ; preds = %bb.ad
  %i.eg = sext i64 %i.ee to i128
  %i.eh = mul nsw i128 %i.eg, %i.z                ; 2 uses
  %i.ei = trunc i128 %i.eh to i64
  %i.ej = lshr i128 %i.eh, 64
  %i.ek = trunc nuw i128 %i.ej to i64
  %i.el = tail call i64 @llvm.fshl.i64(i64 %i.ek, i64 %i.ei, i64 1)
  br label %do_vsmul_vx_d.exit15

do_vsmul_vx_d.exit15:                             ; preds = %bb.ae, %bb.af
  %.012.i.i14 = phi i64 [ 9223372036854775807, %bb.ae ], [ %i.el, %bb.af ]
  %i.em = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ec
  store i64 %.012.i.i14, ptr %i.em, align 8
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.us.i71.i
  %i.en = shl i32 %.021.us.i72.i, 3
  %i.eo = shl i32 %i.eb, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.s, i32 noundef %i.en, i32 noundef %i.eo) #17
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %do_vsmul_vx_d.exit15
  %exitcond23.not.i74.i = icmp eq i32 %i.eb, %i.b
  br i1 %exitcond23.not.i74.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.us.i71.i, !llvm.loop !12

.lr.ph.split.i68.i:                               ; preds = %.lr.ph.i66.i, %do_vsmul_vx_d.exit12
  %.021.i69.i = phi i32 [ %i.fa, %do_vsmul_vx_d.exit12 ], [ %i.u, %.lr.ph.i66.i ] ; 2 uses
  %i.ep = sext i32 %.021.i69.i to i64             ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8            ; 2 uses
  %i.es = icmp eq i64 %i.er, -9223372036854775808
  %or.cond.i.i10 = and i1 %i.y, %i.es
  br i1 %or.cond.i.i10, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.split.i68.i
  store i8 1, ptr %i.aa, align 1
  br label %do_vsmul_vx_d.exit12

bb.aj:                                            ; preds = %.lr.ph.split.i68.i
  %i.et = sext i64 %i.er to i128
  %i.eu = mul nsw i128 %i.et, %i.z                ; 2 uses
  %i.ev = trunc i128 %i.eu to i64
  %i.ew = lshr i128 %i.eu, 64
  %i.ex = trunc nuw i128 %i.ew to i64
  %i.ey = tail call i64 @llvm.fshl.i64(i64 %i.ex, i64 %i.ev, i64 1)
  br label %do_vsmul_vx_d.exit12

do_vsmul_vx_d.exit12:                             ; preds = %bb.ai, %bb.aj
  %.012.i.i11 = phi i64 [ 9223372036854775807, %bb.ai ], [ %i.ey, %bb.aj ]
  %i.ez = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ep
  store i64 %.012.i.i11, ptr %i.ez, align 8
  %i.fa = add i32 %.021.i69.i, 1                  ; 2 uses
  %exitcond.not.i70.i = icmp eq i32 %i.fa, %i.b
  br i1 %exitcond.not.i70.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i68.i, !llvm.loop !12

.lr.ph.i76.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i81.i, label %.lr.ph.split.i78.i

.lr.ph.split.us.i81.i:                            ; preds = %.lr.ph.i76.i, %bb.ao
  %.021.us.i82.i = phi i32 [ %i.fj, %bb.ao ], [ %i.u, %.lr.ph.i76.i ] ; 5 uses
  %i.fb = sdiv i32 %.021.us.i82.i, 64
  %i.fc = srem i32 %.021.us.i82.i, 64
  %i.fd = sext i32 %i.fb to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = zext nneg i32 %i.fc to i64
  %i.fh = shl nuw i64 1, %i.fg
  %i.fi = and i64 %i.fh, %i.ff
  %.not20.us.i83.i = icmp eq i64 %i.fi, 0
  %i.fj = add nuw i32 %.021.us.i82.i, 1           ; 3 uses
  br i1 %.not20.us.i83.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.split.us.i81.i
  %i.fk = sext i32 %.021.us.i82.i to i64          ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %3, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8            ; 2 uses
  %i.fn = icmp eq i64 %i.fm, -9223372036854775808
  %or.cond.i.i5 = and i1 %i.y, %i.fn
  br i1 %or.cond.i.i5, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.aa, align 1
  br label %do_vsmul_vx_d.exit9

bb.am:                                            ; preds = %bb.ak
  %i.fo = sext i64 %i.fm to i128
  %i.fp = mul nsw i128 %i.fo, %i.z                ; 2 uses
  %i.fq = trunc i128 %i.fp to i64                 ; 3 uses
  %i.fr = lshr i128 %i.fp, 64
  %i.fs = trunc nuw i128 %i.fr to i64
  %i.ft = and i64 %i.fq, 9223372036854775807
  %.not.i.i.i6 = icmp sgt i64 %i.fq, -1
  %i.fu = icmp ne i64 %i.ft, 0
  %.not33.not = and i1 %.not.i.i.i6, %i.fu
  %i.fv = tail call i64 @llvm.fshl.i64(i64 %i.fs, i64 %i.fq, i64 1)
  %i.fw = zext i1 %.not33.not to i64
  %spec.select = or disjoint i64 %i.fv, %i.fw
  br label %do_vsmul_vx_d.exit9

do_vsmul_vx_d.exit9:                              ; preds = %bb.am, %bb.al
  %.012.i.i8 = phi i64 [ 9223372036854775807, %bb.al ], [ %spec.select, %bb.am ]
  %i.fx = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fk
  store i64 %.012.i.i8, ptr %i.fx, align 8
  br label %bb.ao

bb.an:                                            ; preds = %.lr.ph.split.us.i81.i
  %i.fy = shl i32 %.021.us.i82.i, 3
  %i.fz = shl i32 %i.fj, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.s, i32 noundef %i.fy, i32 noundef %i.fz) #17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %do_vsmul_vx_d.exit9
  %exitcond23.not.i84.i = icmp eq i32 %i.fj, %i.b
  br i1 %exitcond23.not.i84.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.us.i81.i, !llvm.loop !12

.lr.ph.split.i78.i:                               ; preds = %.lr.ph.i76.i, %do_vsmul_vx_d.exit
  %.021.i79.i = phi i32 [ %i.go, %do_vsmul_vx_d.exit ], [ %i.u, %.lr.ph.i76.i ] ; 2 uses
  %i.ga = sext i32 %.021.i79.i to i64             ; 2 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ga
  %i.gc = load i64, ptr %i.gb, align 8            ; 2 uses
  %i.gd = icmp eq i64 %i.gc, -9223372036854775808
  %or.cond.i.i = and i1 %i.y, %i.gd
  br i1 %or.cond.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.split.i78.i
  store i8 1, ptr %i.aa, align 1
  br label %do_vsmul_vx_d.exit

bb.aq:                                            ; preds = %.lr.ph.split.i78.i
  %i.ge = sext i64 %i.gc to i128
  %i.gf = mul nsw i128 %i.ge, %i.z                ; 2 uses
  %i.gg = trunc i128 %i.gf to i64                 ; 3 uses
  %i.gh = lshr i128 %i.gf, 64
  %i.gi = trunc nuw i128 %i.gh to i64
  %i.gj = and i64 %i.gg, 9223372036854775807
  %.not.i.i.i = icmp sgt i64 %i.gg, -1
  %i.gk = icmp ne i64 %i.gj, 0
  %.not32.not = and i1 %.not.i.i.i, %i.gk
  %i.gl = tail call i64 @llvm.fshl.i64(i64 %i.gi, i64 %i.gg, i64 1)
  %i.gm = zext i1 %.not32.not to i64
  %spec.select34 = or disjoint i64 %i.gl, %i.gm
  br label %do_vsmul_vx_d.exit

do_vsmul_vx_d.exit:                               ; preds = %bb.aq, %bb.ap
  %.012.i.i = phi i64 [ 9223372036854775807, %bb.ap ], [ %spec.select34, %bb.aq ]
  %i.gn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ga
  store i64 %.012.i.i, ptr %i.gn, align 8
  %i.go = add i32 %.021.i79.i, 1                  ; 2 uses
  %exitcond.not.i80.i = icmp eq i32 %i.go, %i.b
  br i1 %exitcond.not.i80.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i78.i, !llvm.loop !12

vext_vx_rm_1.exit.i:                              ; preds = %do_vsmul_vx_d.exit12, %bb.ah, %do_vsmul_vx_d.exit19, %bb.x, %do_vsmul_vx_d.exit27, %bb.k, %do_vsmul_vx_d.exit, %bb.ao
  store i32 0, ptr %i.t, align 4
  %i.gp = shl i32 %i.b, 3
  %.fr.i = freeze i32 %i.o
  %i.gq = and i32 %.fr.i, -8
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.gp, i32 noundef %i.gq) #17
  br label %vext_vx_rm_2.exit

vext_vx_rm_2.exit:                                ; preds = %bb.b, %vext_vx_rm_1.exit.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vssrl_vv_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.e = load i32, ptr %i.d, align 8              ; 16 uses
  %i.f = getelementptr i8, ptr %4, i64 4608
  %.val.i = load i64, ptr %i.f, align 16
  %i.g = shl i32 %5, 3
  %i.h = and i32 %i.g, 2040
  %i.i = add nuw nsw i32 %i.h, 8
  %i.j = trunc i64 %.val.i to i32
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 7
  %i.m = shl i32 %5, 18
  %i.n = ashr i32 %i.m, 29
  %i.o = sub nsw i32 %i.n, %i.l
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = shl nuw nsw i32 %i.i, %i.p
  %i.r = lshr i32 %5, 14
  %i.s = and i32 %i.r, 1
  %i.t = lshr i32 %5, 16
  %i.u = and i32 %i.t, 1                          ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4              ; 23 uses
  %.not.i = icmp ult i32 %i.w, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.v, align 4
  br label %vext_vv_rm_2.exit

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 4624
  %i.y = load i8, ptr %i.x, align 16
  %i.z = and i32 %5, 1024
  %.not.i77.i = icmp eq i32 %i.z, 0               ; 4 uses
  switch i8 %i.y, label %.lr.ph.i76.i [
    i8 0, label %.lr.ph.i.i
    i8 1, label %.lr.ph.i56.i
    i8 2, label %.lr.ph.i66.i
  ]

.lr.ph.i.i:                                       ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i.i, label %iter.check100

iter.check100:                                    ; preds = %.lr.ph.i.i
  %i.aa = sub i32 %i.e, %i.w                      ; 7 uses
  %min.iters.check84 = icmp ult i32 %i.aa, 8
  %i.ab = add i32 %i.e, -1
  %i.ac = icmp slt i32 %i.ab, %i.w
  %or.cond = or i1 %min.iters.check84, %i.ac
  br i1 %or.cond, label %.lr.ph.split.i.i.preheader, label %vector.memcheck85

vector.memcheck85:                                ; preds = %iter.check100
  %i.ad = sub i64 %i.b, %i.a
  %diff.check86 = icmp ugt i64 %i.ad, -16
  %i.ae = sub i64 %i.c, %i.a
  %diff.check87 = icmp ugt i64 %i.ae, -16
  %conflict.rdx88 = or i1 %diff.check86, %diff.check87
  br i1 %conflict.rdx88, label %.lr.ph.split.i.i.preheader, label %vector.main.loop.iter.check89

vector.main.loop.iter.check89:                    ; preds = %vector.memcheck85
  %min.iters.check90 = icmp ult i32 %i.aa, 16
  br i1 %min.iters.check90, label %vec.epilog.ph104, label %vector.ph91

vector.ph91:                                      ; preds = %vector.main.loop.iter.check89
  %i.af = and i32 %i.aa, 8
  %n.vec92 = and i32 %i.aa, -16                   ; 4 uses
  %i.ag = add i32 %i.w, %n.vec92
  br label %vector.body93

vector.body93:                                    ; preds = %vector.ph91, %vector.body93
  %index94 = phi i32 [ 0, %vector.ph91 ], [ %index.next97, %vector.body93 ] ; 2 uses
  %i.ah = add i32 %i.w, %index94
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  %wide.load95 = load <16 x i8>, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds i8, ptr %3, i64 %i.ai
  %wide.load96 = load <16 x i8>, ptr %i.ak, align 1 ; 2 uses
  %i.al = and <16 x i8> %wide.load95, splat (i8 7) ; 3 uses
  %i.am = zext <16 x i8> %wide.load96 to <16 x i64>
  %i.an = icmp eq <16 x i8> %i.al, zeroinitializer
  %i.ao = zext nneg <16 x i8> %i.al to <16 x i64>
  %i.ap = add nsw <16 x i64> %i.ao, splat (i64 -1)
  %i.aq = lshr <16 x i64> %i.am, %i.ap
  %i.ar = trunc nuw <16 x i64> %i.aq to <16 x i8>
  %i.as = and <16 x i8> %i.ar, splat (i8 1)
  %i.at = select <16 x i1> %i.an, <16 x i8> zeroinitializer, <16 x i8> %i.as
  %i.au = lshr <16 x i8> %wide.load96, %i.al
  %i.av = add <16 x i8> %i.at, %i.au
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.ai
  store <16 x i8> %i.av, ptr %i.aw, align 1
  %index.next97 = add nuw i32 %index94, 16        ; 2 uses
  %i.ax = icmp eq i32 %index.next97, %n.vec92
  br i1 %i.ax, label %middle.block98, label %vector.body93, !llvm.loop !2162

middle.block98:                                   ; preds = %vector.body93
  %cmp.n99 = icmp eq i32 %i.aa, %n.vec92
  br i1 %cmp.n99, label %vext_vv_rm_1.exit.i, label %vec.epilog.iter.check101

vec.epilog.iter.check101:                         ; preds = %middle.block98
  %min.epilog.iters.check103.not.not = icmp eq i32 %i.af, 0
  br i1 %min.epilog.iters.check103.not.not, label %.lr.ph.split.i.i.preheader, label %vec.epilog.ph104, !prof !32

vec.epilog.ph104:                                 ; preds = %vector.main.loop.iter.check89, %vec.epilog.iter.check101
  %vec.epilog.resume.val105 = phi i32 [ %n.vec92, %vec.epilog.iter.check101 ], [ 0, %vector.main.loop.iter.check89 ]
  %n.vec106 = and i32 %i.aa, -8                   ; 3 uses
  %i.ay = add i32 %i.w, %n.vec106
  br label %vec.epilog.vector.body107

vec.epilog.vector.body107:                        ; preds = %vec.epilog.vector.body107, %vec.epilog.ph104
  %index108 = phi i32 [ %vec.epilog.resume.val105, %vec.epilog.ph104 ], [ %index.next111, %vec.epilog.vector.body107 ] ; 2 uses
  %i.az = add i32 %i.w, %index108
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %2, i64 %i.ba
  %wide.load109 = load <8 x i8>, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds i8, ptr %3, i64 %i.ba
  %wide.load110 = load <8 x i8>, ptr %i.bc, align 1 ; 2 uses
  %i.bd = and <8 x i8> %wide.load109, splat (i8 7) ; 3 uses
  %i.be = zext <8 x i8> %wide.load110 to <8 x i64>
  %i.bf = icmp eq <8 x i8> %i.bd, zeroinitializer
  %i.bg = zext nneg <8 x i8> %i.bd to <8 x i64>
  %i.bh = add nsw <8 x i64> %i.bg, splat (i64 -1)
  %i.bi = lshr <8 x i64> %i.be, %i.bh
  %i.bj = trunc nuw <8 x i64> %i.bi to <8 x i8>
  %i.bk = and <8 x i8> %i.bj, splat (i8 1)
  %i.bl = select <8 x i1> %i.bf, <8 x i8> zeroinitializer, <8 x i8> %i.bk
  %i.bm = lshr <8 x i8> %wide.load110, %i.bd
  %i.bn = add <8 x i8> %i.bl, %i.bm
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %i.ba
  store <8 x i8> %i.bn, ptr %i.bo, align 1
  %index.next111 = add nuw i32 %index108, 8       ; 2 uses
  %i.bp = icmp eq i32 %index.next111, %n.vec106
  br i1 %i.bp, label %vec.epilog.middle.block112, label %vec.epilog.vector.body107, !llvm.loop !2163

vec.epilog.middle.block112:                       ; preds = %vec.epilog.vector.body107
  %cmp.n113 = icmp eq i32 %i.aa, %n.vec106
  br i1 %cmp.n113, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %iter.check100, %vector.memcheck85, %vec.epilog.iter.check101, %vec.epilog.middle.block112
  %.021.i.i.ph = phi i32 [ %i.w, %iter.check100 ], [ %i.w, %vector.memcheck85 ], [ %i.ag, %vec.epilog.iter.check101 ], [ %i.ay, %vec.epilog.middle.block112 ]
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.e
  %.021.us.i.i = phi i32 [ %i.by, %bb.e ], [ %i.w, %.lr.ph.i.i ] ; 5 uses
  %i.bq = sdiv i32 %.021.us.i.i, 64
  %i.br = srem i32 %.021.us.i.i, 64
  %i.bs = sext i32 %i.bq to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = zext nneg i32 %i.br to i64
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = and i64 %i.bw, %i.bu
  %.not20.us.i.i = icmp eq i64 %i.bx, 0
  %i.by = add nuw i32 %.021.us.i.i, 1             ; 3 uses
  br i1 %.not20.us.i.i, label %bb.d, label %do_vssrl_vv_b.exit28

do_vssrl_vv_b.exit28:                             ; preds = %.lr.ph.split.us.i.i
  %i.bz = sext i32 %.021.us.i.i to i64            ; 3 uses
  %i.ca = getelementptr inbounds i8, ptr %2, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = getelementptr inbounds i8, ptr %3, i64 %i.bz
  %i.cd = load i8, ptr %i.cc, align 1             ; 2 uses
  %i.ce = and i8 %i.cb, 7                         ; 3 uses
  %i.cf = zext i8 %i.cd to i64
  %i.cg = icmp eq i8 %i.ce, 0
  %i.ch = zext nneg i8 %i.ce to i64
  %i.ci = add nsw i64 %i.ch, -1
  %i.cj = lshr i64 %i.cf, %i.ci
  %i.ck = trunc nuw i64 %i.cj to i8
  %i.cl = and i8 %i.ck, 1
  %.0.i.i.i27 = select i1 %i.cg, i8 0, i8 %i.cl
  %i.cm = lshr i8 %i.cd, %i.ce
  %i.cn = add i8 %.0.i.i.i27, %i.cm
  %i.co = getelementptr inbounds i8, ptr %0, i64 %i.bz
  store i8 %i.cn, ptr %i.co, align 1
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.us.i.i
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %.021.us.i.i, i32 noundef %i.by) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %do_vssrl_vv_b.exit28
  %exitcond23.not.i.i = icmp eq i32 %i.by, %i.e
  br i1 %exitcond23.not.i.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !11

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader, %.lr.ph.split.i.i
  %.021.i.i = phi i32 [ %i.df, %.lr.ph.split.i.i ], [ %.021.i.i.ph, %.lr.ph.split.i.i.preheader ] ; 2 uses
  %i.cp = sext i32 %.021.i.i to i64               ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %2, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = getelementptr inbounds i8, ptr %3, i64 %i.cp
  %i.ct = load i8, ptr %i.cs, align 1             ; 2 uses
  %i.cu = and i8 %i.cr, 7                         ; 3 uses
  %i.cv = zext i8 %i.ct to i64
  %i.cw = icmp eq i8 %i.cu, 0
  %i.cx = zext nneg i8 %i.cu to i64
  %i.cy = add nsw i64 %i.cx, -1
  %i.cz = lshr i64 %i.cv, %i.cy
  %i.da = trunc nuw i64 %i.cz to i8
  %i.db = and i8 %i.da, 1
  %.0.i.i.i24 = select i1 %i.cw, i8 0, i8 %i.db
  %i.dc = lshr i8 %i.ct, %i.cu
  %i.dd = add i8 %.0.i.i.i24, %i.dc
  %i.de = getelementptr inbounds i8, ptr %0, i64 %i.cp
  store i8 %i.dd, ptr %i.de, align 1
  %i.df = add i32 %.021.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.df, %i.e
  br i1 %exitcond.not.i.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i.i, !llvm.loop !2164

.lr.ph.i56.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i61.i, label %.lr.ph.split.i58.i

.lr.ph.split.us.i61.i:                            ; preds = %.lr.ph.i56.i, %bb.i
  %.021.us.i62.i = phi i32 [ %i.do, %bb.i ], [ %i.w, %.lr.ph.i56.i ] ; 5 uses
  %i.dg = sdiv i32 %.021.us.i62.i, 64
  %i.dh = srem i32 %.021.us.i62.i, 64
  %i.di = sext i32 %i.dg to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = zext nneg i32 %i.dh to i64
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = and i64 %i.dm, %i.dk
  %.not20.us.i63.i = icmp eq i64 %i.dn, 0
  %i.do = add nuw i32 %.021.us.i62.i, 1           ; 3 uses
  br i1 %.not20.us.i63.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.i61.i
  %i.dp = sext i32 %.021.us.i62.i to i64          ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %2, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = getelementptr inbounds i8, ptr %3, i64 %i.dp
  %i.dt = load i8, ptr %i.ds, align 1             ; 2 uses
  %i.du = and i8 %i.dr, 7                         ; 5 uses
  %i.dv = zext i8 %i.dt to i64                    ; 3 uses
  %i.dw = zext nneg i8 %i.du to i64
  %i.dx = lshr i64 %i.dv, %i.dw                   ; 2 uses
  %i.dy = icmp eq i8 %i.du, 0
  br i1 %i.dy, label %do_vssrl_vv_b.exit22, label %extract64.exit26.i.i.i18

extract64.exit26.i.i.i18:                         ; preds = %bb.f
  %i.dz = zext nneg i8 %i.du to i32               ; 2 uses
  %i.ea = add nsw i32 %i.dz, -1
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = lshr i64 %i.dv, %i.eb
  %i.ed = and i64 %i.ec, 1                        ; 2 uses
  %.not24.i.i.i19 = icmp eq i8 %i.du, 1
  br i1 %.not24.i.i.i19, label %bb.g, label %extract64.exit28.i.i.i20

extract64.exit28.i.i.i20:                         ; preds = %extract64.exit26.i.i.i18
  %i.ee = sub nuw nsw i32 65, %i.dz
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = lshr i64 -1, %i.ef
  %i.eh = and i64 %i.eg, %i.dv
  %i.ei = trunc nuw nsw i64 %i.ed to i8
  %i.ej = icmp ne i64 %i.eh, 0
  %i.ek = zext i1 %i.ej to i8
  %i.el = trunc nuw nsw i64 %i.dx to i8
  %i.em = or i8 %i.ek, %i.el
  %i.en = and i8 %i.em, %i.ei
  br label %do_vssrl_vv_b.exit22

bb.g:                                             ; preds = %extract64.exit26.i.i.i18
  %i.eo = and i64 %i.ed, %i.dx
  %i.ep = trunc nuw nsw i64 %i.eo to i8
  br label %do_vssrl_vv_b.exit22

do_vssrl_vv_b.exit22:                             ; preds = %bb.f, %extract64.exit28.i.i.i20, %bb.g
  %.0.i.i.i21 = phi i8 [ 0, %bb.f ], [ %i.ep, %bb.g ], [ %i.en, %extract64.exit28.i.i.i20 ]
  %i.eq = lshr i8 %i.dt, %i.du
  %i.er = add i8 %.0.i.i.i21, %i.eq
  %i.es = getelementptr inbounds i8, ptr %0, i64 %i.dp
  store i8 %i.er, ptr %i.es, align 1
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.us.i61.i
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %.021.us.i62.i, i32 noundef %i.do) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %do_vssrl_vv_b.exit22
  %exitcond23.not.i64.i = icmp eq i32 %i.do, %i.e
  br i1 %exitcond23.not.i64.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.us.i61.i, !llvm.loop !11

.lr.ph.split.i58.i:                               ; preds = %.lr.ph.i56.i, %do_vssrl_vv_b.exit17
  %.021.i59.i = phi i32 [ %i.fx, %do_vssrl_vv_b.exit17 ], [ %i.w, %.lr.ph.i56.i ] ; 2 uses
  %i.et = sext i32 %.021.i59.i to i64             ; 3 uses
  %i.eu = getelementptr inbounds i8, ptr %2, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = getelementptr inbounds i8, ptr %3, i64 %i.et
  %i.ex = load i8, ptr %i.ew, align 1             ; 2 uses
  %i.ey = and i8 %i.ev, 7                         ; 5 uses
  %i.ez = zext i8 %i.ex to i64                    ; 3 uses
  %i.fa = zext nneg i8 %i.ey to i64
  %i.fb = lshr i64 %i.ez, %i.fa                   ; 2 uses
  %i.fc = icmp eq i8 %i.ey, 0
  br i1 %i.fc, label %do_vssrl_vv_b.exit17, label %extract64.exit26.i.i.i15

extract64.exit26.i.i.i15:                         ; preds = %.lr.ph.split.i58.i
  %i.fd = zext nneg i8 %i.ey to i32               ; 2 uses
  %i.fe = add nsw i32 %i.fd, -1
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = lshr i64 %i.ez, %i.ff
  %i.fh = and i64 %i.fg, 1                        ; 2 uses
  %.not24.i.i.i = icmp eq i8 %i.ey, 1
  br i1 %.not24.i.i.i, label %bb.j, label %extract64.exit28.i.i.i

extract64.exit28.i.i.i:                           ; preds = %extract64.exit26.i.i.i15
  %i.fi = sub nuw nsw i32 65, %i.fd
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = lshr i64 -1, %i.fj
  %i.fl = and i64 %i.fk, %i.ez
  %i.fm = trunc nuw nsw i64 %i.fh to i8
  %i.fn = icmp ne i64 %i.fl, 0
  %i.fo = zext i1 %i.fn to i8
  %i.fp = trunc nuw nsw i64 %i.fb to i8
  %i.fq = or i8 %i.fo, %i.fp
  %i.fr = and i8 %i.fq, %i.fm
  br label %do_vssrl_vv_b.exit17

bb.j:                                             ; preds = %extract64.exit26.i.i.i15
  %i.fs = and i64 %i.fh, %i.fb
  %i.ft = trunc nuw nsw i64 %i.fs to i8
  br label %do_vssrl_vv_b.exit17

do_vssrl_vv_b.exit17:                             ; preds = %.lr.ph.split.i58.i, %extract64.exit28.i.i.i, %bb.j
  %.0.i.i.i16 = phi i8 [ 0, %.lr.ph.split.i58.i ], [ %i.ft, %bb.j ], [ %i.fr, %extract64.exit28.i.i.i ]
  %i.fu = lshr i8 %i.ex, %i.ey
  %i.fv = add i8 %.0.i.i.i16, %i.fu
  %i.fw = getelementptr inbounds i8, ptr %0, i64 %i.et
  store i8 %i.fv, ptr %i.fw, align 1
  %i.fx = add i32 %.021.i59.i, 1                  ; 2 uses
  %exitcond.not.i60.i = icmp eq i32 %i.fx, %i.e
  br i1 %exitcond.not.i60.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i58.i, !llvm.loop !11

.lr.ph.i66.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i71.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph.i66.i
  %i.fy = sub i32 %i.e, %i.w                      ; 7 uses
  %min.iters.check = icmp ult i32 %i.fy, 8
  %i.fz = add i32 %i.e, -1
  %i.ga = icmp slt i32 %i.fz, %i.w
  %or.cond117 = or i1 %min.iters.check, %i.ga
  br i1 %or.cond117, label %.lr.ph.split.i68.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.gb = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.gb, -16
  %i.gc = sub i64 %i.c, %i.a
  %diff.check70 = icmp ugt i64 %i.gc, -16
  %conflict.rdx = or i1 %diff.check, %diff.check70
  br i1 %conflict.rdx, label %.lr.ph.split.i68.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check71 = icmp ult i32 %i.fy, 16
  br i1 %min.iters.check71, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gd = and i32 %i.fy, 8
  %n.vec = and i32 %i.fy, -16                     ; 4 uses
  %i.ge = add i32 %i.w, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gf = add i32 %i.w, %index
  %i.gg = sext i32 %i.gf to i64                   ; 3 uses
  %i.gh = getelementptr inbounds i8, ptr %2, i64 %i.gg
  %wide.load = load <16 x i8>, ptr %i.gh, align 1
  %i.gi = getelementptr inbounds i8, ptr %3, i64 %i.gg
  %wide.load72 = load <16 x i8>, ptr %i.gi, align 1
  %i.gj = and <16 x i8> %wide.load, splat (i8 7)
  %i.gk = lshr <16 x i8> %wide.load72, %i.gj
  %i.gl = getelementptr inbounds i8, ptr %0, i64 %i.gg
  store <16 x i8> %i.gk, ptr %i.gl, align 1
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.gm = icmp eq i32 %index.next, %n.vec
  br i1 %i.gm, label %middle.block, label %vector.body, !llvm.loop !2165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.fy, %n.vec
  br i1 %cmp.n, label %vext_vv_rm_1.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i32 %i.gd, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.split.i68.i.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec73 = and i32 %i.fy, -8                    ; 3 uses
  %i.gn = add i32 %i.w, %n.vec73
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index74 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next77, %vec.epilog.vector.body ] ; 2 uses
  %i.go = add i32 %i.w, %index74
  %i.gp = sext i32 %i.go to i64                   ; 3 uses
  %i.gq = getelementptr inbounds i8, ptr %2, i64 %i.gp
  %wide.load75 = load <8 x i8>, ptr %i.gq, align 1
  %i.gr = getelementptr inbounds i8, ptr %3, i64 %i.gp
  %wide.load76 = load <8 x i8>, ptr %i.gr, align 1
  %i.gs = and <8 x i8> %wide.load75, splat (i8 7)
  %i.gt = lshr <8 x i8> %wide.load76, %i.gs
  %i.gu = getelementptr inbounds i8, ptr %0, i64 %i.gp
  store <8 x i8> %i.gt, ptr %i.gu, align 1
  %index.next77 = add nuw i32 %index74, 8         ; 2 uses
  %i.gv = icmp eq i32 %index.next77, %n.vec73
  br i1 %i.gv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2166

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i32 %i.fy, %n.vec73
  br i1 %cmp.n78, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i68.i.preheader

.lr.ph.split.i68.i.preheader:                     ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.021.i69.i.ph = phi i32 [ %i.w, %iter.check ], [ %i.w, %vector.memcheck ], [ %i.ge, %vec.epilog.iter.check ], [ %i.gn, %vec.epilog.middle.block ] ; 5 uses
  %i.gw = sub i32 %i.e, %.021.i69.i.ph
  %.neg = add i32 %.021.i69.i.ph, 1
  %xtraiter = and i32 %i.gw, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i68.i.prol.loopexit, label %.lr.ph.split.i68.i.prol

.lr.ph.split.i68.i.prol:                          ; preds = %.lr.ph.split.i68.i.preheader
  %i.gx = sext i32 %.021.i69.i.ph to i64          ; 3 uses
  %i.gy = getelementptr inbounds i8, ptr %2, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1
  %i.ha = getelementptr inbounds i8, ptr %3, i64 %i.gx
  %i.hb = load i8, ptr %i.ha, align 1
  %i.hc = and i8 %i.gz, 7
  %i.hd = lshr i8 %i.hb, %i.hc
  %i.he = getelementptr inbounds i8, ptr %0, i64 %i.gx
  store i8 %i.hd, ptr %i.he, align 1
  %i.hf = add i32 %.021.i69.i.ph, 1
  br label %.lr.ph.split.i68.i.prol.loopexit

.lr.ph.split.i68.i.prol.loopexit:                 ; preds = %.lr.ph.split.i68.i.prol, %.lr.ph.split.i68.i.preheader
  %.021.i69.i.unr = phi i32 [ %.021.i69.i.ph, %.lr.ph.split.i68.i.preheader ], [ %i.hf, %.lr.ph.split.i68.i.prol ]
  %i.hg = icmp eq i32 %i.e, %.neg
  br i1 %i.hg, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i68.i

.lr.ph.split.us.i71.i:                            ; preds = %.lr.ph.i66.i, %bb.l
  %.021.us.i72.i = phi i32 [ %i.hp, %bb.l ], [ %i.w, %.lr.ph.i66.i ] ; 5 uses
  %i.hh = sdiv i32 %.021.us.i72.i, 64
  %i.hi = srem i32 %.021.us.i72.i, 64
  %i.hj = sext i32 %i.hh to i64
  %i.hk = getelementptr inbounds [8 x i8], ptr %1, i64 %i.hj
  %i.hl = load i64, ptr %i.hk, align 8
  %i.hm = zext nneg i32 %i.hi to i64
  %i.hn = shl nuw i64 1, %i.hm
  %i.ho = and i64 %i.hn, %i.hl
  %.not20.us.i73.i = icmp eq i64 %i.ho, 0
  %i.hp = add nuw i32 %.021.us.i72.i, 1           ; 3 uses
  br i1 %.not20.us.i73.i, label %bb.k, label %do_vssrl_vv_b.exit14

do_vssrl_vv_b.exit14:                             ; preds = %.lr.ph.split.us.i71.i
  %i.hq = sext i32 %.021.us.i72.i to i64          ; 3 uses
  %i.hr = getelementptr inbounds i8, ptr %2, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1
  %i.ht = getelementptr inbounds i8, ptr %3, i64 %i.hq
  %i.hu = load i8, ptr %i.ht, align 1
  %i.hv = and i8 %i.hs, 7
  %i.hw = lshr i8 %i.hu, %i.hv
  %i.hx = getelementptr inbounds i8, ptr %0, i64 %i.hq
  store i8 %i.hw, ptr %i.hx, align 1
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.us.i71.i
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %.021.us.i72.i, i32 noundef %i.hp) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %do_vssrl_vv_b.exit14
  %exitcond23.not.i74.i = icmp eq i32 %i.hp, %i.e
  br i1 %exitcond23.not.i74.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.us.i71.i, !llvm.loop !11

.lr.ph.split.i68.i:                               ; preds = %.lr.ph.split.i68.i.prol.loopexit, %.lr.ph.split.i68.i
  %.021.i69.i = phi i32 [ %i.ip, %.lr.ph.split.i68.i ], [ %.021.i69.i.unr, %.lr.ph.split.i68.i.prol.loopexit ] ; 3 uses
  %i.hy = sext i32 %.021.i69.i to i64             ; 3 uses
  %i.hz = getelementptr inbounds i8, ptr %2, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1
  %i.ib = getelementptr inbounds i8, ptr %3, i64 %i.hy
  %i.ic = load i8, ptr %i.ib, align 1
  %i.id = and i8 %i.ia, 7
  %i.ie = lshr i8 %i.ic, %i.id
  %i.if = getelementptr inbounds i8, ptr %0, i64 %i.hy
  store i8 %i.ie, ptr %i.if, align 1
  %i.ig = add i32 %.021.i69.i, 1
  %i.ih = sext i32 %i.ig to i64                   ; 3 uses
  %i.ii = getelementptr inbounds i8, ptr %2, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1
  %i.ik = getelementptr inbounds i8, ptr %3, i64 %i.ih
  %i.il = load i8, ptr %i.ik, align 1
  %i.im = and i8 %i.ij, 7
  %i.in = lshr i8 %i.il, %i.im
  %i.io = getelementptr inbounds i8, ptr %0, i64 %i.ih
  store i8 %i.in, ptr %i.io, align 1
  %i.ip = add i32 %.021.i69.i, 2                  ; 2 uses
  %exitcond.not.i70.i.1 = icmp eq i32 %i.ip, %i.e
  br i1 %exitcond.not.i70.i.1, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i68.i, !llvm.loop !2167

.lr.ph.i76.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i81.i, label %.lr.ph.split.i78.i

.lr.ph.split.us.i81.i:                            ; preds = %.lr.ph.i76.i, %bb.o
  %.021.us.i82.i = phi i32 [ %i.iy, %bb.o ], [ %i.w, %.lr.ph.i76.i ] ; 5 uses
  %i.iq = sdiv i32 %.021.us.i82.i, 64
  %i.ir = srem i32 %.021.us.i82.i, 64
  %i.is = sext i32 %i.iq to i64
  %i.it = getelementptr inbounds [8 x i8], ptr %1, i64 %i.is
  %i.iu = load i64, ptr %i.it, align 8
  %i.iv = zext nneg i32 %i.ir to i64
  %i.iw = shl nuw i64 1, %i.iv
  %i.ix = and i64 %i.iw, %i.iu
  %.not20.us.i83.i = icmp eq i64 %i.ix, 0
  %i.iy = add nuw i32 %.021.us.i82.i, 1           ; 3 uses
  br i1 %.not20.us.i83.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us.i81.i
  %i.iz = sext i32 %.021.us.i82.i to i64          ; 3 uses
  %i.ja = getelementptr inbounds i8, ptr %2, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1
  %i.jc = getelementptr inbounds i8, ptr %3, i64 %i.iz
  %i.jd = load i8, ptr %i.jc, align 1             ; 2 uses
  %i.je = and i8 %i.jb, 7                         ; 4 uses
  %i.jf = icmp eq i8 %i.je, 0
  br i1 %i.jf, label %do_vssrl_vv_b.exit8, label %extract64.exit26.i.i.i5

extract64.exit26.i.i.i5:                          ; preds = %bb.m
  %i.jg = zext i8 %i.jd to i64                    ; 2 uses
  %i.jh = zext nneg i8 %i.je to i64
  %narrow29 = sub nuw nsw i8 64, %i.je
  %i.ji = zext nneg i8 %narrow29 to i64
  %i.jj = lshr i64 -1, %i.ji
  %i.jk = and i64 %i.jj, %i.jg
  %i.jl = shl nuw nsw i64 1, %i.jh
  %i.jm = and i64 %i.jl, %i.jg
  %.not.i.i.i6 = icmp eq i64 %i.jm, 0
  %i.jn = icmp ne i64 %i.jk, 0
  %i.jo = and i1 %.not.i.i.i6, %i.jn
  %i.jp = zext i1 %i.jo to i8
  br label %do_vssrl_vv_b.exit8

do_vssrl_vv_b.exit8:                              ; preds = %bb.m, %extract64.exit26.i.i.i5
  %.0.i.i.i7 = phi i8 [ %i.jp, %extract64.exit26.i.i.i5 ], [ 0, %bb.m ]
  %i.jq = lshr i8 %i.jd, %i.je
  %i.jr = add i8 %.0.i.i.i7, %i.jq
  %i.js = getelementptr inbounds i8, ptr %0, i64 %i.iz
  store i8 %i.jr, ptr %i.js, align 1
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.split.us.i81.i
end_hunk_7
begin_hunk_8_@helper_vssrl_vx_d:bb.a
  store <2 x i64> %i.ju, ptr %i.jw, align 8
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.jx = icmp eq i32 %index.next, %n.vec
  br i1 %i.jx, label %middle.block, label %vector.body, !llvm.loop !2239

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.jk, %n.vec
  br i1 %cmp.n, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i68.i.preheader187

.lr.ph.split.i68.i.preheader187:                  ; preds = %.lr.ph.split.i68.i.preheader, %middle.block
  %.021.i69.i.ph = phi i32 [ %i.w, %.lr.ph.split.i68.i.preheader ], [ %i.jo, %middle.block ] ; 4 uses
  %i.jy = sub i32 %i.d, %.021.i69.i.ph
  %xtraiter = and i32 %i.jy, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i68.i.prol.loopexit, label %.lr.ph.split.i68.i.prol

.lr.ph.split.i68.i.prol:                          ; preds = %.lr.ph.split.i68.i.preheader187, %.lr.ph.split.i68.i.prol
  %.021.i69.i.prol = phi i32 [ %i.ke, %.lr.ph.split.i68.i.prol ], [ %.021.i69.i.ph, %.lr.ph.split.i68.i.preheader187 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.split.i68.i.prol ], [ 0, %.lr.ph.split.i68.i.preheader187 ]
  %i.jz = sext i32 %.021.i69.i.prol to i64        ; 2 uses
  %i.ka = getelementptr inbounds [8 x i8], ptr %3, i64 %i.jz
  %i.kb = load i64, ptr %i.ka, align 8
  %i.kc = lshr i64 %i.kb, %i.jj
  %i.kd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.jz
  store i64 %i.kc, ptr %i.kd, align 8
  %i.ke = add i32 %.021.i69.i.prol, 1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i68.i.prol.loopexit, label %.lr.ph.split.i68.i.prol, !llvm.loop !2240

.lr.ph.split.i68.i.prol.loopexit:                 ; preds = %.lr.ph.split.i68.i.prol, %.lr.ph.split.i68.i.preheader187
  %.021.i69.i.unr = phi i32 [ %.021.i69.i.ph, %.lr.ph.split.i68.i.preheader187 ], [ %i.ke, %.lr.ph.split.i68.i.prol ]
  %i.kf = sub i32 %.021.i69.i.ph, %i.d
  %i.kg = icmp ugt i32 %i.kf, -4
  br i1 %i.kg, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i68.i

.lr.ph.split.us.i71.i:                            ; preds = %.lr.ph.i66.i, %bb.k
  %.021.us.i72.i = phi i32 [ %i.kp, %bb.k ], [ %i.w, %.lr.ph.i66.i ] ; 5 uses
  %i.kh = sdiv i32 %.021.us.i72.i, 64
  %i.ki = srem i32 %.021.us.i72.i, 64
  %i.kj = sext i32 %i.kh to i64
  %i.kk = getelementptr inbounds [8 x i8], ptr %1, i64 %i.kj
  %i.kl = load i64, ptr %i.kk, align 8
  %i.km = zext nneg i32 %i.ki to i64
  %i.kn = shl nuw i64 1, %i.km
  %i.ko = and i64 %i.kn, %i.kl
  %.not20.us.i73.i = icmp eq i64 %i.ko, 0
  %i.kp = add nuw i32 %.021.us.i72.i, 1           ; 3 uses
  br i1 %.not20.us.i73.i, label %bb.j, label %do_vssrl_vx_d.exit14

do_vssrl_vx_d.exit14:                             ; preds = %.lr.ph.split.us.i71.i
  %i.kq = sext i32 %.021.us.i72.i to i64          ; 2 uses
  %i.kr = getelementptr inbounds [8 x i8], ptr %3, i64 %i.kq
  %i.ks = load i64, ptr %i.kr, align 8
  %i.kt = lshr i64 %i.ks, %i.jj
  %i.ku = getelementptr inbounds [8 x i8], ptr %0, i64 %i.kq
  store i64 %i.kt, ptr %i.ku, align 8
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.us.i71.i
  %i.kv = shl i32 %.021.us.i72.i, 3
  %i.kw = shl i32 %i.kp, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %i.kv, i32 noundef %i.kw) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %do_vssrl_vx_d.exit14
  %exitcond23.not.i74.i = icmp eq i32 %i.kp, %i.d
  br i1 %exitcond23.not.i74.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.us.i71.i, !llvm.loop !12

.lr.ph.split.i68.i:                               ; preds = %.lr.ph.split.i68.i.prol.loopexit, %.lr.ph.split.i68.i
  %.021.i69.i = phi i32 [ %i.lu, %.lr.ph.split.i68.i ], [ %.021.i69.i.unr, %.lr.ph.split.i68.i.prol.loopexit ] ; 5 uses
  %i.kx = sext i32 %.021.i69.i to i64             ; 2 uses
  %i.ky = getelementptr inbounds [8 x i8], ptr %3, i64 %i.kx
  %i.kz = load i64, ptr %i.ky, align 8
  %i.la = lshr i64 %i.kz, %i.jj
  %i.lb = getelementptr inbounds [8 x i8], ptr %0, i64 %i.kx
  store i64 %i.la, ptr %i.lb, align 8
  %i.lc = add i32 %.021.i69.i, 1
  %i.ld = sext i32 %i.lc to i64                   ; 2 uses
  %i.le = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ld
  %i.lf = load i64, ptr %i.le, align 8
  %i.lg = lshr i64 %i.lf, %i.jj
  %i.lh = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ld
  store i64 %i.lg, ptr %i.lh, align 8
  %i.li = add i32 %.021.i69.i, 2
  %i.lj = sext i32 %i.li to i64                   ; 2 uses
  %i.lk = getelementptr inbounds [8 x i8], ptr %3, i64 %i.lj
  %i.ll = load i64, ptr %i.lk, align 8
  %i.lm = lshr i64 %i.ll, %i.jj
  %i.ln = getelementptr inbounds [8 x i8], ptr %0, i64 %i.lj
  store i64 %i.lm, ptr %i.ln, align 8
  %i.lo = add i32 %.021.i69.i, 3
  %i.lp = sext i32 %i.lo to i64                   ; 2 uses
  %i.lq = getelementptr inbounds [8 x i8], ptr %3, i64 %i.lp
  %i.lr = load i64, ptr %i.lq, align 8
  %i.ls = lshr i64 %i.lr, %i.jj
  %i.lt = getelementptr inbounds [8 x i8], ptr %0, i64 %i.lp
  store i64 %i.ls, ptr %i.lt, align 8
  %i.lu = add i32 %.021.i69.i, 4                  ; 2 uses
  %exitcond.not.i70.i.3 = icmp eq i32 %i.lu, %i.d
  br i1 %exitcond.not.i70.i.3, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i68.i, !llvm.loop !2241

.lr.ph.i76.i:                                     ; preds = %bb.c
  %i.lv = trunc i64 %2 to i8
  %i.lw = and i8 %i.lv, 63                        ; 2 uses
  %i.lx = and i64 %2, 63                          ; 2 uses
  %i.ly = icmp eq i8 %i.lw, 0                     ; 2 uses
  %narrow29 = sub nuw nsw i8 64, %i.lw
  %i.lz = zext nneg i8 %narrow29 to i64
  %i.ma = lshr i64 -1, %i.lz                      ; 2 uses
  br i1 %.not.i77.i, label %.lr.ph.split.us.i81.i, label %.lr.ph.split.i78.i

.lr.ph.split.us.i81.i:                            ; preds = %.lr.ph.i76.i, %bb.n
  %.021.us.i82.i = phi i32 [ %i.mj, %bb.n ], [ %i.w, %.lr.ph.i76.i ] ; 5 uses
  %i.mb = sdiv i32 %.021.us.i82.i, 64
  %i.mc = srem i32 %.021.us.i82.i, 64
  %i.md = sext i32 %i.mb to i64
  %i.me = getelementptr inbounds [8 x i8], ptr %1, i64 %i.md
  %i.mf = load i64, ptr %i.me, align 8
  %i.mg = zext nneg i32 %i.mc to i64
  %i.mh = shl nuw i64 1, %i.mg
  %i.mi = and i64 %i.mh, %i.mf
  %.not20.us.i83.i = icmp eq i64 %i.mi, 0
  %i.mj = add nuw i32 %.021.us.i82.i, 1           ; 3 uses
  br i1 %.not20.us.i83.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us.i81.i
  %i.mk = sext i32 %.021.us.i82.i to i64          ; 2 uses
  %i.ml = getelementptr inbounds [8 x i8], ptr %3, i64 %i.mk
  %i.mm = load i64, ptr %i.ml, align 8            ; 2 uses
  %i.mn = lshr i64 %i.mm, %i.lx                   ; 2 uses
  br i1 %i.ly, label %do_vssrl_vx_d.exit8, label %extract64.exit26.i.i.i5

extract64.exit26.i.i.i5:                          ; preds = %bb.l
  %i.mo = and i64 %i.mn, 1
  %i.mp = and i64 %i.mm, %i.ma
  %.not.i.i.i6 = icmp eq i64 %i.mo, 0
  %i.mq = icmp ne i64 %i.mp, 0
  %i.mr = and i1 %i.mq, %.not.i.i.i6
  %i.ms = zext i1 %i.mr to i64
  br label %do_vssrl_vx_d.exit8

do_vssrl_vx_d.exit8:                              ; preds = %bb.l, %extract64.exit26.i.i.i5
  %.0.i.i.i7 = phi i64 [ %i.ms, %extract64.exit26.i.i.i5 ], [ 0, %bb.l ]
  %i.mt = add i64 %.0.i.i.i7, %i.mn
  %i.mu = getelementptr inbounds [8 x i8], ptr %0, i64 %i.mk
  store i64 %i.mt, ptr %i.mu, align 8
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.split.us.i81.i
  %i.mv = shl i32 %.021.us.i82.i, 3
  %i.mw = shl i32 %i.mj, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %i.mv, i32 noundef %i.mw) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %do_vssrl_vx_d.exit8
  %exitcond23.not.i84.i = icmp eq i32 %i.mj, %i.d
  br i1 %exitcond23.not.i84.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.us.i81.i, !llvm.loop !12

.lr.ph.split.i78.i:                               ; preds = %.lr.ph.i76.i, %do_vssrl_vx_d.exit
  %.021.i79.i = phi i32 [ %i.ni, %do_vssrl_vx_d.exit ], [ %i.w, %.lr.ph.i76.i ] ; 2 uses
  %i.mx = sext i32 %.021.i79.i to i64             ; 2 uses
  %i.my = getelementptr inbounds [8 x i8], ptr %3, i64 %i.mx
  %i.mz = load i64, ptr %i.my, align 8            ; 2 uses
  %i.na = lshr i64 %i.mz, %i.lx                   ; 2 uses
  br i1 %i.ly, label %do_vssrl_vx_d.exit, label %extract64.exit26.i.i.i

extract64.exit26.i.i.i:                           ; preds = %.lr.ph.split.i78.i
  %i.nb = and i64 %i.na, 1
  %i.nc = and i64 %i.mz, %i.ma
  %.not.i.i.i = icmp eq i64 %i.nb, 0
  %i.nd = icmp ne i64 %i.nc, 0
  %i.ne = and i1 %i.nd, %.not.i.i.i
  %i.nf = zext i1 %i.ne to i64
  br label %do_vssrl_vx_d.exit

do_vssrl_vx_d.exit:                               ; preds = %.lr.ph.split.i78.i, %extract64.exit26.i.i.i
  %.0.i.i.i = phi i64 [ %i.nf, %extract64.exit26.i.i.i ], [ 0, %.lr.ph.split.i78.i ]
  %i.ng = add i64 %.0.i.i.i, %i.na
  %i.nh = getelementptr inbounds [8 x i8], ptr %0, i64 %i.mx
  store i64 %i.ng, ptr %i.nh, align 8
  %i.ni = add i32 %.021.i79.i, 1                  ; 2 uses
  %exitcond.not.i80.i = icmp eq i32 %i.ni, %i.d
  br i1 %exitcond.not.i80.i, label %vext_vx_rm_1.exit.i, label %.lr.ph.split.i78.i, !llvm.loop !12

vext_vx_rm_1.exit.i:                              ; preds = %.lr.ph.split.i68.i.prol.loopexit, %.lr.ph.split.i68.i, %bb.k, %.lr.ph.split.i58.i.us37.prol.loopexit, %.lr.ph.split.i58.i.us37, %.lr.ph.split.i58.i.us.prol.loopexit, %.lr.ph.split.i58.i.us, %.lr.ph.split.i58.i, %bb.i, %.lr.ph.split.i.i.prol.loopexit, %.lr.ph.split.i.i, %bb.e, %do_vssrl_vx_d.exit, %bb.n, %middle.block, %middle.block96, %middle.block115, %middle.block137, %middle.block158
  store i32 0, ptr %i.v, align 4
  %i.nj = shl i32 %i.d, 3
  %.fr.i = freeze i32 %i.q
  %i.nk = and i32 %.fr.i, -8
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.nj, i32 noundef %i.nk) #17
  br label %vext_vx_rm_2.exit

vext_vx_rm_2.exit:                                ; preds = %bb.b, %vext_vx_rm_1.exit.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vssra_vv_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.e = load i32, ptr %i.d, align 8              ; 16 uses
  %i.f = getelementptr i8, ptr %4, i64 4608
  %.val.i = load i64, ptr %i.f, align 16
  %i.g = shl i32 %5, 3
  %i.h = and i32 %i.g, 2040
  %i.i = add nuw nsw i32 %i.h, 8
  %i.j = trunc i64 %.val.i to i32
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 7
  %i.m = shl i32 %5, 18
  %i.n = ashr i32 %i.m, 29
  %i.o = sub nsw i32 %i.n, %i.l
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = shl nuw nsw i32 %i.i, %i.p
  %i.r = lshr i32 %5, 14
  %i.s = and i32 %i.r, 1
  %i.t = lshr i32 %5, 16
  %i.u = and i32 %i.t, 1                          ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4              ; 23 uses
  %.not.i = icmp ult i32 %i.w, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.v, align 4
  br label %vext_vv_rm_2.exit

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 4624
  %i.y = load i8, ptr %i.x, align 16
  %i.z = and i32 %5, 1024
  %.not.i77.i = icmp eq i32 %i.z, 0               ; 4 uses
  switch i8 %i.y, label %.lr.ph.i76.i [
    i8 0, label %.lr.ph.i.i
    i8 1, label %.lr.ph.i56.i
    i8 2, label %.lr.ph.i66.i
  ]

.lr.ph.i.i:                                       ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i.i, label %iter.check100

iter.check100:                                    ; preds = %.lr.ph.i.i
  %i.aa = sub i32 %i.e, %i.w                      ; 7 uses
  %min.iters.check84 = icmp ult i32 %i.aa, 8
  %i.ab = add i32 %i.e, -1
  %i.ac = icmp slt i32 %i.ab, %i.w
  %or.cond = or i1 %min.iters.check84, %i.ac
  br i1 %or.cond, label %.lr.ph.split.i.i.preheader, label %vector.memcheck85

vector.memcheck85:                                ; preds = %iter.check100
  %i.ad = sub i64 %i.b, %i.a
  %diff.check86 = icmp ugt i64 %i.ad, -16
  %i.ae = sub i64 %i.c, %i.a
  %diff.check87 = icmp ugt i64 %i.ae, -16
  %conflict.rdx88 = or i1 %diff.check86, %diff.check87
  br i1 %conflict.rdx88, label %.lr.ph.split.i.i.preheader, label %vector.main.loop.iter.check89

vector.main.loop.iter.check89:                    ; preds = %vector.memcheck85
  %min.iters.check90 = icmp ult i32 %i.aa, 16
  br i1 %min.iters.check90, label %vec.epilog.ph104, label %vector.ph91

vector.ph91:                                      ; preds = %vector.main.loop.iter.check89
  %i.af = and i32 %i.aa, 8
  %n.vec92 = and i32 %i.aa, -16                   ; 4 uses
  %i.ag = add i32 %i.w, %n.vec92
  br label %vector.body93

vector.body93:                                    ; preds = %vector.ph91, %vector.body93
  %index94 = phi i32 [ 0, %vector.ph91 ], [ %index.next97, %vector.body93 ] ; 2 uses
  %i.ah = add i32 %i.w, %index94
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  %wide.load95 = load <16 x i8>, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds i8, ptr %3, i64 %i.ai
  %wide.load96 = load <16 x i8>, ptr %i.ak, align 1 ; 2 uses
  %i.al = and <16 x i8> %wide.load95, splat (i8 7) ; 3 uses
  %i.am = sext <16 x i8> %wide.load96 to <16 x i64>
  %i.an = icmp eq <16 x i8> %i.al, zeroinitializer
  %i.ao = zext nneg <16 x i8> %i.al to <16 x i64>
  %i.ap = add nsw <16 x i64> %i.ao, splat (i64 -1)
  %i.aq = lshr <16 x i64> %i.am, %i.ap
  %i.ar = trunc <16 x i64> %i.aq to <16 x i8>
  %i.as = and <16 x i8> %i.ar, splat (i8 1)
  %i.at = select <16 x i1> %i.an, <16 x i8> zeroinitializer, <16 x i8> %i.as
  %i.au = ashr <16 x i8> %wide.load96, %i.al
  %i.av = add <16 x i8> %i.at, %i.au
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.ai
  store <16 x i8> %i.av, ptr %i.aw, align 1
  %index.next97 = add nuw i32 %index94, 16        ; 2 uses
  %i.ax = icmp eq i32 %index.next97, %n.vec92
  br i1 %i.ax, label %middle.block98, label %vector.body93, !llvm.loop !2242

middle.block98:                                   ; preds = %vector.body93
  %cmp.n99 = icmp eq i32 %i.aa, %n.vec92
  br i1 %cmp.n99, label %vext_vv_rm_1.exit.i, label %vec.epilog.iter.check101

vec.epilog.iter.check101:                         ; preds = %middle.block98
  %min.epilog.iters.check103.not.not = icmp eq i32 %i.af, 0
  br i1 %min.epilog.iters.check103.not.not, label %.lr.ph.split.i.i.preheader, label %vec.epilog.ph104, !prof !32

vec.epilog.ph104:                                 ; preds = %vector.main.loop.iter.check89, %vec.epilog.iter.check101
  %vec.epilog.resume.val105 = phi i32 [ %n.vec92, %vec.epilog.iter.check101 ], [ 0, %vector.main.loop.iter.check89 ]
  %n.vec106 = and i32 %i.aa, -8                   ; 3 uses
  %i.ay = add i32 %i.w, %n.vec106
  br label %vec.epilog.vector.body107

vec.epilog.vector.body107:                        ; preds = %vec.epilog.vector.body107, %vec.epilog.ph104
  %index108 = phi i32 [ %vec.epilog.resume.val105, %vec.epilog.ph104 ], [ %index.next111, %vec.epilog.vector.body107 ] ; 2 uses
  %i.az = add i32 %i.w, %index108
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %2, i64 %i.ba
  %wide.load109 = load <8 x i8>, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds i8, ptr %3, i64 %i.ba
  %wide.load110 = load <8 x i8>, ptr %i.bc, align 1 ; 2 uses
  %i.bd = and <8 x i8> %wide.load109, splat (i8 7) ; 3 uses
  %i.be = sext <8 x i8> %wide.load110 to <8 x i64>
  %i.bf = icmp eq <8 x i8> %i.bd, zeroinitializer
  %i.bg = zext nneg <8 x i8> %i.bd to <8 x i64>
  %i.bh = add nsw <8 x i64> %i.bg, splat (i64 -1)
  %i.bi = lshr <8 x i64> %i.be, %i.bh
  %i.bj = trunc <8 x i64> %i.bi to <8 x i8>
  %i.bk = and <8 x i8> %i.bj, splat (i8 1)
  %i.bl = select <8 x i1> %i.bf, <8 x i8> zeroinitializer, <8 x i8> %i.bk
  %i.bm = ashr <8 x i8> %wide.load110, %i.bd
  %i.bn = add <8 x i8> %i.bl, %i.bm
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %i.ba
  store <8 x i8> %i.bn, ptr %i.bo, align 1
  %index.next111 = add nuw i32 %index108, 8       ; 2 uses
  %i.bp = icmp eq i32 %index.next111, %n.vec106
  br i1 %i.bp, label %vec.epilog.middle.block112, label %vec.epilog.vector.body107, !llvm.loop !2243

vec.epilog.middle.block112:                       ; preds = %vec.epilog.vector.body107
  %cmp.n113 = icmp eq i32 %i.aa, %n.vec106
  br i1 %cmp.n113, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %iter.check100, %vector.memcheck85, %vec.epilog.iter.check101, %vec.epilog.middle.block112
  %.021.i.i.ph = phi i32 [ %i.w, %iter.check100 ], [ %i.w, %vector.memcheck85 ], [ %i.ag, %vec.epilog.iter.check101 ], [ %i.ay, %vec.epilog.middle.block112 ]
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.e
  %.021.us.i.i = phi i32 [ %i.by, %bb.e ], [ %i.w, %.lr.ph.i.i ] ; 5 uses
  %i.bq = sdiv i32 %.021.us.i.i, 64
  %i.br = srem i32 %.021.us.i.i, 64
  %i.bs = sext i32 %i.bq to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = zext nneg i32 %i.br to i64
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = and i64 %i.bw, %i.bu
  %.not20.us.i.i = icmp eq i64 %i.bx, 0
  %i.by = add nuw i32 %.021.us.i.i, 1             ; 3 uses
  br i1 %.not20.us.i.i, label %bb.d, label %do_vssra_vv_b.exit28

do_vssra_vv_b.exit28:                             ; preds = %.lr.ph.split.us.i.i
  %i.bz = sext i32 %.021.us.i.i to i64            ; 3 uses
  %i.ca = getelementptr inbounds i8, ptr %2, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = getelementptr inbounds i8, ptr %3, i64 %i.bz
  %i.cd = load i8, ptr %i.cc, align 1             ; 2 uses
  %i.ce = and i8 %i.cb, 7                         ; 3 uses
  %i.cf = sext i8 %i.cd to i64
  %i.cg = icmp eq i8 %i.ce, 0
  %i.ch = zext nneg i8 %i.ce to i64
  %i.ci = add nsw i64 %i.ch, -1
  %i.cj = lshr i64 %i.cf, %i.ci
  %i.ck = trunc i64 %i.cj to i8
  %i.cl = and i8 %i.ck, 1
  %.0.i.i.i27 = select i1 %i.cg, i8 0, i8 %i.cl
  %i.cm = ashr i8 %i.cd, %i.ce
  %i.cn = add i8 %.0.i.i.i27, %i.cm
  %i.co = getelementptr inbounds i8, ptr %0, i64 %i.bz
  store i8 %i.cn, ptr %i.co, align 1
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.us.i.i
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %.021.us.i.i, i32 noundef %i.by) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %do_vssra_vv_b.exit28
  %exitcond23.not.i.i = icmp eq i32 %i.by, %i.e
  br i1 %exitcond23.not.i.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !11

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader, %.lr.ph.split.i.i
  %.021.i.i = phi i32 [ %i.df, %.lr.ph.split.i.i ], [ %.021.i.i.ph, %.lr.ph.split.i.i.preheader ] ; 2 uses
  %i.cp = sext i32 %.021.i.i to i64               ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %2, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = getelementptr inbounds i8, ptr %3, i64 %i.cp
  %i.ct = load i8, ptr %i.cs, align 1             ; 2 uses
  %i.cu = and i8 %i.cr, 7                         ; 3 uses
  %i.cv = sext i8 %i.ct to i64
  %i.cw = icmp eq i8 %i.cu, 0
  %i.cx = zext nneg i8 %i.cu to i64
  %i.cy = add nsw i64 %i.cx, -1
  %i.cz = lshr i64 %i.cv, %i.cy
  %i.da = trunc i64 %i.cz to i8
  %i.db = and i8 %i.da, 1
  %.0.i.i.i24 = select i1 %i.cw, i8 0, i8 %i.db
  %i.dc = ashr i8 %i.ct, %i.cu
  %i.dd = add i8 %.0.i.i.i24, %i.dc
  %i.de = getelementptr inbounds i8, ptr %0, i64 %i.cp
  store i8 %i.dd, ptr %i.de, align 1
  %i.df = add i32 %.021.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.df, %i.e
  br i1 %exitcond.not.i.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i.i, !llvm.loop !2244

.lr.ph.i56.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i61.i, label %.lr.ph.split.i58.i

.lr.ph.split.us.i61.i:                            ; preds = %.lr.ph.i56.i, %bb.i
  %.021.us.i62.i = phi i32 [ %i.do, %bb.i ], [ %i.w, %.lr.ph.i56.i ] ; 5 uses
  %i.dg = sdiv i32 %.021.us.i62.i, 64
  %i.dh = srem i32 %.021.us.i62.i, 64
  %i.di = sext i32 %i.dg to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = zext nneg i32 %i.dh to i64
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = and i64 %i.dm, %i.dk
  %.not20.us.i63.i = icmp eq i64 %i.dn, 0
  %i.do = add nuw i32 %.021.us.i62.i, 1           ; 3 uses
  br i1 %.not20.us.i63.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.i61.i
  %i.dp = sext i32 %.021.us.i62.i to i64          ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %2, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = getelementptr inbounds i8, ptr %3, i64 %i.dp
  %i.dt = load i8, ptr %i.ds, align 1             ; 2 uses
  %i.du = and i8 %i.dr, 7                         ; 5 uses
  %i.dv = sext i8 %i.dt to i64                    ; 3 uses
  %i.dw = zext nneg i8 %i.du to i64
  %i.dx = lshr i64 %i.dv, %i.dw                   ; 2 uses
  %i.dy = icmp eq i8 %i.du, 0
  br i1 %i.dy, label %do_vssra_vv_b.exit22, label %extract64.exit26.i.i.i18

extract64.exit26.i.i.i18:                         ; preds = %bb.f
  %i.dz = zext nneg i8 %i.du to i32               ; 2 uses
  %i.ea = add nsw i32 %i.dz, -1
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = lshr i64 %i.dv, %i.eb
  %i.ed = and i64 %i.ec, 1                        ; 2 uses
  %.not24.i.i.i19 = icmp eq i8 %i.du, 1
  br i1 %.not24.i.i.i19, label %bb.g, label %extract64.exit28.i.i.i20

extract64.exit28.i.i.i20:                         ; preds = %extract64.exit26.i.i.i18
  %i.ee = sub nuw nsw i32 65, %i.dz
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = lshr i64 -1, %i.ef
  %i.eh = and i64 %i.eg, %i.dv
  %i.ei = trunc nuw nsw i64 %i.ed to i8
  %i.ej = icmp ne i64 %i.eh, 0
  %i.ek = zext i1 %i.ej to i8
  %i.el = trunc i64 %i.dx to i8
  %i.em = or i8 %i.ek, %i.el
  %i.en = and i8 %i.em, %i.ei
  br label %do_vssra_vv_b.exit22

bb.g:                                             ; preds = %extract64.exit26.i.i.i18
  %i.eo = and i64 %i.ed, %i.dx
  %i.ep = trunc nuw nsw i64 %i.eo to i8
  br label %do_vssra_vv_b.exit22

do_vssra_vv_b.exit22:                             ; preds = %bb.f, %extract64.exit28.i.i.i20, %bb.g
  %.0.i.i.i21 = phi i8 [ 0, %bb.f ], [ %i.ep, %bb.g ], [ %i.en, %extract64.exit28.i.i.i20 ]
  %i.eq = ashr i8 %i.dt, %i.du
  %i.er = add i8 %.0.i.i.i21, %i.eq
  %i.es = getelementptr inbounds i8, ptr %0, i64 %i.dp
  store i8 %i.er, ptr %i.es, align 1
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.us.i61.i
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %.021.us.i62.i, i32 noundef %i.do) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %do_vssra_vv_b.exit22
  %exitcond23.not.i64.i = icmp eq i32 %i.do, %i.e
  br i1 %exitcond23.not.i64.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.us.i61.i, !llvm.loop !11

.lr.ph.split.i58.i:                               ; preds = %.lr.ph.i56.i, %do_vssra_vv_b.exit17
  %.021.i59.i = phi i32 [ %i.fx, %do_vssra_vv_b.exit17 ], [ %i.w, %.lr.ph.i56.i ] ; 2 uses
  %i.et = sext i32 %.021.i59.i to i64             ; 3 uses
  %i.eu = getelementptr inbounds i8, ptr %2, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = getelementptr inbounds i8, ptr %3, i64 %i.et
  %i.ex = load i8, ptr %i.ew, align 1             ; 2 uses
  %i.ey = and i8 %i.ev, 7                         ; 5 uses
  %i.ez = sext i8 %i.ex to i64                    ; 3 uses
  %i.fa = zext nneg i8 %i.ey to i64
  %i.fb = lshr i64 %i.ez, %i.fa                   ; 2 uses
  %i.fc = icmp eq i8 %i.ey, 0
  br i1 %i.fc, label %do_vssra_vv_b.exit17, label %extract64.exit26.i.i.i15

extract64.exit26.i.i.i15:                         ; preds = %.lr.ph.split.i58.i
  %i.fd = zext nneg i8 %i.ey to i32               ; 2 uses
  %i.fe = add nsw i32 %i.fd, -1
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = lshr i64 %i.ez, %i.ff
  %i.fh = and i64 %i.fg, 1                        ; 2 uses
  %.not24.i.i.i = icmp eq i8 %i.ey, 1
  br i1 %.not24.i.i.i, label %bb.j, label %extract64.exit28.i.i.i

extract64.exit28.i.i.i:                           ; preds = %extract64.exit26.i.i.i15
  %i.fi = sub nuw nsw i32 65, %i.fd
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = lshr i64 -1, %i.fj
  %i.fl = and i64 %i.fk, %i.ez
  %i.fm = trunc nuw nsw i64 %i.fh to i8
  %i.fn = icmp ne i64 %i.fl, 0
  %i.fo = zext i1 %i.fn to i8
  %i.fp = trunc i64 %i.fb to i8
  %i.fq = or i8 %i.fo, %i.fp
  %i.fr = and i8 %i.fq, %i.fm
  br label %do_vssra_vv_b.exit17

bb.j:                                             ; preds = %extract64.exit26.i.i.i15
  %i.fs = and i64 %i.fh, %i.fb
  %i.ft = trunc nuw nsw i64 %i.fs to i8
  br label %do_vssra_vv_b.exit17

do_vssra_vv_b.exit17:                             ; preds = %.lr.ph.split.i58.i, %extract64.exit28.i.i.i, %bb.j
  %.0.i.i.i16 = phi i8 [ 0, %.lr.ph.split.i58.i ], [ %i.ft, %bb.j ], [ %i.fr, %extract64.exit28.i.i.i ]
  %i.fu = ashr i8 %i.ex, %i.ey
  %i.fv = add i8 %.0.i.i.i16, %i.fu
  %i.fw = getelementptr inbounds i8, ptr %0, i64 %i.et
  store i8 %i.fv, ptr %i.fw, align 1
  %i.fx = add i32 %.021.i59.i, 1                  ; 2 uses
  %exitcond.not.i60.i = icmp eq i32 %i.fx, %i.e
  br i1 %exitcond.not.i60.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i58.i, !llvm.loop !11

.lr.ph.i66.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i71.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph.i66.i
  %i.fy = sub i32 %i.e, %i.w                      ; 7 uses
  %min.iters.check = icmp ult i32 %i.fy, 8
  %i.fz = add i32 %i.e, -1
  %i.ga = icmp slt i32 %i.fz, %i.w
  %or.cond117 = or i1 %min.iters.check, %i.ga
  br i1 %or.cond117, label %.lr.ph.split.i68.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.gb = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.gb, -16
  %i.gc = sub i64 %i.c, %i.a
  %diff.check70 = icmp ugt i64 %i.gc, -16
  %conflict.rdx = or i1 %diff.check, %diff.check70
  br i1 %conflict.rdx, label %.lr.ph.split.i68.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check71 = icmp ult i32 %i.fy, 16
  br i1 %min.iters.check71, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gd = and i32 %i.fy, 8
  %n.vec = and i32 %i.fy, -16                     ; 4 uses
  %i.ge = add i32 %i.w, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gf = add i32 %i.w, %index
  %i.gg = sext i32 %i.gf to i64                   ; 3 uses
  %i.gh = getelementptr inbounds i8, ptr %2, i64 %i.gg
  %wide.load = load <16 x i8>, ptr %i.gh, align 1
  %i.gi = getelementptr inbounds i8, ptr %3, i64 %i.gg
  %wide.load72 = load <16 x i8>, ptr %i.gi, align 1
  %i.gj = and <16 x i8> %wide.load, splat (i8 7)
  %i.gk = ashr <16 x i8> %wide.load72, %i.gj
  %i.gl = getelementptr inbounds i8, ptr %0, i64 %i.gg
  store <16 x i8> %i.gk, ptr %i.gl, align 1
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.gm = icmp eq i32 %index.next, %n.vec
  br i1 %i.gm, label %middle.block, label %vector.body, !llvm.loop !2245

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.fy, %n.vec
  br i1 %cmp.n, label %vext_vv_rm_1.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i32 %i.gd, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.split.i68.i.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec73 = and i32 %i.fy, -8                    ; 3 uses
  %i.gn = add i32 %i.w, %n.vec73
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index74 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next77, %vec.epilog.vector.body ] ; 2 uses
  %i.go = add i32 %i.w, %index74
  %i.gp = sext i32 %i.go to i64                   ; 3 uses
  %i.gq = getelementptr inbounds i8, ptr %2, i64 %i.gp
  %wide.load75 = load <8 x i8>, ptr %i.gq, align 1
  %i.gr = getelementptr inbounds i8, ptr %3, i64 %i.gp
  %wide.load76 = load <8 x i8>, ptr %i.gr, align 1
  %i.gs = and <8 x i8> %wide.load75, splat (i8 7)
  %i.gt = ashr <8 x i8> %wide.load76, %i.gs
  %i.gu = getelementptr inbounds i8, ptr %0, i64 %i.gp
  store <8 x i8> %i.gt, ptr %i.gu, align 1
  %index.next77 = add nuw i32 %index74, 8         ; 2 uses
  %i.gv = icmp eq i32 %index.next77, %n.vec73
  br i1 %i.gv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2246

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i32 %i.fy, %n.vec73
  br i1 %cmp.n78, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i68.i.preheader

.lr.ph.split.i68.i.preheader:                     ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.021.i69.i.ph = phi i32 [ %i.w, %iter.check ], [ %i.w, %vector.memcheck ], [ %i.ge, %vec.epilog.iter.check ], [ %i.gn, %vec.epilog.middle.block ] ; 5 uses
  %i.gw = sub i32 %i.e, %.021.i69.i.ph
  %.neg = add i32 %.021.i69.i.ph, 1
  %xtraiter = and i32 %i.gw, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i68.i.prol.loopexit, label %.lr.ph.split.i68.i.prol

.lr.ph.split.i68.i.prol:                          ; preds = %.lr.ph.split.i68.i.preheader
  %i.gx = sext i32 %.021.i69.i.ph to i64          ; 3 uses
  %i.gy = getelementptr inbounds i8, ptr %2, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1
  %i.ha = getelementptr inbounds i8, ptr %3, i64 %i.gx
  %i.hb = load i8, ptr %i.ha, align 1
  %i.hc = and i8 %i.gz, 7
  %i.hd = ashr i8 %i.hb, %i.hc
  %i.he = getelementptr inbounds i8, ptr %0, i64 %i.gx
  store i8 %i.hd, ptr %i.he, align 1
  %i.hf = add i32 %.021.i69.i.ph, 1
  br label %.lr.ph.split.i68.i.prol.loopexit

.lr.ph.split.i68.i.prol.loopexit:                 ; preds = %.lr.ph.split.i68.i.prol, %.lr.ph.split.i68.i.preheader
  %.021.i69.i.unr = phi i32 [ %.021.i69.i.ph, %.lr.ph.split.i68.i.preheader ], [ %i.hf, %.lr.ph.split.i68.i.prol ]
  %i.hg = icmp eq i32 %i.e, %.neg
  br i1 %i.hg, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i68.i

.lr.ph.split.us.i71.i:                            ; preds = %.lr.ph.i66.i, %bb.l
  %.021.us.i72.i = phi i32 [ %i.hp, %bb.l ], [ %i.w, %.lr.ph.i66.i ] ; 5 uses
  %i.hh = sdiv i32 %.021.us.i72.i, 64
  %i.hi = srem i32 %.021.us.i72.i, 64
  %i.hj = sext i32 %i.hh to i64
  %i.hk = getelementptr inbounds [8 x i8], ptr %1, i64 %i.hj
  %i.hl = load i64, ptr %i.hk, align 8
  %i.hm = zext nneg i32 %i.hi to i64
  %i.hn = shl nuw i64 1, %i.hm
  %i.ho = and i64 %i.hn, %i.hl
  %.not20.us.i73.i = icmp eq i64 %i.ho, 0
  %i.hp = add nuw i32 %.021.us.i72.i, 1           ; 3 uses
  br i1 %.not20.us.i73.i, label %bb.k, label %do_vssra_vv_b.exit14

do_vssra_vv_b.exit14:                             ; preds = %.lr.ph.split.us.i71.i
  %i.hq = sext i32 %.021.us.i72.i to i64          ; 3 uses
  %i.hr = getelementptr inbounds i8, ptr %2, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1
  %i.ht = getelementptr inbounds i8, ptr %3, i64 %i.hq
  %i.hu = load i8, ptr %i.ht, align 1
  %i.hv = and i8 %i.hs, 7
  %i.hw = ashr i8 %i.hu, %i.hv
  %i.hx = getelementptr inbounds i8, ptr %0, i64 %i.hq
  store i8 %i.hw, ptr %i.hx, align 1
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.us.i71.i
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef range(i32 0, 256) %i.u, i32 noundef %.021.us.i72.i, i32 noundef %i.hp) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %do_vssra_vv_b.exit14
  %exitcond23.not.i74.i = icmp eq i32 %i.hp, %i.e
  br i1 %exitcond23.not.i74.i, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.us.i71.i, !llvm.loop !11

.lr.ph.split.i68.i:                               ; preds = %.lr.ph.split.i68.i.prol.loopexit, %.lr.ph.split.i68.i
  %.021.i69.i = phi i32 [ %i.ip, %.lr.ph.split.i68.i ], [ %.021.i69.i.unr, %.lr.ph.split.i68.i.prol.loopexit ] ; 3 uses
  %i.hy = sext i32 %.021.i69.i to i64             ; 3 uses
  %i.hz = getelementptr inbounds i8, ptr %2, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1
  %i.ib = getelementptr inbounds i8, ptr %3, i64 %i.hy
  %i.ic = load i8, ptr %i.ib, align 1
  %i.id = and i8 %i.ia, 7
  %i.ie = ashr i8 %i.ic, %i.id
  %i.if = getelementptr inbounds i8, ptr %0, i64 %i.hy
  store i8 %i.ie, ptr %i.if, align 1
  %i.ig = add i32 %.021.i69.i, 1
  %i.ih = sext i32 %i.ig to i64                   ; 3 uses
  %i.ii = getelementptr inbounds i8, ptr %2, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1
  %i.ik = getelementptr inbounds i8, ptr %3, i64 %i.ih
  %i.il = load i8, ptr %i.ik, align 1
  %i.im = and i8 %i.ij, 7
  %i.in = ashr i8 %i.il, %i.im
  %i.io = getelementptr inbounds i8, ptr %0, i64 %i.ih
  store i8 %i.in, ptr %i.io, align 1
  %i.ip = add i32 %.021.i69.i, 2                  ; 2 uses
  %exitcond.not.i70.i.1 = icmp eq i32 %i.ip, %i.e
  br i1 %exitcond.not.i70.i.1, label %vext_vv_rm_1.exit.i, label %.lr.ph.split.i68.i, !llvm.loop !2247

.lr.ph.i76.i:                                     ; preds = %bb.c
  br i1 %.not.i77.i, label %.lr.ph.split.us.i81.i, label %.lr.ph.split.i78.i

.lr.ph.split.us.i81.i:                            ; preds = %.lr.ph.i76.i, %bb.o
  %.021.us.i82.i = phi i32 [ %i.iy, %bb.o ], [ %i.w, %.lr.ph.i76.i ] ; 5 uses
  %i.iq = sdiv i32 %.021.us.i82.i, 64
  %i.ir = srem i32 %.021.us.i82.i, 64
  %i.is = sext i32 %i.iq to i64
  %i.it = getelementptr inbounds [8 x i8], ptr %1, i64 %i.is
  %i.iu = load i64, ptr %i.it, align 8
  %i.iv = zext nneg i32 %i.ir to i64
  %i.iw = shl nuw i64 1, %i.iv
  %i.ix = and i64 %i.iw, %i.iu
  %.not20.us.i83.i = icmp eq i64 %i.ix, 0
  %i.iy = add nuw i32 %.021.us.i82.i, 1           ; 3 uses
  br i1 %.not20.us.i83.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us.i81.i
  %i.iz = sext i32 %.021.us.i82.i to i64          ; 3 uses
  %i.ja = getelementptr inbounds i8, ptr %2, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1
  %i.jc = getelementptr inbounds i8, ptr %3, i64 %i.iz
  %i.jd = load i8, ptr %i.jc, align 1             ; 2 uses
  %i.je = and i8 %i.jb, 7                         ; 4 uses
  %i.jf = icmp eq i8 %i.je, 0
  br i1 %i.jf, label %do_vssra_vv_b.exit8, label %extract64.exit26.i.i.i5

extract64.exit26.i.i.i5:                          ; preds = %bb.m
  %i.jg = sext i8 %i.jd to i64                    ; 2 uses
  %i.jh = zext nneg i8 %i.je to i64
  %narrow29 = sub nuw nsw i8 64, %i.je
  %i.ji = zext nneg i8 %narrow29 to i64
  %i.jj = lshr i64 -1, %i.ji
  %i.jk = and i64 %i.jj, %i.jg
  %i.jl = shl nuw nsw i64 1, %i.jh
  %i.jm = and i64 %i.jl, %i.jg
  %.not.i.i.i6 = icmp eq i64 %i.jm, 0
  %i.jn = icmp ne i64 %i.jk, 0
  %i.jo = and i1 %.not.i.i.i6, %i.jn
  %i.jp = zext i1 %i.jo to i8
  br label %do_vssra_vv_b.exit8

do_vssra_vv_b.exit8:                              ; preds = %bb.m, %extract64.exit26.i.i.i5
  %.0.i.i.i7 = phi i8 [ %i.jp, %extract64.exit26.i.i.i5 ], [ 0, %bb.m ]
  %i.jq = ashr i8 %i.jd, %i.je
  %i.jr = add i8 %.0.i.i.i7, %i.jq
  %i.js = getelementptr inbounds i8, ptr %0, i64 %i.iz
  store i8 %i.jr, ptr %i.js, align 1
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.split.us.i81.i
end_hunk_8
begin_hunk_9_@helper_vfmax_vf_h:bb.a
bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vfmax_vf_w(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr i8, ptr %4, i64 4608
  %.val = load i64, ptr %i.c, align 16
  %i.d = shl i32 %5, 3
  %i.e = and i32 %i.d, 2040
  %i.f = add nuw nsw i32 %i.e, 8
  %i.g = trunc i64 %.val to i32
  %i.h = lshr i32 %i.g, 3
  %i.i = and i32 %i.h, 7
  %i.j = shl i32 %5, 18
  %i.k = ashr i32 %i.j, 29
  %reass.sub = sub nsw i32 %i.k, %i.i
  %i.l = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -2)
  %i.m = add nsw i32 %i.l, 2
  %i.n = shl nuw nsw i32 %i.f, %i.m
  %i.o = lshr i32 %5, 14
  %i.p = and i32 %i.o, 1
  %i.q = lshr i32 %5, 16
  %i.r = and i32 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4916 ; 3 uses
  %.val36 = load i64, ptr %i.s, align 4
  %i.t = trunc i64 %.val36 to i16
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 3 uses
  %.not = icmp ult i32 %i.v, %i.b
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.w = and i32 %5, 1024
  %.not34 = icmp eq i32 %i.w, 0
  %i.x = trunc i64 %2 to i32                      ; 2 uses
  br i1 %.not34, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.037.us = phi i32 [ %i.an, %bb.d ], [ %i.v, %.preheader ] ; 5 uses
  %i.y = sdiv i32 %.037.us, 64
  %i.z = srem i32 %.037.us, 64
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = zext nneg i32 %i.z to i64
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ac, %i.ae
  %.not35.us = icmp eq i64 %i.af, 0
  br i1 %.not35.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.ag = sext i32 %.037.us to i64                ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = tail call i32 @float32_minmax(i32 noundef %i.ai, i32 noundef %i.x, ptr noundef nonnull %i.s, i32 noundef 8) #17
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ag
  store i32 %i.aj, ptr %i.ak, align 4
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.al = shl i32 %.037.us, 2                     ; 2 uses
  %i.am = add i32 %i.al, 4
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.al, i32 noundef %i.am) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.an = add i32 %.037.us, 1                     ; 2 uses
  %exitcond39.not = icmp eq i32 %i.an, %i.b
  br i1 %exitcond39.not, label %.split.us, label %.preheader.split.us, !llvm.loop !2598

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.u, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader, %.preheader.split
  %.037 = phi i32 [ %i.at, %.preheader.split ], [ %i.v, %.preheader ] ; 2 uses
  %i.ao = sext i32 %.037 to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = tail call i32 @float32_minmax(i32 noundef %i.aq, i32 noundef %i.x, ptr noundef nonnull %i.s, i32 noundef 8) #17
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ao
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = add i32 %.037, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.at, %i.b
  br i1 %exitcond.not, label %.split.us, label %.preheader.split, !llvm.loop !2598

.split.us:                                        ; preds = %.preheader.split, %bb.d
  store i32 0, ptr %i.u, align 4
  %i.au = shl i32 %i.b, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.p, i32 noundef %i.au, i32 noundef %i.n) #17
  tail call void @riscv_cpu_check_fflags(ptr noundef %4, i16 noundef zeroext %i.t) #17
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vfmax_vf_d(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr i8, ptr %4, i64 4608
  %.val = load i64, ptr %i.c, align 16
  %i.d = shl i32 %5, 3
  %i.e = and i32 %i.d, 2040
  %i.f = add nuw nsw i32 %i.e, 8
  %i.g = trunc i64 %.val to i32
  %i.h = lshr i32 %i.g, 3
  %i.i = and i32 %i.h, 7
  %i.j = shl i32 %5, 18
  %i.k = ashr i32 %i.j, 29
  %reass.sub = sub nsw i32 %i.k, %i.i
  %i.l = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -3)
  %i.m = add nsw i32 %i.l, 3
  %i.n = shl nuw nsw i32 %i.f, %i.m
  %i.o = lshr i32 %5, 14
  %i.p = and i32 %i.o, 1
  %i.q = lshr i32 %5, 16
  %i.r = and i32 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4916 ; 3 uses
  %.val36 = load i64, ptr %i.s, align 4
  %i.t = trunc i64 %.val36 to i16
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 3 uses
  %.not = icmp ult i32 %i.v, %i.b
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.w = and i32 %5, 1024
  %.not34 = icmp eq i32 %i.w, 0
  br i1 %.not34, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.037.us = phi i32 [ %i.am, %bb.d ], [ %i.v, %.preheader ] ; 5 uses
  %i.x = sdiv i32 %.037.us, 64
  %i.y = srem i32 %.037.us, 64
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %1, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = zext nneg i32 %i.y to i64
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = and i64 %i.ab, %i.ad
  %.not35.us = icmp eq i64 %i.ae, 0
  br i1 %.not35.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.af = sext i32 %.037.us to i64                ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %3, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = tail call i64 @float64_minmax(i64 noundef %i.ah, i64 noundef %2, ptr noundef nonnull %i.s, i32 noundef 8) #17
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.af
  store i64 %i.ai, ptr %i.aj, align 8
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.ak = shl i32 %.037.us, 3                     ; 2 uses
  %i.al = add i32 %i.ak, 8
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.ak, i32 noundef %i.al) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.am = add i32 %.037.us, 1                     ; 2 uses
  %exitcond39.not = icmp eq i32 %i.am, %i.b
  br i1 %exitcond39.not, label %.split.us, label %.preheader.split.us, !llvm.loop !2599

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.u, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader, %.preheader.split
  %.037 = phi i32 [ %i.as, %.preheader.split ], [ %i.v, %.preheader ] ; 2 uses
  %i.an = sext i32 %.037 to i64                   ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %3, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = tail call i64 @float64_minmax(i64 noundef %i.ap, i64 noundef %2, ptr noundef nonnull %i.s, i32 noundef 8) #17
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.an
  store i64 %i.aq, ptr %i.ar, align 8
  %i.as = add i32 %.037, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.as, %i.b
  br i1 %exitcond.not, label %.split.us, label %.preheader.split, !llvm.loop !2599

.split.us:                                        ; preds = %.preheader.split, %bb.d
  store i32 0, ptr %i.u, align 4
  %i.at = shl i32 %i.b, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.p, i32 noundef %i.at, i32 noundef %i.n) #17
  tail call void @riscv_cpu_check_fflags(ptr noundef %4, i16 noundef zeroext %i.t) #17
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vfsgnj_vv_h(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %3 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.e = load i32, ptr %i.d, align 8              ; 8 uses
  %i.f = getelementptr i8, ptr %4, i64 4608
  %.val = load i64, ptr %i.f, align 16
  %i.g = shl i32 %5, 3
  %i.h = and i32 %i.g, 2040
  %i.i = add nuw nsw i32 %i.h, 8
  %i.j = trunc i64 %.val to i32
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 7
  %i.m = shl i32 %5, 18
  %i.n = ashr i32 %i.m, 29
  %reass.sub = sub nsw i32 %i.n, %i.l
  %i.o = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -1)
  %i.p = add nsw i32 %i.o, 1
  %i.q = shl nuw nsw i32 %i.i, %i.p
  %.zext = and i32 %i.q, 65528
  %i.r = lshr i32 %5, 14
  %i.s = and i32 %i.r, 1
  %i.t = lshr i32 %5, 16
  %i.u = and i32 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4916
  %.val36 = load i64, ptr %i.v, align 4
  %i.w = trunc i64 %.val36 to i16
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4              ; 10 uses
  %.not = icmp ult i32 %i.y, %i.e
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.z = and i32 %5, 1024
  %.not34 = icmp eq i32 %i.z, 0
  br i1 %.not34, label %.preheader.split.us, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.aa = sub i32 %i.e, %i.y                      ; 7 uses
  %min.iters.check = icmp ult i32 %i.aa, 4
  %i.ab = add i32 %i.e, -1
  %i.ac = icmp slt i32 %i.ab, %i.y
  %or.cond = or i1 %min.iters.check, %i.ac
  br i1 %or.cond, label %.preheader.split.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.ad, -32
  %i.ae = sub i64 %i.c, %i.a
  %diff.check45 = icmp ugt i64 %i.ae, -32
  %conflict.rdx = or i1 %diff.check, %diff.check45
  br i1 %conflict.rdx, label %.preheader.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check46 = icmp ult i32 %i.aa, 16
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i32 %i.aa, 12
  %n.vec = and i32 %i.aa, -16                     ; 4 uses
  %i.ag = add i32 %i.y, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = add nuw i32 %i.y, %index
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  %i.aj = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <8 x i16>, ptr %i.aj, align 2
  %wide.load47 = load <8 x i16>, ptr %i.ak, align 2
  %i.al = getelementptr inbounds [2 x i8], ptr %3, i64 %i.ai ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load48 = load <8 x i16>, ptr %i.al, align 2
  %wide.load49 = load <8 x i16>, ptr %i.am, align 2
  %i.an = and <8 x i16> %wide.load, splat (i16 -32768)
  %i.ao = and <8 x i16> %wide.load47, splat (i16 -32768)
  %i.ap = and <8 x i16> %wide.load48, splat (i16 32767)
  %i.aq = and <8 x i16> %wide.load49, splat (i16 32767)
  %i.ar = or disjoint <8 x i16> %i.ap, %i.an
  %i.as = or disjoint <8 x i16> %i.aq, %i.ao
  %i.at = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <8 x i16> %i.ar, ptr %i.at, align 2
  store <8 x i16> %i.as, ptr %i.au, align 2
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.av = icmp eq i32 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !2600

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.aa, %n.vec
  br i1 %cmp.n, label %.split.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.af, 0
  br i1 %min.epilog.iters.check, label %.preheader.split.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec50 = and i32 %i.aa, -4                    ; 3 uses
  %i.aw = add i32 %i.y, %n.vec50
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 2 uses
  %i.ax = add nuw i32 %i.y, %index51
  %i.ay = sext i32 %i.ax to i64                   ; 3 uses
  %i.az = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ay
  %wide.load52 = load <4 x i16>, ptr %i.az, align 2
  %i.ba = getelementptr inbounds [2 x i8], ptr %3, i64 %i.ay
  %wide.load53 = load <4 x i16>, ptr %i.ba, align 2
  %i.bb = and <4 x i16> %wide.load52, splat (i16 -32768)
  %i.bc = and <4 x i16> %wide.load53, splat (i16 32767)
  %i.bd = or disjoint <4 x i16> %i.bc, %i.bb
  %i.be = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ay
  store <4 x i16> %i.bd, ptr %i.be, align 2
  %index.next54 = add nuw i32 %index51, 4         ; 2 uses
  %i.bf = icmp eq i32 %index.next54, %n.vec50
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2601

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n55 = icmp eq i32 %i.aa, %n.vec50
  br i1 %cmp.n55, label %.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.037.ph = phi i32 [ %i.y, %iter.check ], [ %i.y, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ] ; 5 uses
  %i.bg = sub i32 %i.e, %.037.ph
  %.neg = add i32 %.037.ph, 1
  %xtraiter = and i32 %i.bg, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.split.prol.loopexit, label %.preheader.split.prol

.preheader.split.prol:                            ; preds = %.preheader.split.preheader
  %i.bh = sext i32 %.037.ph to i64                ; 3 uses
  %i.bi = getelementptr inbounds [2 x i8], ptr %2, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = getelementptr inbounds [2 x i8], ptr %3, i64 %i.bh
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = and i16 %i.bj, -32768
  %i.bn = and i16 %i.bl, 32767
  %i.bo = or disjoint i16 %i.bn, %i.bm
  %i.bp = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bh
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = add nuw i32 %.037.ph, 1
  br label %.preheader.split.prol.loopexit

.preheader.split.prol.loopexit:                   ; preds = %.preheader.split.prol, %.preheader.split.preheader
  %.037.unr = phi i32 [ %.037.ph, %.preheader.split.preheader ], [ %i.bq, %.preheader.split.prol ]
  %i.br = icmp eq i32 %i.e, %.neg
  br i1 %i.br, label %.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.037.us = phi i32 [ %i.cl, %bb.d ], [ %i.y, %.preheader ] ; 5 uses
  %i.bs = sdiv i32 %.037.us, 64
  %i.bt = srem i32 %.037.us, 64
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = zext nneg i32 %i.bt to i64
  %i.by = shl nuw i64 1, %i.bx
  %i.bz = and i64 %i.bw, %i.by
  %.not35.us = icmp eq i64 %i.bz, 0
  br i1 %.not35.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.ca = sext i32 %.037.us to i64                ; 3 uses
  %i.cb = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = getelementptr inbounds [2 x i8], ptr %3, i64 %i.ca
  %i.ce = load i16, ptr %i.cd, align 2
  %i.cf = and i16 %i.cc, -32768
  %i.cg = and i16 %i.ce, 32767
  %i.ch = or disjoint i16 %i.cg, %i.cf
  %i.ci = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ca
  store i16 %i.ch, ptr %i.ci, align 2
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.cj = shl i32 %.037.us, 1                     ; 2 uses
  %i.ck = add i32 %i.cj, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.u, i32 noundef %i.cj, i32 noundef %i.ck) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cl = add i32 %.037.us, 1                     ; 2 uses
  %exitcond39.not = icmp eq i32 %i.cl, %i.e
  br i1 %exitcond39.not, label %.split.us, label %.preheader.split.us, !llvm.loop !2602

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.x, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.prol.loopexit, %.preheader.split
  %.037 = phi i32 [ %i.df, %.preheader.split ], [ %.037.unr, %.preheader.split.prol.loopexit ] ; 3 uses
  %i.cm = sext i32 %.037 to i64                   ; 3 uses
  %i.cn = getelementptr inbounds [2 x i8], ptr %2, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = getelementptr inbounds [2 x i8], ptr %3, i64 %i.cm
  %i.cq = load i16, ptr %i.cp, align 2
  %i.cr = and i16 %i.co, -32768
  %i.cs = and i16 %i.cq, 32767
  %i.ct = or disjoint i16 %i.cs, %i.cr
  %i.cu = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cm
  store i16 %i.ct, ptr %i.cu, align 2
  %i.cv = add nuw i32 %.037, 1
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %i.cx = getelementptr inbounds [2 x i8], ptr %2, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = getelementptr inbounds [2 x i8], ptr %3, i64 %i.cw
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = and i16 %i.cy, -32768
  %i.dc = and i16 %i.da, 32767
  %i.dd = or disjoint i16 %i.dc, %i.db
  %i.de = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cw
  store i16 %i.dd, ptr %i.de, align 2
  %i.df = add nuw i32 %.037, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.df, %i.e
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !2603

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block, %vec.epilog.middle.block
  store i32 0, ptr %i.x, align 4
  %i.dg = shl i32 %i.e, 1
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.dg, i32 noundef %.zext) #17
  tail call void @riscv_cpu_check_fflags(ptr noundef %4, i16 noundef zeroext %i.w) #17
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vfsgnj_vv_w(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.e = load i32, ptr %i.d, align 8              ; 8 uses
  %i.f = getelementptr i8, ptr %4, i64 4608
  %.val = load i64, ptr %i.f, align 16
  %i.g = shl i32 %5, 3
  %i.h = and i32 %i.g, 2040
  %i.i = add nuw nsw i32 %i.h, 8
  %i.j = trunc i64 %.val to i32
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 7
  %i.m = shl i32 %5, 18
  %i.n = ashr i32 %i.m, 29
  %reass.sub = sub nsw i32 %i.n, %i.l
end_hunk_9
begin_hunk_10_@helper_vfsgnj_vf_w:bb.a
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %3, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = and i32 %i.ca, 2147483647
  %i.cc = or disjoint i32 %i.cb, %i.aa
  %i.cd = getelementptr inbounds [4 x i8], ptr %0, i64 %i.by
  store i32 %i.cc, ptr %i.cd, align 4
  %i.ce = add nuw i32 %.037, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ce, %i.d
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !2616

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block
  store i32 0, ptr %i.w, align 4
  %i.cf = shl i32 %i.d, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.cf, i32 noundef %i.p) #17
  tail call void @riscv_cpu_check_fflags(ptr noundef %4, i16 noundef zeroext %i.v) #17
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vfsgnj_vf_d(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.d = load i32, ptr %i.c, align 8              ; 8 uses
  %i.e = getelementptr i8, ptr %4, i64 4608
  %.val = load i64, ptr %i.e, align 16
  %i.f = shl i32 %5, 3
  %i.g = and i32 %i.f, 2040
  %i.h = add nuw nsw i32 %i.g, 8
  %i.i = trunc i64 %.val to i32
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 7
  %i.l = shl i32 %5, 18
  %i.m = ashr i32 %i.l, 29
  %reass.sub = sub nsw i32 %i.m, %i.k
  %i.n = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -3)
  %i.o = add nsw i32 %i.n, 3
  %i.p = shl nuw nsw i32 %i.h, %i.o
  %i.q = lshr i32 %5, 14
  %i.r = and i32 %i.q, 1
  %i.s = lshr i32 %5, 16
  %i.t = and i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4916
  %.val36 = load i64, ptr %i.u, align 4
  %i.v = trunc i64 %.val36 to i16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4              ; 7 uses
  %.not = icmp ult i32 %i.x, %i.d
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.y = and i32 %5, 1024
  %.not34 = icmp eq i32 %i.y, 0
  %i.z = and i64 %2, -9223372036854775808         ; 5 uses
  br i1 %.not34, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.aa = sub i32 %i.d, %i.x                      ; 3 uses
  %min.iters.check = icmp ult i32 %i.aa, 8
  %i.ab = add i32 %i.d, -1
  %i.ac = icmp slt i32 %i.ab, %i.x
  %or.cond = or i1 %min.iters.check, %i.ac
  %i.ad = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond46 = or i1 %or.cond, %diff.check
  br i1 %or.cond46, label %.preheader.split.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.preheader.split.preheader
  %n.vec = and i32 %i.aa, -4                      ; 3 uses
  %i.ae = add i32 %i.x, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = add nuw i32 %i.x, %index
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <2 x i64>, ptr %i.ah, align 8
  %wide.load44 = load <2 x i64>, ptr %i.ai, align 8
  %i.aj = and <2 x i64> %wide.load, splat (i64 9223372036854775807)
  %i.ak = and <2 x i64> %wide.load44, splat (i64 9223372036854775807)
  %i.al = or disjoint <2 x i64> %i.aj, %broadcast.splat
  %i.am = or disjoint <2 x i64> %i.ak, %broadcast.splat
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <2 x i64> %i.al, ptr %i.an, align 8
  store <2 x i64> %i.am, ptr %i.ao, align 8
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ap = icmp eq i32 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !2617

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.aa, %n.vec
  br i1 %cmp.n, label %.split.us, label %.preheader.split.preheader47

.preheader.split.preheader47:                     ; preds = %.preheader.split.preheader, %middle.block
  %.037.ph = phi i32 [ %i.x, %.preheader.split.preheader ], [ %i.ae, %middle.block ] ; 5 uses
  %i.aq = sub i32 %i.d, %.037.ph
  %.neg = add i32 %.037.ph, 1
  %xtraiter = and i32 %i.aq, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.split.prol.loopexit, label %.preheader.split.prol

.preheader.split.prol:                            ; preds = %.preheader.split.preheader47
  %i.ar = sext i32 %.037.ph to i64                ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8
  %i.au = and i64 %i.at, 9223372036854775807
  %i.av = or disjoint i64 %i.au, %i.z
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ar
  store i64 %i.av, ptr %i.aw, align 8
  %i.ax = add nuw i32 %.037.ph, 1
  br label %.preheader.split.prol.loopexit

.preheader.split.prol.loopexit:                   ; preds = %.preheader.split.prol, %.preheader.split.preheader47
  %.037.unr = phi i32 [ %.037.ph, %.preheader.split.preheader47 ], [ %i.ax, %.preheader.split.prol ]
  %i.ay = icmp eq i32 %i.d, %.neg
  br i1 %i.ay, label %.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.037.us = phi i32 [ %i.bp, %bb.d ], [ %i.x, %.preheader ] ; 5 uses
  %i.az = sdiv i32 %.037.us, 64
  %i.ba = srem i32 %.037.us, 64
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = zext nneg i32 %i.ba to i64
  %i.bf = shl nuw i64 1, %i.be
  %i.bg = and i64 %i.bd, %i.bf
  %.not35.us = icmp eq i64 %i.bg, 0
  br i1 %.not35.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.bh = sext i32 %.037.us to i64                ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = and i64 %i.bj, 9223372036854775807
  %i.bl = or disjoint i64 %i.bk, %i.z
  %i.bm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bh
  store i64 %i.bl, ptr %i.bm, align 8
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.bn = shl i32 %.037.us, 3                     ; 2 uses
  %i.bo = add i32 %i.bn, 8
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.bn, i32 noundef %i.bo) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bp = add i32 %.037.us, 1                     ; 2 uses
  %exitcond39.not = icmp eq i32 %i.bp, %i.d
  br i1 %exitcond39.not, label %.split.us, label %.preheader.split.us, !llvm.loop !2618

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.w, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.prol.loopexit, %.preheader.split
  %.037 = phi i32 [ %i.cd, %.preheader.split ], [ %.037.unr, %.preheader.split.prol.loopexit ] ; 3 uses
  %i.bq = sext i32 %.037 to i64                   ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = and i64 %i.bs, 9223372036854775807
  %i.bu = or disjoint i64 %i.bt, %i.z
  %i.bv = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bq
  store i64 %i.bu, ptr %i.bv, align 8
  %i.bw = add nuw i32 %.037, 1
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = and i64 %i.bz, 9223372036854775807
  %i.cb = or disjoint i64 %i.ca, %i.z
  %i.cc = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bx
  store i64 %i.cb, ptr %i.cc, align 8
  %i.cd = add nuw i32 %.037, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.cd, %i.d
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !2619

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block
  store i32 0, ptr %i.w, align 4
  %i.ce = shl i32 %i.d, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.ce, i32 noundef %i.p) #17
  tail call void @riscv_cpu_check_fflags(ptr noundef %4, i16 noundef zeroext %i.v) #17
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vfsgnjn_vv_h(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %3 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.e = load i32, ptr %i.d, align 8              ; 8 uses
  %i.f = getelementptr i8, ptr %4, i64 4608
  %.val = load i64, ptr %i.f, align 16
  %i.g = shl i32 %5, 3
  %i.h = and i32 %i.g, 2040
  %i.i = add nuw nsw i32 %i.h, 8
  %i.j = trunc i64 %.val to i32
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 7
  %i.m = shl i32 %5, 18
  %i.n = ashr i32 %i.m, 29
  %reass.sub = sub nsw i32 %i.n, %i.l
  %i.o = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -1)
  %i.p = add nsw i32 %i.o, 1
  %i.q = shl nuw nsw i32 %i.i, %i.p
  %.zext = and i32 %i.q, 65528
  %i.r = lshr i32 %5, 14
  %i.s = and i32 %i.r, 1
  %i.t = lshr i32 %5, 16
  %i.u = and i32 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4916
  %.val36 = load i64, ptr %i.v, align 4
  %i.w = trunc i64 %.val36 to i16
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4              ; 10 uses
  %.not = icmp ult i32 %i.y, %i.e
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.z = and i32 %5, 1024
  %.not34 = icmp eq i32 %i.z, 0
  br i1 %.not34, label %.preheader.split.us, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.aa = sub i32 %i.e, %i.y                      ; 7 uses
  %min.iters.check = icmp ult i32 %i.aa, 4
  %i.ab = add i32 %i.e, -1
  %i.ac = icmp slt i32 %i.ab, %i.y
  %or.cond = or i1 %min.iters.check, %i.ac
  br i1 %or.cond, label %.preheader.split.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.ad, -32
  %i.ae = sub i64 %i.c, %i.a
  %diff.check45 = icmp ugt i64 %i.ae, -32
  %conflict.rdx = or i1 %diff.check, %diff.check45
  br i1 %conflict.rdx, label %.preheader.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check46 = icmp ult i32 %i.aa, 16
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i32 %i.aa, 12
  %n.vec = and i32 %i.aa, -16                     ; 4 uses
  %i.ag = add i32 %i.y, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = add nuw i32 %i.y, %index
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  %i.aj = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <8 x i16>, ptr %i.aj, align 2
  %wide.load47 = load <8 x i16>, ptr %i.ak, align 2
  %i.al = getelementptr inbounds [2 x i8], ptr %3, i64 %i.ai ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load48 = load <8 x i16>, ptr %i.al, align 2
  %wide.load49 = load <8 x i16>, ptr %i.am, align 2
  %i.an = and <8 x i16> %wide.load, splat (i16 -32768)
  %i.ao = and <8 x i16> %wide.load47, splat (i16 -32768)
  %i.ap = and <8 x i16> %wide.load48, splat (i16 32767)
  %i.aq = and <8 x i16> %wide.load49, splat (i16 32767)
  %i.ar = or disjoint <8 x i16> %i.ap, %i.an
  %i.as = or disjoint <8 x i16> %i.aq, %i.ao
  %i.at = xor <8 x i16> %i.ar, splat (i16 -32768)
  %i.au = xor <8 x i16> %i.as, splat (i16 -32768)
  %i.av = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <8 x i16> %i.at, ptr %i.av, align 2
  store <8 x i16> %i.au, ptr %i.aw, align 2
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.ax = icmp eq i32 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !2620

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.aa, %n.vec
  br i1 %cmp.n, label %.split.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.af, 0
  br i1 %min.epilog.iters.check, label %.preheader.split.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec50 = and i32 %i.aa, -4                    ; 3 uses
  %i.ay = add i32 %i.y, %n.vec50
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 2 uses
  %i.az = add nuw i32 %i.y, %index51
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ba
  %wide.load52 = load <4 x i16>, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds [2 x i8], ptr %3, i64 %i.ba
  %wide.load53 = load <4 x i16>, ptr %i.bc, align 2
  %i.bd = and <4 x i16> %wide.load52, splat (i16 -32768)
  %i.be = and <4 x i16> %wide.load53, splat (i16 32767)
  %i.bf = or disjoint <4 x i16> %i.be, %i.bd
  %i.bg = xor <4 x i16> %i.bf, splat (i16 -32768)
  %i.bh = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ba
  store <4 x i16> %i.bg, ptr %i.bh, align 2
  %index.next54 = add nuw i32 %index51, 4         ; 2 uses
  %i.bi = icmp eq i32 %index.next54, %n.vec50
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2621

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n55 = icmp eq i32 %i.aa, %n.vec50
  br i1 %cmp.n55, label %.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.037.ph = phi i32 [ %i.y, %iter.check ], [ %i.y, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ] ; 5 uses
  %i.bj = sub i32 %i.e, %.037.ph
  %.neg = add i32 %.037.ph, 1
  %xtraiter = and i32 %i.bj, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.split.prol.loopexit, label %.preheader.split.prol

.preheader.split.prol:                            ; preds = %.preheader.split.preheader
  %i.bk = sext i32 %.037.ph to i64                ; 3 uses
  %i.bl = getelementptr inbounds [2 x i8], ptr %2, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = getelementptr inbounds [2 x i8], ptr %3, i64 %i.bk
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = and i16 %i.bm, -32768
  %i.bq = and i16 %i.bo, 32767
  %i.br = or disjoint i16 %i.bq, %i.bp
  %i.bs = xor i16 %i.br, -32768
  %i.bt = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bk
  store i16 %i.bs, ptr %i.bt, align 2
  %i.bu = add nuw i32 %.037.ph, 1
  br label %.preheader.split.prol.loopexit

.preheader.split.prol.loopexit:                   ; preds = %.preheader.split.prol, %.preheader.split.preheader
  %.037.unr = phi i32 [ %.037.ph, %.preheader.split.preheader ], [ %i.bu, %.preheader.split.prol ]
  %i.bv = icmp eq i32 %i.e, %.neg
  br i1 %i.bv, label %.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.037.us = phi i32 [ %i.cq, %bb.d ], [ %i.y, %.preheader ] ; 5 uses
  %i.bw = sdiv i32 %.037.us, 64
  %i.bx = srem i32 %.037.us, 64
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = zext nneg i32 %i.bx to i64
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.ca, %i.cc
  %.not35.us = icmp eq i64 %i.cd, 0
  br i1 %.not35.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.ce = sext i32 %.037.us to i64                ; 3 uses
  %i.cf = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = getelementptr inbounds [2 x i8], ptr %3, i64 %i.ce
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = and i16 %i.cg, -32768
  %i.ck = and i16 %i.ci, 32767
  %i.cl = or disjoint i16 %i.ck, %i.cj
  %i.cm = xor i16 %i.cl, -32768
  %i.cn = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ce
  store i16 %i.cm, ptr %i.cn, align 2
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.co = shl i32 %.037.us, 1                     ; 2 uses
  %i.cp = add i32 %i.co, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.u, i32 noundef %i.co, i32 noundef %i.cp) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cq = add i32 %.037.us, 1                     ; 2 uses
  %exitcond39.not = icmp eq i32 %i.cq, %i.e
  br i1 %exitcond39.not, label %.split.us, label %.preheader.split.us, !llvm.loop !2622

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.x, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.prol.loopexit, %.preheader.split
  %.037 = phi i32 [ %i.dm, %.preheader.split ], [ %.037.unr, %.preheader.split.prol.loopexit ] ; 3 uses
  %i.cr = sext i32 %.037 to i64                   ; 3 uses
  %i.cs = getelementptr inbounds [2 x i8], ptr %2, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2
  %i.cu = getelementptr inbounds [2 x i8], ptr %3, i64 %i.cr
  %i.cv = load i16, ptr %i.cu, align 2
  %i.cw = and i16 %i.ct, -32768
  %i.cx = and i16 %i.cv, 32767
  %i.cy = or disjoint i16 %i.cx, %i.cw
  %i.cz = xor i16 %i.cy, -32768
  %i.da = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cr
  store i16 %i.cz, ptr %i.da, align 2
  %i.db = add nuw i32 %.037, 1
  %i.dc = sext i32 %i.db to i64                   ; 3 uses
  %i.dd = getelementptr inbounds [2 x i8], ptr %2, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2
  %i.df = getelementptr inbounds [2 x i8], ptr %3, i64 %i.dc
  %i.dg = load i16, ptr %i.df, align 2
  %i.dh = and i16 %i.de, -32768
  %i.di = and i16 %i.dg, 32767
  %i.dj = or disjoint i16 %i.di, %i.dh
  %i.dk = xor i16 %i.dj, -32768
  %i.dl = getelementptr inbounds [2 x i8], ptr %0, i64 %i.dc
  store i16 %i.dk, ptr %i.dl, align 2
  %i.dm = add nuw i32 %.037, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.dm, %i.e
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !2623

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block, %vec.epilog.middle.block
  store i32 0, ptr %i.x, align 4
  %i.dn = shl i32 %i.e, 1
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.dn, i32 noundef %.zext) #17
  tail call void @riscv_cpu_check_fflags(ptr noundef %4, i16 noundef zeroext %i.w) #17
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vfsgnjn_vv_w(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.e = load i32, ptr %i.d, align 8              ; 8 uses
  %i.f = getelementptr i8, ptr %4, i64 4608
  %.val = load i64, ptr %i.f, align 16
  %i.g = shl i32 %5, 3
  %i.h = and i32 %i.g, 2040
end_hunk_10
begin_hunk_11_@helper_vfsgnjn_vf_w:bb.a
  store i32 %i.ci, ptr %i.cj, align 4
  %i.ck = add nuw i32 %.037, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ck, %i.d
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !2636

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block
  store i32 0, ptr %i.w, align 4
  %i.cl = shl i32 %i.d, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.cl, i32 noundef %i.p) #17
  tail call void @riscv_cpu_check_fflags(ptr noundef %4, i16 noundef zeroext %i.v) #17
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vfsgnjn_vf_d(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.d = load i32, ptr %i.c, align 8              ; 8 uses
  %i.e = getelementptr i8, ptr %4, i64 4608
  %.val = load i64, ptr %i.e, align 16
  %i.f = shl i32 %5, 3
  %i.g = and i32 %i.f, 2040
  %i.h = add nuw nsw i32 %i.g, 8
  %i.i = trunc i64 %.val to i32
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 7
  %i.l = shl i32 %5, 18
  %i.m = ashr i32 %i.l, 29
  %reass.sub = sub nsw i32 %i.m, %i.k
  %i.n = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -3)
  %i.o = add nsw i32 %i.n, 3
  %i.p = shl nuw nsw i32 %i.h, %i.o
  %i.q = lshr i32 %5, 14
  %i.r = and i32 %i.q, 1
  %i.s = lshr i32 %5, 16
  %i.t = and i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4916
  %.val36 = load i64, ptr %i.u, align 4
  %i.v = trunc i64 %.val36 to i16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4              ; 7 uses
  %.not = icmp ult i32 %i.x, %i.d
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.y = and i32 %5, 1024
  %.not34 = icmp eq i32 %i.y, 0
  %i.z = and i64 %2, -9223372036854775808         ; 5 uses
  br i1 %.not34, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.aa = sub i32 %i.d, %i.x                      ; 3 uses
  %min.iters.check = icmp ult i32 %i.aa, 8
  %i.ab = add i32 %i.d, -1
  %i.ac = icmp slt i32 %i.ab, %i.x
  %or.cond = or i1 %min.iters.check, %i.ac
  %i.ad = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond46 = or i1 %or.cond, %diff.check
  br i1 %or.cond46, label %.preheader.split.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.preheader.split.preheader
  %n.vec = and i32 %i.aa, -4                      ; 3 uses
  %i.ae = add i32 %i.x, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = add nuw i32 %i.x, %index
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <2 x i64>, ptr %i.ah, align 8
  %wide.load44 = load <2 x i64>, ptr %i.ai, align 8
  %i.aj = and <2 x i64> %wide.load, splat (i64 9223372036854775807)
  %i.ak = and <2 x i64> %wide.load44, splat (i64 9223372036854775807)
  %i.al = or disjoint <2 x i64> %i.aj, %broadcast.splat
  %i.am = or disjoint <2 x i64> %i.ak, %broadcast.splat
  %i.an = xor <2 x i64> %i.al, splat (i64 -9223372036854775808)
  %i.ao = xor <2 x i64> %i.am, splat (i64 -9223372036854775808)
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x i64> %i.an, ptr %i.ap, align 8
  store <2 x i64> %i.ao, ptr %i.aq, align 8
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ar = icmp eq i32 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !2637

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.aa, %n.vec
  br i1 %cmp.n, label %.split.us, label %.preheader.split.preheader47

.preheader.split.preheader47:                     ; preds = %.preheader.split.preheader, %middle.block
  %.037.ph = phi i32 [ %i.x, %.preheader.split.preheader ], [ %i.ae, %middle.block ] ; 5 uses
  %i.as = sub i32 %i.d, %.037.ph
  %.neg = add i32 %.037.ph, 1
  %xtraiter = and i32 %i.as, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.split.prol.loopexit, label %.preheader.split.prol

.preheader.split.prol:                            ; preds = %.preheader.split.preheader47
  %i.at = sext i32 %.037.ph to i64                ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %3, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = and i64 %i.av, 9223372036854775807
  %i.ax = or disjoint i64 %i.aw, %i.z
  %i.ay = xor i64 %i.ax, -9223372036854775808
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %i.at
  store i64 %i.ay, ptr %i.az, align 8
  %i.ba = add nuw i32 %.037.ph, 1
  br label %.preheader.split.prol.loopexit

.preheader.split.prol.loopexit:                   ; preds = %.preheader.split.prol, %.preheader.split.preheader47
  %.037.unr = phi i32 [ %.037.ph, %.preheader.split.preheader47 ], [ %i.ba, %.preheader.split.prol ]
  %i.bb = icmp eq i32 %i.d, %.neg
  br i1 %i.bb, label %.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.037.us = phi i32 [ %i.bt, %bb.d ], [ %i.x, %.preheader ] ; 5 uses
  %i.bc = sdiv i32 %.037.us, 64
  %i.bd = srem i32 %.037.us, 64
  %i.be = sext i32 %i.bc to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %1, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = zext nneg i32 %i.bd to i64
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = and i64 %i.bg, %i.bi
  %.not35.us = icmp eq i64 %i.bj, 0
  br i1 %.not35.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.bk = sext i32 %.037.us to i64                ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = and i64 %i.bm, 9223372036854775807
  %i.bo = or disjoint i64 %i.bn, %i.z
  %i.bp = xor i64 %i.bo, -9223372036854775808
  %i.bq = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bk
  store i64 %i.bp, ptr %i.bq, align 8
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.br = shl i32 %.037.us, 3                     ; 2 uses
  %i.bs = add i32 %i.br, 8
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.br, i32 noundef %i.bs) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bt = add i32 %.037.us, 1                     ; 2 uses
  %exitcond39.not = icmp eq i32 %i.bt, %i.d
  br i1 %exitcond39.not, label %.split.us, label %.preheader.split.us, !llvm.loop !2638

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.w, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.prol.loopexit, %.preheader.split
  %.037 = phi i32 [ %i.cj, %.preheader.split ], [ %.037.unr, %.preheader.split.prol.loopexit ] ; 3 uses
  %i.bu = sext i32 %.037 to i64                   ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = and i64 %i.bw, 9223372036854775807
  %i.by = or disjoint i64 %i.bx, %i.z
  %i.bz = xor i64 %i.by, -9223372036854775808
  %i.ca = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bu
  store i64 %i.bz, ptr %i.ca, align 8
  %i.cb = add nuw i32 %.037, 1
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = and i64 %i.ce, 9223372036854775807
  %i.cg = or disjoint i64 %i.cf, %i.z
  %i.ch = xor i64 %i.cg, -9223372036854775808
  %i.ci = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cc
  store i64 %i.ch, ptr %i.ci, align 8
  %i.cj = add nuw i32 %.037, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.cj, %i.d
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !2639

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block
  store i32 0, ptr %i.w, align 4
  %i.ck = shl i32 %i.d, 3
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.ck, i32 noundef %i.p) #17
  tail call void @riscv_cpu_check_fflags(ptr noundef %4, i16 noundef zeroext %i.v) #17
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vfsgnjx_vv_h(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %3 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.e = load i32, ptr %i.d, align 8              ; 8 uses
  %i.f = getelementptr i8, ptr %4, i64 4608
  %.val = load i64, ptr %i.f, align 16
  %i.g = shl i32 %5, 3
  %i.h = and i32 %i.g, 2040
  %i.i = add nuw nsw i32 %i.h, 8
  %i.j = trunc i64 %.val to i32
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 7
  %i.m = shl i32 %5, 18
  %i.n = ashr i32 %i.m, 29
  %reass.sub = sub nsw i32 %i.n, %i.l
  %i.o = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -1)
  %i.p = add nsw i32 %i.o, 1
  %i.q = shl nuw nsw i32 %i.i, %i.p
  %.zext = and i32 %i.q, 65528
  %i.r = lshr i32 %5, 14
  %i.s = and i32 %i.r, 1
  %i.t = lshr i32 %5, 16
  %i.u = and i32 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4916
  %.val36 = load i64, ptr %i.v, align 4
  %i.w = trunc i64 %.val36 to i16
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4              ; 10 uses
  %.not = icmp ult i32 %i.y, %i.e
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.z = and i32 %5, 1024
  %.not34 = icmp eq i32 %i.z, 0
  br i1 %.not34, label %.preheader.split.us, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.aa = sub i32 %i.e, %i.y                      ; 7 uses
  %min.iters.check = icmp ult i32 %i.aa, 4
  %i.ab = add i32 %i.e, -1
  %i.ac = icmp slt i32 %i.ab, %i.y
  %or.cond = or i1 %min.iters.check, %i.ac
  br i1 %or.cond, label %.preheader.split.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.ad, -32
  %i.ae = sub i64 %i.c, %i.a
  %diff.check45 = icmp ugt i64 %i.ae, -32
  %conflict.rdx = or i1 %diff.check, %diff.check45
  br i1 %conflict.rdx, label %.preheader.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check46 = icmp ult i32 %i.aa, 16
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i32 %i.aa, 12
  %n.vec = and i32 %i.aa, -16                     ; 4 uses
  %i.ag = add i32 %i.y, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = add nuw i32 %i.y, %index
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  %i.aj = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <8 x i16>, ptr %i.aj, align 2
  %wide.load47 = load <8 x i16>, ptr %i.ak, align 2
  %i.al = getelementptr inbounds [2 x i8], ptr %3, i64 %i.ai ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load48 = load <8 x i16>, ptr %i.al, align 2
  %wide.load49 = load <8 x i16>, ptr %i.am, align 2
  %i.an = and <8 x i16> %wide.load, splat (i16 -32768)
  %i.ao = and <8 x i16> %wide.load47, splat (i16 -32768)
  %i.ap = xor <8 x i16> %i.an, %wide.load48
  %i.aq = xor <8 x i16> %i.ao, %wide.load49
  %i.ar = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <8 x i16> %i.ap, ptr %i.ar, align 2
  store <8 x i16> %i.aq, ptr %i.as, align 2
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.at = icmp eq i32 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !2640

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.aa, %n.vec
  br i1 %cmp.n, label %.split.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.af, 0
  br i1 %min.epilog.iters.check, label %.preheader.split.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec50 = and i32 %i.aa, -4                    ; 3 uses
  %i.au = add i32 %i.y, %n.vec50
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 2 uses
  %i.av = add nuw i32 %i.y, %index51
  %i.aw = sext i32 %i.av to i64                   ; 3 uses
  %i.ax = getelementptr inbounds [2 x i8], ptr %2, i64 %i.aw
  %wide.load52 = load <4 x i16>, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds [2 x i8], ptr %3, i64 %i.aw
  %wide.load53 = load <4 x i16>, ptr %i.ay, align 2
  %i.az = and <4 x i16> %wide.load52, splat (i16 -32768)
  %i.ba = xor <4 x i16> %i.az, %wide.load53
  %i.bb = getelementptr inbounds [2 x i8], ptr %0, i64 %i.aw
  store <4 x i16> %i.ba, ptr %i.bb, align 2
  %index.next54 = add nuw i32 %index51, 4         ; 2 uses
  %i.bc = icmp eq i32 %index.next54, %n.vec50
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2641

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n55 = icmp eq i32 %i.aa, %n.vec50
  br i1 %cmp.n55, label %.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.037.ph = phi i32 [ %i.y, %iter.check ], [ %i.y, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ] ; 5 uses
  %i.bd = sub i32 %i.e, %.037.ph
  %.neg = add i32 %.037.ph, 1
  %xtraiter = and i32 %i.bd, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.split.prol.loopexit, label %.preheader.split.prol

.preheader.split.prol:                            ; preds = %.preheader.split.preheader
  %i.be = sext i32 %.037.ph to i64                ; 3 uses
  %i.bf = getelementptr inbounds [2 x i8], ptr %2, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = getelementptr inbounds [2 x i8], ptr %3, i64 %i.be
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = and i16 %i.bg, -32768
  %i.bk = xor i16 %i.bj, %i.bi
  %i.bl = getelementptr inbounds [2 x i8], ptr %0, i64 %i.be
  store i16 %i.bk, ptr %i.bl, align 2
  %i.bm = add nuw i32 %.037.ph, 1
  br label %.preheader.split.prol.loopexit

.preheader.split.prol.loopexit:                   ; preds = %.preheader.split.prol, %.preheader.split.preheader
  %.037.unr = phi i32 [ %.037.ph, %.preheader.split.preheader ], [ %i.bm, %.preheader.split.prol ]
  %i.bn = icmp eq i32 %i.e, %.neg
  br i1 %i.bn, label %.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.037.us = phi i32 [ %i.cg, %bb.d ], [ %i.y, %.preheader ] ; 5 uses
  %i.bo = sdiv i32 %.037.us, 64
  %i.bp = srem i32 %.037.us, 64
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = zext nneg i32 %i.bp to i64
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = and i64 %i.bs, %i.bu
  %.not35.us = icmp eq i64 %i.bv, 0
  br i1 %.not35.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.bw = sext i32 %.037.us to i64                ; 3 uses
  %i.bx = getelementptr inbounds [2 x i8], ptr %2, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2
  %i.bz = getelementptr inbounds [2 x i8], ptr %3, i64 %i.bw
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = and i16 %i.by, -32768
  %i.cc = xor i16 %i.cb, %i.ca
  %i.cd = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bw
  store i16 %i.cc, ptr %i.cd, align 2
  br label %bb.d

bb.c:                                             ; preds = %.preheader.split.us
  %i.ce = shl i32 %.037.us, 1                     ; 2 uses
  %i.cf = add i32 %i.ce, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.u, i32 noundef %i.ce, i32 noundef %i.cf) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cg = add i32 %.037.us, 1                     ; 2 uses
  %exitcond39.not = icmp eq i32 %i.cg, %i.e
  br i1 %exitcond39.not, label %.split.us, label %.preheader.split.us, !llvm.loop !2642

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %i.x, align 4
  br label %bb.f

.preheader.split:                                 ; preds = %.preheader.split.prol.loopexit, %.preheader.split
  %.037 = phi i32 [ %i.cy, %.preheader.split ], [ %.037.unr, %.preheader.split.prol.loopexit ] ; 3 uses
  %i.ch = sext i32 %.037 to i64                   ; 3 uses
  %i.ci = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 2
  %i.ck = getelementptr inbounds [2 x i8], ptr %3, i64 %i.ch
  %i.cl = load i16, ptr %i.ck, align 2
  %i.cm = and i16 %i.cj, -32768
  %i.cn = xor i16 %i.cm, %i.cl
  %i.co = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ch
  store i16 %i.cn, ptr %i.co, align 2
  %i.cp = add nuw i32 %.037, 1
  %i.cq = sext i32 %i.cp to i64                   ; 3 uses
  %i.cr = getelementptr inbounds [2 x i8], ptr %2, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = getelementptr inbounds [2 x i8], ptr %3, i64 %i.cq
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = and i16 %i.cs, -32768
  %i.cw = xor i16 %i.cv, %i.cu
  %i.cx = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cq
  store i16 %i.cw, ptr %i.cx, align 2
  %i.cy = add nuw i32 %.037, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.cy, %i.e
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split, !llvm.loop !2643

.split.us:                                        ; preds = %.preheader.split.prol.loopexit, %.preheader.split, %bb.d, %middle.block, %vec.epilog.middle.block
  store i32 0, ptr %i.x, align 4
  %i.cz = shl i32 %i.e, 1
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.cz, i32 noundef %.zext) #17
  tail call void @riscv_cpu_check_fflags(ptr noundef %4, i16 noundef zeroext %i.w) #17
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vfsgnjx_vv_w(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.e = load i32, ptr %i.d, align 8              ; 8 uses
  %i.f = getelementptr i8, ptr %4, i64 4608
  %.val = load i64, ptr %i.f, align 16
  %i.g = shl i32 %5, 3
  %i.h = and i32 %i.g, 2040
  %i.i = add nuw nsw i32 %i.h, 8
  %i.j = trunc i64 %.val to i32
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 7
  %i.m = shl i32 %5, 18
  %i.n = ashr i32 %i.m, 29
  %reass.sub = sub nsw i32 %i.n, %i.l
  %i.o = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -2)
  %i.p = add nsw i32 %i.o, 2
  %i.q = shl nuw nsw i32 %i.i, %i.p
  %i.r = lshr i32 %5, 14
  %i.s = and i32 %i.r, 1
  %i.t = lshr i32 %5, 16
  %i.u = and i32 %i.t, 1
end_hunk_11
