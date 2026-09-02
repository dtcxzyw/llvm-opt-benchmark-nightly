Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/cfb128?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@CRYPTO_cfb128_encrypt:bb.a
.lr.ph139:                                        ; preds = %.preheader110, %.lr.ph139
  %.2138 = phi ptr [ %i.dr, %.lr.ph139 ], [ %0, %.preheader110 ] ; 2 uses
  %.293137 = phi ptr [ %i.du, %.lr.ph139 ], [ %1, %.preheader110 ] ; 2 uses
  %.398136 = phi i64 [ %i.dv, %.lr.ph139 ], [ %2, %.preheader110 ]
  %.5104135 = phi i32 [ %i.dx, %.lr.ph139 ], [ %i.a, %.preheader110 ] ; 2 uses
  %i.do = zext nneg i32 %.5104135 to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 %i.do ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %.2138, i64 1 ; 2 uses
  %i.ds = load i8, ptr %.2138, align 1, !tbaa !9  ; 2 uses
  %i.dt = xor i8 %i.ds, %i.dq
  %i.du = getelementptr inbounds nuw i8, ptr %.293137, i64 1 ; 2 uses
  store i8 %i.dt, ptr %.293137, align 1, !tbaa !9
  store i8 %i.ds, ptr %i.dp, align 1, !tbaa !9
  %i.dv = add i64 %.398136, -1                    ; 3 uses
  %i.dw = add nuw i32 %.5104135, 1
  %i.dx = and i32 %i.dw, 15                       ; 3 uses
  %i.dy = icmp ne i32 %i.dx, 0
  %i.dz = icmp ne i64 %i.dv, 0
  %i.ea = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %i.ea, label %.lr.ph139, label %.preheader, !llvm.loop !19

.lr.ph152:                                        ; preds = %.lr.ph152.preheader.peel.newph, %.lr.ph152
  %.3151 = phi ptr [ %i.el, %.lr.ph152 ], [ %i.dl, %.lr.ph152.preheader.peel.newph ] ; 3 uses
  %.394150 = phi ptr [ %i.ek, %.lr.ph152 ], [ %i.dk, %.lr.ph152.preheader.peel.newph ] ; 3 uses
  %.4149 = phi i64 [ %i.ej, %.lr.ph152 ], [ %i.dj, %.lr.ph152.preheader.peel.newph ]
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #3
  %i.eb = load i64, ptr %.3151, align 1, !tbaa !29 ; 2 uses
  %i.ec = load i64, ptr %4, align 1, !tbaa !29
  %i.ed = xor i64 %i.ec, %i.eb
  store i64 %i.ed, ptr %.394150, align 1, !tbaa !29
  store i64 %i.eb, ptr %4, align 1, !tbaa !29
  %i.ee = getelementptr inbounds nuw i8, ptr %.3151, i64 8
  %i.ef = load i64, ptr %i.ee, align 1, !tbaa !29 ; 2 uses
  %i.eg = load i64, ptr %i.dn, align 1, !tbaa !29
  %i.eh = xor i64 %i.eg, %i.ef
  %i.ei = getelementptr inbounds nuw i8, ptr %.394150, i64 8
  store i64 %i.eh, ptr %i.ei, align 1, !tbaa !29
  store i64 %i.ef, ptr %i.dn, align 1, !tbaa !29
  %i.ej = add i64 %.4149, -16                     ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.394150, i64 16 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.3151, i64 16 ; 2 uses
  %i.em = icmp ugt i64 %i.ej, 15
  br i1 %i.em, label %.lr.ph152, label %._crit_edge153, !llvm.loop !20

._crit_edge153:                                   ; preds = %._crit_edge147.peel, %.lr.ph152, %.preheader
  %.6.lcssa = phi i32 [ %.5104.lcssa, %.preheader ], [ 0, %.lr.ph152 ], [ 0, %._crit_edge147.peel ] ; 8 uses
  %.4.lcssa = phi i64 [ %.398.lcssa, %.preheader ], [ %i.dj, %._crit_edge147.peel ], [ %i.ej, %.lr.ph152 ] ; 10 uses
  %.394.lcssa = phi ptr [ %.293.lcssa, %.preheader ], [ %i.dk, %._crit_edge147.peel ], [ %i.ek, %.lr.ph152 ] ; 6 uses
  %.3.lcssa = phi ptr [ %.2.lcssa, %.preheader ], [ %i.dl, %._crit_edge147.peel ], [ %i.el, %.lr.ph152 ] ; 6 uses
  %.not106 = icmp eq i64 %.4.lcssa, 0
  br i1 %.not106, label %.loopexit111, label %iter.check275

iter.check275:                                    ; preds = %._crit_edge153
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #3
  %min.iters.check259 = icmp samesign ult i64 %.4.lcssa, 8
  br i1 %min.iters.check259, label %vec.epilog.scalar.ph276.preheader, label %vector.scevcheck240

vector.scevcheck240:                              ; preds = %iter.check275
  %i.en = add nsw i64 %.4.lcssa, -1               ; 2 uses
  %i.eo = trunc i64 %i.en to i32
  %i.ep = xor i32 %.6.lcssa, -1
  %i.eq = icmp ult i32 %i.ep, %i.eo
  %i.er = icmp ugt i64 %i.en, 4294967295
  %i.es = or i1 %i.eq, %i.er
  br i1 %i.es, label %vec.epilog.scalar.ph276.preheader, label %vector.memcheck241

vector.memcheck241:                               ; preds = %vector.scevcheck240
  %i.et = zext i32 %.6.lcssa to i64               ; 4 uses
  %scevgep242 = getelementptr i8, ptr %.394.lcssa, i64 %i.et ; 2 uses
  %i.eu = add nuw nsw i64 %.4.lcssa, %i.et        ; 3 uses
  %scevgep243 = getelementptr i8, ptr %.394.lcssa, i64 %i.eu ; 2 uses
  %scevgep244 = getelementptr i8, ptr %4, i64 %i.et ; 2 uses
  %scevgep245 = getelementptr i8, ptr %4, i64 %i.eu ; 2 uses
  %scevgep246 = getelementptr i8, ptr %.3.lcssa, i64 %i.et ; 2 uses
  %scevgep247 = getelementptr i8, ptr %.3.lcssa, i64 %i.eu ; 2 uses
  %bound0248 = icmp ult ptr %scevgep242, %scevgep245
  %bound1249 = icmp ult ptr %scevgep244, %scevgep243
  %found.conflict250 = and i1 %bound0248, %bound1249
  %bound0251 = icmp ult ptr %scevgep242, %scevgep247
  %bound1252 = icmp ult ptr %scevgep246, %scevgep243
  %found.conflict253 = and i1 %bound0251, %bound1252
  %conflict.rdx254 = or i1 %found.conflict250, %found.conflict253
  %bound0255 = icmp ult ptr %scevgep244, %scevgep247
  %bound1256 = icmp ult ptr %scevgep246, %scevgep245
  %found.conflict257 = and i1 %bound0255, %bound1256
  %conflict.rdx258 = or i1 %conflict.rdx254, %found.conflict257
  br i1 %conflict.rdx258, label %vec.epilog.scalar.ph276.preheader, label %vec.epilog.ph279

vec.epilog.ph279:                                 ; preds = %vector.memcheck241
  %n.vec280 = and i64 %.4.lcssa, 8                ; 3 uses
  %i.ev = and i64 %.4.lcssa, 7
  %i.ew = trunc nuw nsw i64 %n.vec280 to i32
  %i.ex = add i32 %.6.lcssa, %i.ew                ; 2 uses
  br label %vec.epilog.vector.body281

vec.epilog.vector.body281:                        ; preds = %vec.epilog.vector.body281, %vec.epilog.ph279
  %index282 = phi i64 [ 0, %vec.epilog.ph279 ], [ %index.next285, %vec.epilog.vector.body281 ] ; 2 uses
  %i.ey = trunc i64 %index282 to i32
  %i.ez = add i32 %.6.lcssa, %i.ey
  %i.fa = zext i32 %i.ez to i64                   ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 %i.fa ; 2 uses
  %wide.load283 = load <8 x i8>, ptr %i.fb, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %i.fc = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.fa
  %wide.load284 = load <8 x i8>, ptr %i.fc, align 1, !tbaa !9, !alias.scope !38 ; 2 uses
  %i.fd = xor <8 x i8> %wide.load284, %wide.load283
  %i.fe = getelementptr inbounds nuw i8, ptr %.394.lcssa, i64 %i.fa
  store <8 x i8> %i.fd, ptr %i.fe, align 1, !tbaa !9, !alias.scope !39, !noalias !40
  store <8 x i8> %wide.load284, ptr %i.fb, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %index.next285 = add nuw i64 %index282, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next285, %n.vec280
  br i1 %i.ff, label %vec.epilog.middle.block286, label %vec.epilog.vector.body281, !llvm.loop !25

vec.epilog.middle.block286:                       ; preds = %vec.epilog.vector.body281
  %cmp.n287 = icmp eq i64 %.4.lcssa, %n.vec280
  br i1 %cmp.n287, label %.loopexit111, label %vec.epilog.scalar.ph276.preheader

vec.epilog.scalar.ph276.preheader:                ; preds = %vector.memcheck241, %vector.scevcheck240, %iter.check275, %vec.epilog.middle.block286
  %.5159.ph = phi i64 [ %.4.lcssa, %vector.scevcheck240 ], [ %.4.lcssa, %vector.memcheck241 ], [ %.4.lcssa, %iter.check275 ], [ %i.ev, %vec.epilog.middle.block286 ] ; 4 uses
  %.8158.ph = phi i32 [ %.6.lcssa, %vector.scevcheck240 ], [ %.6.lcssa, %vector.memcheck241 ], [ %.6.lcssa, %iter.check275 ], [ %i.ex, %vec.epilog.middle.block286 ] ; 3 uses
  %xtraiter308 = and i64 %.5159.ph, 1
  %lcmp.mod309.not = icmp eq i64 %xtraiter308, 0
  br i1 %lcmp.mod309.not, label %vec.epilog.scalar.ph276.prol.loopexit, label %vec.epilog.scalar.ph276.prol

vec.epilog.scalar.ph276.prol:                     ; preds = %vec.epilog.scalar.ph276.preheader
  %i.fg = add nsw i64 %.5159.ph, -1
  %i.fh = zext i32 %.8158.ph to i64               ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 %i.fh ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !9
  %i.fk = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.fh
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !9   ; 2 uses
  %i.fm = xor i8 %i.fl, %i.fj
  %i.fn = getelementptr inbounds nuw i8, ptr %.394.lcssa, i64 %i.fh
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !9
  store i8 %i.fl, ptr %i.fi, align 1, !tbaa !9
  %i.fo = add i32 %.8158.ph, 1                    ; 2 uses
  br label %vec.epilog.scalar.ph276.prol.loopexit

vec.epilog.scalar.ph276.prol.loopexit:            ; preds = %vec.epilog.scalar.ph276.prol, %vec.epilog.scalar.ph276.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph276.preheader ], [ %i.fo, %vec.epilog.scalar.ph276.prol ]
  %.5159.unr = phi i64 [ %.5159.ph, %vec.epilog.scalar.ph276.preheader ], [ %i.fg, %vec.epilog.scalar.ph276.prol ]
  %.8158.unr = phi i32 [ %.8158.ph, %vec.epilog.scalar.ph276.preheader ], [ %i.fo, %vec.epilog.scalar.ph276.prol ]
  %i.fp = icmp eq i64 %.5159.ph, 1
  br i1 %i.fp, label %.loopexit111, label %vec.epilog.scalar.ph276

vec.epilog.scalar.ph276:                          ; preds = %vec.epilog.scalar.ph276.prol.loopexit, %vec.epilog.scalar.ph276
  %.5159 = phi i64 [ %i.fy, %vec.epilog.scalar.ph276 ], [ %.5159.unr, %vec.epilog.scalar.ph276.prol.loopexit ]
  %.8158 = phi i32 [ %i.gg, %vec.epilog.scalar.ph276 ], [ %.8158.unr, %vec.epilog.scalar.ph276.prol.loopexit ] ; 3 uses
  %i.fq = zext i32 %.8158 to i64                  ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 %i.fq ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !9
  %i.ft = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.fq
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !9   ; 2 uses
  %i.fv = xor i8 %i.fu, %i.fs
  %i.fw = getelementptr inbounds nuw i8, ptr %.394.lcssa, i64 %i.fq
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !9
  store i8 %i.fu, ptr %i.fr, align 1, !tbaa !9
  %i.fx = add i32 %.8158, 1
  %i.fy = add i64 %.5159, -2                      ; 2 uses
  %i.fz = zext i32 %i.fx to i64                   ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 %i.fz ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !9
  %i.gc = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.fz
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !9   ; 2 uses
  %i.ge = xor i8 %i.gd, %i.gb
  %i.gf = getelementptr inbounds nuw i8, ptr %.394.lcssa, i64 %i.fz
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !9
  store i8 %i.gd, ptr %i.ga, align 1, !tbaa !9
  %i.gg = add i32 %.8158, 2                       ; 2 uses
  %.not107.1 = icmp eq i64 %i.fy, 0
  br i1 %.not107.1, label %.loopexit111, label %vec.epilog.scalar.ph276, !llvm.loop !26

.loopexit111:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph276.prol.loopexit, %vec.epilog.scalar.ph276, %vec.epilog.middle.block, %vec.epilog.middle.block286, %._crit_edge153, %._crit_edge128, %bb.a
  %.9.sink = phi i32 [ %i.gg, %vec.epilog.scalar.ph276 ], [ -1, %bb.a ], [ %.1100.lcssa, %._crit_edge128 ], [ %.6.lcssa, %._crit_edge153 ], [ %i.ex, %vec.epilog.middle.block286 ], [ %i.bj, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph276.prol.loopexit ], [ %.lcssa298.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.cs, %vec.epilog.scalar.ph ]
  store i32 %.9.sink, ptr %5, align 4, !tbaa !27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @CRYPTO_cfb128_1_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %.not33 = icmp eq i64 %2, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq i32 %6, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.032 = phi i64 [ 0, %.lr.ph ], [ %i.q, %bb.b ] ; 3 uses
  %i.a = lshr i64 %.032, 3                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i32
  %8 = and i64 %.032, 7                           ; 2 uses
  %9 = trunc nuw nsw i64 %8 to i32                ; 2 uses
  %i.e = lshr exact i32 128, %9
  %i.f = and i32 %i.e, %i.d
  %.not = icmp eq i32 %i.f, 0
  %i.g = select i1 %.not, i8 0, i8 -128           ; 2 uses
  %i.h = load <16 x i8>, ptr %4, align 1          ; 2 uses
  tail call void %7(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %3) #3, !inline_history !0
  %i.i = load i8, ptr %4, align 1, !tbaa !9
  %i.j = xor i8 %i.i, %i.g                        ; 2 uses
  %..i = select i1 %.not.i, i8 %i.g, i8 %i.j
  %i.k = insertelement <16 x i8> poison, i8 %..i, i64 0
  %i.l = shufflevector <16 x i8> %i.h, <16 x i8> %i.k, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.m = tail call <16 x i8> @llvm.fshl.v16i8(<16 x i8> %i.h, <16 x i8> %i.l, <16 x i8> splat (i8 1))
  store <16 x i8> %i.m, ptr %4, align 1, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
  %i.p = ashr i32 -129, %9
  %10 = and i8 %i.j, -128
  %11 = trunc nuw nsw i64 %8 to i8
  %12 = lshr exact i8 %10, %11
  %13 = trunc i32 %i.p to i8
  %14 = and i8 %i.o, %13
  %15 = or i8 %14, %12
  store i8 %15, ptr %i.n, align 1, !tbaa !9
  %i.q = add nuw i64 %.032, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !41

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @CRYPTO_cfb128_8_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca [16 x i8], align 16           ; 7 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq i32 %6, 0
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1 ; 2 uses
  %.sroa.4.1..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 15 ; 2 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.010.us = phi i64 [ %i.f, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.010.us
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.010.us
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %4, i64 16, i1 false)
  tail call void %7(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %3) #3, !inline_history !0
  %i.c = load i8, ptr %i.a, align 1, !tbaa !9     ; 2 uses
  %i.d = load i8, ptr %4, align 1, !tbaa !9
  %i.e = xor i8 %i.d, %i.c
  store i8 %i.e, ptr %i.b, align 1, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.1..sroa_idx, i64 15, i1 false)
  store i8 %i.c, ptr %.sroa.4.1..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.f = add nuw i64 %.010.us, 1                  ; 2 uses
  %exitcond12.not = icmp eq i64 %i.f, %2
  br i1 %exitcond12.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !42

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.010 = phi i64 [ %i.l, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.010
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %4, i64 16, i1 false)
  tail call void %7(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %3) #3, !inline_history !0
  %i.i = load i8, ptr %i.g, align 1, !tbaa !9
  %i.j = load i8, ptr %4, align 1, !tbaa !9
  %i.k = xor i8 %i.j, %i.i                        ; 2 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.1..sroa_idx, i64 15, i1 false)
  store i8 %i.k, ptr %.sroa.4.1..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.l = add nuw i64 %.010, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.fshl.v16i8(<16 x i8>, <16 x i8>, <16 x i8>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10, !30}
!13 = distinct !{!13, !"LVerDomain"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !10, !35, !36}
!18 = distinct !{!18, !10, !35}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10, !30}
!21 = distinct !{!21, !"LVerDomain"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !21}
!25 = distinct !{!25, !10, !35, !36}
!26 = distinct !{!26, !10, !35}
!27 = !{!6, !6, i64 0}
!28 = !{!"long", !5, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"llvm.loop.peeled.count", i32 1}
!31 = !{!14}
!32 = !{!15}
!33 = !{!16, !14}
!34 = !{!16}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = !{!22}
!38 = !{!23}
!39 = !{!24}
!40 = !{!22, !23}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
end_hunk_0
