Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_hishelf2_reinit:bb.a
  %i.co = fptosi <4 x double> %i.cn to <4 x i32>
  store <4 x i32> %i.co, ptr %i.cd, align 8, !tbaa !119
  %i.cp = extractelement <2 x double> %i.ck, i64 1
  %i.cq = fmul double %i.cp, 1.638400e+04
  %i.cr = fptosi double %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !119
  br label %ma_biquad_reinit.exit

ma_biquad_reinit.exit:                            ; preds = %bb.e, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ -3, %bb.e ], [ 0, %bb.f ], [ -2, %bb.b ], [ -2, %bb.c ], [ -3, %bb.d ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define range(i32 -2, 1) i32 @ma_hishelf2_process_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3) local_unnamed_addr #29 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

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
  %i.k = zext i32 %i.d to i64                     ; 14 uses
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
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !449  ; 8 uses
  %i.q = add nsw i64 %i.k, -1                     ; 4 uses
  %i.r = add i32 %3, -1
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = add nuw nsw i64 %i.t, 4
  %i.v = mul i64 %i.u, %i.k                       ; 2 uses
  %scevgep169 = getelementptr i8, ptr %2, i64 %i.v ; 4 uses
  %scevgep170.a = getelementptr i8, ptr %0, i64 28 ; 4 uses
  %scevgep171 = getelementptr i8, ptr %1, i64 %i.v ; 6 uses
  br i1 %.not.us, label %.preheader.us.us.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split.us
  %min.iters.check = icmp ult i32 %i.d, 8
  %i.w = trunc i64 %i.q to i32
  %i.x = icmp ugt i64 %i.q, 4294967295
  %bound0 = icmp ult ptr %1, %scevgep170.a
  %bound1 = icmp ult ptr %i.f, %scevgep171
  %found.conflict = and i1 %bound0, %bound1
  %bound0121 = icmp ult ptr %1, %scevgep169
  %bound1122 = icmp ult ptr %2, %scevgep171
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx = or i1 %found.conflict, %found.conflict123
  %n.vec = and i64 %i.k, 4294967292               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.k
  br label %.preheader.us

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.us
  %min.iters.check173 = icmp ult i32 %i.d, 8
  %i.y = trunc i64 %i.q to i32
  %i.z = icmp ugt i64 %i.q, 4294967295
  %bound0175 = icmp ult ptr %1, %scevgep170.a
  %bound1176 = icmp ult ptr %i.f, %scevgep171
  %found.conflict177 = and i1 %bound0175, %bound1176
  %bound0178 = icmp ult ptr %1, %scevgep169
  %bound1179 = icmp ult ptr %2, %scevgep171
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %found.conflict177, %found.conflict180
  %n.vec195 = and i64 %i.k, 4294967292            ; 3 uses
  %cmp.n208 = icmp eq i64 %n.vec195, %i.k
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.split.us.us.us
  %i.aa = phi i32 [ %i.bl, %._crit_edge.split.us.us.us ], [ %.promoted, %.preheader.us.us.preheader ] ; 2 uses
  %.064.us.us = phi ptr [ %i.bn, %._crit_edge.split.us.us.us ], [ %2, %.preheader.us.us.preheader ] ; 3 uses
  %.05162.us.us = phi ptr [ %i.bm, %._crit_edge.split.us.us.us ], [ %1, %.preheader.us.us.preheader ] ; 3 uses
  %.05361.us.us = phi i32 [ %i.bo, %._crit_edge.split.us.us.us ], [ 0, %.preheader.us.us.preheader ]
  %i.ab = mul i32 %i.aa, %i.d                     ; 4 uses
  br i1 %min.iters.check173, label %scalar.ph172.preheader, label %vector.scevcheck142

vector.scevcheck142:                              ; preds = %.preheader.us.us
  %i.ac = xor i32 %i.ab, -1
  %i.ad = icmp ult i32 %i.ac, %i.y
  %i.ae = or i1 %i.ad, %i.z
  br i1 %i.ae, label %scalar.ph172.preheader, label %vector.memcheck174

vector.memcheck174:                               ; preds = %vector.scevcheck142
  %i.af = zext i32 %i.ab to i64                   ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 2
  %i.ah = getelementptr i8, ptr %i.p, i64 %i.ag   ; 3 uses
  %4 = add nuw nsw i64 %i.k, %i.af
  %5 = shl nuw nsw i64 %4, 2
  %i.ai = getelementptr i8, ptr %i.p, i64 %5      ; 3 uses
  %bound0182 = icmp ult ptr %1, %i.ai
  %bound1183 = icmp ult ptr %i.ah, %scevgep171
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %conflict.rdx181, %found.conflict184
  %bound0186 = icmp ult ptr %i.f, %i.ai
  %bound1187 = icmp ult ptr %i.ah, %scevgep170.a
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %conflict.rdx185, %found.conflict188
  %bound0190 = icmp ult ptr %2, %i.ai
  %bound1191 = icmp ult ptr %i.ah, %scevgep169
  %found.conflict192 = and i1 %bound0190, %bound1191
  %conflict.rdx193 = or i1 %conflict.rdx189, %found.conflict192
  br i1 %conflict.rdx193, label %scalar.ph172.preheader, label %vector.ph194

vector.ph194:                                     ; preds = %vector.memcheck174
  %i.aj = load float, ptr %i.g, align 8, !tbaa !450, !alias.scope !1814, !noalias !1815
  %broadcast.splatinsert202.a = insertelement <4 x float> poison, float %i.aj, i64 0
  %broadcast.splat203.a = shufflevector <4 x float> %broadcast.splatinsert202.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ak = load float, ptr %i.h, align 4, !tbaa !451, !alias.scope !1814, !noalias !1815
  %broadcast.splatinsert200 = insertelement <4 x float> poison, float %i.ak, i64 0
  %broadcast.splat201 = shufflevector <4 x float> %broadcast.splatinsert200, <4 x float> poison, <4 x i32> zeroinitializer
  %i.al = load float, ptr %i.f, align 8, !tbaa !452, !alias.scope !1814, !noalias !1815
  %broadcast.splatinsert204 = insertelement <4 x float> poison, float %i.al, i64 0
  %broadcast.splat205 = shufflevector <4 x float> %broadcast.splatinsert204, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph194
  %index197 = phi i64 [ 0, %vector.ph194 ], [ %index.next206, %vector.body196 ] ; 4 uses
  %i.am = trunc nuw i64 %index197 to i32
  %i.an = add i32 %i.ab, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ao ; 2 uses
  %wide.load198 = load <4 x float>, ptr %i.ap, align 4, !tbaa !349, !alias.scope !1815
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.064.us.us, i64 %index197
  %wide.load199 = load <4 x float>, ptr %i.aq, align 4, !tbaa !349, !alias.scope !1816, !noalias !1815
  %i.ar = fmul <4 x float> %wide.load199, %broadcast.splat201
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load198, <4 x float> %broadcast.splat203.a, <4 x float> %i.ar) ; 2 uses
  store <4 x float> %i.as, ptr %i.ap, align 4, !tbaa !349, !alias.scope !1815
  %i.at = fmul <4 x float> %i.as, %broadcast.splat205
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.05162.us.us, i64 %index197
  store <4 x float> %i.at, ptr %i.au, align 4, !tbaa !349, !alias.scope !1817, !noalias !1818
  %index.next206 = add nuw i64 %index197, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next206, %n.vec195
  br i1 %i.av, label %middle.block207, label %vector.body196, !llvm.loop !1801

middle.block207:                                  ; preds = %vector.body196
  br i1 %cmp.n208, label %._crit_edge.split.us.us.us, label %scalar.ph172.preheader

scalar.ph172.preheader:                           ; preds = %vector.memcheck174, %vector.scevcheck142, %.preheader.us.us, %middle.block207
  %indvars.iv77.ph = phi i64 [ 0, %vector.memcheck174 ], [ 0, %vector.scevcheck142 ], [ 0, %.preheader.us.us ], [ %n.vec195, %middle.block207 ]
  br label %scalar.ph172

scalar.ph172:                                     ; preds = %scalar.ph172.preheader, %scalar.ph172
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %scalar.ph172 ], [ %indvars.iv77.ph, %scalar.ph172.preheader ] ; 4 uses
  %i.aw = trunc nuw i64 %indvars.iv77 to i32
  %i.ax = add i32 %i.ab, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ay ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !349
  %i.bb = load float, ptr %i.g, align 8, !tbaa !450
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.064.us.us, i64 %indvars.iv77
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !349
  %i.be = load float, ptr %i.h, align 4, !tbaa !451
  %i.bf = fmul float %i.bd, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.bb, float %i.bf) ; 2 uses
  store float %i.bg, ptr %i.az, align 4, !tbaa !349
  %i.bh = load float, ptr %i.f, align 8, !tbaa !452
  %i.bi = fmul float %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.05162.us.us, i64 %indvars.iv77
  store float %i.bi, ptr %i.bj, align 4, !tbaa !349
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %i.k
  br i1 %exitcond81.not, label %._crit_edge.split.us.us.us, label %scalar.ph172, !llvm.loop !1802

._crit_edge.split.us.us.us:                       ; preds = %scalar.ph172, %middle.block207
  %i.bk = add i32 %i.aa, 1
  %i.bl = urem i32 %i.bk, %i.j                    ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.05162.us.us, i64 %i.k
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.064.us.us, i64 %i.k
  %i.bo = add nuw i32 %.05361.us.us, 1            ; 2 uses
  %exitcond82.not = icmp eq i32 %i.bo, %3
  br i1 %exitcond82.not, label %..loopexit_crit_edge, label %.preheader.us.us, !llvm.loop !1803

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.split.us68
  %i.bp = phi i32 [ %i.db, %._crit_edge.split.us68 ], [ %.promoted, %.preheader.us.preheader ] ; 2 uses
  %.064.us = phi ptr [ %i.dd, %._crit_edge.split.us68 ], [ %2, %.preheader.us.preheader ] ; 3 uses
  %.05162.us = phi ptr [ %i.dc, %._crit_edge.split.us68 ], [ %1, %.preheader.us.preheader ] ; 3 uses
  %.05361.us = phi i32 [ %i.de, %._crit_edge.split.us68 ], [ 0, %.preheader.us.preheader ]
  %i.bq = mul i32 %i.bp, %i.d                     ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us
  %i.br = xor i32 %i.bq, -1
  %i.bs = icmp ult i32 %i.br, %i.w
  %i.bt = or i1 %i.bs, %i.x
  br i1 %i.bt, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bu = zext i32 %i.bq to i64                   ; 2 uses
  %i.bv = shl nuw nsw i64 %i.bu, 2
  %i.bw = getelementptr i8, ptr %i.p, i64 %i.bv   ; 3 uses
  %6 = add nuw nsw i64 %i.k, %i.bu
  %7 = shl nuw nsw i64 %6, 2
  %i.bx = getelementptr i8, ptr %i.p, i64 %7      ; 3 uses
  %bound0124 = icmp ult ptr %1, %i.bx
  %bound1125 = icmp ult ptr %i.bw, %scevgep171
  %found.conflict126 = and i1 %bound0124, %bound1125
  %conflict.rdx127 = or i1 %conflict.rdx, %found.conflict126
  %bound0128 = icmp ult ptr %i.f, %i.bx
  %bound1129 = icmp ult ptr %i.bw, %scevgep170.a
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx131 = or i1 %conflict.rdx127, %found.conflict130
  %bound0132 = icmp ult ptr %2, %i.bx
  %bound1133 = icmp ult ptr %i.bw, %scevgep169
  %found.conflict134 = and i1 %bound0132, %bound1133
  %conflict.rdx135 = or i1 %conflict.rdx131, %found.conflict134
  br i1 %conflict.rdx135, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.by = load float, ptr %i.f, align 8, !tbaa !452, !alias.scope !1819, !noalias !1820
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bz = load float, ptr %i.g, align 8, !tbaa !450, !alias.scope !1819, !noalias !1820
  %broadcast.splatinsert140 = insertelement <4 x float> poison, float %i.bz, i64 0
  %broadcast.splat141 = shufflevector <4 x float> %broadcast.splatinsert140, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ca = load float, ptr %i.h, align 4, !tbaa !451, !alias.scope !1819, !noalias !1820
  %broadcast.splatinsert138 = insertelement <4 x float> poison, float %i.ca, i64 0
  %broadcast.splat139 = shufflevector <4 x float> %broadcast.splatinsert138, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cb = trunc nuw i64 %index to i32
  %i.cc = add i32 %i.bq, %i.cb
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.cd ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ce, align 4, !tbaa !349, !alias.scope !1820 ; 2 uses
  %i.cf = fmul <4 x float> %wide.load, %broadcast.splat
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.05162.us, i64 %index
  store <4 x float> %i.cf, ptr %i.cg, align 4, !tbaa !349, !alias.scope !1821, !noalias !1822
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.064.us, i64 %index
  %wide.load137 = load <4 x float>, ptr %i.ch, align 4, !tbaa !349, !alias.scope !1823, !noalias !1820
  %i.ci = fmul <4 x float> %wide.load137, %broadcast.splat139
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat141, <4 x float> %i.ci)
  store <4 x float> %i.cj, ptr %i.ce, align 4, !tbaa !349, !alias.scope !1820
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !1809

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.us68, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cl = trunc nuw i64 %indvars.iv to i32
  %i.cm = add i32 %i.bq, %i.cl
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.cn ; 3 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !349
  %i.cq = load float, ptr %i.f, align 8, !tbaa !452
  %i.cr = fmul float %i.cp, %i.cq
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.05162.us, i64 %indvars.iv
  store float %i.cr, ptr %i.cs, align 4, !tbaa !349
  %i.ct = load float, ptr %i.co, align 4, !tbaa !349
  %i.cu = load float, ptr %i.g, align 8, !tbaa !450
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.064.us, i64 %indvars.iv
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !349
  %i.cx = load float, ptr %i.h, align 4, !tbaa !451
  %i.cy = fmul float %i.cw, %i.cx
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.cu, float %i.cy)
  store float %i.cz, ptr %i.co, align 4, !tbaa !349
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %._crit_edge.split.us68, label %scalar.ph, !llvm.loop !1810

._crit_edge.split.us68:                           ; preds = %scalar.ph, %middle.block
  %i.da = add i32 %i.bp, 1
  %i.db = urem i32 %i.da, %i.j                    ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.05162.us, i64 %i.k
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.064.us, i64 %i.k
  %i.de = add nuw i32 %.05361.us, 1               ; 2 uses
  %exitcond76.not = icmp eq i32 %i.de, %3
  br i1 %exitcond76.not, label %..loopexit_crit_edge, label %.preheader.us, !llvm.loop !1803

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %i.df = phi i32 [ %.promoted, %.preheader.preheader.new ], [ %i.dp, %.preheader ]
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.dg = add i32 %i.df, 1
  %i.dh = urem i32 %i.dg, %i.j
  %.fr = freeze i32 %i.dh                         ; 2 uses
  %i.di = add i32 %.fr, 1
  %i.dj = icmp eq i32 %i.di, %i.j
  %i.dk = add i32 %.fr, 2
  %i.dl = select i1 %i.dj, i32 1, i32 %i.dk
  %i.dm = urem i32 %i.dl, %i.j
  %.fr216 = freeze i32 %i.dm
  %i.dn = add i32 %.fr216, 1                      ; 2 uses
  %i.do = icmp eq i32 %i.dn, %i.j
  %i.dp = select i1 %i.do, i32 0, i32 %i.dn       ; 3 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..loopexit_crit_edge.loopexit.unr-lcssa, label %.preheader, !llvm.loop !1803

..loopexit_crit_edge.loopexit.unr-lcssa:          ; preds = %.preheader
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %..loopexit_crit_edge.loopexit.unr-lcssa, %.preheader.preheader
  %.epil.init = phi i32 [ %.promoted, %.preheader.preheader ], [ %i.dp, %..loopexit_crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod215 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod215)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %i.dq = phi i32 [ %i.ds, %.preheader.epil ], [ %.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.dr = add i32 %i.dq, 1
  %i.ds = urem i32 %i.dr, %i.j                    ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge, label %.preheader.epil, !llvm.loop !1811

..loopexit_crit_edge:                             ; preds = %._crit_edge.split.us68, %._crit_edge.split.us.us.us, %..loopexit_crit_edge.loopexit.unr-lcssa, %.preheader.epil
  %.us-phi = phi i32 [ %i.ds, %.preheader.epil ], [ %i.bl, %._crit_edge.split.us.us.us ], [ %i.dp, %..loopexit_crit_edge.loopexit.unr-lcssa ], [ %i.db, %._crit_edge.split.us68 ]
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
end_hunk_0
