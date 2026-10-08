Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hls?download=true
inline.NumInlined: 81
inline.NumDeleted: 34
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@read_data_continuous:bb.a
  %or.cond = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %or.cond, label %bb.ae, label %bb.ar

bb.ae:                                            ; preds = %bb.ad
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i131, i64 40 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !98
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.af, label %bb.ar

bb.af:                                            ; preds = %bb.ae
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i131, i64 24 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !105
  %i.en = call i32 @av_strstart(ptr noundef %i.em, ptr noundef nonnull @.str.58, ptr noundef null) #15
  %.not118 = icmp eq i32 %i.en, 0
  br i1 %.not118, label %bb.ar, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eo = load ptr, ptr %i.u, align 8, !tbaa !154 ; 2 uses
  %i.ep = load i64, ptr %i.q, align 8, !tbaa !89
  %i.eq = load i64, ptr %i.r, align 8, !tbaa !95
  %i.er = sub nsw i64 %i.ep, %i.eq                ; 2 uses
  %i.es = load i32, ptr %i.s, align 8, !tbaa !65
  %i.et = sext i32 %i.es to i64
  %.not.i132 = icmp slt i64 %i.er, %i.et
  br i1 %.not.i132, label %current_segment.exit134, label %segment_reusable.exit.thread

current_segment.exit134:                          ; preds = %bb.ag
  %i.eu = load ptr, ptr %i.t, align 8, !tbaa !76
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.er
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !77 ; 6 uses
  %i.ex = icmp ne ptr %i.eo, null
  %i.ey = icmp ne ptr %i.ew, null
  %or.cond.i = and i1 %i.ex, %i.ey
  br i1 %or.cond.i, label %bb.ah, label %segment_reusable.exit.thread

bb.ah:                                            ; preds = %current_segment.exit134
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !190
  %i.fb = and i32 %i.fa, 1
  %.not.i135 = icmp eq i32 %i.fb, 0
  br i1 %.not.i135, label %segment_reusable.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !185 ; 2 uses
  %i.fe = icmp sgt i64 %i.fd, -1
  br i1 %i.fe, label %bb.aj, label %segment_reusable.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i131, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !185
  %i.fh = icmp sgt i64 %i.fg, -1
  br i1 %i.fh, label %bb.ak, label %segment_reusable.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i131, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !186
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !186
  %i.fm = add nsw i64 %i.fl, %i.fd
  %i.fn = icmp eq i64 %i.fj, %i.fm
  br i1 %i.fn, label %bb.al, label %segment_reusable.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !98
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.am, label %segment_reusable.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.fr = load i32, ptr %i.ei, align 8, !tbaa !98
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.an, label %segment_reusable.exit.thread

bb.an:                                            ; preds = %bb.am
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i131, i64 64
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !187
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !187
  %i.fx = icmp eq ptr %i.fu, %i.fw
  br i1 %i.fx, label %segment_reusable.exit, label %segment_reusable.exit.thread

segment_reusable.exit:                            ; preds = %bb.an
  %i.fy = load ptr, ptr %i.el, align 8, !tbaa !105
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !105
  %i.gb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fy, ptr noundef nonnull dereferenceable(1) %i.ga) #14
  %.not21.i.not = icmp eq i32 %i.gb, 0
  br i1 %.not21.i.not, label %bb.ar, label %segment_reusable.exit.thread

segment_reusable.exit.thread:                     ; preds = %bb.ag, %current_segment.exit134, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %segment_reusable.exit
  %i.gc = call fastcc i32 @open_input(ptr noundef nonnull %i.g, ptr noundef nonnull %0, ptr noundef nonnull %.0.i131, ptr noundef nonnull %i.ah)
  %i.gd = icmp slt i32 %i.gc, 0
  br i1 %i.gd, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %segment_reusable.exit.thread
  %i.ge = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.gf = call i32 @ff_check_interrupt(ptr noundef %i.ge) #15
  %.not120 = icmp eq i32 %i.gf, 0
  br i1 %.not120, label %bb.ap, label %update_init_section.exit

bb.ap:                                            ; preds = %bb.ao
  %i.gg = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.gh = load i64, ptr %i.q, align 8, !tbaa !89
  %i.gi = add nsw i64 %i.gh, 1
  %i.gj = load i32, ptr %i.af, align 8, !tbaa !92
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gg, i32 noundef 24, ptr noundef nonnull @.str.125, i64 noundef %i.gi, i32 noundef %i.gj) #15
  br label %bb.ar

bb.aq:                                            ; preds = %segment_reusable.exit.thread
  store i32 1, ptr %i.ad, align 8, !tbaa !100
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %segment_reusable.exit, %bb.af, %bb.ae, %bb.ad, %next_segment.exit
  %i.gk = load i32, ptr %i.aa, align 8, !tbaa !277 ; 2 uses
  %i.gl = load i32, ptr %i.z, align 4, !tbaa !276 ; 2 uses
  %i.gm = icmp ult i32 %i.gk, %i.gl
  br i1 %i.gm, label %bb.as, label %current_segment.exit138

bb.as:                                            ; preds = %bb.ar
  %i.gn = sub nuw i32 %i.gl, %i.gk
  %. = call i32 @llvm.umin.i32(i32 %i.gn, i32 %2) ; 3 uses
  %i.go = load ptr, ptr %i.w, align 8, !tbaa !274
  %i.gp = sext i32 %. to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.go, i64 %i.gp, i1 false)
  %i.gq = load i32, ptr %i.aa, align 8, !tbaa !277
  %i.gr = add i32 %i.gq, %.
  store i32 %i.gr, ptr %i.aa, align 8, !tbaa !277
  br label %update_init_section.exit

current_segment.exit138:                          ; preds = %bb.ar
  %i.gs = load i64, ptr %i.q, align 8, !tbaa !89
  %i.gt = load i64, ptr %i.r, align 8, !tbaa !95
  %i.gu = sub nsw i64 %i.gs, %i.gt                ; 2 uses
  %i.gv = load i32, ptr %i.s, align 8, !tbaa !65
  %i.gw = sext i32 %i.gv to i64
  %.not.i136 = icmp slt i64 %i.gu, %i.gw
  call void @llvm.assume(i1 %.not.i136)
  %i.gx = load ptr, ptr %i.t, align 8, !tbaa !76
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %i.gu
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !77 ; 7 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 16     ; 2 uses
  %.val = load i64, ptr %i.ha, align 8, !tbaa !185 ; 2 uses
  %i.hb = icmp sgt i64 %.val, -1
  br i1 %i.hb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %current_segment.exit138
  %i.hc = load i64, ptr %i.y, align 8, !tbaa !101
  %i.hd = sub nsw i64 %.val, %i.hc
  %i.he = call i64 @llvm.smin.i64(i64 %i.hd, i64 %i.ai)
  %i.hf = trunc i64 %i.he to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %current_segment.exit138
  %.0.i139 = phi i32 [ %i.hf, %bb.at ], [ %2, %current_segment.exit138 ]
  %i.hg = load ptr, ptr %i.u, align 8, !tbaa !154
  %i.hh = call i32 @avio_read(ptr noundef %i.hg, ptr noundef %1, i32 noundef %.0.i139) #15 ; 6 uses
  %i.hi = icmp sgt i32 %i.hh, 0
  br i1 %i.hi, label %bb.av, label %read_from_url.exit

bb.av:                                            ; preds = %bb.au
  %i.hj = zext nneg i32 %i.hh to i64
  %i.hk = load i64, ptr %i.y, align 8, !tbaa !101
  %i.hl = add nsw i64 %i.hk, %i.hj
  store i64 %i.hl, ptr %i.y, align 8, !tbaa !101
  %.not124 = icmp eq i32 %.1101296, 0
  br i1 %.not124, label %update_init_section.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hm = load i32, ptr %i.ab, align 4, !tbaa !104
  %.not125 = icmp eq i32 %i.hm, 0
  br i1 %.not125, label %update_init_section.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hn = load i64, ptr %i.q, align 8, !tbaa !89
  %i.ho = load i64, ptr %i.r, align 8, !tbaa !95
  %i.hp = sub nsw i64 %i.hn, %i.ho                ; 2 uses
  %i.hq = load i32, ptr %i.s, align 8, !tbaa !65
  %i.hr = sext i32 %i.hq to i64
  %.not.i.i = icmp slt i64 %i.hp, %i.hr
  br i1 %.not.i.i, label %bb.ay, label %current_segment.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.hs = load ptr, ptr %i.t, align 8, !tbaa !76
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.hp
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !77
  br label %current_segment.exit.i

current_segment.exit.i:                           ; preds = %bb.ay, %bb.ax
  %.0.i.i140 = phi ptr [ %i.hu, %bb.ay ], [ null, %bb.ax ]
  %i.hv = icmp sgt i32 %2, 9
  %i.hw = getelementptr i8, ptr %.0.i.i140, i64 16 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 8736 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 8744
  br label %bb.az

bb.az:                                            ; preds = %.backedge, %current_segment.exit.i
  %.1162 = phi i32 [ %i.hh, %current_segment.exit.i ], [ %i.ji, %.backedge ] ; 7 uses
  %.087.i = phi i32 [ 0, %current_segment.exit.i ], [ %.087.i.be, %.backedge ] ; 8 uses
  %.086.i = phi i32 [ 0, %current_segment.exit.i ], [ %.2.i, %.backedge ] ; 3 uses
  %4 = icmp slt i32 %.1162, 10
  %or.cond.i141 = and i1 %i.hv, %4
  br i1 %or.cond.i141, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.hz = zext nneg i32 %.1162 to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 %i.hz
  %i.ib = sub nsw i32 10, %.1162                  ; 3 uses
  %.val109.i = load i64, ptr %i.hw, align 8, !tbaa !185 ; 2 uses
  %i.ic = icmp sgt i64 %.val109.i, -1
  br i1 %i.ic, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.id = zext nneg i32 %i.ib to i64
  %i.ie = load i64, ptr %i.y, align 8, !tbaa !101
  %i.if = sub nsw i64 %.val109.i, %i.ie
  %i.ig = call i64 @llvm.smin.i64(i64 %i.if, i64 %i.id)
  %i.ih = trunc i64 %i.ig to i32
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.0.i110.i = phi i32 [ %i.ih, %bb.bb ], [ %i.ib, %bb.ba ]
  %i.ii = load ptr, ptr %i.u, align 8, !tbaa !154
  %i.ij = call i32 @avio_read(ptr noundef %i.ii, ptr noundef %i.ia, i32 noundef %.0.i110.i) #15 ; 5 uses
  %i.ik = icmp sgt i32 %i.ij, 0
  br i1 %i.ik, label %bb.bd, label %read_from_url.exit.i144

bb.bd:                                            ; preds = %bb.bc
  %i.il = zext nneg i32 %i.ij to i64
  %i.im = load i64, ptr %i.y, align 8, !tbaa !101
  %i.in = add nsw i64 %i.im, %i.il
  store i64 %i.in, ptr %i.y, align 8, !tbaa !101
  %i.io = icmp eq i32 %i.ij, %i.ib
  %spec.select.i = select i1 %i.io, i32 1, i32 %.086.i
  %i.ip = add nuw nsw i32 %i.ij, %.1162
  br label %bb.be

read_from_url.exit.i144:                          ; preds = %bb.bc
  %5 = icmp slt i32 %.1162, 1
  br i1 %5, label %.thread.i, label %bb.be

bb.be:                                            ; preds = %read_from_url.exit.i144, %bb.bd, %bb.az
  %.2163 = phi i32 [ %i.ip, %bb.bd ], [ %.1162, %read_from_url.exit.i144 ], [ %.1162, %bb.az ] ; 7 uses
  %.2.i = phi i32 [ %spec.select.i, %bb.bd ], [ %.086.i, %read_from_url.exit.i144 ], [ %.086.i, %bb.az ] ; 2 uses
  %i.iq = icmp slt i32 %.2163, 10
  br i1 %i.iq, label %thread-pre-split.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ir = call i32 @ff_id3v2_match(ptr noundef %1, ptr noundef nonnull @.str.149) #15
  %.not.i142 = icmp eq i32 %i.ir, 0
  br i1 %.not.i142, label %thread-pre-split.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.is = load i64, ptr %i.hw, align 8, !tbaa !185 ; 2 uses
  %i.it = icmp sgt i64 %i.is, -1
  %spec.select106.i = select i1 %i.it, i64 %i.is, i64 1048576 ; 2 uses
  %i.iu = call i32 @ff_id3v2_tag_len(ptr noundef %1) #15 ; 5 uses
  %i.iv = call i32 @llvm.smin.i32(i32 %i.iu, i32 %.2163) ; 5 uses
  %i.iw = sub nsw i32 %i.iu, %i.iv                ; 5 uses
  %i.ix = sext i32 %i.iu to i64
  %i.iy = icmp slt i64 %spec.select106.i, %i.ix
  br i1 %i.iy, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.iz = load ptr, ptr %i.d, align 8, !tbaa !94
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.iz, i32 noundef 16, ptr noundef nonnull @.str.150, i32 noundef %i.iu, i64 noundef %spec.select106.i) #15
  br label %thread-pre-split.i

bb.bi:                                            ; preds = %bb.bg
  %i.ja = load ptr, ptr %i.hx, align 8, !tbaa !279
  %i.jb = add nsw i32 %i.iu, %.087.i              ; 2 uses
  %i.jc = sext i32 %i.jb to i64
  %i.jd = call ptr @av_fast_realloc(ptr noundef %i.ja, ptr noundef nonnull %i.hy, i64 noundef %i.jc) #15 ; 3 uses
  store ptr %i.jd, ptr %i.hx, align 8, !tbaa !279
  %.not102.i = icmp eq ptr %i.jd, null
  br i1 %.not102.i, label %thread-pre-split.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.je = sext i32 %.087.i to i64
  %i.jf = getelementptr inbounds i8, ptr %i.jd, i64 %i.je
  %i.jg = sext i32 %i.iv to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jf, ptr align 1 %1, i64 %i.jg, i1 false)
  %i.jh = add nsw i32 %i.iv, %.087.i              ; 3 uses
  %i.ji = sub nsw i32 %.2163, %i.iv               ; 3 uses
  %i.jj = getelementptr inbounds i8, ptr %1, i64 %i.jg
  %i.jk = zext nneg i32 %i.ji to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.jj, i64 %i.jk, i1 false)
  %i.jl = load ptr, ptr %i.d, align 8, !tbaa !94
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.jl, i32 noundef 48, ptr noundef nonnull @.str.151, i32 noundef %i.iv) #15
  %i.jm = icmp sgt i32 %i.iw, 0
  br i1 %i.jm, label %bb.bk, label %.backedge

bb.bk:                                            ; preds = %bb.bj
  %i.jn = load ptr, ptr %i.hx, align 8, !tbaa !279
  %i.jo = sext i32 %i.jh to i64
  %i.jp = getelementptr inbounds i8, ptr %i.jn, i64 %i.jo
  %.val108.i = load i64, ptr %i.hw, align 8, !tbaa !185 ; 2 uses
  %i.jq = icmp sgt i64 %.val108.i, -1
  br i1 %i.jq, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.jr = zext nneg i32 %i.iw to i64
  %i.js = load i64, ptr %i.y, align 8, !tbaa !101
  %i.jt = sub nsw i64 %.val108.i, %i.js
  %i.ju = call i64 @llvm.smin.i64(i64 %i.jt, i64 %i.jr)
  %i.jv = trunc i64 %i.ju to i32
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.0.i111.i = phi i32 [ %i.jv, %bb.bl ], [ %i.iw, %bb.bk ]
  %i.jw = load ptr, ptr %i.u, align 8, !tbaa !154
  %i.jx = call i32 @avio_read(ptr noundef %i.jw, ptr noundef %i.jp, i32 noundef %.0.i111.i) #15 ; 3 uses
  %i.jy = icmp sgt i32 %i.jx, 0
  br i1 %i.jy, label %bb.bn, label %read_from_url.exit112.i

bb.bn:                                            ; preds = %bb.bm
  %i.jz = zext nneg i32 %i.jx to i64
  %i.ka = load i64, ptr %i.y, align 8, !tbaa !101
  %i.kb = add nsw i64 %i.ka, %i.jz
  store i64 %i.kb, ptr %i.y, align 8, !tbaa !101
  br label %read_from_url.exit112.i

read_from_url.exit112.i:                          ; preds = %bb.bn, %bb.bm
  %.not103.i = icmp eq i32 %i.jx, %i.iw
  br i1 %.not103.i, label %bb.bo, label %thread-pre-split.i

bb.bo:                                            ; preds = %read_from_url.exit112.i
  %i.kc = load ptr, ptr %i.d, align 8, !tbaa !94
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.kc, i32 noundef 48, ptr noundef nonnull @.str.152, i32 noundef %i.iw) #15
  br label %.backedge

.backedge:                                        ; preds = %bb.bo, %bb.bj
  %.087.i.be = phi i32 [ %i.jb, %bb.bo ], [ %i.jh, %bb.bj ]
  br label %bb.az

thread-pre-split.i:                               ; preds = %read_from_url.exit112.i, %bb.bi, %bb.bf, %bb.be, %bb.bh
  %.3 = phi i32 [ %.2163, %bb.bh ], [ %i.ji, %read_from_url.exit112.i ], [ %.2163, %bb.bi ], [ %.2163, %bb.bf ], [ %.2163, %bb.be ]
  %.3.ph.i = phi i32 [ %.087.i, %bb.bh ], [ %i.jh, %read_from_url.exit112.i ], [ %.087.i, %bb.bi ], [ %.087.i, %bb.bf ], [ %.087.i, %bb.be ]
  %i.kd = icmp ne i32 %.2.i, 0
  br label %.thread.i

.thread.i:                                        ; preds = %read_from_url.exit.i144, %thread-pre-split.i
  %.4 = phi i32 [ %.3, %thread-pre-split.i ], [ %i.ij, %read_from_url.exit.i144 ] ; 7 uses
  %.2118.i = phi i1 [ %i.kd, %thread-pre-split.i ], [ false, %read_from_url.exit.i144 ]
  %.3.i = phi i32 [ %.3.ph.i, %thread-pre-split.i ], [ %.087.i, %read_from_url.exit.i144 ]
  %i.ke = icmp sgt i32 %.4, -1
  %i.kf = icmp eq i32 %.4, 0                      ; 2 uses
  %or.cond107.i = or i1 %.2118.i, %i.kf
  %or.cond122.i = select i1 %i.ke, i1 %or.cond107.i, i1 false
  br i1 %or.cond122.i, label %bb.bp, label %.sink.split.i

bb.bp:                                            ; preds = %.thread.i
  %i.kg = zext nneg i32 %.4 to i64
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 %i.kg
  %i.ki = sub nsw i32 %2, %.4                     ; 2 uses
  %.val.i143 = load i64, ptr %i.hw, align 8, !tbaa !185 ; 2 uses
  %i.kj = icmp sgt i64 %.val.i143, -1
  br i1 %i.kj, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.kk = sext i32 %i.ki to i64
  %i.kl = load i64, ptr %i.y, align 8, !tbaa !101
  %i.km = sub nsw i64 %.val.i143, %i.kl
  %i.kn = call i64 @llvm.smin.i64(i64 %i.km, i64 %i.kk)
  %i.ko = trunc i64 %i.kn to i32
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.0.i113.i = phi i32 [ %i.ko, %bb.bq ], [ %i.ki, %bb.bp ]
  %i.kp = load ptr, ptr %i.u, align 8, !tbaa !154
  %i.kq = call i32 @avio_read(ptr noundef %i.kp, ptr noundef %i.kh, i32 noundef %.0.i113.i) #15 ; 5 uses
  %i.kr = icmp sgt i32 %i.kq, 0
  br i1 %i.kr, label %read_from_url.exit114.thread.i, label %read_from_url.exit114.i

read_from_url.exit114.thread.i:                   ; preds = %bb.br
  %i.ks = zext nneg i32 %i.kq to i64
  %i.kt = load i64, ptr %i.y, align 8, !tbaa !101
  %i.ku = add nsw i64 %i.kt, %i.ks
  store i64 %i.ku, ptr %i.y, align 8, !tbaa !101
  br label %bb.bs

read_from_url.exit114.i:                          ; preds = %bb.br
  %i.kv = icmp sgt i32 %i.kq, -1
  br i1 %i.kv, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %read_from_url.exit114.i, %read_from_url.exit114.thread.i
  %i.kw = add nuw nsw i32 %i.kq, %.4
  br label %.sink.split.i

bb.bt:                                            ; preds = %read_from_url.exit114.i
  %spec.select = select i1 %i.kf, i32 %i.kq, i32 %.4
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bt, %bb.bs, %.thread.i
  %.5 = phi i32 [ %.4, %.thread.i ], [ %spec.select, %bb.bt ], [ %i.kw, %bb.bs ] ; 2 uses
  %i.kx = load ptr, ptr %i.hx, align 8, !tbaa !279 ; 2 uses
  %.not105.i = icmp eq ptr %i.kx, null
  br i1 %.not105.i, label %bb.cx, label %bb.bu

bb.bu:                                            ; preds = %.sink.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @ffio_init_read_context(ptr noundef nonnull %3, ptr noundef nonnull %i.kx, i32 noundef %.3.i) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8, !tbaa !280
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 4432 ; 4 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !91 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 8776
  call void @ff_id3v2_read_dict(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.149, ptr noundef nonnull %i.b) #15
  %.031.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !280 ; 2 uses
  %.not32.i.i.i = icmp eq ptr %.031.i.i.i, null
  br i1 %.not32.i.i.i, label %parse_id3.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bu, %bb.cd
  %.028.i.i = phi ptr [ %.129.i.i, %bb.cd ], [ null, %bb.bu ] ; 6 uses
  %.0.i115.i = phi i64 [ %.1.i.i, %bb.cd ], [ -9223372036854775808, %bb.bu ] ; 5 uses
  %.033.i.i.i = phi ptr [ %.0.i.i.i, %bb.cd ], [ %.031.i.i.i, %bb.bu ] ; 7 uses
  %i.lb = load ptr, ptr %.033.i.i.i, align 8, !tbaa !282 ; 2 uses
  %i.lc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(5) @.str.155) #14
  %.not28.i.i.i = icmp eq i32 %i.lc, 0
  br i1 %.not28.i.i.i, label %bb.bv, label %bb.cc

bb.bv:                                            ; preds = %.lr.ph.i.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %.033.i.i.i, i64 16 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.033.i.i.i, i64 32 ; 3 uses
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !284 ; 2 uses
  %i.lg = icmp eq i32 %i.lf, 8
  br i1 %i.lg, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.lh = load ptr, ptr %i.ld, align 8, !tbaa !285
  %i.li = call i32 @av_strncasecmp(ptr noundef %i.lh, ptr noundef nonnull @parse_id3.id3_priv_owner_ts, i64 noundef 44) #15
  %.not29.i.i.i = icmp eq i32 %i.li, 0
  br i1 %.not29.i.i.i, label %bb.bx, label %thread-pre-split.i.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.lj = getelementptr inbounds nuw i8, ptr %.033.i.i.i, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !286
end_hunk_0
