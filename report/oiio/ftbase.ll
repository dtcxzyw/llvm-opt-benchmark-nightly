inline.NumInlined: 362
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@FT_Load_Glyph:bb.a
  %i.fr = icmp slt i16 %i.fn, 1
  %i.fs = icmp slt i16 %i.fo, 1
  %or.cond3.i = select i1 %i.fr, i1 true, i1 %i.fs
  br i1 %or.cond3.i, label %FT_Outline_Check.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.am
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !139
  br label %bb.ao

bb.an:                                            ; preds = %bb.ao
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.ap, label %bb.ao, !llvm.loop !140

bb.ao:                                            ; preds = %bb.an, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.an ] ; 2 uses
  %.02536.i = phi i32 [ -1, %.preheader.i ], [ %i.fx, %bb.an ]
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %indvars.iv.i
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !141 ; 3 uses
  %i.fx = sext i16 %i.fw to i32                   ; 2 uses
  %.not31.i = icmp slt i32 %.02536.i, %i.fx
  %.not32.i = icmp slt i16 %i.fw, %i.fn
  %or.cond33.i = and i1 %.not32.i, %.not31.i
  br i1 %or.cond33.i, label %bb.an, label %FT_Outline_Check.exit

bb.ap:                                            ; preds = %bb.an
  %narrow.i = add nsw i16 %i.fn, -1
  %.not30.i206 = icmp eq i16 %i.fw, %narrow.i
  br i1 %.not30.i206, label %bb.aq, label %FT_Outline_Check.exit

bb.aq:                                            ; preds = %bb.al, %bb.ap
  br i1 %.not167, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fy = trunc i32 %.3 to i8
  %i.fz = lshr i8 %i.fy, 4
  %i.ga = and i8 %i.fz, 1
  tail call fastcc void @ft_glyphslot_grid_fit_metrics(ptr noundef %i.d, i8 noundef zeroext %i.ga)
  br label %bb.as

bb.as:                                            ; preds = %bb.aj, %bb.af, %bb.ai, %bb.aq, %bb.ar, %bb.ak
  %.1143 = phi i32 [ 0, %bb.ak ], [ 0, %bb.ar ], [ 0, %bb.aq ], [ %i.fb, %bb.aj ], [ 0, %bb.af ], [ 0, %bb.ai ] ; 8 uses
  %i.gb = and i32 %.3, 16
  %.not187 = icmp eq i32 %i.gb, 0
  br i1 %.not187, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gc = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !142
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.ge = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !143
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.sink238 = phi i64 [ %i.gf, %bb.au ], [ 0, %bb.at ]
  %.sink = phi i64 [ 0, %bb.au ], [ %i.gd, %bb.at ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 3 uses
  store i64 %.sink238, ptr %i.gg, align 8, !tbaa !46
  %i.gh = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 3 uses
  store i64 %.sink, ptr %i.gh, align 8, !tbaa !58
  %i.gi = and i32 %.3, 8192
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !74
  %i.gm = and i64 %i.gl, 1
  %.not188 = icmp eq i64 %i.gm, 0
  br i1 %.not188, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gn = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.go = load i64, ptr %i.az, align 8, !tbaa !144 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !145 ; 2 uses
  %.023.i = tail call i64 @llvm.abs.i64(i64 %i.gq, i1 false)
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.go, i1 false)
  %i.gr = mul i64 %.023.i, %spec.select.i
  %i.gs = add i64 %i.gr, 32
  %i.gt = lshr i64 %i.gs, 6                       ; 2 uses
  %i.gu = xor i64 %i.gq, %i.go
  %i.gv = icmp slt i64 %i.gu, 0
  %i.gw = sub nsw i64 0, %i.gt
  %i.gx = select i1 %i.gv, i64 %i.gw, i64 %i.gt
  store i64 %i.gx, ptr %i.az, align 8, !tbaa !144
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !146 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !147 ; 2 uses
  %.023.i208 = tail call i64 @llvm.abs.i64(i64 %i.hb, i1 false)
  %spec.select.i209 = tail call i64 @llvm.abs.i64(i64 %i.gz, i1 false)
  %i.hc = mul i64 %.023.i208, %spec.select.i209
  %i.hd = add i64 %i.hc, 32
  %i.he = lshr i64 %i.hd, 6                       ; 2 uses
  %i.hf = xor i64 %i.hb, %i.gz
  %i.hg = icmp slt i64 %i.hf, 0
  %i.hh = sub nsw i64 0, %i.he
  %i.hi = select i1 %i.hg, i64 %i.hh, i64 %i.he
  store i64 %i.hi, ptr %i.gy, align 8, !tbaa !146
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %i.hj = and i32 %.3, 2048
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.az, label %FT_Vector_Transform.exit

bb.az:                                            ; preds = %bb.ay
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !89 ; 10 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 48 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !133 ; 3 uses
  %.not189 = icmp eq i32 %i.ho, 0
  br i1 %.not189, label %FT_Vector_Transform.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hp = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 176
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !27
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !80 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 296
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !148 ; 3 uses
  %.not.i212 = icmp eq ptr %i.hv, null
  br i1 %.not.i212, label %._crit_edge.i, label %bb.bb

._crit_edge.i:                                    ; preds = %bb.ba
  %.phi.trans.insert.i214 = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %.pre.i215 = load i32, ptr %.phi.trans.insert.i214, align 8, !tbaa !132
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !149
  %i.hy = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !132 ; 2 uses
  %.not10.i213 = icmp eq i32 %i.hx, %i.hz
  br i1 %.not10.i213, label %ft_lookup_glyph_renderer.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %._crit_edge.i
  %i.ia = phi i32 [ %.pre.i215, %._crit_edge.i ], [ %i.hz, %bb.bb ] ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ht, i64 280
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !154 ; 2 uses
  %.not2631.i.i = icmp eq ptr %i.ic, null
  br i1 %.not2631.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bc, %bb.bd
  %.232.i.i = phi ptr [ %i.ij, %bb.bd ], [ %i.ic, %bb.bc ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.232.i.i, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !155 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !149
  %i.ih = icmp eq i32 %i.ig, %i.ia
  br i1 %i.ih, label %ft_lookup_glyph_renderer.exit, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %.232.i.i, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !157 ; 2 uses
  %.not26.i.i = icmp eq ptr %i.ij, null
  br i1 %.not26.i.i, label %.loopexit, label %.lr.ph.i.i

ft_lookup_glyph_renderer.exit:                    ; preds = %.lr.ph.i.i, %bb.bb
  %.0.i = phi ptr [ %i.hv, %bb.bb ], [ %i.ie, %.lr.ph.i.i ] ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !158
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 88
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !159
  %i.io = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.ip = tail call i32 %i.in(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.d, ptr noundef %i.hm, ptr noundef nonnull %i.io) #30
  br label %FT_Outline_Translate.exit.thread

.loopexit:                                        ; preds = %bb.bd, %bb.bc
  %i.iq = icmp eq i32 %i.ia, 1869968492
  br i1 %i.iq, label %bb.be, label %FT_Outline_Translate.exit

bb.be:                                            ; preds = %.loopexit
  %i.ir = and i32 %i.ho, 1
  %.not191 = icmp eq i32 %i.ir, 0
  br i1 %.not191, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.is = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  tail call void @FT_Outline_Transform(ptr noundef nonnull %i.is, ptr noundef %i.hm)
  %.pre = load i32, ptr %i.hn, align 8, !tbaa !133
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.it = phi i32 [ %.pre, %bb.bf ], [ %i.ho, %bb.be ]
  %i.iu = and i32 %i.it, 2
  %.not192 = icmp eq i32 %i.iu, 0
  br i1 %.not192, label %FT_Outline_Translate.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.iw = load <2 x i64>, ptr %i.iv, align 8, !tbaa !39 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.d, i64 202
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !137 ; 4 uses
  %3 = zext i16 %i.iy to i32
  %i.iz = icmp sgt i16 %i.iy, 0
  br i1 %i.iz, label %.lr.ph.preheader.i, label %FT_Outline_Translate.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.bh
  %i.ja = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !162 ; 4 uses
  %i.jc = zext nneg i16 %i.iy to i64              ; 2 uses
  %min.iters.check = icmp ult i16 %i.iy, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.jc, 32766                   ; 4 uses
  %i.jd = trunc nuw nsw i64 %n.vec to i32
  %i.je = shl nuw nsw i64 %n.vec, 4
  %i.jf = getelementptr i8, ptr %i.jb, i64 %i.je
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jg = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.jb, i64 %i.jg ; 2 uses
  %i.jh = getelementptr i8, ptr %i.jb, i64 %i.jg
  %next.gep261 = getelementptr i8, ptr %i.jh, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %wide.load262 = load <2 x i64>, ptr %next.gep261, align 8
  %i.ji = add <2 x i64> %wide.load, %i.iw
  %i.jj = add <2 x i64> %wide.load262, %i.iw
  store <2 x i64> %i.ji, ptr %next.gep, align 8
  store <2 x i64> %i.jj, ptr %next.gep261, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.jk = icmp eq i64 %index.next, %n.vec
  br i1 %i.jk, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.jc
  br i1 %cmp.n, label %FT_Outline_Translate.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i217.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.jd, %middle.block ]
  %.014.i.ph = phi ptr [ %i.jb, %.lr.ph.preheader.i ], [ %i.jf, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i217 = phi i32 [ %indvars.iv.next.i218, %.lr.ph.i ], [ %indvars.iv.i217.ph, %.lr.ph.i.preheader ]
  %.014.i = phi ptr [ %i.jn, %.lr.ph.i ], [ %.014.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.jl = load <2 x i64>, ptr %.014.i, align 8, !tbaa !39
  %i.jm = add <2 x i64> %i.jl, %i.iw
  store <2 x i64> %i.jm, ptr %.014.i, align 8, !tbaa !39
  %i.jn = getelementptr inbounds nuw i8, ptr %.014.i, i64 16
  %indvars.iv.next.i218 = add nuw nsw i32 %indvars.iv.i217, 1 ; 2 uses
  %exitcond.not.i219 = icmp eq i32 %indvars.iv.next.i218, %3
  br i1 %exitcond.not.i219, label %FT_Outline_Translate.exit.thread, label %.lr.ph.i, !llvm.loop !164

FT_Outline_Translate.exit:                        ; preds = %.loopexit
  %.not231 = icmp eq ptr %i.hm, null
  br i1 %.not231, label %FT_Vector_Transform.exit, label %FT_Outline_Translate.exit.thread

FT_Outline_Translate.exit.thread:                 ; preds = %.lr.ph.i, %middle.block, %ft_lookup_glyph_renderer.exit, %bb.bg, %bb.bh, %FT_Outline_Translate.exit
  %.2144230 = phi i32 [ %.1143, %FT_Outline_Translate.exit ], [ %i.ip, %ft_lookup_glyph_renderer.exit ], [ %.1143, %bb.bh ], [ %.1143, %bb.bg ], [ %.1143, %middle.block ], [ %.1143, %.lr.ph.i ]
  %i.jo = load i64, ptr %i.gg, align 8, !tbaa !165
  %i.jp = load i64, ptr %i.hm, align 8, !tbaa !166
  %sext.i.i = shl i64 %i.jo, 32
  %i.jq = ashr exact i64 %sext.i.i, 32            ; 2 uses
  %sext2.i.i = shl i64 %i.jp, 32
  %i.jr = ashr exact i64 %sext2.i.i, 32
  %i.js = mul nsw i64 %i.jr, %i.jq                ; 2 uses
  %i.jt = ashr i64 %i.js, 63
  %i.ju = add nsw i64 %i.js, 32768
  %i.jv = add nsw i64 %i.ju, %i.jt
  %i.jw = shl i64 %i.jv, 16
  %i.jx = ashr i64 %i.jw, 32
  %i.jy = load i64, ptr %i.gh, align 8, !tbaa !167
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !168
  %sext.i15.i = shl i64 %i.jy, 32
  %i.kb = ashr exact i64 %sext.i15.i, 32          ; 2 uses
  %sext2.i16.i = shl i64 %i.ka, 32
  %i.kc = ashr exact i64 %sext2.i16.i, 32
  %i.kd = mul nsw i64 %i.kc, %i.kb                ; 2 uses
  %i.ke = ashr i64 %i.kd, 63
  %i.kf = add nsw i64 %i.kd, 32768
  %i.kg = add nsw i64 %i.kf, %i.ke
  %i.kh = shl i64 %i.kg, 16
  %i.ki = ashr i64 %i.kh, 32
  %i.kj = add nsw i64 %i.ki, %i.jx
  %i.kk = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !169
  %sext2.i18.i = shl i64 %i.kl, 32
  %i.km = ashr exact i64 %sext2.i18.i, 32
  %i.kn = mul nsw i64 %i.km, %i.jq                ; 2 uses
  %i.ko = ashr i64 %i.kn, 63
  %i.kp = add nsw i64 %i.kn, 32768
  %i.kq = add nsw i64 %i.kp, %i.ko
  %i.kr = shl i64 %i.kq, 16
  %i.ks = ashr i64 %i.kr, 32
  %i.kt = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !170
  %sext2.i20.i = shl i64 %i.ku, 32
  %i.kv = ashr exact i64 %sext2.i20.i, 32
  %i.kw = mul nsw i64 %i.kv, %i.kb                ; 2 uses
  %i.kx = ashr i64 %i.kw, 63
  %i.ky = add nsw i64 %i.kw, 32768
  %i.kz = add nsw i64 %i.ky, %i.kx
  %i.la = shl i64 %i.kz, 16
  %i.lb = ashr i64 %i.la, 32
  %i.lc = add nsw i64 %i.lb, %i.ks
  store i64 %i.kj, ptr %i.gg, align 8, !tbaa !165
  store i64 %i.lc, ptr %i.gh, align 8, !tbaa !167
  br label %FT_Vector_Transform.exit

FT_Vector_Transform.exit:                         ; preds = %FT_Outline_Translate.exit.thread, %FT_Outline_Translate.exit, %bb.az, %bb.ay
  %.4 = phi i32 [ %.1143, %bb.ay ], [ %.1143, %bb.az ], [ %.1143, %FT_Outline_Translate.exit ], [ %.2144230, %FT_Outline_Translate.exit.thread ] ; 2 uses
  store i32 %1, ptr %i.x, align 8, !tbaa !69
  %i.ld = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 72
  store i32 %.3, ptr %i.le, align 8, !tbaa !171
  %.not193 = icmp eq i32 %.4, 0
  br i1 %.not193, label %bb.bi, label %FT_Outline_Check.exit

bb.bi:                                            ; preds = %FT_Vector_Transform.exit
  %i.lf = and i32 %.3, 1
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %bb.bj, label %FT_Outline_Check.exit

bb.bj:                                            ; preds = %bb.bi
  %i.lh = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !132
  switch i32 %i.li, label %bb.bk [
    i32 1651078259, label %FT_Outline_Check.exit
    i32 1668246896, label %FT_Outline_Check.exit
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.lj = lshr i32 %.3, 16
  %i.lk = and i32 %i.lj, 15                       ; 2 uses
  %i.ll = icmp eq i32 %i.lk, 0
  %i.lm = lshr i32 %.3, 11
  %spec.select203 = and i32 %i.lm, 2
  %.0 = select i1 %i.ll, i32 %spec.select203, i32 %i.lk ; 2 uses
  %i.ln = and i32 %.3, 4
  %.not197 = icmp eq i32 %i.ln, 0
  br i1 %.not197, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lo = load ptr, ptr %i.af, align 8, !tbaa !64 ; 2 uses
  %.not8.i = icmp eq ptr %i.lo, null
  br i1 %.not8.i, label %FT_Outline_Check.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 176
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !27
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !80
  %i.lt = tail call i32 @FT_Render_Glyph_Internal(ptr noundef %i.ls, ptr noundef nonnull %i.d, i32 noundef %.0), !inline_history !172
  br label %FT_Outline_Check.exit

bb.bn:                                            ; preds = %bb.bk
  %i.lu = tail call zeroext i8 @ft_glyphslot_preset_bitmap(ptr noundef nonnull %i.d, i32 noundef %.0, ptr noundef null) ; 0 uses
  br label %FT_Outline_Check.exit

FT_Outline_Check.exit:                            ; preds = %bb.ao, %bb.bm, %bb.bl, %bb.ap, %bb.am, %.critedge, %bb.bi, %FT_Vector_Transform.exit, %bb.bj, %bb.bj, %bb.bn, %bb.a, %bb.b, %bb.c
  %.0140 = phi i32 [ 35, %bb.a ], [ 35, %bb.b ], [ 35, %bb.c ], [ %.4, %FT_Vector_Transform.exit ], [ 0, %bb.bn ], [ 0, %bb.bj ], [ 0, %bb.bj ], [ 0, %bb.bi ], [ %i.fh, %.critedge ], [ 20, %bb.ap ], [ 20, %bb.am ], [ 6, %bb.bl ], [ %i.lt, %bb.bm ], [ 20, %bb.ao ]
  ret i32 %.0140
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 0, -65535) i64 @FT_RoundFix(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %.lobit.neg = ashr i64 %0, 63
  %i.a = add i64 %0, 32768
  %i.b = add i64 %i.a, %.lobit.neg
  %i.c = and i64 %i.b, -65536
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 0, -65535) i64 @FT_CeilFix(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = add i64 %0, 65535
  %i.b = and i64 %i.a, -65536
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 0, -65535) i64 @FT_FloorFix(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = and i64 %0, -65536
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define hidden range(i64 -2147483647, -9223372036854775808) i64 @FT_Hypot(i64 noundef %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.FT_Vector_, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store i64 %0, ptr %2, align 8, !tbaa !165
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !167
  %i.b = call i64 @FT_Vector_Length(ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i64 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i64 -2147483647, -9223372036854775808) i64 @FT_Vector_Length(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
end_hunk_0
begin_hunk_1_@FT_Stream_New:bb.a
  br label %ft_mem_alloc.exit

ft_mem_alloc.exit:                                ; preds = %bb.l, %bb.k, %ft_mem_free.exit, %bb.j, %bb.i, %FT_Stream_Close.exit, %bb.d, %bb.f, %bb.b, %bb.a
  %.0 = phi i32 [ 6, %bb.b ], [ 33, %bb.a ], [ 0, %FT_Stream_Close.exit ], [ 64, %bb.f ], [ 64, %bb.d ], [ 6, %bb.l ], [ 6, %bb.k ], [ %i.t, %ft_mem_free.exit ], [ 6, %bb.j ], [ 6, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @FT_Stream_OpenMemory(ptr nofree noundef writeonly captures(none) initializes((0, 24), (40, 56), (64, 72)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #17 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !272
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !281
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.c, align 8, !tbaa !275
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  ret void
}

declare hidden i32 @FT_Stream_Open(ptr noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define hidden void @FT_Stream_Close(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !279  ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.b(ptr noundef nonnull %0) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @FT_Stream_Free(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !276  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !279  ; 2 uses
  %.not5.i = icmp eq ptr %i.d, null
  br i1 %.not5.i, label %FT_Stream_Close.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.d(ptr noundef nonnull %0) #30, !inline_history !280
  br label %FT_Stream_Close.exit

FT_Stream_Close.exit:                             ; preds = %bb.b, %bb.c
  %.not5 = icmp eq i32 %1, 0
  br i1 %.not5, label %ft_mem_free.exit, label %bb.d

ft_mem_free.exit:                                 ; preds = %FT_Stream_Close.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66
  tail call void %i.f(ptr noundef %i.b, ptr noundef nonnull %0) #30, !inline_history !203
  br label %bb.d

bb.d:                                             ; preds = %FT_Stream_Close.exit, %ft_mem_free.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @ft_glyphslot_free_bitmap(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !60   ; 2 uses
  %i.e = and i32 %i.d, 1
  %.not8 = icmp eq i32 %i.e, 0
  br i1 %.not8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %ft_mem_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66
  tail call void %i.m(ptr noundef %i.k, ptr noundef nonnull %i.g) #30, !inline_history !203
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre9 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !60
  br label %ft_mem_free.exit

ft_mem_free.exit:                                 ; preds = %bb.c, %bb.d
  %i.n = phi i32 [ %i.d, %bb.c ], [ %.pre9, %bb.d ]
  %i.o = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  store ptr null, ptr %i.f, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = and i32 %i.n, -2
  store i32 %i.q, ptr %i.p, align 8, !tbaa !60
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr null, ptr %i.r, align 8, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ft_mem_free.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @ft_glyphslot_preset_bitmap(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load i32, ptr %i.b, align 8, !tbaa !132
  switch i32 %i.c, label %bb.s [
    i32 1398163232, label %bb.b
    i32 1869968492, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !251, !nonnull !98, !noundef !98 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !282
  %i.h = zext i32 %i.g to i64
  %.idx.i = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !283  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !95   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !284
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(7) @.str.1) #31
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %FT_Get_Module.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.01519.i149 = phi ptr [ %i.p, %.lr.ph.i ], [ %i.e, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %.01519.i149, i64 8 ; 3 uses
  %i.q = icmp ult ptr %i.p, %i.i
  tail call void @llvm.assume(i1 %i.q)
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !283  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !95   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !284
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(7) @.str.1) #31
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %FT_Get_Module.exit, label %.lr.ph.i

FT_Get_Module.exit:                               ; preds = %.lr.ph.i, %bb.b
  %i.x = phi ptr [ %i.k, %bb.b ], [ %i.s, %.lr.ph.i ]
  %.lcssa = phi ptr [ %i.j, %bb.b ], [ %i.r, %.lr.ph.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !134
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !285
  %i.ab = tail call i32 %i.aa(ptr noundef nonnull %.lcssa, ptr noundef nonnull %0, i8 noundef zeroext 0) #30
  %i.ac = trunc i32 %i.ab to i8
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %.not94 = icmp eq ptr %2, null
  br i1 %.not94, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load i64, ptr %2, align 8, !tbaa !165
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !167
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.081 = phi i64 [ %i.ad, %bb.d ], [ 0, %bb.c ]  ; 2 uses
  %.080 = phi i64 [ %i.af, %bb.d ], [ 0, %bb.c ]  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 202
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !137 ; 3 uses
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %FT_Outline_Get_CBox.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !162 ; 5 uses
  %i.al = sext i16 %i.ah to i64
  %.idx.i95 = shl nuw nsw i64 %i.al, 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i95
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !165 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !167 ; 4 uses
  %i.aq = icmp sgt i16 %i.ah, 1
  br i1 %i.aq, label %.lr.ph.preheader.i, label %FT_Outline_Get_CBox.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %.04051.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  br label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %.lr.ph.i96, %.lr.ph.preheader.i
  %.04057.i = phi ptr [ %.040.i, %.lr.ph.i96 ], [ %.04051.i, %.lr.ph.preheader.i ] ; 3 uses
  %.056.i = phi i64 [ %spec.select.i, %.lr.ph.i96 ], [ %i.an, %.lr.ph.preheader.i ]
  %.03455.i = phi i64 [ %.135.i, %.lr.ph.i96 ], [ %i.ap, %.lr.ph.preheader.i ]
  %.03754.i = phi i64 [ %.138.i, %.lr.ph.i96 ], [ %i.an, %.lr.ph.preheader.i ]
  %.pn53.i = phi ptr [ %.04057.i, %.lr.ph.i96 ], [ %i.ak, %.lr.ph.preheader.i ]
  %.04152.i = phi i64 [ %.142.i, %.lr.ph.i96 ], [ %i.ap, %.lr.ph.preheader.i ]
  %i.ar = load i64, ptr %.04057.i, align 8, !tbaa !165 ; 2 uses
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %i.ar, i64 %.056.i) ; 2 uses
  %.138.i = tail call i64 @llvm.smax.i64(i64 %i.ar, i64 %.03754.i) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.pn53.i, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !167 ; 2 uses
  %.135.i = tail call i64 @llvm.smin.i64(i64 %i.at, i64 %.03455.i) ; 2 uses
  %.142.i = tail call i64 @llvm.smax.i64(i64 %i.at, i64 %.04152.i) ; 2 uses
  %.040.i = getelementptr inbounds nuw i8, ptr %.04057.i, i64 16 ; 2 uses
  %i.au = icmp ult ptr %.040.i, %i.am
  br i1 %i.au, label %.lr.ph.i96, label %FT_Outline_Get_CBox.exit, !llvm.loop !287

FT_Outline_Get_CBox.exit:                         ; preds = %.lr.ph.i96, %bb.e, %bb.f
  %.243.i = phi i64 [ 0, %bb.e ], [ %i.ap, %bb.f ], [ %.142.i, %.lr.ph.i96 ] ; 2 uses
  %.239.i = phi i64 [ 0, %bb.e ], [ %i.an, %bb.f ], [ %.138.i, %.lr.ph.i96 ] ; 2 uses
  %.236.i = phi i64 [ 0, %bb.e ], [ %i.ap, %bb.f ], [ %.135.i, %.lr.ph.i96 ] ; 2 uses
  %.2.i = phi i64 [ 0, %bb.e ], [ %i.an, %bb.f ], [ %spec.select.i, %.lr.ph.i96 ] ; 2 uses
  %i.av = ashr i64 %.2.i, 6
  %i.aw = ashr i64 %.081, 6                       ; 2 uses
  %i.ax = add nsw i64 %i.av, %i.aw                ; 4 uses
  %i.ay = ashr i64 %.236.i, 6
  %i.az = ashr i64 %.080, 6                       ; 2 uses
  %i.ba = add nsw i64 %i.ay, %i.az                ; 4 uses
  %i.bb = ashr i64 %.239.i, 6
  %i.bc = add nsw i64 %i.bb, %i.aw                ; 4 uses
  %i.bd = ashr i64 %.243.i, 6
  %i.be = add nsw i64 %i.bd, %i.az                ; 4 uses
  %i.bf = and i64 %.2.i, 63
  %i.bg = and i64 %.081, 63                       ; 2 uses
  %i.bh = add nuw nsw i64 %i.bf, %i.bg            ; 4 uses
  %i.bi = and i64 %.236.i, 63
  %i.bj = and i64 %.080, 63                       ; 2 uses
  %i.bk = add nuw nsw i64 %i.bi, %i.bj            ; 4 uses
  %i.bl = and i64 %.239.i, 63
  %i.bm = add nuw nsw i64 %i.bl, %i.bg            ; 4 uses
  %i.bn = and i64 %.243.i, 63
  %i.bo = add nuw nsw i64 %i.bn, %i.bj            ; 4 uses
  switch i32 %1, label %.thread134 [
    i32 2, label %bb.g
    i32 3, label %bb.p
    i32 4, label %bb.q
  ]

.thread134:                                       ; preds = %FT_Outline_Get_CBox.exit
  %i.bp = lshr i64 %i.bh, 6
  %i.bq = add nsw i64 %i.bp, %i.ax                ; 2 uses
  %i.br = lshr i64 %i.bk, 6
  %i.bs = add nsw i64 %i.br, %i.ba                ; 2 uses
  %i.bt = add nuw nsw i64 %i.bm, 63
  %i.bu = lshr i64 %i.bt, 6
  %i.bv = add nsw i64 %i.bu, %i.bc                ; 2 uses
  %i.bw = add nuw nsw i64 %i.bo, 63
  %i.bx = lshr i64 %i.bw, 6
  %i.by = add nsw i64 %i.bx, %i.be                ; 2 uses
  %i.bz = sub nsw i64 %i.bv, %i.bq                ; 2 uses
  %i.ca = sub nsw i64 %i.by, %i.bs
  br label %bb.r

bb.g:                                             ; preds = %FT_Outline_Get_CBox.exit
  %i.cb = add nuw nsw i64 %i.bh, 31               ; 2 uses
  %i.cc = lshr i64 %i.cb, 6
  %i.cd = add nsw i64 %i.cc, %i.ax                ; 6 uses
  %i.ce = add nuw nsw i64 %i.bm, 32               ; 2 uses
  %i.cf = lshr i64 %i.ce, 6
  %i.cg = add nsw i64 %i.cf, %i.bc                ; 2 uses
  %i.ch = icmp eq i64 %i.cd, %i.cg
  br i1 %i.ch, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ci = and i64 %i.cb, 63
  %i.cj = and i64 %i.ce, 63
  %i.ck = add nsw i64 %i.cj, -31
  %i.cl = add nsw i64 %i.ck, %i.ci
  %i.cm = icmp slt i64 %i.cl, 32
  br i1 %i.cm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cn = add nsw i64 %i.cd, -1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.co = add nsw i64 %i.cd, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %.sroa.0.0 = phi i64 [ %i.cn, %bb.i ], [ %i.cd, %bb.j ], [ %i.cd, %bb.g ] ; 2 uses
  %.sroa.23.0 = phi i64 [ %i.cd, %bb.i ], [ %i.co, %bb.j ], [ %i.cg, %bb.g ] ; 2 uses
  %i.cp = add nuw nsw i64 %i.bk, 31               ; 2 uses
  %i.cq = lshr i64 %i.cp, 6
  %i.cr = add nsw i64 %i.cq, %i.ba                ; 6 uses
  %i.cs = add nuw nsw i64 %i.bo, 32               ; 2 uses
  %i.ct = lshr i64 %i.cs, 6
  %i.cu = add nsw i64 %i.ct, %i.be                ; 2 uses
  %i.cv = icmp eq i64 %i.cr, %i.cu
  br i1 %i.cv, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.cw = and i64 %i.cp, 63
  %i.cx = and i64 %i.cs, 63
  %i.cy = add nsw i64 %i.cx, -31
  %i.cz = add nsw i64 %i.cy, %i.cw
  %i.da = icmp slt i64 %i.cz, 32
  br i1 %i.da, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.db = add nsw i64 %i.cr, -1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.dc = add nsw i64 %i.cr, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k
  %.sroa.13.0.ph = phi i64 [ %i.cr, %bb.k ], [ %i.cr, %bb.n ], [ %i.db, %bb.m ] ; 2 uses
  %.sroa.33.0.ph = phi i64 [ %i.cu, %bb.k ], [ %i.dc, %bb.n ], [ %i.cr, %bb.m ] ; 2 uses
  %i.dd = sub nsw i64 %.sroa.23.0, %.sroa.0.0     ; 2 uses
  %i.de = sub nsw i64 %.sroa.33.0.ph, %.sroa.13.0.ph
  %i.df = add nsw i64 %i.dd, 15
  %i.dg = ashr i64 %i.df, 3
  %i.dh = and i64 %i.dg, -2
  br label %bb.r

bb.p:                                             ; preds = %FT_Outline_Get_CBox.exit
  %i.di = load ptr, ptr %0, align 8, !tbaa !251   ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 344
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !165 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 360
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !165 ; 2 uses
  %..i = tail call i64 @llvm.smax.i64(i64 %i.dk, i64 %i.dm)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 376
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !165 ; 2 uses
  %spec.select.i97 = tail call i64 @llvm.smax.i64(i64 %..i, i64 %i.do)
  %i.dp = sub nsw i64 %i.bh, %spec.select.i97
  %.131.i = tail call i64 @llvm.smin.i64(i64 %i.dk, i64 %i.dm)
  %i.dq = tail call i64 @llvm.smin.i64(i64 %.131.i, i64 %i.do)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 352
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !167 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.di, i64 368
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !167 ; 2 uses
  %.133.i = tail call i64 @llvm.smax.i64(i64 %i.ds, i64 %i.du)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 384
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !167 ; 2 uses
  %i.dx = tail call i64 @llvm.smax.i64(i64 %.133.i, i64 %i.dw)
  %i.dy = sub nsw i64 %i.bk, %i.dx
  %.135.i98 = tail call i64 @llvm.smin.i64(i64 %i.ds, i64 %i.du)
  %i.dz = tail call i64 @llvm.smin.i64(i64 %.135.i98, i64 %i.dw)
  %i.ea = ashr i64 %i.dp, 6
  %i.eb = add nsw i64 %i.ea, %i.ax                ; 2 uses
  %i.ec = ashr i64 %i.dy, 6
  %i.ed = add nsw i64 %i.ec, %i.ba                ; 2 uses
  %i.ee = add nuw nsw i64 %i.bm, 63
  %i.ef = sub i64 %i.ee, %i.dq
  %i.eg = ashr i64 %i.ef, 6
  %i.eh = add nsw i64 %i.eg, %i.bc                ; 2 uses
  %i.ei = add nuw nsw i64 %i.bo, 63
  %i.ej = sub i64 %i.ei, %i.dz
  %i.ek = ashr i64 %i.ej, 6
  %i.el = add nsw i64 %i.ek, %i.be                ; 2 uses
  %i.em = sub nsw i64 %i.eh, %i.eb
  %i.en = sub nsw i64 %i.el, %i.ed
  %i.eo = mul nsw i64 %i.em, 3                    ; 2 uses
  %i.ep = add nsw i64 %i.eo, 3
  %i.eq = and i64 %i.ep, -4
  br label %bb.r

bb.q:                                             ; preds = %FT_Outline_Get_CBox.exit
  %i.er = load ptr, ptr %0, align 8, !tbaa !251   ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 344
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 352
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !167 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 360
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 368
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !167 ; 2 uses
  %.137.i = tail call i64 @llvm.smax.i64(i64 %i.eu, i64 %i.ex)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 376
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 384
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !167 ; 2 uses
  %spec.select145.i = tail call i64 @llvm.smax.i64(i64 %.137.i, i64 %i.fa)
  %i.fb = sub nsw i64 %i.bh, %spec.select145.i
  %.139.i = tail call i64 @llvm.smin.i64(i64 %i.eu, i64 %i.ex)
  %i.fc = tail call i64 @llvm.smin.i64(i64 %.139.i, i64 %i.fa)
  %i.fd = load i64, ptr %i.es, align 8, !tbaa !165 ; 2 uses
  %i.fe = load i64, ptr %i.ev, align 8, !tbaa !165 ; 2 uses
  %.141.i = tail call i64 @llvm.smin.i64(i64 %i.fd, i64 %i.fe)
  %i.ff = load i64, ptr %i.ey, align 8, !tbaa !165 ; 2 uses
  %i.fg = tail call i64 @llvm.smin.i64(i64 %.141.i, i64 %i.ff)
  %i.fh = add nsw i64 %i.fg, %i.bk
  %.143.i = tail call i64 @llvm.smax.i64(i64 %i.fd, i64 %i.fe)
  %i.fi = tail call i64 @llvm.smax.i64(i64 %.143.i, i64 %i.ff)
  %i.fj = ashr i64 %i.fb, 6
  %i.fk = add nsw i64 %i.fj, %i.ax                ; 2 uses
  %i.fl = ashr i64 %i.fh, 6
  %i.fm = add nsw i64 %i.fl, %i.ba                ; 2 uses
  %i.fn = add nuw nsw i64 %i.bm, 63
  %i.fo = sub i64 %i.fn, %i.fc
  %i.fp = ashr i64 %i.fo, 6
  %i.fq = add nsw i64 %i.fp, %i.bc                ; 2 uses
  %i.fr = add nuw nsw i64 %i.bo, 63
  %i.fs = add i64 %i.fr, %i.fi
  %i.ft = ashr i64 %i.fs, 6
  %i.fu = add nsw i64 %i.ft, %i.be                ; 2 uses
  %i.fv = sub nsw i64 %i.fq, %i.fk                ; 2 uses
  %i.fw = sub nsw i64 %i.fu, %i.fm
  %i.fx = mul nsw i64 %i.fw, 3
  br label %bb.r

bb.r:                                             ; preds = %.thread134, %bb.q, %bb.p, %bb.o
  %.1133 = phi i8 [ 5, %bb.p ], [ 1, %bb.o ], [ 6, %bb.q ], [ 2, %.thread134 ]
  %.sroa.33.0131 = phi i64 [ %i.el, %bb.p ], [ %.sroa.33.0.ph, %bb.o ], [ %i.fu, %bb.q ], [ %i.by, %.thread134 ] ; 2 uses
  %.sroa.23.1129 = phi i64 [ %i.eh, %bb.p ], [ %.sroa.23.0, %bb.o ], [ %i.fq, %bb.q ], [ %i.bv, %.thread134 ]
  %.sroa.0.1127 = phi i64 [ %i.eb, %bb.p ], [ %.sroa.0.0, %bb.o ], [ %i.fk, %bb.q ], [ %i.bq, %.thread134 ] ; 2 uses
  %.sroa.13.0125 = phi i64 [ %i.ed, %bb.p ], [ %.sroa.13.0.ph, %bb.o ], [ %i.fm, %bb.q ], [ %i.bs, %.thread134 ]
  %.079 = phi i64 [ %i.eo, %bb.p ], [ %i.dd, %bb.o ], [ %i.fv, %bb.q ], [ %i.bz, %.thread134 ]
  %.178 = phi i64 [ %i.en, %bb.p ], [ %i.de, %bb.o ], [ %i.fx, %bb.q ], [ %i.ca, %.thread134 ]
  %.076 = phi i64 [ %i.eq, %bb.p ], [ %i.dh, %bb.o ], [ %i.fv, %bb.q ], [ %i.bz, %.thread134 ]
  %i.fy = trunc i64 %.sroa.0.1127 to i32
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %i.fy, ptr %i.fz, align 8, !tbaa !288
  %i.ga = trunc i64 %.sroa.33.0131 to i32
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !289
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 %.1133, ptr %i.gc, align 2, !tbaa !290
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i16 256, ptr %i.gd, align 8, !tbaa !291
  %i.ge = trunc i64 %.079 to i32
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !292
  %i.gg = trunc i64 %.178 to i32
  store i32 %i.gg, ptr %i.a, align 8, !tbaa !293
  %i.gh = trunc i64 %.076 to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.gh, ptr %i.gi, align 8, !tbaa !294
  %i.gj = icmp slt i64 %.sroa.0.1127, -32768
  %i.gk = icmp sgt i64 %.sroa.23.1129, 32767
  %or.cond = select i1 %i.gj, i1 true, i1 %i.gk
  %i.gl = icmp slt i64 %.sroa.13.0125, -32768
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.gl
  %i.gm = icmp sgt i64 %.sroa.33.0131, 32767
  %or.cond8 = select i1 %or.cond5, i1 true, i1 %i.gm
  %. = zext i1 %or.cond8 to i8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.a, %FT_Get_Module.exit
  %.0 = phi i8 [ %i.ac, %FT_Get_Module.exit ], [ 1, %bb.a ], [ %., %bb.r ]
  ret i8 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @FT_Get_Module(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !282  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.01519, i64 8 ; 2 uses
  %i.i = icmp ult ptr %i.h, %i.g
  br i1 %i.i, label %.lr.ph, label %.loopexit, !llvm.loop !295

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.01519 = phi ptr [ %i.h, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %.01519, align 8, !tbaa !283 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !95
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !284
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %1) #31
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.j, %.lr.ph ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @FT_Outline_Get_CBox(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !137  ; 3 uses
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !162  ; 5 uses
  %i.h = sext i16 %i.d to i64
  %.idx = shl nuw nsw i64 %i.h, 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %i.j = load i64, ptr %i.g, align 8, !tbaa !165  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !167  ; 4 uses
  %i.m = icmp sgt i16 %i.d, 1
  br i1 %i.m, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %.04051 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04057 = phi ptr [ %.040, %.lr.ph ], [ %.04051, %.lr.ph.preheader ] ; 3 uses
  %.056 = phi i64 [ %spec.select, %.lr.ph ], [ %i.j, %.lr.ph.preheader ]
  %.03455 = phi i64 [ %.135, %.lr.ph ], [ %i.l, %.lr.ph.preheader ]
  %.03754 = phi i64 [ %.138, %.lr.ph ], [ %i.j, %.lr.ph.preheader ]
  %.pn53 = phi ptr [ %.04057, %.lr.ph ], [ %i.g, %.lr.ph.preheader ]
  %.04152 = phi i64 [ %.142, %.lr.ph ], [ %i.l, %.lr.ph.preheader ]
  %i.n = load i64, ptr %.04057, align 8, !tbaa !165 ; 2 uses
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.n, i64 %.056) ; 2 uses
  %.138 = tail call i64 @llvm.smax.i64(i64 %i.n, i64 %.03754) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.pn53, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !167  ; 2 uses
  %.135 = tail call i64 @llvm.smin.i64(i64 %i.p, i64 %.03455) ; 2 uses
  %.142 = tail call i64 @llvm.smax.i64(i64 %i.p, i64 %.04152) ; 2 uses
  %.040 = getelementptr inbounds nuw i8, ptr %.04057, i64 16 ; 2 uses
  %i.q = icmp ult ptr %.040, %i.i
  br i1 %i.q, label %.lr.ph, label %.loopexit, !llvm.loop !287

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b
  %.243 = phi i64 [ 0, %bb.b ], [ %i.l, %bb.c ], [ %.142, %.lr.ph ]
  %.239 = phi i64 [ 0, %bb.b ], [ %i.j, %bb.c ], [ %.138, %.lr.ph ]
  %.236 = phi i64 [ 0, %bb.b ], [ %i.l, %bb.c ], [ %.135, %.lr.ph ]
  %.2 = phi i64 [ 0, %bb.b ], [ %i.j, %bb.c ], [ %spec.select, %.lr.ph ]
  store i64 %.2, ptr %1, align 8, !tbaa !252
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.239, ptr %i.r, align 8, !tbaa !253
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.236, ptr %i.s, align 8, !tbaa !254
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.243, ptr %i.t, align 8, !tbaa !255
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @ft_glyphslot_set_bitmap(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %ft_glyphslot_free_bitmap.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !60   ; 2 uses
  %i.e = and i32 %i.d, 1
  %.not8.i = icmp eq i32 %i.e, 0
  br i1 %.not8.i, label %ft_glyphslot_free_bitmap.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %ft_mem_free.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66
  tail call void %i.m(ptr noundef %i.k, ptr noundef nonnull %i.g) #30, !inline_history !296
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !59 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre9.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !60
  br label %ft_mem_free.exit.i

ft_mem_free.exit.i:                               ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %i.d, %bb.c ], [ %.pre9.i, %bb.d ]
  %i.o = phi ptr [ %i.b, %bb.c ], [ %.pre.i, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = and i32 %i.n, -2
  store i32 %i.q, ptr %i.p, align 8, !tbaa !60
  br label %ft_glyphslot_free_bitmap.exit

ft_glyphslot_free_bitmap.exit:                    ; preds = %bb.a, %bb.b, %ft_mem_free.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %1, ptr %i.r, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 65) i32 @ft_glyphslot_alloc_bitmap(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %i.i = and i32 %i.h, 1
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63   ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %ft_mem_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66
  tail call void %i.m(ptr noundef %i.d, ptr noundef nonnull %i.k) #30, !inline_history !203
  br label %ft_mem_free.exit

ft_mem_free.exit:                                 ; preds = %bb.b, %bb.c
  store ptr null, ptr %i.j, align 8, !tbaa !63
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.n = or disjoint i32 %i.h, 1
  store i32 %i.n, ptr %i.g, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %ft_mem_free.exit
  %i.o = icmp sgt i64 %1, 0
  br i1 %i.o, label %ft_mem_qalloc.exit.i, label %ft_mem_qalloc.exit.thread.i

ft_mem_qalloc.exit.thread.i:                      ; preds = %bb.e
  %.not14.i.i = icmp eq i64 %1, 0
  %spec.select13.i.i = select i1 %.not14.i.i, i32 0, i32 6
  br label %ft_mem_alloc.exit

ft_mem_qalloc.exit.i:                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !187
  %i.r = tail call ptr %i.q(ptr noundef %i.d, i64 noundef %1) #30, !inline_history !188 ; 3 uses
  %.not.i.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i.not.i, label %ft_mem_alloc.exit, label %bb.f

bb.f:                                             ; preds = %ft_mem_qalloc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %1, i1 false)
  br label %ft_mem_alloc.exit

ft_mem_alloc.exit:                                ; preds = %ft_mem_qalloc.exit.thread.i, %ft_mem_qalloc.exit.i, %bb.f
  %.0.i17.i = phi ptr [ null, %ft_mem_qalloc.exit.thread.i ], [ %i.r, %bb.f ], [ null, %ft_mem_qalloc.exit.i ]
  %.08.i16.i = phi i32 [ %spec.select13.i.i, %ft_mem_qalloc.exit.thread.i ], [ 0, %bb.f ], [ 64, %ft_mem_qalloc.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %.0.i17.i, ptr %i.s, align 8, !tbaa !63
  ret i32 %.08.i16.i
}

; Function Attrs: nounwind uwtable
define hidden i32 @FT_New_GlyphSlot(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %.not25 = icmp eq ptr %i.b, null
  br i1 %.not25, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !297  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.h = load i64, ptr %i.g, align 8, !tbaa !298  ; 4 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %ft_mem_qalloc.exit.i, label %ft_mem_qalloc.exit.thread.i

ft_mem_qalloc.exit.thread.i:                      ; preds = %bb.c
  %.not14.i.i = icmp ne i64 %i.h, 0
  tail call void @llvm.assume(i1 %.not14.i.i)
  br label %ft_mem_alloc.exit

ft_mem_qalloc.exit.i:                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !187
  %i.l = tail call ptr %i.k(ptr noundef %i.f, i64 noundef %i.h) #30, !inline_history !188 ; 12 uses
  %.not.i.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i.not.i, label %ft_mem_alloc.exit, label %select.unfold

select.unfold:                                    ; preds = %ft_mem_qalloc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 0, i64 %i.h, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr %0, ptr %i.m, align 8, !tbaa !64
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !27   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
end_hunk_1
begin_hunk_2_@FT_Set_Transform:bb.a

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !313
  %.pre37 = load i64, ptr %2, align 8, !tbaa !165
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.m = phi i64 [ %.pre37, %bb.i ], [ 0, %bb.h ]
  %.025 = phi ptr [ %2, %bb.i ], [ %i.l, %bb.h ]
  %i.n = getelementptr inbounds nuw i8, ptr %.025, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !167
  %i.p = or i64 %i.o, %i.m
  %.not34 = icmp eq i64 %i.p, 0
  br i1 %.not34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.k, ptr %i.c, align 8, !tbaa !133
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @FT_Get_Transform(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #19 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not10 = icmp eq ptr %1, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !tbaa.struct !312
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not11 = icmp eq ptr %2, null
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !313
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 21) i32 @FT_Outline_Check(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !137  ; 4 uses
  %i.c = load i16, ptr %0, align 8, !tbaa !138    ; 3 uses
  %wide.trip.count = sext i16 %i.c to i64
  %i.d = icmp eq i16 %i.b, 0
  %i.e = icmp eq i16 %i.c, 0
  %or.cond = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i16 %i.b, 1
  %i.g = icmp slt i16 %i.c, 1
  %or.cond3 = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond3, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !139
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.f, label %bb.e, !llvm.loop !140

bb.e:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.02536 = phi i32 [ -1, %.preheader ], [ %i.l, %bb.d ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load i16, ptr %i.j, align 2, !tbaa !141  ; 3 uses
  %i.l = sext i16 %i.k to i32                     ; 2 uses
  %.not31 = icmp slt i32 %.02536, %i.l
  %.not32 = icmp slt i16 %i.k, %i.b
  %or.cond33 = and i1 %.not32, %.not31
  br i1 %or.cond33, label %bb.d, label %.thread

bb.f:                                             ; preds = %bb.d
  %narrow = add nsw i16 %i.b, -1
  %.not30 = icmp eq i16 %i.k, %narrow
  br i1 %.not30, label %select.unfold, label %.thread

.thread:                                          ; preds = %bb.e, %bb.c, %bb.f
  br label %select.unfold

select.unfold:                                    ; preds = %bb.f, %bb.a, %.thread, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 20, %bb.a ], [ 20, %.thread ], [ 0, %bb.f ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ft_glyphslot_grid_fit_metrics(ptr nofree noundef nonnull captures(none) %0, i8 noundef zeroext range(i8 0, 2) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load <2 x i64>, ptr %i.b, align 8, !tbaa !39
  %i.d = add <2 x i64> %i.c, <i64 0, i64 63>
  %i.e = and <2 x i64> %i.d, splat (i64 -64)
  store <2 x i64> %i.e, ptr %i.b, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = load <2 x i64>, ptr %i.f, align 8, !tbaa !39 ; 2 uses
  %i.h = load <2 x i64>, ptr %i.a, align 8, !tbaa !39
  %i.i = add <2 x i64> %i.g, splat (i64 63)
  %i.j = add <2 x i64> %i.i, %i.h
  %i.k = and <2 x i64> %i.j, splat (i64 -64)
  %i.l = and <2 x i64> %i.g, splat (i64 -64)      ; 2 uses
  store <2 x i64> %i.l, ptr %i.f, align 8, !tbaa !39
  %i.m = sub <2 x i64> %i.k, %i.l
  store <2 x i64> %i.m, ptr %i.a, align 8, !tbaa !39
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.o = load <2 x i64>, ptr %i.n, align 8, !tbaa !39
  %i.p = and <2 x i64> %i.o, splat (i64 -64)
  store <2 x i64> %i.p, ptr %i.n, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !314  ; 2 uses
  %i.s = load i64, ptr %i.a, align 8, !tbaa !315
  %i.t = add i64 %i.r, 63
  %i.u = add i64 %i.t, %i.s
  %i.v = and i64 %i.u, -64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !316  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !317
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = and i64 %i.aa, -64
  %i.ac = and i64 %i.r, -64                       ; 2 uses
  store i64 %i.ac, ptr %i.q, align 8, !tbaa !314
  %i.ad = add i64 %i.x, 63
  %i.ae = and i64 %i.ad, -64                      ; 2 uses
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !316
  %i.af = sub i64 %i.v, %i.ac
  store i64 %i.af, ptr %i.a, align 8, !tbaa !315
  %i.ag = sub i64 %i.ae, %i.ab
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !317
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !318
  %i.aj = add i64 %i.ai, 32
  %i.ak = and i64 %i.aj, -64
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !318
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !319
  %i.an = add i64 %i.am, 32
  %i.ao = and i64 %i.an, -64
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !319
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @FT_Outline_Transform(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !137  ; 2 uses
  %i.g = sext i16 %i.f to i64
  %.idx = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.i = icmp sgt i16 %i.f, 0
  br i1 %i.i, label %FT_Vector_Transform.exit.lr.ph, label %.loopexit

FT_Vector_Transform.exit.lr.ph:                   ; preds = %bb.c
  %i.j = load i64, ptr %1, align 8, !tbaa !166
  %sext2.i.i = shl i64 %i.j, 32
  %i.k = ashr exact i64 %sext2.i.i, 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !168
  %sext2.i16.i = shl i64 %i.m, 32
  %i.n = ashr exact i64 %sext2.i16.i, 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !169
  %sext2.i18.i = shl i64 %i.p, 32
  %i.q = ashr exact i64 %sext2.i18.i, 32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !170
  %sext2.i20.i = shl i64 %i.s, 32
  %i.t = ashr exact i64 %sext2.i20.i, 32
  br label %FT_Vector_Transform.exit

FT_Vector_Transform.exit:                         ; preds = %FT_Vector_Transform.exit.lr.ph, %FT_Vector_Transform.exit
  %.015 = phi ptr [ %i.d, %FT_Vector_Transform.exit.lr.ph ], [ %i.az, %FT_Vector_Transform.exit ] ; 4 uses
  %i.u = load i64, ptr %.015, align 8, !tbaa !165
  %sext.i.i = shl i64 %i.u, 32
  %i.v = ashr exact i64 %sext.i.i, 32             ; 2 uses
  %i.w = mul nsw i64 %i.k, %i.v                   ; 2 uses
  %i.x = ashr i64 %i.w, 63
  %i.y = add nsw i64 %i.w, 32768
  %i.z = add nsw i64 %i.y, %i.x
  %i.aa = shl i64 %i.z, 16
  %i.ab = ashr i64 %i.aa, 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.015, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !167
  %sext.i15.i = shl i64 %i.ad, 32
  %i.ae = ashr exact i64 %sext.i15.i, 32          ; 2 uses
  %i.af = mul nsw i64 %i.n, %i.ae                 ; 2 uses
  %i.ag = ashr i64 %i.af, 63
  %i.ah = add nsw i64 %i.af, 32768
  %i.ai = add nsw i64 %i.ah, %i.ag
  %i.aj = shl i64 %i.ai, 16
  %i.ak = ashr i64 %i.aj, 32
  %i.al = add nsw i64 %i.ak, %i.ab
  %i.am = mul nsw i64 %i.q, %i.v                  ; 2 uses
  %i.an = ashr i64 %i.am, 63
  %i.ao = add nsw i64 %i.am, 32768
  %i.ap = add nsw i64 %i.ao, %i.an
  %i.aq = shl i64 %i.ap, 16
  %i.ar = ashr i64 %i.aq, 32
  %i.as = mul nsw i64 %i.t, %i.ae                 ; 2 uses
  %i.at = ashr i64 %i.as, 63
  %i.au = add nsw i64 %i.as, 32768
  %i.av = add nsw i64 %i.au, %i.at
  %i.aw = shl i64 %i.av, 16
  %i.ax = ashr i64 %i.aw, 32
  %i.ay = add nsw i64 %i.ax, %i.ar
  store i64 %i.al, ptr %.015, align 8, !tbaa !165
  store i64 %i.ay, ptr %i.ac, align 8, !tbaa !167
  %i.az = getelementptr inbounds nuw i8, ptr %.015, i64 16 ; 2 uses
  %i.ba = icmp ult ptr %i.az, %i.h
  br i1 %i.ba, label %FT_Vector_Transform.exit, label %.loopexit, !llvm.loop !320

.loopexit:                                        ; preds = %FT_Vector_Transform.exit, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @FT_Outline_Translate(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !137  ; 4 uses
  %3 = zext i16 %i.b to i32
  %i.c = icmp sgt i16 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162  ; 4 uses
  %i.f = zext nneg i16 %i.b to i64                ; 2 uses
  %min.iters.check = icmp ult i16 %i.b, 4
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.f, 32766                    ; 4 uses
  %i.g = trunc nuw nsw i64 %n.vec to i32
  %i.h = shl nuw nsw i64 %n.vec, 4
  %i.i = getelementptr i8, ptr %i.e, i64 %i.h
  %i.j = insertelement <2 x i64> poison, i64 %1, i64 0
  %i.k = insertelement <2 x i64> %i.j, i64 %2, i64 1 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.l ; 2 uses
  %i.m = getelementptr i8, ptr %i.e, i64 %i.l
  %next.gep16 = getelementptr i8, ptr %i.m, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %wide.load17 = load <2 x i64>, ptr %next.gep16, align 8
  %i.n = add <2 x i64> %wide.load, %i.k
  %i.o = add <2 x i64> %wide.load17, %i.k
  store <2 x i64> %i.n, ptr %next.gep, align 8
  store <2 x i64> %i.o, ptr %next.gep16, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !321

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  %.014.ph = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %i.q = insertelement <2 x i64> poison, i64 %1, i64 0
  %i.r = insertelement <2 x i64> %i.q, i64 %2, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader19, %.lr.ph
  %indvars.iv = phi i32 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader19 ]
  %.014 = phi ptr [ %i.u, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader19 ] ; 3 uses
  %i.s = load <2 x i64>, ptr %.014, align 8, !tbaa !39
  %i.t = add <2 x i64> %i.s, %i.r
  store <2 x i64> %i.t, ptr %.014, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !322

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @FT_Vector_Transform(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !165
  %i.d = load i64, ptr %1, align 8, !tbaa !166
  %sext.i = shl i64 %i.c, 32
  %i.e = ashr exact i64 %sext.i, 32               ; 2 uses
  %sext2.i = shl i64 %i.d, 32
  %i.f = ashr exact i64 %sext2.i, 32
  %i.g = mul nsw i64 %i.f, %i.e                   ; 2 uses
  %i.h = ashr i64 %i.g, 63
  %i.i = add nsw i64 %i.g, 32768
  %i.j = add nsw i64 %i.i, %i.h
  %i.k = shl i64 %i.j, 16
  %i.l = ashr i64 %i.k, 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !167
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !168
  %sext.i15 = shl i64 %i.n, 32
  %i.q = ashr exact i64 %sext.i15, 32             ; 2 uses
  %sext2.i16 = shl i64 %i.p, 32
  %i.r = ashr exact i64 %sext2.i16, 32
  %i.s = mul nsw i64 %i.r, %i.q                   ; 2 uses
  %i.t = ashr i64 %i.s, 63
  %i.u = add nsw i64 %i.s, 32768
  %i.v = add nsw i64 %i.u, %i.t
  %i.w = shl i64 %i.v, 16
  %i.x = ashr i64 %i.w, 32
  %i.y = add nsw i64 %i.x, %i.l
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !169
  %sext2.i18 = shl i64 %i.aa, 32
  %i.ab = ashr exact i64 %sext2.i18, 32
  %i.ac = mul nsw i64 %i.ab, %i.e                 ; 2 uses
  %i.ad = ashr i64 %i.ac, 63
  %i.ae = add nsw i64 %i.ac, 32768
  %i.af = add nsw i64 %i.ae, %i.ad
  %i.ag = shl i64 %i.af, 16
  %i.ah = ashr i64 %i.ag, 32
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !170
  %sext2.i20 = shl i64 %i.aj, 32
  %i.ak = ashr exact i64 %sext2.i20, 32
  %i.al = mul nsw i64 %i.ak, %i.q                 ; 2 uses
  %i.am = ashr i64 %i.al, 63
  %i.an = add nsw i64 %i.al, 32768
  %i.ao = add nsw i64 %i.an, %i.am
  %i.ap = shl i64 %i.ao, 16
  %i.aq = ashr i64 %i.ap, 32
  %i.ar = add nsw i64 %i.aq, %i.ah
  store i64 %i.y, ptr %0, align 8, !tbaa !165
  store i64 %i.ar, ptr %i.m, align 8, !tbaa !167
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @FT_Render_Glyph(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.g = tail call i32 @FT_Render_Glyph_Internal(ptr noundef %i.f, ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ 6, %bb.b ], [ 6, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @FT_Load_Char(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !323  ; 3 uses
  %.not10 = icmp eq ptr %i.c, null
  br i1 %.not10, label %bb.c, label %FT_Get_Char_Index.exit

FT_Get_Char_Index.exit:                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !328
  %i.h = tail call i32 %i.g(ptr noundef nonnull %i.c, i32 noundef %i.a) #30, !inline_history !330 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !7
  %i.k = trunc i64 %i.j to i32
  %.not12.i = icmp ult i32 %i.h, %i.k
  %spec.store.select.i = select i1 %.not12.i, i32 %i.h, i32 0
  br label %bb.c

bb.c:                                             ; preds = %FT_Get_Char_Index.exit, %bb.b
  %.0 = phi i32 [ %spec.store.select.i, %FT_Get_Char_Index.exit ], [ %i.a, %bb.b ]
  %i.l = tail call i32 @FT_Load_Glyph(ptr noundef nonnull %0, i32 noundef %.0, i32 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.08 = phi i32 [ %i.l, %bb.c ], [ 35, %bb.a ]
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define i32 @FT_Get_Char_Index(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !323  ; 3 uses
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !324
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !328
  %i.g = trunc i64 %1 to i32
  %i.h = tail call i32 %i.f(ptr noundef nonnull %i.b, i32 noundef %i.g) #30 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_2
begin_hunk_3_@FT_Outline_Done:bb.a

bb.h:                                             ; preds = %ft_mem_free.exit22
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66
  tail call void %i.p(ptr noundef nonnull %i.a, ptr noundef nonnull %i.n) #30, !inline_history !203
  br label %ft_mem_free.exit24

ft_mem_free.exit24:                               ; preds = %bb.h, %ft_mem_free.exit22, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.b, %bb.a, %ft_mem_free.exit24
  %.0 = phi i32 [ 0, %ft_mem_free.exit24 ], [ 20, %bb.b ], [ 33, %bb.a ], [ 6, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 21) i32 @FT_Outline_Copy(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !137  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !137
  %.not = icmp eq i16 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.g = load i16, ptr %0, align 8, !tbaa !138    ; 2 uses
  %i.h = load i16, ptr %1, align 8, !tbaa !138
  %.not30 = icmp eq i16 %i.g, %i.h
  br i1 %.not30, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq ptr %0, %1
  br i1 %i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not31 = icmp eq i16 %i.d, 0
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !162
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !162
  %i.n = sext i16 %i.d to i64
  %i.o = shl nsw i64 %i.n, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.m, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !215
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !215
  %i.t = load i16, ptr %i.c, align 2, !tbaa !137
  %i.u = sext i16 %i.t to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.s, i64 %i.u, i1 false)
  %.pre = load i16, ptr %0, align 8, !tbaa !138
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi i16 [ %.pre, %bb.f ], [ %i.g, %bb.e ] ; 2 uses
  %.not32 = icmp eq i16 %i.v, 0
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !139
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !139
  %i.aa = sext i16 %i.v to i64
  %i.ab = shl nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.x, ptr align 2 %i.z, i64 %i.ab, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !559
  %i.ae = and i32 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !559
  %i.ah = and i32 %i.ag, -2
  %i.ai = or disjoint i32 %i.ah, %i.ae
  store i32 %i.ai, ptr %i.ac, align 8, !tbaa !559
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.a, %bb.i
  %.0 = phi i32 [ 20, %bb.a ], [ 6, %bb.b ], [ 0, %bb.i ], [ 6, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @FT_Outline_Reverse(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load i16, ptr %0, align 8, !tbaa !138
  %i.b = icmp sgt i16 %i.a, 0
  br i1 %i.b, label %.lr.ph47, label %._crit_edge48

.lr.ph47:                                         ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph47, %._crit_edge44
  %.046 = phi i16 [ 0, %.lr.ph47 ], [ %i.aa, %._crit_edge44 ] ; 2 uses
  %.03645 = phi i64 [ -1, %.lr.ph47 ], [ %i.k, %._crit_edge44 ]
  %i.f = add nsw i64 %.03645, 2                   ; 3 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !139
  %i.h = zext nneg i16 %.046 to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !141
  %i.k = sext i16 %i.j to i64                     ; 4 uses
  %i.l = icmp slt i64 %i.f, %i.k
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge44

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !162  ; 2 uses
  %i.n = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.k
  %i.o = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03439 = phi ptr [ %i.q, %.lr.ph ], [ %i.n, %.lr.ph.preheader ] ; 3 uses
  %.03538 = phi ptr [ %i.p, %.lr.ph ], [ %i.o, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.03538, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03538, ptr noundef nonnull align 8 dereferenceable(16) %.03439, i64 16, i1 false), !tbaa.struct !313
  store <2 x i64> %.sroa.0.0.copyload, ptr %.03439, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.03538, i64 16 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.03439, i64 -16 ; 2 uses
  %i.r = icmp ult ptr %i.p, %i.q
  br i1 %i.r, label %.lr.ph, label %.lr.ph43.preheader, !llvm.loop !561

.lr.ph43.preheader:                               ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !215  ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %i.f
  br label %.lr.ph43

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %.lr.ph43
  %.03241 = phi ptr [ %i.y, %.lr.ph43 ], [ %i.t, %.lr.ph43.preheader ] ; 3 uses
  %.03340 = phi ptr [ %i.x, %.lr.ph43 ], [ %i.u, %.lr.ph43.preheader ] ; 3 uses
  %i.v = load i8, ptr %.03340, align 1, !tbaa !243
  %i.w = load i8, ptr %.03241, align 1, !tbaa !243
  store i8 %i.w, ptr %.03340, align 1, !tbaa !243
  store i8 %i.v, ptr %.03241, align 1, !tbaa !243
  %i.x = getelementptr inbounds nuw i8, ptr %.03340, i64 1 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.03241, i64 -1 ; 2 uses
  %i.z = icmp ult ptr %i.x, %i.y
  br i1 %i.z, label %.lr.ph43, label %._crit_edge44, !llvm.loop !562

._crit_edge44:                                    ; preds = %.lr.ph43, %bb.b
  %i.aa = add nuw nsw i16 %.046, 1                ; 2 uses
  %i.ab = load i16, ptr %0, align 8, !tbaa !138
  %i.ac = icmp slt i16 %i.aa, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge48, !llvm.loop !563

._crit_edge48:                                    ; preds = %._crit_edge44, %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !559
  %i.af = xor i32 %i.ae, 4
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !559
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge48
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @FT_Outline_Render(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not37 = icmp eq ptr %1, null
  br i1 %.not37, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not38 = icmp eq ptr %2, null
  br i1 %.not38, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !137  ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %FT_Outline_Get_CBox.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162  ; 5 uses
  %i.f = sext i16 %i.b to i64
  %.idx.i = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  %i.h = load i64, ptr %i.e, align 8, !tbaa !165  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !167  ; 4 uses
  %i.k = icmp sgt i16 %i.b, 1
  br i1 %i.k, label %.lr.ph.preheader.i, label %FT_Outline_Get_CBox.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %.04051.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.04057.i = phi ptr [ %.040.i, %.lr.ph.i ], [ %.04051.i, %.lr.ph.preheader.i ] ; 3 uses
  %.056.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %i.h, %.lr.ph.preheader.i ]
  %.03455.i = phi i64 [ %.135.i, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %.03754.i = phi i64 [ %.138.i, %.lr.ph.i ], [ %i.h, %.lr.ph.preheader.i ]
  %.pn53.i = phi ptr [ %.04057.i, %.lr.ph.i ], [ %i.e, %.lr.ph.preheader.i ]
  %.04152.i = phi i64 [ %.142.i, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %i.l = load i64, ptr %.04057.i, align 8, !tbaa !165 ; 2 uses
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %i.l, i64 %.056.i) ; 2 uses
  %.138.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 %.03754.i) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pn53.i, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !167  ; 2 uses
  %.135.i = tail call i64 @llvm.smin.i64(i64 %i.n, i64 %.03455.i) ; 2 uses
  %.142.i = tail call i64 @llvm.smax.i64(i64 %i.n, i64 %.04152.i) ; 2 uses
  %.040.i = getelementptr inbounds nuw i8, ptr %.04057.i, i64 16 ; 2 uses
  %i.o = icmp ult ptr %.040.i, %i.g
  br i1 %i.o, label %.lr.ph.i, label %FT_Outline_Get_CBox.exit, !llvm.loop !287

FT_Outline_Get_CBox.exit:                         ; preds = %.lr.ph.i, %bb.d, %bb.e
  %.243.i = phi i64 [ 0, %bb.d ], [ %i.j, %bb.e ], [ %.142.i, %.lr.ph.i ] ; 2 uses
  %.239.i = phi i64 [ 0, %bb.d ], [ %i.h, %bb.e ], [ %.138.i, %.lr.ph.i ] ; 2 uses
  %.236.i = phi i64 [ 0, %bb.d ], [ %i.j, %bb.e ], [ %.135.i, %.lr.ph.i ] ; 2 uses
  %.2.i = phi i64 [ 0, %bb.d ], [ %i.h, %bb.e ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.p = icmp slt i64 %.2.i, -16777216
  %i.q = icmp slt i64 %.236.i, -16777216
  %or.cond = select i1 %i.p, i1 true, i1 %i.q
  %i.r = icmp sgt i64 %.239.i, 16777216
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.r
  %i.s = icmp sgt i64 %.243.i, 16777216
  %or.cond8 = select i1 %or.cond5, i1 true, i1 %i.s
  br i1 %or.cond8, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %FT_Outline_Get_CBox.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !148  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !154
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.x, align 8, !tbaa !564
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !567
  %i.aa = and i32 %i.z, 6
  %or.cond44 = icmp eq i32 %i.aa, 2
  br i1 %or.cond44, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = ashr i64 %.2.i, 6
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !568
  %i.ad = ashr i64 %.236.i, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !569
  %i.af = add nsw i64 %.239.i, 63
  %i.ag = ashr i64 %i.af, 6
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !570
  %i.ai = add nsw i64 %.243.i, 63
  %i.aj = ashr i64 %i.ai, 6
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !571
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not4151 = icmp eq ptr %i.u, null
  br i1 %.not4151, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !521
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !505
  %i.ap = tail call i32 %i.am(ptr noundef %i.ao, ptr noundef nonnull %2) #30 ; 2 uses
  %.not4277 = icmp eq i32 %i.ap, 0
  br i1 %.not4277, label %.loopexit, label %.lr.ph79

.lr.ph.loopexit:                                  ; preds = %.lr.ph.i45
  %i.aq = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !521
  %i.as = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !505
  %i.au = tail call i32 %i.ar(ptr noundef %i.at, ptr noundef nonnull %2) #30 ; 2 uses
  %.not42 = icmp eq i32 %i.au, 0
  br i1 %.not42, label %.loopexit, label %.lr.ph79, !llvm.loop !572

.lr.ph79:                                         ; preds = %.lr.ph.preheader, %.lr.ph.loopexit
  %i.av = phi i32 [ %i.au, %.lr.ph.loopexit ], [ %i.ap, %.lr.ph.preheader ] ; 4 uses
  %.0505278 = phi ptr [ %.232.i, %.lr.ph.loopexit ], [ %i.w, %.lr.ph.preheader ] ; 2 uses
  %i.aw = and i32 %i.av, 255
  %.not43 = icmp eq i32 %i.aw, 19
  br i1 %.not43, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph79
  %.not25.i = icmp eq ptr %.0505278, null
  %i.ax = getelementptr inbounds nuw i8, ptr %.0505278, i64 8
  %spec.select = select i1 %.not25.i, ptr %i.v, ptr %i.ax
  %.016.i = load ptr, ptr %spec.select, align 8, !tbaa !369 ; 2 uses
  %.not2631.i = icmp eq ptr %.016.i, null
  br i1 %.not2631.i, label %.loopexit, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %bb.i, %bb.j
  %.232.i = phi ptr [ %i.be, %bb.j ], [ %.016.i, %bb.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.232.i, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !155 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !149
  %i.bc = icmp eq i32 %i.bb, 1869968492
  br i1 %i.bc, label %.lr.ph.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i45
  %i.bd = getelementptr inbounds nuw i8, ptr %.232.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !157 ; 2 uses
  %.not26.i = icmp eq ptr %i.be, null
  br i1 %.not26.i, label %.loopexit, label %.lr.ph.i45

.loopexit:                                        ; preds = %.lr.ph79, %.lr.ph.loopexit, %bb.i, %bb.j, %.lr.ph.preheader, %bb.h, %FT_Outline_Get_CBox.exit, %bb.c, %bb.b, %bb.a
  %.031 = phi i32 [ 6, %bb.c ], [ 20, %FT_Outline_Get_CBox.exit ], [ 20, %bb.b ], [ 33, %bb.a ], [ 19, %bb.h ], [ %i.av, %bb.j ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.loopexit ], [ %i.av, %.lr.ph79 ], [ %i.av, %bb.i ]
  ret i32 %.031
}

; Function Attrs: nounwind uwtable
define i32 @FT_Outline_Get_Bitmap(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FT_Raster_Params_, align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %3, align 8, !tbaa !573
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !567
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.c = load i8, ptr %i.b, align 2, !tbaa !290
  switch i8 %i.c, label %bb.d [
    i8 2, label %bb.c
    i8 5, label %bb.c
    i8 6, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  store i32 1, ptr %i.a, align 8, !tbaa !567
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = call i32 @FT_Outline_Render(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ %i.d, %bb.d ], [ 6, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 21) i32 @FT_Outline_Embolden(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call i32 @FT_Outline_EmboldenXY(ptr noundef %0, i64 noundef %1, i64 noundef %1)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 21) i32 @FT_Outline_EmboldenXY(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = insertelement <2 x i64> poison, i64 %1, i64 0
  %i.b = insertelement <2 x i64> %i.a, i64 %2, i64 1
  %i.c = sdiv <2 x i64> %i.b, splat (i64 2)       ; 3 uses
  %.off = add i64 %1, 1
  %i.d = icmp ult i64 %.off, 3
  %.off117 = add i64 %2, 1
  %i.e = icmp ult i64 %.off117, 3
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @FT_Outline_Get_Orientation(ptr noundef nonnull %0) ; 2 uses
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load i16, ptr %0, align 8, !tbaa !138
  %.not123 = icmp eq i16 %i.h, 0
  %. = select i1 %.not123, i32 0, i32 6
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_3
begin_hunk_4_@FT_Raccess_Get_HeaderInfo:bb.a
bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.i.i = phi i64 [ %i.m, %bb.f ], [ %spec.select.i.i, %bb.g ] ; 2 uses
  %i.q = add i64 %.1.i.i, %2
  store i64 %i.q, ptr %i.j, align 8, !tbaa !281
  %i.r = icmp ult i64 %.1.i.i, 16
  br i1 %i.r, label %FT_Stream_Seek.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load i8, ptr %i.b, align 16, !tbaa !243  ; 2 uses
  %i.t = icmp slt i8 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.v = load i8, ptr %i.u, align 4               ; 2 uses
  %i.w = icmp slt i8 %i.v, 0
  %or.cond = select i1 %i.t, i1 true, i1 %i.w
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load i8, ptr %i.x, align 8               ; 2 uses
  %i.z = icmp slt i8 %i.y, 0
  %or.cond7 = select i1 %or.cond, i1 true, i1 %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ab = load i8, ptr %i.aa, align 4             ; 2 uses
  %i.ac = icmp slt i8 %i.ab, 0
  %or.cond11 = select i1 %or.cond7, i1 true, i1 %i.ac
  br i1 %or.cond11, label %FT_Stream_Seek.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = zext nneg i8 %i.s to i64
  %i.ae = shl nuw nsw i64 %i.ad, 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !243
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 16
  %i.aj = or disjoint i64 %i.ai, %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !243
  %i.am = zext i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 8
  %i.ao = or disjoint i64 %i.aj, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !243
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.ao, %i.ar            ; 6 uses
  store i64 %i.as, ptr %4, align 8, !tbaa !39
  %i.at = zext nneg i8 %i.v to i32
  %i.au = shl nuw nsw i32 %i.at, 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !243
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 16
  %i.az = or disjoint i32 %i.ay, %i.au
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !243
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 8
  %i.be = or disjoint i32 %i.az, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !243
  %i.bh = zext i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.be, %i.bh            ; 2 uses
  %i.bj = zext nneg i32 %i.bi to i64              ; 5 uses
  %i.bk = zext nneg i8 %i.y to i64
  %i.bl = shl nuw nsw i64 %i.bk, 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !243
  %i.bo = zext i8 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 16
  %i.bq = or disjoint i64 %i.bp, %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !243
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 8
  %i.bv = or disjoint i64 %i.bq, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !243
  %i.by = zext i8 %i.bx to i64
  %i.bz = or disjoint i64 %i.bv, %i.by            ; 3 uses
  %i.ca = zext nneg i8 %i.ab to i64
  %i.cb = shl nuw nsw i64 %i.ca, 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !243
  %i.ce = zext i8 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 16
  %i.cg = or disjoint i64 %i.cf, %i.cb
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !243
  %i.cj = zext i8 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 8
  %i.cl = or disjoint i64 %i.cg, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 15 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !243 ; 2 uses
  %i.co = zext i8 %i.cn to i64
  %i.cp = or disjoint i64 %i.cl, %i.co            ; 3 uses
  %.not87 = icmp eq i32 %i.bi, 0
  br i1 %.not87, label %FT_Stream_Seek.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cq = icmp samesign ult i64 %i.as, %i.bj
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = sub nsw i64 %i.bj, %i.bz
  %i.cs = icmp sgt i64 %i.as, %i.cr
  br i1 %i.cs, label %FT_Stream_Seek.exit.thread, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ct = sub nsw i64 %i.as, %i.cp
  %i.cu = icmp slt i64 %i.ct, %i.bj
  br i1 %i.cu, label %FT_Stream_Seek.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cv = add nuw nsw i64 %i.bz, %i.as
  %i.cw = xor i64 %i.cv, 9223372036854775807
  %i.cx = icmp slt i64 %i.cw, %2
  br i1 %i.cx, label %FT_Stream_Seek.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cy = add nuw nsw i64 %i.cp, %i.bj
  %i.cz = xor i64 %i.cy, 9223372036854775807
  %i.da = icmp slt i64 %i.cz, %2
  br i1 %i.da, label %FT_Stream_Seek.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.db = add nsw i64 %i.as, %2                   ; 2 uses
  %i.dc = add nsw i64 %i.bz, %i.db
  %i.dd = load i64, ptr %i.k, align 8, !tbaa !274 ; 2 uses
  %i.de = icmp ugt i64 %i.dc, %i.dd
  br i1 %i.de, label %FT_Stream_Seek.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.df = add nsw i64 %2, %i.bj                   ; 5 uses
  %i.dg = add nsw i64 %i.cp, %i.df
  %i.dh = icmp ugt i64 %i.dg, %i.dd
  br i1 %i.dh, label %FT_Stream_Seek.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 %i.db, ptr %4, align 8, !tbaa !39
  %i.di = load ptr, ptr %i.d, align 8, !tbaa !337 ; 2 uses
  %.not.i94 = icmp eq ptr %i.di, null
  br i1 %.not.i94, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dj = call i64 %i.di(ptr noundef nonnull %1, i64 noundef %i.df, ptr noundef null, i64 noundef 0) #30, !inline_history !338
  %.not10.i95 = icmp eq i64 %i.dj, 0
  br i1 %.not10.i95, label %._crit_edge117, label %FT_Stream_Seek.exit.thread

._crit_edge117:                                   ; preds = %bb.s
  %.pre118 = load i8, ptr %i.cm, align 1, !tbaa !243
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.dk = load i64, ptr %i.k, align 8, !tbaa !274
  %.not17.i97 = icmp ugt i64 %i.df, %i.dk
  br i1 %.not17.i97, label %FT_Stream_Seek.exit.thread, label %bb.u

bb.u:                                             ; preds = %._crit_edge117, %bb.t
  %i.dl = phi i8 [ %.pre118, %._crit_edge117 ], [ %i.cn, %bb.t ]
  store i64 %i.df, ptr %i.j, align 8, !tbaa !281
  %i.dm = add i8 %i.dl, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !243
  %i.do = call i32 @FT_Stream_Read(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i64 noundef 16) ; 2 uses
  %.not89 = icmp eq i32 %i.do, 0
  br i1 %.not89, label %.preheader.preheader, label %FT_Stream_Seek.exit.thread

.preheader.preheader:                             ; preds = %bb.u
  %i.dp = load <16 x i8>, ptr %i.c, align 16, !tbaa !243
  %.fr = freeze <16 x i8> %i.dp                   ; 2 uses
  %i.dq = icmp ne <16 x i8> %.fr, zeroinitializer
  %i.dr = bitcast <16 x i1> %i.dq to i16
  %i.ds = icmp eq i16 %i.dr, 0
  %i.dt = load <16 x i8>, ptr %i.b, align 16, !tbaa !243
  %.fr158 = freeze <16 x i8> %i.dt
  %i.du = icmp ne <16 x i8> %.fr, %.fr158
  %i.dv = bitcast <16 x i1> %i.du to i16
  %i.dw = icmp eq i16 %i.dv, 0
  %or.cond13 = or i1 %i.ds, %i.dw
  br i1 %or.cond13, label %bb.v, label %FT_Stream_Seek.exit.thread

bb.v:                                             ; preds = %.preheader.preheader
  %i.dx = load i64, ptr %i.j, align 8, !tbaa !281
  %i.dy = add i64 %i.dx, 8                        ; 3 uses
  %i.dz = load ptr, ptr %i.d, align 8, !tbaa !337 ; 2 uses
  %.not.i.i99 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i99, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ea = call i64 %i.dz(ptr noundef nonnull %1, i64 noundef %i.dy, ptr noundef null, i64 noundef 0) #30, !inline_history !582
  %.not10.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not10.i.i, label %bb.y, label %FT_Stream_Skip.exit

bb.x:                                             ; preds = %bb.v
  %i.eb = load i64, ptr %i.k, align 8, !tbaa !274
  %.not17.i.i = icmp ugt i64 %i.dy, %i.eb
  br i1 %.not17.i.i, label %FT_Stream_Skip.exit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store i64 %i.dy, ptr %i.j, align 8, !tbaa !281
  br label %FT_Stream_Skip.exit

FT_Stream_Skip.exit:                              ; preds = %bb.w, %bb.x, %bb.y
  %i.ec = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %1, ptr noundef nonnull %i.a) ; 2 uses
  %5 = zext nneg i16 %i.ec to i64
  %i.ed = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not90 = icmp eq i32 %i.ed, 0
  br i1 %.not90, label %bb.z, label %FT_Stream_Seek.exit.thread

bb.z:                                             ; preds = %FT_Stream_Skip.exit
  %i.ee = icmp slt i16 %i.ec, 0
  br i1 %i.ee, label %FT_Stream_Seek.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ef = add nsw i64 %i.df, %5                   ; 4 uses
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !337 ; 2 uses
  %.not.i100 = icmp eq ptr %i.eg, null
  br i1 %.not.i100, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eh = call i64 %i.eg(ptr noundef nonnull %1, i64 noundef %i.ef, ptr noundef null, i64 noundef 0) #30, !inline_history !338
  %.not10.i101 = icmp eq i64 %i.eh, 0
  br i1 %.not10.i101, label %bb.ad, label %FT_Stream_Seek.exit.thread

bb.ac:                                            ; preds = %bb.aa
  %i.ei = load i64, ptr %i.k, align 8, !tbaa !274
  %.not17.i103 = icmp ugt i64 %i.ef, %i.ei
  br i1 %.not17.i103, label %FT_Stream_Seek.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  store i64 %i.ef, ptr %i.j, align 8, !tbaa !281
  store i64 %i.ef, ptr %3, align 8, !tbaa !39
  br label %FT_Stream_Seek.exit.thread

FT_Stream_Seek.exit.thread:                       ; preds = %bb.ac, %bb.ab, %bb.t, %bb.s, %bb.h, %bb.d, %bb.c, %bb.b, %bb.z, %FT_Stream_Skip.exit, %.preheader.preheader, %bb.u, %bb.n, %bb.o, %bb.p, %bb.q, %bb.m, %bb.l, %bb.j, %bb.i, %bb.ad
  %.0 = phi i32 [ 2, %bb.i ], [ 2, %bb.n ], [ 85, %bb.c ], [ 2, %bb.j ], [ 2, %bb.m ], [ 85, %bb.t ], [ 85, %bb.h ], [ 2, %.preheader.preheader ], [ %i.ed, %FT_Stream_Skip.exit ], [ 2, %bb.z ], [ 0, %bb.ad ], [ %i.do, %bb.u ], [ 2, %bb.l ], [ 2, %bb.q ], [ 2, %bb.p ], [ 2, %bb.o ], [ 85, %bb.b ], [ 85, %bb.d ], [ 85, %bb.s ], [ 85, %bb.ab ], [ 85, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 86) i32 @FT_Stream_Seek(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !337  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 %i.b(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null, i64 noundef 0) #30
  %.not10 = icmp eq i64 %i.c, 0
  br i1 %.not10, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !274
  %.not17 = icmp ugt i64 %1, %i.e
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.f, align 8, !tbaa !281
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.015 = phi i32 [ 85, %bb.b ], [ 0, %bb.d ], [ 85, %bb.c ]
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 86) i32 @FT_Stream_Read(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !281  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !274  ; 2 uses
  %.not.i = icmp ult i64 %i.b, %i.d
  br i1 %.not.i, label %bb.b, label %FT_Stream_ReadAt.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !337  ; 2 uses
  %.not31.i = icmp eq ptr %i.f, null
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 %i.f(ptr noundef nonnull %0, i64 noundef %i.b, ptr noundef %1, i64 noundef %2) #30, !inline_history !583
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = sub i64 %i.d, %i.b
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %2) ; 3 uses
  %.not32.i = icmp eq i64 %2, 0
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8, !tbaa !272
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.j, i64 %spec.select.i, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.1.i = phi i64 [ %i.g, %bb.c ], [ %spec.select.i, %bb.e ], [ %spec.select.i, %bb.d ] ; 2 uses
  %i.k = add i64 %.1.i, %i.b
  store i64 %i.k, ptr %i.a, align 8, !tbaa !281
  %i.l = icmp ult i64 %.1.i, %2
  %spec.select33.i = select i1 %i.l, i32 85, i32 0
  br label %FT_Stream_ReadAt.exit

FT_Stream_ReadAt.exit:                            ; preds = %bb.a, %bb.f
  %.025.i = phi i32 [ %spec.select33.i, %bb.f ], [ 85, %bb.a ]
  ret i32 %.025.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 86) i32 @FT_Stream_Skip(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %FT_Stream_Seek.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !281
  %i.d = add i64 %i.c, %1                         ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !337  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 %i.f(ptr noundef nonnull %0, i64 noundef %i.d, ptr noundef null, i64 noundef 0) #30, !inline_history !338
  %.not10.i = icmp eq i64 %i.g, 0
  br i1 %.not10.i, label %bb.e, label %FT_Stream_Seek.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !274
  %.not17.i = icmp ugt i64 %i.d, %i.i
  br i1 %.not17.i, label %FT_Stream_Seek.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i64 %i.d, ptr %i.b, align 8, !tbaa !281
  br label %FT_Stream_Seek.exit

FT_Stream_Seek.exit:                              ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ 85, %bb.a ], [ 85, %bb.c ], [ 0, %bb.e ], [ 85, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i16 @FT_Stream_ReadUShort(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !281  ; 5 uses
  %i.d = add i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !274
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !337  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call i64 %i.i(ptr noundef nonnull %0, i64 noundef %i.c, ptr noundef nonnull %i.a, i64 noundef 2) #30
  %.not20 = icmp eq i64 %i.j, 2
  br i1 %.not20, label %..thread_crit_edge, label %bb.f

..thread_crit_edge:                               ; preds = %bb.c
  %.pre.pre = load i64, ptr %i.b, align 8, !tbaa !281
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !272    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.c
  %.not21 = icmp eq ptr %i.k, null
  br i1 %.not21, label %bb.e, label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.d
  %.pre = phi i64 [ %i.c, %bb.d ], [ %.pre.pre, %..thread_crit_edge ]
  %.01724 = phi ptr [ %i.l, %bb.d ], [ %i.a, %..thread_crit_edge ] ; 2 uses
  %i.m = load i8, ptr %.01724, align 1, !tbaa !243
  %i.n = zext i8 %i.m to i16
  %i.o = shl nuw i16 %i.n, 8
  %i.p = getelementptr inbounds nuw i8, ptr %.01724, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !243
  %i.r = zext i8 %i.q to i16
  %i.s = or disjoint i16 %i.o, %i.r
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %i.t = phi i64 [ %.pre, %.thread ], [ %i.c, %bb.d ]
  %.0 = phi i16 [ %i.s, %.thread ], [ 0, %bb.d ]
  %i.u = add i64 %i.t, 2
  store i64 %i.u, ptr %i.b, align 8, !tbaa !281
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.a, %bb.e
end_hunk_4
begin_hunk_5_@memory_stream_close
define internal void @memory_stream_close(ptr noundef initializes((8, 16), (48, 56)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !243  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !272    ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %ft_mem_free.exit9, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66
  tail call void %i.e(ptr noundef %i.b, ptr noundef nonnull %i.c) #30, !inline_history !203
  br label %ft_mem_free.exit9

ft_mem_free.exit9:                                ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !279
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  tail call void %i.h(ptr noundef %i.b, ptr noundef nonnull %0) #30, !inline_history !203
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @IsMacResource(ptr nofree noundef readonly captures(address) %0, ptr noundef %1, i64 noundef %2, i64 noundef range(i64 -2147483647, 2147483648) %3, ptr nofree noundef captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !266    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.i = call i32 @FT_Raccess_Get_HeaderInfo(ptr nonnull poison, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %ft_mem_free.exit40.thread

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.k = load i64, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %i.l = call i32 @FT_Raccess_Get_DataOffsets(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.j, i64 noundef %i.k, i64 noundef 1347375956, i8 noundef zeroext 1, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  %.not32 = icmp eq i32 %i.l, 0
  br i1 %.not32, label %bb.c, label %bb.ag

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !592  ; 4 uses
  %i.n = load i64, ptr %i.g, align 8, !tbaa !39   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.o = load ptr, ptr %0, align 8, !tbaa !266    ; 4 uses
  %i.p = add nsw i64 %3, 1
  %.not.i = icmp ult i64 %i.p, 2
  br i1 %.not.i, label %.preheader, label %Mac_Read_POST_Resource.exit

.preheader:                                       ; preds = %bb.c
  %i.q = icmp sgt i64 %i.n, 0
  br i1 %i.q, label %.lr.ph, label %Mac_Read_POST_Resource.exit

.lr.ph:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.0116.i111 = phi i64 [ 0, %.lr.ph ], [ %i.aq, %bb.m ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.v = load i64, ptr %i.u, align 8, !tbaa !39   ; 8 uses
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !337  ; 2 uses
  %.not.i49 = icmp eq ptr %i.w, null
  br i1 %.not.i49, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = call i64 %i.w(ptr noundef nonnull %1, i64 noundef %i.v, ptr noundef null, i64 noundef 0) #30, !inline_history !643
  %.not10.i50 = icmp eq i64 %i.x, 0
  br i1 %.not10.i50, label %._crit_edge134, label %Mac_Read_POST_Resource.exit.thread

._crit_edge134:                                   ; preds = %bb.e
  %.pre = load i64, ptr %i.s, align 8, !tbaa !274
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.y = load i64, ptr %i.s, align 8, !tbaa !274  ; 2 uses
  %.not17.i52 = icmp ugt i64 %i.v, %i.y
  br i1 %.not17.i52, label %Mac_Read_POST_Resource.exit.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge134, %bb.f
  %i.z = phi i64 [ %.pre, %._crit_edge134 ], [ %i.y, %bb.f ]
  store i64 %i.v, ptr %i.t, align 8, !tbaa !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.aa = add i64 %i.v, 3
  %i.ab = icmp ult i64 %i.aa, %i.z
  br i1 %i.ab, label %bb.h, label %FT_Stream_ReadULong.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !337 ; 2 uses
  %.not.i47 = icmp eq ptr %i.ac, null
  br i1 %.not.i47, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = call i64 %i.ac(ptr noundef nonnull %1, i64 noundef %i.v, ptr noundef nonnull %i.a, i64 noundef 4) #30, !inline_history !644
  %.not22.i = icmp eq i64 %i.ad, 4
  br i1 %.not22.i, label %..thread_crit_edge.i, label %FT_Stream_ReadULong.exit.thread

..thread_crit_edge.i:                             ; preds = %bb.i
  %.pre.pre.i = load i64, ptr %i.t, align 8, !tbaa !281
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %1, align 8, !tbaa !272   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.v
  %.not23.i = icmp eq ptr %i.ae, null
  br i1 %.not23.i, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.ag = add i64 %i.v, 4
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.l

FT_Stream_ReadULong.exit.thread:                  ; preds = %bb.g, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %Mac_Read_POST_Resource.exit.thread

bb.k:                                             ; preds = %..thread_crit_edge.i, %bb.j
  %.pre.i = phi i64 [ %i.v, %bb.j ], [ %.pre.pre.i, %..thread_crit_edge.i ]
  %.01926.i = phi ptr [ %i.af, %bb.j ], [ %i.a, %..thread_crit_edge.i ] ; 2 uses
  %i.ah = load i8, ptr %.01926.i, align 1, !tbaa !243
  %i.ai = load i32, ptr %.01926.i, align 1, !tbaa !243
  %i.aj = call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = zext i32 %i.aj to i64
  %i.al = add i64 %.pre.i, 4
  store i64 %i.al, ptr %i.t, align 8, !tbaa !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not93 = icmp eq i8 %i.ah, 0
  br i1 %.not93, label %bb.l, label %Mac_Read_POST_Resource.exit.thread

bb.l:                                             ; preds = %.thread, %bb.k
  %i.am = phi i64 [ 0, %.thread ], [ %i.ak, %bb.k ] ; 2 uses
  %i.an = sub nuw nsw i64 16777215, %i.am
  %i.ao = add nuw nsw i64 %.0116.i111, 6          ; 2 uses
  %i.ap = icmp ult i64 %i.an, %i.ao
  br i1 %i.ap, label %Mac_Read_POST_Resource.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nuw nsw i64 %i.ao, %i.am            ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %exitcond.not, label %ft_mem_qalloc.exit, label %bb.d, !llvm.loop !645

ft_mem_qalloc.exit:                               ; preds = %bb.m
  %i.ar = add nuw nsw i64 %i.aq, 2                ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !187
  %i.au = call ptr %i.at(ptr noundef %i.o, i64 noundef %i.ar) #30, !inline_history !646 ; 14 uses
  %.not.i45.not = icmp eq ptr %i.au, null
  br i1 %.not.i45.not, label %Mac_Read_POST_Resource.exit.thread, label %.lr.ph119

.lr.ph119:                                        ; preds = %ft_mem_qalloc.exit
  store i8 -128, ptr %i.au, align 1, !tbaa !243
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 1, ptr %i.av, align 1, !tbaa !243
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store i32 0, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph119, %bb.ac
  %indvars.iv130 = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next131, %bb.ac ] ; 2 uses
  %.0112.i117 = phi i64 [ 2, %.lr.ph119 ], [ %.2.i, %bb.ac ] ; 5 uses
  %.0113.i116 = phi i64 [ 6, %.lr.ph119 ], [ %.2115.i, %bb.ac ] ; 6 uses
  %.0117.i115 = phi i64 [ 0, %.lr.ph119 ], [ %.2119.i, %bb.ac ] ; 7 uses
  %.0120.i114 = phi i32 [ 1, %.lr.ph119 ], [ %.2122.i, %bb.ac ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv130
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !39 ; 3 uses
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !337 ; 2 uses
  %.not.i43 = icmp eq ptr %i.bc, null
  br i1 %.not.i43, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = call i64 %i.bc(ptr noundef nonnull %1, i64 noundef %i.bb, ptr noundef null, i64 noundef 0) #30, !inline_history !643
  %.not10.i = icmp eq i64 %i.bd, 0
  br i1 %.not10.i, label %bb.q, label %ft_mem_free.exit42

bb.p:                                             ; preds = %bb.n
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !274
  %.not17.i = icmp ugt i64 %i.bb, %i.be
  br i1 %.not17.i, label %ft_mem_free.exit42, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !281
  %i.bf = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %1, ptr noundef nonnull %i.c), !inline_history !647 ; 3 uses
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = load i32, ptr %i.c, align 4, !tbaa !3
  %.not138.i = icmp ne i32 %i.bh, 0
  %i.bi = icmp slt i32 %i.bf, 0
  %or.cond = select i1 %.not138.i, i1 true, i1 %i.bi
  br i1 %or.cond, label %ft_mem_free.exit42, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %1, ptr noundef nonnull %i.c), !inline_history !647
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !3
  %.not139.i = icmp eq i32 %i.bk, 0
  br i1 %.not139.i, label %bb.s, label %ft_mem_free.exit42

bb.s:                                             ; preds = %bb.r
  store i32 10, ptr %i.c, align 4, !tbaa !3
  %i.bl = lshr i16 %i.bj, 8                       ; 4 uses
  %i.bm = zext nneg i16 %i.bl to i32              ; 2 uses
  %i.bn = icmp eq i16 %i.bl, 0
  br i1 %i.bn, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = icmp samesign ugt i32 %i.bf, 2
  %i.bp = add nsw i64 %i.bg, -2
  %.0111.i = select i1 %i.bo, i64 %i.bp, i64 0    ; 4 uses
  %i.bq = icmp eq i32 %.0120.i114, %i.bm
  br i1 %i.bq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.br = add i64 %.0111.i, %.0117.i115
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.bs = add i64 %.0112.i117, 3                  ; 2 uses
  %i.bt = icmp ugt i64 %i.bs, %i.ar
  br i1 %i.bt, label %ft_mem_free.exit42, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = trunc i64 %.0117.i115 to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.au, i64 %.0112.i117 ; 3 uses
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !243
  %i.bw = lshr i64 %.0117.i115, 8
  %i.bx = trunc i64 %i.bw to i8
  %i.by = getelementptr i8, ptr %i.bv, i64 1
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !243
  %i.bz = lshr i64 %.0117.i115, 16
  %i.ca = trunc i64 %i.bz to i8
  %i.cb = getelementptr i8, ptr %i.bv, i64 2
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !243
  %i.cc = lshr i64 %.0117.i115, 24
  %i.cd = trunc i64 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bs
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !243
  %i.cf = icmp eq i16 %i.bl, 5
  br i1 %i.cf, label %._crit_edge120, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = add i64 %.0113.i116, 6                  ; 2 uses
  %i.ch = icmp ugt i64 %i.cg, %i.ar
  br i1 %i.ch, label %ft_mem_free.exit42, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %i.au, i64 %.0113.i116 ; 2 uses
  store i8 -128, ptr %i.ci, align 1, !tbaa !243
  %i.cj = trunc nuw i16 %i.bl to i8
  %i.ck = add i64 %.0113.i116, 2                  ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ci, i64 1
  store i8 %i.cj, ptr %i.cl, align 1, !tbaa !243
  %i.cm = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ck
  store <4 x i8> zeroinitializer, ptr %i.cm, align 1, !tbaa !243
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.u
  %.1121.i = phi i32 [ %.0120.i114, %bb.u ], [ %i.bm, %bb.y ]
  %.1118.i = phi i64 [ %i.br, %bb.u ], [ %.0111.i, %bb.y ]
  %.1114.i = phi i64 [ %.0113.i116, %bb.u ], [ %i.cg, %bb.y ] ; 3 uses
  %.1.i = phi i64 [ %.0112.i117, %bb.u ], [ %i.ck, %bb.y ]
  %i.cn = icmp ugt i64 %.1114.i, %i.aq
  br i1 %i.cn, label %ft_mem_free.exit42, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = add nsw i64 %.1114.i, %.0111.i          ; 2 uses
  %i.cp = icmp ugt i64 %i.co, %i.aq
  br i1 %i.cp, label %ft_mem_free.exit42, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cq = getelementptr inbounds nuw i8, ptr %i.au, i64 %.1114.i
  %i.cr = call i32 @FT_Stream_Read(ptr noundef nonnull %1, ptr noundef nonnull %i.cq, i64 noundef %.0111.i), !inline_history !647 ; 2 uses
  store i32 %i.cr, ptr %i.c, align 4, !tbaa !3
  %.not140.i = icmp eq i32 %i.cr, 0
  br i1 %.not140.i, label %bb.ac, label %ft_mem_free.exit42

bb.ac:                                            ; preds = %bb.ab, %bb.s
  %.2122.i = phi i32 [ %.0120.i114, %bb.s ], [ %.1121.i, %bb.ab ]
  %.2119.i = phi i64 [ %.0117.i115, %bb.s ], [ %.1118.i, %bb.ab ] ; 2 uses
  %.2115.i = phi i64 [ %.0113.i116, %bb.s ], [ %i.co, %bb.ab ] ; 2 uses
  %.2.i = phi i64 [ %.0112.i117, %bb.s ], [ %.1.i, %bb.ab ] ; 2 uses
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next131, %i.n
  br i1 %exitcond133.not, label %._crit_edge120, label %bb.n, !llvm.loop !648

._crit_edge120:                                   ; preds = %bb.ac, %bb.w
  %.0117.i.lcssa = phi i64 [ %.2119.i, %bb.ac ], [ %.0117.i115, %bb.w ] ; 4 uses
  %.0113.i.lcssa = phi i64 [ %.2115.i, %bb.ac ], [ %.0113.i116, %bb.w ] ; 2 uses
  %.0112.i.lcssa = phi i64 [ %.2.i, %bb.ac ], [ %.0112.i117, %bb.w ] ; 2 uses
  %i.cs = add i64 %.0113.i.lcssa, 2               ; 2 uses
  %i.ct = icmp ugt i64 %i.cs, %i.ar
  br i1 %i.ct, label %ft_mem_free.exit42, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge120
  %i.cu = getelementptr inbounds nuw i8, ptr %i.au, i64 %.0113.i.lcssa ; 2 uses
  store i8 -128, ptr %i.cu, align 1, !tbaa !243
  %i.cv = getelementptr i8, ptr %i.cu, i64 1
  store i8 3, ptr %i.cv, align 1, !tbaa !243
  %i.cw = add i64 %.0112.i.lcssa, 3               ; 2 uses
  %i.cx = icmp ugt i64 %i.cw, %i.ar
  br i1 %i.cx, label %ft_mem_free.exit42, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cy = trunc i64 %.0117.i.lcssa to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.au, i64 %.0112.i.lcssa ; 3 uses
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !243
  %i.da = lshr i64 %.0117.i.lcssa, 8
  %i.db = trunc i64 %i.da to i8
  %i.dc = getelementptr i8, ptr %i.cz, i64 1
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !243
  %i.dd = lshr i64 %.0117.i.lcssa, 16
  %i.de = trunc i64 %i.dd to i8
  %i.df = getelementptr i8, ptr %i.cz, i64 2
  store i8 %i.de, ptr %i.df, align 1, !tbaa !243
  %i.dg = lshr i64 %.0117.i.lcssa, 24
  %i.dh = trunc i64 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.cw
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !243
  %i.dj = call fastcc i32 @open_face_from_buffer(ptr noundef nonnull %0, ptr noundef nonnull %i.au, i64 noundef %i.cs, i64 noundef 0, ptr noundef nonnull @.str.18, ptr noundef %4), !inline_history !647
  br label %Mac_Read_POST_Resource.exit

ft_mem_free.exit42:                               ; preds = %bb.aa, %bb.z, %bb.x, %bb.v, %bb.ab, %bb.r, %bb.q, %bb.p, %bb.o, %._crit_edge120, %bb.ad
  %i.dk = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !66
  call void %i.dl(ptr noundef %i.o, ptr noundef nonnull %i.au) #30, !inline_history !649
  br label %Mac_Read_POST_Resource.exit

Mac_Read_POST_Resource.exit.thread:               ; preds = %bb.k, %bb.l, %bb.f, %bb.e, %ft_mem_qalloc.exit, %FT_Stream_ReadULong.exit.thread
  %.0.i.ph = phi i32 [ 85, %FT_Stream_ReadULong.exit.thread ], [ 64, %ft_mem_qalloc.exit ], [ 85, %bb.f ], [ 85, %bb.e ], [ 9, %bb.l ], [ 9, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.af

Mac_Read_POST_Resource.exit:                      ; preds = %.preheader, %ft_mem_free.exit42, %bb.c, %bb.ae
  %.0.i = phi i32 [ %i.dj, %bb.ae ], [ 1, %bb.c ], [ 1, %ft_mem_free.exit42 ], [ 10, %.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %.not.i36 = icmp eq ptr %i.m, null
  br i1 %.not.i36, label %ft_mem_free.exit, label %bb.af

bb.af:                                            ; preds = %Mac_Read_POST_Resource.exit.thread, %Mac_Read_POST_Resource.exit
  %.0.i165 = phi i32 [ %.0.i.ph, %Mac_Read_POST_Resource.exit.thread ], [ %.0.i, %Mac_Read_POST_Resource.exit ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !66
  call void %i.dn(ptr noundef %i.h, ptr noundef nonnull %i.m) #30, !inline_history !203
  br label %ft_mem_free.exit

ft_mem_free.exit:                                 ; preds = %Mac_Read_POST_Resource.exit, %bb.af
  %.0.i166 = phi i32 [ %.0.i, %Mac_Read_POST_Resource.exit ], [ %.0.i165, %bb.af ] ; 2 uses
  %.not33 = icmp eq i32 %.0.i166, 0
  br i1 %.not33, label %ft_mem_free.exit40.thread.sink.split, label %ft_mem_free.exit40.thread

bb.ag:                                            ; preds = %bb.b
  %i.do = call i32 @FT_Raccess_Get_DataOffsets(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.j, i64 noundef %i.k, i64 noundef 1936092788, i8 noundef zeroext 0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) ; 2 uses
  %.not34 = icmp eq i32 %i.do, 0
  br i1 %.not34, label %bb.ah, label %ft_mem_free.exit40.thread

bb.ah:                                            ; preds = %bb.ag
  %i.dp = load i64, ptr %i.g, align 8, !tbaa !39  ; 3 uses
  %i.dq = srem i64 %3, %i.dp                      ; 2 uses
  %i.dr = load ptr, ptr %i.f, align 8, !tbaa !592 ; 3 uses
  %i.ds = load ptr, ptr %0, align 8, !tbaa !266   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %.lobit = ashr i64 %i.dq, 63
  %spec.select.i = xor i64 %.lobit, %i.dq         ; 3 uses
  %.not.i37 = icmp slt i64 %spec.select.i, %i.dp
  br i1 %.not.i37, label %bb.ai, label %Mac_Read_sfnt_Resource.exit

bb.ai:                                            ; preds = %bb.ah
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %spec.select.i
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !39 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !337 ; 2 uses
  %.not.i68 = icmp eq ptr %i.dw, null
  br i1 %.not.i68, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dx = tail call i64 %i.dw(ptr noundef nonnull %1, i64 noundef %i.du, ptr noundef null, i64 noundef 0) #30, !inline_history !650
  %.not10.i69 = icmp eq i64 %i.dx, 0
  br i1 %.not10.i69, label %bb.al, label %Mac_Read_sfnt_Resource.exit.thread

bb.ak:                                            ; preds = %bb.ai
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !274
  %.not17.i71 = icmp ugt i64 %i.du, %i.dz
  br i1 %.not17.i71, label %Mac_Read_sfnt_Resource.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
end_hunk_5
