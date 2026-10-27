Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffmpeg_filter?download=true
inline.NumInlined: 139
inline.NumDeleted: 59
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@filter_thread:bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dc, i64 160
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !100
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bp, i64 116
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !155
  %.not.i103 = icmp eq i32 %i.ee, %i.eg
  br i1 %.not.i103, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dc, i64 164
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !158
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !159
  %.not142.i = icmp eq i32 %i.ei, %i.ek
  br i1 %.not142.i, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.el = getelementptr inbounds nuw i8, ptr %i.dc, i64 168
  %i.em = load i32, ptr %i.el, align 8, !tbaa !160
  %i.en = getelementptr inbounds nuw i8, ptr %i.bp, i64 108
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !161
  %.not143.i = icmp eq i32 %i.em, %i.eo
  br i1 %.not143.i, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dc, i64 180
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !101
  %i.er = getelementptr inbounds nuw i8, ptr %i.bp, i64 292
  %i.es = load i32, ptr %i.er, align 4, !tbaa !162
  %.not144.i = icmp eq i32 %i.eq, %i.es
  br i1 %.not144.i, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.et = getelementptr inbounds nuw i8, ptr %i.dc, i64 184
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !102
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bp, i64 280
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !163
  %.not145.i = icmp eq i32 %i.eu, %i.ew
  br i1 %.not145.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dc, i64 188
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !103
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bp, i64 416
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !164
  %.not146.i = icmp eq i32 %i.ey, %i.fa
  br i1 %.not146.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.ah, %bb.ag, %bb.ad
  %.0129.i = phi i32 [ 0, %bb.ad ], [ 2, %bb.ah ], [ 0, %bb.ag ], [ 1, %bb.ao ], [ 0, %bb.an ] ; 4 uses
  %i.fb = call ptr @av_frame_get_side_data(ptr noundef nonnull %i.bp, i32 noundef 6) #16 ; 2 uses
  %.not150.i = icmp eq ptr %i.fb, null
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dc, i64 264 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !290
  %.not151.i = icmp eq i32 %i.fd, 0               ; 2 uses
  br i1 %.not150.i, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not151.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !123
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dc, i64 272
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(36) %i.ff, ptr noundef nonnull dereferenceable(36) %i.fg, i64 36)
  %.not153.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not153.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fh = or disjoint i32 %.0129.i, 4
  br label %bb.au

bb.at:                                            ; preds = %bb.ap
  %i.fi = or disjoint i32 %.0129.i, 4
  %spec.select.i = select i1 %.not151.i, i32 %.0129.i, i32 %i.fi
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %.1130.i = phi i32 [ %i.fh, %bb.as ], [ %.0129.i, %bb.ar ], [ %spec.select.i, %bb.at ] ; 4 uses
  %i.fj = call ptr @av_frame_get_side_data(ptr noundef nonnull %i.bp, i32 noundef 4) #16 ; 2 uses
  %.not154.i = icmp eq ptr %i.fj, null
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dc, i64 308 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !291
  %.not155.i = icmp eq i32 %i.fl, 0               ; 2 uses
  br i1 %.not154.i, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %.not155.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !123
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dc, i64 312
  %bcmp157.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(48) %i.fn, ptr noundef nonnull dereferenceable(48) %i.fo, i64 48)
  %.not158.i = icmp eq i32 %bcmp157.i, 0
  br i1 %.not158.i, label %select.unfold.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.fp = or i32 %.1130.i, 8
  br label %.thread.i

bb.ay:                                            ; preds = %bb.au
  %i.fq = or i32 %.1130.i, 8
  br i1 %.not155.i, label %select.unfold.i, label %.thread.i

select.unfold.i:                                  ; preds = %bb.ay, %bb.aw
  %.not159.i = icmp eq i32 %.1130.i, 0
  br i1 %.not159.i, label %select.unfold.i._crit_edge, label %.thread.i

select.unfold.i._crit_edge:                       ; preds = %select.unfold.i
  %.pre = load ptr, ptr %2, align 8
  %i.fr = icmp ne ptr %.pre, null
  br label %bb.bd

.thread.i:                                        ; preds = %select.unfold.i, %bb.ay, %bb.ax
  %.2200.i = phi i32 [ %.1130.i, %select.unfold.i ], [ %i.fq, %bb.ay ], [ %i.fp, %bb.ax ] ; 2 uses
  %i.fs = load ptr, ptr %2, align 8, !tbaa !147
  %.not160.i = icmp eq ptr %i.fs, null
  br i1 %.not160.i, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %.thread.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dc, i64 104
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !165
  %i.fv = and i32 %i.fu, 16
  %.not161.i = icmp eq i32 %i.fv, 0
  br i1 %.not161.i, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dc, i64 152 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !292
  %i.fy = add i64 %i.fx, 1
  store i64 %i.fy, ptr %i.fw, align 8, !tbaa !292
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dc, i64 148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !166 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, -9223372036854775808
  br i1 %i.gc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.137, i64 6, i1 false)
  br label %av_ts_make_string.exit.i

bb.bc:                                            ; preds = %bb.ba
  %i.gd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.138, i64 noundef %i.gb) #16 ; 0 uses
  br label %av_ts_make_string.exit.i

av_ts_make_string.exit.i:                         ; preds = %bb.bc, %bb.bb
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !116
  call void (ptr, i32, i32, ptr, ptr, ...) @av_log_once(ptr noundef nonnull %0, i32 noundef 24, i32 noundef 48, ptr noundef nonnull %i.fz, ptr noundef nonnull @.str.126, ptr noundef nonnull %i.a, ptr noundef %i.gf) #16
  call void @av_frame_unref(ptr noundef nonnull %i.bp) #16
  br label %send_frame.exit

bb.bd:                                            ; preds = %select.unfold.i._crit_edge, %bb.az, %.thread.i
  %.not163.i = phi i1 [ true, %bb.az ], [ false, %.thread.i ], [ %i.fr, %select.unfold.i._crit_edge ] ; 2 uses
  %.2201.i = phi i32 [ %.2200.i, %bb.az ], [ %.2200.i, %.thread.i ], [ 0, %select.unfold.i._crit_edge ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dc, i64 104 ; 5 uses
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !165
  %i.gi = and i32 %i.gh, 2
  %.not162.i = icmp eq i32 %i.gi, 0
  %i.gj = select i1 %.not162.i, i1 %.not163.i, i1 false
  %.3.i = select i1 %i.gj, i32 0, i32 %.2201.i    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dc, i64 256 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !167 ; 2 uses
  %i.gm = icmp ne ptr %i.gl, null                 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bp, i64 328
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !293 ; 3 uses
  %i.gp = icmp eq ptr %i.go, null
  %.not164.i = xor i1 %i.gm, %i.gp
  br i1 %.not164.i, label %bb.be, label %.thread202.i

bb.be:                                            ; preds = %bb.bd
  br i1 %i.gm, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !146
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !146
  %.not165.i = icmp eq ptr %i.gr, %i.gt
  br i1 %.not165.i, label %bb.bg, label %.thread202.i

.thread202.i:                                     ; preds = %bb.bf, %bb.bd
  %i.gu = or i32 %.3.i, 16
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.not166.i = icmp eq i32 %.3.i, 0
  br i1 %.not166.i, label %.critedge.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.thread202.i
  %.4207.i = phi i32 [ %i.gu, %.thread202.i ], [ %.2201.i, %bb.bg ] ; 3 uses
  %i.gv = call i32 @av_buffer_replace(ptr noundef nonnull %i.gk, ptr noundef %i.go) #16 ; 2 uses
  %i.gw = icmp slt i32 %i.gv, 0
  br i1 %i.gw, label %send_frame.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dc, i64 224 ; 3 uses
  %i.gy = load i32, ptr %i.dq, align 4, !tbaa !112
  %i.gz = icmp eq i32 %i.gy, 1
  br i1 %i.gz, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bp, i64 180
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !157
  store i32 1, ptr %i.gx, align 8, !tbaa !38
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 228
  store i32 %i.hb, ptr %.sroa.2.0..sroa_idx.i.i, align 4, !tbaa !38
  br label %bb.bn

bb.bk:                                            ; preds = %bb.bi
  %i.hc = load i32, ptr %i.gg, align 8, !tbaa !165
  %i.hd = and i32 %i.hc, 4
  %.not.i.i = icmp eq i32 %i.hd, 0
  br i1 %.not.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.he = getelementptr inbounds nuw i8, ptr %i.dc, i64 72
  %i.hf = load i64, ptr %i.he, align 8            ; 2 uses
  %.sroa.01.0.insert.insert.i.i.i = call i64 @llvm.fshl.i64(i64 %i.hf, i64 %i.hf, i64 32)
  store i64 %.sroa.01.0.insert.insert.i.i.i, ptr %i.gx, align 8, !tbaa !38
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bp, i64 152
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !38
  store i64 %i.hh, ptr %i.gx, align 8, !tbaa !38
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bj
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bp, i64 116
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !155
  %i.hk = getelementptr inbounds nuw i8, ptr %i.dc, i64 160
  store i32 %i.hj, ptr %i.hk, align 8, !tbaa !100
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dc, i64 164
  %i.hn = load <2 x i32>, ptr %i.hl, align 8, !tbaa !38
  store <2 x i32> %i.hn, ptr %i.hm, align 4, !tbaa !38
  %i.ho = getelementptr inbounds nuw i8, ptr %i.dc, i64 172
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bp, i64 124
  %i.hq = load i64, ptr %i.hp, align 4, !tbaa !38
  store i64 %i.hq, ptr %i.ho, align 4, !tbaa !38
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bp, i64 292
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !162
  %i.ht = getelementptr inbounds nuw i8, ptr %i.dc, i64 180
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !101
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bp, i64 280
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !163
  %i.hw = getelementptr inbounds nuw i8, ptr %i.dc, i64 184
  store i32 %i.hv, ptr %i.hw, align 8, !tbaa !102
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bp, i64 416
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !164
  %i.hz = getelementptr inbounds nuw i8, ptr %i.dc, i64 188
  store i32 %i.hy, ptr %i.hz, align 4, !tbaa !103
  %i.ia = getelementptr inbounds nuw i8, ptr %i.bp, i64 180
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !157
  %i.ic = getelementptr inbounds nuw i8, ptr %i.dc, i64 192
  store i32 %i.ib, ptr %i.ic, align 8, !tbaa !156
  %i.id = getelementptr inbounds nuw i8, ptr %i.dc, i64 200
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.if = call i32 @av_channel_layout_copy(ptr noundef nonnull %i.id, ptr noundef nonnull %i.ie) #16 ; 2 uses
  %i.ig = icmp slt i32 %i.if, 0
  br i1 %i.ig, label %send_frame.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ih = getelementptr inbounds nuw i8, ptr %i.dc, i64 232 ; 5 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dc, i64 240 ; 5 uses
  call void @av_frame_side_data_free(ptr noundef nonnull %i.ih, ptr noundef nonnull %i.ii) #16
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bp, i64 272 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !294
  %.not7885.i.i = icmp sgt i32 %i.ik, 0
  br i1 %.not7885.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.bo
  %i.il = getelementptr inbounds nuw i8, ptr %i.bp, i64 264 ; 2 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.br, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.br ] ; 3 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !295
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %indvars.iv.i.i
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !169
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !296
  %i.iq = call ptr @av_frame_side_data_desc(i32 noundef %i.ip) #16
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !298
  %i.it = and i32 %i.is, 1
  %.not77.i.i = icmp eq i32 %i.it, 0
  br i1 %.not77.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.iu = load ptr, ptr %i.il, align 8, !tbaa !295
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv.i.i
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !169
  %i.ix = call i32 @av_frame_side_data_clone(ptr noundef nonnull %i.ih, ptr noundef nonnull %i.ii, ptr noundef %i.iw, i32 noundef 0) #16 ; 2 uses
  %i.iy = icmp slt i32 %i.ix, 0
  br i1 %i.iy, label %send_frame.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.iz = load i32, ptr %i.ij, align 8, !tbaa !294
  %i.ja = sext i32 %i.iz to i64
  %.not78.i.i = icmp slt i64 %indvars.iv.next.i.i, %i.ja
  br i1 %.not78.i.i, label %bb.bp, label %._crit_edge.i.i, !llvm.loop !283

._crit_edge.i.i:                                  ; preds = %bb.br, %bb.bo
  %i.jb = call ptr @av_frame_get_side_data(ptr noundef nonnull %i.bp, i32 noundef 6) #16 ; 2 uses
  %i.jc = icmp ne ptr %i.jb, null                 ; 2 uses
  br i1 %i.jc, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %._crit_edge.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.dc, i64 272
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.jd, ptr noundef nonnull align 1 dereferenceable(36) %i.jf, i64 36, i1 false)
  %i.jg = load i32, ptr %i.gg, align 8, !tbaa !165
  %i.jh = and i32 %i.jg, 1
  %.not79.i.i = icmp eq i32 %i.jh, 0
  br i1 %.not79.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @av_frame_side_data_remove(ptr noundef nonnull %i.ih, ptr noundef nonnull %i.ii, i32 noundef 6) #16
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %._crit_edge.i.i
  %i.ji = zext i1 %i.jc to i32
  store i32 %i.ji, ptr %i.fc, align 8, !tbaa !290
  %i.jj = call ptr @av_frame_get_side_data(ptr noundef nonnull %i.bp, i32 noundef 4) #16 ; 3 uses
  %i.jk = icmp ne ptr %i.jj, null                 ; 2 uses
  br i1 %i.jk, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.jl = call i32 @av_frame_side_data_clone(ptr noundef nonnull %i.ih, ptr noundef nonnull %i.ii, ptr noundef nonnull %i.jj, i32 noundef 0) #16 ; 2 uses
  %i.jm = icmp slt i32 %i.jl, 0
  br i1 %i.jm, label %send_frame.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jn = getelementptr inbounds nuw i8, ptr %i.dc, i64 312
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jn, ptr noundef nonnull align 1 dereferenceable(48) %i.jp, i64 48, i1 false)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bu
  %i.jq = zext i1 %i.jk to i32
  store i32 %i.jq, ptr %i.fk, align 4, !tbaa !291
  %i.jr = getelementptr inbounds nuw i8, ptr %i.dc, i64 128
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !170 ; 4 uses
  %.not167.i = icmp eq ptr %i.js, null
  br i1 %.not167.i, label %ifilter_parameters_from_ofilter.exit.thread.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jt = getelementptr inbounds nuw i8, ptr %i.dc, i64 72 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !299
  %.not.i184.i = icmp eq i32 %i.ju, 0
  br i1 %.not.i184.i, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 452
  %i.jw = load i64, ptr %i.jv, align 4, !tbaa !38 ; 3 uses
  store i64 %i.jw, ptr %i.jt, align 8, !tbaa !38
  %i.jx = trunc i64 %i.jw to i32
  %i.jy = icmp sgt i32 %i.jx, 0
  %i.jz = lshr i64 %i.jw, 32
  %i.ka = trunc nuw i64 %i.jz to i32
  %i.kb = icmp sgt i32 %i.ka, 0
  %or.cond.i.i = select i1 %i.jy, i1 %i.kb, i1 false
  br i1 %or.cond.i.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.kc = load i32, ptr %i.gg, align 8, !tbaa !165
  %i.kd = or i32 %i.kc, 4
  store i32 %i.kd, ptr %i.gg, align 8, !tbaa !165
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %i.ke = getelementptr inbounds nuw i8, ptr %i.js, i64 216
  %i.kf = getelementptr inbounds nuw i8, ptr %i.js, i64 224 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !121
  %.not2425.i.i = icmp sgt i32 %i.kg, 0
  br i1 %.not2425.i.i, label %.lr.ph.i186.i, label %ifilter_parameters_from_ofilter.exit.thread.i

bb.cc:                                            ; preds = %.lr.ph.i186.i
  %indvars.iv.next.i188.i = add nuw nsw i64 %indvars.iv.i187.i, 1 ; 2 uses
  %i.kh = load i32, ptr %i.kf, align 8, !tbaa !121
  %i.ki = sext i32 %i.kh to i64
  %.not24.i.i = icmp slt i64 %indvars.iv.next.i188.i, %i.ki
  br i1 %.not24.i.i, label %.lr.ph.i186.i, label %ifilter_parameters_from_ofilter.exit.thread.i, !llvm.loop !284

.lr.ph.i186.i:                                    ; preds = %bb.cb, %bb.cc
  %indvars.iv.i187.i = phi i64 [ %indvars.iv.next.i188.i, %bb.cc ], [ 0, %bb.cb ] ; 2 uses
  %i.kj = load ptr, ptr %i.ke, align 8, !tbaa !120
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv.i187.i
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !169
  %i.km = call i32 @av_frame_side_data_clone(ptr noundef nonnull %i.ih, ptr noundef nonnull %i.ii, ptr noundef %i.kl, i32 noundef 2) #16 ; 2 uses
  %i.kn = icmp sgt i32 %i.km, -1
  br i1 %i.kn, label %bb.cc, label %send_frame.exit

.critedge.i:                                      ; preds = %bb.bg
  br i1 %.not163.i, label %bb.da, label %ifilter_parameters_from_ofilter.exit.thread.i

ifilter_parameters_from_ofilter.exit.thread.i:    ; preds = %bb.cc, %.critedge.i, %bb.cb, %bb.bx
  %.4205.i = phi i32 [ 0, %.critedge.i ], [ %.4207.i, %bb.bx ], [ %.4207.i, %bb.cb ], [ %.4207.i, %bb.cc ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.ko = call ptr @av_frame_alloc() #16          ; 4 uses
  store ptr %i.ko, ptr %i.b, align 8, !tbaa !171
  %.not169.i = icmp eq ptr %i.ko, null
  br i1 %.not169.i, label %.thread213.i, label %bb.cd

bb.cd:                                            ; preds = %ifilter_parameters_from_ofilter.exit.thread.i
  %i.kp = load i32, ptr %i.l, align 8, !tbaa !69  ; 2 uses
  %i.kq = icmp sgt i32 %i.kp, 0
  br i1 %i.kq, label %.lr.ph.i190.i, label %.loopexit.i

.lr.ph.i190.i:                                    ; preds = %bb.cd
  %i.kr = load ptr, ptr %i.bd, align 8, !tbaa !71
  %wide.trip.count.i.i = zext nneg i32 %i.kp to i64
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cf
  %indvars.iv.next.i192.i = add nuw nsw i64 %indvars.iv.i191.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i192.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.cf, !llvm.loop !282

bb.cf:                                            ; preds = %bb.ce, %.lr.ph.i190.i
  %indvars.iv.i191.i = phi i64 [ 0, %.lr.ph.i190.i ], [ %indvars.iv.next.i192.i, %bb.ce ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv.i191.i
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !73
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 160
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !100
end_hunk_0
