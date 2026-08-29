Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cpu?download=true
inline.NumInlined: 224
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@x86_cpuid_version_set_stepping:bb.a
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !annotation !38
  %i.c = call zeroext i1 @visit_type_uint64(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %4) #20
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8              ; 2 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %2, null
  %i.f = select i1 %.not, ptr @.str.643, ptr %2
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.408, i32 noundef 7614, ptr noundef nonnull @__func__.x86_cpuid_version_set_stepping, ptr noundef nonnull @.str.642, ptr noundef nonnull %i.f, i64 noundef 15) #20
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 30200 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, -16
  %i.j = trunc nuw nsw i64 %i.d to i32
  %i.k = or disjoint i32 %i.i, %i.j
  store i32 %i.k, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

declare ptr @object_class_property_add_str(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal noalias noundef ptr @x86_cpuid_get_vendor(ptr noundef %0, ptr nofree readnone captures(none) %1) #4 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20 ; 3 uses
  %i.b = tail call noalias dereferenceable_or_null(13) ptr @g_malloc(i64 noundef 13) #23 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 30188
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 30192
  %i.f = load i32, ptr %i.e, align 16             ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 30196
  %i.h = load i32, ptr %i.g, align 4              ; 4 uses
  %i.i = trunc i32 %i.d to i8
  store i8 %i.i, ptr %i.b, align 1
  %i.j = trunc i32 %i.f to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.j, ptr %i.k, align 1
  %i.l = trunc i32 %i.h to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.l, ptr %i.m, align 1
  %i.n = lshr i32 %i.d, 8
  %i.o = trunc i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.p, align 1
  %i.q = lshr i32 %i.f, 8
  %i.r = trunc i32 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %i.r, ptr %i.s, align 1
  %i.t = lshr i32 %i.h, 8
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 %i.u, ptr %i.v, align 1
  %i.w = lshr i32 %i.d, 16
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.x, ptr %i.y, align 1
  %i.z = lshr i32 %i.f, 16
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = lshr i32 %i.h, 16
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = lshr i32 %i.d, 24
  %i.ag = trunc nuw i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.ag, ptr %i.ah, align 1
  %i.ai = lshr i32 %i.f, 24
  %i.aj = trunc nuw i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = lshr i32 %i.h, 24
  %i.am = trunc nuw i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 0, ptr %i.ao, align 1
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpuid_set_vendor(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #4 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20 ; 3 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %.not = icmp eq i64 %i.b, 12
  br i1 %.not, label %.loopexit.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.408, i32 noundef 7643, ptr noundef nonnull @__func__.x86_cpuid_set_vendor, ptr noundef nonnull @.str.644) #20
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 30188 ; 5 uses
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 30192 ; 5 uses
  store i32 0, ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 30196 ; 5 uses
  store i32 0, ptr %i.e, align 4
  %i.f = load i8, ptr %1, align 1
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  store i32 %i.g, ptr %i.c, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  store i32 %i.j, ptr %i.d, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  store i32 %i.m, ptr %i.e, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = or disjoint i32 %i.q, %i.g               ; 2 uses
  store i32 %i.r, ptr %i.c, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  %i.w = or disjoint i32 %i.v, %i.j               ; 2 uses
  store i32 %i.w, ptr %i.d, align 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  %i.ab = or disjoint i32 %i.aa, %i.m             ; 2 uses
  store i32 %i.ab, ptr %i.e, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 16
  %i.ag = or disjoint i32 %i.af, %i.r             ; 2 uses
  store i32 %i.ag, ptr %i.c, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 16
  %i.al = or disjoint i32 %i.ak, %i.w             ; 2 uses
  store i32 %i.al, ptr %i.d, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 16
  %i.aq = or disjoint i32 %i.ap, %i.ab            ; 2 uses
  store i32 %i.aq, ptr %i.e, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw i32 %i.at, 24
  %i.av = or disjoint i32 %i.au, %i.ag
  store i32 %i.av, ptr %i.c, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw i32 %i.ay, 24
  %i.ba = or disjoint i32 %i.az, %i.al
  store i32 %i.ba, ptr %i.d, align 16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw i32 %i.bd, 24
  %i.bf = or disjoint i32 %i.be, %i.aq
  store i32 %i.bf, ptr %i.e, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noalias noundef ptr @x86_cpuid_get_model_id(ptr noundef %0, ptr nofree readnone captures(none) %1) #4 {
vector.ph:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20
  %i.b = tail call noalias dereferenceable_or_null(49) ptr @g_malloc(i64 noundef 49) #23 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 30984
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.d = lshr exact i64 %index, 2
  %i.e = and i64 %i.d, 1073741823
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.h = shl <4 x i32> %vec.ind, splat (i32 3)
  %i.i = and <4 x i32> %i.h, splat (i32 24)
  %i.j = lshr <4 x i32> %broadcast.splat, %i.i
  %i.k = trunc <4 x i32> %i.j to <4 x i8>
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  store <4 x i8> %i.k, ptr %i.l, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.m = icmp eq i64 %index.next, 48
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 0, ptr %i.n, align 1
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpuid_set_model_id(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree readnone captures(none) %2) #4 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20
  %i.b = icmp eq ptr %1, null
  %spec.store.select = select i1 %i.b, ptr @.str.411, ptr %1 ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #22
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 30984 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.d, i8 noundef 0, i64 noundef 48, i1 noundef false) #20
  %sext = shl i64 %i.c, 32
  %i.e = ashr exact i64 %sext, 32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %.not = icmp slt i64 %indvars.iv, %i.e
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.014 = phi i32 [ %i.h, %bb.c ], [ 0, %bb.b ]
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.i = shl i32 %indvars.iv.tr, 3
  %i.j = and i32 %i.i, 24
  %i.k = shl nuw i32 %.014, %i.j
  %i.l = lshr i64 %indvars.iv, 2
  %i.m = and i64 %i.l, 1073741823
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = or i32 %i.o, %i.k
  store i32 %i.p, ptr %i.n, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 48
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !44

bb.e:                                             ; preds = %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpuid_get_tsc_freq(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 31344
  %i.d = load i64, ptr %i.c, align 16
  %i.e = mul i64 %i.d, 1000
  store i64 %i.e, ptr %i.a, align 8
  %i.f = call zeroext i1 @visit_type_int(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpuid_set_tsc_freq(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !annotation !38
  %i.c = call zeroext i1 @visit_type_int(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %4) #20
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8              ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %2, null
  %i.f = select i1 %.not, ptr @.str.643, ptr %2
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.408, i32 noundef 7716, ptr noundef nonnull @__func__.x86_cpuid_set_tsc_freq, ptr noundef nonnull @.str.645, ptr noundef nonnull %i.f, i64 noundef 9223372036854775807) #20
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = udiv i64 %i.d, 1000                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 31352
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 31344
  store i64 %i.g, ptr %i.i, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpu_get_unavailable_features(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr noundef %4) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 31936
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %indvars.iv26.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next27.i, %bb.l ] ; 4 uses
  %.01423.i = phi ptr [ %i.a, %bb.a ], [ %.2.i, %bb.l ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv26.i
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %indvars.iv26.i to i32         ; 4 uses
  %i.g = add i32 %i.f, -21
  %or.cond.i15.i = icmp ult i32 %i.g, 2
  %i.h = icmp eq i64 %indvars.iv26.i, 22
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %bb.k ] ; 3 uses
  %.120.i = phi ptr [ %.01423.i, %bb.b ], [ %.2.i, %bb.k ] ; 4 uses
  %indvars25.i = trunc i64 %indvars.iv.i to i32   ; 5 uses
  %i.i = shl nuw i64 1, %indvars.iv.i
  %i.j = and i64 %i.i, %i.e
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #23
  store ptr %i.k, ptr %.120.i, align 8
  br i1 %or.cond.i15.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw nsw i32 %indvars25.i, 32
  %i.m = select i1 %i.h, i32 %i.l, i32 %indvars25.i ; 2 uses
  %i.n = icmp samesign ult i32 %i.m, 20
  br i1 %i.n, label %bb.f, label %.thread.i.i

bb.f:                                             ; preds = %bb.e
  %i.o = zext nneg i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [48 x i8], ptr @x86_ext_save_areas, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %.not.i17.i = icmp eq i64 %i.r, 0
  br i1 %.not.i17.i, label %.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i32, ptr %i.s, align 16             ; 2 uses
  %i.u = trunc i64 %i.r to i32
  %i.v = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.u, i1 false)
  %i.w = icmp ult i32 %i.t, 48
  br i1 %i.w, label %.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.647, ptr noundef nonnull @.str.408, i32 noundef 7854, ptr noundef nonnull @__PRETTY_FUNCTION__.x86_cpu_feature_name) #21
  unreachable

.thread.i.i:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.229.i.i = phi i32 [ %i.v, %bb.g ], [ %indvars25.i, %bb.d ], [ %indvars25.i, %bb.e ], [ %indvars25.i, %bb.f ] ; 2 uses
  %.22228.i.i = phi i32 [ %i.t, %bb.g ], [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %i.f, %bb.f ]
  %i.x = zext nneg i32 %.22228.i.i to i64
  %i.y = getelementptr inbounds nuw [568 x i8], ptr @feature_word_info, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = zext nneg i32 %.229.i.i to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp samesign ugt i32 %.229.i.i, 31
  %i.ae = icmp ne ptr %i.ac, null
  %or.cond3.i16.i = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond3.i16.i, label %bb.i, label %x86_cpu_feature_name.exit.i

bb.i:                                             ; preds = %.thread.i.i
  %i.af = load i32, ptr %i.y, align 8
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.j, label %x86_cpu_feature_name.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.648, ptr noundef nonnull @.str.408, i32 noundef 7856, ptr noundef nonnull @__PRETTY_FUNCTION__.x86_cpu_feature_name) #21
  unreachable

x86_cpu_feature_name.exit.i:                      ; preds = %bb.i, %.thread.i.i
  %i.ah = tail call noalias ptr @g_strdup(ptr noundef %i.ac) #20
  %i.ai = load ptr, ptr %.120.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ah, ptr %i.aj, align 8
  %i.ak = load ptr, ptr %.120.i, align 8
  br label %bb.k

bb.k:                                             ; preds = %x86_cpu_feature_name.exit.i, %bb.c
  %.2.i = phi ptr [ %i.ak, %x86_cpu_feature_name.exit.i ], [ %.120.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %bb.l, label %bb.c, !llvm.loop !45

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next27.i, 48
  br i1 %exitcond29.not.i, label %x86_cpu_list_feature_names.exit, label %bb.b, !llvm.loop !46

x86_cpu_list_feature_names.exit:                  ; preds = %bb.l
  %i.al = call zeroext i1 @visit_type_strList(ptr noundef %1, ptr noundef nonnull @.str.516, ptr noundef nonnull %i.a, ptr noundef %4) #20 ; 0 uses
  %i.am = load ptr, ptr %i.a, align 8
  call void @qapi_free_strList(ptr noundef %i.am) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpuid_get_avx10_version(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4) #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 30592
  %i.d = load i8, ptr %i.c, align 16
  store i8 %i.d, ptr %i.a, align 1
  %i.e = call zeroext i1 @visit_type_uint8(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpuid_set_avx10_version(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4) #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.462, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #20 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !annotation !38
  %i.c = call zeroext i1 @visit_type_uint8(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %4) #20
  br i1 %i.c, label %bb.b, label %x86_cpu_apply_avx10_features.exit

end_hunk_0
