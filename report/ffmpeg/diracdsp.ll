Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/diracdsp?download=true
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_diracdsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 224), (232, 344)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  store <4 x ptr> <ptr @add_rect_clamped_c, ptr @add_obmc8_c, ptr @add_obmc16_c, ptr @add_obmc32_c>, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296
  store <4 x ptr> <ptr @weight_dirac_pixels8_c, ptr @weight_dirac_pixels16_c, ptr @weight_dirac_pixels32_c, ptr @biweight_dirac_pixels8_c>, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr @biweight_dirac_pixels16_c, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr @biweight_dirac_pixels32_c, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  store <4 x ptr> <ptr @dequant_subband_int16_t_c, ptr @dequant_subband_int32_t_c, ptr @dequant_subband_int16_t_c, ptr @dequant_subband_int32_t_c>, ptr %i.e, align 8, !tbaa !20
  store <4 x ptr> <ptr @dirac_hpel_filter, ptr @ff_put_dirac_pixels8_c, ptr @ff_put_dirac_pixels8_l2_c, ptr @ff_put_dirac_pixels8_l4_c>, ptr %0, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x ptr> <ptr @ff_put_dirac_pixels8_bilinear_c, ptr @ff_put_dirac_pixels16_c, ptr @ff_put_dirac_pixels16_l2_c, ptr @ff_put_dirac_pixels16_l4_c>, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x ptr> <ptr @ff_put_dirac_pixels16_bilinear_c, ptr @ff_put_dirac_pixels32_c, ptr @ff_put_dirac_pixels32_l2_c, ptr @ff_put_dirac_pixels32_l4_c>, ptr %i.g, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x ptr> <ptr @ff_put_dirac_pixels32_bilinear_c, ptr @ff_avg_dirac_pixels8_c, ptr @ff_avg_dirac_pixels8_l2_c, ptr @ff_avg_dirac_pixels8_l4_c>, ptr %i.h, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <4 x ptr> <ptr @ff_avg_dirac_pixels8_bilinear_c, ptr @ff_avg_dirac_pixels16_c, ptr @ff_avg_dirac_pixels16_l2_c, ptr @ff_avg_dirac_pixels16_l4_c>, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <4 x ptr> <ptr @ff_avg_dirac_pixels16_bilinear_c, ptr @ff_avg_dirac_pixels32_c, ptr @ff_avg_dirac_pixels32_l2_c, ptr @ff_avg_dirac_pixels32_l4_c>, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <4 x ptr> <ptr @ff_avg_dirac_pixels32_bilinear_c, ptr @put_signed_rect_clamped_8bit_c, ptr @put_signed_rect_clamped_10bit_c, ptr @put_signed_rect_clamped_12bit_c>, ptr %i.k, align 8, !tbaa !20
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @dirac_hpel_filter(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #1 {
bb.a:
  %i.a = icmp sgt i32 %6, 0
  br i1 %i.a, label %.preheader108.lr.ph, label %._crit_edge119

.preheader108.lr.ph:                              ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %3 to i64
  %i.d = icmp sgt i32 %5, -8
  %i.e = sext i32 %4 to i64                       ; 11 uses
  %i.f = sub nsw i32 0, %4
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = shl i32 %4, 1
  %i.i = sext i32 %i.h to i64                     ; 4 uses
  %i.j = icmp sgt i32 %5, 0
  %i.k = add i32 %5, 4
  %smax = tail call i32 @llvm.smax.i32(i32 %i.k, i32 -3) ; 3 uses
  %i.l = add i32 %smax, 1
  %wide.trip.count = zext i32 %5 to i64           ; 13 uses
  %wide.trip.count128 = zext nneg i32 %5 to i64
  %i.m = add nsw i32 %6, -1
  %i.n = zext i32 %i.m to i64
  %i.o = mul nsw i64 %i.e, %i.n
  %i.p = add i64 %i.o, %wide.trip.count           ; 2 uses
  %i.q = getelementptr i8, ptr %3, i64 %i.p
  %scevgep = getelementptr i8, ptr %i.q, i64 4
  %scevgep135 = getelementptr i8, ptr %3, i64 -3
  %scevgep136 = getelementptr i8, ptr %0, i64 %i.p
  %i.r = add nsw i32 %6, -1
  %i.s = zext i32 %i.r to i64
  %i.t = mul nsw i64 %i.e, %i.s
  %i.u = add i64 %i.t, %wide.trip.count           ; 2 uses
  %i.v = getelementptr i8, ptr %1, i64 %i.u
  %scevgep165 = getelementptr i8, ptr %i.v, i64 4
  %scevgep166 = getelementptr i8, ptr %1, i64 -3
  %scevgep167 = getelementptr i8, ptr %2, i64 %i.u
  %7 = insertelement <4 x i32> poison, i32 %4, i64 0
  %8 = shufflevector <4 x i32> %7, <4 x i32> poison, <4 x i32> zeroinitializer
  %9 = mul <4 x i32> %8, <i32 4, i32 -3, i32 3, i32 -2>
  %10 = mul i32 %4, -3
  %11 = sext i32 %10 to i64                       ; 3 uses
  %12 = sext <4 x i32> %9 to <4 x i64>            ; 10 uses
  %i.w = add i64 %i.b, %i.e
  %13 = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %14 = insertelement <2 x i64> poison, i64 %i.c, i64 0 ; 2 uses
  %15 = sub <2 x i64> %13, %14                    ; 2 uses
  %16 = shufflevector <2 x i64> %15, <2 x i64> poison, <2 x i32> <i32 poison, i32 0>
  %17 = add i32 %smax, 4                          ; 2 uses
  %18 = zext i32 %17 to i64                       ; 5 uses
  %19 = insertelement <8 x i64> <i64 poison, i64 poison, i64 poison, i64 1, i64 poison, i64 poison, i64 poison, i64 poison>, i64 %i.w, i64 2
  %20 = shufflevector <2 x i64> %15, <2 x i64> poison, <8 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <8 x i64> %20, <8 x i64> %19, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 10, i32 1, i32 11>
  %22 = shufflevector <2 x i64> %14, <2 x i64> %16, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 3>
  %i.x = insertelement <8 x i64> %22, i64 %i.i, i64 4
  %23 = insertelement <8 x i64> %i.x, i64 %i.e, i64 6
  %24 = shufflevector <4 x i64> %12, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %25 = shufflevector <8 x i64> %24, <8 x i64> %23, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %min.iters.check226 = icmp ugt i32 %smax, -5
  %i.y = sub <8 x i64> %25, %21                   ; 2 uses
  %i.z = icmp ugt <8 x i64> %i.y, <i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 15>
  %i.aa = icmp ult <8 x i64> %i.y, <i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 15>
  %i.ab = shufflevector <8 x i1> %i.z, <8 x i1> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 15>
  %i.ac = bitcast <8 x i1> %i.ab to i8
  %.not = icmp eq i8 %i.ac, 0
  %min.iters.check242 = icmp ult i32 %17, 16
  %i.ad = and i64 %18, 12
  %n.vec244 = and i64 %18, 4294967280             ; 4 uses
  %i.ae = add nsw i64 %n.vec244, -3
  %26 = extractelement <4 x i64> %12, i64 0
  %27 = extractelement <4 x i64> %12, i64 2
  %28 = extractelement <4 x i64> %12, i64 3
  %cmp.n257 = icmp eq i64 %n.vec244, %18
  %min.epilog.iters.check261 = icmp eq i64 %i.ad, 0
  %n.vec264 = and i64 %18, 4294967292             ; 3 uses
  %i.af = add nsw i64 %n.vec264, -3
  %29 = extractelement <4 x i64> %12, i64 0
  %30 = extractelement <4 x i64> %12, i64 2
  %31 = extractelement <4 x i64> %12, i64 3
  %cmp.n277 = icmp eq i64 %n.vec264, %18
  %32 = extractelement <4 x i64> %12, i64 3
  %33 = extractelement <4 x i64> %12, i64 2
  %34 = extractelement <4 x i64> %12, i64 0
  %min.iters.check168 = icmp ult i32 %5, 4
  %bound0170 = icmp ult ptr %2, %scevgep165
  %bound1171 = icmp ult ptr %scevgep166, %scevgep167
  %found.conflict172 = and i1 %bound0170, %bound1171
  %stride.check173 = icmp slt i32 %4, 0
  %i.ag = or i1 %found.conflict172, %stride.check173
  %min.iters.check175 = icmp ult i32 %5, 16
  %i.ah = and i64 %wide.trip.count, 12
  %n.vec177 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n190 = icmp eq i64 %n.vec177, %wide.trip.count
  %min.epilog.iters.check194 = icmp eq i64 %i.ah, 0
  %n.vec197 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n210 = icmp eq i64 %n.vec197, %wide.trip.count
  %min.iters.check = icmp ult i32 %5, 4
  %bound0 = icmp ult ptr %0, %scevgep
  %bound1 = icmp ult ptr %scevgep135, %scevgep136
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %4, 0
  %i.ai = or i1 %found.conflict, %stride.check
  %min.iters.check137 = icmp ult i32 %5, 16
  %i.aj = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  %n.vec145 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n156 = icmp eq i64 %n.vec145, %wide.trip.count
  br label %.preheader108

.preheader108:                                    ; preds = %.preheader108.lr.ph, %._crit_edge
  %.0118 = phi i32 [ 0, %.preheader108.lr.ph ], [ %i.mk, %._crit_edge ]
  %.082117 = phi ptr [ %0, %.preheader108.lr.ph ], [ %i.mh, %._crit_edge ] ; 4 uses
  %.083116 = phi ptr [ %1, %.preheader108.lr.ph ], [ %i.mi, %._crit_edge ] ; 7 uses
  %.084115 = phi ptr [ %2, %.preheader108.lr.ph ], [ %i.mj, %._crit_edge ] ; 4 uses
  %.085114 = phi ptr [ %3, %.preheader108.lr.ph ], [ %i.mg, %._crit_edge ] ; 7 uses
  br i1 %i.d, label %iter.check258, label %._crit_edge

iter.check258:                                    ; preds = %.preheader108
  %.not.not = xor i1 %.not, true
  %brmerge = select i1 %min.iters.check226, i1 true, i1 %.not.not
  br i1 %brmerge, label %.lr.ph.preheader, label %vector.main.loop.iter.check241

vector.main.loop.iter.check241:                   ; preds = %iter.check258
  br i1 %min.iters.check242, label %vec.epilog.ph262, label %vector.body245

vector.body245:                                   ; preds = %vector.main.loop.iter.check241, %vector.body245
  %index246 = phi i64 [ %index.next255, %vector.body245 ], [ 0, %vector.main.loop.iter.check241 ] ; 2 uses
  %i.ak = add i64 %index246, -3                   ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.085114, i64 %i.ak ; 8 uses
  %wide.load247 = load <16 x i8>, ptr %i.al, align 1, !tbaa !10
  %i.am = zext <16 x i8> %wide.load247 to <16 x i32>
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %i.e
  %wide.load248 = load <16 x i8>, ptr %i.an, align 1, !tbaa !10
  %i.ao = zext <16 x i8> %wide.load248 to <16 x i32>
  %i.ap = add nuw nsw <16 x i32> %i.ao, %i.am
  %i.aq = mul nuw nsw <16 x i32> %i.ap, splat (i32 21)
  %i.ar = getelementptr inbounds i8, ptr %i.al, i64 %i.g
  %wide.load249 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !10
  %i.as = zext <16 x i8> %wide.load249 to <16 x i32>
  %i.at = getelementptr inbounds i8, ptr %i.al, i64 %i.i
  %wide.load250 = load <16 x i8>, ptr %i.at, align 1, !tbaa !10
  %i.au = zext <16 x i8> %wide.load250 to <16 x i32>
  %i.av = add nuw nsw <16 x i32> %i.au, %i.as
  %i.aw = mul nsw <16 x i32> %i.av, splat (i32 -7)
  %i.ax = getelementptr inbounds i8, ptr %i.al, i64 %28
  %wide.load251 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !10
  %i.ay = zext <16 x i8> %wide.load251 to <16 x i32>
  %i.az = getelementptr inbounds i8, ptr %i.al, i64 %27
  %wide.load252 = load <16 x i8>, ptr %i.az, align 1, !tbaa !10
  %i.ba = zext <16 x i8> %wide.load252 to <16 x i32>
  %i.bb = add nuw nsw <16 x i32> %i.ba, %i.ay
  %i.bc = mul nuw nsw <16 x i32> %i.bb, splat (i32 3)
  %i.bd = getelementptr inbounds i8, ptr %i.al, i64 %11
  %wide.load253 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !10
  %i.be = zext <16 x i8> %wide.load253 to <16 x i32>
  %i.bf = getelementptr inbounds i8, ptr %i.al, i64 %26
  %wide.load254 = load <16 x i8>, ptr %i.bf, align 1, !tbaa !10
  %i.bg = zext <16 x i8> %wide.load254 to <16 x i32>
  %i.bh = add nuw nsw <16 x i32> %i.aq, splat (i32 16)
  %i.bi = add nsw <16 x i32> %i.bh, %i.aw
  %i.bj = add nsw <16 x i32> %i.bi, %i.bc
  %i.bk = add nuw nsw <16 x i32> %i.be, %i.bg
  %i.bl = sub nsw <16 x i32> %i.bj, %i.bk
  %i.bm = ashr <16 x i32> %i.bl, splat (i32 5)
  %i.bn = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.bm, <16 x i32> zeroinitializer)
  %i.bo = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.bn, <16 x i32> splat (i32 255))
  %i.bp = trunc nuw <16 x i32> %i.bo to <16 x i8>
  %i.bq = getelementptr inbounds i8, ptr %.083116, i64 %i.ak
  store <16 x i8> %i.bp, ptr %i.bq, align 1, !tbaa !10
  %index.next255 = add nuw i64 %index246, 16      ; 2 uses
  %i.br = icmp eq i64 %index.next255, %n.vec244
  br i1 %i.br, label %middle.block256, label %vector.body245, !llvm.loop !21

middle.block256:                                  ; preds = %vector.body245
  br i1 %cmp.n257, label %.preheader107, label %vec.epilog.iter.check259

vec.epilog.iter.check259:                         ; preds = %middle.block256
  br i1 %min.epilog.iters.check261, label %.lr.ph.preheader, label %vec.epilog.ph262, !prof !37

vec.epilog.ph262:                                 ; preds = %vector.main.loop.iter.check241, %vec.epilog.iter.check259
  %vec.epilog.resume.val263 = phi i64 [ %n.vec244, %vec.epilog.iter.check259 ], [ 0, %vector.main.loop.iter.check241 ]
  br label %vec.epilog.vector.body265

vec.epilog.vector.body265:                        ; preds = %vec.epilog.vector.body265, %vec.epilog.ph262
  %index266 = phi i64 [ %vec.epilog.resume.val263, %vec.epilog.ph262 ], [ %index.next275, %vec.epilog.vector.body265 ] ; 2 uses
  %i.bs = add i64 %index266, -3                   ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %.085114, i64 %i.bs ; 8 uses
  %wide.load267 = load <4 x i8>, ptr %i.bt, align 1, !tbaa !10
  %i.bu = zext <4 x i8> %wide.load267 to <4 x i32>
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 %i.e
  %wide.load268 = load <4 x i8>, ptr %i.bv, align 1, !tbaa !10
  %i.bw = zext <4 x i8> %wide.load268 to <4 x i32>
  %i.bx = add nuw nsw <4 x i32> %i.bw, %i.bu
  %i.by = mul nuw nsw <4 x i32> %i.bx, splat (i32 21)
  %i.bz = getelementptr inbounds i8, ptr %i.bt, i64 %i.g
  %wide.load269 = load <4 x i8>, ptr %i.bz, align 1, !tbaa !10
  %i.ca = zext <4 x i8> %wide.load269 to <4 x i32>
  %i.cb = getelementptr inbounds i8, ptr %i.bt, i64 %i.i
  %wide.load270 = load <4 x i8>, ptr %i.cb, align 1, !tbaa !10
  %i.cc = zext <4 x i8> %wide.load270 to <4 x i32>
  %i.cd = add nuw nsw <4 x i32> %i.cc, %i.ca
  %i.ce = mul nsw <4 x i32> %i.cd, splat (i32 -7)
  %i.cf = getelementptr inbounds i8, ptr %i.bt, i64 %31
  %wide.load271 = load <4 x i8>, ptr %i.cf, align 1, !tbaa !10
  %i.cg = zext <4 x i8> %wide.load271 to <4 x i32>
  %i.ch = getelementptr inbounds i8, ptr %i.bt, i64 %30
  %wide.load272 = load <4 x i8>, ptr %i.ch, align 1, !tbaa !10
  %i.ci = zext <4 x i8> %wide.load272 to <4 x i32>
  %i.cj = add nuw nsw <4 x i32> %i.ci, %i.cg
  %i.ck = mul nuw nsw <4 x i32> %i.cj, splat (i32 3)
  %i.cl = getelementptr inbounds i8, ptr %i.bt, i64 %11
  %wide.load273 = load <4 x i8>, ptr %i.cl, align 1, !tbaa !10
  %i.cm = zext <4 x i8> %wide.load273 to <4 x i32>
  %i.cn = getelementptr inbounds i8, ptr %i.bt, i64 %29
  %wide.load274 = load <4 x i8>, ptr %i.cn, align 1, !tbaa !10
  %i.co = zext <4 x i8> %wide.load274 to <4 x i32>
  %i.cp = add nuw nsw <4 x i32> %i.by, splat (i32 16)
  %i.cq = add nsw <4 x i32> %i.cp, %i.ce
  %i.cr = add nsw <4 x i32> %i.cq, %i.ck
  %i.cs = add nuw nsw <4 x i32> %i.cm, %i.co
  %i.ct = sub nsw <4 x i32> %i.cr, %i.cs
  %i.cu = ashr <4 x i32> %i.ct, splat (i32 5)
  %i.cv = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cu, <4 x i32> zeroinitializer)
  %i.cw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cv, <4 x i32> splat (i32 255))
  %i.cx = trunc nuw <4 x i32> %i.cw to <4 x i8>
  %i.cy = getelementptr inbounds i8, ptr %.083116, i64 %i.bs
  store <4 x i8> %i.cx, ptr %i.cy, align 1, !tbaa !10
  %index.next275 = add nuw i64 %index266, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next275, %n.vec264
  br i1 %i.cz, label %vec.epilog.middle.block276, label %vec.epilog.vector.body265, !llvm.loop !22

vec.epilog.middle.block276:                       ; preds = %vec.epilog.vector.body265
  br i1 %cmp.n277, label %.preheader107, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check258, %vec.epilog.iter.check259, %vec.epilog.middle.block276
  %indvars.iv.ph = phi i64 [ -3, %iter.check258 ], [ %i.af, %vec.epilog.middle.block276 ], [ %i.ae, %vec.epilog.iter.check259 ]
  br label %.lr.ph

.preheader107:                                    ; preds = %.lr.ph, %vec.epilog.middle.block276, %middle.block256
  br i1 %i.j, label %iter.check191, label %._crit_edge

iter.check191:                                    ; preds = %.preheader107
  %brmerge279 = select i1 %min.iters.check168, i1 true, i1 %i.ag
  br i1 %brmerge279, label %.lr.ph111.preheader, label %vector.main.loop.iter.check174

vector.main.loop.iter.check174:                   ; preds = %iter.check191
  br i1 %min.iters.check175, label %vec.epilog.ph195, label %vector.body178

vector.body178:                                   ; preds = %vector.main.loop.iter.check174, %vector.body178
  %index179 = phi i64 [ %index.next188, %vector.body178 ], [ 0, %vector.main.loop.iter.check174 ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.083116, i64 %index179 ; 8 uses
  %wide.load180 = load <16 x i8>, ptr %i.da, align 1, !tbaa !10, !alias.scope !38
  %i.db = zext <16 x i8> %wide.load180 to <16 x i32>
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %wide.load181 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !10, !alias.scope !38
  %i.dd = zext <16 x i8> %wide.load181 to <16 x i32>
  %i.de = add nuw nsw <16 x i32> %i.dd, %i.db
  %i.df = mul nuw nsw <16 x i32> %i.de, splat (i32 21)
  %i.dg = getelementptr inbounds i8, ptr %i.da, i64 -1
  %wide.load182 = load <16 x i8>, ptr %i.dg, align 1, !tbaa !10, !alias.scope !38
  %i.dh = zext <16 x i8> %wide.load182 to <16 x i32>
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %wide.load183 = load <16 x i8>, ptr %i.di, align 1, !tbaa !10, !alias.scope !38
  %i.dj = zext <16 x i8> %wide.load183 to <16 x i32>
  %i.dk = add nuw nsw <16 x i32> %i.dj, %i.dh
  %i.dl = mul nsw <16 x i32> %i.dk, splat (i32 -7)
  %i.dm = getelementptr inbounds i8, ptr %i.da, i64 -2
  %wide.load184 = load <16 x i8>, ptr %i.dm, align 1, !tbaa !10, !alias.scope !38
  %i.dn = zext <16 x i8> %wide.load184 to <16 x i32>
  %i.do = getelementptr inbounds nuw i8, ptr %i.da, i64 3
  %wide.load185 = load <16 x i8>, ptr %i.do, align 1, !tbaa !10, !alias.scope !38
  %i.dp = zext <16 x i8> %wide.load185 to <16 x i32>
  %i.dq = add nuw nsw <16 x i32> %i.dp, %i.dn
  %i.dr = mul nuw nsw <16 x i32> %i.dq, splat (i32 3)
  %i.ds = getelementptr inbounds i8, ptr %i.da, i64 -3
  %wide.load186 = load <16 x i8>, ptr %i.ds, align 1, !tbaa !10, !alias.scope !38
  %i.dt = zext <16 x i8> %wide.load186 to <16 x i32>
  %i.du = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %wide.load187 = load <16 x i8>, ptr %i.du, align 1, !tbaa !10, !alias.scope !38
  %i.dv = zext <16 x i8> %wide.load187 to <16 x i32>
  %i.dw = add nuw nsw <16 x i32> %i.df, splat (i32 16)
  %i.dx = add nsw <16 x i32> %i.dw, %i.dl
  %i.dy = add nsw <16 x i32> %i.dx, %i.dr
  %i.dz = add nuw nsw <16 x i32> %i.dt, %i.dv
  %i.ea = sub nsw <16 x i32> %i.dy, %i.dz
  %i.eb = ashr <16 x i32> %i.ea, splat (i32 5)
  %i.ec = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.eb, <16 x i32> zeroinitializer)
  %i.ed = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ec, <16 x i32> splat (i32 255))
  %i.ee = trunc nuw <16 x i32> %i.ed to <16 x i8>
  %i.ef = getelementptr inbounds nuw i8, ptr %.084115, i64 %index179
  store <16 x i8> %i.ee, ptr %i.ef, align 1, !tbaa !10, !alias.scope !39, !noalias !38
  %index.next188 = add nuw i64 %index179, 16      ; 2 uses
  %i.eg = icmp eq i64 %index.next188, %n.vec177
  br i1 %i.eg, label %middle.block189, label %vector.body178, !llvm.loop !26

middle.block189:                                  ; preds = %vector.body178
  br i1 %cmp.n190, label %iter.check, label %vec.epilog.iter.check192

vec.epilog.iter.check192:                         ; preds = %middle.block189
  br i1 %min.epilog.iters.check194, label %.lr.ph111.preheader, label %vec.epilog.ph195, !prof !37

vec.epilog.ph195:                                 ; preds = %vector.main.loop.iter.check174, %vec.epilog.iter.check192
  %vec.epilog.resume.val196 = phi i64 [ %n.vec177, %vec.epilog.iter.check192 ], [ 0, %vector.main.loop.iter.check174 ]
  br label %vec.epilog.vector.body198

vec.epilog.vector.body198:                        ; preds = %vec.epilog.vector.body198, %vec.epilog.ph195
  %index199 = phi i64 [ %vec.epilog.resume.val196, %vec.epilog.ph195 ], [ %index.next208, %vec.epilog.vector.body198 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.083116, i64 %index199 ; 8 uses
  %wide.load200 = load <4 x i8>, ptr %i.eh, align 1, !tbaa !10, !alias.scope !38
  %i.ei = zext <4 x i8> %wide.load200 to <4 x i32>
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  %wide.load201 = load <4 x i8>, ptr %i.ej, align 1, !tbaa !10, !alias.scope !38
  %i.ek = zext <4 x i8> %wide.load201 to <4 x i32>
  %i.el = add nuw nsw <4 x i32> %i.ek, %i.ei
  %i.em = mul nuw nsw <4 x i32> %i.el, splat (i32 21)
  %i.en = getelementptr inbounds i8, ptr %i.eh, i64 -1
  %wide.load202 = load <4 x i8>, ptr %i.en, align 1, !tbaa !10, !alias.scope !38
  %i.eo = zext <4 x i8> %wide.load202 to <4 x i32>
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %wide.load203 = load <4 x i8>, ptr %i.ep, align 1, !tbaa !10, !alias.scope !38
  %i.eq = zext <4 x i8> %wide.load203 to <4 x i32>
  %i.er = add nuw nsw <4 x i32> %i.eq, %i.eo
  %i.es = mul nsw <4 x i32> %i.er, splat (i32 -7)
  %i.et = getelementptr inbounds i8, ptr %i.eh, i64 -2
  %wide.load204 = load <4 x i8>, ptr %i.et, align 1, !tbaa !10, !alias.scope !38
  %i.eu = zext <4 x i8> %wide.load204 to <4 x i32>
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eh, i64 3
  %wide.load205 = load <4 x i8>, ptr %i.ev, align 1, !tbaa !10, !alias.scope !38
  %i.ew = zext <4 x i8> %wide.load205 to <4 x i32>
  %i.ex = add nuw nsw <4 x i32> %i.ew, %i.eu
  %i.ey = mul nuw nsw <4 x i32> %i.ex, splat (i32 3)
  %i.ez = getelementptr inbounds i8, ptr %i.eh, i64 -3
  %wide.load206 = load <4 x i8>, ptr %i.ez, align 1, !tbaa !10, !alias.scope !38
  %i.fa = zext <4 x i8> %wide.load206 to <4 x i32>
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %wide.load207 = load <4 x i8>, ptr %i.fb, align 1, !tbaa !10, !alias.scope !38
  %i.fc = zext <4 x i8> %wide.load207 to <4 x i32>
  %i.fd = add nuw nsw <4 x i32> %i.em, splat (i32 16)
  %i.fe = add nsw <4 x i32> %i.fd, %i.es
  %i.ff = add nsw <4 x i32> %i.fe, %i.ey
  %i.fg = add nuw nsw <4 x i32> %i.fa, %i.fc
  %i.fh = sub nsw <4 x i32> %i.ff, %i.fg
  %i.fi = ashr <4 x i32> %i.fh, splat (i32 5)
  %i.fj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fi, <4 x i32> zeroinitializer)
  %i.fk = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fj, <4 x i32> splat (i32 255))
  %i.fl = trunc nuw <4 x i32> %i.fk to <4 x i8>
  %i.fm = getelementptr inbounds nuw i8, ptr %.084115, i64 %index199
  store <4 x i8> %i.fl, ptr %i.fm, align 1, !tbaa !10, !alias.scope !39, !noalias !38
  %index.next208 = add nuw i64 %index199, 4       ; 2 uses
  %i.fn = icmp eq i64 %index.next208, %n.vec197
  br i1 %i.fn, label %vec.epilog.middle.block209, label %vec.epilog.vector.body198, !llvm.loop !27

vec.epilog.middle.block209:                       ; preds = %vec.epilog.vector.body198
  br i1 %cmp.n210, label %iter.check, label %.lr.ph111.preheader

.lr.ph111.preheader:                              ; preds = %iter.check191, %vec.epilog.iter.check192, %vec.epilog.middle.block209
  %indvars.iv121.ph = phi i64 [ 0, %iter.check191 ], [ %n.vec197, %vec.epilog.middle.block209 ], [ %n.vec177, %vec.epilog.iter.check192 ]
  br label %.lr.ph111

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.fo = getelementptr inbounds i8, ptr %.085114, i64 %indvars.iv ; 8 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !10
  %i.fq = zext i8 %i.fp to i32
  %i.fr = getelementptr inbounds i8, ptr %i.fo, i64 %i.e
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !10
  %i.ft = zext i8 %i.fs to i32
  %i.fu = add nuw nsw i32 %i.ft, %i.fq
  %i.fv = mul nuw nsw i32 %i.fu, 21
  %i.fw = getelementptr inbounds i8, ptr %i.fo, i64 %i.g
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !10
  %i.fy = zext i8 %i.fx to i32
  %i.fz = getelementptr inbounds i8, ptr %i.fo, i64 %i.i
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !10
  %i.gb = zext i8 %i.ga to i32
  %i.gc = add nuw nsw i32 %i.gb, %i.fy
  %.neg88 = mul nsw i32 %i.gc, -7
  %i.gd = getelementptr inbounds i8, ptr %i.fo, i64 %32
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !10
  %i.gf = zext i8 %i.ge to i32
  %i.gg = getelementptr inbounds i8, ptr %i.fo, i64 %33
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !10
  %i.gi = zext i8 %i.gh to i32
  %i.gj = add nuw nsw i32 %i.gi, %i.gf
  %i.gk = mul nuw nsw i32 %i.gj, 3
  %i.gl = getelementptr inbounds i8, ptr %i.fo, i64 %11
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !10
  %i.gn = zext i8 %i.gm to i32
  %i.go = getelementptr inbounds i8, ptr %i.fo, i64 %34
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !10
  %i.gq = zext i8 %i.gp to i32
  %.neg106 = add nuw nsw i32 %i.fv, 16
  %i.gr = add nsw i32 %.neg106, %.neg88
  %i.gs = add nsw i32 %i.gr, %i.gk
  %i.gt = add nuw nsw i32 %i.gn, %i.gq
  %i.gu = sub nsw i32 %i.gs, %i.gt
  %i.gv = ashr i32 %i.gu, 5
  %i.gw = tail call i32 @llvm.smax.i32(i32 %i.gv, i32 0)
  %.0.i9497 = tail call i32 @llvm.umin.i32(i32 %i.gw, i32 255)
  %.0.i94 = trunc nuw i32 %.0.i9497 to i8
  %i.gx = getelementptr inbounds i8, ptr %.083116, i64 %indvars.iv
  store i8 %.0.i94, ptr %i.gx, align 1, !tbaa !10
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.l, %lftr.wideiv
  br i1 %exitcond.not, label %.preheader107, label %.lr.ph, !llvm.loop !28

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %.lr.ph111
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %.lr.ph111 ], [ %indvars.iv121.ph, %.lr.ph111.preheader ] ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.083116, i64 %indvars.iv121 ; 8 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !10
  %i.ha = zext i8 %i.gz to i32
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !10
  %i.hd = zext i8 %i.hc to i32
  %i.he = add nuw nsw i32 %i.hd, %i.ha
  %i.hf = mul nuw nsw i32 %i.he, 21
  %i.hg = getelementptr inbounds i8, ptr %i.gy, i64 -1
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !10
  %i.hi = zext i8 %i.hh to i32
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !10
  %i.hl = zext i8 %i.hk to i32
  %i.hm = add nuw nsw i32 %i.hl, %i.hi
  %.neg87 = mul nsw i32 %i.hm, -7
  %i.hn = getelementptr inbounds i8, ptr %i.gy, i64 -2
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !10
  %i.hp = zext i8 %i.ho to i32
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gy, i64 3
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !10
  %i.hs = zext i8 %i.hr to i32
  %i.ht = add nuw nsw i32 %i.hs, %i.hp
  %i.hu = mul nuw nsw i32 %i.ht, 3
  %i.hv = getelementptr inbounds i8, ptr %i.gy, i64 -3
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !10
  %i.hx = zext i8 %i.hw to i32
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !10
  %i.ia = zext i8 %i.hz to i32
  %.neg103 = add nuw nsw i32 %i.hf, 16
  %i.ib = add nsw i32 %.neg103, %.neg87
  %i.ic = add nsw i32 %i.ib, %i.hu
  %i.id = add nuw nsw i32 %i.hx, %i.ia
  %i.ie = sub nsw i32 %i.ic, %i.id
  %i.if = ashr i32 %i.ie, 5
  %i.ig = tail call i32 @llvm.smax.i32(i32 %i.if, i32 0)
  %.0.i9196 = tail call i32 @llvm.umin.i32(i32 %i.ig, i32 255)
  %.0.i91 = trunc nuw i32 %.0.i9196 to i8
  %i.ih = getelementptr inbounds nuw i8, ptr %.084115, i64 %indvars.iv121
  store i8 %.0.i91, ptr %i.ih, align 1, !tbaa !10
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next122, %wide.trip.count
  br i1 %exitcond124.not, label %iter.check, label %.lr.ph111, !llvm.loop !29

iter.check:                                       ; preds = %.lr.ph111, %vec.epilog.middle.block209, %middle.block189
  %brmerge280 = select i1 %min.iters.check, i1 true, i1 %i.ai
  br i1 %brmerge280, label %.lr.ph113.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check137, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.085114, i64 %index ; 8 uses
  %wide.load = load <16 x i8>, ptr %i.ii, align 1, !tbaa !10, !alias.scope !40
  %i.ij = zext <16 x i8> %wide.load to <16 x i32>
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 1
  %wide.load138 = load <16 x i8>, ptr %i.ik, align 1, !tbaa !10, !alias.scope !40
  %i.il = zext <16 x i8> %wide.load138 to <16 x i32>
  %i.im = add nuw nsw <16 x i32> %i.il, %i.ij
  %i.in = mul nuw nsw <16 x i32> %i.im, splat (i32 21)
  %i.io = getelementptr inbounds i8, ptr %i.ii, i64 -1
  %wide.load139 = load <16 x i8>, ptr %i.io, align 1, !tbaa !10, !alias.scope !40
  %i.ip = zext <16 x i8> %wide.load139 to <16 x i32>
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  %wide.load140 = load <16 x i8>, ptr %i.iq, align 1, !tbaa !10, !alias.scope !40
  %i.ir = zext <16 x i8> %wide.load140 to <16 x i32>
  %i.is = add nuw nsw <16 x i32> %i.ir, %i.ip
  %i.it = mul nsw <16 x i32> %i.is, splat (i32 -7)
  %i.iu = getelementptr inbounds i8, ptr %i.ii, i64 -2
  %wide.load141 = load <16 x i8>, ptr %i.iu, align 1, !tbaa !10, !alias.scope !40
  %i.iv = zext <16 x i8> %wide.load141 to <16 x i32>
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ii, i64 3
  %wide.load142 = load <16 x i8>, ptr %i.iw, align 1, !tbaa !10, !alias.scope !40
  %i.ix = zext <16 x i8> %wide.load142 to <16 x i32>
  %i.iy = add nuw nsw <16 x i32> %i.ix, %i.iv
  %i.iz = mul nuw nsw <16 x i32> %i.iy, splat (i32 3)
  %i.ja = getelementptr inbounds i8, ptr %i.ii, i64 -3
  %wide.load143 = load <16 x i8>, ptr %i.ja, align 1, !tbaa !10, !alias.scope !40
  %i.jb = zext <16 x i8> %wide.load143 to <16 x i32>
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %wide.load144 = load <16 x i8>, ptr %i.jc, align 1, !tbaa !10, !alias.scope !40
  %i.jd = zext <16 x i8> %wide.load144 to <16 x i32>
  %i.je = add nuw nsw <16 x i32> %i.in, splat (i32 16)
  %i.jf = add nsw <16 x i32> %i.je, %i.it
  %i.jg = add nsw <16 x i32> %i.jf, %i.iz
  %i.jh = add nuw nsw <16 x i32> %i.jb, %i.jd
  %i.ji = sub nsw <16 x i32> %i.jg, %i.jh
  %i.jj = ashr <16 x i32> %i.ji, splat (i32 5)
  %i.jk = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.jj, <16 x i32> zeroinitializer)
  %i.jl = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.jk, <16 x i32> splat (i32 255))
  %i.jm = trunc nuw <16 x i32> %i.jl to <16 x i8>
  %i.jn = getelementptr inbounds nuw i8, ptr %.082117, i64 %index
  store <16 x i8> %i.jm, ptr %i.jn, align 1, !tbaa !10, !alias.scope !41, !noalias !40
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.jo = icmp eq i64 %index.next, %n.vec
  br i1 %i.jo, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph113.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index146 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next155, %vec.epilog.vector.body ] ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.085114, i64 %index146 ; 8 uses
  %wide.load147 = load <4 x i8>, ptr %i.jp, align 1, !tbaa !10, !alias.scope !40
  %i.jq = zext <4 x i8> %wide.load147 to <4 x i32>
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 1
  %wide.load148 = load <4 x i8>, ptr %i.jr, align 1, !tbaa !10, !alias.scope !40
  %i.js = zext <4 x i8> %wide.load148 to <4 x i32>
  %i.jt = add nuw nsw <4 x i32> %i.js, %i.jq
  %i.ju = mul nuw nsw <4 x i32> %i.jt, splat (i32 21)
  %i.jv = getelementptr inbounds i8, ptr %i.jp, i64 -1
  %wide.load149 = load <4 x i8>, ptr %i.jv, align 1, !tbaa !10, !alias.scope !40
  %i.jw = zext <4 x i8> %wide.load149 to <4 x i32>
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jp, i64 2
  %wide.load150 = load <4 x i8>, ptr %i.jx, align 1, !tbaa !10, !alias.scope !40
  %i.jy = zext <4 x i8> %wide.load150 to <4 x i32>
  %i.jz = add nuw nsw <4 x i32> %i.jy, %i.jw
  %i.ka = mul nsw <4 x i32> %i.jz, splat (i32 -7)
  %i.kb = getelementptr inbounds i8, ptr %i.jp, i64 -2
  %wide.load151 = load <4 x i8>, ptr %i.kb, align 1, !tbaa !10, !alias.scope !40
  %i.kc = zext <4 x i8> %wide.load151 to <4 x i32>
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jp, i64 3
  %wide.load152 = load <4 x i8>, ptr %i.kd, align 1, !tbaa !10, !alias.scope !40
  %i.ke = zext <4 x i8> %wide.load152 to <4 x i32>
  %i.kf = add nuw nsw <4 x i32> %i.ke, %i.kc
  %i.kg = mul nuw nsw <4 x i32> %i.kf, splat (i32 3)
  %i.kh = getelementptr inbounds i8, ptr %i.jp, i64 -3
  %wide.load153 = load <4 x i8>, ptr %i.kh, align 1, !tbaa !10, !alias.scope !40
  %i.ki = zext <4 x i8> %wide.load153 to <4 x i32>
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %wide.load154 = load <4 x i8>, ptr %i.kj, align 1, !tbaa !10, !alias.scope !40
  %i.kk = zext <4 x i8> %wide.load154 to <4 x i32>
  %i.kl = add nuw nsw <4 x i32> %i.ju, splat (i32 16)
  %i.km = add nsw <4 x i32> %i.kl, %i.ka
  %i.kn = add nsw <4 x i32> %i.km, %i.kg
  %i.ko = add nuw nsw <4 x i32> %i.ki, %i.kk
  %i.kp = sub nsw <4 x i32> %i.kn, %i.ko
  %i.kq = ashr <4 x i32> %i.kp, splat (i32 5)
  %i.kr = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.kq, <4 x i32> zeroinitializer)
  %i.ks = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.kr, <4 x i32> splat (i32 255))
  %i.kt = trunc nuw <4 x i32> %i.ks to <4 x i8>
  %i.ku = getelementptr inbounds nuw i8, ptr %.082117, i64 %index146
  store <4 x i8> %i.kt, ptr %i.ku, align 1, !tbaa !10, !alias.scope !41, !noalias !40
  %index.next155 = add nuw i64 %index146, 4       ; 2 uses
  %i.kv = icmp eq i64 %index.next155, %n.vec145
  br i1 %i.kv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n156, label %._crit_edge, label %.lr.ph113.preheader

.lr.ph113.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv125.ph = phi i64 [ 0, %iter.check ], [ %n.vec145, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ]
  br label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %.lr.ph113
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %.lr.ph113 ], [ %indvars.iv125.ph, %.lr.ph113.preheader ] ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.085114, i64 %indvars.iv125 ; 8 uses
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !10
  %i.ky = zext i8 %i.kx to i32
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 1
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !10
  %i.lb = zext i8 %i.la to i32
  %i.lc = add nuw nsw i32 %i.lb, %i.ky
  %i.ld = mul nuw nsw i32 %i.lc, 21
  %i.le = getelementptr inbounds i8, ptr %i.kw, i64 -1
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !10
  %i.lg = zext i8 %i.lf to i32
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kw, i64 2
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !10
  %i.lj = zext i8 %i.li to i32
  %i.lk = add nuw nsw i32 %i.lj, %i.lg
end_hunk_0
