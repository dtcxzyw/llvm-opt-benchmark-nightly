Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/xlnx-versal-trng?download=true
inline.NumInlined: 93
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@trng_ctrl_postw:bb.a
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, -2                         ; 2 uses
  store i32 %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 1116
  %i.r = load i32, ptr %i.q, align 4
  %i.s = xor i32 %i.r, -1
  %i.t = and i32 %i.p, %i.s
  %i.u = icmp ne i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 808
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = zext i1 %i.u to i32
  tail call void @qemu_set_irq(ptr noundef %i.w, i32 noundef %i.x) #5
  br label %trng_in_reset.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.y = and i32 %i.j, 32
  %.not9 = icmp eq i32 %i.y, 0
  br i1 %.not9, label %trng_in_reset.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = and i32 %i.j, 128
  %.not10 = icmp eq i32 %i.z, 0
  br i1 %.not10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @trng_regen(ptr noundef nonnull %i.d)
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.aa = and i32 %i.i, 8
  %.not.i11 = icmp eq i32 %i.aa, 0
  %i.ab = and i32 %i.i, 1024
  %.not19.i = icmp eq i32 %i.ab, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, i8 0, i64 96, i1 false)
  br i1 %.not19.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 1016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 noundef 48, i1 noundef false) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %.not.i11, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 noundef 48, i1 noundef false) #5
  br label %trng_reseed.exit

bb.k:                                             ; preds = %bb.i
  %i.af = and i32 %i.i, 64
  %.not21.i = icmp eq i32 %i.af, 0
  br i1 %.not21.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 864
  %i.ah = load <2 x i64>, ptr %i.ag, align 8
  store <2 x i64> %i.ah, ptr %i.ac, align 16
  br label %trng_reseed.exit

bb.m:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 848
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %.not20.i = icmp eq i64 %i.aj, 0
  br i1 %.not20.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 856 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = add i64 %i.al, 1                        ; 2 uses
  store i64 %i.am, ptr %i.ak, align 8
  store i64 %i.am, ptr %i.ac, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.aj, ptr %i.an, align 8
  br label %trng_reseed.exit

bb.o:                                             ; preds = %bb.m
  call void @qemu_guest_getrandom_nofail(ptr noundef nonnull %i.ac, i64 noundef 48) #5
  br label %trng_reseed.exit

trng_reseed.exit:                                 ; preds = %bb.j, %bb.l, %bb.n, %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 816
  %i.ap = load ptr, ptr %i.ao, align 8
  call void @g_rand_set_seed_array(ptr noundef %i.ap, ptr noundef nonnull %i.a, i32 noundef 24) #5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  store i32 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 840
  store i64 281474976710656, ptr %i.ar, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.p

bb.p:                                             ; preds = %trng_reseed.exit, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 892 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %i.au = or i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 888
  %i.aw = load i32, ptr %i.av, align 8            ; 3 uses
  %i.ax = and i32 %i.at, 8
  %.not.i.i = icmp ne i32 %i.ax, 0
  %i.ay = and i32 %i.aw, 4
  %.not15.i.i = icmp ne i32 %i.ay, 0
  %.0.i.i = and i1 %.not.i.i, %.not15.i.i
  %i.az = and i32 %i.at, 2
  %i.ba = and i32 %i.az, %i.aw
  %.not22.i.i = icmp ne i32 %i.ba, 0
  %.not19.i.i = trunc i32 %i.aw to i1
  %i.bb = select i1 %.not19.i.i, i1 true, i1 %.not22.i.i
  %.2.i.i = select i1 %i.bb, i1 true, i1 %.0.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 1112 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = zext i1 %.2.i.i to i32
  %i.bf = and i32 %i.bd, -2
  %i.bg = or disjoint i32 %i.bf, %i.be            ; 2 uses
  store i32 %i.bg, ptr %i.bc, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 1116
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = xor i32 %i.bi, -1
  %i.bk = and i32 %i.bg, %i.bj
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 808
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = zext i1 %i.bl to i32
  call void @qemu_set_irq(ptr noundef %i.bn, i32 noundef %i.bo) #5
  br label %trng_in_reset.exit.thread

trng_in_reset.exit.thread:                        ; preds = %bb.a, %bb.d, %trng_in_reset.exit, %bb.p, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @trng_ctrl4_postw(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca [24 x i32], align 16              ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 34, ptr noundef nonnull @__func__.XLNX_VERSAL_TRNG) #5 ; 11 uses
  %i.e = getelementptr i8, ptr %i.d, i64 896
  %.val = load i32, ptr %i.e, align 8             ; 4 uses
  %i.f = and i32 %.val, 64
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %trng_trss_enabled.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1096
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 1
  %.not.i.i = icmp eq i32 %i.i, 0
  %i.j = and i32 %.val, 5
  %or.cond.not.i = icmp eq i32 %i.j, 4
  %or.cond = and i1 %or.cond.not.i, %.not.i.i
  br i1 %or.cond, label %trng_trss_enabled.exit, label %trng_trss_enabled.exit.thread

trng_trss_enabled.exit:                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 1100
  %i.l = load i32, ptr %i.k, align 4
  %.not4.i = trunc i32 %i.l to i1
  br i1 %.not4.i, label %bb.c, label %trng_trss_enabled.exit.thread

bb.c:                                             ; preds = %trng_trss_enabled.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 864 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 872 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = load i64, ptr %i.m, align 8              ; 2 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.o, i64 %i.p, i64 1) ; 2 uses
  store i64 %i.q, ptr %i.n, align 8
  %i.r = shl i64 %i.p, 1
  %i.s = and i64 %1, 1
  %i.t = or disjoint i64 %i.r, %i.s               ; 2 uses
  store i64 %i.t, ptr %i.m, align 8
  %i.u = and i32 %.val, 8
  %.not.i = icmp eq i32 %i.u, 0
  %i.v = and i32 %.val, 1024
  %.not19.i = icmp eq i32 %i.v, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, i8 0, i64 96, i1 false)
  br i1 %.not19.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 1016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.x, i64 noundef 48, i1 noundef false) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 noundef 48, i1 noundef false) #5
  br label %trng_reseed.exit

bb.g:                                             ; preds = %bb.e
  store i64 %i.t, ptr %i.w, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.q, ptr %i.z, align 8
  br label %trng_reseed.exit

trng_reseed.exit:                                 ; preds = %bb.f, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 816
  %i.ab = load ptr, ptr %i.aa, align 8
  call void @g_rand_set_seed_array(ptr noundef %i.ab, ptr noundef nonnull %i.a, i32 noundef 24) #5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  store i32 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 840
  store i64 281474976710656, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call fastcc void @trng_regen(ptr noundef nonnull %i.d)
  br label %trng_trss_enabled.exit.thread

trng_trss_enabled.exit.thread:                    ; preds = %bb.b, %bb.a, %trng_trss_enabled.exit, %trng_reseed.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @trng_core_out_postr(ptr nofree noundef readonly captures(none) %0, i64 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 34, ptr noundef nonnull @__func__.XLNX_VERSAL_TRNG) #5 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 896
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1096
  %i.g = load i32, ptr %i.f, align 8
  %.not.i = trunc i32 %i.g to i1
  %.not3.i = trunc i32 %i.e to i1
  %or.cond21 = select i1 %.not.i, i1 true, i1 %.not3.i
  br i1 %or.cond21, label %trng_in_reset.exit.thread, label %bb.d

trng_in_reset.exit.thread:                        ; preds = %bb.a
  %i.h = tail call ptr @object_get_canonical_path(ptr noundef nonnull %i.c) #5 ; 2 uses
  %i.i = load i32, ptr @qemu_loglevel, align 4
  %i.j = and i32 %i.i, 2048
  %.not22 = icmp eq i32 %i.j, 0
  br i1 %.not22, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %trng_in_reset.exit.thread
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.49, ptr noundef %i.h) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %trng_in_reset.exit.thread
  tail call void @g_free(ptr noundef %i.h) #5
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 832 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @object_get_canonical_path(ptr noundef nonnull %i.c) #5 ; 2 uses
  %i.o = load i32, ptr @qemu_loglevel, align 4
  %i.p = and i32 %i.o, 2048
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.g, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.50, ptr noundef %i.n) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @g_free(ptr noundef %i.n) #5
  br label %bb.m

bb.h:                                             ; preds = %bb.d
  %i.q = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.q, ptr %i.k, align 8
  %i.r = icmp ult i32 %i.l, 5
  br i1 %i.r, label %bb.i, label %trng_rdout.exit

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 892 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, -3585
  %i.v = shl nuw nsw i32 %i.q, 9
  %i.w = or i32 %i.u, %i.v
  store i32 %i.w, ptr %i.s, align 4
  br label %trng_rdout.exit

trng_rdout.exit:                                  ; preds = %bb.h, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 816
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call i32 @g_rand_int(ptr noundef %i.y) #5
  %i.aa = and i32 %i.e, 544
  %or.cond = icmp eq i32 %i.aa, 32
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %trng_rdout.exit
  %i.ab = load i32, ptr %i.k, align 8
  %i.ac = icmp ult i32 %i.ab, 4
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @trng_regen(ptr noundef nonnull %i.c)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %trng_rdout.exit
  %i.ad = zext i32 %i.z to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g, %bb.c
  %.0 = phi i64 [ 2989, %bb.c ], [ 2989, %bb.g ], [ %i.ad, %bb.l ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @trng_reset_prew(ptr nofree noundef readonly captures(none) %0, i64 noundef returned %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 34, ptr noundef nonnull @__func__.XLNX_VERSAL_TRNG) #5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1096
  %i.e = load i32, ptr %i.d, align 8
  %.not = trunc i32 %i.e to i1
  %i.f = and i64 %1, 1
  %.not4 = icmp eq i64 %i.f, 0
  %or.cond = or i1 %.not4, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @trng_reset(ptr noundef nonnull %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i64 %1
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @trng_isr_postw(ptr nofree noundef readonly captures(none) %0, i64 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 34, ptr noundef nonnull @__func__.XLNX_VERSAL_TRNG) #5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1112
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1116
  %i.g = load i32, ptr %i.f, align 4
  %i.h = xor i32 %i.g, -1
  %i.i = and i32 %i.e, %i.h
  %i.j = icmp ne i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 808
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = zext i1 %i.j to i32
  tail call void @qemu_set_irq(ptr noundef %i.l, i32 noundef %i.m) #5
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @trng_ier_prew(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 34, ptr noundef nonnull @__func__.XLNX_VERSAL_TRNG) #5 ; 3 uses
  %i.d = trunc i64 %1 to i32
  %i.e = xor i32 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1116 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, %i.e                       ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1112
  %i.j = load i32, ptr %i.i, align 8
  %i.k = xor i32 %i.h, -1
  %i.l = and i32 %i.j, %i.k
  %i.m = icmp ne i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 808
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = zext i1 %i.m to i32
  tail call void @qemu_set_irq(ptr noundef %i.o, i32 noundef %i.p) #5
  ret i64 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @trng_idr_prew(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 34, ptr noundef nonnull @__func__.XLNX_VERSAL_TRNG) #5 ; 3 uses
  %i.d = trunc i64 %1 to i32
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1116 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = or i32 %i.f, %i.d                        ; 2 uses
  store i32 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1112
  %i.i = load i32, ptr %i.h, align 8
  %i.j = xor i32 %i.g, -1
  %i.k = and i32 %i.i, %i.j
  %i.l = icmp ne i32 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 808
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = zext i1 %i.l to i32
  tail call void @qemu_set_irq(ptr noundef %i.n, i32 noundef %i.o) #5
  ret i64 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @trng_regen(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i32], align 16              ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.m
end_hunk_0
