Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vnc-enc-tight?download=true
inline.NumInlined: 64
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 31
begin_hunk_0_@send_sub_rect:bb.a

bb.bb:                                            ; preds = %bb.ap
  %i.fx = icmp slt i32 %.034.i, 257
  br i1 %i.fx, label %bb.bc, label %send_sub_rect_jpeg.exit

bb.bc:                                            ; preds = %bb.bb
  br i1 %.169, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fy = icmp slt i32 %.034.i, 97
  %i.fz = add i8 %i.ec, -7
  %.not.i74 = icmp ult i8 %i.fz, 3
  %or.cond = or i1 %i.fy, %.not.i74
  br i1 %or.cond, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ga = tail call fastcc i32 @tight_detect_smooth_image(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %4, i32 noundef %5)
  %.not57.i = icmp eq i32 %i.ga, 0
  br i1 %.not57.i, label %bb.bg, label %._crit_edge142

._crit_edge142:                                   ; preds = %bb.be
  %.pre143 = load i8, ptr %i.eb, align 4
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge142, %bb.bc
  %i.gb = phi i8 [ %.pre143, %._crit_edge142 ], [ %i.ec, %bb.bc ]
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [56 x i8], ptr @tight_conf, i64 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 44
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = tail call fastcc i32 @send_jpeg_rect(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.gf)
  br label %send_sub_rect_jpeg.exit

bb.bg:                                            ; preds = %bb.be, %bb.bd
  %i.gh = tail call fastcc i32 @send_palette_rect(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %.pre145)
  br label %send_sub_rect_jpeg.exit

bb.bh:                                            ; preds = %tight_fill_palette.exit._crit_edge, %bb.ao
  %i.gi = phi ptr [ %.pre144, %tight_fill_palette.exit._crit_edge ], [ %.pre145, %bb.ao ]
  switch i32 %.034.i, label %bb.by [
    i32 0, label %bb.bi
    i32 1, label %bb.bs
    i32 2, label %bb.bx
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.gj = tail call fastcc i32 @tight_detect_smooth_image(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %4, i32 noundef %5)
  %.not.i82 = icmp eq i32 %i.gj, 0
  br i1 %.not.i82, label %bb.br, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gk = load i8, ptr %i.ad, align 1
  %i.gl = zext i8 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [56 x i8], ptr @tight_conf, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 28
  %i.go = load i32, ptr %i.gn, align 4
  %i.gp = load i8, ptr %i.ap, align 1
  %i.gq = icmp eq i8 %i.gp, 1
  br i1 %i.gq, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.gr = tail call fastcc i32 @send_full_color_rect(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  %i.gs = icmp ne i32 %i.gr, 0
  br label %send_gradient_rect.exit.i

bb.bl:                                            ; preds = %bb.bj
  tail call void @vnc_write_u8(ptr noundef nonnull %0, i8 noundef zeroext 112) #12
  tail call void @vnc_write_u8(ptr noundef nonnull %0, i8 noundef zeroext 2) #12
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 2848 ; 2 uses
  %i.gu = mul i32 %4, 3
  %i.gv = sext i32 %i.gu to i64
  %i.gw = shl nsw i64 %i.gv, 2                    ; 3 uses
  tail call void @buffer_reserve(ptr noundef nonnull %i.gt, i64 noundef %i.gw) #12
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 2726
  %i.gy = load i8, ptr %i.gx, align 2
  %.not.i.i83 = icmp eq i8 %i.gy, 0
  br i1 %.not.i.i83, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gz = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 2880 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.hb, i8 noundef 0, i64 noundef range(i64 -8589934592, 8589934589) %i.gw, i1 noundef false) #12
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 86676
  %i.hd = load i8, ptr %i.hc, align 4
  %i.he = zext nneg i8 %i.hd to i32
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 86677
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = zext nneg i8 %i.hg to i32
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 86678
  %i.hj = load i8, ptr %i.hi, align 2
  %i.hk = zext nneg i8 %i.hj to i32
  %i.hl = icmp sgt i32 %5, 0
  %i.hm = icmp sgt i32 %4, 0
  %or.cond.i.i = and i1 %i.hm, %i.hl
  br i1 %or.cond.i.i, label %.preheader.us.i.i.i, label %tight_filter_gradient24.exit.i.i

.preheader.us.i.i.i:                              ; preds = %bb.bm, %._crit_edge.us.i.i.i
  %.03859.us.i.i.i = phi i32 [ %i.iy, %._crit_edge.us.i.i.i ], [ 0, %bb.bm ]
  %.04358.us.i.i.i = phi ptr [ %i.iw, %._crit_edge.us.i.i.i ], [ %i.gz, %bb.bm ]
  %.04557.us.i.i.i = phi ptr [ %i.iv, %._crit_edge.us.i.i.i ], [ %i.gz, %bb.bm ]
  %i.hn = load ptr, ptr %i.ha, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.preheader.us.i.i.i
  %.sroa.079.0.i.i.i = phi i32 [ 0, %.preheader.us.i.i.i ], [ %i.hr, %bb.bn ]
  %.sroa.881.0.i.i.i = phi i32 [ 0, %.preheader.us.i.i.i ], [ %i.ic, %bb.bn ]
  %.sroa.1183.0.i.i.i = phi i32 [ 0, %.preheader.us.i.i.i ], [ %i.in, %bb.bn ]
  %.sroa.073.0.i.i.i = phi i32 [ 0, %.preheader.us.i.i.i ], [ %i.hp, %bb.bn ]
  %.sroa.8.0.i.i.i = phi i32 [ 0, %.preheader.us.i.i.i ], [ %i.ia, %bb.bn ]
  %.sroa.11.0.i.i.i = phi i32 [ 0, %.preheader.us.i.i.i ], [ %i.il, %bb.bn ]
  %.03955.us.i.i.i = phi i32 [ 0, %.preheader.us.i.i.i ], [ %i.ix, %bb.bn ]
  %.04154.us.i.i.i = phi ptr [ %i.hn, %.preheader.us.i.i.i ], [ %i.io, %bb.bn ] ; 5 uses
  %.14453.us.i.i.i = phi ptr [ %.04358.us.i.i.i, %.preheader.us.i.i.i ], [ %i.iw, %bb.bn ] ; 2 uses
  %.14652.us.i.i.i = phi ptr [ %.04557.us.i.i.i, %.preheader.us.i.i.i ], [ %i.iv, %bb.bn ] ; 4 uses
  %i.ho = load i32, ptr %.14453.us.i.i.i, align 4 ; 3 uses
  %i.hp = load i32, ptr %.04154.us.i.i.i, align 4 ; 2 uses
  %i.hq = lshr i32 %i.ho, %i.he                   ; 2 uses
  %i.hr = and i32 %i.hq, 255                      ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.04154.us.i.i.i, i64 4 ; 2 uses
  store i32 %i.hr, ptr %.04154.us.i.i.i, align 4
  %i.ht = sub i32 %.sroa.079.0.i.i.i, %.sroa.073.0.i.i.i
  %i.hu = add i32 %i.ht, %i.hp
  %i.hv = tail call i32 @llvm.smax.i32(i32 %i.hu, i32 0)
  %i.hw = tail call i32 @llvm.umin.i32(i32 %i.hv, i32 255)
  %i.hx = sub i32 %i.hq, %i.hw
  %i.hy = trunc i32 %i.hx to i8
  %i.hz = getelementptr inbounds nuw i8, ptr %.14652.us.i.i.i, i64 1
  store i8 %i.hy, ptr %.14652.us.i.i.i, align 1
  %i.ia = load i32, ptr %i.hs, align 4            ; 2 uses
  %i.ib = lshr i32 %i.ho, %i.hh                   ; 2 uses
  %i.ic = and i32 %i.ib, 255                      ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.04154.us.i.i.i, i64 8 ; 2 uses
  store i32 %i.ic, ptr %i.hs, align 4
  %i.ie = sub i32 %.sroa.881.0.i.i.i, %.sroa.8.0.i.i.i
  %i.if = add i32 %i.ie, %i.ia
  %i.ig = tail call i32 @llvm.smax.i32(i32 %i.if, i32 0)
  %i.ih = tail call i32 @llvm.umin.i32(i32 %i.ig, i32 255)
  %i.ii = sub i32 %i.ib, %i.ih
  %i.ij = trunc i32 %i.ii to i8
  %i.ik = getelementptr inbounds nuw i8, ptr %.14652.us.i.i.i, i64 2
  store i8 %i.ij, ptr %i.hz, align 1
  %i.il = load i32, ptr %i.id, align 4            ; 2 uses
  %i.im = lshr i32 %i.ho, %i.hk                   ; 2 uses
  %i.in = and i32 %i.im, 255                      ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.04154.us.i.i.i, i64 12
  store i32 %i.in, ptr %i.id, align 4
  %i.ip = sub i32 %.sroa.1183.0.i.i.i, %.sroa.11.0.i.i.i
  %i.iq = add i32 %i.ip, %i.il
  %i.ir = tail call i32 @llvm.smax.i32(i32 %i.iq, i32 0)
  %i.is = tail call i32 @llvm.umin.i32(i32 %i.ir, i32 255)
  %i.it = sub i32 %i.im, %i.is
  %i.iu = trunc i32 %i.it to i8
  %i.iv = getelementptr inbounds nuw i8, ptr %.14652.us.i.i.i, i64 3 ; 2 uses
  store i8 %i.iu, ptr %i.ik, align 1
  %i.iw = getelementptr inbounds nuw i8, ptr %.14453.us.i.i.i, i64 4 ; 2 uses
  %i.ix = add nuw nsw i32 %.03955.us.i.i.i, 1     ; 2 uses
  %exitcond68.not.i.i.i = icmp eq i32 %i.ix, %4
  br i1 %exitcond68.not.i.i.i, label %._crit_edge.us.i.i.i, label %bb.bn, !llvm.loop !38

._crit_edge.us.i.i.i:                             ; preds = %bb.bn
  %i.iy = add nuw nsw i32 %.03859.us.i.i.i, 1     ; 2 uses
  %exitcond69.not.i.i.i = icmp eq i32 %i.iy, %5
  br i1 %exitcond69.not.i.i.i, label %tight_filter_gradient24.exit.i.i, label %.preheader.us.i.i.i, !llvm.loop !39

bb.bo:                                            ; preds = %bb.bl
  %i.iz = load i8, ptr %i.ap, align 1
  %i.ja = icmp eq i8 %i.iz, 4
  %i.jb = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 2880 ; 3 uses
  %i.jd = load ptr, ptr %i.jc, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.jd, i8 noundef 0, i64 noundef range(i64 -8589934592, 8589934589) %i.gw, i1 noundef false) #12
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 86680
  %i.jf = load i8, ptr %i.je, align 8
  %i.jg = zext i8 %i.jf to i32                    ; 8 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 86681
  %i.ji = load i8, ptr %i.jh, align 1
  %i.jj = zext i8 %i.ji to i32                    ; 8 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 86682
  %i.jl = load i8, ptr %i.jk, align 2
  %i.jm = zext i8 %i.jl to i32                    ; 8 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 86676
  %i.jo = load i8, ptr %i.jn, align 4
  %i.jp = zext i8 %i.jo to i32                    ; 6 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 86677
  %i.jr = load i8, ptr %i.jq, align 1
  %i.js = zext i8 %i.jr to i32                    ; 6 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 86678
  %i.ju = load i8, ptr %i.jt, align 2
  %i.jv = zext i8 %i.ju to i32                    ; 6 uses
  %i.jw = icmp sgt i32 %5, 0
  %i.jx = icmp sgt i32 %4, 0
  %or.cond99.i.i = and i1 %i.jx, %i.jw            ; 2 uses
  br i1 %i.ja, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  br i1 %or.cond99.i.i, label %.preheader.us.i47.i.i.preheader, label %tight_filter_gradient24.exit.i.i

.preheader.us.i47.i.i.preheader:                  ; preds = %bb.bp
  %i.jy = add nsw i32 %4, -1
  %i.jz = zext nneg i32 %i.jy to i64              ; 2 uses
  %i.ka = mul nuw nsw i64 %i.jz, 12
  %i.kb = shl nuw nsw i64 %i.jz, 2
  %i.kc = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check260 = icmp ult i32 %4, 4
  %n.vec262 = and i64 %i.kc, 2147483644           ; 5 uses
  %i.kd = trunc nuw nsw i64 %n.vec262 to i32
  %i.ke = mul nuw nsw i64 %n.vec262, 12
  %i.kf = shl nuw nsw i64 %n.vec262, 2
  %broadcast.splatinsert263 = insertelement <4 x i32> poison, i32 %i.jp, i64 0
  %broadcast.splat264 = shufflevector <4 x i32> %broadcast.splatinsert263, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert265 = insertelement <4 x i32> poison, i32 %i.jg, i64 0
  %broadcast.splat266 = shufflevector <4 x i32> %broadcast.splatinsert265, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert267 = insertelement <4 x i32> poison, i32 %i.js, i64 0
  %broadcast.splat268 = shufflevector <4 x i32> %broadcast.splatinsert267, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert269 = insertelement <4 x i32> poison, i32 %i.jj, i64 0
  %broadcast.splat270 = shufflevector <4 x i32> %broadcast.splatinsert269, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert271 = insertelement <4 x i32> poison, i32 %i.jv, i64 0
  %broadcast.splat272 = shufflevector <4 x i32> %broadcast.splatinsert271, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert273 = insertelement <4 x i32> poison, i32 %i.jm, i64 0
  %broadcast.splat274 = shufflevector <4 x i32> %broadcast.splatinsert273, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %cmp.n295 = icmp eq i64 %n.vec262, %i.kc
  br label %.preheader.us.i47.i.i

.preheader.us.i47.i.i:                            ; preds = %.preheader.us.i47.i.i.preheader, %._crit_edge.us.i50.i.i
  %.05171.us.i.i.i = phi i32 [ %i.ou, %._crit_edge.us.i50.i.i ], [ 0, %.preheader.us.i47.i.i.preheader ]
  %.05970.us.i.i.i = phi ptr [ %.lcssa, %._crit_edge.us.i50.i.i ], [ %i.jb, %.preheader.us.i47.i.i.preheader ] ; 6 uses
  %i.kg = load ptr, ptr %i.jc, align 8            ; 9 uses
  br i1 %min.iters.check260, label %scalar.ph259.preheader, label %vector.memcheck253

vector.memcheck253:                               ; preds = %.preheader.us.i47.i.i
  %i.kh = getelementptr i8, ptr %i.kg, i64 %i.ka
  %scevgep254 = getelementptr i8, ptr %i.kh, i64 12
  %i.ki = getelementptr i8, ptr %.05970.us.i.i.i, i64 %i.kb
  %scevgep255 = getelementptr i8, ptr %i.ki, i64 4
  %bound0256 = icmp ult ptr %i.kg, %scevgep255
  %bound1257 = icmp ult ptr %.05970.us.i.i.i, %scevgep254
  %found.conflict258 = and i1 %bound0256, %bound1257
  br i1 %found.conflict258, label %scalar.ph259.preheader, label %vector.ph261

vector.ph261:                                     ; preds = %vector.memcheck253
  %i.kj = getelementptr i8, ptr %i.kg, i64 %i.ke
  %i.kk = getelementptr i8, ptr %.05970.us.i.i.i, i64 %i.kf ; 2 uses
  br label %vector.body275

vector.body275:                                   ; preds = %vector.body275, %vector.ph261
  %index276 = phi i64 [ 0, %vector.ph261 ], [ %index.next290, %vector.body275 ] ; 3 uses
  %vector.recur277 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph261 ], [ %i.la, %vector.body275 ]
  %vector.recur278 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph261 ], [ %i.ly, %vector.body275 ]
  %vector.recur279 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph261 ], [ %i.mx, %vector.body275 ]
  %vector.recur280 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph261 ], [ %i.kx, %vector.body275 ]
  %vector.recur281 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph261 ], [ %i.lv, %vector.body275 ]
  %vector.recur282 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph261 ], [ %i.mu, %vector.body275 ]
  %i.kl = mul i64 %index276, 12                   ; 4 uses
  %next.gep283 = getelementptr i8, ptr %i.kg, i64 %i.kl ; 4 uses
  %i.km = getelementptr i8, ptr %i.kg, i64 %i.kl  ; 3 uses
  %next.gep284 = getelementptr i8, ptr %i.km, i64 12
  %i.kn = getelementptr i8, ptr %i.kg, i64 %i.kl  ; 3 uses
  %next.gep285 = getelementptr i8, ptr %i.kn, i64 24
  %i.ko = getelementptr i8, ptr %i.kg, i64 %i.kl  ; 3 uses
  %next.gep286 = getelementptr i8, ptr %i.ko, i64 36
  %i.kp = shl i64 %index276, 2
  %next.gep287 = getelementptr i8, ptr %.05970.us.i.i.i, i64 %i.kp ; 2 uses
  %wide.load288 = load <4 x i32>, ptr %next.gep287, align 4, !alias.scope !52 ; 3 uses
  %i.kq = load i32, ptr %next.gep283, align 4, !alias.scope !53, !noalias !52
  %i.kr = load i32, ptr %next.gep284, align 4, !alias.scope !53, !noalias !52
  %i.ks = load i32, ptr %next.gep285, align 4, !alias.scope !53, !noalias !52
  %i.kt = load i32, ptr %next.gep286, align 4, !alias.scope !53, !noalias !52 ; 2 uses
  %i.ku = insertelement <4 x i32> poison, i32 %i.kq, i64 0
  %i.kv = insertelement <4 x i32> %i.ku, i32 %i.kr, i64 1
  %i.kw = insertelement <4 x i32> %i.kv, i32 %i.ks, i64 2 ; 2 uses
  %i.kx = insertelement <4 x i32> %i.kw, i32 %i.kt, i64 3 ; 2 uses
  %i.ky = shufflevector <4 x i32> %vector.recur280, <4 x i32> %i.kw, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.kz = lshr <4 x i32> %wide.load288, %broadcast.splat264
  %i.la = and <4 x i32> %i.kz, %broadcast.splat266 ; 5 uses
  %i.lb = shufflevector <4 x i32> %vector.recur277, <4 x i32> %i.la, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lc = getelementptr inbounds nuw i8, ptr %next.gep283, i64 4
  %i.ld = getelementptr i8, ptr %i.km, i64 16
  %i.le = getelementptr i8, ptr %i.kn, i64 28
  %i.lf = getelementptr i8, ptr %i.ko, i64 40
  %i.lg = sub <4 x i32> %i.lb, %i.ky
  %i.lh = add <4 x i32> %i.kx, %i.lg              ; 2 uses
  %i.li = icmp slt <4 x i32> %i.lh, zeroinitializer
  %i.lj = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.lh, <4 x i32> %broadcast.splat266)
  %i.lk = select <4 x i1> %i.li, <4 x i32> zeroinitializer, <4 x i32> %i.lj
  %i.ll = sub nsw <4 x i32> %i.la, %i.lk
  %i.lm = and <4 x i32> %i.ll, %broadcast.splat266
  %i.ln = shl <4 x i32> %i.lm, %broadcast.splat264
  %i.lo = load i32, ptr %i.lc, align 4, !alias.scope !53, !noalias !52
  %i.lp = load i32, ptr %i.ld, align 4, !alias.scope !53, !noalias !52
  %i.lq = load i32, ptr %i.le, align 4, !alias.scope !53, !noalias !52
  %i.lr = load i32, ptr %i.lf, align 4, !alias.scope !53, !noalias !52 ; 2 uses
  %i.ls = insertelement <4 x i32> poison, i32 %i.lo, i64 0
  %i.lt = insertelement <4 x i32> %i.ls, i32 %i.lp, i64 1
  %i.lu = insertelement <4 x i32> %i.lt, i32 %i.lq, i64 2 ; 2 uses
  %i.lv = insertelement <4 x i32> %i.lu, i32 %i.lr, i64 3 ; 2 uses
  %i.lw = shufflevector <4 x i32> %vector.recur281, <4 x i32> %i.lu, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lx = lshr <4 x i32> %wide.load288, %broadcast.splat268
  %i.ly = and <4 x i32> %i.lx, %broadcast.splat270 ; 5 uses
  %i.lz = shufflevector <4 x i32> %vector.recur278, <4 x i32> %i.ly, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ma = getelementptr inbounds nuw i8, ptr %next.gep283, i64 8
  %i.mb = getelementptr i8, ptr %i.km, i64 20
  %i.mc = getelementptr i8, ptr %i.kn, i64 32
  %i.md = getelementptr i8, ptr %i.ko, i64 44
  %i.me = sub <4 x i32> %i.lz, %i.lw
  %i.mf = add <4 x i32> %i.lv, %i.me              ; 2 uses
  %i.mg = icmp slt <4 x i32> %i.mf, zeroinitializer
  %i.mh = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.mf, <4 x i32> %broadcast.splat270)
  %i.mi = select <4 x i1> %i.mg, <4 x i32> zeroinitializer, <4 x i32> %i.mh
  %i.mj = sub nsw <4 x i32> %i.ly, %i.mi
  %i.mk = and <4 x i32> %i.mj, %broadcast.splat270
  %i.ml = shl <4 x i32> %i.mk, %broadcast.splat268
  %i.mm = or <4 x i32> %i.ml, %i.ln
  %i.mn = load i32, ptr %i.ma, align 4, !alias.scope !53, !noalias !52
  %i.mo = load i32, ptr %i.mb, align 4, !alias.scope !53, !noalias !52
  %i.mp = load i32, ptr %i.mc, align 4, !alias.scope !53, !noalias !52
  %i.mq = load i32, ptr %i.md, align 4, !alias.scope !53, !noalias !52 ; 2 uses
  %i.mr = insertelement <4 x i32> poison, i32 %i.mn, i64 0
  %i.ms = insertelement <4 x i32> %i.mr, i32 %i.mo, i64 1
  %i.mt = insertelement <4 x i32> %i.ms, i32 %i.mp, i64 2 ; 2 uses
  %i.mu = insertelement <4 x i32> %i.mt, i32 %i.mq, i64 3 ; 2 uses
  %i.mv = shufflevector <4 x i32> %vector.recur282, <4 x i32> %i.mt, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.mw = lshr <4 x i32> %wide.load288, %broadcast.splat272
  %i.mx = and <4 x i32> %i.mw, %broadcast.splat274 ; 5 uses
  %i.my = shufflevector <4 x i32> %vector.recur279, <4 x i32> %i.mx, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.mz = shufflevector <4 x i32> %i.la, <4 x i32> %i.ly, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.na = shufflevector <4 x i32> %i.mx, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec289 = shufflevector <8 x i32> %i.mz, <8 x i32> %i.na, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x i32> %interleaved.vec289, ptr %next.gep283, align 4, !alias.scope !53, !noalias !52
  %i.nb = sub <4 x i32> %i.my, %i.mv
  %i.nc = add <4 x i32> %i.mu, %i.nb              ; 2 uses
  %i.nd = icmp slt <4 x i32> %i.nc, zeroinitializer
  %i.ne = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.nc, <4 x i32> %broadcast.splat274)
  %i.nf = select <4 x i1> %i.nd, <4 x i32> zeroinitializer, <4 x i32> %i.ne
  %i.ng = sub nsw <4 x i32> %i.mx, %i.nf
  %i.nh = and <4 x i32> %i.ng, %broadcast.splat274
  %i.ni = shl <4 x i32> %i.nh, %broadcast.splat272
  %i.nj = or <4 x i32> %i.mm, %i.ni
  store <4 x i32> %i.nj, ptr %next.gep287, align 4, !alias.scope !52
  %index.next290 = add nuw i64 %index276, 4       ; 2 uses
  %i.nk = icmp eq i64 %index.next290, %n.vec262
  br i1 %i.nk, label %middle.block291, label %vector.body275, !llvm.loop !43

middle.block291:                                  ; preds = %vector.body275
  %vector.recur.extract292 = extractelement <4 x i32> %i.la, i64 3
  %vector.recur.extract293 = extractelement <4 x i32> %i.ly, i64 3
  %vector.recur.extract294 = extractelement <4 x i32> %i.mx, i64 3
  br i1 %cmp.n295, label %._crit_edge.us.i50.i.i, label %scalar.ph259.preheader

scalar.ph259.preheader:                           ; preds = %vector.memcheck253, %.preheader.us.i47.i.i, %middle.block291
  %.sroa.091.0.i.i.i.ph = phi i32 [ 0, %vector.memcheck253 ], [ 0, %.preheader.us.i47.i.i ], [ %vector.recur.extract292, %middle.block291 ]
  %.sroa.893.0.i.i.i.ph = phi i32 [ 0, %vector.memcheck253 ], [ 0, %.preheader.us.i47.i.i ], [ %vector.recur.extract293, %middle.block291 ]
  %.sroa.1195.0.i.i.i.ph = phi i32 [ 0, %vector.memcheck253 ], [ 0, %.preheader.us.i47.i.i ], [ %vector.recur.extract294, %middle.block291 ]
  %.sroa.085.0.i.i.i.ph = phi i32 [ 0, %vector.memcheck253 ], [ 0, %.preheader.us.i47.i.i ], [ %i.kt, %middle.block291 ]
  %.sroa.8.0.i48.i.i.ph = phi i32 [ 0, %vector.memcheck253 ], [ 0, %.preheader.us.i47.i.i ], [ %i.lr, %middle.block291 ]
  %.sroa.11.0.i49.i.i.ph = phi i32 [ 0, %vector.memcheck253 ], [ 0, %.preheader.us.i47.i.i ], [ %i.mq, %middle.block291 ]
  %.05269.us.i.i.i.ph = phi i32 [ 0, %vector.memcheck253 ], [ 0, %.preheader.us.i47.i.i ], [ %i.kd, %middle.block291 ]
  %.05468.us.i.i.i.ph = phi ptr [ %i.kg, %vector.memcheck253 ], [ %i.kg, %.preheader.us.i47.i.i ], [ %i.kj, %middle.block291 ]
  %.16067.us.i.i.i.ph = phi ptr [ %.05970.us.i.i.i, %vector.memcheck253 ], [ %.05970.us.i.i.i, %.preheader.us.i47.i.i ], [ %i.kk, %middle.block291 ]
  br label %scalar.ph259

scalar.ph259:                                     ; preds = %scalar.ph259.preheader, %scalar.ph259
  %.sroa.091.0.i.i.i = phi i32 [ %i.no, %scalar.ph259 ], [ %.sroa.091.0.i.i.i.ph, %scalar.ph259.preheader ]
  %.sroa.893.0.i.i.i = phi i32 [ %i.ny, %scalar.ph259 ], [ %.sroa.893.0.i.i.i.ph, %scalar.ph259.preheader ]
  %.sroa.1195.0.i.i.i = phi i32 [ %i.oj, %scalar.ph259 ], [ %.sroa.1195.0.i.i.i.ph, %scalar.ph259.preheader ]
  %.sroa.085.0.i.i.i = phi i32 [ %i.nm, %scalar.ph259 ], [ %.sroa.085.0.i.i.i.ph, %scalar.ph259.preheader ]
  %.sroa.8.0.i48.i.i = phi i32 [ %i.nw, %scalar.ph259 ], [ %.sroa.8.0.i48.i.i.ph, %scalar.ph259.preheader ]
  %.sroa.11.0.i49.i.i = phi i32 [ %i.oh, %scalar.ph259 ], [ %.sroa.11.0.i49.i.i.ph, %scalar.ph259.preheader ]
  %.05269.us.i.i.i = phi i32 [ %i.ot, %scalar.ph259 ], [ %.05269.us.i.i.i.ph, %scalar.ph259.preheader ]
  %.05468.us.i.i.i = phi ptr [ %i.ok, %scalar.ph259 ], [ %.05468.us.i.i.i.ph, %scalar.ph259.preheader ] ; 5 uses
  %.16067.us.i.i.i = phi ptr [ %i.os, %scalar.ph259 ], [ %.16067.us.i.i.i.ph, %scalar.ph259.preheader ] ; 3 uses
  %i.nl = load i32, ptr %.16067.us.i.i.i, align 4 ; 3 uses
  %i.nm = load i32, ptr %.05468.us.i.i.i, align 4 ; 2 uses
  %i.nn = lshr i32 %i.nl, %i.jp
  %i.no = and i32 %i.nn, %i.jg                    ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.05468.us.i.i.i, i64 4 ; 2 uses
  store i32 %i.no, ptr %.05468.us.i.i.i, align 4
  %i.nq = sub i32 %.sroa.091.0.i.i.i, %.sroa.085.0.i.i.i
  %i.nr = add i32 %i.nm, %i.nq                    ; 2 uses
  %i.ns = icmp slt i32 %i.nr, 0
  %spec.select.us.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.nr, i32 %i.jg)
  %.053.us.i.i.i = select i1 %i.ns, i32 0, i32 %spec.select.us.i.i.i
  %i.nt = sub nsw i32 %i.no, %.053.us.i.i.i
  %i.nu = and i32 %i.nt, %i.jg
  %i.nv = shl i32 %i.nu, %i.jp
  %i.nw = load i32, ptr %i.np, align 4            ; 2 uses
  %i.nx = lshr i32 %i.nl, %i.js
  %i.ny = and i32 %i.nx, %i.jj                    ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.05468.us.i.i.i, i64 8 ; 2 uses
  store i32 %i.ny, ptr %i.np, align 4
  %i.oa = sub i32 %.sroa.893.0.i.i.i, %.sroa.8.0.i48.i.i
  %i.ob = add i32 %i.nw, %i.oa                    ; 2 uses
  %i.oc = icmp slt i32 %i.ob, 0
  %spec.select.us.1.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ob, i32 %i.jj)
  %.053.us.1.i.i.i = select i1 %i.oc, i32 0, i32 %spec.select.us.1.i.i.i
  %i.od = sub nsw i32 %i.ny, %.053.us.1.i.i.i
  %i.oe = and i32 %i.od, %i.jj
  %i.of = shl i32 %i.oe, %i.js
  %i.og = or i32 %i.of, %i.nv
  %i.oh = load i32, ptr %i.nz, align 4            ; 2 uses
  %i.oi = lshr i32 %i.nl, %i.jv
  %i.oj = and i32 %i.oi, %i.jm                    ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.05468.us.i.i.i, i64 12
  store i32 %i.oj, ptr %i.nz, align 4
  %i.ol = sub i32 %.sroa.1195.0.i.i.i, %.sroa.11.0.i49.i.i
  %i.om = add i32 %i.oh, %i.ol                    ; 2 uses
  %i.on = icmp slt i32 %i.om, 0
  %spec.select.us.2.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.om, i32 %i.jm)
  %.053.us.2.i.i.i = select i1 %i.on, i32 0, i32 %spec.select.us.2.i.i.i
  %i.oo = sub nsw i32 %i.oj, %.053.us.2.i.i.i
  %i.op = and i32 %i.oo, %i.jm
  %i.oq = shl i32 %i.op, %i.jv
  %i.or = or i32 %i.og, %i.oq
  %i.os = getelementptr inbounds nuw i8, ptr %.16067.us.i.i.i, i64 4 ; 2 uses
  store i32 %i.or, ptr %.16067.us.i.i.i, align 4
  %i.ot = add nuw nsw i32 %.05269.us.i.i.i, 1     ; 2 uses
  %exitcond80.not.i.i.i = icmp eq i32 %i.ot, %4
  br i1 %exitcond80.not.i.i.i, label %._crit_edge.us.i50.i.i, label %scalar.ph259, !llvm.loop !44

._crit_edge.us.i50.i.i:                           ; preds = %scalar.ph259, %middle.block291
  %.lcssa = phi ptr [ %i.kk, %middle.block291 ], [ %i.os, %scalar.ph259 ]
  %i.ou = add nuw nsw i32 %.05171.us.i.i.i, 1     ; 2 uses
  %exitcond81.not.i.i.i = icmp eq i32 %i.ou, %5
  br i1 %exitcond81.not.i.i.i, label %tight_filter_gradient24.exit.i.i, label %.preheader.us.i47.i.i, !llvm.loop !45

bb.bq:                                            ; preds = %bb.bo
  br i1 %or.cond99.i.i, label %.preheader.us.i55.i.i.preheader, label %tight_filter_gradient24.exit.i.i

.preheader.us.i55.i.i.preheader:                  ; preds = %bb.bq
  %i.ov = add nsw i32 %4, -1
  %i.ow = zext nneg i32 %i.ov to i64              ; 2 uses
  %i.ox = mul nuw nsw i64 %i.ow, 12
  %i.oy = shl nuw nsw i64 %i.ow, 1
  %i.oz = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %4, 4
  %n.vec = and i64 %i.oz, 2147483644              ; 5 uses
  %i.pa = trunc nuw nsw i64 %n.vec to i32
  %i.pb = mul nuw nsw i64 %n.vec, 12
  %i.pc = shl nuw nsw i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.jp, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert225 = insertelement <4 x i32> poison, i32 %i.jg, i64 0
  %broadcast.splat226 = shufflevector <4 x i32> %broadcast.splatinsert225, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert227 = insertelement <4 x i32> poison, i32 %i.js, i64 0
  %broadcast.splat228 = shufflevector <4 x i32> %broadcast.splatinsert227, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert229 = insertelement <4 x i32> poison, i32 %i.jj, i64 0
  %broadcast.splat230 = shufflevector <4 x i32> %broadcast.splatinsert229, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert231 = insertelement <4 x i32> poison, i32 %i.jv, i64 0
  %broadcast.splat232 = shufflevector <4 x i32> %broadcast.splatinsert231, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert233 = insertelement <4 x i32> poison, i32 %i.jm, i64 0
  %broadcast.splat234 = shufflevector <4 x i32> %broadcast.splatinsert233, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.oz
  br label %.preheader.us.i55.i.i

.preheader.us.i55.i.i:                            ; preds = %.preheader.us.i55.i.i.preheader, %._crit_edge.us.i69.i.i
  %.05171.us.i56.i.i = phi i32 [ %i.tv, %._crit_edge.us.i69.i.i ], [ 0, %.preheader.us.i55.i.i.preheader ]
  %.05970.us.i57.i.i = phi ptr [ %.lcssa206, %._crit_edge.us.i69.i.i ], [ %i.jb, %.preheader.us.i55.i.i.preheader ] ; 6 uses
  %i.pd = load ptr, ptr %i.jc, align 8            ; 9 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.i55.i.i
  %i.pe = getelementptr i8, ptr %i.pd, i64 %i.ox
  %scevgep = getelementptr i8, ptr %i.pe, i64 12
  %i.pf = getelementptr i8, ptr %.05970.us.i57.i.i, i64 %i.oy
  %scevgep224 = getelementptr i8, ptr %i.pf, i64 2
  %bound0 = icmp ult ptr %i.pd, %scevgep224
  %bound1 = icmp ult ptr %.05970.us.i57.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.pg = getelementptr i8, ptr %i.pd, i64 %i.pb
  %i.ph = getelementptr i8, ptr %.05970.us.i57.i.i, i64 %i.pc ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.py, %vector.body ]
  %vector.recur235 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.qw, %vector.body ]
  %vector.recur236 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.rv, %vector.body ]
  %vector.recur237 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.pv, %vector.body ]
  %vector.recur238 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.qt, %vector.body ]
  %vector.recur239 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.rs, %vector.body ]
  %i.pi = mul i64 %index, 12                      ; 4 uses
  %next.gep = getelementptr i8, ptr %i.pd, i64 %i.pi ; 4 uses
  %i.pj = getelementptr i8, ptr %i.pd, i64 %i.pi  ; 3 uses
  %next.gep240 = getelementptr i8, ptr %i.pj, i64 12
  %i.pk = getelementptr i8, ptr %i.pd, i64 %i.pi  ; 3 uses
  %next.gep241 = getelementptr i8, ptr %i.pk, i64 24
  %i.pl = getelementptr i8, ptr %i.pd, i64 %i.pi  ; 3 uses
  %next.gep242 = getelementptr i8, ptr %i.pl, i64 36
  %i.pm = shl i64 %index, 1
  %next.gep243 = getelementptr i8, ptr %.05970.us.i57.i.i, i64 %i.pm ; 2 uses
  %wide.load = load <4 x i16>, ptr %next.gep243, align 2, !alias.scope !56
  %i.pn = zext <4 x i16> %wide.load to <4 x i32>  ; 3 uses
  %i.po = load i32, ptr %next.gep, align 4, !alias.scope !57, !noalias !56
  %i.pp = load i32, ptr %next.gep240, align 4, !alias.scope !57, !noalias !56
  %i.pq = load i32, ptr %next.gep241, align 4, !alias.scope !57, !noalias !56
  %i.pr = load i32, ptr %next.gep242, align 4, !alias.scope !57, !noalias !56 ; 2 uses
  %i.ps = insertelement <4 x i32> poison, i32 %i.po, i64 0
  %i.pt = insertelement <4 x i32> %i.ps, i32 %i.pp, i64 1
  %i.pu = insertelement <4 x i32> %i.pt, i32 %i.pq, i64 2 ; 2 uses
  %i.pv = insertelement <4 x i32> %i.pu, i32 %i.pr, i64 3 ; 2 uses
  %i.pw = shufflevector <4 x i32> %vector.recur237, <4 x i32> %i.pu, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.px = lshr <4 x i32> %i.pn, %broadcast.splat
  %i.py = and <4 x i32> %i.px, %broadcast.splat226 ; 5 uses
  %i.pz = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.py, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.qa = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.qb = getelementptr i8, ptr %i.pj, i64 16
  %i.qc = getelementptr i8, ptr %i.pk, i64 28
  %i.qd = getelementptr i8, ptr %i.pl, i64 40
  %i.qe = sub <4 x i32> %i.pz, %i.pw
  %i.qf = add <4 x i32> %i.pv, %i.qe              ; 2 uses
  %i.qg = icmp slt <4 x i32> %i.qf, zeroinitializer
  %i.qh = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.qf, <4 x i32> %broadcast.splat226)
  %i.qi = select <4 x i1> %i.qg, <4 x i32> zeroinitializer, <4 x i32> %i.qh
  %i.qj = sub nsw <4 x i32> %i.py, %i.qi
  %i.qk = and <4 x i32> %i.qj, %broadcast.splat226
  %i.ql = shl <4 x i32> %i.qk, %broadcast.splat
  %i.qm = load i32, ptr %i.qa, align 4, !alias.scope !57, !noalias !56
  %i.qn = load i32, ptr %i.qb, align 4, !alias.scope !57, !noalias !56
  %i.qo = load i32, ptr %i.qc, align 4, !alias.scope !57, !noalias !56
  %i.qp = load i32, ptr %i.qd, align 4, !alias.scope !57, !noalias !56 ; 2 uses
  %i.qq = insertelement <4 x i32> poison, i32 %i.qm, i64 0
  %i.qr = insertelement <4 x i32> %i.qq, i32 %i.qn, i64 1
  %i.qs = insertelement <4 x i32> %i.qr, i32 %i.qo, i64 2 ; 2 uses
  %i.qt = insertelement <4 x i32> %i.qs, i32 %i.qp, i64 3 ; 2 uses
  %i.qu = shufflevector <4 x i32> %vector.recur238, <4 x i32> %i.qs, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.qv = lshr <4 x i32> %i.pn, %broadcast.splat228
  %i.qw = and <4 x i32> %i.qv, %broadcast.splat230 ; 5 uses
  %i.qx = shufflevector <4 x i32> %vector.recur235, <4 x i32> %i.qw, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.qy = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.qz = getelementptr i8, ptr %i.pj, i64 20
  %i.ra = getelementptr i8, ptr %i.pk, i64 32
  %i.rb = getelementptr i8, ptr %i.pl, i64 44
  %i.rc = sub <4 x i32> %i.qx, %i.qu
  %i.rd = add <4 x i32> %i.qt, %i.rc              ; 2 uses
  %i.re = icmp slt <4 x i32> %i.rd, zeroinitializer
  %i.rf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.rd, <4 x i32> %broadcast.splat230)
  %i.rg = select <4 x i1> %i.re, <4 x i32> zeroinitializer, <4 x i32> %i.rf
  %i.rh = sub nsw <4 x i32> %i.qw, %i.rg
  %i.ri = and <4 x i32> %i.rh, %broadcast.splat230
  %i.rj = shl <4 x i32> %i.ri, %broadcast.splat228
  %i.rk = or <4 x i32> %i.rj, %i.ql
  %i.rl = load i32, ptr %i.qy, align 4, !alias.scope !57, !noalias !56
  %i.rm = load i32, ptr %i.qz, align 4, !alias.scope !57, !noalias !56
  %i.rn = load i32, ptr %i.ra, align 4, !alias.scope !57, !noalias !56
  %i.ro = load i32, ptr %i.rb, align 4, !alias.scope !57, !noalias !56 ; 2 uses
  %i.rp = insertelement <4 x i32> poison, i32 %i.rl, i64 0
  %i.rq = insertelement <4 x i32> %i.rp, i32 %i.rm, i64 1
  %i.rr = insertelement <4 x i32> %i.rq, i32 %i.rn, i64 2 ; 2 uses
  %i.rs = insertelement <4 x i32> %i.rr, i32 %i.ro, i64 3 ; 2 uses
  %i.rt = shufflevector <4 x i32> %vector.recur239, <4 x i32> %i.rr, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ru = lshr <4 x i32> %i.pn, %broadcast.splat232
  %i.rv = and <4 x i32> %i.ru, %broadcast.splat234 ; 5 uses
  %i.rw = shufflevector <4 x i32> %vector.recur236, <4 x i32> %i.rv, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.rx = shufflevector <4 x i32> %i.py, <4 x i32> %i.qw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ry = shufflevector <4 x i32> %i.rv, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x i32> %i.rx, <8 x i32> %i.ry, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x i32> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !57, !noalias !56
  %i.rz = sub <4 x i32> %i.rw, %i.rt
  %i.sa = add <4 x i32> %i.rs, %i.rz              ; 2 uses
  %i.sb = icmp slt <4 x i32> %i.sa, zeroinitializer
  %i.sc = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.sa, <4 x i32> %broadcast.splat234)
  %i.sd = select <4 x i1> %i.sb, <4 x i32> zeroinitializer, <4 x i32> %i.sc
  %i.se = sub nsw <4 x i32> %i.rv, %i.sd
  %i.sf = and <4 x i32> %i.se, %broadcast.splat234
  %i.sg = shl <4 x i32> %i.sf, %broadcast.splat232
  %i.sh = or <4 x i32> %i.rk, %i.sg
  %i.si = trunc <4 x i32> %i.sh to <4 x i16>
  store <4 x i16> %i.si, ptr %next.gep243, align 2, !alias.scope !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.sj = icmp eq i64 %index.next, %n.vec
  br i1 %i.sj, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.py, i64 3
  %vector.recur.extract244 = extractelement <4 x i32> %i.qw, i64 3
  %vector.recur.extract245 = extractelement <4 x i32> %i.rv, i64 3
  br i1 %cmp.n, label %._crit_edge.us.i69.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.i55.i.i, %middle.block
  %.sroa.090.0.i.i.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.i55.i.i ], [ %vector.recur.extract, %middle.block ]
  %.sroa.892.0.i.i.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.i55.i.i ], [ %vector.recur.extract244, %middle.block ]
  %.sroa.1194.0.i.i.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.i55.i.i ], [ %vector.recur.extract245, %middle.block ]
  %.sroa.084.0.i.i.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.i55.i.i ], [ %i.pr, %middle.block ]
  %.sroa.8.0.i58.i.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.i55.i.i ], [ %i.qp, %middle.block ]
  %.sroa.11.0.i59.i.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.i55.i.i ], [ %i.ro, %middle.block ]
  %.05269.us.i60.i.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.i55.i.i ], [ %i.pa, %middle.block ]
  %.05468.us.i61.i.i.ph = phi ptr [ %i.pd, %vector.memcheck ], [ %i.pd, %.preheader.us.i55.i.i ], [ %i.pg, %middle.block ]
  %.16067.us.i62.i.i.ph = phi ptr [ %.05970.us.i57.i.i, %vector.memcheck ], [ %.05970.us.i57.i.i, %.preheader.us.i55.i.i ], [ %i.ph, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.090.0.i.i.i = phi i32 [ %i.so, %scalar.ph ], [ %.sroa.090.0.i.i.i.ph, %scalar.ph.preheader ]
  %.sroa.892.0.i.i.i = phi i32 [ %i.sy, %scalar.ph ], [ %.sroa.892.0.i.i.i.ph, %scalar.ph.preheader ]
  %.sroa.1194.0.i.i.i = phi i32 [ %i.tj, %scalar.ph ], [ %.sroa.1194.0.i.i.i.ph, %scalar.ph.preheader ]
  %.sroa.084.0.i.i.i = phi i32 [ %i.sm, %scalar.ph ], [ %.sroa.084.0.i.i.i.ph, %scalar.ph.preheader ]
  %.sroa.8.0.i58.i.i = phi i32 [ %i.sw, %scalar.ph ], [ %.sroa.8.0.i58.i.i.ph, %scalar.ph.preheader ]
  %.sroa.11.0.i59.i.i = phi i32 [ %i.th, %scalar.ph ], [ %.sroa.11.0.i59.i.i.ph, %scalar.ph.preheader ]
  %.05269.us.i60.i.i = phi i32 [ %i.tu, %scalar.ph ], [ %.05269.us.i60.i.i.ph, %scalar.ph.preheader ]
  %.05468.us.i61.i.i = phi ptr [ %i.tk, %scalar.ph ], [ %.05468.us.i61.i.i.ph, %scalar.ph.preheader ] ; 5 uses
  %.16067.us.i62.i.i = phi ptr [ %i.tt, %scalar.ph ], [ %.16067.us.i62.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.sk = load i16, ptr %.16067.us.i62.i.i, align 2
  %i.sl = zext i16 %i.sk to i32                   ; 3 uses
  %i.sm = load i32, ptr %.05468.us.i61.i.i, align 4 ; 2 uses
  %i.sn = lshr i32 %i.sl, %i.jp
  %i.so = and i32 %i.sn, %i.jg                    ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.05468.us.i61.i.i, i64 4 ; 2 uses
  store i32 %i.so, ptr %.05468.us.i61.i.i, align 4
  %i.sq = sub i32 %.sroa.090.0.i.i.i, %.sroa.084.0.i.i.i
  %i.sr = add i32 %i.sm, %i.sq                    ; 2 uses
  %i.ss = icmp slt i32 %i.sr, 0
  %spec.select.us.i63.i.i = tail call i32 @llvm.smin.i32(i32 %i.sr, i32 %i.jg)
  %.053.us.i64.i.i = select i1 %i.ss, i32 0, i32 %spec.select.us.i63.i.i
  %i.st = sub nsw i32 %i.so, %.053.us.i64.i.i
  %i.su = and i32 %i.st, %i.jg
  %i.sv = shl i32 %i.su, %i.jp
  %i.sw = load i32, ptr %i.sp, align 4            ; 2 uses
  %i.sx = lshr i32 %i.sl, %i.js
  %i.sy = and i32 %i.sx, %i.jj                    ; 3 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.05468.us.i61.i.i, i64 8 ; 2 uses
  store i32 %i.sy, ptr %i.sp, align 4
  %i.ta = sub i32 %.sroa.892.0.i.i.i, %.sroa.8.0.i58.i.i
  %i.tb = add i32 %i.sw, %i.ta                    ; 2 uses
  %i.tc = icmp slt i32 %i.tb, 0
  %spec.select.us.1.i65.i.i = tail call i32 @llvm.smin.i32(i32 %i.tb, i32 %i.jj)
  %.053.us.1.i66.i.i = select i1 %i.tc, i32 0, i32 %spec.select.us.1.i65.i.i
  %i.td = sub nsw i32 %i.sy, %.053.us.1.i66.i.i
  %i.te = and i32 %i.td, %i.jj
  %i.tf = shl i32 %i.te, %i.js
end_hunk_0
begin_hunk_1_@send_mono_rect:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.fm = trunc i32 %7 to i16
  store i16 %i.fm, ptr %i.c, align 2
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 2) #12
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 2) #12
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 2760
  %i.fo = load ptr, ptr %i.fn, align 8            ; 4 uses
  %i.fp = srem i32 %4, 8
  %i.fq = sub nsw i32 %4, %i.fp                   ; 2 uses
  %i.fr = icmp sgt i32 %5, 0
  br i1 %i.fr, label %.preheader60.lr.ph.i68, label %tight_encode_mono_rect16.exit

.preheader60.lr.ph.i68:                           ; preds = %bb.r
  %i.fs = icmp sgt i32 %i.fq, 0
  br i1 %i.fs, label %.preheader60.us.i85, label %.preheader60.lr.ph.split.i69

.preheader60.us.i85:                              ; preds = %.preheader60.lr.ph.i68, %bb.aa
  %.03884.us.i86 = phi i32 [ %i.hu, %bb.aa ], [ 0, %.preheader60.lr.ph.i68 ]
  %.04583.us.i87 = phi ptr [ %.7.us.i116, %bb.aa ], [ %i.fo, %.preheader60.lr.ph.i68 ]
  %.04982.us.i88 = phi ptr [ %.352.us.i115, %bb.aa ], [ %i.fo, %.preheader60.lr.ph.i68 ]
  br label %.preheader.us.i89

bb.s:                                             ; preds = %.preheader.us.i89
  %i.ft = getelementptr inbounds nuw i8, ptr %.14672.us.i91, i64 4 ; 2 uses
  %i.fu = load i16, ptr %i.hv, align 2
  %.not54.us.1.i125 = icmp eq i16 %i.fu, %i.fl
  br i1 %.not54.us.1.i125, label %bb.t, label %.lr.ph.us.i98

bb.t:                                             ; preds = %bb.s
  %i.fv = getelementptr inbounds nuw i8, ptr %.14672.us.i91, i64 6 ; 2 uses
  %i.fw = load i16, ptr %i.ft, align 2
  %.not54.us.2.i126 = icmp eq i16 %i.fw, %i.fl
  br i1 %.not54.us.2.i126, label %bb.u, label %.lr.ph.us.i98

bb.u:                                             ; preds = %bb.t
  %i.fx = getelementptr inbounds nuw i8, ptr %.14672.us.i91, i64 8 ; 2 uses
  %i.fy = load i16, ptr %i.fv, align 2
  %.not54.us.3.i127 = icmp eq i16 %i.fy, %i.fl
  br i1 %.not54.us.3.i127, label %bb.v, label %.lr.ph.us.i98

bb.v:                                             ; preds = %bb.u
  %i.fz = getelementptr inbounds nuw i8, ptr %.14672.us.i91, i64 10 ; 2 uses
  %i.ga = load i16, ptr %i.fx, align 2
  %.not54.us.4.i128 = icmp eq i16 %i.ga, %i.fl
  br i1 %.not54.us.4.i128, label %bb.w, label %.lr.ph.us.i98

bb.w:                                             ; preds = %bb.v
  %i.gb = getelementptr inbounds nuw i8, ptr %.14672.us.i91, i64 12 ; 2 uses
  %i.gc = load i16, ptr %i.fz, align 2
  %.not54.us.5.i129 = icmp eq i16 %i.gc, %i.fl
  br i1 %.not54.us.5.i129, label %bb.x, label %.lr.ph.us.i98

bb.x:                                             ; preds = %bb.w
  %i.gd = getelementptr inbounds nuw i8, ptr %.14672.us.i91, i64 14 ; 2 uses
  %i.ge = load i16, ptr %i.gb, align 2
  %.not54.us.6.i130 = icmp eq i16 %i.ge, %i.fl
  br i1 %.not54.us.6.i130, label %bb.y, label %.lr.ph.us.i98

bb.y:                                             ; preds = %bb.x
  %i.gf = load i16, ptr %i.gd, align 2
  %.not54.us.7.i131 = icmp ne i16 %i.gf, %i.fl
  %spec.select252 = zext i1 %.not54.us.7.i131 to i8
  br label %._crit_edge.us.i107

.lr.ph.us.i98:                                    ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %.preheader.us.i89
  %exitcond97.not.i106 = phi i1 [ true, %bb.x ], [ false, %bb.w ], [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.t ], [ false, %bb.s ], [ false, %.preheader.us.i89 ]
  %exitcond97.not.i106.1 = phi i1 [ false, %bb.x ], [ true, %bb.w ], [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.t ], [ false, %bb.s ], [ false, %.preheader.us.i89 ]
  %exitcond97.not.i106.2 = phi i1 [ false, %bb.x ], [ false, %bb.w ], [ true, %bb.v ], [ false, %bb.u ], [ false, %bb.t ], [ false, %bb.s ], [ false, %.preheader.us.i89 ]
  %exitcond97.not.i106.3 = phi i1 [ false, %bb.x ], [ false, %bb.w ], [ false, %bb.v ], [ true, %bb.u ], [ false, %bb.t ], [ false, %bb.s ], [ false, %.preheader.us.i89 ]
  %exitcond97.not.i106.4 = phi i1 [ false, %bb.x ], [ false, %bb.w ], [ false, %bb.v ], [ false, %bb.u ], [ true, %bb.t ], [ false, %bb.s ], [ false, %.preheader.us.i89 ]
  %exitcond97.not.i106.5 = phi i1 [ false, %bb.x ], [ false, %bb.w ], [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.t ], [ true, %bb.s ], [ false, %.preheader.us.i89 ]
  %.065.us.lcssa.ph.i96 = phi i32 [ 6, %bb.x ], [ 5, %bb.w ], [ 4, %bb.v ], [ 3, %bb.u ], [ 2, %bb.t ], [ 1, %bb.s ], [ 0, %.preheader.us.i89 ] ; 8 uses
  %.lcssa.ph.i97 = phi ptr [ %i.gd, %bb.x ], [ %i.gb, %bb.w ], [ %i.fz, %bb.v ], [ %i.fx, %bb.u ], [ %i.fv, %bb.t ], [ %i.ft, %bb.s ], [ %i.hv, %.preheader.us.i89 ] ; 8 uses
  %i.gg = lshr exact i32 128, %.065.us.lcssa.ph.i96
  %i.gh = lshr i32 64, %.065.us.lcssa.ph.i96
  %i.gi = load i16, ptr %.lcssa.ph.i97, align 2
  %.not55.us.i104 = icmp eq i16 %i.gi, %i.fl
  %i.gj = select i1 %.not55.us.i104, i32 0, i32 %i.gh
  %spec.select.us.i105 = or i32 %i.gj, %i.gg      ; 2 uses
  br i1 %exitcond97.not.i106, label %._crit_edge.us.i107.loopexit, label %.lr.ph.us.i98.1

.lr.ph.us.i98.1:                                  ; preds = %.lr.ph.us.i98
  %i.gk = getelementptr inbounds nuw i8, ptr %.lcssa.ph.i97, i64 2
  %i.gl = lshr i32 32, %.065.us.lcssa.ph.i96
  %i.gm = load i16, ptr %i.gk, align 2
  %.not55.us.i104.1 = icmp eq i16 %i.gm, %i.fl
  %i.gn = select i1 %.not55.us.i104.1, i32 0, i32 %i.gl
  %spec.select.us.i105.1 = or i32 %i.gn, %spec.select.us.i105 ; 2 uses
  br i1 %exitcond97.not.i106.1, label %._crit_edge.us.i107.loopexit, label %.lr.ph.us.i98.2

.lr.ph.us.i98.2:                                  ; preds = %.lr.ph.us.i98.1
  %i.go = getelementptr inbounds nuw i8, ptr %.lcssa.ph.i97, i64 4
  %i.gp = lshr i32 16, %.065.us.lcssa.ph.i96
  %i.gq = load i16, ptr %i.go, align 2
  %.not55.us.i104.2 = icmp eq i16 %i.gq, %i.fl
  %i.gr = select i1 %.not55.us.i104.2, i32 0, i32 %i.gp
  %spec.select.us.i105.2 = or i32 %i.gr, %spec.select.us.i105.1 ; 2 uses
  br i1 %exitcond97.not.i106.2, label %._crit_edge.us.i107.loopexit, label %.lr.ph.us.i98.3

.lr.ph.us.i98.3:                                  ; preds = %.lr.ph.us.i98.2
  %i.gs = getelementptr inbounds nuw i8, ptr %.lcssa.ph.i97, i64 6
  %i.gt = lshr i32 8, %.065.us.lcssa.ph.i96
  %i.gu = load i16, ptr %i.gs, align 2
  %.not55.us.i104.3 = icmp eq i16 %i.gu, %i.fl
  %i.gv = select i1 %.not55.us.i104.3, i32 0, i32 %i.gt
  %spec.select.us.i105.3 = or i32 %i.gv, %spec.select.us.i105.2 ; 2 uses
  br i1 %exitcond97.not.i106.3, label %._crit_edge.us.i107.loopexit, label %.lr.ph.us.i98.4

.lr.ph.us.i98.4:                                  ; preds = %.lr.ph.us.i98.3
  %i.gw = getelementptr inbounds nuw i8, ptr %.lcssa.ph.i97, i64 8
  %i.gx = lshr i32 4, %.065.us.lcssa.ph.i96
  %i.gy = load i16, ptr %i.gw, align 2
  %.not55.us.i104.4 = icmp eq i16 %i.gy, %i.fl
  %i.gz = select i1 %.not55.us.i104.4, i32 0, i32 %i.gx
  %spec.select.us.i105.4 = or i32 %i.gz, %spec.select.us.i105.3 ; 2 uses
  br i1 %exitcond97.not.i106.4, label %._crit_edge.us.i107.loopexit, label %.lr.ph.us.i98.5

.lr.ph.us.i98.5:                                  ; preds = %.lr.ph.us.i98.4
  %i.ha = getelementptr inbounds nuw i8, ptr %.lcssa.ph.i97, i64 10
  %i.hb = lshr i32 2, %.065.us.lcssa.ph.i96
  %i.hc = load i16, ptr %i.ha, align 2
  %.not55.us.i104.5 = icmp eq i16 %i.hc, %i.fl
  %i.hd = select i1 %.not55.us.i104.5, i32 0, i32 %i.hb
  %spec.select.us.i105.5 = or i32 %i.hd, %spec.select.us.i105.4 ; 2 uses
  br i1 %exitcond97.not.i106.5, label %._crit_edge.us.i107.loopexit, label %.lr.ph.us.i98.6

.lr.ph.us.i98.6:                                  ; preds = %.lr.ph.us.i98.5
  %i.he = getelementptr inbounds nuw i8, ptr %.lcssa.ph.i97, i64 12
  %i.hf = load i16, ptr %i.he, align 2
  %.not55.us.i104.6 = icmp ne i16 %i.hf, %i.fl
  %narrow = and i1 %.not55.us.i104.6, %.not54.us.i94
  %i.hg = zext i1 %narrow to i32
  %spec.select.us.i105.6 = or i32 %spec.select.us.i105.5, %i.hg
  br label %._crit_edge.us.i107.loopexit

._crit_edge.us.i107.loopexit:                     ; preds = %.lr.ph.us.i98.6, %.lr.ph.us.i98.5, %.lr.ph.us.i98.4, %.lr.ph.us.i98.3, %.lr.ph.us.i98.2, %.lr.ph.us.i98.1, %.lr.ph.us.i98
  %spec.select.us.i105.lcssa = phi i32 [ %spec.select.us.i105, %.lr.ph.us.i98 ], [ %spec.select.us.i105.1, %.lr.ph.us.i98.1 ], [ %spec.select.us.i105.2, %.lr.ph.us.i98.2 ], [ %spec.select.us.i105.3, %.lr.ph.us.i98.3 ], [ %spec.select.us.i105.4, %.lr.ph.us.i98.4 ], [ %spec.select.us.i105.5, %.lr.ph.us.i98.5 ], [ %spec.select.us.i105.6, %.lr.ph.us.i98.6 ]
  %scevgep = getelementptr i8, ptr %.lcssa.ph.i97, i64 2
  %i.hh = shl nuw nsw i32 %.065.us.lcssa.ph.i96, 1
  %i.hi = sub nuw nsw i32 12, %i.hh
  %i.hj = zext nneg i32 %i.hi to i64
  %scevgep217 = getelementptr i8, ptr %scevgep, i64 %i.hj
  %i.hk = trunc nuw i32 %spec.select.us.i105.lcssa to i8
  br label %._crit_edge.us.i107

._crit_edge.us.i107:                              ; preds = %bb.y, %._crit_edge.us.i107.loopexit
  %storemerge.us.i110 = phi i8 [ %spec.select252, %bb.y ], [ %i.hk, %._crit_edge.us.i107.loopexit ]
  %.5.us.i111 = phi ptr [ %scevgep95.i93, %bb.y ], [ %scevgep217, %._crit_edge.us.i107.loopexit ] ; 3 uses
  %.251.us.i112 = getelementptr inbounds nuw i8, ptr %.15071.us.i92, i64 1 ; 3 uses
  store i8 %storemerge.us.i110, ptr %.15071.us.i92, align 1
  %i.hl = add nuw nsw i32 %.03973.us.i90, 8       ; 4 uses
  %i.hm = icmp slt i32 %i.hl, %i.fq
  br i1 %i.hm, label %.preheader.us.i89, label %._crit_edge74.us.i113, !llvm.loop !66

.preheader59.us.i118:                             ; preds = %._crit_edge74.us.i113, %.preheader59.us.i118
  %.14081.us.i119 = phi i32 [ %i.hr, %.preheader59.us.i118 ], [ %i.hl, %._crit_edge74.us.i113 ]
  %.14280.us.i120 = phi i8 [ %i.hq, %.preheader59.us.i118 ], [ -128, %._crit_edge74.us.i113 ] ; 2 uses
  %.279.us.i121 = phi i8 [ %spec.select56.us.i124, %.preheader59.us.i118 ], [ 0, %._crit_edge74.us.i113 ]
  %.678.us.i122 = phi ptr [ %i.hn, %.preheader59.us.i118 ], [ %.5.us.i111, %._crit_edge74.us.i113 ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.678.us.i122, i64 2 ; 2 uses
  %i.ho = load i16, ptr %.678.us.i122, align 2
  %.not53.us.i123 = icmp eq i16 %i.ho, %i.fl
  %i.hp = select i1 %.not53.us.i123, i8 0, i8 %.14280.us.i120
  %spec.select56.us.i124 = or i8 %i.hp, %.279.us.i121 ; 2 uses
  %i.hq = lshr i8 %.14280.us.i120, 1
  %i.hr = add nuw nsw i32 %.14081.us.i119, 1      ; 2 uses
  %i.hs = icmp slt i32 %i.hr, %4
  br i1 %i.hs, label %.preheader59.us.i118, label %bb.z, !llvm.loop !67

bb.z:                                             ; preds = %.preheader59.us.i118
  %i.ht = getelementptr inbounds nuw i8, ptr %.15071.us.i92, i64 2
  store i8 %spec.select56.us.i124, ptr %.251.us.i112, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge74.us.i113, %bb.z
  %.352.us.i115 = phi ptr [ %.251.us.i112, %._crit_edge74.us.i113 ], [ %i.ht, %bb.z ]
  %.7.us.i116 = phi ptr [ %.5.us.i111, %._crit_edge74.us.i113 ], [ %i.hn, %bb.z ]
  %i.hu = add nuw nsw i32 %.03884.us.i86, 1       ; 2 uses
  %exitcond98.not.i117 = icmp eq i32 %i.hu, %5
  br i1 %exitcond98.not.i117, label %tight_encode_mono_rect16.exit, label %.preheader60.us.i85, !llvm.loop !68

.preheader.us.i89:                                ; preds = %._crit_edge.us.i107, %.preheader60.us.i85
  %.03973.us.i90 = phi i32 [ 0, %.preheader60.us.i85 ], [ %i.hl, %._crit_edge.us.i107 ]
  %.14672.us.i91 = phi ptr [ %.04583.us.i87, %.preheader60.us.i85 ], [ %.5.us.i111, %._crit_edge.us.i107 ] ; 9 uses
  %.15071.us.i92 = phi ptr [ %.04982.us.i88, %.preheader60.us.i85 ], [ %.251.us.i112, %._crit_edge.us.i107 ] ; 3 uses
  %scevgep95.i93 = getelementptr i8, ptr %.14672.us.i91, i64 16
  %i.hv = getelementptr inbounds nuw i8, ptr %.14672.us.i91, i64 2 ; 2 uses
  %i.hw = load i16, ptr %.14672.us.i91, align 2
  %.not54.us.i94 = icmp ne i16 %i.hw, %i.fl       ; 2 uses
  br i1 %.not54.us.i94, label %.lr.ph.us.i98, label %bb.s

._crit_edge74.us.i113:                            ; preds = %._crit_edge.us.i107
  %.not.us.i114 = icmp slt i32 %i.hl, %4
  br i1 %.not.us.i114, label %.preheader59.us.i118, label %bb.aa

.preheader60.lr.ph.split.i69:                     ; preds = %.preheader60.lr.ph.i68
  %.not.i70 = icmp sgt i32 %4, 0
  br i1 %.not.i70, label %.preheader60.preheader.i71, label %tight_encode_mono_rect16.exit

.preheader60.preheader.i71:                       ; preds = %.preheader60.lr.ph.split.i69
  %8 = shl nuw nsw i32 %4, 1
  %i.hx = zext nneg i32 %8 to i64
  %i.hy = add nsw i32 %4, -1
  %xtraiter = and i32 %4, 3                       ; 3 uses
  %i.hz = icmp ult i32 %i.hy, 3
  %unroll_iter = and i32 %4, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod270 = icmp ne i32 %xtraiter, 0
  br label %.preheader60.i72

.preheader60.i72:                                 ; preds = %.epilog-lcssa, %.preheader60.preheader.i71
  %.03884.i73 = phi i32 [ %i.iv, %.epilog-lcssa ], [ 0, %.preheader60.preheader.i71 ]
  %.04583.i74 = phi ptr [ %scevgep.i83, %.epilog-lcssa ], [ %i.fo, %.preheader60.preheader.i71 ] ; 3 uses
  %.04982.i75 = phi ptr [ %i.iu, %.epilog-lcssa ], [ %i.fo, %.preheader60.preheader.i71 ] ; 2 uses
  br i1 %i.hz, label %.epil.preheader, label %.preheader60.i72.new

.preheader60.i72.new:                             ; preds = %.preheader60.i72, %.preheader60.i72.new
  %.14280.i77 = phi i8 [ %i.ip, %.preheader60.i72.new ], [ -128, %.preheader60.i72 ] ; 5 uses
  %.279.i78 = phi i8 [ %spec.select56.i81.3, %.preheader60.i72.new ], [ 0, %.preheader60.i72 ]
  %.678.i79 = phi ptr [ %i.im, %.preheader60.i72.new ], [ %.04583.i74, %.preheader60.i72 ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.preheader60.i72.new ], [ 0, %.preheader60.i72 ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.678.i79, i64 2
  %i.ib = load i16, ptr %.678.i79, align 2
  %.not53.i80 = icmp eq i16 %i.ib, %i.fl
  %i.ic = select i1 %.not53.i80, i8 0, i8 %.14280.i77
  %spec.select56.i81 = or i8 %i.ic, %.279.i78
  %i.id = lshr i8 %.14280.i77, 1
  %i.ie = getelementptr inbounds nuw i8, ptr %.678.i79, i64 4
  %i.if = load i16, ptr %i.ia, align 2
  %.not53.i80.1 = icmp eq i16 %i.if, %i.fl
  %i.ig = select i1 %.not53.i80.1, i8 0, i8 %i.id
  %spec.select56.i81.1 = or i8 %i.ig, %spec.select56.i81
  %i.ih = lshr i8 %.14280.i77, 2
  %i.ii = getelementptr inbounds nuw i8, ptr %.678.i79, i64 6
  %i.ij = load i16, ptr %i.ie, align 2
  %.not53.i80.2 = icmp eq i16 %i.ij, %i.fl
  %i.ik = select i1 %.not53.i80.2, i8 0, i8 %i.ih
  %spec.select56.i81.2 = or i8 %i.ik, %spec.select56.i81.1
  %i.il = lshr i8 %.14280.i77, 3
  %i.im = getelementptr inbounds nuw i8, ptr %.678.i79, i64 8 ; 2 uses
  %i.in = load i16, ptr %i.ii, align 2
  %.not53.i80.3 = icmp eq i16 %i.in, %i.fl
  %i.io = select i1 %.not53.i80.3, i8 0, i8 %i.il
  %spec.select56.i81.3 = or i8 %i.io, %spec.select56.i81.2 ; 3 uses
  %i.ip = lshr i8 %.14280.i77, 4                  ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader60.i72.new, !llvm.loop !67

.unr-lcssa:                                       ; preds = %.preheader60.i72.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader60.i72
  %.14280.i77.epil.init = phi i8 [ -128, %.preheader60.i72 ], [ %i.ip, %.unr-lcssa ]
  %.279.i78.epil.init = phi i8 [ 0, %.preheader60.i72 ], [ %spec.select56.i81.3, %.unr-lcssa ]
  %.678.i79.epil.init = phi ptr [ %.04583.i74, %.preheader60.i72 ], [ %i.im, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod270)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader
  %.14280.i77.epil = phi i8 [ %.14280.i77.epil.init, %.epil.preheader ], [ %i.it, %bb.ab ] ; 2 uses
  %.279.i78.epil = phi i8 [ %.279.i78.epil.init, %.epil.preheader ], [ %spec.select56.i81.epil, %bb.ab ]
  %.678.i79.epil = phi ptr [ %.678.i79.epil.init, %.epil.preheader ], [ %i.iq, %bb.ab ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ab ]
  %i.iq = getelementptr inbounds nuw i8, ptr %.678.i79.epil, i64 2
  %i.ir = load i16, ptr %.678.i79.epil, align 2
  %.not53.i80.epil = icmp eq i16 %i.ir, %i.fl
  %i.is = select i1 %.not53.i80.epil, i8 0, i8 %.14280.i77.epil
  %spec.select56.i81.epil = or i8 %i.is, %.279.i78.epil ; 2 uses
  %i.it = lshr i8 %.14280.i77.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ab, !llvm.loop !69

.epilog-lcssa:                                    ; preds = %bb.ab, %.unr-lcssa
  %spec.select56.i81.lcssa = phi i8 [ %spec.select56.i81.3, %.unr-lcssa ], [ %spec.select56.i81.epil, %bb.ab ]
  %scevgep.i83 = getelementptr i8, ptr %.04583.i74, i64 %i.hx
  %i.iu = getelementptr inbounds nuw i8, ptr %.04982.i75, i64 1
  store i8 %spec.select56.i81.lcssa, ptr %.04982.i75, align 1
  %i.iv = add nuw nsw i32 %.03884.i73, 1          ; 2 uses
  %exitcond94.not.i84 = icmp eq i32 %i.iv, %5
  br i1 %exitcond94.not.i84, label %tight_encode_mono_rect16.exit, label %.preheader60.i72, !llvm.loop !68

tight_encode_mono_rect16.exit:                    ; preds = %.epilog-lcssa, %bb.aa, %bb.r, %.preheader60.lr.ph.split.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %tight_encode_mono_rect8.exit

bb.ac:                                            ; preds = %tight_can_send_png_rect.exit.thread
  %i.iw = trunc i32 %6 to i8                      ; 22 uses
  %i.ix = trunc i32 %7 to i8
  tail call void @vnc_write_u8(ptr noundef nonnull %0, i8 noundef zeroext %i.iw) #12
  tail call void @vnc_write_u8(ptr noundef nonnull %0, i8 noundef zeroext %i.ix) #12
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 2760
  %i.iz = load ptr, ptr %i.iy, align 8            ; 4 uses
  %i.ja = srem i32 %4, 8
  %i.jb = sub nsw i32 %4, %i.ja                   ; 2 uses
  %i.jc = icmp sgt i32 %5, 0
  br i1 %i.jc, label %.preheader60.lr.ph.i132, label %tight_encode_mono_rect8.exit

.preheader60.lr.ph.i132:                          ; preds = %bb.ac
  %i.jd = icmp sgt i32 %i.jb, 0
  br i1 %i.jd, label %.preheader60.us.i149, label %.preheader60.lr.ph.split.i133

.preheader60.us.i149:                             ; preds = %.preheader60.lr.ph.i132, %bb.al
  %.03884.us.i150 = phi i32 [ %i.le, %bb.al ], [ 0, %.preheader60.lr.ph.i132 ]
  %.04583.us.i151 = phi ptr [ %.7.us.i179, %bb.al ], [ %i.iz, %.preheader60.lr.ph.i132 ]
  %.04982.us.i152 = phi ptr [ %.352.us.i178, %bb.al ], [ %i.iz, %.preheader60.lr.ph.i132 ]
  br label %.preheader.us.i153

bb.ad:                                            ; preds = %.preheader.us.i153
  %i.je = getelementptr inbounds nuw i8, ptr %.14672.us.i155, i64 2 ; 2 uses
  %i.jf = load i8, ptr %i.lf, align 1
  %.not54.us.1.i187 = icmp eq i8 %i.jf, %i.iw
  br i1 %.not54.us.1.i187, label %bb.ae, label %.lr.ph.us.i162

bb.ae:                                            ; preds = %bb.ad
  %i.jg = getelementptr inbounds nuw i8, ptr %.14672.us.i155, i64 3 ; 2 uses
  %i.jh = load i8, ptr %i.je, align 1
  %.not54.us.2.i188 = icmp eq i8 %i.jh, %i.iw
  br i1 %.not54.us.2.i188, label %bb.af, label %.lr.ph.us.i162

bb.af:                                            ; preds = %bb.ae
  %i.ji = getelementptr inbounds nuw i8, ptr %.14672.us.i155, i64 4 ; 2 uses
  %i.jj = load i8, ptr %i.jg, align 1
  %.not54.us.3.i189 = icmp eq i8 %i.jj, %i.iw
  br i1 %.not54.us.3.i189, label %bb.ag, label %.lr.ph.us.i162

bb.ag:                                            ; preds = %bb.af
  %i.jk = getelementptr inbounds nuw i8, ptr %.14672.us.i155, i64 5 ; 2 uses
  %i.jl = load i8, ptr %i.ji, align 1
  %.not54.us.4.i190 = icmp eq i8 %i.jl, %i.iw
  br i1 %.not54.us.4.i190, label %bb.ah, label %.lr.ph.us.i162

bb.ah:                                            ; preds = %bb.ag
  %i.jm = getelementptr inbounds nuw i8, ptr %.14672.us.i155, i64 6 ; 2 uses
  %i.jn = load i8, ptr %i.jk, align 1
  %.not54.us.5.i191 = icmp eq i8 %i.jn, %i.iw
  br i1 %.not54.us.5.i191, label %bb.ai, label %.lr.ph.us.i162

bb.ai:                                            ; preds = %bb.ah
  %i.jo = getelementptr inbounds nuw i8, ptr %.14672.us.i155, i64 7 ; 2 uses
  %i.jp = load i8, ptr %i.jm, align 1
  %.not54.us.6.i192 = icmp eq i8 %i.jp, %i.iw
  br i1 %.not54.us.6.i192, label %bb.aj, label %.lr.ph.us.i162

bb.aj:                                            ; preds = %bb.ai
  %i.jq = load i8, ptr %i.jo, align 1
  %.not54.us.7.i193 = icmp ne i8 %i.jq, %i.iw
  %spec.select = zext i1 %.not54.us.7.i193 to i8
  br label %._crit_edge.us.i170

.lr.ph.us.i162:                                   ; preds = %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %.preheader.us.i153
  %exitcond99.not.i = phi i1 [ true, %bb.ai ], [ false, %bb.ah ], [ false, %bb.ag ], [ false, %bb.af ], [ false, %bb.ae ], [ false, %bb.ad ], [ false, %.preheader.us.i153 ]
  %exitcond99.not.i.1 = phi i1 [ false, %bb.ai ], [ true, %bb.ah ], [ false, %bb.ag ], [ false, %bb.af ], [ false, %bb.ae ], [ false, %bb.ad ], [ false, %.preheader.us.i153 ]
  %exitcond99.not.i.2 = phi i1 [ false, %bb.ai ], [ false, %bb.ah ], [ true, %bb.ag ], [ false, %bb.af ], [ false, %bb.ae ], [ false, %bb.ad ], [ false, %.preheader.us.i153 ]
  %exitcond99.not.i.3 = phi i1 [ false, %bb.ai ], [ false, %bb.ah ], [ false, %bb.ag ], [ true, %bb.af ], [ false, %bb.ae ], [ false, %bb.ad ], [ false, %.preheader.us.i153 ]
  %exitcond99.not.i.4 = phi i1 [ false, %bb.ai ], [ false, %bb.ah ], [ false, %bb.ag ], [ false, %bb.af ], [ true, %bb.ae ], [ false, %bb.ad ], [ false, %.preheader.us.i153 ]
  %exitcond99.not.i.5 = phi i1 [ false, %bb.ai ], [ false, %bb.ah ], [ false, %bb.ag ], [ false, %bb.af ], [ false, %bb.ae ], [ true, %bb.ad ], [ false, %.preheader.us.i153 ]
  %.065.us.lcssa.ph.i160 = phi i32 [ 6, %bb.ai ], [ 5, %bb.ah ], [ 4, %bb.ag ], [ 3, %bb.af ], [ 2, %bb.ae ], [ 1, %bb.ad ], [ 0, %.preheader.us.i153 ] ; 8 uses
  %.lcssa.ph.i161 = phi ptr [ %i.jo, %bb.ai ], [ %i.jm, %bb.ah ], [ %i.jk, %bb.ag ], [ %i.ji, %bb.af ], [ %i.jg, %bb.ae ], [ %i.je, %bb.ad ], [ %i.lf, %.preheader.us.i153 ] ; 8 uses
  %i.jr = lshr exact i32 128, %.065.us.lcssa.ph.i160
  %i.js = lshr i32 64, %.065.us.lcssa.ph.i160
  %i.jt = load i8, ptr %.lcssa.ph.i161, align 1
  %.not55.us.i168 = icmp eq i8 %i.jt, %i.iw
  %i.ju = select i1 %.not55.us.i168, i32 0, i32 %i.js
  %spec.select.us.i169 = or i32 %i.ju, %i.jr      ; 2 uses
  br i1 %exitcond99.not.i, label %._crit_edge.us.loopexit.i, label %.lr.ph.us.i162.1

.lr.ph.us.i162.1:                                 ; preds = %.lr.ph.us.i162
  %i.jv = getelementptr inbounds nuw i8, ptr %.lcssa.ph.i161, i64 1
  %i.jw = lshr i32 32, %.065.us.lcssa.ph.i160
  %i.jx = load i8, ptr %i.jv, align 1
  %.not55.us.i168.1 = icmp eq i8 %i.jx, %i.iw
  %i.jy = select i1 %.not55.us.i168.1, i32 0, i32 %i.jw
  %spec.select.us.i169.1 = or i32 %i.jy, %spec.select.us.i169 ; 2 uses
  br i1 %exitcond99.not.i.1, label %._crit_edge.us.loopexit.i, label %.lr.ph.us.i162.2

.lr.ph.us.i162.2:                                 ; preds = %.lr.ph.us.i162.1
  %i.jz = getelementptr inbounds nuw i8, ptr %.lcssa.ph.i161, i64 2
  %i.ka = lshr i32 16, %.065.us.lcssa.ph.i160
  %i.kb = load i8, ptr %i.jz, align 1
  %.not55.us.i168.2 = icmp eq i8 %i.kb, %i.iw
  %i.kc = select i1 %.not55.us.i168.2, i32 0, i32 %i.ka
  %spec.select.us.i169.2 = or i32 %i.kc, %spec.select.us.i169.1 ; 2 uses
  br i1 %exitcond99.not.i.2, label %._crit_edge.us.loopexit.i, label %.lr.ph.us.i162.3

.lr.ph.us.i162.3:                                 ; preds = %.lr.ph.us.i162.2
  %i.kd = getelementptr inbounds nuw i8, ptr %.lcssa.ph.i161, i64 3
  %i.ke = lshr i32 8, %.065.us.lcssa.ph.i160
  %i.kf = load i8, ptr %i.kd, align 1
  %.not55.us.i168.3 = icmp eq i8 %i.kf, %i.iw
  %i.kg = select i1 %.not55.us.i168.3, i32 0, i32 %i.ke
  %spec.select.us.i169.3 = or i32 %i.kg, %spec.select.us.i169.2 ; 2 uses
  br i1 %exitcond99.not.i.3, label %._crit_edge.us.loopexit.i, label %.lr.ph.us.i162.4

.lr.ph.us.i162.4:                                 ; preds = %.lr.ph.us.i162.3
  %i.kh = getelementptr inbounds nuw i8, ptr %.lcssa.ph.i161, i64 4
  %i.ki = lshr i32 4, %.065.us.lcssa.ph.i160
  %i.kj = load i8, ptr %i.kh, align 1
  %.not55.us.i168.4 = icmp eq i8 %i.kj, %i.iw
  %i.kk = select i1 %.not55.us.i168.4, i32 0, i32 %i.ki
  %spec.select.us.i169.4 = or i32 %i.kk, %spec.select.us.i169.3 ; 2 uses
  br i1 %exitcond99.not.i.4, label %._crit_edge.us.loopexit.i, label %.lr.ph.us.i162.5

.lr.ph.us.i162.5:                                 ; preds = %.lr.ph.us.i162.4
  %i.kl = getelementptr inbounds nuw i8, ptr %.lcssa.ph.i161, i64 5
  %i.km = lshr i32 2, %.065.us.lcssa.ph.i160
  %i.kn = load i8, ptr %i.kl, align 1
  %.not55.us.i168.5 = icmp eq i8 %i.kn, %i.iw
  %i.ko = select i1 %.not55.us.i168.5, i32 0, i32 %i.km
  %spec.select.us.i169.5 = or i32 %i.ko, %spec.select.us.i169.4 ; 2 uses
  br i1 %exitcond99.not.i.5, label %._crit_edge.us.loopexit.i, label %.lr.ph.us.i162.6

.lr.ph.us.i162.6:                                 ; preds = %.lr.ph.us.i162.5
  %i.kp = getelementptr inbounds nuw i8, ptr %.lcssa.ph.i161, i64 6
  %i.kq = load i8, ptr %i.kp, align 1
  %.not55.us.i168.6 = icmp ne i8 %i.kq, %i.iw
  %narrow292 = and i1 %.not55.us.i168.6, %.not54.us.i158
  %i.kr = zext i1 %narrow292 to i32
  %spec.select.us.i169.6 = or i32 %spec.select.us.i169.5, %i.kr
  br label %._crit_edge.us.loopexit.i

._crit_edge.us.loopexit.i:                        ; preds = %.lr.ph.us.i162.6, %.lr.ph.us.i162.5, %.lr.ph.us.i162.4, %.lr.ph.us.i162.3, %.lr.ph.us.i162.2, %.lr.ph.us.i162.1, %.lr.ph.us.i162
  %spec.select.us.i169.lcssa = phi i32 [ %spec.select.us.i169, %.lr.ph.us.i162 ], [ %spec.select.us.i169.1, %.lr.ph.us.i162.1 ], [ %spec.select.us.i169.2, %.lr.ph.us.i162.2 ], [ %spec.select.us.i169.3, %.lr.ph.us.i162.3 ], [ %spec.select.us.i169.4, %.lr.ph.us.i162.4 ], [ %spec.select.us.i169.5, %.lr.ph.us.i162.5 ], [ %spec.select.us.i169.6, %.lr.ph.us.i162.6 ]
  %scevgep97.i = getelementptr i8, ptr %.lcssa.ph.i161, i64 1
  %i.ks = sub nuw nsw i32 6, %.065.us.lcssa.ph.i160
  %i.kt = zext nneg i32 %i.ks to i64
  %scevgep98.i = getelementptr i8, ptr %scevgep97.i, i64 %i.kt
  %i.ku = trunc nuw i32 %spec.select.us.i169.lcssa to i8
  br label %._crit_edge.us.i170

._crit_edge.us.i170:                              ; preds = %bb.aj, %._crit_edge.us.loopexit.i
  %storemerge.us.i173 = phi i8 [ %spec.select, %bb.aj ], [ %i.ku, %._crit_edge.us.loopexit.i ]
  %.5.us.i174 = phi ptr [ %scevgep95.i157, %bb.aj ], [ %scevgep98.i, %._crit_edge.us.loopexit.i ] ; 3 uses
  %.251.us.i175 = getelementptr inbounds nuw i8, ptr %.15071.us.i156, i64 1 ; 3 uses
  store i8 %storemerge.us.i173, ptr %.15071.us.i156, align 1
  %i.kv = add nuw nsw i32 %.03973.us.i154, 8      ; 4 uses
  %i.kw = icmp slt i32 %i.kv, %i.jb
  br i1 %i.kw, label %.preheader.us.i153, label %._crit_edge74.us.i176, !llvm.loop !70

.preheader59.us.i180:                             ; preds = %._crit_edge74.us.i176, %.preheader59.us.i180
  %.14081.us.i181 = phi i32 [ %i.lb, %.preheader59.us.i180 ], [ %i.kv, %._crit_edge74.us.i176 ]
  %.14280.us.i182 = phi i8 [ %i.la, %.preheader59.us.i180 ], [ -128, %._crit_edge74.us.i176 ] ; 2 uses
  %.279.us.i183 = phi i8 [ %spec.select56.us.i186, %.preheader59.us.i180 ], [ 0, %._crit_edge74.us.i176 ]
  %.678.us.i184 = phi ptr [ %i.kx, %.preheader59.us.i180 ], [ %.5.us.i174, %._crit_edge74.us.i176 ] ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.678.us.i184, i64 1 ; 2 uses
  %i.ky = load i8, ptr %.678.us.i184, align 1
  %.not53.us.i185 = icmp eq i8 %i.ky, %i.iw
  %i.kz = select i1 %.not53.us.i185, i8 0, i8 %.14280.us.i182
  %spec.select56.us.i186 = or i8 %i.kz, %.279.us.i183 ; 2 uses
  %i.la = lshr i8 %.14280.us.i182, 1
  %i.lb = add nuw nsw i32 %.14081.us.i181, 1      ; 2 uses
  %i.lc = icmp slt i32 %i.lb, %4
  br i1 %i.lc, label %.preheader59.us.i180, label %bb.ak, !llvm.loop !71

bb.ak:                                            ; preds = %.preheader59.us.i180
  %i.ld = getelementptr inbounds nuw i8, ptr %.15071.us.i156, i64 2
  store i8 %spec.select56.us.i186, ptr %.251.us.i175, align 1
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge74.us.i176, %bb.ak
  %.352.us.i178 = phi ptr [ %.251.us.i175, %._crit_edge74.us.i176 ], [ %i.ld, %bb.ak ]
  %.7.us.i179 = phi ptr [ %.5.us.i174, %._crit_edge74.us.i176 ], [ %i.kx, %bb.ak ]
  %i.le = add nuw nsw i32 %.03884.us.i150, 1      ; 2 uses
  %exitcond100.not.i = icmp eq i32 %i.le, %5
  br i1 %exitcond100.not.i, label %tight_encode_mono_rect8.exit, label %.preheader60.us.i149, !llvm.loop !72

.preheader.us.i153:                               ; preds = %._crit_edge.us.i170, %.preheader60.us.i149
  %.03973.us.i154 = phi i32 [ 0, %.preheader60.us.i149 ], [ %i.kv, %._crit_edge.us.i170 ]
  %.14672.us.i155 = phi ptr [ %.04583.us.i151, %.preheader60.us.i149 ], [ %.5.us.i174, %._crit_edge.us.i170 ] ; 9 uses
  %.15071.us.i156 = phi ptr [ %.04982.us.i152, %.preheader60.us.i149 ], [ %.251.us.i175, %._crit_edge.us.i170 ] ; 3 uses
  %scevgep95.i157 = getelementptr i8, ptr %.14672.us.i155, i64 8
  %i.lf = getelementptr inbounds nuw i8, ptr %.14672.us.i155, i64 1 ; 2 uses
  %i.lg = load i8, ptr %.14672.us.i155, align 1
  %.not54.us.i158 = icmp ne i8 %i.lg, %i.iw       ; 2 uses
  br i1 %.not54.us.i158, label %.lr.ph.us.i162, label %bb.ad
end_hunk_1
