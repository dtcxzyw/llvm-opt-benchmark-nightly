Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_hishelf2_process_pcm_frames:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @ma_biquad_process_pcm_frames(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 3) i32 @ma_hishelf2_get_latency(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %spec.select = select i1 %i.a, i32 0, i32 2
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_delay_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_delay_config) align 4 captures(none) initializes((0, 28)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #0 {
ma_zero_memory_default.exit:
  store i32 %1, ptr %0, align 4, !tbaa !442
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !1794
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.b, align 4, !tbaa !443
  %i.c = fcmp oeq float %4, 0.000000e+00
  %i.d = zext i1 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.d, ptr %i.e, align 4, !tbaa !1795
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> splat (float 1.000000e+00), ptr %i.f, align 4, !tbaa !349
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %4, ptr %i.g, align 4, !tbaa !444
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -4, 1) i32 @ma_delay_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_silence_pcm_frames.exit, label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_silence_pcm_frames.exit, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load float, ptr %i.c, align 4, !tbaa !444 ; 2 uses
  %i.e = fcmp olt float %i.d, 0.000000e+00
  %i.f = fcmp ogt float %i.d, 1.000000e+00
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %ma_silence_pcm_frames.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) %0, i64 28, i1 false), !tbaa.struct !445
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !443  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i32 %i.h, ptr %i.i, align 8, !tbaa !447
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 0, ptr %i.j, align 4, !tbaa !448
  %i.k = load i32, ptr %0, align 4, !tbaa !442
  %i.l = shl i32 %i.h, 2
  %i.m = mul i32 %i.l, %i.k
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !125  ; 2 uses
  %.not8.i = icmp eq ptr %i.p, null
  br i1 %.not8.i, label %ma_malloc.exit.thread, label %bb.e

ma_malloc.exit.thread:                            ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.q, align 8, !tbaa !449
  br label %ma_silence_pcm_frames.exit

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %1, align 8, !tbaa !126
  %i.s = tail call ptr %i.p(i64 noundef %i.n, ptr noundef %i.r) #55, !inline_history !127
  br label %ma_malloc.exit

bb.f:                                             ; preds = %bb.c
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef %i.n) #67
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.s, %bb.e ], [ %i.t, %bb.f ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %.0.i, ptr %i.u, align 8, !tbaa !449
  %i.v = icmp eq ptr %.0.i, null
  br i1 %i.v, label %ma_silence_pcm_frames.exit, label %bb.g

bb.g:                                             ; preds = %ma_malloc.exit
  %i.w = load i32, ptr %i.i, align 8, !tbaa !447
  %i.x = zext i32 %i.w to i64
  %i.y = load i32, ptr %0, align 4, !tbaa !442
  %i.z = shl i32 %i.y, 2
  %i.aa = zext i32 %i.z to i64
  %i.ab = mul nuw i64 %i.aa, %i.x                 ; 2 uses
  %.not.i13.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i13.i, label %ma_silence_pcm_frames.exit, label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %bb.g, %ma_zero_memory_default.exit.i.i
  %.0.i15.i = phi ptr [ %i.ad, %ma_zero_memory_default.exit.i.i ], [ %.0.i, %bb.g ] ; 2 uses
  %.08.i14.i = phi i64 [ %i.ac, %ma_zero_memory_default.exit.i.i ], [ %i.ab, %bb.g ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.08.i14.i, i64 4294967295) ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15.i, i8 0, i64 %spec.store.select.i.i, i1 false)
  %i.ac = sub nuw i64 %.08.i14.i, %spec.store.select.i.i ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i15.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %ma_silence_pcm_frames.exit, label %ma_zero_memory_default.exit.i.i, !llvm.loop !7

ma_silence_pcm_frames.exit:                       ; preds = %ma_zero_memory_default.exit.i.i, %bb.g, %ma_malloc.exit.thread, %ma_malloc.exit, %bb.b, %ma_zero_memory_default.exit, %bb.a
  %.0 = phi i32 [ -4, %ma_malloc.exit.thread ], [ -2, %bb.a ], [ -2, %ma_zero_memory_default.exit ], [ -2, %bb.b ], [ -4, %ma_malloc.exit ], [ 0, %bb.g ], [ 0, %ma_zero_memory_default.exit.i.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @ma_delay_uninit(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !449  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !132  ; 2 uses
  %.not9.i = icmp eq ptr %i.f, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %1, align 8, !tbaa !126
  tail call void %i.f(ptr noundef nonnull %i.c, ptr noundef %i.g) #55, !inline_history !133
  br label %ma_free.exit

bb.f:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.c) #55
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2, 1) i32 @ma_delay_process_pcm_frames(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #23 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %.loopexit, label %.preheader59

.preheader59:                                     ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader59
  %i.d = load i32, ptr %0, align 8, !tbaa !1812   ; 6 uses
  %.not70 = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 16         ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !447  ; 7 uses
  %i.k = zext i32 %i.d to i64                     ; 13 uses
  %.promoted = load i32, ptr %i.e, align 4, !tbaa !448 ; 4 uses
  br i1 %.not70, label %.preheader.preheader, label %.preheader.lr.ph.split.us

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %xtraiter = and i32 %3, 3                       ; 3 uses
  %i.l = icmp ult i32 %3, 4
  br i1 %i.l, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i32 %3, -4
  br label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !1813
  %.not.us = icmp eq i32 %i.o, 0
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !449  ; 7 uses
  %i.q = add nsw i64 %i.k, -1                     ; 4 uses
  %i.r = shl nuw nsw i64 %i.k, 2
  %scevgep170 = getelementptr i8, ptr %i.p, i64 %i.r ; 2 uses
  %4 = add i32 %3, -1
  %5 = zext i32 %4 to i64
  %i.s = shl nuw nsw i64 %5, 2
  %6 = add nuw nsw i64 %i.s, 4
  %7 = mul i64 %6, %i.k                           ; 2 uses
  %scevgep171 = getelementptr i8, ptr %2, i64 %7  ; 4 uses
  %scevgep172 = getelementptr i8, ptr %0, i64 28  ; 4 uses
  %scevgep173 = getelementptr i8, ptr %1, i64 %7  ; 6 uses
  br i1 %.not.us, label %.preheader.us.us.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split.us
  %min.iters.check = icmp ult i32 %i.d, 8
  %i.t = trunc i64 %i.q to i32
  %i.u = icmp ugt i64 %i.q, 4294967295
  %bound0 = icmp ult ptr %1, %scevgep172
  %bound1 = icmp ult ptr %i.f, %scevgep173
  %found.conflict = and i1 %bound0, %bound1
  %bound0122 = icmp ult ptr %1, %scevgep171
  %bound1123 = icmp ult ptr %2, %scevgep173
  %found.conflict124 = and i1 %bound0122, %bound1123
  %conflict.rdx = or i1 %found.conflict, %found.conflict124
  %n.vec = and i64 %i.k, 4294967292               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.k
  br label %.preheader.us

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.us
  %min.iters.check175 = icmp ult i32 %i.d, 8
  %i.v = trunc i64 %i.q to i32
  %i.w = icmp ugt i64 %i.q, 4294967295
  %bound0177 = icmp ult ptr %1, %scevgep172
  %bound1178 = icmp ult ptr %i.f, %scevgep173
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0180 = icmp ult ptr %1, %scevgep171
  %bound1181 = icmp ult ptr %2, %scevgep173
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx183 = or i1 %found.conflict179, %found.conflict182
  %n.vec197 = and i64 %i.k, 4294967292            ; 3 uses
  %cmp.n210 = icmp eq i64 %n.vec197, %i.k
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.split.us.us.us
  %i.x = phi i32 [ %i.bi, %._crit_edge.split.us.us.us ], [ %.promoted, %.preheader.us.us.preheader ] ; 2 uses
  %.064.us.us = phi ptr [ %i.bk, %._crit_edge.split.us.us.us ], [ %2, %.preheader.us.us.preheader ] ; 3 uses
  %.05162.us.us = phi ptr [ %i.bj, %._crit_edge.split.us.us.us ], [ %1, %.preheader.us.us.preheader ] ; 3 uses
  %.05361.us.us = phi i32 [ %i.bl, %._crit_edge.split.us.us.us ], [ 0, %.preheader.us.us.preheader ]
  %i.y = mul i32 %i.x, %i.d                       ; 4 uses
  br i1 %min.iters.check175, label %scalar.ph174.preheader, label %vector.scevcheck143

vector.scevcheck143:                              ; preds = %.preheader.us.us
  %i.z = xor i32 %i.y, -1
  %i.aa = icmp ult i32 %i.z, %i.v
  %i.ab = or i1 %i.aa, %i.w
  br i1 %i.ab, label %scalar.ph174.preheader, label %vector.memcheck176

vector.memcheck176:                               ; preds = %vector.scevcheck143
  %i.ac = zext i32 %i.y to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2                ; 2 uses
  %i.ae = getelementptr i8, ptr %i.p, i64 %i.ad   ; 3 uses
  %i.af = getelementptr i8, ptr %scevgep170, i64 %i.ad ; 3 uses
  %bound0184 = icmp ult ptr %1, %i.af
  %bound1185 = icmp ult ptr %i.ae, %scevgep173
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx187 = or i1 %conflict.rdx183, %found.conflict186
  %bound0188 = icmp ult ptr %i.f, %i.af
  %bound1189 = icmp ult ptr %i.ae, %scevgep172
  %found.conflict190 = and i1 %bound0188, %bound1189
  %conflict.rdx191 = or i1 %conflict.rdx187, %found.conflict190
  %bound0192 = icmp ult ptr %2, %i.af
  %bound1193 = icmp ult ptr %i.ae, %scevgep171
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx195 = or i1 %conflict.rdx191, %found.conflict194
  br i1 %conflict.rdx195, label %scalar.ph174.preheader, label %vector.ph196

vector.ph196:                                     ; preds = %vector.memcheck176
  %i.ag = load float, ptr %i.g, align 8, !tbaa !450, !alias.scope !1814, !noalias !1815
  %broadcast.splatinsert204 = insertelement <4 x float> poison, float %i.ag, i64 0
  %broadcast.splat205 = shufflevector <4 x float> %broadcast.splatinsert204, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = load float, ptr %i.h, align 4, !tbaa !451, !alias.scope !1814, !noalias !1815
  %broadcast.splatinsert202 = insertelement <4 x float> poison, float %i.ah, i64 0
  %broadcast.splat203 = shufflevector <4 x float> %broadcast.splatinsert202, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ai = load float, ptr %i.f, align 8, !tbaa !452, !alias.scope !1814, !noalias !1815
  %broadcast.splatinsert206 = insertelement <4 x float> poison, float %i.ai, i64 0
  %broadcast.splat207 = shufflevector <4 x float> %broadcast.splatinsert206, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph196
  %index199 = phi i64 [ 0, %vector.ph196 ], [ %index.next208, %vector.body198 ] ; 4 uses
  %i.aj = trunc nuw i64 %index199 to i32
  %i.ak = add i32 %i.y, %i.aj
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.al ; 2 uses
  %wide.load200 = load <4 x float>, ptr %i.am, align 4, !tbaa !349, !alias.scope !1815
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.064.us.us, i64 %index199
  %wide.load201 = load <4 x float>, ptr %i.an, align 4, !tbaa !349, !alias.scope !1816, !noalias !1815
  %i.ao = fmul <4 x float> %wide.load201, %broadcast.splat203
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load200, <4 x float> %broadcast.splat205, <4 x float> %i.ao) ; 2 uses
  store <4 x float> %i.ap, ptr %i.am, align 4, !tbaa !349, !alias.scope !1815
  %i.aq = fmul <4 x float> %i.ap, %broadcast.splat207
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.05162.us.us, i64 %index199
  store <4 x float> %i.aq, ptr %i.ar, align 4, !tbaa !349, !alias.scope !1817, !noalias !1818
  %index.next208 = add nuw i64 %index199, 4       ; 2 uses
  %i.as = icmp eq i64 %index.next208, %n.vec197
  br i1 %i.as, label %middle.block209, label %vector.body198, !llvm.loop !1801

middle.block209:                                  ; preds = %vector.body198
  br i1 %cmp.n210, label %._crit_edge.split.us.us.us, label %scalar.ph174.preheader

scalar.ph174.preheader:                           ; preds = %vector.memcheck176, %vector.scevcheck143, %.preheader.us.us, %middle.block209
  %indvars.iv77.ph = phi i64 [ 0, %vector.memcheck176 ], [ 0, %vector.scevcheck143 ], [ 0, %.preheader.us.us ], [ %n.vec197, %middle.block209 ]
  br label %scalar.ph174

scalar.ph174:                                     ; preds = %scalar.ph174.preheader, %scalar.ph174
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %scalar.ph174 ], [ %indvars.iv77.ph, %scalar.ph174.preheader ] ; 4 uses
  %i.at = trunc nuw i64 %indvars.iv77 to i32
  %i.au = add i32 %i.y, %i.at
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.av ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !349
  %i.ay = load float, ptr %i.g, align 8, !tbaa !450
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.064.us.us, i64 %indvars.iv77
  %i.ba = load float, ptr %i.az, align 4, !tbaa !349
  %i.bb = load float, ptr %i.h, align 4, !tbaa !451
  %i.bc = fmul float %i.ba, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.ay, float %i.bc) ; 2 uses
  store float %i.bd, ptr %i.aw, align 4, !tbaa !349
  %i.be = load float, ptr %i.f, align 8, !tbaa !452
  %i.bf = fmul float %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.05162.us.us, i64 %indvars.iv77
  store float %i.bf, ptr %i.bg, align 4, !tbaa !349
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %i.k
  br i1 %exitcond81.not, label %._crit_edge.split.us.us.us, label %scalar.ph174, !llvm.loop !1802

._crit_edge.split.us.us.us:                       ; preds = %scalar.ph174, %middle.block209
  %i.bh = add i32 %i.x, 1
  %i.bi = urem i32 %i.bh, %i.j                    ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.05162.us.us, i64 %i.k
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.064.us.us, i64 %i.k
  %i.bl = add nuw i32 %.05361.us.us, 1            ; 2 uses
  %exitcond82.not = icmp eq i32 %i.bl, %3
  br i1 %exitcond82.not, label %..loopexit_crit_edge, label %.preheader.us.us, !llvm.loop !1803

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.split.us68
  %i.bm = phi i32 [ %i.cy, %._crit_edge.split.us68 ], [ %.promoted, %.preheader.us.preheader ] ; 2 uses
  %.064.us = phi ptr [ %i.da, %._crit_edge.split.us68 ], [ %2, %.preheader.us.preheader ] ; 3 uses
  %.05162.us = phi ptr [ %i.cz, %._crit_edge.split.us68 ], [ %1, %.preheader.us.preheader ] ; 3 uses
  %.05361.us = phi i32 [ %i.db, %._crit_edge.split.us68 ], [ 0, %.preheader.us.preheader ]
  %i.bn = mul i32 %i.bm, %i.d                     ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us
  %i.bo = xor i32 %i.bn, -1
  %i.bp = icmp ult i32 %i.bo, %i.t
  %i.bq = or i1 %i.bp, %i.u
  br i1 %i.bq, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.br = zext i32 %i.bn to i64
  %i.bs = shl nuw nsw i64 %i.br, 2                ; 2 uses
  %i.bt = getelementptr i8, ptr %i.p, i64 %i.bs   ; 3 uses
  %i.bu = getelementptr i8, ptr %scevgep170, i64 %i.bs ; 3 uses
  %bound0125 = icmp ult ptr %1, %i.bu
  %bound1126 = icmp ult ptr %i.bt, %scevgep173
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx128 = or i1 %conflict.rdx, %found.conflict127
  %bound0129 = icmp ult ptr %i.f, %i.bu
  %bound1130 = icmp ult ptr %i.bt, %scevgep172
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx132 = or i1 %conflict.rdx128, %found.conflict131
  %bound0133 = icmp ult ptr %2, %i.bu
  %bound1134 = icmp ult ptr %i.bt, %scevgep171
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx136 = or i1 %conflict.rdx132, %found.conflict135
  br i1 %conflict.rdx136, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bv = load float, ptr %i.f, align 8, !tbaa !452, !alias.scope !1819, !noalias !1820
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bw = load float, ptr %i.g, align 8, !tbaa !450, !alias.scope !1819, !noalias !1820
  %broadcast.splatinsert141 = insertelement <4 x float> poison, float %i.bw, i64 0
  %broadcast.splat142 = shufflevector <4 x float> %broadcast.splatinsert141, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = load float, ptr %i.h, align 4, !tbaa !451, !alias.scope !1819, !noalias !1820
  %broadcast.splatinsert139 = insertelement <4 x float> poison, float %i.bx, i64 0
  %broadcast.splat140 = shufflevector <4 x float> %broadcast.splatinsert139, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.by = trunc nuw i64 %index to i32
  %i.bz = add i32 %i.bn, %i.by
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ca ; 2 uses
  %wide.load = load <4 x float>, ptr %i.cb, align 4, !tbaa !349, !alias.scope !1820 ; 2 uses
  %i.cc = fmul <4 x float> %wide.load, %broadcast.splat
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.05162.us, i64 %index
  store <4 x float> %i.cc, ptr %i.cd, align 4, !tbaa !349, !alias.scope !1821, !noalias !1822
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.064.us, i64 %index
  %wide.load138 = load <4 x float>, ptr %i.ce, align 4, !tbaa !349, !alias.scope !1823, !noalias !1820
  %i.cf = fmul <4 x float> %wide.load138, %broadcast.splat140
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat142, <4 x float> %i.cf)
  store <4 x float> %i.cg, ptr %i.cb, align 4, !tbaa !349, !alias.scope !1820
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !1809

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.us68, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ci = trunc nuw i64 %indvars.iv to i32
  %i.cj = add i32 %i.bn, %i.ci
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ck ; 3 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !349
  %i.cn = load float, ptr %i.f, align 8, !tbaa !452
  %i.co = fmul float %i.cm, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.05162.us, i64 %indvars.iv
  store float %i.co, ptr %i.cp, align 4, !tbaa !349
  %i.cq = load float, ptr %i.cl, align 4, !tbaa !349
  %i.cr = load float, ptr %i.g, align 8, !tbaa !450
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.064.us, i64 %indvars.iv
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !349
  %i.cu = load float, ptr %i.h, align 4, !tbaa !451
  %i.cv = fmul float %i.ct, %i.cu
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cr, float %i.cv)
  store float %i.cw, ptr %i.cl, align 4, !tbaa !349
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %._crit_edge.split.us68, label %scalar.ph, !llvm.loop !1810

._crit_edge.split.us68:                           ; preds = %scalar.ph, %middle.block
  %i.cx = add i32 %i.bm, 1
  %i.cy = urem i32 %i.cx, %i.j                    ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.05162.us, i64 %i.k
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.064.us, i64 %i.k
  %i.db = add nuw i32 %.05361.us, 1               ; 2 uses
  %exitcond76.not = icmp eq i32 %i.db, %3
  br i1 %exitcond76.not, label %..loopexit_crit_edge, label %.preheader.us, !llvm.loop !1803

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %i.dc = phi i32 [ %.promoted, %.preheader.preheader.new ], [ %i.dm, %.preheader ]
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.dd = add i32 %i.dc, 1
  %i.de = urem i32 %i.dd, %i.j
  %.fr = freeze i32 %i.de                         ; 2 uses
  %i.df = add i32 %.fr, 1
  %i.dg = icmp eq i32 %i.df, %i.j
  %i.dh = add i32 %.fr, 2
  %i.di = select i1 %i.dg, i32 1, i32 %i.dh
  %i.dj = urem i32 %i.di, %i.j
  %.fr218 = freeze i32 %i.dj
  %i.dk = add i32 %.fr218, 1                      ; 2 uses
  %i.dl = icmp eq i32 %i.dk, %i.j
  %i.dm = select i1 %i.dl, i32 0, i32 %i.dk       ; 3 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..loopexit_crit_edge.loopexit.unr-lcssa, label %.preheader, !llvm.loop !1803

..loopexit_crit_edge.loopexit.unr-lcssa:          ; preds = %.preheader
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %..loopexit_crit_edge.loopexit.unr-lcssa, %.preheader.preheader
  %.epil.init = phi i32 [ %.promoted, %.preheader.preheader ], [ %i.dm, %..loopexit_crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod217 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod217)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %i.dn = phi i32 [ %i.dp, %.preheader.epil ], [ %.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.do = add i32 %i.dn, 1
  %i.dp = urem i32 %i.do, %i.j                    ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge, label %.preheader.epil, !llvm.loop !1811

..loopexit_crit_edge:                             ; preds = %._crit_edge.split.us68, %._crit_edge.split.us.us.us, %..loopexit_crit_edge.loopexit.unr-lcssa, %.preheader.epil
  %.us-phi = phi i32 [ %i.dp, %.preheader.epil ], [ %i.bi, %._crit_edge.split.us.us.us ], [ %i.dm, %..loopexit_crit_edge.loopexit.unr-lcssa ], [ %i.cy, %._crit_edge.split.us68 ]
  store i32 %.us-phi, ptr %i.e, align 4, !tbaa !448
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader59, %..loopexit_crit_edge, %bb.a
  %.054 = phi i32 [ -2, %bb.a ], [ 0, %..loopexit_crit_edge ], [ 0, %.preheader59 ]
  ret i32 %.054
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #33

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_delay_set_wet(ptr nofree noundef writeonly captures(address_is_null) %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %1, ptr %i.b, align 8, !tbaa !452
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define float @ma_delay_get_wet(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load float, ptr %i.b, align 8, !tbaa !452
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.c, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_delay_set_dry(ptr nofree noundef writeonly captures(address_is_null) %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %1, ptr %i.b, align 4, !tbaa !451
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define float @ma_delay_get_dry(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load float, ptr %i.b, align 4, !tbaa !451
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.c, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_delay_set_decay(ptr nofree noundef writeonly captures(address_is_null) %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %1, ptr %i.b, align 8, !tbaa !450
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
end_hunk_0
