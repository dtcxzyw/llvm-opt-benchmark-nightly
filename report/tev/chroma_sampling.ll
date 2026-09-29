Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/chroma_sampling?download=true
inline.NumInlined: 973
inline.NumDeleted: 354
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNK31Op_YCbCr444_to_YCbCr420_averageItE18convert_colorspaceERKNSt3__110shared_ptrIK14HeifPixelImageEERK10ColorStateSA_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_extPK20heif_security_limits:bb.a
bb.bc:                                            ; preds = %_ZN5ErrorD2Ev.exit242, %bb.aq
  %i.he = load ptr, ptr %2, align 8, !tbaa !47
  %i.hf = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.he, i32 noundef 0)
          to label %.noexc243 unwind label %bb.bj ; 3 uses

.noexc243:                                        ; preds = %bb.bc
  %.not.i.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, label %bb.bd

bb.bd:                                            ; preds = %.noexc243
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 80
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !154
  %sext.i.i.i = shl i64 %i.hh, 32
  %i.hi = ashr exact i64 %sext.i.i.i, 32
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 56
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !155
  %i.hl = lshr i64 %i.hi, 1
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit: ; preds = %bb.bd, %.noexc243
  %.0304 = phi i64 [ %i.hl, %bb.bd ], [ 0, %.noexc243 ] ; 6 uses
  %.0.i.i.i = phi ptr [ %i.hk, %bb.bd ], [ null, %.noexc243 ] ; 6 uses
  %i.hm = load ptr, ptr %2, align 8, !tbaa !47
  %i.hn = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.hm, i32 noundef 1)
          to label %.noexc247 unwind label %bb.bj ; 3 uses

.noexc247:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %.not.i.i.i244 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i244, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit248, label %bb.be

bb.be:                                            ; preds = %.noexc247
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 80
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !154
  %sext.i.i.i245 = shl i64 %i.hp, 32
  %i.hq = ashr exact i64 %sext.i.i.i245, 32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 56
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !155
  %i.ht = lshr i64 %i.hq, 1
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit248

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit248: ; preds = %bb.be, %.noexc247
  %.0305 = phi i64 [ %i.ht, %bb.be ], [ 0, %.noexc247 ] ; 11 uses
  %.0.i.i.i246 = phi ptr [ %i.hs, %bb.be ], [ null, %.noexc247 ] ; 11 uses
  %i.hu = load ptr, ptr %2, align 8, !tbaa !47
  %i.hv = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.hu, i32 noundef 2)
          to label %.noexc252 unwind label %bb.bj ; 3 uses

.noexc252:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit248
  %.not.i.i.i249 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i249, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit253, label %bb.bf

bb.bf:                                            ; preds = %.noexc252
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 80
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !154
  %sext.i.i.i250 = shl i64 %i.hx, 32
  %i.hy = ashr exact i64 %sext.i.i.i250, 32
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 56
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !155
  %i.ib = lshr i64 %i.hy, 1
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit253

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit253: ; preds = %bb.bf, %.noexc252
  %.0312 = phi i64 [ %i.ib, %bb.bf ], [ 0, %.noexc252 ] ; 11 uses
  %.0.i.i.i251 = phi ptr [ %i.ia, %bb.bf ], [ null, %.noexc252 ] ; 11 uses
  %i.ic = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bn, i32 noundef 0)
          to label %.noexc254 unwind label %bb.bj ; 3 uses

.noexc254:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit253
  %.not.i.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, label %bb.bg

bb.bg:                                            ; preds = %.noexc254
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 80
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !154
  %sext.i.i = shl i64 %i.ie, 32
  %i.if = ashr exact i64 %sext.i.i, 32
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 56
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !155
  %i.ii = lshr i64 %i.if, 1
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit: ; preds = %bb.bg, %.noexc254
  %.0309 = phi i64 [ %i.ii, %bb.bg ], [ 0, %.noexc254 ] ; 6 uses
  %.0.i.i = phi ptr [ %i.ih, %bb.bg ], [ null, %.noexc254 ] ; 6 uses
  %i.ij = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bn, i32 noundef 1)
          to label %.noexc258 unwind label %bb.bj ; 3 uses

.noexc258:                                        ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %.not.i.i255 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i255, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit259, label %bb.bh

bb.bh:                                            ; preds = %.noexc258
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 80
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !154
  %sext.i.i256 = shl i64 %i.il, 32
  %i.im = ashr exact i64 %sext.i.i256, 32
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 56
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !155
  %i.ip = lshr i64 %i.im, 1
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit259

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit259: ; preds = %bb.bh, %.noexc258
  %.0308 = phi i64 [ %i.ip, %bb.bh ], [ 0, %.noexc258 ] ; 7 uses
  %.0.i.i257 = phi ptr [ %i.io, %bb.bh ], [ null, %.noexc258 ] ; 8 uses
  %i.iq = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bn, i32 noundef 2)
          to label %.noexc263 unwind label %bb.bj ; 3 uses

.noexc263:                                        ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit259
  %.not.i.i260 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i260, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit264, label %bb.bi

bb.bi:                                            ; preds = %.noexc263
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 80
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !154
  %sext.i.i261 = shl i64 %i.is, 32
  %i.it = ashr exact i64 %sext.i.i261, 32
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 56
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !155
  %i.iw = lshr i64 %i.it, 1
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit264

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit264: ; preds = %bb.bi, %.noexc263
  %.0307 = phi i64 [ %i.iw, %bb.bi ], [ 0, %.noexc263 ] ; 7 uses
  %.0.i.i262 = phi ptr [ %i.iv, %bb.bi ], [ null, %.noexc263 ] ; 7 uses
  br i1 %i.k, label %bb.bk, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit274

bb.bj:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit259, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit253, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit248, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %bb.bc
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bk:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit264
  %i.iy = load ptr, ptr %2, align 8, !tbaa !47
  %i.iz = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.iy, i32 noundef 6)
          to label %.noexc268 unwind label %bb.bn ; 3 uses

.noexc268:                                        ; preds = %bb.bk
  %.not.i.i.i265 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i265, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit269, label %bb.bl

bb.bl:                                            ; preds = %.noexc268
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 80
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !154
  %sext.i.i.i266 = shl i64 %i.jb, 32
  %i.jc = ashr exact i64 %sext.i.i.i266, 32
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 56
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !155
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit269

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit269: ; preds = %bb.bl, %.noexc268
  %.1311 = phi i64 [ %i.jc, %bb.bl ], [ 0, %.noexc268 ] ; 2 uses
  %.0.i.i.i267 = phi ptr [ %i.je, %bb.bl ], [ null, %.noexc268 ] ; 2 uses
  %i.jf = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bn, i32 noundef 6)
          to label %.noexc273 unwind label %bb.bn ; 3 uses

.noexc273:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit269
  %.not.i.i270 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i270, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit274, label %bb.bm

bb.bm:                                            ; preds = %.noexc273
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 80
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !154
  %sext.i.i271 = shl i64 %i.jh, 32
  %i.ji = ashr exact i64 %sext.i.i271, 32
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 56
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !155
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit274

bb.bn:                                            ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit269, %bb.bk
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit274: ; preds = %bb.bm, %.noexc273, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit264
  %.0310 = phi i64 [ 0, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit264 ], [ %.1311, %.noexc273 ], [ %.1311, %bb.bm ] ; 3 uses
  %.0306 = phi i64 [ 0, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit264 ], [ 0, %.noexc273 ], [ %i.ji, %bb.bm ] ; 3 uses
  %.0186 = phi ptr [ null, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit264 ], [ %.0.i.i.i267, %.noexc273 ], [ %.0.i.i.i267, %bb.bm ] ; 3 uses
  %.0185 = phi ptr [ null, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit264 ], [ null, %.noexc273 ], [ %i.jk, %bb.bm ] ; 3 uses
  %i.jm = and i32 %i.aj, 1
  %.not214 = icmp eq i32 %i.jm, 0                 ; 2 uses
  br i1 %.not214, label %.loopexit, label %.preheader317

.preheader317:                                    ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit274
  %i.jn = add i32 %i.ah, -1                       ; 3 uses
  %.not337 = icmp eq i32 %i.jn, 0
  br i1 %.not337, label %.preheader316, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader317
  %i.jo = add nsw i32 %i.aj, -1
  %i.jp = zext i32 %i.jo to i64                   ; 4 uses
  %i.jq = mul i64 %.0305, %i.jp
  %i.jr = getelementptr [2 x i8], ptr %.0.i.i.i246, i64 %i.jq ; 4 uses
  %i.js = add nsw i32 %i.br, -1
  %i.jt = zext i32 %i.js to i64                   ; 4 uses
  %i.ju = mul i64 %.0308, %i.jt
  %i.jv = getelementptr [2 x i8], ptr %.0.i.i257, i64 %i.ju ; 5 uses
  %i.jw = mul i64 %.0312, %i.jp
  %i.jx = getelementptr [2 x i8], ptr %.0.i.i.i251, i64 %i.jw ; 4 uses
  %i.jy = mul i64 %.0307, %i.jt
  %i.jz = getelementptr [2 x i8], ptr %.0.i.i262, i64 %i.jy ; 5 uses
  %i.ka = zext i32 %i.jn to i64                   ; 3 uses
  %i.kb = add nsw i64 %i.ka, -1
  %i.kc = lshr i64 %i.kb, 1
  %i.kd = add nuw i64 %i.kc, 1                    ; 2 uses
  %min.iters.check = icmp ult i32 %i.jn, 63
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ke = mul i64 %.0308, %i.jt
  %i.kf = shl i64 %i.ke, 1
  %15 = add nsw i64 %i.ka, -1                     ; 2 uses
  %i.kg = and i64 %15, -2                         ; 2 uses
  %i.kh = getelementptr i8, ptr %.0.i.i257, i64 %i.kf
  %i.ki = getelementptr i8, ptr %i.kh, i64 %i.kg
  %scevgep.a = getelementptr i8, ptr %i.ki, i64 2 ; 3 uses
  %i.kj = mul i64 %.0307, %i.jt
  %i.kk = shl i64 %i.kj, 1
  %i.kl = getelementptr i8, ptr %.0.i.i262, i64 %i.kk
  %i.km = getelementptr i8, ptr %i.kl, i64 %i.kg
  %scevgep397 = getelementptr i8, ptr %i.km, i64 2 ; 3 uses
  %i.kn = mul i64 %.0305, %i.jp
  %i.ko = shl i64 %i.kn, 1
  %i.kp = shl nsw i64 %15, 1
  %i.kq = and i64 %i.kp, -4                       ; 2 uses
  %i.kr = getelementptr i8, ptr %.0.i.i.i246, i64 %i.ko
  %i.ks = getelementptr i8, ptr %i.kr, i64 %i.kq
  %scevgep398 = getelementptr i8, ptr %i.ks, i64 4 ; 2 uses
  %i.kt = mul i64 %.0312, %i.jp
  %i.ku = shl i64 %i.kt, 1
  %i.kv = getelementptr i8, ptr %.0.i.i.i251, i64 %i.ku
  %i.kw = getelementptr i8, ptr %i.kv, i64 %i.kq
  %scevgep399 = getelementptr i8, ptr %i.kw, i64 4 ; 2 uses
  %bound0 = icmp ult ptr %i.jv, %scevgep397
  %bound1 = icmp ult ptr %i.jz, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0400 = icmp ult ptr %i.jv, %scevgep398
  %bound1401 = icmp ult ptr %i.jr, %scevgep.a
  %found.conflict402 = and i1 %bound0400, %bound1401
  %conflict.rdx = or i1 %found.conflict, %found.conflict402
  %bound0403 = icmp ult ptr %i.jv, %scevgep399
  %bound1404 = icmp ult ptr %i.jx, %scevgep.a
  %found.conflict405 = and i1 %bound0403, %bound1404
  %conflict.rdx406 = or i1 %conflict.rdx, %found.conflict405
  %bound0407 = icmp ult ptr %i.jz, %scevgep398
  %bound1408 = icmp ult ptr %i.jr, %scevgep397
  %found.conflict409 = and i1 %bound0407, %bound1408
  %conflict.rdx410 = or i1 %conflict.rdx406, %found.conflict409
  %bound0411 = icmp ult ptr %i.jz, %scevgep399
  %bound1412 = icmp ult ptr %i.jx, %scevgep397
  %found.conflict413 = and i1 %bound0411, %bound1412
  %conflict.rdx414 = or i1 %conflict.rdx410, %found.conflict413
  br i1 %conflict.rdx414, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.kd, -4                      ; 3 uses
  %i.kx = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ky = shl nuw i64 %index, 1                   ; 4 uses
  %i.kz = getelementptr [2 x i8], ptr %i.jr, i64 %i.ky
  %wide.vec = load <8 x i16>, ptr %i.kz, align 2, !tbaa !28, !alias.scope !248
  %i.la = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.lb = bitcast <8 x i16> %i.la to <4 x i32>
  %i.lc = bitcast <8 x i16> %i.la to <4 x i32>
  %i.ld = and <4 x i32> %i.lc, splat (i32 65535)
  %i.le = lshr <4 x i32> %i.lb, splat (i32 16)
  %i.lf = add nuw nsw <4 x i32> %i.ld, splat (i32 1)
  %i.lg = add nuw nsw <4 x i32> %i.lf, %i.le
  %i.lh = lshr <4 x i32> %i.lg, splat (i32 1)
  %i.li = trunc nuw <4 x i32> %i.lh to <4 x i16>
  %i.lj = getelementptr i8, ptr %i.jv, i64 %i.ky
  store <4 x i16> %i.li, ptr %i.lj, align 2, !tbaa !28, !alias.scope !249, !noalias !250
  %i.lk = getelementptr [2 x i8], ptr %i.jx, i64 %i.ky
  %wide.vec416 = load <8 x i16>, ptr %i.lk, align 2, !tbaa !28, !alias.scope !251
  %i.ll = freeze <8 x i16> %wide.vec416           ; 2 uses
  %i.lm = bitcast <8 x i16> %i.ll to <4 x i32>
  %i.ln = bitcast <8 x i16> %i.ll to <4 x i32>
  %i.lo = and <4 x i32> %i.ln, splat (i32 65535)
  %i.lp = lshr <4 x i32> %i.lm, splat (i32 16)
  %i.lq = add nuw nsw <4 x i32> %i.lo, splat (i32 1)
  %i.lr = add nuw nsw <4 x i32> %i.lq, %i.lp
  %i.ls = lshr <4 x i32> %i.lr, splat (i32 1)
  %i.lt = trunc nuw <4 x i32> %i.ls to <4 x i16>
  %i.lu = getelementptr i8, ptr %i.jz, i64 %i.ky
  store <4 x i16> %i.lt, ptr %i.lu, align 2, !tbaa !28, !alias.scope !252, !noalias !253
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lv = icmp eq i64 %index.next, %n.vec
  br i1 %i.lv, label %middle.block, label %vector.body, !llvm.loop !227

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kd, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.kx, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.lw = getelementptr [2 x i8], ptr %i.jr, i64 %indvars.iv ; 2 uses
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !28
  %i.ly = zext i16 %i.lx to i32
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 2
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !28
  %i.mb = zext i16 %i.ma to i32
  %i.mc = add nuw nsw i32 %i.ly, 1
  %i.md = add nuw nsw i32 %i.mc, %i.mb
  %i.me = lshr i32 %i.md, 1
  %i.mf = trunc nuw i32 %i.me to i16
  %i.mg = getelementptr i8, ptr %i.jv, i64 %indvars.iv
  store i16 %i.mf, ptr %i.mg, align 2, !tbaa !28
  %i.mh = getelementptr [2 x i8], ptr %i.jx, i64 %indvars.iv ; 2 uses
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !28
  %i.mj = zext i16 %i.mi to i32
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 2
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !28
  %i.mm = zext i16 %i.ml to i32
  %i.mn = add nuw nsw i32 %i.mj, 1
  %i.mo = add nuw nsw i32 %i.mn, %i.mm
  %i.mp = lshr i32 %i.mo, 1
  %i.mq = trunc nuw i32 %i.mp to i16
  %i.mr = getelementptr i8, ptr %i.jz, i64 %indvars.iv
  store i16 %i.mq, ptr %i.mr, align 2, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ms = icmp samesign ult i64 %indvars.iv.next, %i.ka
  br i1 %i.ms, label %scalar.ph, label %.loopexit, !llvm.loop !228

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit274
  %i.mt = and i32 %i.ah, 1
  %.not215 = icmp eq i32 %i.mt, 0
  br i1 %.not215, label %.loopexit..critedge219_crit_edge, label %.preheader316

.loopexit..critedge219_crit_edge:                 ; preds = %.loopexit
  %.pre364 = add i32 %i.aj, -1
  br label %.critedge219

.preheader316:                                    ; preds = %.preheader317, %.loopexit
  %i.mu = add i32 %i.aj, -1                       ; 5 uses
  %.not338 = icmp eq i32 %i.mu, 0
  br i1 %.not338, label %._crit_edge.thread, label %.lr.ph320

.lr.ph320:                                        ; preds = %.preheader316
  %i.mv = zext i32 %i.ah to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %.0.i.i.i246, i64 %i.mv ; 2 uses
  %i.mw = zext nneg i32 %i.bp to i64              ; 2 uses
  %invariant.gep323 = getelementptr [2 x i8], ptr %.0.i.i257, i64 %i.mw
  %invariant.gep325 = getelementptr [2 x i8], ptr %.0.i.i.i251, i64 %i.mv ; 2 uses
  %invariant.gep329 = getelementptr [2 x i8], ptr %.0.i.i262, i64 %i.mw
  %i.mx = zext i32 %i.mu to i64
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph320, %bb.bo
  %indvars.iv344 = phi i64 [ 0, %.lr.ph320 ], [ %indvars.iv.next345, %bb.bo ] ; 5 uses
  %i.my = mul i64 %.0305, %indvars.iv344
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.my
  %i.mz = getelementptr i8, ptr %gep, i64 -2
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !28
  %i.nb = zext i16 %i.na to i32
  %i.nc = or disjoint i64 %indvars.iv344, 1       ; 2 uses
  %i.nd = mul i64 %.0305, %i.nc
  %gep322 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.nd
  %i.ne = getelementptr i8, ptr %gep322, i64 -2
  %i.nf = load i16, ptr %i.ne, align 2, !tbaa !28
  %i.ng = zext i16 %i.nf to i32
  %i.nh = add nuw nsw i32 %i.nb, 1
  %i.ni = add nuw nsw i32 %i.nh, %i.ng
  %i.nj = lshr i32 %i.ni, 1
  %i.nk = trunc nuw i32 %i.nj to i16
  %i.nl = lshr exact i64 %indvars.iv344, 1        ; 2 uses
  %i.nm = mul i64 %.0308, %i.nl
  %gep324 = getelementptr [2 x i8], ptr %invariant.gep323, i64 %i.nm
  %i.nn = getelementptr i8, ptr %gep324, i64 -2
  store i16 %i.nk, ptr %i.nn, align 2, !tbaa !28
  %i.no = mul i64 %.0312, %indvars.iv344
  %gep326 = getelementptr [2 x i8], ptr %invariant.gep325, i64 %i.no
  %i.np = getelementptr i8, ptr %gep326, i64 -2
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !28
  %i.nr = zext i16 %i.nq to i32
  %i.ns = mul i64 %.0312, %i.nc
  %gep328 = getelementptr [2 x i8], ptr %invariant.gep325, i64 %i.ns
  %i.nt = getelementptr i8, ptr %gep328, i64 -2
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !28
  %i.nv = zext i16 %i.nu to i32
  %i.nw = add nuw nsw i32 %i.nr, 1
  %i.nx = add nuw nsw i32 %i.nw, %i.nv
  %i.ny = lshr i32 %i.nx, 1
  %i.nz = trunc nuw i32 %i.ny to i16
  %i.oa = mul i64 %.0307, %i.nl
  %gep330 = getelementptr [2 x i8], ptr %invariant.gep329, i64 %i.oa
  %i.ob = getelementptr i8, ptr %gep330, i64 -2
  store i16 %i.nz, ptr %i.ob, align 2, !tbaa !28
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 2 ; 2 uses
  %i.oc = icmp samesign ult i64 %indvars.iv.next345, %i.mx
  br i1 %i.oc, label %bb.bo, label %._crit_edge, !llvm.loop !229

._crit_edge:                                      ; preds = %bb.bo
  br i1 %.not214, label %.preheader315.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader316, %._crit_edge
  %i.od = zext i32 %i.mu to i64                   ; 2 uses
  %i.oe = mul i64 %.0305, %i.od
  %i.of = zext i32 %i.ah to i64                   ; 2 uses
  %i.og = getelementptr [2 x i8], ptr %.0.i.i.i246, i64 %i.oe
  %i.oh = getelementptr [2 x i8], ptr %i.og, i64 %i.of
  %i.oi = getelementptr i8, ptr %i.oh, i64 -2
  %i.oj = load i16, ptr %i.oi, align 2, !tbaa !28
  %i.ok = add nsw i32 %i.br, -1
  %i.ol = zext i32 %i.ok to i64                   ; 2 uses
  %i.om = mul i64 %.0308, %i.ol
  %i.on = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.oo = getelementptr [2 x i8], ptr %.0.i.i257, i64 %i.om
  %i.op = getelementptr [2 x i8], ptr %i.oo, i64 %i.on
  %i.oq = getelementptr i8, ptr %i.op, i64 -2
  store i16 %i.oj, ptr %i.oq, align 2, !tbaa !28
  %i.or = mul i64 %.0312, %i.od
  %i.os = getelementptr [2 x i8], ptr %.0.i.i.i251, i64 %i.or
  %i.ot = getelementptr [2 x i8], ptr %i.os, i64 %i.of
  %i.ou = getelementptr i8, ptr %i.ot, i64 -2
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !28
  %i.ow = mul i64 %.0307, %i.ol
  %i.ox = getelementptr [2 x i8], ptr %.0.i.i262, i64 %i.ow
end_hunk_0
