Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 97
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 300
begin_hunk_0_@ma_panner_process_pcm_frames:bb.a
  %i.md = zext i32 %i.mc to i64
  %i.me = mul i64 %3, %i.md                       ; 2 uses
  %.not.i7.i51 = icmp eq i64 %i.me, 0
  br i1 %.not.i7.i51, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %bb.y, %.lr.ph.i52
  %.0.i10.i53 = phi ptr [ %i.mg, %.lr.ph.i52 ], [ %1, %bb.y ] ; 2 uses
  %.011.i9.i54 = phi i64 [ %i.mf, %.lr.ph.i52 ], [ %i.me, %bb.y ] ; 2 uses
  %.012.i8.i55 = phi ptr [ %i.mh, %.lr.ph.i52 ], [ %2, %bb.y ] ; 2 uses
  %spec.store.select.i.i56 = tail call i64 @llvm.umin.i64(i64 %.011.i9.i54, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i53, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i55, i64 %spec.store.select.i.i56, i1 false)
  %i.mf = sub nuw i64 %.011.i9.i54, %spec.store.select.i.i56 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.i10.i53, i64 %spec.store.select.i.i56
  %i.mh = getelementptr inbounds nuw i8, ptr %.012.i8.i55, i64 %spec.store.select.i.i56
  %.not.i.i57 = icmp eq i64 %i.mf, 0
  br i1 %.not.i.i57, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph.i52

ma_stereo_balance_pcm_frames.exit:                ; preds = %.lr.ph.i, %.lr.ph.i20.i35, %.lr.ph.i18.i41.prol.loopexit, %.lr.ph.i18.i41, %.lr.ph43.i.i.prol.loopexit, %.lr.ph43.i.i, %.lr.ph.i.i44, %.lr.ph.i20.i, %.lr.ph.i18.i.prol.loopexit, %.lr.ph.i18.i, %.lr.ph64.i.i.prol.loopexit, %.lr.ph64.i.i, %.lr.ph66.i.i.prol.loopexit, %.lr.ph66.i.i, %.lr.ph68.i.i.prol.loopexit, %.lr.ph68.i.i, %.lr.ph.i.i, %.lr.ph.i52, %middle.block, %middle.block145, %middle.block170, %middle.block219, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.o, %bb.n, %bb.l, %bb.k, %.preheader58.i.i, %.preheader60.i.i, %.preheader.i.i, %.preheader56.i.i, %bb.f, %bb.e, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ 0, %.lr.ph.i52 ], [ 0, %middle.block219 ], [ 0, %middle.block ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %.lr.ph68.i.i.prol.loopexit ], [ 0, %.preheader56.i.i ], [ 0, %.preheader.i.i ], [ 0, %middle.block170 ], [ 0, %.lr.ph64.i.i.prol.loopexit ], [ 0, %.preheader60.i.i ], [ 0, %.preheader58.i.i ], [ 0, %.lr.ph.i18.i.prol.loopexit ], [ 0, %middle.block145 ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %.lr.ph43.i.i.prol.loopexit ], [ 0, %bb.r ], [ 0, %.lr.ph.i18.i41.prol.loopexit ], [ 0, %bb.s ], [ 0, %.lr.ph.i20.i35 ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.v ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph66.i.i.prol.loopexit ], [ 0, %.lr.ph.i20.i ], [ 0, %.lr.ph.i.i44 ], [ 0, %.lr.ph68.i.i ], [ 0, %.lr.ph66.i.i ], [ 0, %.lr.ph64.i.i ], [ 0, %.lr.ph.i18.i ], [ 0, %.lr.ph43.i.i ], [ 0, %.lr.ph.i18.i41 ], [ 0, %.lr.ph.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @ma_panner_set_mode(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.b, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @ma_panner_get_mode(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @ma_panner_set_pan(ptr nofree noundef writeonly captures(address_is_null) %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt float %1, 1.000000e+00
  %i.c = select i1 %i.b, float %1, float 1.000000e+00 ; 2 uses
  %i.d = fcmp olt float %i.c, -1.000000e+00
  %i.e = select i1 %i.d, float -1.000000e+00, float %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.e, ptr %i.f, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden float @ma_panner_get_pan(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load float, ptr %i.b, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.c, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i64, i32 } @ma_fader_config_init(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %.sroa.0.sroa.3.0.insert.ext = zext i32 %1 to i64
  %.sroa.0.sroa.3.0.insert.shift = shl nuw i64 %.sroa.0.sroa.3.0.insert.ext, 32
  %.sroa.0.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %2, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -2, 1) i32 @ma_fader_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit
  %i.c = load i32, ptr %0, align 4
  %.not = icmp eq i32 %i.c, 5
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  store <2 x float> splat (float 1.000000e+00), ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %ma_zero_memory_default.exit, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %ma_zero_memory_default.exit ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 -29, 1) i32 @ma_fader_process_pcm_frames(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread113, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8              ; 5 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = sub i64 0, %i.c
  %spec.select = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.e) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq ptr %1, %2
  %.pre126 = load i32, ptr %0, align 8            ; 3 uses
  %.pre128 = load i32, ptr %i.f, align 4          ; 3 uses
  br i1 %i.g, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = zext i32 %.pre126 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4
  %i.k = mul i32 %i.j, %.pre128
  %i.l = zext i32 %i.k to i64
  %i.m = mul i64 %spec.select, %i.l               ; 2 uses
  %.not.i7.i = icmp eq i64 %i.m, 0
  br i1 %.not.i7.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.0.i10.i = phi ptr [ %i.o, %.lr.ph.i ], [ %1, %bb.d ] ; 2 uses
  %.011.i9.i = phi i64 [ %i.n, %.lr.ph.i ], [ %i.m, %bb.d ] ; 2 uses
  %.012.i8.i = phi ptr [ %i.p, %.lr.ph.i ], [ %2, %bb.d ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i, i64 %spec.store.select.i.i, i1 false)
  %i.n = sub nuw i64 %.011.i9.i, %spec.store.select.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 %spec.store.select.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i8.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i

.loopexit.loopexit:                               ; preds = %.lr.ph.i
  %.pre = load i64, ptr %i.b, align 8
  %.pre125 = load i32, ptr %0, align 8
  %.pre127 = load i32, ptr %i.f, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d, %bb.c
  %i.q = phi i32 [ %.pre127, %.loopexit.loopexit ], [ %.pre128, %bb.d ], [ %.pre128, %bb.c ]
  %i.r = phi i32 [ %.pre125, %.loopexit.loopexit ], [ %.pre126, %bb.d ], [ %.pre126, %bb.c ]
  %i.s = phi i64 [ %.pre, %.loopexit.loopexit ], [ %i.c, %bb.d ], [ %i.c, %bb.c ]
  %i.t = add i64 %i.s, %spec.select               ; 3 uses
  store i64 %i.t, ptr %i.b, align 8
  %i.u = sub nuw i64 %3, %spec.select             ; 2 uses
  %i.v = zext i32 %i.r to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4
  %i.y = mul i32 %i.x, %i.q
  %i.z = zext i32 %i.y to i64
  %i.aa = mul i64 %spec.select, %i.z              ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.aa
  %i.ad = icmp sgt i64 %i.t, -1
  br i1 %i.ad, label %.thread, label %ma_copy_pcm_frames.exit106

.thread:                                          ; preds = %bb.b, %.loopexit
  %.083112 = phi i64 [ %i.u, %.loopexit ], [ %3, %bb.b ] ; 2 uses
  %.084111 = phi ptr [ %i.ac, %.loopexit ], [ %2, %bb.b ] ; 5 uses
  %.085110 = phi ptr [ %i.ab, %.loopexit ], [ %1, %bb.b ] ; 5 uses
  %i.ae = phi i64 [ %i.t, %.loopexit ], [ %i.c, %bb.b ] ; 4 uses
  %i.af = add i64 %i.ae, %.083112
  %i.ag = icmp ugt i64 %i.af, 4294967295
  %i.ah = sub nsw i64 4294967295, %i.ae
  %spec.select98 = select i1 %i.ag, i64 %i.ah, i64 %.083112 ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4          ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load float, ptr %i.ak, align 8          ; 3 uses
  %i.am = fcmp oeq float %i.aj, %i.al
  br i1 %i.am, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.thread
  %i.an = fcmp oeq float %i.aj, 1.000000e+00
  br i1 %i.an, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ao = icmp eq ptr %.085110, %.084111
  br i1 %i.ao, label %ma_copy_pcm_frames.exit106, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = load i32, ptr %0, align 8
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  %i.av = mul i32 %i.au, %i.aq
  %i.aw = zext i32 %i.av to i64
  %i.ax = mul i64 %spec.select98, %i.aw           ; 2 uses
  %.not.i7.i99 = icmp eq i64 %i.ax, 0
  br i1 %.not.i7.i99, label %ma_copy_pcm_frames.exit106, label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %bb.g, %.lr.ph.i100
  %.0.i10.i101 = phi ptr [ %i.az, %.lr.ph.i100 ], [ %.085110, %bb.g ] ; 2 uses
  %.011.i9.i102 = phi i64 [ %i.ay, %.lr.ph.i100 ], [ %i.ax, %bb.g ] ; 2 uses
  %.012.i8.i103 = phi ptr [ %i.ba, %.lr.ph.i100 ], [ %.084111, %bb.g ] ; 2 uses
  %spec.store.select.i.i104 = tail call i64 @llvm.umin.i64(i64 %.011.i9.i102, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i101, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i103, i64 %spec.store.select.i.i104, i1 false)
  %i.ay = sub nuw i64 %.011.i9.i102, %spec.store.select.i.i104 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i10.i101, i64 %spec.store.select.i.i104
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i8.i103, i64 %spec.store.select.i.i104
  %.not.i.i105 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i105, label %ma_copy_pcm_frames.exit106, label %.lr.ph.i100

bb.h:                                             ; preds = %bb.e
  %i.bb = load i32, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bd = load i32, ptr %i.bc, align 4
  tail call void @ma_copy_and_apply_volume_and_clip_pcm_frames(ptr noundef %.085110, ptr noundef %.084111, i64 noundef %spec.select98, i32 noundef %i.bb, i32 noundef %i.bd, float noundef %i.aj)
  br label %ma_copy_pcm_frames.exit106

bb.i:                                             ; preds = %.thread
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %.not = icmp ult i64 %i.ae, %i.bf
  %i.bg = load i32, ptr %0, align 8               ; 2 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bi = load i32, ptr %i.bh, align 4
  tail call void @ma_copy_and_apply_volume_and_clip_pcm_frames(ptr noundef %.085110, ptr noundef %.084111, i64 noundef %spec.select98, i32 noundef %i.bg, i32 noundef %i.bi, float noundef %i.al)
  br label %ma_copy_pcm_frames.exit106

bb.k:                                             ; preds = %bb.i
  %.not114 = icmp eq i32 %i.bg, 5
  br i1 %.not114, label %.preheader, label %.thread113

.preheader:                                       ; preds = %bb.k
  %.not119 = icmp eq i64 %spec.select98, 0
  br i1 %.not119, label %ma_copy_pcm_frames.exit106, label %.lr.ph118

.lr.ph118:                                        ; preds = %.preheader
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4            ; 2 uses
  %.not120 = icmp eq i32 %i.bk, 0
  br i1 %.not120, label %ma_copy_pcm_frames.exit106, label %.lr.ph118.split

.lr.ph118.split:                                  ; preds = %.lr.ph118, %._crit_edge
  %i.bl = phi i32 [ %i.cf, %._crit_edge ], [ %i.bk, %.lr.ph118 ] ; 2 uses
  %4 = phi float [ %8, %._crit_edge ], [ %i.al, %.lr.ph118 ] ; 2 uses
  %5 = phi float [ %9, %._crit_edge ], [ %i.aj, %.lr.ph118 ] ; 3 uses
  %.081117.a = phi i64 [ %10, %._crit_edge ], [ %i.bf, %.lr.ph118 ] ; 3 uses
  %6 = phi i64 [ %11, %._crit_edge ], [ %i.ae, %.lr.ph118 ] ; 2 uses
  %.081117 = phi i64 [ %i.cg, %._crit_edge ], [ 0, %.lr.ph118 ] ; 3 uses
  %7 = add i64 %6, %.081117
  %. = tail call i64 @llvm.umin.i64(i64 %7, i64 %.081117.a)
  %i.bm = trunc i64 %. to i32
  %i.bn = uitofp i32 %i.bm to float
  %i.bo = trunc i64 %.081117.a to i32
  %i.bp = uitofp i32 %i.bo to float
  %i.bq = fdiv float %i.bn, %i.bp
  %i.br = fsub float %4, %5
  %i.bs = fmul float %i.br, %i.bq
  %i.bt = fadd float %5, %i.bs
  %.not121 = icmp eq i32 %i.bl, 0
  br i1 %.not121, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph118.split, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph118.split ] ; 2 uses
  %i.bu = phi i32 [ %i.cc, %.lr.ph ], [ %i.bl, %.lr.ph118.split ]
  %i.bv = zext i32 %i.bu to i64
  %i.bw = mul i64 %.081117, %i.bv
  %i.bx = add i64 %i.bw, %indvars.iv              ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.084111, i64 %i.bx
  %i.bz = load float, ptr %i.by, align 4
  %i.ca = fmul float %i.bt, %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.085110, i64 %i.bx
  store float %i.ca, ptr %i.cb, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = load i32, ptr %i.bj, align 4            ; 3 uses
  %i.cd = zext i32 %i.cc to i64
  %i.ce = icmp samesign ult i64 %indvars.iv.next, %i.cd
  br i1 %i.ce, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre129 = load i64, ptr %i.b, align 8
  %.pre131 = load i64, ptr %i.be, align 8
  %.pre133 = load float, ptr %i.ai, align 4
  %.pre135 = load float, ptr %i.ak, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph118.split
  %i.cf = phi i32 [ %i.cc, %._crit_edge.loopexit ], [ 0, %.lr.ph118.split ]
  %8 = phi float [ %.pre135, %._crit_edge.loopexit ], [ %4, %.lr.ph118.split ]
  %9 = phi float [ %.pre133, %._crit_edge.loopexit ], [ %5, %.lr.ph118.split ]
  %10 = phi i64 [ %.pre131, %._crit_edge.loopexit ], [ %.081117.a, %.lr.ph118.split ]
  %11 = phi i64 [ %.pre129, %._crit_edge.loopexit ], [ %6, %.lr.ph118.split ]
  %i.cg = add nuw i64 %.081117, 1                 ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %spec.select98
  br i1 %i.ch, label %.lr.ph118.split, label %ma_copy_pcm_frames.exit106, !llvm.loop !656

ma_copy_pcm_frames.exit106:                       ; preds = %._crit_edge, %.lr.ph.i100, %.lr.ph118, %.preheader, %bb.g, %bb.f, %bb.h, %bb.j, %.loopexit
  %.2 = phi i64 [ %i.u, %.loopexit ], [ %spec.select98, %bb.h ], [ %spec.select98, %bb.j ], [ 0, %.preheader ], [ %spec.select98, %bb.f ], [ %spec.select98, %bb.g ], [ %spec.select98, %.lr.ph118 ], [ %spec.select98, %.lr.ph.i100 ], [ %spec.select98, %._crit_edge ]
  %i.ci = load i64, ptr %i.b, align 8
  %i.cj = add i64 %i.ci, %.2
  store i64 %i.cj, ptr %i.b, align 8
  br label %.thread113

.thread113:                                       ; preds = %bb.k, %bb.a, %ma_copy_pcm_frames.exit106
  %.187 = phi i32 [ -29, %bb.k ], [ 0, %ma_copy_pcm_frames.exit106 ], [ -2, %bb.a ]
  ret i32 %.187
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @ma_fader_get_data_format(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr %0, align 8
  store i32 %i.b, ptr %1, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not13 = icmp eq ptr %2, null
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  store i32 %i.d, ptr %2, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not14 = icmp eq ptr %3, null
  br i1 %.not14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8
  store i32 %i.f, ptr %3, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @ma_fader_set_fade(ptr nofree noundef captures(address_is_null) %0, float noundef %1, float noundef %2, i64 noundef %3) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_fader_set_fade_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt float %1, 0.000000e+00
  br i1 %i.b, label %bb.c, label %ma_fader_get_current_volume.exit.i

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %ma_fader_get_current_volume.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load float, ptr %i.g, align 4
  br label %ma_fader_get_current_volume.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.not.i.i = icmp ult i64 %i.d, %i.j
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load float, ptr %i.k, align 8
  br label %ma_fader_get_current_volume.exit.i

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load float, ptr %i.m, align 4            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load float, ptr %i.o, align 8
  %i.q = trunc i64 %i.d to i32
  %i.r = uitofp i32 %i.q to float
  %i.s = trunc i64 %i.j to i32
  %i.t = uitofp i32 %i.s to float
  %i.u = fdiv float %i.r, %i.t
  %i.v = fsub float %i.p, %i.n
  %i.w = fmul float %i.u, %i.v
  %i.x = fadd float %i.n, %i.w
  br label %ma_fader_get_current_volume.exit.i

ma_fader_get_current_volume.exit.i:               ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.b
  %.0.i = phi float [ %1, %bb.b ], [ %i.x, %bb.h ], [ 1.000000e+00, %bb.c ], [ %i.h, %bb.e ], [ %i.l, %bb.g ]
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %3, i64 4294967295)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %.0.i, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %2, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %spec.store.select.i, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ab, align 8
  br label %ma_fader_set_fade_ex.exit

ma_fader_set_fade_ex.exit:                        ; preds = %bb.a, %ma_fader_get_current_volume.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @ma_fader_set_fade_ex(ptr nofree noundef captures(address_is_null) %0, float noundef %1, float noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt float %1, 0.000000e+00
  br i1 %i.b, label %bb.c, label %ma_fader_get_current_volume.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %ma_fader_get_current_volume.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load float, ptr %i.g, align 4
  br label %ma_fader_get_current_volume.exit

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.not.i = icmp ult i64 %i.d, %i.j
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load float, ptr %i.k, align 8
  br label %ma_fader_get_current_volume.exit

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load float, ptr %i.m, align 4            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load float, ptr %i.o, align 8
  %i.q = trunc i64 %i.d to i32
  %i.r = uitofp i32 %i.q to float
  %i.s = trunc i64 %i.j to i32
  %i.t = uitofp i32 %i.s to float
  %i.u = fdiv float %i.r, %i.t
  %i.v = fsub float %i.p, %i.n
  %i.w = fmul float %i.u, %i.v
  %i.x = fadd float %i.n, %i.w
  br label %ma_fader_get_current_volume.exit

ma_fader_get_current_volume.exit:                 ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.b
  %.0 = phi float [ %1, %bb.b ], [ %i.x, %bb.h ], [ 1.000000e+00, %bb.c ], [ %i.h, %bb.e ], [ %i.l, %bb.g ]
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %3, i64 4294967295)
  %spec.store.select1 = tail call i64 @llvm.smin.i64(i64 %4, i64 2147483647)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %.0, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %2, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %spec.store.select, ptr %i.aa, align 8
  %i.ab = sub nsw i64 0, %spec.store.select1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ab, ptr %i.ac, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %ma_fader_get_current_volume.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden float @ma_fader_get_current_volume(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_0
begin_hunk_1_@ma_data_source_get_loop_point_in_pcm_frames:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8
  store i64 %i.c, ptr %1, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %.not15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %2, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden range(i32 -2, 1) i32 @ma_data_source_set_current(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @ma_data_source_get_current(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden range(i32 -2, 1) i32 @ma_data_source_set_next(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @ma_data_source_get_next(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden range(i32 -2, 1) i32 @ma_data_source_set_next_callback(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @ma_data_source_get_next_callback(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden range(i32 -2, 1) i32 @ma_audio_buffer_ref_init(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr @g_ma_audio_buffer_ref_data_source_vtable, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %4, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 %0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 76
  store i32 %1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr %2, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @ma_audio_buffer_ref_uninit(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden range(i32 -2, 1) i32 @ma_audio_buffer_ref_set_data(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %1, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @ma_audio_buffer_ref_read_pcm_frames(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #23 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %.not = icmp eq ptr %1, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %.not42 = icmp eq i32 %3, 0                     ; 2 uses
  %i.h = load i64, ptr %i.c, align 8              ; 6 uses
  %.promoted = load i64, ptr %i.d, align 8        ; 4 uses
  br i1 %.not, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  br i1 %.not42, label %ma_copy_pcm_frames.exit.us.us, label %ma_copy_pcm_frames.exit.us

ma_copy_pcm_frames.exit.us.us:                    ; preds = %.preheader.split.us, %ma_copy_pcm_frames.exit.us.us
  %i.i = phi i64 [ %i.m, %ma_copy_pcm_frames.exit.us.us ], [ %.promoted, %.preheader.split.us ] ; 2 uses
  %.03545.us.us = phi i64 [ %i.l, %ma_copy_pcm_frames.exit.us.us ], [ 0, %.preheader.split.us ] ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = sub nuw i64 %2, %.03545.us.us
  %spec.select.us.us = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.j) ; 2 uses
  %i.l = add i64 %spec.select.us.us, %.03545.us.us ; 3 uses
  %i.m = add i64 %i.i, %spec.select.us.us         ; 3 uses
  %i.n = icmp ne i64 %i.m, %i.h
  %i.o = icmp ult i64 %i.l, %2
  %or.cond59 = and i1 %i.n, %i.o
  br i1 %or.cond59, label %ma_copy_pcm_frames.exit.us.us, label %.thread.loopexit.split.us

ma_copy_pcm_frames.exit.us:                       ; preds = %.preheader.split.us, %ma_copy_pcm_frames.exit.us
  %i.p = phi i64 [ %spec.select58, %ma_copy_pcm_frames.exit.us ], [ %.promoted, %.preheader.split.us ] ; 2 uses
  %.03545.us = phi i64 [ %i.s, %ma_copy_pcm_frames.exit.us ], [ 0, %.preheader.split.us ] ; 2 uses
  %i.q = sub i64 %i.h, %i.p
  %i.r = sub nuw i64 %2, %.03545.us
  %spec.select.us = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.q) ; 2 uses
  %i.s = add i64 %spec.select.us, %.03545.us      ; 3 uses
  %i.t = add i64 %i.p, %spec.select.us            ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.h
  %spec.select58 = select i1 %i.u, i64 0, i64 %i.t ; 2 uses
  %i.v = icmp ult i64 %i.s, %2
  br i1 %i.v, label %ma_copy_pcm_frames.exit.us, label %.thread.loopexit.split.us

.thread.loopexit.split.us:                        ; preds = %ma_copy_pcm_frames.exit.us, %ma_copy_pcm_frames.exit.us.us
  %.us-phi52 = phi i64 [ %i.m, %ma_copy_pcm_frames.exit.us.us ], [ %spec.select58, %ma_copy_pcm_frames.exit.us ]
  %.us-phi53 = phi i64 [ %i.l, %ma_copy_pcm_frames.exit.us.us ], [ %i.s, %ma_copy_pcm_frames.exit.us ]
  store i64 %.us-phi52, ptr %i.d, align 8
  br label %.thread

.preheader.split:                                 ; preds = %.preheader
  %.pre79 = load i32, ptr %i.e, align 8           ; 2 uses
  %.pre81 = load i32, ptr %i.f, align 4           ; 2 uses
  %.pre83 = load ptr, ptr %i.g, align 8           ; 2 uses
  br i1 %.not42, label %.preheader.split.split.us, label %.preheader.split.split

.preheader.split.split.us:                        ; preds = %.preheader.split, %ma_copy_pcm_frames.exit.us48
  %i.w = phi i64 [ %i.ao, %ma_copy_pcm_frames.exit.us48 ], [ %i.h, %.preheader.split ] ; 2 uses
  %4 = phi ptr [ %7, %ma_copy_pcm_frames.exit.us48 ], [ %.pre83, %.preheader.split ] ; 2 uses
  %5 = phi i32 [ %8, %ma_copy_pcm_frames.exit.us48 ], [ %.pre81, %.preheader.split ] ; 2 uses
  %6 = phi i32 [ %9, %ma_copy_pcm_frames.exit.us48 ], [ %.pre79, %.preheader.split ] ; 2 uses
  %i.x = phi i64 [ %i.ar, %ma_copy_pcm_frames.exit.us48 ], [ %.promoted, %.preheader.split ] ; 3 uses
  %.03545.us46 = phi i64 [ %i.aq, %ma_copy_pcm_frames.exit.us48 ], [ 0, %.preheader.split ] ; 3 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = sub nuw i64 %2, %.03545.us46
  %spec.select.us47 = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.y) ; 3 uses
  %i.aa = zext i32 %6 to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = mul i32 %i.ac, %5
  %i.ae = zext i32 %i.ad to i64                   ; 3 uses
  %i.af = mul i64 %.03545.us46, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af ; 2 uses
  %i.ah = mul i64 %i.x, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 %i.ah ; 2 uses
  %i.aj = icmp eq ptr %i.ag, %i.ai
  %i.ak = mul i64 %spec.select.us47, %i.ae        ; 2 uses
  %.not.i7.i.us = icmp eq i64 %i.ak, 0
  %or.cond44.us = select i1 %i.aj, i1 true, i1 %.not.i7.i.us
  br i1 %or.cond44.us, label %ma_copy_pcm_frames.exit.us48, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.preheader.split.split.us, %.lr.ph.i.us
  %.0.i10.i.us = phi ptr [ %i.am, %.lr.ph.i.us ], [ %i.ag, %.preheader.split.split.us ] ; 2 uses
  %.011.i9.i.us = phi i64 [ %i.al, %.lr.ph.i.us ], [ %i.ak, %.preheader.split.split.us ] ; 2 uses
  %.012.i8.i.us = phi ptr [ %i.an, %.lr.ph.i.us ], [ %i.ai, %.preheader.split.split.us ] ; 2 uses
  %spec.store.select.i.i.us = tail call i64 @llvm.umin.i64(i64 %.011.i9.i.us, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i.us, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i.us, i64 %spec.store.select.i.i.us, i1 false)
  %i.al = sub nuw i64 %.011.i9.i.us, %spec.store.select.i.i.us ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i10.i.us, i64 %spec.store.select.i.i.us
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i8.i.us, i64 %spec.store.select.i.i.us
  %.not.i.i.us = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.us, label %ma_copy_pcm_frames.exit.us48.loopexit, label %.lr.ph.i.us

ma_copy_pcm_frames.exit.us48.loopexit:            ; preds = %.lr.ph.i.us
  %.pre78 = load i32, ptr %i.e, align 8
  %.pre80 = load i32, ptr %i.f, align 4
  %.pre82 = load ptr, ptr %i.g, align 8
  %.pre72.a = load i64, ptr %i.d, align 8
  %.pre73 = load i64, ptr %i.c, align 8
  br label %ma_copy_pcm_frames.exit.us48

ma_copy_pcm_frames.exit.us48:                     ; preds = %ma_copy_pcm_frames.exit.us48.loopexit, %.preheader.split.split.us
  %i.ao = phi i64 [ %.pre73, %ma_copy_pcm_frames.exit.us48.loopexit ], [ %i.w, %.preheader.split.split.us ] ; 2 uses
  %i.ap = phi i64 [ %.pre72.a, %ma_copy_pcm_frames.exit.us48.loopexit ], [ %i.x, %.preheader.split.split.us ]
  %7 = phi ptr [ %.pre82, %ma_copy_pcm_frames.exit.us48.loopexit ], [ %4, %.preheader.split.split.us ]
  %8 = phi i32 [ %.pre80, %ma_copy_pcm_frames.exit.us48.loopexit ], [ %5, %.preheader.split.split.us ]
  %9 = phi i32 [ %.pre78, %ma_copy_pcm_frames.exit.us48.loopexit ], [ %6, %.preheader.split.split.us ]
  %i.aq = add i64 %spec.select.us47, %.03545.us46 ; 3 uses
  %i.ar = add i64 %i.ap, %spec.select.us47        ; 3 uses
  store i64 %i.ar, ptr %i.d, align 8
  %i.as = icmp ne i64 %i.ar, %i.ao
  %i.at = icmp ult i64 %i.aq, %2
  %or.cond60 = and i1 %i.as, %i.at
  br i1 %or.cond60, label %.preheader.split.split.us, label %.thread

.preheader.split.split:                           ; preds = %.preheader.split, %ma_copy_pcm_frames.exit
  %i.au = phi i64 [ %i.bm, %ma_copy_pcm_frames.exit ], [ %i.h, %.preheader.split ] ; 2 uses
  %10 = phi ptr [ %13, %ma_copy_pcm_frames.exit ], [ %.pre83, %.preheader.split ] ; 2 uses
  %11 = phi i32 [ %14, %ma_copy_pcm_frames.exit ], [ %.pre81, %.preheader.split ] ; 2 uses
  %12 = phi i32 [ %15, %ma_copy_pcm_frames.exit ], [ %.pre79, %.preheader.split ] ; 2 uses
  %i.av = phi i64 [ %spec.store.select, %ma_copy_pcm_frames.exit ], [ %.promoted, %.preheader.split ] ; 3 uses
  %.03545 = phi i64 [ %i.bo, %ma_copy_pcm_frames.exit ], [ 0, %.preheader.split ] ; 3 uses
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sub nuw i64 %2, %.03545
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.aw) ; 3 uses
  %i.ay = zext i32 %12 to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = mul i32 %i.ba, %11
  %i.bc = zext i32 %i.bb to i64                   ; 3 uses
  %i.bd = mul i64 %.03545, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %i.bd ; 2 uses
  %i.bf = mul i64 %i.av, %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 %i.bf ; 2 uses
  %i.bh = icmp eq ptr %i.be, %i.bg
  %i.bi = mul i64 %spec.select, %i.bc             ; 2 uses
  %.not.i7.i = icmp eq i64 %i.bi, 0
  %or.cond44 = select i1 %i.bh, i1 true, i1 %.not.i7.i
  br i1 %or.cond44, label %ma_copy_pcm_frames.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.split.split, %.lr.ph.i
  %.0.i10.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %i.be, %.preheader.split.split ] ; 2 uses
  %.011.i9.i = phi i64 [ %i.bj, %.lr.ph.i ], [ %i.bi, %.preheader.split.split ] ; 2 uses
  %.012.i8.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %i.bg, %.preheader.split.split ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i, i64 %spec.store.select.i.i, i1 false)
  %i.bj = sub nuw i64 %.011.i9.i, %spec.store.select.i.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 %spec.store.select.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i8.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i, label %ma_copy_pcm_frames.exit.loopexit, label %.lr.ph.i

ma_copy_pcm_frames.exit.loopexit:                 ; preds = %.lr.ph.i
  %.pre68 = load i32, ptr %i.e, align 8
  %.pre70 = load i32, ptr %i.f, align 4
  %.pre72 = load ptr, ptr %i.g, align 8
  %.pre68.a = load i64, ptr %i.d, align 8
  %.pre69 = load i64, ptr %i.c, align 8
  br label %ma_copy_pcm_frames.exit

ma_copy_pcm_frames.exit:                          ; preds = %ma_copy_pcm_frames.exit.loopexit, %.preheader.split.split
  %i.bm = phi i64 [ %.pre69, %ma_copy_pcm_frames.exit.loopexit ], [ %i.au, %.preheader.split.split ] ; 2 uses
  %i.bn = phi i64 [ %.pre68.a, %ma_copy_pcm_frames.exit.loopexit ], [ %i.av, %.preheader.split.split ]
  %13 = phi ptr [ %.pre72, %ma_copy_pcm_frames.exit.loopexit ], [ %10, %.preheader.split.split ]
  %14 = phi i32 [ %.pre70, %ma_copy_pcm_frames.exit.loopexit ], [ %11, %.preheader.split.split ]
  %15 = phi i32 [ %.pre68, %ma_copy_pcm_frames.exit.loopexit ], [ %12, %.preheader.split.split ]
  %i.bo = add i64 %spec.select, %.03545           ; 3 uses
  %i.bp = add i64 %i.bn, %spec.select             ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %i.bm
  %spec.store.select = select i1 %i.bq, i64 0, i64 %i.bp ; 2 uses
  store i64 %spec.store.select, ptr %i.d, align 8
  %i.br = icmp ult i64 %i.bo, %2
  br i1 %i.br, label %.preheader.split.split, label %.thread

.thread:                                          ; preds = %ma_copy_pcm_frames.exit, %ma_copy_pcm_frames.exit.us48, %.thread.loopexit.split.us, %bb.a
  %.036 = phi i64 [ 0, %bb.a ], [ %.us-phi53, %.thread.loopexit.split.us ], [ %i.aq, %ma_copy_pcm_frames.exit.us48 ], [ %i.bo, %ma_copy_pcm_frames.exit ]
  ret i64 %.036
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -2, 1) i32 @ma_audio_buffer_ref_seek_to_pcm_frame(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %1, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -2, 1) i32 @ma_audio_buffer_ref_map(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not30 = icmp eq ptr %2, null
  br i1 %.not30, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = load i64, ptr %2, align 8
  store i64 0, ptr %2, align 8
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = load i32, ptr %i.l, align 4
  %i.n = zext i32 %i.k to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4
  %i.q = mul i32 %i.p, %i.m
  %i.r = zext i32 %i.q to i64
  %i.s = mul i64 %i.f, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  store ptr %i.t, ptr %1, align 8
  store i64 %spec.select, ptr %2, align 8
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e
  %.023 = phi i32 [ 0, %bb.e ], [ -2, %bb.d ], [ -2, %bb.c ]
  ret i32 %.023
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -17, 1) i32 @ma_audio_buffer_ref_unmap(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %i.e, %1                         ; 2 uses
  store i64 %i.h, ptr %i.d, align 8
  %i.i = icmp eq i64 %i.h, %i.c
  %. = select i1 %i.i, i32 -17, i32 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -2, %bb.b ], [ -2, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @ma_audio_buffer_ref_at_end(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.c, %i.e
  %i.g = zext i1 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -2, 1) i32 @ma_audio_buffer_ref_get_cursor_in_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  store i64 %i.d, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -2, 1) i32 @ma_audio_buffer_ref_get_length_in_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8
  store i64 %i.d, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -2, 1) i32 @ma_audio_buffer_ref_get_available_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8
  %storemerge = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 %i.f)
  store i64 %storemerge, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}
end_hunk_1
begin_hunk_2_@drmp3d_synth_granule:bb.a
  %i.nc = fadd <4 x float> %i.li, %i.lg           ; 2 uses
  %i.nd = shufflevector <4 x float> %i.gn, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nd, ptr %i.ch, align 1
  %i.ne = fadd <4 x float> %i.jr, %i.nc
  %i.nf = shufflevector <4 x float> %i.ne, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nf, ptr %i.db, align 1
  %i.ng = fadd <4 x float> %i.ie, %i.ic
  %i.nh = shufflevector <4 x float> %i.ng, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nh, ptr %i.dv, align 1
  %i.ni = fadd <4 x float> %i.jt, %i.nc
  %i.nj = shufflevector <4 x float> %i.ni, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nj, ptr %i.ep, align 1
  %i.nk = fadd <4 x float> %i.li, %i.lk           ; 2 uses
  %i.nl = shufflevector <4 x float> %i.gp, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nl, ptr %i.er, align 1
  %i.nm = fadd <4 x float> %i.jt, %i.nk
  %i.nn = shufflevector <4 x float> %i.nm, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nn, ptr %i.dx, align 1
  %i.no = fadd <4 x float> %i.ie, %i.ig
  %i.np = shufflevector <4 x float> %i.no, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.np, ptr %i.dd, align 1
  %i.nq = fadd <4 x float> %i.jv, %i.nk
  %i.nr = shufflevector <4 x float> %i.nq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nr, ptr %i.cj, align 1
  %i.ns = fadd <4 x float> %i.kq, %i.lk           ; 2 uses
  %i.nt = shufflevector <4 x float> %i.gr, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nt, ptr %i.bp, align 1
  %i.nu = fadd <4 x float> %i.jv, %i.ns
  %i.nv = shufflevector <4 x float> %i.nu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nv, ptr %i.av, align 1
  %i.nw = fadd <4 x float> %i.hm, %i.ig
  %i.nx = shufflevector <4 x float> %i.nw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nx, ptr %i.ab, align 1
  %i.ny = fadd <4 x float> %i.jb, %i.ns
  %i.nz = shufflevector <4 x float> %i.ny, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nz, ptr %i.h, align 1
  %i.oa = fadd <4 x float> %i.kq, %i.lm           ; 2 uses
  %i.ob = shufflevector <4 x float> %i.fx, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ob, ptr %i.j, align 1
  %i.oc = fadd <4 x float> %i.jb, %i.oa
  %i.od = shufflevector <4 x float> %i.oc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.od, ptr %i.ad, align 1
  %i.oe = fadd <4 x float> %i.hm, %i.ii
  %i.of = shufflevector <4 x float> %i.oe, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.of, ptr %i.ax, align 1
  %i.og = fadd <4 x float> %i.jx, %i.oa
  %i.oh = shufflevector <4 x float> %i.og, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.oh, ptr %i.br, align 1
  %i.oi = fadd <4 x float> %i.lo, %i.lm           ; 2 uses
  %i.oj = shufflevector <4 x float> %i.gt, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.oj, ptr %i.cl, align 1
  %i.ok = fadd <4 x float> %i.jx, %i.oi
  %i.ol = shufflevector <4 x float> %i.ok, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ol, ptr %i.df, align 1
  %i.om = fadd <4 x float> %i.ik, %i.ii
  %i.on = shufflevector <4 x float> %i.om, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.on, ptr %i.dz, align 1
  %i.oo = fadd <4 x float> %i.jz, %i.oi
  %i.op = shufflevector <4 x float> %i.oo, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.op, ptr %i.et, align 1
  %i.oq = fadd <4 x float> %i.lo, %i.lq           ; 2 uses
  %i.or = shufflevector <4 x float> %i.gv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.or, ptr %i.ev, align 1
  %i.os = fadd <4 x float> %i.jz, %i.oq
  %i.ot = shufflevector <4 x float> %i.os, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ot, ptr %i.eb, align 1
  %i.ou = fadd <4 x float> %i.ik, %i.im
  %i.ov = shufflevector <4 x float> %i.ou, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ov, ptr %i.dh, align 1
  %i.ow = fadd <4 x float> %i.kb, %i.oq
  %i.ox = shufflevector <4 x float> %i.ow, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ox, ptr %i.cn, align 1
  %i.oy = shufflevector <4 x float> %i.gx, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.oy, ptr %i.bt, align 1
  %i.oz = fadd <4 x float> %i.kb, %i.lq
  %i.pa = shufflevector <4 x float> %i.oz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.pa, ptr %i.az, align 1
  %i.pb = shufflevector <4 x float> %i.im, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.pb, ptr %i.af, align 1
  %i.pc = shufflevector <4 x float> %i.lq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.pc, ptr %i.l, align 1
  br label %bb.c

bb.c:                                             ; preds = %.preheader.preheader.i, %.preheader164.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.pd = icmp samesign ult i64 %indvars.iv.next.i, %i.d
  br i1 %i.pd, label %.preheader165.preheader.i, label %drmp3d_DCT_II.exit

drmp3d_DCT_II.exit:                               ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %drmp3d_DCT_II.exit, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3840) %5, ptr noundef nonnull align 4 dereferenceable(3840) %0, i64 3840, i1 false)
  %i.pe = shl nsw i32 %3, 5
  %i.pf = add nsw i32 %3, -1                      ; 2 uses
  %i.pg = mul nsw i32 %i.pf, 576
  %i.ph = sext i32 %i.pg to i64
  %i.pi = sext i32 %i.pf to i64
  %i.pj = sext i32 %i.pe to i64                   ; 3 uses
  %i.pk = sext i32 %3 to i64                      ; 4 uses
  %i.pl = zext nneg i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %drmp3d_synth.exit
  %indvars.iv37 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next38, %drmp3d_synth.exit ] ; 4 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv37 ; 9 uses
  %i.pn = mul nsw i64 %indvars.iv37, %i.pj
  %i.po = getelementptr inbounds [2 x i8], ptr %4, i64 %i.pn ; 7 uses
  %.idx43 = shl nuw nsw i64 %indvars.iv37, 8
  %i.pp = getelementptr inbounds nuw i8, ptr %5, i64 %.idx43 ; 13 uses
  %i.pq = getelementptr inbounds [4 x i8], ptr %i.pm, i64 %i.ph ; 8 uses
  %i.pr = getelementptr inbounds [2 x i8], ptr %i.po, i64 %i.pi ; 6 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 3840
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pm, i64 1152
  %i.pu = load float, ptr %i.pt, align 4
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pp, i64 4080
  store float %i.pu, ptr %i.pv, align 4
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pq, i64 1152
  %i.px = load float, ptr %i.pw, align 4
  %i.py = getelementptr inbounds nuw i8, ptr %i.pp, i64 4084
  store float %i.px, ptr %i.py, align 4
  %i.pz = load float, ptr %i.pm, align 4
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pp, i64 4088
  store float %i.pz, ptr %i.qa, align 4
  %i.qb = load float, ptr %i.pq, align 4
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pp, i64 4092
  store float %i.qb, ptr %i.qc, align 4
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pm, i64 1156
  %i.qe = load float, ptr %i.qd, align 4
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pp, i64 4336
  store float %i.qe, ptr %i.qf, align 4
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pq, i64 1156
  %i.qh = load float, ptr %i.qg, align 4
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pp, i64 4340
  store float %i.qh, ptr %i.qi, align 4
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %i.qk = load float, ptr %i.qj, align 4
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pp, i64 4344
  store float %i.qk, ptr %i.ql, align 4
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  %i.qn = load float, ptr %i.qm, align 4
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pp, i64 4348
  store float %i.qn, ptr %i.qo, align 4
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pp, i64 240
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pp, i64 244
  tail call fastcc void @drmp3d_synth_pair(ptr noundef %i.pr, i32 noundef %3, ptr noundef nonnull %i.qq)
  %i.qr = getelementptr inbounds [2 x i8], ptr %i.pr, i64 %i.pj
  %i.qs = getelementptr inbounds nuw i8, ptr %i.pp, i64 496
  %i.qt = getelementptr inbounds nuw i8, ptr %i.pp, i64 500
  tail call fastcc void @drmp3d_synth_pair(ptr noundef %i.qr, i32 noundef %3, ptr noundef nonnull %i.qt)
  tail call fastcc void @drmp3d_synth_pair(ptr noundef nonnull %i.po, i32 noundef %3, ptr noundef nonnull %i.qp)
  %i.qu = getelementptr inbounds [2 x i8], ptr %i.po, i64 %i.pj
  tail call fastcc void @drmp3d_synth_pair(ptr noundef %i.qu, i32 noundef %3, ptr noundef nonnull %i.qs)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i31 = phi i64 [ 14, %bb.d ], [ %indvars.iv.next.i32, %bb.e ] ; 9 uses
  %.0228229.i = phi ptr [ @drmp3d_synth.g_win, %bb.d ], [ %i.xk, %bb.e ] ; 17 uses
  %i.qv = sub nuw nsw i64 31, %indvars.iv.i31
  %i.qw = mul nuw nsw i64 %i.qv, 18               ; 3 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.qw
  %i.qy = load float, ptr %i.qx, align 4
  %.idx.i = shl nuw nsw i64 %indvars.iv.i31, 4
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ps, i64 %.idx.i ; 24 uses
  store float %i.qy, ptr %i.qz, align 4
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.qw
  %i.rb = load float, ptr %i.ra, align 4
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  store float %i.rb, ptr %i.rc, align 4
  %i.rd = or disjoint i64 %i.qw, 1                ; 2 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.rd
  %i.rf = load float, ptr %i.re, align 4
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  store float %i.rf, ptr %i.rg, align 4
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.rd
  %i.ri = load float, ptr %i.rh, align 4
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qz, i64 12
  store float %i.ri, ptr %i.rj, align 4
  %i.rk = mul nuw nsw i64 %indvars.iv.i31, 18     ; 2 uses
  %i.rl = add nuw nsw i64 %i.rk, 18               ; 2 uses
  %i.rm = add nuw nsw i64 %i.rk, 19               ; 2 uses
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.rm
  %i.ro = load float, ptr %i.rn, align 4
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qz, i64 256
  store float %i.ro, ptr %i.rp, align 4
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.rm
  %i.rr = load float, ptr %i.rq, align 4
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qz, i64 260
  store float %i.rr, ptr %i.rs, align 4
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.rl
  %i.ru = load float, ptr %i.rt, align 4
  %i.rv = getelementptr i8, ptr %i.qz, i64 -248
  store float %i.ru, ptr %i.rv, align 4
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.rl
  %i.rx = load float, ptr %i.rw, align 4
  %i.ry = getelementptr i8, ptr %i.qz, i64 -244
  store float %i.rx, ptr %i.ry, align 4
  %i.rz = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 4
  %i.sa = load float, ptr %.0228229.i, align 16
  %i.sb = insertelement <4 x float> poison, float %i.sa, i64 0
  %i.sc = shufflevector <4 x float> %i.sb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 8
  %i.se = load float, ptr %i.rz, align 4
  %i.sf = insertelement <4 x float> poison, float %i.se, i64 0
  %i.sg = shufflevector <4 x float> %i.sf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sh = load <4 x float>, ptr %i.qz, align 4    ; 2 uses
  %i.si = getelementptr i8, ptr %i.qz, i64 -3840
  %i.sj = load <4 x float>, ptr %i.si, align 4    ; 2 uses
  %i.sk = fmul <4 x float> %i.sh, %i.sg
  %i.sl = fmul <4 x float> %i.sc, %i.sj
  %i.sm = fadd <4 x float> %i.sk, %i.sl
  %i.sn = fmul <4 x float> %i.sh, %i.sc
  %i.so = fmul <4 x float> %i.sj, %i.sg
  %i.sp = fsub <4 x float> %i.sn, %i.so
  %i.sq = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 12
  %i.sr = load float, ptr %i.sd, align 8
  %i.ss = insertelement <4 x float> poison, float %i.sr, i64 0
  %i.st = shufflevector <4 x float> %i.ss, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 16
  %i.sv = load float, ptr %i.sq, align 4
  %i.sw = insertelement <4 x float> poison, float %i.sv, i64 0
  %i.sx = shufflevector <4 x float> %i.sw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sy = getelementptr i8, ptr %i.qz, i64 -256
  %i.sz = load <4 x float>, ptr %i.sy, align 4    ; 2 uses
  %i.ta = getelementptr i8, ptr %i.qz, i64 -3584
  %i.tb = load <4 x float>, ptr %i.ta, align 4    ; 2 uses
  %i.tc = fmul <4 x float> %i.sz, %i.sx
  %i.td = fmul <4 x float> %i.st, %i.tb
  %i.te = fadd <4 x float> %i.tc, %i.td
  %i.tf = fadd <4 x float> %i.sm, %i.te
  %i.tg = fmul <4 x float> %i.tb, %i.sx
  %i.th = fmul <4 x float> %i.sz, %i.st
  %i.ti = fsub <4 x float> %i.tg, %i.th
  %i.tj = fadd <4 x float> %i.sp, %i.ti
  %i.tk = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 20
  %i.tl = load float, ptr %i.su, align 16
  %i.tm = insertelement <4 x float> poison, float %i.tl, i64 0
  %i.tn = shufflevector <4 x float> %i.tm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 24
  %i.tp = load float, ptr %i.tk, align 4
  %i.tq = insertelement <4 x float> poison, float %i.tp, i64 0
  %i.tr = shufflevector <4 x float> %i.tq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ts = getelementptr i8, ptr %i.qz, i64 -512
  %i.tt = load <4 x float>, ptr %i.ts, align 4    ; 2 uses
  %i.tu = getelementptr i8, ptr %i.qz, i64 -3328
  %i.tv = load <4 x float>, ptr %i.tu, align 4    ; 2 uses
  %i.tw = fmul <4 x float> %i.tt, %i.tr
  %i.tx = fmul <4 x float> %i.tn, %i.tv
  %i.ty = fadd <4 x float> %i.tw, %i.tx
  %i.tz = fadd <4 x float> %i.tf, %i.ty
  %i.ua = fmul <4 x float> %i.tt, %i.tn
  %i.ub = fmul <4 x float> %i.tv, %i.tr
  %i.uc = fsub <4 x float> %i.ua, %i.ub
  %i.ud = fadd <4 x float> %i.tj, %i.uc
  %i.ue = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 28
  %i.uf = load float, ptr %i.to, align 8
  %i.ug = insertelement <4 x float> poison, float %i.uf, i64 0
  %i.uh = shufflevector <4 x float> %i.ug, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 32
  %i.uj = load float, ptr %i.ue, align 4
  %i.uk = insertelement <4 x float> poison, float %i.uj, i64 0
  %i.ul = shufflevector <4 x float> %i.uk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.um = getelementptr i8, ptr %i.qz, i64 -768
  %i.un = load <4 x float>, ptr %i.um, align 4    ; 2 uses
  %i.uo = getelementptr i8, ptr %i.qz, i64 -3072
  %i.up = load <4 x float>, ptr %i.uo, align 4    ; 2 uses
  %i.uq = fmul <4 x float> %i.un, %i.ul
  %i.ur = fmul <4 x float> %i.uh, %i.up
  %i.us = fadd <4 x float> %i.uq, %i.ur
  %i.ut = fadd <4 x float> %i.tz, %i.us
  %i.uu = fmul <4 x float> %i.up, %i.ul
  %i.uv = fmul <4 x float> %i.un, %i.uh
  %i.uw = fsub <4 x float> %i.uu, %i.uv
  %i.ux = fadd <4 x float> %i.ud, %i.uw
  %i.uy = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 36
  %i.uz = load float, ptr %i.ui, align 16
  %i.va = insertelement <4 x float> poison, float %i.uz, i64 0
  %i.vb = shufflevector <4 x float> %i.va, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 40
  %i.vd = load float, ptr %i.uy, align 4
  %i.ve = insertelement <4 x float> poison, float %i.vd, i64 0
  %i.vf = shufflevector <4 x float> %i.ve, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vg = getelementptr i8, ptr %i.qz, i64 -1024
  %i.vh = load <4 x float>, ptr %i.vg, align 4    ; 2 uses
  %i.vi = getelementptr i8, ptr %i.qz, i64 -2816
  %i.vj = load <4 x float>, ptr %i.vi, align 4    ; 2 uses
  %i.vk = fmul <4 x float> %i.vh, %i.vf
  %i.vl = fmul <4 x float> %i.vb, %i.vj
  %i.vm = fadd <4 x float> %i.vk, %i.vl
  %i.vn = fadd <4 x float> %i.ut, %i.vm
  %i.vo = fmul <4 x float> %i.vh, %i.vb
  %i.vp = fmul <4 x float> %i.vj, %i.vf
  %i.vq = fsub <4 x float> %i.vo, %i.vp
  %i.vr = fadd <4 x float> %i.ux, %i.vq
  %i.vs = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 44
  %i.vt = load float, ptr %i.vc, align 8
  %i.vu = insertelement <4 x float> poison, float %i.vt, i64 0
  %i.vv = shufflevector <4 x float> %i.vu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 48
  %i.vx = load float, ptr %i.vs, align 4
  %i.vy = insertelement <4 x float> poison, float %i.vx, i64 0
  %i.vz = shufflevector <4 x float> %i.vy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wa = getelementptr i8, ptr %i.qz, i64 -1280
  %i.wb = load <4 x float>, ptr %i.wa, align 4    ; 2 uses
  %i.wc = getelementptr i8, ptr %i.qz, i64 -2560
  %i.wd = load <4 x float>, ptr %i.wc, align 4    ; 2 uses
  %i.we = fmul <4 x float> %i.wb, %i.vz
  %i.wf = fmul <4 x float> %i.vv, %i.wd
  %i.wg = fadd <4 x float> %i.we, %i.wf
  %i.wh = fadd <4 x float> %i.vn, %i.wg
  %i.wi = fmul <4 x float> %i.wd, %i.vz
  %i.wj = fmul <4 x float> %i.wb, %i.vv
  %i.wk = fsub <4 x float> %i.wi, %i.wj
  %i.wl = fadd <4 x float> %i.vr, %i.wk
  %i.wm = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 52
  %i.wn = load float, ptr %i.vw, align 16
  %i.wo = insertelement <4 x float> poison, float %i.wn, i64 0
  %i.wp = shufflevector <4 x float> %i.wo, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 56
  %i.wr = load float, ptr %i.wm, align 4
  %i.ws = insertelement <4 x float> poison, float %i.wr, i64 0
  %i.wt = shufflevector <4 x float> %i.ws, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wu = getelementptr i8, ptr %i.qz, i64 -1536
  %i.wv = load <4 x float>, ptr %i.wu, align 4    ; 2 uses
  %i.ww = getelementptr i8, ptr %i.qz, i64 -2304
  %i.wx = load <4 x float>, ptr %i.ww, align 4    ; 2 uses
  %i.wy = fmul <4 x float> %i.wv, %i.wt
  %i.wz = fmul <4 x float> %i.wp, %i.wx
  %i.xa = fadd <4 x float> %i.wy, %i.wz
  %i.xb = fadd <4 x float> %i.wh, %i.xa
  %i.xc = fmul <4 x float> %i.wv, %i.wp
  %i.xd = fmul <4 x float> %i.wx, %i.wt
  %i.xe = fsub <4 x float> %i.xc, %i.xd
  %i.xf = fadd <4 x float> %i.wl, %i.xe
  %i.xg = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 60
  %i.xh = load float, ptr %i.wq, align 8
  %i.xi = insertelement <4 x float> poison, float %i.xh, i64 0
  %i.xj = shufflevector <4 x float> %i.xi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 64
  %i.xl = load float, ptr %i.xg, align 4
  %i.xm = insertelement <4 x float> poison, float %i.xl, i64 0
  %i.xn = shufflevector <4 x float> %i.xm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.xo = getelementptr i8, ptr %i.qz, i64 -1792
  %i.xp = load <4 x float>, ptr %i.xo, align 4    ; 2 uses
  %i.xq = getelementptr i8, ptr %i.qz, i64 -2048
  %i.xr = load <4 x float>, ptr %i.xq, align 4    ; 2 uses
  %i.xs = fmul <4 x float> %i.xp, %i.xn
  %i.xt = fmul <4 x float> %i.xj, %i.xr
  %i.xu = fadd <4 x float> %i.xs, %i.xt
  %i.xv = fadd <4 x float> %i.xb, %i.xu
  %i.xw = fmul <4 x float> %i.xr, %i.xn
  %i.xx = fmul <4 x float> %i.xp, %i.xj
  %i.xy = fsub <4 x float> %i.xw, %i.xx
  %i.xz = fadd <4 x float> %i.xf, %i.xy
  %i.ya = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.xz, <4 x float> splat (float 3.276700e+04))
  %i.yb = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ya, <4 x float> splat (float -3.276800e+04))
  %i.yc = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.yb)
  %i.yd = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.xv, <4 x float> splat (float 3.276700e+04))
  %i.ye = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.yd, <4 x float> splat (float -3.276800e+04))
  %i.yf = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ye)
  %i.yg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.yc, <4 x i32> %i.yf) ; 8 uses
  %i.yh = extractelement <8 x i16> %i.yg, i64 1
  %i.yi = sub nuw nsw i64 15, %indvars.iv.i31
  %i.yj = mul nsw i64 %i.yi, %i.pk                ; 2 uses
  %i.yk = getelementptr inbounds [2 x i8], ptr %i.pr, i64 %i.yj
  store i16 %i.yh, ptr %i.yk, align 2
  %i.yl = extractelement <8 x i16> %i.yg, i64 5
  %i.ym = add nuw nsw i64 %indvars.iv.i31, 17
  %i.yn = mul nsw i64 %i.ym, %i.pk                ; 2 uses
  %i.yo = getelementptr inbounds [2 x i8], ptr %i.pr, i64 %i.yn
  store i16 %i.yl, ptr %i.yo, align 2
  %i.yp = extractelement <8 x i16> %i.yg, i64 0
  %i.yq = getelementptr inbounds [2 x i8], ptr %i.po, i64 %i.yj
  store i16 %i.yp, ptr %i.yq, align 2
  %i.yr = extractelement <8 x i16> %i.yg, i64 4
  %i.ys = getelementptr inbounds [2 x i8], ptr %i.po, i64 %i.yn
  store i16 %i.yr, ptr %i.ys, align 2
  %i.yt = extractelement <8 x i16> %i.yg, i64 3
  %i.yu = sub nuw nsw i64 47, %indvars.iv.i31
  %i.yv = mul nsw i64 %i.yu, %i.pk                ; 2 uses
  %i.yw = getelementptr inbounds [2 x i8], ptr %i.pr, i64 %i.yv
  store i16 %i.yt, ptr %i.yw, align 2
  %i.yx = extractelement <8 x i16> %i.yg, i64 7
  %i.yy = add nuw nsw i64 %indvars.iv.i31, 49
  %i.yz = mul nsw i64 %i.yy, %i.pk                ; 2 uses
  %i.za = getelementptr inbounds [2 x i8], ptr %i.pr, i64 %i.yz
  store i16 %i.yx, ptr %i.za, align 2
  %i.zb = extractelement <8 x i16> %i.yg, i64 2
  %i.zc = getelementptr inbounds [2 x i8], ptr %i.po, i64 %i.yv
  store i16 %i.zb, ptr %i.zc, align 2
  %i.zd = extractelement <8 x i16> %i.yg, i64 6
  %i.ze = getelementptr inbounds [2 x i8], ptr %i.po, i64 %i.yz
  store i16 %i.zd, ptr %i.ze, align 2
  %indvars.iv.next.i32 = add nsw i64 %indvars.iv.i31, -1
  %.not.i = icmp eq i64 %indvars.iv.i31, 0
  br i1 %.not.i, label %drmp3d_synth.exit, label %bb.e

drmp3d_synth.exit:                                ; preds = %bb.e
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 2 ; 2 uses
  %i.zf = icmp samesign ult i64 %indvars.iv.next38, %i.pl
  br i1 %i.zf, label %bb.d, label %bb.f

bb.f:                                             ; preds = %drmp3d_synth.exit
  %i.zg = icmp eq i32 %3, 1
  %i.zh = shl nuw nsw i32 %2, 6
  %i.zi = zext nneg i32 %i.zh to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.zi ; 7 uses
  br i1 %i.zg, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.f, %.preheader
  %indvars.iv40 = phi i64 [ %indvars.iv.next41.5, %.preheader ], [ 0, %bb.f ] ; 9 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv40
  %i.zj = load float, ptr %gep, align 4
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv40
  store float %i.zj, ptr %i.zk, align 4
  %indvars.iv.next41 = or disjoint i64 %indvars.iv40, 2 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next41
  %i.zl = load float, ptr %gep.1, align 4
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next41
  store float %i.zl, ptr %i.zm, align 4
  %indvars.iv.next41.1 = add nuw nsw i64 %indvars.iv40, 4 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next41.1
  %i.zn = load float, ptr %gep.2, align 4
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next41.1
  store float %i.zn, ptr %i.zo, align 4
  %indvars.iv.next41.2 = add nuw nsw i64 %indvars.iv40, 6 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next41.2
  %i.zp = load float, ptr %gep.3, align 4
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next41.2
  store float %i.zp, ptr %i.zq, align 4
  %indvars.iv.next41.3 = add nuw nsw i64 %indvars.iv40, 8 ; 2 uses
  %gep.4 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next41.3
  %i.zr = load float, ptr %gep.4, align 4
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next41.3
  store float %i.zr, ptr %i.zs, align 4
  %indvars.iv.next41.4 = add nuw nsw i64 %indvars.iv40, 10 ; 2 uses
  %gep.5 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next41.4
  %i.zt = load float, ptr %gep.5, align 4
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next41.4
  store float %i.zt, ptr %i.zu, align 4
  %indvars.iv.next41.5 = add nuw nsw i64 %indvars.iv40, 12
  %i.zv = icmp samesign ult i64 %indvars.iv40, 948
  br i1 %i.zv, label %.preheader, label %.loopexit

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3840) %0, ptr noundef nonnull align 4 dereferenceable(3840) %invariant.gep, i64 3840, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.g
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @drmp3dec_f32_to_s16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #48 {
bb.a:
  %i.a = and i64 %2, -8                           ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.am, %.lr.ph ] ; 8 uses
  %i.b = icmp ult i64 %.0.lcssa, %2
  br i1 %i.b, label %.lr.ph59.preheader, label %._crit_edge

.lr.ph59.preheader:                               ; preds = %.preheader
  %i.c = sub nuw i64 %2, %.0.lcssa                ; 3 uses
  %min.iters.check = icmp ult i64 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph59.preheader69, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph59.preheader
  %i.d = shl i64 %.0.lcssa, 1
  %i.e = getelementptr i8, ptr %1, i64 %i.d
  %i.f = shl i64 %2, 1
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %i.h = shl i64 %.0.lcssa, 2
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = shl i64 %2, 2
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %bound0 = icmp ult ptr %i.e, %i.k
  %bound1 = icmp ult ptr %i.i, %i.g
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph59.preheader69, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.c, -4                       ; 3 uses
  %i.l = add i64 %.0.lcssa, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = add nuw i64 %.0.lcssa, %index            ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %wide.load = load <4 x float>, ptr %i.n, align 4, !alias.scope !1099
  %i.o = fmul <4 x float> %wide.load, splat (float 3.276800e+04) ; 3 uses
  %i.p = fcmp ult <4 x float> %i.o, splat (float 3.276650e+04)
  %i.q = fcmp ugt <4 x float> %i.o, splat (float -3.276750e+04)
  %i.r = fadd <4 x float> %i.o, splat (float 5.000000e-01)
  %i.s = fptosi <4 x float> %i.r to <4 x i16>     ; 2 uses
  %i.t = ashr <4 x i16> %i.s, splat (i16 15)
  %i.u = add <4 x i16> %i.t, %i.s
  %predphi = select <4 x i1> %i.q, <4 x i16> %i.u, <4 x i16> splat (i16 -32768)
  %predphi68 = select <4 x i1> %i.p, <4 x i16> %predphi, <4 x i16> splat (i16 32767)
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.m
  store <4 x i16> %predphi68, ptr %i.v, align 2, !alias.scope !1100, !noalias !1099
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !1097

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph59.preheader69

.lr.ph59.preheader69:                             ; preds = %vector.memcheck, %.lr.ph59.preheader, %middle.block
  %.158.ph = phi i64 [ %.0.lcssa, %vector.memcheck ], [ %.0.lcssa, %.lr.ph59.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph59

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.057 = phi i64 [ %i.am, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.057
  %i.y = load <4 x float>, ptr %i.x, align 1
  %i.z = fmul <4 x float> %i.y, splat (float 3.276800e+04)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.057
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load <4 x float>, ptr %i.ab, align 1
  %i.ad = fmul <4 x float> %i.ac, splat (float 3.276800e+04)
  %i.ae = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.z, <4 x float> splat (float 3.276700e+04))
  %i.af = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ae, <4 x float> splat (float -3.276800e+04))
  %i.ag = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.af)
  %i.ah = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ad, <4 x float> splat (float 3.276700e+04))
  %i.ai = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ah, <4 x float> splat (float -3.276800e+04))
  %i.aj = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ai)
  %i.ak = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ag, <4 x i32> %i.aj)
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.057
  store <8 x i16> %i.ak, ptr %i.al, align 2
  %i.am = add nuw i64 %.057, 8                    ; 3 uses
  %i.an = icmp ult i64 %i.am, %i.a
end_hunk_2
begin_hunk_3_@ma_pcm_rb_data_source__on_read:bb.a
  %i.ac = load i32, ptr %i.d, align 4             ; 2 uses
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = mul i32 %i.af, %i.ac                    ; 3 uses
  %i.ah = udiv i32 %i.y, %i.ag                    ; 2 uses
  %i.ai = icmp ugt i32 %i.ag, %i.y
  br i1 %i.ai, label %ma_pcm_rb_commit_read.exit.thread53, label %bb.e

bb.e:                                             ; preds = %ma_pcm_rb_acquire_read.exit
  %i.aj = and i32 %i.aa, 2147483647
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ak ; 2 uses
  %i.am = zext i32 %i.ag to i64                   ; 2 uses
  %i.an = mul i64 %.03158, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.an ; 2 uses
  %i.ap = zext i32 %i.ah to i64                   ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.al
  br i1 %i.aq, label %ma_copy_pcm_frames.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ar = mul nuw i64 %i.am, %i.ap
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0.i10.i = phi ptr [ %i.at, %.lr.ph.i ], [ %i.ao, %.lr.ph.i.preheader ] ; 2 uses
  %.011.i9.i = phi i64 [ %i.as, %.lr.ph.i ], [ %i.ar, %.lr.ph.i.preheader ] ; 2 uses
  %.012.i8.i = phi ptr [ %i.au, %.lr.ph.i ], [ %i.al, %.lr.ph.i.preheader ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i, i64 %spec.store.select.i.i, i1 false)
  %i.as = sub nuw i64 %.011.i9.i, %spec.store.select.i.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 %spec.store.select.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i8.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i, label %ma_copy_pcm_frames.exit.loopexit, label %.lr.ph.i

ma_copy_pcm_frames.exit.loopexit:                 ; preds = %.lr.ph.i
  %.pre = load i32, ptr %i.c, align 8
  %.pre61 = load i32, ptr %i.d, align 4
  %.phi.trans.insert = zext i32 %.pre to i64
  %.phi.trans.insert62 = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %.phi.trans.insert
  %.pre63 = load i32, ptr %.phi.trans.insert62, align 4
  br label %ma_copy_pcm_frames.exit

ma_copy_pcm_frames.exit:                          ; preds = %ma_copy_pcm_frames.exit.loopexit, %bb.e
  %i.av = phi i32 [ %.pre63, %ma_copy_pcm_frames.exit.loopexit ], [ %i.af, %bb.e ]
  %i.aw = phi i32 [ %.pre61, %ma_copy_pcm_frames.exit.loopexit ], [ %i.ac, %bb.e ]
  %i.ax = mul i32 %i.aw, %i.ah
  %i.ay = mul i32 %i.ax, %i.av
  %i.az = load atomic i32, ptr %i.g seq_cst, align 4 ; 2 uses
  %i.ba = and i32 %i.az, 2147483647
  %i.bb = add i32 %i.ba, %i.ay                    ; 3 uses
  %i.bc = load i32, ptr %i.h, align 8             ; 2 uses
  %i.bd = icmp ugt i32 %i.bb, %i.bc
  br i1 %i.bd, label %ma_pcm_rb_commit_read.exit.thread53, label %ma_pcm_rb_commit_read.exit

ma_pcm_rb_commit_read.exit:                       ; preds = %ma_copy_pcm_frames.exit
  %i.be = and i32 %i.az, -2147483648              ; 2 uses
  %i.bf = icmp eq i32 %i.bb, %i.bc
  %i.bg = xor i32 %i.be, -2147483648
  %i.bh = or i32 %i.bb, %i.be
  %i.bi = select i1 %i.bf, i32 %i.bg, i32 %i.bh
  %i.bj = atomicrmw xchg ptr %i.g, i32 %i.bi seq_cst, align 4 ; 0 uses
  %i.bk = add i64 %.03158, %i.ap                  ; 3 uses
  %.not = icmp ult i64 %i.bk, %2
  br i1 %.not, label %bb.b, label %ma_pcm_rb_commit_read.exit.thread53

ma_pcm_rb_commit_read.exit.thread53:              ; preds = %ma_pcm_rb_commit_read.exit, %ma_pcm_rb_acquire_read.exit, %ma_copy_pcm_frames.exit, %bb.a
  %.031.lcssa = phi i64 [ 0, %bb.a ], [ %.03158, %ma_copy_pcm_frames.exit ], [ %.03158, %ma_pcm_rb_acquire_read.exit ], [ %i.bk, %ma_pcm_rb_commit_read.exit ] ; 4 uses
  %i.bl = icmp ult i64 %.031.lcssa, %2
  br i1 %i.bl, label %bb.f, label %ma_silence_pcm_frames.exit

bb.f:                                             ; preds = %ma_pcm_rb_commit_read.exit.thread53
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bn = load i32, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = mul i32 %i.bs, %i.bp
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = mul i64 %.031.lcssa, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %i.bv ; 2 uses
  %i.bx = sub nuw i64 %2, %.031.lcssa             ; 2 uses
  %i.by = icmp eq i32 %i.bn, 1
  br i1 %i.by, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bz = zext i32 %i.bp to i64
  %i.ca = mul i64 %i.bx, %i.bz                    ; 2 uses
  %.not18.i = icmp eq i64 %i.ca, 0
  br i1 %.not18.i, label %ma_silence_pcm_frames.exit, label %.lr.ph17.preheader.i

.lr.ph17.preheader.i:                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bw, i8 -128, i64 %i.ca, i1 false)
  br label %ma_silence_pcm_frames.exit

bb.h:                                             ; preds = %bb.f
  %i.cb = mul i64 %i.bx, %i.bu                    ; 2 uses
  %.not.i13.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i13.i, label %ma_silence_pcm_frames.exit, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %bb.h, %ma_zero_memory_default.exit.i.i
  %.0.i15.i = phi ptr [ %i.cd, %ma_zero_memory_default.exit.i.i ], [ %i.bw, %bb.h ] ; 3 uses
  %.08.i14.i = phi i64 [ %i.cc, %ma_zero_memory_default.exit.i.i ], [ %i.cb, %bb.h ] ; 2 uses
  %spec.store.select.i.i38 = tail call i64 @llvm.umin.i64(i64 %.08.i14.i, i64 4294967295) ; 3 uses
  %.not.i = icmp eq ptr %.0.i15.i, null
  br i1 %.not.i, label %ma_zero_memory_default.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15.i, i8 0, i64 %spec.store.select.i.i38, i1 false)
  br label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %bb.i, %.lr.ph.i37
  %i.cc = sub nuw i64 %.08.i14.i, %spec.store.select.i.i38 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i15.i, i64 %spec.store.select.i.i38
  %.not.i.i39 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i39, label %ma_silence_pcm_frames.exit, label %.lr.ph.i37

ma_silence_pcm_frames.exit:                       ; preds = %ma_zero_memory_default.exit.i.i, %bb.h, %.lr.ph17.preheader.i, %bb.g, %ma_pcm_rb_commit_read.exit.thread53
  %.3 = phi i64 [ %.031.lcssa, %ma_pcm_rb_commit_read.exit.thread53 ], [ %2, %bb.g ], [ %2, %.lr.ph17.preheader.i ], [ %2, %bb.h ], [ %2, %ma_zero_memory_default.exit.i.i ]
  store i64 %.3, ptr %3, align 8
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef i32 @ma_pcm_rb_data_source__on_get_data_format(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i64 noundef %5) #20 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8
  store i32 %i.b, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.d = load i32, ptr %i.c, align 4
  store i32 %i.d, ptr %2, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not17 = icmp eq ptr %3, null
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load i32, ptr %i.e, align 8
  store i32 %i.f, ptr %3, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not18 = icmp eq ptr %4, null
  br i1 %.not18, label %ma_channel_map_init_standard.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = icmp eq i64 %5, 0
  %i.j = icmp eq i32 %i.h, 0
  %or.cond3.i = or i1 %i.i, %i.j
  br i1 %or.cond3.i, label %ma_channel_map_init_standard.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %.preheader.i
  %.024.i = phi i32 [ %i.n, %.preheader.i ], [ 0, %bb.h ] ; 2 uses
  %.01723.i = phi ptr [ %i.l, %.preheader.i ], [ %4, %bb.h ] ; 2 uses
  %.01822.i = phi i64 [ %i.m, %.preheader.i ], [ %5, %bb.h ]
  %i.k = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.h, i32 noundef %.024.i)
  store i8 %i.k, ptr %.01723.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %.01723.i, i64 1
  %i.m = add i64 %.01822.i, -1                    ; 2 uses
  %i.n = add nuw i32 %.024.i, 1                   ; 2 uses
  %i.o = icmp uge i32 %i.n, %i.h
  %i.p = icmp eq i64 %i.m, 0
  %or.cond5.i = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond5.i, label %ma_channel_map_init_standard.exit, label %.preheader.i

ma_channel_map_init_standard.exit:                ; preds = %.preheader.i, %bb.h, %bb.g
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -17, 1) i32 @ma_audio_buffer_ref__data_source_on_read(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address) %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) #23 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %ma_audio_buffer_ref_read_pcm_frames.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %.not.i = icmp eq ptr %1, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.h = load i64, ptr %i.c, align 8              ; 3 uses
  %.promoted.i = load i64, ptr %i.d, align 8      ; 2 uses
  br i1 %.not.i, label %ma_copy_pcm_frames.exit.us.us.i, label %.preheader.split.i

ma_copy_pcm_frames.exit.us.us.i:                  ; preds = %.preheader.i, %ma_copy_pcm_frames.exit.us.us.i
  %i.i = phi i64 [ %i.m, %ma_copy_pcm_frames.exit.us.us.i ], [ %.promoted.i, %.preheader.i ] ; 2 uses
  %.03545.us.us.i = phi i64 [ %i.l, %ma_copy_pcm_frames.exit.us.us.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = sub nuw i64 %2, %.03545.us.us.i
  %spec.select.us.us.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.j) ; 2 uses
  %i.l = add i64 %spec.select.us.us.i, %.03545.us.us.i ; 3 uses
  %i.m = add i64 %spec.select.us.us.i, %i.i       ; 3 uses
  %i.n = icmp ne i64 %i.m, %i.h
  %i.o = icmp ult i64 %i.l, %2
  %or.cond59.i = and i1 %i.n, %i.o
  br i1 %or.cond59.i, label %ma_copy_pcm_frames.exit.us.us.i, label %.thread.loopexit.split.us.i

.thread.loopexit.split.us.i:                      ; preds = %ma_copy_pcm_frames.exit.us.us.i
  store i64 %i.m, ptr %i.d, align 8
  br label %ma_audio_buffer_ref_read_pcm_frames.exit

.preheader.split.i:                               ; preds = %.preheader.i
  %.pre79.i = load i32, ptr %i.e, align 8
  %.pre81.i = load i32, ptr %i.f, align 4
  %.pre83.i = load ptr, ptr %i.g, align 8
  br label %.preheader.split.split.us.i

.preheader.split.split.us.i:                      ; preds = %ma_copy_pcm_frames.exit.us48.i, %.preheader.split.i
  %i.p = phi i64 [ %i.ah, %ma_copy_pcm_frames.exit.us48.i ], [ %i.h, %.preheader.split.i ] ; 2 uses
  %4 = phi ptr [ %7, %ma_copy_pcm_frames.exit.us48.i ], [ %.pre83.i, %.preheader.split.i ] ; 2 uses
  %5 = phi i32 [ %8, %ma_copy_pcm_frames.exit.us48.i ], [ %.pre81.i, %.preheader.split.i ] ; 2 uses
  %6 = phi i32 [ %9, %ma_copy_pcm_frames.exit.us48.i ], [ %.pre79.i, %.preheader.split.i ] ; 2 uses
  %i.q = phi i64 [ %i.ak, %ma_copy_pcm_frames.exit.us48.i ], [ %.promoted.i, %.preheader.split.i ] ; 3 uses
  %.03545.us46.i = phi i64 [ %i.aj, %ma_copy_pcm_frames.exit.us48.i ], [ 0, %.preheader.split.i ] ; 3 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = sub nuw i64 %2, %.03545.us46.i
  %spec.select.us47.i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.r) ; 3 uses
  %i.t = zext i32 %6 to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  %i.w = mul i32 %i.v, %5
  %i.x = zext i32 %i.w to i64                     ; 3 uses
  %i.y = mul i64 %.03545.us46.i, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y ; 2 uses
  %i.aa = mul i64 %i.q, %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 %i.aa ; 2 uses
  %i.ac = icmp eq ptr %i.z, %i.ab
  %i.ad = mul i64 %spec.select.us47.i, %i.x       ; 2 uses
  %.not.i7.i.us.i = icmp eq i64 %i.ad, 0
  %or.cond44.us.i = select i1 %i.ac, i1 true, i1 %.not.i7.i.us.i
  br i1 %or.cond44.us.i, label %ma_copy_pcm_frames.exit.us48.i, label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.preheader.split.split.us.i, %.lr.ph.i.us.i
  %.0.i10.i.us.i = phi ptr [ %i.af, %.lr.ph.i.us.i ], [ %i.z, %.preheader.split.split.us.i ] ; 2 uses
  %.011.i9.i.us.i = phi i64 [ %i.ae, %.lr.ph.i.us.i ], [ %i.ad, %.preheader.split.split.us.i ] ; 2 uses
  %.012.i8.i.us.i = phi ptr [ %i.ag, %.lr.ph.i.us.i ], [ %i.ab, %.preheader.split.split.us.i ] ; 2 uses
  %spec.store.select.i.i.us.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i.us.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i.us.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i.us.i, i64 %spec.store.select.i.i.us.i, i1 false)
  %i.ae = sub nuw i64 %.011.i9.i.us.i, %spec.store.select.i.i.us.i ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i10.i.us.i, i64 %spec.store.select.i.i.us.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i8.i.us.i, i64 %spec.store.select.i.i.us.i
  %.not.i.i.us.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.us.i, label %ma_copy_pcm_frames.exit.us48.loopexit.i, label %.lr.ph.i.us.i

ma_copy_pcm_frames.exit.us48.loopexit.i:          ; preds = %.lr.ph.i.us.i
  %.pre78.i = load i32, ptr %i.e, align 8
  %.pre80.i = load i32, ptr %i.f, align 4
  %.pre82.i = load ptr, ptr %i.g, align 8
  %.pre72.i = load i64, ptr %i.d, align 8
  %.pre73.i = load i64, ptr %i.c, align 8
  br label %ma_copy_pcm_frames.exit.us48.i

ma_copy_pcm_frames.exit.us48.i:                   ; preds = %ma_copy_pcm_frames.exit.us48.loopexit.i, %.preheader.split.split.us.i
  %i.ah = phi i64 [ %.pre73.i, %ma_copy_pcm_frames.exit.us48.loopexit.i ], [ %i.p, %.preheader.split.split.us.i ] ; 2 uses
  %i.ai = phi i64 [ %.pre72.i, %ma_copy_pcm_frames.exit.us48.loopexit.i ], [ %i.q, %.preheader.split.split.us.i ]
  %7 = phi ptr [ %.pre82.i, %ma_copy_pcm_frames.exit.us48.loopexit.i ], [ %4, %.preheader.split.split.us.i ]
  %8 = phi i32 [ %.pre80.i, %ma_copy_pcm_frames.exit.us48.loopexit.i ], [ %5, %.preheader.split.split.us.i ]
  %9 = phi i32 [ %.pre78.i, %ma_copy_pcm_frames.exit.us48.loopexit.i ], [ %6, %.preheader.split.split.us.i ]
  %i.aj = add i64 %spec.select.us47.i, %.03545.us46.i ; 3 uses
  %i.ak = add i64 %i.ai, %spec.select.us47.i      ; 3 uses
  store i64 %i.ak, ptr %i.d, align 8
  %i.al = icmp ne i64 %i.ak, %i.ah
  %i.am = icmp ult i64 %i.aj, %2
  %or.cond60.i = and i1 %i.am, %i.al
  br i1 %or.cond60.i, label %.preheader.split.split.us.i, label %ma_audio_buffer_ref_read_pcm_frames.exit

ma_audio_buffer_ref_read_pcm_frames.exit:         ; preds = %ma_copy_pcm_frames.exit.us48.i, %bb.a, %.thread.loopexit.split.us.i
  %.036.i = phi i64 [ 0, %bb.a ], [ %i.l, %.thread.loopexit.split.us.i ], [ %i.aj, %ma_copy_pcm_frames.exit.us48.i ] ; 3 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %ma_audio_buffer_ref_read_pcm_frames.exit
  store i64 %.036.i, ptr %3, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %ma_audio_buffer_ref_read_pcm_frames.exit
  %i.an = icmp ult i64 %.036.i, %2
  %i.ao = icmp eq i64 %.036.i, 0
  %or.cond = or i1 %i.an, %i.ao
  %. = select i1 %or.cond, i32 -17, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -2, 1) i32 @ma_audio_buffer_ref__data_source_on_seek(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_audio_buffer_ref_seek_to_pcm_frame.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %ma_audio_buffer_ref_seek_to_pcm_frame.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %1, ptr %i.e, align 8
  br label %ma_audio_buffer_ref_seek_to_pcm_frame.exit

ma_audio_buffer_ref_seek_to_pcm_frame.exit:       ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef i32 @ma_audio_buffer_ref__data_source_on_get_data_format(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i64 noundef %5) #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8
  store i32 %i.b, ptr %1, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  store i32 %i.d, ptr %2, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i32, ptr %i.e, align 8
  store i32 %i.f, ptr %3, align 4
  %i.g = load i32, ptr %i.c, align 4              ; 3 uses
  %i.h = icmp eq ptr %4, null
  %i.i = icmp eq i64 %5, 0
  %or.cond.i = or i1 %i.h, %i.i
  %i.j = icmp eq i32 %i.g, 0
  %or.cond3.i = or i1 %or.cond.i, %i.j
  br i1 %or.cond3.i, label %ma_channel_map_init_standard.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.024.i = phi i32 [ %i.n, %.preheader.i ], [ 0, %bb.a ] ; 2 uses
  %.01723.i = phi ptr [ %i.l, %.preheader.i ], [ %4, %bb.a ] ; 2 uses
  %.01822.i = phi i64 [ %i.m, %.preheader.i ], [ %5, %bb.a ]
  %i.k = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.g, i32 noundef %.024.i)
  store i8 %i.k, ptr %.01723.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %.01723.i, i64 1
  %i.m = add i64 %.01822.i, -1                    ; 2 uses
  %i.n = add nuw i32 %.024.i, 1                   ; 2 uses
  %i.o = icmp uge i32 %i.n, %i.g
  %i.p = icmp eq i64 %i.m, 0
  %or.cond5.i = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond5.i, label %ma_channel_map_init_standard.exit, label %.preheader.i

ma_channel_map_init_standard.exit:                ; preds = %.preheader.i, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @ma_audio_buffer_ref__data_source_on_get_cursor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8
  store i64 %i.b, ptr %1, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @ma_audio_buffer_ref__data_source_on_get_length(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8
  store i64 %i.b, ptr %1, align 8
  ret i32 0
}

; Function Attrs: norecurse nounwind uwtable
define internal range(i32 -17, 1) i32 @ma_paged_audio_buffer__data_source_on_read(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address) %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) #15 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_paged_audio_buffer_read_pcm_frames.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not64.i = icmp eq i64 %2, 0
  br i1 %.not64.i, label %select.unfold.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = load i32, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.i = zext i32 %i.f to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4
  %i.l = mul i32 %i.k, %i.e
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.pre.i = load ptr, ptr %i.g, align 8
  %.pre65.i = load i64, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %select.unfold.i, %.lr.ph.i
  %i.o = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.aq, %select.unfold.i ] ; 3 uses
  %i.p = phi i64 [ %.pre65.i, %.lr.ph.i ], [ %i.ar, %select.unfold.i ] ; 3 uses
  %.04359.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ah, %select.unfold.i ] ; 3 uses
  %i.q = sub nuw i64 %2, %.04359.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = sub i64 %i.s, %i.p
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.q) ; 4 uses
  %i.v = mul i64 %.04359.i, %i.m
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.y = mul i64 %i.p, %i.m
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = icmp eq ptr %i.w, %i.z
  %i.ab = mul i64 %i.u, %i.m                      ; 2 uses
  %.not.i7.i.i = icmp eq i64 %i.ab, 0
  %or.cond.i = select i1 %i.aa, i1 true, i1 %.not.i7.i.i
  br i1 %or.cond.i, label %ma_copy_pcm_frames.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i10.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.w, %bb.c ] ; 2 uses
  %.011.i9.i.i = phi i64 [ %i.ac, %.lr.ph.i.i ], [ %i.ab, %bb.c ] ; 2 uses
  %.012.i8.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.z, %bb.c ] ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i.i, i64 %spec.store.select.i.i.i, i1 false)
  %i.ac = sub nuw i64 %.011.i9.i.i, %spec.store.select.i.i.i ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i10.i.i, i64 %spec.store.select.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i8.i.i, i64 %spec.store.select.i.i.i
  %.not.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i, label %ma_copy_pcm_frames.exit.loopexit.i, label %.lr.ph.i.i

ma_copy_pcm_frames.exit.loopexit.i:               ; preds = %.lr.ph.i.i
  %.pre66.i = load i64, ptr %i.h, align 8
  %.pre67.i = load ptr, ptr %i.g, align 8
  br label %ma_copy_pcm_frames.exit.i

ma_copy_pcm_frames.exit.i:                        ; preds = %ma_copy_pcm_frames.exit.loopexit.i, %bb.c
  %i.af = phi ptr [ %.pre67.i, %ma_copy_pcm_frames.exit.loopexit.i ], [ %i.o, %bb.c ] ; 3 uses
  %i.ag = phi i64 [ %.pre66.i, %ma_copy_pcm_frames.exit.loopexit.i ], [ %i.p, %bb.c ]
  %i.ah = add i64 %i.u, %.04359.i                 ; 4 uses
  %i.ai = load i64, ptr %i.n, align 8
  %i.aj = add i64 %i.ai, %i.u
  store i64 %i.aj, ptr %i.n, align 8
  %i.ak = add i64 %i.ag, %i.u                     ; 3 uses
  store i64 %i.ak, ptr %i.h, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = icmp eq i64 %i.ak, %i.am
  br i1 %i.an, label %bb.d, label %select.unfold.i

bb.d:                                             ; preds = %ma_copy_pcm_frames.exit.i
  %i.ao = load atomic volatile i64, ptr %i.af seq_cst, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %select.unfold.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  store ptr %i.ap, ptr %i.g, align 8
  store i64 0, ptr %i.h, align 8
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.e, %ma_copy_pcm_frames.exit.i
  %i.aq = phi ptr [ %i.ap, %bb.e ], [ %i.af, %ma_copy_pcm_frames.exit.i ]
  %i.ar = phi i64 [ 0, %bb.e ], [ %i.ak, %ma_copy_pcm_frames.exit.i ]
  %i.as = icmp ult i64 %i.ah, %2
  br i1 %i.as, label %bb.c, label %select.unfold.thread.i

select.unfold.thread.i:                           ; preds = %select.unfold.i, %bb.d, %bb.b
end_hunk_3
