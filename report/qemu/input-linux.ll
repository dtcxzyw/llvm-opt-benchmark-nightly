inline.NumInlined: 17
inline.NumDeleted: 8
begin_hunk_0_@input_linux_class_init:bb.a
  store ptr @input_linux_complete, ptr %i.b, align 8
  %i.c = tail call ptr @object_class_property_add_str(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @input_linux_get_evdev, ptr noundef nonnull @input_linux_set_evdev) #8 ; 0 uses
  %i.d = tail call ptr @object_class_property_add_bool(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @input_linux_get_grab_all, ptr noundef nonnull @input_linux_set_grab_all) #8 ; 0 uses
  %i.e = tail call ptr @object_class_property_add_bool(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @input_linux_get_repeat, ptr noundef nonnull @input_linux_set_repeat) #8 ; 0 uses
  %i.f = tail call ptr @object_class_property_add_enum(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @GrabToggleKeys_lookup, ptr noundef nonnull @input_linux_get_grab_toggle, ptr noundef nonnull @input_linux_set_grab_toggle) #8 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @qemu_set_fd_handler(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @close(i32 noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @input_linux_complete(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca [96 x i8], align 16               ; 6 uses
  %i.e = alloca [96 x i8], align 16               ; 5 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.input_absinfo, align 4      ; 6 uses
  %i.g = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 34, ptr noundef nonnull @__func__.INPUT_LINUX) #8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.d, i8 0, i64 96, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.e, i8 0, i64 96, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 7 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef 308, ptr noundef nonnull @__func__.input_linux_complete, ptr noundef nonnull @.str.11) #8
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %i.f, align 4, !annotation !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i64 24, i1 false), !annotation !9
  %i.j = tail call i32 (ptr, i32, ...) @open64(ptr noundef nonnull %i.i, i32 noundef 2) #8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 11 uses
  store i32 %i.j, ptr %i.k, align 8
  %i.l = icmp slt i32 %i.j, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__errno_location() #9
  %i.n = load i32, ptr %i.m, align 4
  %i.o = load ptr, ptr %i.h, align 8
  tail call void @error_setg_file_open_internal(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef 314, ptr noundef nonnull @__func__.input_linux_complete, i32 noundef %i.n, ptr noundef %i.o) #8
  br label %bb.ak

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %i.a, align 1, !annotation !9
  store i8 0, ptr %i.b, align 1, !annotation !9
  store i8 0, ptr %i.c, align 1, !annotation !9
  %i.p = tail call zeroext i1 @qemu_set_blocking(i32 noundef %i.j, i1 noundef zeroext false, ptr noundef %1) #8
  br i1 %i.p, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.k, align 8
  %i.r = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.q, i64 noundef 2147763457, ptr noundef nonnull %i.f) #8
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.h, align 8
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef 323, ptr noundef nonnull @__func__.input_linux_complete, ptr noundef nonnull @.str.12, ptr noundef %i.t) #8
  br label %bb.aj

bb.h:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.k, align 8
  %i.v = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.u, i64 noundef 2147566880, ptr noundef nonnull %i.a) #8
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.ai, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load i8, ptr %i.a, align 1
  %i.y = and i8 %i.x, 4
  %.not66 = icmp eq i8 %i.y, 0
  br i1 %.not66, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.b, align 1
  %i.z = load i32, ptr %i.k, align 8
  %i.aa = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.z, i64 noundef 2147566882, ptr noundef nonnull %i.b) #8
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.ai, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i8, ptr %i.b, align 1
  %i.ad = and i8 %i.ac, 1
  %.not67 = icmp eq i8 %i.ad, 0
  br i1 %.not67, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 833
  store i8 1, ptr %i.ae, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %i.af = load i8, ptr %i.a, align 1
  %i.ag = and i8 %i.af, 8
  %.not68 = icmp eq i8 %i.ag, 0
  br i1 %.not68, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.c, align 1
  %i.ah = load i32, ptr %i.k, align 8
  %i.ai = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.ah, i64 noundef 2147566883, ptr noundef nonnull %i.c) #8
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.ai, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = load i8, ptr %i.c, align 1
  %i.al = and i8 %i.ak, 1
  %.not69 = icmp eq i8 %i.al, 0
  br i1 %.not69, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 834
  store i8 1, ptr %i.am, align 2
  %i.an = load i32, ptr %i.k, align 8
  %i.ao = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.an, i64 noundef 2149074240, ptr noundef nonnull %2) #8
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aq = load ptr, ptr %i.h, align 8
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef 354, ptr noundef nonnull @__func__.input_linux_complete, ptr noundef nonnull @.str.13, ptr noundef %i.aq) #8
  br label %bb.aj

bb.r:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 844
  %i.at = load <2 x i32>, ptr %i.ar, align 4
  store <2 x i32> %i.at, ptr %i.as, align 4
  %i.au = load i32, ptr %i.k, align 8
  %i.av = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.au, i64 noundef 2149074241, ptr noundef nonnull %2) #8
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ax = load ptr, ptr %i.h, align 8
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef 362, ptr noundef nonnull @__func__.input_linux_complete, ptr noundef nonnull @.str.14, ptr noundef %i.ax) #8
  br label %bb.aj

bb.t:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 852
  %i.az = load <2 x i32>, ptr %i.ar, align 4
  store <2 x i32> %i.az, ptr %i.ay, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.o, %bb.t, %bb.m
  %i.ba = load i8, ptr %i.a, align 1
  %i.bb = and i8 %i.ba, 2
  %.not70 = icmp eq i8 %i.bb, 0
  br i1 %.not70, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.d, i8 noundef 0, i64 noundef 96, i1 noundef false) #8
  %i.bc = load i32, ptr %i.k, align 8
  %i.bd = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.bc, i64 noundef 2153792801, ptr noundef nonnull %i.d) #8
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.ai, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = load i32, ptr %i.k, align 8
  %i.bg = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.bf, i64 noundef 2153792792, ptr noundef nonnull %i.e) #8
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %bb.x, label %.preheader

.preheader:                                       ; preds = %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 836 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 840 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 824 ; 2 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bm = load ptr, ptr %i.h, align 8
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef 378, ptr noundef nonnull @__func__.input_linux_complete, ptr noundef nonnull @.str.15, ptr noundef %i.bm) #8
  br label %bb.aj

bb.y:                                             ; preds = %.preheader, %bb.ae
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.ae ] ; 6 uses
  %i.bn = trunc nuw nsw i64 %indvars.iv to i32
  %i.bo = lshr i64 %indvars.iv, 3
  %i.bp = and i64 %i.bo, 536870911                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i32
  %i.bt = and i32 %i.bn, 7
  %i.bu = shl nuw nsw i32 1, %i.bt                ; 2 uses
  %i.bv = and i32 %i.bu, %i.bs
  %.not72 = icmp eq i32 %i.bv, 0
  br i1 %.not72, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %3 = icmp samesign ugt i64 %indvars.iv, 255
  %4 = trunc i64 %indvars.iv to i32
  %5 = add i32 %4, -704
  %or.cond.i = icmp ult i32 %5, -352
  %.0.i = and i1 %3, %or.cond.i
  br i1 %.0.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bw = load i32, ptr %i.bj, align 8
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bj, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.by = load i32, ptr %i.bi, align 4
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bi, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bp
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i32
  %i.cd = and i32 %i.bu, %i.cc
  %.not73 = icmp eq i32 %i.cd, 0
  br i1 %.not73, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv
  store i8 1, ptr %i.ce, align 1
  %i.cf = load i32, ptr %i.bl, align 8
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.bl, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.y, %bb.ad, %bb.ac
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 768
  br i1 %exitcond.not, label %.loopexit, label %bb.y, !llvm.loop !10

.loopexit:                                        ; preds = %bb.ae, %bb.u
  %i.ch = load i32, ptr %i.k, align 8
  call void @qemu_set_fd_handler(i32 noundef %i.ch, ptr noundef nonnull @input_linux_event, ptr noundef null, ptr noundef %i.g) #8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 824
  %i.cj = load i32, ptr %i.ci, align 8
  %.not71 = icmp eq i32 %i.cj, 0
  br i1 %.not71, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.loopexit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 53
  store i8 1, ptr %i.ck, align 1
  br label %bb.ah

bb.ag:                                            ; preds = %.loopexit
  call fastcc void @input_linux_toggle_grab(ptr noundef nonnull %i.g)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 896 ; 2 uses
  store ptr null, ptr %i.cl, align 8
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @inputs, i64 8), align 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 904
  store ptr %i.cm, ptr %i.cn, align 8
  store ptr %i.g, ptr %i.cm, align 8
  store ptr %i.cl, ptr getelementptr inbounds nuw (i8, ptr @inputs, i64 8), align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 832
  store i8 1, ptr %i.co, align 8
  br label %bb.ak

bb.ai:                                            ; preds = %bb.v, %bb.n, %bb.j, %bb.h
  %i.cp = load ptr, ptr %i.h, align 8
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef 408, ptr noundef nonnull @__func__.input_linux_complete, ptr noundef nonnull @.str.16, ptr noundef %i.cp) #8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.e, %bb.ai, %bb.x, %bb.s, %bb.q, %bb.g
  %i.cq = load i32, ptr %i.k, align 8
  %i.cr = call i32 @close(i32 noundef %i.cq) #8   ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare ptr @object_class_property_add_str(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @input_linux_get_evdev(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
g_strdup_inline.exit:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 34, ptr noundef nonnull @__func__.INPUT_LINUX) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noalias ptr @g_strdup(ptr noundef %i.c) #8
  ret ptr %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @input_linux_set_evdev(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 34, ptr noundef nonnull @__func__.INPUT_LINUX) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %g_strdup_inline.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 439, ptr noundef nonnull @__func__.input_linux_set_evdev, ptr noundef nonnull @.str.18) #8
  br label %bb.c

g_strdup_inline.exit:                             ; preds = %bb.a
  %i.d = tail call noalias ptr @g_strdup(ptr noundef %1) #8
  store ptr %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %g_strdup_inline.exit, %bb.b
  ret void
}

declare ptr @object_class_property_add_bool(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @input_linux_get_grab_all(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 34, ptr noundef nonnull @__func__.INPUT_LINUX) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 55
  %i.c = load i8, ptr %i.b, align 1, !range !7, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @input_linux_set_grab_all(ptr noundef %0, i1 noundef zeroext %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 34, ptr noundef nonnull @__func__.INPUT_LINUX) #8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 55
  store i8 %i.a, ptr %i.c, align 1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @input_linux_get_repeat(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 34, ptr noundef nonnull @__func__.INPUT_LINUX) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.c = load i8, ptr %i.b, align 4, !range !7, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @input_linux_set_repeat(ptr noundef %0, i1 noundef zeroext %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 34, ptr noundef nonnull @__func__.INPUT_LINUX) #8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i8 %i.a, ptr %i.c, align 4
  ret void
}

declare ptr @object_class_property_add_enum(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @input_linux_get_grab_toggle(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 34, ptr noundef nonnull @__func__.INPUT_LINUX) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 892
  %i.c = load i32, ptr %i.b, align 4
  ret i32 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @input_linux_set_grab_toggle(ptr noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 34, ptr noundef nonnull @__func__.INPUT_LINUX) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 892
  store i32 %1, ptr %i.b, align 4
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #5

declare void @error_setg_file_open_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

declare zeroext i1 @qemu_set_blocking(i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #7

end_hunk_0
