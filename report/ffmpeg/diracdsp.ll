loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_diracdsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 224), (232, 344)) %0) local_unnamed_addr #0 {
bb.a:
  store ptr @dirac_hpel_filter, ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr @add_rect_clamped_c, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr @put_signed_rect_clamped_8bit_c, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr @put_signed_rect_clamped_10bit_c, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr @put_signed_rect_clamped_12bit_c, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr @add_obmc8_c, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr @add_obmc16_c, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @add_obmc32_c, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr @weight_dirac_pixels8_c, ptr %i.h, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr @weight_dirac_pixels16_c, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr @weight_dirac_pixels32_c, ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr @biweight_dirac_pixels8_c, ptr %i.k, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr @biweight_dirac_pixels16_c, ptr %i.l, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr @biweight_dirac_pixels32_c, ptr %i.m, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @dequant_subband_int16_t_c, ptr %i.o, align 8, !tbaa !13
  store ptr @dequant_subband_int16_t_c, ptr %i.n, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr @dequant_subband_int32_t_c, ptr %i.p, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr @dequant_subband_int32_t_c, ptr %i.q, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @ff_put_dirac_pixels8_c, ptr %i.r, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @ff_put_dirac_pixels8_l2_c, ptr %i.s, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @ff_put_dirac_pixels8_l4_c, ptr %i.t, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @ff_put_dirac_pixels8_bilinear_c, ptr %i.u, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @ff_put_dirac_pixels16_c, ptr %i.v, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @ff_put_dirac_pixels16_l2_c, ptr %i.w, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @ff_put_dirac_pixels16_l4_c, ptr %i.x, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @ff_put_dirac_pixels16_bilinear_c, ptr %i.y, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @ff_put_dirac_pixels32_c, ptr %i.z, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @ff_put_dirac_pixels32_l2_c, ptr %i.aa, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr @ff_put_dirac_pixels32_l4_c, ptr %i.ab, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr @ff_put_dirac_pixels32_bilinear_c, ptr %i.ac, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @ff_avg_dirac_pixels8_c, ptr %i.ad, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @ff_avg_dirac_pixels8_l2_c, ptr %i.ae, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @ff_avg_dirac_pixels8_l4_c, ptr %i.af, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @ff_avg_dirac_pixels8_bilinear_c, ptr %i.ag, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr @ff_avg_dirac_pixels16_c, ptr %i.ah, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr @ff_avg_dirac_pixels16_l2_c, ptr %i.ai, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @ff_avg_dirac_pixels16_l4_c, ptr %i.aj, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr @ff_avg_dirac_pixels16_bilinear_c, ptr %i.ak, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr @ff_avg_dirac_pixels32_c, ptr %i.al, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @ff_avg_dirac_pixels32_l2_c, ptr %i.am, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr @ff_avg_dirac_pixels32_l4_c, ptr %i.an, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr @ff_avg_dirac_pixels32_bilinear_c, ptr %i.ao, align 8, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @dirac_hpel_filter(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #1 {
bb.a:
  %i.a = icmp sgt i32 %6, 0
  br i1 %i.a, label %.preheader105.lr.ph, label %._crit_edge116

.preheader105.lr.ph:                              ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = ptrtoaddr ptr %3 to i64                  ; 3 uses
  %i.d = icmp sgt i32 %5, -8
  %i.e = sext i32 %4 to i64                       ; 11 uses
  %i.f = sub nsw i32 0, %4
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = shl i32 %4, 1
  %i.i = sext i32 %i.h to i64                     ; 4 uses
  %i.j = mul i32 %4, -2
  %i.k = sext i32 %i.j to i64                     ; 4 uses
  %i.l = mul i32 %4, 3
  %i.m = sext i32 %i.l to i64                     ; 4 uses
  %i.n = mul i32 %4, -3
  %i.o = sext i32 %i.n to i64                     ; 4 uses
  %i.p = shl i32 %4, 2
  %i.q = sext i32 %i.p to i64                     ; 4 uses
  %i.r = icmp sgt i32 %5, 0
  %i.s = add i32 %5, 4
  %smax = tail call i32 @llvm.smax.i32(i32 %i.s, i32 -3) ; 3 uses
  %i.t = add i32 %smax, 1
  %wide.trip.count = zext i32 %5 to i64           ; 15 uses
  %wide.trip.count125 = zext nneg i32 %5 to i64
  %i.u = add nsw i32 %6, -1
  %i.v = zext i32 %i.u to i64
  %i.w = mul nsw i64 %i.e, %i.v                   ; 2 uses
  %7 = getelementptr i8, ptr %0, i64 %i.w
  %scevgep = getelementptr i8, ptr %7, i64 %wide.trip.count
  %scevgep130 = getelementptr i8, ptr %3, i64 -3
  %8 = getelementptr i8, ptr %3, i64 %i.w
  %i.x = getelementptr i8, ptr %8, i64 %wide.trip.count
  %scevgep131 = getelementptr i8, ptr %i.x, i64 4
  %i.y = add nsw i32 %6, -1
  %i.z = zext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.e, %i.z                  ; 2 uses
  %9 = getelementptr i8, ptr %2, i64 %i.aa
  %scevgep154 = getelementptr i8, ptr %9, i64 %wide.trip.count
  %scevgep155 = getelementptr i8, ptr %1, i64 -3
  %10 = getelementptr i8, ptr %1, i64 %i.aa
  %i.ab = getelementptr i8, ptr %10, i64 %wide.trip.count
  %scevgep156 = getelementptr i8, ptr %i.ab, i64 4
  %i.ac = sub i64 %i.b, %i.c                      ; 5 uses
  %i.ad = add i64 %i.b, %i.e
  %i.ae = sub i64 %i.b, %i.c                      ; 2 uses
  %i.af = add i32 %smax, 4                        ; 2 uses
  %i.ag = zext i32 %i.af to i64                   ; 5 uses
  %min.iters.check215 = icmp ugt i32 %smax, -5
  %i.ah = sub i64 %i.q, %i.ac
  %diff.check = icmp ugt i64 %i.ah, -16
  %i.ai = sub i64 %i.o, %i.ac
  %diff.check202 = icmp ugt i64 %i.ai, -16
  %conflict.rdx = or i1 %diff.check, %diff.check202
  %i.aj = sub i64 %i.m, %i.ac
  %diff.check203 = icmp ugt i64 %i.aj, -16
  %conflict.rdx204 = or i1 %conflict.rdx, %diff.check203
  %i.ak = sub i64 %i.k, %i.ac
  %diff.check205 = icmp ugt i64 %i.ak, -16
  %conflict.rdx206 = or i1 %conflict.rdx204, %diff.check205
  %i.al = sub i64 %i.i, %i.ac
  %diff.check207 = icmp ugt i64 %i.al, -16
  %conflict.rdx208 = or i1 %conflict.rdx206, %diff.check207
  %i.am = sub i64 %i.c, %i.ad
  %diff.check209 = icmp ugt i64 %i.am, -16
  %conflict.rdx210 = or i1 %conflict.rdx208, %diff.check209
  %i.an = sub i64 %i.e, %i.ae
  %diff.check211 = icmp ugt i64 %i.an, -16
  %conflict.rdx212 = or i1 %conflict.rdx210, %diff.check211
  %i.ao = add i64 %i.ae, -1
  %diff.check213 = icmp ult i64 %i.ao, 15
  %conflict.rdx214 = or i1 %conflict.rdx212, %diff.check213
  %min.iters.check217 = icmp ult i32 %i.af, 16
  %i.ap = and i64 %i.ag, 12
  %n.vec219 = and i64 %i.ag, 4294967280           ; 4 uses
  %i.aq = add nsw i64 %n.vec219, -3
  %cmp.n232 = icmp eq i64 %n.vec219, %i.ag
  %min.epilog.iters.check238 = icmp eq i64 %i.ap, 0
  %n.vec240 = and i64 %i.ag, 4294967292           ; 3 uses
  %i.ar = add nsw i64 %n.vec240, -3
  %cmp.n253 = icmp eq i64 %n.vec240, %i.ag
  %min.iters.check162 = icmp ult i32 %5, 4
  %bound0157 = icmp ult ptr %2, %scevgep156
  %bound1158 = icmp ult ptr %scevgep155, %scevgep154
  %found.conflict159 = and i1 %bound0157, %bound1158
  %stride.check160 = icmp slt i32 %4, 0
  %i.as = or i1 %found.conflict159, %stride.check160
  %min.iters.check164 = icmp ult i32 %5, 16
  %i.at = and i64 %wide.trip.count, 12
  %n.vec166 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n179 = icmp eq i64 %n.vec166, %wide.trip.count
  %min.epilog.iters.check184 = icmp eq i64 %i.at, 0
  %n.vec186 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n199 = icmp eq i64 %n.vec186, %wide.trip.count
  %min.iters.check = icmp ult i32 %5, 4
  %bound0 = icmp ult ptr %0, %scevgep131
  %bound1 = icmp ult ptr %scevgep130, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %4, 0
  %i.au = or i1 %found.conflict, %stride.check
  %min.iters.check133 = icmp ult i32 %5, 16
  %i.av = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.av, 0
  %n.vec141 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n152 = icmp eq i64 %n.vec141, %wide.trip.count
  br label %.preheader105

.preheader105:                                    ; preds = %.preheader105.lr.ph, %._crit_edge
  %.0115 = phi i32 [ 0, %.preheader105.lr.ph ], [ %i.nl, %._crit_edge ]
  %.082114 = phi ptr [ %0, %.preheader105.lr.ph ], [ %i.ni, %._crit_edge ] ; 4 uses
  %.083113 = phi ptr [ %1, %.preheader105.lr.ph ], [ %i.nj, %._crit_edge ] ; 7 uses
  %.084112 = phi ptr [ %2, %.preheader105.lr.ph ], [ %i.nk, %._crit_edge ] ; 4 uses
  %.085111 = phi ptr [ %3, %.preheader105.lr.ph ], [ %i.nh, %._crit_edge ] ; 7 uses
  br i1 %i.d, label %iter.check235, label %._crit_edge

iter.check235:                                    ; preds = %.preheader105
  %brmerge = select i1 %min.iters.check215, i1 true, i1 %conflict.rdx214
  br i1 %brmerge, label %.lr.ph.preheader, label %vector.main.loop.iter.check216

vector.main.loop.iter.check216:                   ; preds = %iter.check235
  br i1 %min.iters.check217, label %vec.epilog.ph239, label %vector.body220

vector.body220:                                   ; preds = %vector.main.loop.iter.check216, %vector.body220
  %index221 = phi i64 [ %index.next230, %vector.body220 ], [ 0, %vector.main.loop.iter.check216 ] ; 2 uses
  %i.aw = add i64 %index221, -3                   ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.085111, i64 %i.aw ; 8 uses
  %wide.load222 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !14
  %i.ay = zext <16 x i8> %wide.load222 to <16 x i32>
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 %i.e
  %wide.load223 = load <16 x i8>, ptr %i.az, align 1, !tbaa !14
  %i.ba = zext <16 x i8> %wide.load223 to <16 x i32>
  %i.bb = add nuw nsw <16 x i32> %i.ba, %i.ay
  %i.bc = mul nuw nsw <16 x i32> %i.bb, splat (i32 21)
  %i.bd = getelementptr inbounds i8, ptr %i.ax, i64 %i.g
  %wide.load224 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !14
  %i.be = zext <16 x i8> %wide.load224 to <16 x i32>
  %i.bf = getelementptr inbounds i8, ptr %i.ax, i64 %i.i
  %wide.load225 = load <16 x i8>, ptr %i.bf, align 1, !tbaa !14
  %i.bg = zext <16 x i8> %wide.load225 to <16 x i32>
  %i.bh = add nuw nsw <16 x i32> %i.bg, %i.be
  %i.bi = mul nsw <16 x i32> %i.bh, splat (i32 -7)
  %i.bj = getelementptr inbounds i8, ptr %i.ax, i64 %i.k
  %wide.load226 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !14
  %i.bk = zext <16 x i8> %wide.load226 to <16 x i32>
  %i.bl = getelementptr inbounds i8, ptr %i.ax, i64 %i.m
  %wide.load227 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !14
  %i.bm = zext <16 x i8> %wide.load227 to <16 x i32>
  %i.bn = add nuw nsw <16 x i32> %i.bm, %i.bk
  %i.bo = mul nuw nsw <16 x i32> %i.bn, splat (i32 3)
  %i.bp = getelementptr inbounds i8, ptr %i.ax, i64 %i.o
  %wide.load228 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !14
  %i.bq = zext <16 x i8> %wide.load228 to <16 x i32>
  %i.br = getelementptr inbounds i8, ptr %i.ax, i64 %i.q
  %wide.load229 = load <16 x i8>, ptr %i.br, align 1, !tbaa !14
  %i.bs = zext <16 x i8> %wide.load229 to <16 x i32>
  %i.bt = add nuw nsw <16 x i32> %i.bc, splat (i32 16)
  %i.bu = add nsw <16 x i32> %i.bt, %i.bi
  %i.bv = add nsw <16 x i32> %i.bu, %i.bo
  %i.bw = add nuw nsw <16 x i32> %i.bq, %i.bs
  %i.bx = sub nsw <16 x i32> %i.bv, %i.bw
  %i.by = ashr <16 x i32> %i.bx, splat (i32 5)    ; 3 uses
  %i.bz = icmp ult <16 x i32> %i.by, splat (i32 256)
  %i.ca = icmp sgt <16 x i32> %i.by, splat (i32 -1)
  %i.cb = sext <16 x i1> %i.ca to <16 x i8>
  %i.cc = trunc nuw <16 x i32> %i.by to <16 x i8>
  %i.cd = select <16 x i1> %i.bz, <16 x i8> %i.cc, <16 x i8> %i.cb
  %i.ce = getelementptr inbounds i8, ptr %.083113, i64 %i.aw
  store <16 x i8> %i.cd, ptr %i.ce, align 1, !tbaa !14
  %index.next230 = add nuw i64 %index221, 16      ; 2 uses
  %i.cf = icmp eq i64 %index.next230, %n.vec219
  br i1 %i.cf, label %middle.block231, label %vector.body220, !llvm.loop !15

middle.block231:                                  ; preds = %vector.body220
  br i1 %cmp.n232, label %.preheader104, label %vec.epilog.iter.check237

vec.epilog.iter.check237:                         ; preds = %middle.block231
  br i1 %min.epilog.iters.check238, label %.lr.ph.preheader, label %vec.epilog.ph239, !prof !19

vec.epilog.ph239:                                 ; preds = %vector.main.loop.iter.check216, %vec.epilog.iter.check237
  %vec.epilog.resume.val233 = phi i64 [ %n.vec219, %vec.epilog.iter.check237 ], [ 0, %vector.main.loop.iter.check216 ]
  br label %vec.epilog.vector.body241

vec.epilog.vector.body241:                        ; preds = %vec.epilog.vector.body241, %vec.epilog.ph239
  %index242 = phi i64 [ %vec.epilog.resume.val233, %vec.epilog.ph239 ], [ %index.next251, %vec.epilog.vector.body241 ] ; 2 uses
  %i.cg = add i64 %index242, -3                   ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.085111, i64 %i.cg ; 8 uses
  %wide.load243 = load <4 x i8>, ptr %i.ch, align 1, !tbaa !14
  %i.ci = zext <4 x i8> %wide.load243 to <4 x i32>
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 %i.e
  %wide.load244 = load <4 x i8>, ptr %i.cj, align 1, !tbaa !14
  %i.ck = zext <4 x i8> %wide.load244 to <4 x i32>
  %i.cl = add nuw nsw <4 x i32> %i.ck, %i.ci
  %i.cm = mul nuw nsw <4 x i32> %i.cl, splat (i32 21)
  %i.cn = getelementptr inbounds i8, ptr %i.ch, i64 %i.g
  %wide.load245 = load <4 x i8>, ptr %i.cn, align 1, !tbaa !14
  %i.co = zext <4 x i8> %wide.load245 to <4 x i32>
  %i.cp = getelementptr inbounds i8, ptr %i.ch, i64 %i.i
  %wide.load246 = load <4 x i8>, ptr %i.cp, align 1, !tbaa !14
  %i.cq = zext <4 x i8> %wide.load246 to <4 x i32>
  %i.cr = add nuw nsw <4 x i32> %i.cq, %i.co
  %i.cs = mul nsw <4 x i32> %i.cr, splat (i32 -7)
  %i.ct = getelementptr inbounds i8, ptr %i.ch, i64 %i.k
  %wide.load247 = load <4 x i8>, ptr %i.ct, align 1, !tbaa !14
  %i.cu = zext <4 x i8> %wide.load247 to <4 x i32>
  %i.cv = getelementptr inbounds i8, ptr %i.ch, i64 %i.m
  %wide.load248 = load <4 x i8>, ptr %i.cv, align 1, !tbaa !14
  %i.cw = zext <4 x i8> %wide.load248 to <4 x i32>
  %i.cx = add nuw nsw <4 x i32> %i.cw, %i.cu
  %i.cy = mul nuw nsw <4 x i32> %i.cx, splat (i32 3)
  %i.cz = getelementptr inbounds i8, ptr %i.ch, i64 %i.o
  %wide.load249 = load <4 x i8>, ptr %i.cz, align 1, !tbaa !14
  %i.da = zext <4 x i8> %wide.load249 to <4 x i32>
  %i.db = getelementptr inbounds i8, ptr %i.ch, i64 %i.q
  %wide.load250 = load <4 x i8>, ptr %i.db, align 1, !tbaa !14
  %i.dc = zext <4 x i8> %wide.load250 to <4 x i32>
  %i.dd = add nuw nsw <4 x i32> %i.cm, splat (i32 16)
  %i.de = add nsw <4 x i32> %i.dd, %i.cs
  %i.df = add nsw <4 x i32> %i.de, %i.cy
  %i.dg = add nuw nsw <4 x i32> %i.da, %i.dc
  %i.dh = sub nsw <4 x i32> %i.df, %i.dg
  %i.di = ashr <4 x i32> %i.dh, splat (i32 5)     ; 3 uses
  %i.dj = icmp ult <4 x i32> %i.di, splat (i32 256)
  %i.dk = icmp sgt <4 x i32> %i.di, splat (i32 -1)
  %i.dl = sext <4 x i1> %i.dk to <4 x i8>
  %i.dm = trunc nuw <4 x i32> %i.di to <4 x i8>
  %i.dn = select <4 x i1> %i.dj, <4 x i8> %i.dm, <4 x i8> %i.dl
  %i.do = getelementptr inbounds i8, ptr %.083113, i64 %i.cg
  store <4 x i8> %i.dn, ptr %i.do, align 1, !tbaa !14
  %index.next251 = add nuw i64 %index242, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next251, %n.vec240
  br i1 %i.dp, label %vec.epilog.middle.block252, label %vec.epilog.vector.body241, !llvm.loop !20

vec.epilog.middle.block252:                       ; preds = %vec.epilog.vector.body241
  br i1 %cmp.n253, label %.preheader104, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check235, %vec.epilog.iter.check237, %vec.epilog.middle.block252
  %indvars.iv.ph = phi i64 [ -3, %iter.check235 ], [ %i.ar, %vec.epilog.middle.block252 ], [ %i.aq, %vec.epilog.iter.check237 ]
  br label %.lr.ph

.preheader104:                                    ; preds = %.lr.ph, %vec.epilog.middle.block252, %middle.block231
end_hunk_0
begin_hunk_1_@dirac_hpel_filter:bb.a
  %i.jc = trunc nuw i32 %i.ja to i8
  %.0.i91 = select i1 %.not.i89, i8 %i.jc, i8 %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %.084112, i64 %indvars.iv118
  store i8 %.0.i91, ptr %i.jd, align 1, !tbaa !14
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count
  br i1 %exitcond121.not, label %iter.check, label %.lr.ph108, !llvm.loop !29

iter.check:                                       ; preds = %.lr.ph108, %vec.epilog.middle.block198, %middle.block178
  %brmerge256 = select i1 %min.iters.check, i1 true, i1 %i.au
  br i1 %brmerge256, label %.lr.ph110.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check133, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.085111, i64 %index ; 8 uses
  %wide.load = load <16 x i8>, ptr %i.je, align 1, !tbaa !14, !alias.scope !30
  %i.jf = zext <16 x i8> %wide.load to <16 x i32>
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %wide.load134 = load <16 x i8>, ptr %i.jg, align 1, !tbaa !14, !alias.scope !30
  %i.jh = zext <16 x i8> %wide.load134 to <16 x i32>
  %i.ji = add nuw nsw <16 x i32> %i.jh, %i.jf
  %i.jj = mul nuw nsw <16 x i32> %i.ji, splat (i32 21)
  %i.jk = getelementptr inbounds i8, ptr %i.je, i64 -1
  %wide.load135 = load <16 x i8>, ptr %i.jk, align 1, !tbaa !14, !alias.scope !30
  %i.jl = zext <16 x i8> %wide.load135 to <16 x i32>
  %i.jm = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  %wide.load136 = load <16 x i8>, ptr %i.jm, align 1, !tbaa !14, !alias.scope !30
  %i.jn = zext <16 x i8> %wide.load136 to <16 x i32>
  %i.jo = add nuw nsw <16 x i32> %i.jn, %i.jl
  %i.jp = mul nsw <16 x i32> %i.jo, splat (i32 -7)
  %i.jq = getelementptr inbounds i8, ptr %i.je, i64 -2
  %wide.load137 = load <16 x i8>, ptr %i.jq, align 1, !tbaa !14, !alias.scope !30
  %i.jr = zext <16 x i8> %wide.load137 to <16 x i32>
  %i.js = getelementptr inbounds nuw i8, ptr %i.je, i64 3
  %wide.load138 = load <16 x i8>, ptr %i.js, align 1, !tbaa !14, !alias.scope !30
  %i.jt = zext <16 x i8> %wide.load138 to <16 x i32>
  %i.ju = add nuw nsw <16 x i32> %i.jt, %i.jr
  %i.jv = mul nuw nsw <16 x i32> %i.ju, splat (i32 3)
  %i.jw = getelementptr inbounds i8, ptr %i.je, i64 -3
  %wide.load139 = load <16 x i8>, ptr %i.jw, align 1, !tbaa !14, !alias.scope !30
  %i.jx = zext <16 x i8> %wide.load139 to <16 x i32>
  %i.jy = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %wide.load140 = load <16 x i8>, ptr %i.jy, align 1, !tbaa !14, !alias.scope !30
  %i.jz = zext <16 x i8> %wide.load140 to <16 x i32>
  %i.ka = add nuw nsw <16 x i32> %i.jj, splat (i32 16)
  %i.kb = add nsw <16 x i32> %i.ka, %i.jp
  %i.kc = add nsw <16 x i32> %i.kb, %i.jv
  %i.kd = add nuw nsw <16 x i32> %i.jx, %i.jz
  %i.ke = sub nsw <16 x i32> %i.kc, %i.kd
  %i.kf = ashr <16 x i32> %i.ke, splat (i32 5)    ; 3 uses
  %i.kg = icmp ult <16 x i32> %i.kf, splat (i32 256)
  %i.kh = icmp sgt <16 x i32> %i.kf, splat (i32 -1)
  %i.ki = sext <16 x i1> %i.kh to <16 x i8>
  %i.kj = trunc nuw <16 x i32> %i.kf to <16 x i8>
  %i.kk = select <16 x i1> %i.kg, <16 x i8> %i.kj, <16 x i8> %i.ki
  %i.kl = getelementptr inbounds nuw i8, ptr %.082114, i64 %index
  store <16 x i8> %i.kk, ptr %i.kl, align 1, !tbaa !14, !alias.scope !33, !noalias !30
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.km = icmp eq i64 %index.next, %n.vec
  br i1 %i.km, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph110.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index142 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next151, %vec.epilog.vector.body ] ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.085111, i64 %index142 ; 8 uses
  %wide.load143 = load <4 x i8>, ptr %i.kn, align 1, !tbaa !14, !alias.scope !30
  %i.ko = zext <4 x i8> %wide.load143 to <4 x i32>
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 1
  %wide.load144 = load <4 x i8>, ptr %i.kp, align 1, !tbaa !14, !alias.scope !30
  %i.kq = zext <4 x i8> %wide.load144 to <4 x i32>
  %i.kr = add nuw nsw <4 x i32> %i.kq, %i.ko
  %i.ks = mul nuw nsw <4 x i32> %i.kr, splat (i32 21)
  %i.kt = getelementptr inbounds i8, ptr %i.kn, i64 -1
  %wide.load145 = load <4 x i8>, ptr %i.kt, align 1, !tbaa !14, !alias.scope !30
  %i.ku = zext <4 x i8> %wide.load145 to <4 x i32>
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kn, i64 2
  %wide.load146 = load <4 x i8>, ptr %i.kv, align 1, !tbaa !14, !alias.scope !30
  %i.kw = zext <4 x i8> %wide.load146 to <4 x i32>
  %i.kx = add nuw nsw <4 x i32> %i.kw, %i.ku
  %i.ky = mul nsw <4 x i32> %i.kx, splat (i32 -7)
  %i.kz = getelementptr inbounds i8, ptr %i.kn, i64 -2
  %wide.load147 = load <4 x i8>, ptr %i.kz, align 1, !tbaa !14, !alias.scope !30
  %i.la = zext <4 x i8> %wide.load147 to <4 x i32>
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kn, i64 3
  %wide.load148 = load <4 x i8>, ptr %i.lb, align 1, !tbaa !14, !alias.scope !30
  %i.lc = zext <4 x i8> %wide.load148 to <4 x i32>
  %i.ld = add nuw nsw <4 x i32> %i.lc, %i.la
  %i.le = mul nuw nsw <4 x i32> %i.ld, splat (i32 3)
  %i.lf = getelementptr inbounds i8, ptr %i.kn, i64 -3
  %wide.load149 = load <4 x i8>, ptr %i.lf, align 1, !tbaa !14, !alias.scope !30
  %i.lg = zext <4 x i8> %wide.load149 to <4 x i32>
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %wide.load150 = load <4 x i8>, ptr %i.lh, align 1, !tbaa !14, !alias.scope !30
  %i.li = zext <4 x i8> %wide.load150 to <4 x i32>
  %i.lj = add nuw nsw <4 x i32> %i.ks, splat (i32 16)
  %i.lk = add nsw <4 x i32> %i.lj, %i.ky
  %i.ll = add nsw <4 x i32> %i.lk, %i.le
  %i.lm = add nuw nsw <4 x i32> %i.lg, %i.li
  %i.ln = sub nsw <4 x i32> %i.ll, %i.lm
  %i.lo = ashr <4 x i32> %i.ln, splat (i32 5)     ; 3 uses
  %i.lp = icmp ult <4 x i32> %i.lo, splat (i32 256)
  %i.lq = icmp sgt <4 x i32> %i.lo, splat (i32 -1)
  %i.lr = sext <4 x i1> %i.lq to <4 x i8>
  %i.ls = trunc nuw <4 x i32> %i.lo to <4 x i8>
  %i.lt = select <4 x i1> %i.lp, <4 x i8> %i.ls, <4 x i8> %i.lr
  %i.lu = getelementptr inbounds nuw i8, ptr %.082114, i64 %index142
  store <4 x i8> %i.lt, ptr %i.lu, align 1, !tbaa !14, !alias.scope !33, !noalias !30
  %index.next151 = add nuw i64 %index142, 4       ; 2 uses
  %i.lv = icmp eq i64 %index.next151, %n.vec141
  br i1 %i.lv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n152, label %._crit_edge, label %.lr.ph110.preheader

.lr.ph110.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv122.ph = phi i64 [ 0, %iter.check ], [ %n.vec141, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ]
  br label %.lr.ph110

.lr.ph110:                                        ; preds = %.lr.ph110.preheader, %.lr.ph110
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %.lr.ph110 ], [ %indvars.iv122.ph, %.lr.ph110.preheader ] ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.085111, i64 %indvars.iv122 ; 8 uses
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !14
  %i.ly = zext i8 %i.lx to i32
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 1
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !14
  %i.mb = zext i8 %i.ma to i32
  %i.mc = add nuw nsw i32 %i.mb, %i.ly
  %i.md = mul nuw nsw i32 %i.mc, 21
  %i.me = getelementptr inbounds i8, ptr %i.lw, i64 -1
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !14
  %i.mg = zext i8 %i.mf to i32
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lw, i64 2
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !14
  %i.mj = zext i8 %i.mi to i32
  %i.mk = add nuw nsw i32 %i.mj, %i.mg
  %.neg = mul nsw i32 %i.mk, -7
  %i.ml = getelementptr inbounds i8, ptr %i.lw, i64 -2
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !14
  %i.mn = zext i8 %i.mm to i32
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lw, i64 3
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !14
  %i.mq = zext i8 %i.mp to i32
  %i.mr = add nuw nsw i32 %i.mq, %i.mn
  %i.ms = mul nuw nsw i32 %i.mr, 3
  %i.mt = getelementptr inbounds i8, ptr %i.lw, i64 -3
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !14
  %i.mv = zext i8 %i.mu to i32
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !14
  %i.my = zext i8 %i.mx to i32
  %.neg97 = add nuw nsw i32 %i.md, 16
  %i.mz = add nsw i32 %.neg97, %.neg
  %i.na = add nsw i32 %i.mz, %i.ms
  %i.nb = add nuw nsw i32 %i.mv, %i.my
  %i.nc = sub nsw i32 %i.na, %i.nb
  %i.nd = ashr i32 %i.nc, 5                       ; 3 uses
  %.not.i = icmp ult i32 %i.nd, 256
  %isnotneg.i = icmp sgt i32 %i.nd, -1
  %i.ne = sext i1 %isnotneg.i to i8
  %i.nf = trunc nuw i32 %i.nd to i8
  %.0.i = select i1 %.not.i, i8 %i.nf, i8 %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %.082114, i64 %indvars.iv122
  store i8 %.0.i, ptr %i.ng, align 1, !tbaa !14
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %._crit_edge, label %.lr.ph110, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph110, %middle.block, %vec.epilog.middle.block, %.preheader105, %.preheader104
  %i.nh = getelementptr inbounds i8, ptr %.085111, i64 %i.e
  %i.ni = getelementptr inbounds i8, ptr %.082114, i64 %i.e
  %i.nj = getelementptr inbounds i8, ptr %.083113, i64 %i.e
  %i.nk = getelementptr inbounds i8, ptr %.084112, i64 %i.e
  %i.nl = add nuw nsw i32 %.0115, 1               ; 2 uses
  %exitcond127.not = icmp eq i32 %i.nl, %6
  br i1 %exitcond127.not, label %._crit_edge116, label %.preheader105, !llvm.loop !38

._crit_edge116:                                   ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @add_rect_clamped_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #1 {
bb.a:
  %i.a = icmp sgt i32 %6, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge35.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %5, 0
  %i.c = sext i32 %2 to i64                       ; 4 uses
  %i.d = sext i32 %4 to i64                       ; 2 uses
  br i1 %i.b, label %.preheader.preheader, label %._crit_edge35.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.e = zext nneg i32 %5 to i64                  ; 3 uses
  %i.f = add nsw i32 %6, -1
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = mul nsw i64 %i.c, %i.g
  %i.i = add nsw i64 %i.e, -1                     ; 2 uses
  %i.j = and i64 %i.i, -2
  %i.k = getelementptr i8, ptr %0, i64 %i.h
  %i.l = getelementptr i8, ptr %i.k, i64 %i.j
  %scevgep = getelementptr i8, ptr %i.l, i64 2    ; 2 uses
  %7 = mul nsw i64 %i.c, %i.g
  %i.m = shl i64 %7, 1
  %i.n = shl nsw i64 %i.i, 1
  %i.o = and i64 %i.n, -4                         ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.m
  %i.q = getelementptr i8, ptr %i.p, i64 %i.o
  %scevgep39 = getelementptr i8, ptr %i.q, i64 4
  %i.r = mul nsw i64 %i.d, %i.g
  %i.s = shl i64 %i.r, 1
  %i.t = getelementptr i8, ptr %3, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 %i.o
  %scevgep40 = getelementptr i8, ptr %i.u, i64 4
  %i.v = add nsw i64 %i.e, -1
  %i.w = lshr i64 %i.v, 1
  %i.x = add nuw i64 %i.w, 1                      ; 2 uses
  %min.iters.check = icmp ult i32 %5, 7
  %bound0 = icmp ult ptr %0, %scevgep39
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %2, 0
  %i.y = or i1 %found.conflict, %stride.check
  %bound042 = icmp ult ptr %0, %scevgep40
  %bound143 = icmp ult ptr %3, %scevgep
  %found.conflict44 = and i1 %bound042, %bound143
  %i.z = or i32 %4, %2
  %i.aa = icmp slt i32 %i.z, 0
  %i.ab = or i1 %found.conflict44, %i.aa
  %conflict.rdx = or i1 %i.y, %i.ab
  %n.vec = and i64 %i.x, -4                       ; 3 uses
  %i.ac = shl i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.034 = phi i32 [ %i.ci, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02433 = phi ptr [ %i.cf, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  %.02532 = phi ptr [ %i.cg, %._crit_edge ], [ %1, %.preheader.preheader ] ; 4 uses
  %.02631 = phi ptr [ %i.ch, %._crit_edge ], [ %3, %.preheader.preheader ] ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 2 uses
  %i.ad = shl nuw i64 %index, 1                   ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.02532, i64 %i.ad
  %wide.vec = load <8 x i16>, ptr %i.ae, align 2, !tbaa !39, !alias.scope !41
  %i.af = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.ag = bitcast <8 x i16> %i.af to <4 x i32>
  %i.ah = bitcast <8 x i16> %i.af to <4 x i32>
  %i.ai = and <4 x i32> %i.ah, splat (i32 65504)
  %i.aj = lshr <4 x i32> %i.ag, splat (i32 16)
  %i.ak = add nuw nsw <4 x i32> %i.ai, splat (i32 32)
  %i.al = lshr <4 x i32> %i.ak, splat (i32 6)
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %.02631, i64 %i.ad
  %wide.vec48 = load <8 x i16>, ptr %i.am, align 2, !tbaa !39, !alias.scope !44 ; 2 uses
  %strided.vec49 = shufflevector <8 x i16> %wide.vec48, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec50 = shufflevector <8 x i16> %wide.vec48, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.an = sext <4 x i16> %strided.vec49 to <4 x i32>
  %i.ao = add nsw <4 x i32> %i.al, %i.an          ; 3 uses
  %i.ap = icmp ult <4 x i32> %i.ao, splat (i32 256)
  %i.aq = icmp sgt <4 x i32> %i.ao, splat (i32 -1)
  %i.ar = sext <4 x i1> %i.aq to <4 x i8>
  %i.as = trunc nuw <4 x i32> %i.ao to <4 x i8>
  %i.at = select <4 x i1> %i.ap, <4 x i8> %i.as, <4 x i8> %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %.02433, i64 %i.ad
  %i.av = add nuw nsw <4 x i32> %i.aj, splat (i32 32)
  %i.aw = lshr <4 x i32> %i.av, splat (i32 6)
  %i.ax = sext <4 x i16> %strided.vec50 to <4 x i32>
  %i.ay = add nsw <4 x i32> %i.aw, %i.ax          ; 3 uses
  %i.az = icmp ult <4 x i32> %i.ay, splat (i32 256)
  %i.ba = icmp sgt <4 x i32> %i.ay, splat (i32 -1)
  %i.bb = sext <4 x i1> %i.ba to <4 x i8>
  %i.bc = trunc nuw <4 x i32> %i.ay to <4 x i8>
  %i.bd = select <4 x i1> %i.az, <4 x i8> %i.bc, <4 x i8> %i.bb
  %interleaved.vec = shufflevector <4 x i8> %i.at, <4 x i8> %i.bd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec, ptr %i.au, align 1, !tbaa !14, !alias.scope !46, !noalias !48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ac, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.02532, i64 %indvars.iv
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !39
  %i.bh = zext i16 %i.bg to i32
  %i.bi = add nuw nsw i32 %i.bh, 32
  %i.bj = lshr i32 %i.bi, 6
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.02631, i64 %indvars.iv
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !39
  %i.bm = sext i16 %i.bl to i32
  %i.bn = add nsw i32 %i.bj, %i.bm                ; 3 uses
  %.not.i27 = icmp ult i32 %i.bn, 256
  %isnotneg.i28 = icmp sgt i32 %i.bn, -1
  %i.bo = sext i1 %isnotneg.i28 to i8
  %i.bp = trunc nuw i32 %i.bn to i8
  %.0.i29 = select i1 %.not.i27, i8 %i.bp, i8 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %.02433, i64 %indvars.iv
  store i8 %.0.i29, ptr %i.bq, align 1, !tbaa !14
  %i.br = or disjoint i64 %indvars.iv, 1          ; 3 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.02532, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !39
  %i.bu = zext i16 %i.bt to i32
  %i.bv = add nuw nsw i32 %i.bu, 32
  %i.bw = lshr i32 %i.bv, 6
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.02631, i64 %i.br
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !39
  %i.bz = sext i16 %i.by to i32
  %i.ca = add nsw i32 %i.bw, %i.bz                ; 3 uses
  %.not.i = icmp ult i32 %i.ca, 256
  %isnotneg.i = icmp sgt i32 %i.ca, -1
  %i.cb = sext i1 %isnotneg.i to i8
  %i.cc = trunc nuw i32 %i.ca to i8
  %.0.i = select i1 %.not.i, i8 %i.cc, i8 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %.02433, i64 %i.br
  store i8 %.0.i, ptr %i.cd, align 1, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ce = icmp samesign ult i64 %indvars.iv.next, %i.e
  br i1 %i.ce, label %scalar.ph, label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.cf = getelementptr inbounds i8, ptr %.02433, i64 %i.c
  %i.cg = getelementptr inbounds [2 x i8], ptr %.02532, i64 %i.c
  %i.ch = getelementptr inbounds [2 x i8], ptr %.02631, i64 %i.d
  %i.ci = add nuw nsw i32 %.034, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ci, %6
  br i1 %exitcond.not, label %._crit_edge35.split, label %.preheader, !llvm.loop !51

._crit_edge35.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_signed_rect_clamped_8bit_c(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge42.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %4, 0
  %i.c = sext i32 %1 to i64
  %i.d = ashr i32 %3, 1
  %i.e = sext i32 %i.d to i64
  br i1 %i.b, label %.preheader.preheader, label %._crit_edge42.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.f = zext nneg i32 %4 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.041 = phi ptr [ %i.an, %._crit_edge ], [ %2, %.preheader.preheader ] ; 5 uses
  %.02640 = phi i32 [ %i.ao, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02839 = phi ptr [ %i.am, %._crit_edge ], [ %0, %.preheader.preheader ] ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 6 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %.041, i64 %indvars.iv
  %i.h = load i16, ptr %i.g, align 2, !tbaa !39   ; 2 uses
  %i.i = sext i16 %i.h to i32
  %i.j = add nsw i32 %i.i, 128                    ; 2 uses
  %.not.i35 = icmp ult i32 %i.j, 256
  %isnotneg.i36 = icmp sgt i16 %i.h, -129
  %i.k = sext i1 %isnotneg.i36 to i8
  %i.l = trunc nuw i32 %i.j to i8
  %.0.i37 = select i1 %.not.i35, i8 %i.l, i8 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %.02839, i64 %indvars.iv
  store i8 %.0.i37, ptr %i.m, align 1, !tbaa !14
  %i.n = or disjoint i64 %indvars.iv, 1           ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %.041, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !39   ; 2 uses
  %i.q = sext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, 128                    ; 2 uses
  %.not.i32 = icmp ult i32 %i.r, 256
  %isnotneg.i33 = icmp sgt i16 %i.p, -129
  %i.s = sext i1 %isnotneg.i33 to i8
  %i.t = trunc nuw i32 %i.r to i8
  %.0.i34 = select i1 %.not.i32, i8 %i.t, i8 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.02839, i64 %i.n
  store i8 %.0.i34, ptr %i.u, align 1, !tbaa !14
  %i.v = or disjoint i64 %indvars.iv, 2           ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.041, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !39   ; 2 uses
  %i.y = sext i16 %i.x to i32
  %i.z = add nsw i32 %i.y, 128                    ; 2 uses
  %.not.i29 = icmp ult i32 %i.z, 256
  %isnotneg.i30 = icmp sgt i16 %i.x, -129
  %i.aa = sext i1 %isnotneg.i30 to i8
  %i.ab = trunc nuw i32 %i.z to i8
  %.0.i31 = select i1 %.not.i29, i8 %i.ab, i8 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.02839, i64 %i.v
  store i8 %.0.i31, ptr %i.ac, align 1, !tbaa !14
  %i.ad = or disjoint i64 %indvars.iv, 3          ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.041, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !39 ; 2 uses
  %i.ag = sext i16 %i.af to i32
end_hunk_1
