Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nghttp2/original/nghttp2_hd?download=true
inline.NumInlined: 158
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@nghttp2_hd_inflate_hd_nv:bb.a
bb.aq:                                            ; preds = %bb.ap
  %i.fu = load i8, ptr %.0214461, align 1, !tbaa !26
  %i.fv = zext i8 %i.fu to i32
  %i.fw = and i32 %i.fs, %i.fv                    ; 2 uses
  %.not.i.i282 = icmp eq i32 %i.fw, %i.fs
  br i1 %.not.i.i282, label %bb.ar, label %decode_length.exit.thread18.i278

bb.ar:                                            ; preds = %bb.aq
  %i.fx = getelementptr inbounds nuw i8, ptr %.0214461, i64 1 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.a
  br i1 %i.fy, label %decode_length.exit.thread18.i278, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ap
  %.054.i.i260 = phi ptr [ %i.fx, %bb.ar ], [ %.0214461, %bb.ap ] ; 10 uses
  %.049.i.i261 = phi i32 [ %i.fs, %bb.ar ], [ %i.fp, %bb.ap ] ; 3 uses
  %.not6278.i.i262 = icmp eq ptr %.054.i.i260, %i.a
  br i1 %.not6278.i.i262, label %._crit_edge.i.i271, label %.lr.ph.preheader.i.i263

.lr.ph.preheader.i.i263:                          ; preds = %bb.as
  %.05491.i.i264 = ptrtoaddr ptr %.054.i.i260 to i64
  %i.fz = sub i64 %i.r, %.05491.i.i264
  %scevgep.i.i265 = getelementptr i8, ptr %.054.i.i260, i64 %i.fz ; 5 uses
  %i.ga = load i8, ptr %.054.i.i260, align 1, !tbaa !26 ; 2 uses
  %i.gb = and i8 %i.ga, 127
  %i.gc = zext nneg i8 %i.gb to i32               ; 2 uses
  %i.gd = icmp ugt i64 %i.fq, 31
  br i1 %i.gd, label %hd_inflate_read_len.exit.thread, label %bb.at

bb.at:                                            ; preds = %.lr.ph.preheader.i.i263
  %i.ge = trunc nuw nsw i64 %i.fq to i32          ; 2 uses
  %i.gf = lshr i32 -1, %i.ge
  %i.gg = icmp ult i32 %i.gf, %i.gc
  br i1 %i.gg, label %hd_inflate_read_len.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gh = shl i32 %i.gc, %i.ge                    ; 2 uses
  %i.gi = xor i32 %i.gh, -1
  %i.gj = icmp ugt i32 %.049.i.i261, %i.gi
  br i1 %i.gj, label %hd_inflate_read_len.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gk = add i32 %i.gh, %.049.i.i261             ; 4 uses
  %i.gl = icmp sgt i8 %i.ga, -1
  br i1 %i.gl, label %bb.bn, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gm = getelementptr inbounds nuw i8, ptr %.054.i.i260, i64 1 ; 3 uses
  %i.gn = add nuw nsw i64 %i.fq, 7                ; 3 uses
  %.not62.i.i270 = icmp eq ptr %i.gm, %i.a
  br i1 %.not62.i.i270, label %._crit_edge.i.i271, label %.lr.ph.i.i266.1

.lr.ph.i.i266.1:                                  ; preds = %bb.aw
  %i.go = load i8, ptr %i.gm, align 1, !tbaa !26  ; 2 uses
  %i.gp = and i8 %i.go, 127
  %i.gq = zext nneg i8 %i.gp to i32               ; 2 uses
  %i.gr = icmp ugt i64 %i.fq, 24
  br i1 %i.gr, label %hd_inflate_read_len.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i266.1
  %i.gs = trunc nuw nsw i64 %i.gn to i32          ; 2 uses
  %i.gt = lshr i32 -1, %i.gs
  %i.gu = icmp ult i32 %i.gt, %i.gq
  br i1 %i.gu, label %hd_inflate_read_len.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gv = shl i32 %i.gq, %i.gs                    ; 2 uses
  %i.gw = xor i32 %i.gv, -1
  %i.gx = icmp ugt i32 %i.gk, %i.gw
  br i1 %i.gx, label %hd_inflate_read_len.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gy = add i32 %i.gv, %i.gk                    ; 4 uses
  %i.gz = icmp sgt i8 %i.go, -1
  br i1 %i.gz, label %bb.bn, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ha = getelementptr inbounds nuw i8, ptr %.054.i.i260, i64 2 ; 3 uses
  %i.hb = add nuw nsw i64 %i.fq, 14               ; 3 uses
  %.not62.i.i270.1 = icmp eq ptr %i.ha, %i.a
  br i1 %.not62.i.i270.1, label %._crit_edge.i.i271, label %.lr.ph.i.i266.2

.lr.ph.i.i266.2:                                  ; preds = %bb.ba
  %i.hc = load i8, ptr %i.ha, align 1, !tbaa !26  ; 2 uses
  %i.hd = and i8 %i.hc, 127
  %i.he = zext nneg i8 %i.hd to i32               ; 2 uses
  %i.hf = icmp ugt i64 %i.fq, 17
  br i1 %i.hf, label %hd_inflate_read_len.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i266.2
  %i.hg = trunc nuw nsw i64 %i.hb to i32          ; 2 uses
  %i.hh = lshr i32 -1, %i.hg
  %i.hi = icmp ult i32 %i.hh, %i.he
  br i1 %i.hi, label %hd_inflate_read_len.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hj = shl i32 %i.he, %i.hg                    ; 2 uses
  %i.hk = xor i32 %i.hj, -1
  %i.hl = icmp ugt i32 %i.gy, %i.hk
  br i1 %i.hl, label %hd_inflate_read_len.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hm = add i32 %i.hj, %i.gy                    ; 4 uses
  %i.hn = icmp sgt i8 %i.hc, -1
  br i1 %i.hn, label %bb.bn, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ho = getelementptr inbounds nuw i8, ptr %.054.i.i260, i64 3 ; 3 uses
  %i.hp = add nuw nsw i64 %i.fq, 21               ; 3 uses
  %.not62.i.i270.2 = icmp eq ptr %i.ho, %i.a
  br i1 %.not62.i.i270.2, label %._crit_edge.i.i271, label %.lr.ph.i.i266.3

.lr.ph.i.i266.3:                                  ; preds = %bb.be
  %i.hq = load i8, ptr %i.ho, align 1, !tbaa !26  ; 2 uses
  %i.hr = and i8 %i.hq, 127
  %i.hs = zext nneg i8 %i.hr to i32               ; 2 uses
  %i.ht = icmp ugt i64 %i.fq, 10
  br i1 %i.ht, label %hd_inflate_read_len.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i266.3
  %i.hu = trunc nuw nsw i64 %i.hp to i32          ; 2 uses
  %i.hv = lshr i32 -1, %i.hu
  %i.hw = icmp ult i32 %i.hv, %i.hs
  br i1 %i.hw, label %hd_inflate_read_len.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hx = shl i32 %i.hs, %i.hu                    ; 2 uses
  %i.hy = xor i32 %i.hx, -1
  %i.hz = icmp ugt i32 %i.hm, %i.hy
  br i1 %i.hz, label %hd_inflate_read_len.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ia = add i32 %i.hx, %i.hm                    ; 4 uses
  %i.ib = icmp sgt i8 %i.hq, -1
  br i1 %i.ib, label %bb.bn, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ic = getelementptr inbounds nuw i8, ptr %.054.i.i260, i64 4 ; 3 uses
  %i.id = add nuw nsw i64 %i.fq, 28               ; 3 uses
  %.not62.i.i270.3 = icmp eq ptr %i.ic, %i.a
  br i1 %.not62.i.i270.3, label %._crit_edge.i.i271, label %.lr.ph.i.i266.4

.lr.ph.i.i266.4:                                  ; preds = %bb.bi
  %i.ie = load i8, ptr %i.ic, align 1, !tbaa !26  ; 2 uses
  %i.if = and i8 %i.ie, 127
  %i.ig = zext nneg i8 %i.if to i32               ; 2 uses
  %i.ih = icmp ugt i64 %i.fq, 3
  br i1 %i.ih, label %hd_inflate_read_len.exit.thread, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i266.4
  %i.ii = trunc nuw nsw i64 %i.id to i32          ; 2 uses
  %i.ij = lshr i32 -1, %i.ii
  %i.ik = icmp ult i32 %i.ij, %i.ig
  br i1 %i.ik, label %hd_inflate_read_len.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.il = shl i32 %i.ig, %i.ii                    ; 2 uses
  %i.im = xor i32 %i.il, -1
  %i.in = icmp ugt i32 %i.ia, %i.im
  br i1 %i.in, label %hd_inflate_read_len.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.io = add i32 %i.il, %i.ia                    ; 2 uses
  %i.ip = icmp sgt i8 %i.ie, -1
  br i1 %i.ip, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iq = getelementptr inbounds nuw i8, ptr %.054.i.i260, i64 5
  %i.ir = add nuw nsw i64 %i.fq, 35
  %.not62.i.i270.4 = icmp eq ptr %i.iq, %i.a
  br i1 %.not62.i.i270.4, label %._crit_edge.i.i271, label %hd_inflate_read_len.exit.thread

._crit_edge.i.i271:                               ; preds = %bb.aw, %bb.ba, %bb.be, %bb.bi, %bb.bm, %bb.as
  %.155.lcssa.i.i272 = phi ptr [ %i.a, %bb.as ], [ %scevgep.i.i265, %bb.bm ], [ %scevgep.i.i265, %bb.bi ], [ %scevgep.i.i265, %bb.be ], [ %scevgep.i.i265, %bb.ba ], [ %scevgep.i.i265, %bb.aw ]
  %.053.lcssa.i.i273 = phi i64 [ %i.fq, %bb.as ], [ %i.gn, %bb.aw ], [ %i.hb, %bb.ba ], [ %i.hp, %bb.be ], [ %i.id, %bb.bi ], [ %i.ir, %bb.bm ]
  %.1.lcssa.i.i274 = phi i32 [ %.049.i.i261, %bb.as ], [ %i.gk, %bb.aw ], [ %i.gy, %bb.ba ], [ %i.hm, %bb.be ], [ %i.ia, %bb.bi ], [ %i.io, %bb.bm ]
  store i64 %.053.lcssa.i.i273, ptr %i.m, align 8, !tbaa !25
  br label %decode_length.exit.i275

bb.bn:                                            ; preds = %bb.bl, %bb.bh, %bb.bd, %bb.az, %bb.av
  %.lcssa705 = phi i32 [ %i.gk, %bb.av ], [ %i.gy, %bb.az ], [ %i.hm, %bb.bd ], [ %i.ia, %bb.bh ], [ %i.io, %bb.bl ]
  %.05380.i.i268.lcssa703 = phi i64 [ %i.fq, %bb.av ], [ %i.gn, %bb.az ], [ %i.hb, %bb.bd ], [ %i.hp, %bb.bh ], [ %i.id, %bb.bl ]
  %.15579.i.i269.lcssa701 = phi ptr [ %.054.i.i260, %bb.av ], [ %i.gm, %bb.az ], [ %i.ha, %bb.bd ], [ %i.ho, %bb.bh ], [ %i.ic, %bb.bl ]
  store i64 %.05380.i.i268.lcssa703, ptr %i.m, align 8, !tbaa !25
  %i.is = getelementptr inbounds nuw i8, ptr %.15579.i.i269.lcssa701, i64 1
  br label %decode_length.exit.i275

decode_length.exit.i275:                          ; preds = %bb.bn, %._crit_edge.i.i271
  %.3339 = phi i32 [ 0, %._crit_edge.i.i271 ], [ 1, %bb.bn ]
  %.155.lcssa.i.sink.i276 = phi ptr [ %.155.lcssa.i.i272, %._crit_edge.i.i271 ], [ %i.is, %bb.bn ]
  %.014.i277 = phi i32 [ %.1.lcssa.i.i274, %._crit_edge.i.i271 ], [ %.lcssa705, %bb.bn ]
  %i.it = ptrtoint ptr %.155.lcssa.i.sink.i276 to i64
  %i.iu = ptrtoint ptr %.0214461 to i64
  %i.iv = sub i64 %i.it, %i.iu                    ; 2 uses
  %i.iw = icmp eq i64 %i.iv, -1
  br i1 %i.iw, label %hd_inflate_read_len.exit.thread, label %decode_length.exit.thread18.i278

decode_length.exit.thread18.i278:                 ; preds = %bb.aq, %decode_length.exit.i275, %bb.ar
  %.4340 = phi i32 [ 0, %bb.ar ], [ %.3339, %decode_length.exit.i275 ], [ 1, %bb.aq ]
  %.252.i22.i279 = phi i64 [ 1, %bb.ar ], [ %i.iv, %decode_length.exit.i275 ], [ 1, %bb.aq ] ; 3 uses
  %.01421.i280 = phi i32 [ %i.fs, %bb.ar ], [ %.014.i277, %decode_length.exit.i275 ], [ %i.fw, %bb.aq ] ; 3 uses
  %i.ix = zext i32 %.01421.i280 to i64            ; 5 uses
  %i.iy = icmp ult i64 %i.fn, %i.ix
  br i1 %i.iy, label %hd_inflate_read_len.exit.thread, label %hd_inflate_read_len.exit283

hd_inflate_read_len.exit283:                      ; preds = %decode_length.exit.thread18.i278
  store i64 %i.ix, ptr %i.l, align 8, !tbaa !89
  %i.iz = icmp slt i64 %.252.i22.i279, 0
  br i1 %i.iz, label %hd_inflate_read_len.exit.thread, label %bb.bo

bb.bo:                                            ; preds = %hd_inflate_read_len.exit283
  %i.ja = getelementptr inbounds nuw i8, ptr %.0214461, i64 %.252.i22.i279 ; 3 uses
  %.not254 = icmp eq i32 %.4340, 0
  br i1 %.not254, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jb = icmp eq i32 %.01421.i280, 0
  br i1 %i.jb, label %hd_inflate_read_len.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jc = add nsw i64 %i.ix, -1                   ; 2 uses
  store i64 %i.jc, ptr %i.z, align 8, !tbaa !90
  br i1 %i.fk, label %bb.br, label %.thread357

bb.br:                                            ; preds = %bb.bq
  %i.jd = icmp ult i64 %i.jc, %i.fn
  br i1 %i.jd, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1331, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_hd_table_get) #12, !noalias !111
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.je = icmp ugt i32 %.01421.i280, 61
  br i1 %i.je, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.jf = add nsw i64 %i.ix, -62                  ; 2 uses
  %i.jg = icmp ult i64 %i.jf, %.val
  br i1 %i.jg, label %hd_ringbuf_get.exit.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 639, ptr noundef nonnull @__PRETTY_FUNCTION__.hd_ringbuf_get) #12, !noalias !111
  unreachable

hd_ringbuf_get.exit.i.i:                          ; preds = %bb.bu
  %i.jh = load ptr, ptr %0, align 8, !tbaa !39, !noalias !111
  %i.ji = load i64, ptr %i.ae, align 8, !tbaa !62, !noalias !111
  %i.jj = add i64 %i.ji, %i.jf
  %i.jk = load i64, ptr %i.af, align 8, !tbaa !40, !noalias !111
  %i.jl = and i64 %i.jj, %i.jk
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.jl
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !63, !noalias !111 ; 3 uses
  %i.jo = load <2 x ptr>, ptr %i.jn, align 8, !tbaa !73
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jn, i64 20
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 4
  br label %.thread352

bb.bw:                                            ; preds = %bb.bt
  %i.jp = getelementptr [128 x i8], ptr @static_table, i64 %i.ix ; 3 uses
  %6 = getelementptr i8, ptr %i.jp, i64 -128
  %i.jq = getelementptr i8, ptr %i.jp, i64 -88
  %i.jr = getelementptr i8, ptr %i.jp, i64 -8
  %i.js = insertelement <2 x ptr> poison, ptr %6, i64 0
  %i.jt = insertelement <2 x ptr> %i.js, ptr %i.jq, i64 1
  br label %.thread352

.thread352:                                       ; preds = %bb.bw, %hd_ringbuf_get.exit.i.i
  %.sroa.7.0.i = phi i32 [ %.sroa.7.0.copyload.i, %hd_ringbuf_get.exit.i.i ], [ 0, %bb.bw ]
  %.sroa.6.0.in.i = phi ptr [ %.sroa.6.0..sroa_idx.i, %hd_ringbuf_get.exit.i.i ], [ %i.jr, %bb.bw ]
  %i.ju = phi <2 x ptr> [ %i.jo, %hd_ringbuf_get.exit.i.i ], [ %i.jt, %bb.bw ]
  %.sroa.6.0.i = load i32, ptr %.sroa.6.0.in.i, align 8, !tbaa !74
  store <2 x ptr> %i.ju, ptr %1, align 8, !tbaa !73
  %.sroa.6.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx6.i, align 8, !tbaa !74
  %.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx8.i, align 4
  store i32 2, ptr %i.j, align 4, !tbaa !56
  %i.jv = load i32, ptr %2, align 4, !tbaa !74
  %i.jw = or i32 %i.jv, 2
  store i32 %i.jw, ptr %2, align 4, !tbaa !74
  %i.jx = ptrtoint ptr %i.ja to i64
  %i.jy = ptrtoint ptr %3 to i64
  %i.jz = sub i64 %i.jx, %i.jy
  br label %bb.fh

.thread357:                                       ; preds = %bb.bq
  store i32 9, ptr %i.j, align 4, !tbaa !56
  br label %bb.fc

.thread561:                                       ; preds = %bb.c
  %.0214.val259 = load i8, ptr %.0214461, align 1, !tbaa !26
  %.lobit.i = lshr i8 %.0214.val259, 7
  store i8 %.lobit.i, ptr %i.k, align 8, !tbaa !57
  store i32 6, ptr %i.j, align 4, !tbaa !56
  store i64 0, ptr %i.l, align 8, !tbaa !89
  store i64 0, ptr %i.m, align 8, !tbaa !25
  br label %bb.by

bb.bx:                                            ; preds = %bb.c
  %.pre513 = load i64, ptr %i.l, align 8, !tbaa !89
  %.pre514 = load i64, ptr %i.m, align 8, !tbaa !58 ; 2 uses
  %i.ka = trunc i64 %.pre513 to i32               ; 2 uses
  store i64 0, ptr %i.m, align 8, !tbaa !25
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %.thread561, %bb.bx
  %i.kc = phi i64 [ 0, %.thread561 ], [ %.pre514, %bb.bx ]
  %i.kd = load i8, ptr %.0214461, align 1, !tbaa !26
  %i.ke = and i8 %i.kd, 127                       ; 2 uses
  %i.kf = zext nneg i8 %i.ke to i64
  %.not.i.i306 = icmp eq i8 %i.ke, 127
  br i1 %.not.i.i306, label %bb.bz, label %hd_inflate_read_len.exit307.thread

bb.bz:                                            ; preds = %bb.by
  %i.kg = getelementptr inbounds nuw i8, ptr %.0214461, i64 1 ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.a
  br i1 %i.kh, label %hd_inflate_read_len.exit307.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bx
  %i.ki = phi i64 [ %i.kc, %bb.bz ], [ %.pre514, %bb.bx ] ; 13 uses
  %.054.i.i284 = phi ptr [ %i.kg, %bb.bz ], [ %.0214461, %bb.bx ] ; 10 uses
  %.049.i.i285 = phi i32 [ 127, %bb.bz ], [ %i.ka, %bb.bx ] ; 3 uses
  %.not6278.i.i286 = icmp eq ptr %.054.i.i284, %i.a
  br i1 %.not6278.i.i286, label %._crit_edge.i.i295, label %.lr.ph.preheader.i.i287

.lr.ph.preheader.i.i287:                          ; preds = %bb.ca
  %.05491.i.i288 = ptrtoaddr ptr %.054.i.i284 to i64
  %i.kj = sub i64 %i.r, %.05491.i.i288
  %scevgep.i.i289 = getelementptr i8, ptr %.054.i.i284, i64 %i.kj ; 5 uses
  %i.kk = load i8, ptr %.054.i.i284, align 1, !tbaa !26 ; 2 uses
  %i.kl = and i8 %i.kk, 127
  %i.km = zext nneg i8 %i.kl to i32               ; 2 uses
  %i.kn = icmp ugt i64 %i.ki, 31
  br i1 %i.kn, label %hd_inflate_read_len.exit.thread, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.preheader.i.i287
  %i.ko = trunc nuw nsw i64 %i.ki to i32          ; 2 uses
  %i.kp = lshr i32 -1, %i.ko
  %i.kq = icmp ult i32 %i.kp, %i.km
  br i1 %i.kq, label %hd_inflate_read_len.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kr = shl i32 %i.km, %i.ko                    ; 2 uses
  %i.ks = xor i32 %i.kr, -1
  %i.kt = icmp ugt i32 %.049.i.i285, %i.ks
  br i1 %i.kt, label %hd_inflate_read_len.exit.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ku = add i32 %i.kr, %.049.i.i285             ; 4 uses
  %i.kv = icmp sgt i8 %i.kk, -1
  br i1 %i.kv, label %bb.cv, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kw = getelementptr inbounds nuw i8, ptr %.054.i.i284, i64 1 ; 3 uses
  %i.kx = add nuw nsw i64 %i.ki, 7                ; 3 uses
  %.not62.i.i294 = icmp eq ptr %i.kw, %i.a
  br i1 %.not62.i.i294, label %._crit_edge.i.i295, label %.lr.ph.i.i290.1

.lr.ph.i.i290.1:                                  ; preds = %bb.ce
  %i.ky = load i8, ptr %i.kw, align 1, !tbaa !26  ; 2 uses
  %i.kz = and i8 %i.ky, 127
  %i.la = zext nneg i8 %i.kz to i32               ; 2 uses
  %i.lb = icmp ugt i64 %i.ki, 24
  br i1 %i.lb, label %hd_inflate_read_len.exit.thread, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i.i290.1
  %i.lc = trunc nuw nsw i64 %i.kx to i32          ; 2 uses
  %i.ld = lshr i32 -1, %i.lc
  %i.le = icmp ult i32 %i.ld, %i.la
  br i1 %i.le, label %hd_inflate_read_len.exit.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lf = shl i32 %i.la, %i.lc                    ; 2 uses
  %i.lg = xor i32 %i.lf, -1
  %i.lh = icmp ugt i32 %i.ku, %i.lg
  br i1 %i.lh, label %hd_inflate_read_len.exit.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.li = add i32 %i.lf, %i.ku                    ; 4 uses
  %i.lj = icmp sgt i8 %i.ky, -1
  br i1 %i.lj, label %bb.cv, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lk = getelementptr inbounds nuw i8, ptr %.054.i.i284, i64 2 ; 3 uses
  %i.ll = add nuw nsw i64 %i.ki, 14               ; 3 uses
  %.not62.i.i294.1 = icmp eq ptr %i.lk, %i.a
  br i1 %.not62.i.i294.1, label %._crit_edge.i.i295, label %.lr.ph.i.i290.2

.lr.ph.i.i290.2:                                  ; preds = %bb.ci
  %i.lm = load i8, ptr %i.lk, align 1, !tbaa !26  ; 2 uses
  %i.ln = and i8 %i.lm, 127
  %i.lo = zext nneg i8 %i.ln to i32               ; 2 uses
  %i.lp = icmp ugt i64 %i.ki, 17
  br i1 %i.lp, label %hd_inflate_read_len.exit.thread, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i290.2
  %i.lq = trunc nuw nsw i64 %i.ll to i32          ; 2 uses
  %i.lr = lshr i32 -1, %i.lq
  %i.ls = icmp ult i32 %i.lr, %i.lo
  br i1 %i.ls, label %hd_inflate_read_len.exit.thread, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.lt = shl i32 %i.lo, %i.lq                    ; 2 uses
  %i.lu = xor i32 %i.lt, -1
  %i.lv = icmp ugt i32 %i.li, %i.lu
  br i1 %i.lv, label %hd_inflate_read_len.exit.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lw = add i32 %i.lt, %i.li                    ; 4 uses
  %i.lx = icmp sgt i8 %i.lm, -1
  br i1 %i.lx, label %bb.cv, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ly = getelementptr inbounds nuw i8, ptr %.054.i.i284, i64 3 ; 3 uses
  %i.lz = add nuw nsw i64 %i.ki, 21               ; 3 uses
  %.not62.i.i294.2 = icmp eq ptr %i.ly, %i.a
  br i1 %.not62.i.i294.2, label %._crit_edge.i.i295, label %.lr.ph.i.i290.3

.lr.ph.i.i290.3:                                  ; preds = %bb.cm
  %i.ma = load i8, ptr %i.ly, align 1, !tbaa !26  ; 2 uses
  %i.mb = and i8 %i.ma, 127
  %i.mc = zext nneg i8 %i.mb to i32               ; 2 uses
  %i.md = icmp ugt i64 %i.ki, 10
  br i1 %i.md, label %hd_inflate_read_len.exit.thread, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph.i.i290.3
  %i.me = trunc nuw nsw i64 %i.lz to i32          ; 2 uses
  %i.mf = lshr i32 -1, %i.me
  %i.mg = icmp ult i32 %i.mf, %i.mc
  br i1 %i.mg, label %hd_inflate_read_len.exit.thread, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mh = shl i32 %i.mc, %i.me                    ; 2 uses
  %i.mi = xor i32 %i.mh, -1
  %i.mj = icmp ugt i32 %i.lw, %i.mi
  br i1 %i.mj, label %hd_inflate_read_len.exit.thread, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.mk = add i32 %i.mh, %i.lw                    ; 4 uses
  %i.ml = icmp sgt i8 %i.ma, -1
  br i1 %i.ml, label %bb.cv, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mm = getelementptr inbounds nuw i8, ptr %.054.i.i284, i64 4 ; 3 uses
  %i.mn = add nuw nsw i64 %i.ki, 28               ; 3 uses
  %.not62.i.i294.3 = icmp eq ptr %i.mm, %i.a
  br i1 %.not62.i.i294.3, label %._crit_edge.i.i295, label %.lr.ph.i.i290.4

.lr.ph.i.i290.4:                                  ; preds = %bb.cq
  %i.mo = load i8, ptr %i.mm, align 1, !tbaa !26  ; 2 uses
  %i.mp = and i8 %i.mo, 127
  %i.mq = zext nneg i8 %i.mp to i32               ; 2 uses
  %i.mr = icmp ugt i64 %i.ki, 3
  br i1 %i.mr, label %hd_inflate_read_len.exit.thread, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.i.i290.4
  %i.ms = trunc nuw nsw i64 %i.mn to i32          ; 2 uses
  %i.mt = lshr i32 -1, %i.ms
  %i.mu = icmp ult i32 %i.mt, %i.mq
  br i1 %i.mu, label %hd_inflate_read_len.exit.thread, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
end_hunk_0
begin_hunk_1_@nghttp2_hd_decode_length:bb.a
  br i1 %.not6278.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %.05491.i = ptrtoaddr ptr %.054.i to i64
  %i.k = sub i64 %i.a, %.05491.i
  %scevgep.i = getelementptr i8, ptr %.054.i, i64 %i.k ; 5 uses
  %i.l = load i8, ptr %.054.i, align 1, !tbaa !26 ; 2 uses
  %i.m = and i8 %i.l, 127
  %i.n = zext nneg i8 %i.m to i32                 ; 2 uses
  %i.o = icmp ugt i64 %4, 31
  br i1 %i.o, label %decode_length.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.preheader.i
  %i.p = trunc nuw nsw i64 %4 to i32              ; 2 uses
  %i.q = lshr i32 -1, %i.p
  %i.r = icmp ult i32 %i.q, %i.n
  br i1 %i.r, label %decode_length.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = shl i32 %i.n, %i.p                       ; 2 uses
  %i.t = xor i32 %i.s, -1
  %i.u = icmp ugt i32 %.049.i, %i.t
  br i1 %i.u, label %decode_length.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = add i32 %i.s, %.049.i                    ; 4 uses
  %i.w = icmp sgt i8 %i.l, -1
  br i1 %i.w, label %bb.aa, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %.054.i, i64 1 ; 3 uses
  %i.y = add nuw nsw i64 %4, 7                    ; 3 uses
  %.not62.i = icmp eq ptr %i.x, %6
  br i1 %.not62.i, label %._crit_edge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.j
  %i.z = load i8, ptr %i.x, align 1, !tbaa !26    ; 2 uses
  %i.aa = and i8 %i.z, 127
  %i.ab = zext nneg i8 %i.aa to i32               ; 2 uses
  %i.ac = icmp ugt i64 %4, 24
  br i1 %i.ac, label %decode_length.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.1
  %i.ad = trunc nuw nsw i64 %i.y to i32           ; 2 uses
  %i.ae = lshr i32 -1, %i.ad
  %i.af = icmp ult i32 %i.ae, %i.ab
  br i1 %i.af, label %decode_length.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = shl i32 %i.ab, %i.ad                    ; 2 uses
  %i.ah = xor i32 %i.ag, -1
  %i.ai = icmp ugt i32 %i.v, %i.ah
  br i1 %i.ai, label %decode_length.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = add i32 %i.ag, %i.v                     ; 4 uses
  %i.ak = icmp sgt i8 %i.z, -1
  br i1 %i.ak, label %bb.aa, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %.054.i, i64 2 ; 3 uses
  %i.am = add nuw nsw i64 %4, 14                  ; 3 uses
  %.not62.i.1 = icmp eq ptr %i.al, %6
  br i1 %.not62.i.1, label %._crit_edge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.n
  %i.an = load i8, ptr %i.al, align 1, !tbaa !26  ; 2 uses
  %i.ao = and i8 %i.an, 127
  %i.ap = zext nneg i8 %i.ao to i32               ; 2 uses
  %i.aq = icmp ugt i64 %4, 17
  br i1 %i.aq, label %decode_length.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.2
  %i.ar = trunc nuw nsw i64 %i.am to i32          ; 2 uses
  %i.as = lshr i32 -1, %i.ar
  %i.at = icmp ult i32 %i.as, %i.ap
  br i1 %i.at, label %decode_length.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = shl i32 %i.ap, %i.ar                    ; 2 uses
  %i.av = xor i32 %i.au, -1
  %i.aw = icmp ugt i32 %i.aj, %i.av
  br i1 %i.aw, label %decode_length.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = add i32 %i.au, %i.aj                    ; 4 uses
  %i.ay = icmp sgt i8 %i.an, -1
  br i1 %i.ay, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %.054.i, i64 3 ; 3 uses
  %i.ba = add nuw nsw i64 %4, 21                  ; 3 uses
  %.not62.i.2 = icmp eq ptr %i.az, %6
  br i1 %.not62.i.2, label %._crit_edge.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.r
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !26  ; 2 uses
  %i.bc = and i8 %i.bb, 127
  %i.bd = zext nneg i8 %i.bc to i32               ; 2 uses
  %i.be = icmp ugt i64 %4, 10
  br i1 %i.be, label %decode_length.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.3
  %i.bf = trunc nuw nsw i64 %i.ba to i32          ; 2 uses
  %i.bg = lshr i32 -1, %i.bf
  %i.bh = icmp ult i32 %i.bg, %i.bd
  br i1 %i.bh, label %decode_length.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = shl i32 %i.bd, %i.bf                    ; 2 uses
  %i.bj = xor i32 %i.bi, -1
  %i.bk = icmp ugt i32 %i.ax, %i.bj
  br i1 %i.bk, label %decode_length.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = add i32 %i.bi, %i.ax                    ; 4 uses
  %i.bm = icmp sgt i8 %i.bb, -1
  br i1 %i.bm, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %.054.i, i64 4 ; 3 uses
  %i.bo = add nuw nsw i64 %4, 28                  ; 3 uses
  %.not62.i.3 = icmp eq ptr %i.bn, %6
  br i1 %.not62.i.3, label %._crit_edge.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.v
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !26  ; 2 uses
  %i.bq = and i8 %i.bp, 127
  %i.br = zext nneg i8 %i.bq to i32               ; 2 uses
  %i.bs = icmp ugt i64 %4, 3
  br i1 %i.bs, label %decode_length.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.4
  %i.bt = trunc nuw nsw i64 %i.bo to i32          ; 2 uses
  %i.bu = lshr i32 -1, %i.bt
  %i.bv = icmp ult i32 %i.bu, %i.br
  br i1 %i.bv, label %decode_length.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = shl i32 %i.br, %i.bt                    ; 2 uses
  %i.bx = xor i32 %i.bw, -1
  %i.by = icmp ugt i32 %i.bl, %i.bx
  br i1 %i.by, label %decode_length.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = add i32 %i.bw, %i.bl                    ; 2 uses
  %i.ca = icmp sgt i8 %i.bp, -1
  br i1 %i.ca, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = getelementptr inbounds nuw i8, ptr %.054.i, i64 5
  %i.cc = add nuw nsw i64 %4, 35
  %.not62.i.4 = icmp eq ptr %i.cb, %6
  br i1 %.not62.i.4, label %._crit_edge.i, label %decode_length.exit

._crit_edge.i:                                    ; preds = %bb.j, %bb.n, %bb.r, %bb.v, %bb.z, %bb.f
  %.155.lcssa.i = phi ptr [ %6, %bb.f ], [ %scevgep.i, %bb.z ], [ %scevgep.i, %bb.v ], [ %scevgep.i, %bb.r ], [ %scevgep.i, %bb.n ], [ %scevgep.i, %bb.j ]
  %.053.lcssa.i = phi i64 [ %4, %bb.f ], [ %i.y, %bb.j ], [ %i.am, %bb.n ], [ %i.ba, %bb.r ], [ %i.bo, %bb.v ], [ %i.cc, %bb.z ]
  %.1.lcssa.i = phi i32 [ %.049.i, %bb.f ], [ %i.v, %bb.j ], [ %i.aj, %bb.n ], [ %i.ax, %bb.r ], [ %i.bl, %bb.v ], [ %i.bz, %bb.z ]
  store i64 %.053.lcssa.i, ptr %1, align 8, !tbaa !25
  store i32 %.1.lcssa.i, ptr %0, align 4, !tbaa !74
  %i.cd = ptrtoint ptr %.155.lcssa.i to i64
  %i.ce = ptrtoint ptr %5 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  br label %decode_length.exit

bb.aa:                                            ; preds = %bb.y, %bb.u, %bb.q, %bb.m, %bb.i
  %.lcssa = phi i32 [ %i.v, %bb.i ], [ %i.aj, %bb.m ], [ %i.ax, %bb.q ], [ %i.bl, %bb.u ], [ %i.bz, %bb.y ]
  %.05380.i.lcssa39 = phi i64 [ %4, %bb.i ], [ %i.y, %bb.m ], [ %i.am, %bb.q ], [ %i.ba, %bb.u ], [ %i.bo, %bb.y ]
  %.15579.i.lcssa37 = phi ptr [ %.054.i, %bb.i ], [ %i.x, %bb.m ], [ %i.al, %bb.q ], [ %i.az, %bb.u ], [ %i.bn, %bb.y ]
  store i64 %.05380.i.lcssa39, ptr %1, align 8, !tbaa !25
  store i32 %.lcssa, ptr %0, align 4, !tbaa !74
  store i32 1, ptr %2, align 4, !tbaa !74
  %i.cg = getelementptr inbounds nuw i8, ptr %.15579.i.lcssa37, i64 1
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %5 to i64
  %i.cj = sub i64 %i.ch, %i.ci
  br label %decode_length.exit

decode_length.exit:                               ; preds = %.lr.ph.preheader.i, %bb.g, %bb.h, %.lr.ph.i.1, %bb.k, %bb.l, %.lr.ph.i.2, %bb.o, %bb.p, %.lr.ph.i.3, %bb.s, %bb.t, %.lr.ph.i.4, %bb.w, %bb.x, %bb.z, %bb.c, %bb.e, %._crit_edge.i, %bb.aa
  %.252.i = phi i64 [ 1, %bb.c ], [ 1, %bb.e ], [ %i.cj, %bb.aa ], [ %i.cf, %._crit_edge.i ], [ -1, %bb.z ], [ -1, %bb.x ], [ -1, %bb.w ], [ -1, %.lr.ph.i.4 ], [ -1, %bb.t ], [ -1, %bb.s ], [ -1, %.lr.ph.i.3 ], [ -1, %bb.p ], [ -1, %bb.o ], [ -1, %.lr.ph.i.2 ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %.lr.ph.i.1 ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %.lr.ph.preheader.i ]
  ret i64 %.252.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @nghttp2_hd_deflate_get_num_table_entries(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load i64, ptr %i.a, align 8, !tbaa !69
  %i.b = add i64 %.val, 61
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define ptr @nghttp2_hd_deflate_get_table_entry(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %hd_get_table_entry.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -1                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !69   ; 2 uses
  %i.e = add i64 %i.d, 61
  %i.f = icmp ult i64 %i.b, %i.e
  br i1 %i.f, label %bb.c, label %hd_get_table_entry.exit

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.b, 60
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = add i64 %1, -62                          ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.d
  br i1 %i.i, label %hd_ringbuf_get.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 639, ptr noundef nonnull @__PRETTY_FUNCTION__.hd_ringbuf_get) #12
  unreachable

hd_ringbuf_get.exit.i.i:                          ; preds = %bb.d
  %i.j = load ptr, ptr %0, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !62
  %i.m = add i64 %i.l, %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !40
  %i.p = and i64 %i.m, %i.o
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  br label %hd_get_table_entry.exit

bb.f:                                             ; preds = %bb.c
  %i.t = getelementptr [128 x i8], ptr @static_table, i64 %1
  %i.u = getelementptr i8, ptr %i.t, i64 -48
  br label %hd_get_table_entry.exit

hd_get_table_entry.exit:                          ; preds = %bb.a, %bb.b, %hd_ringbuf_get.exit.i.i, %bb.f
  %.0.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.s, %hd_ringbuf_get.exit.i.i ], [ %i.u, %bb.f ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @nghttp2_hd_deflate_get_dynamic_table_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !122
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @nghttp2_hd_deflate_get_max_dynamic_table_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @nghttp2_hd_inflate_get_num_table_entries(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load i64, ptr %i.a, align 8, !tbaa !69
  %i.b = add i64 %.val, 61
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define ptr @nghttp2_hd_inflate_get_table_entry(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %hd_get_table_entry.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -1                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !69   ; 2 uses
  %i.e = add i64 %i.d, 61
  %i.f = icmp ult i64 %i.b, %i.e
  br i1 %i.f, label %bb.c, label %hd_get_table_entry.exit

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.b, 60
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = add i64 %1, -62                          ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.d
  br i1 %i.i, label %hd_ringbuf_get.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 639, ptr noundef nonnull @__PRETTY_FUNCTION__.hd_ringbuf_get) #12
  unreachable

hd_ringbuf_get.exit.i.i:                          ; preds = %bb.d
  %i.j = load ptr, ptr %0, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !62
  %i.m = add i64 %i.l, %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !40
  %i.p = and i64 %i.m, %i.o
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  br label %hd_get_table_entry.exit

bb.f:                                             ; preds = %bb.c
  %i.t = getelementptr [128 x i8], ptr @static_table, i64 %1
  %i.u = getelementptr i8, ptr %i.t, i64 -48
  br label %hd_get_table_entry.exit

hd_get_table_entry.exit:                          ; preds = %bb.a, %bb.b, %hd_ringbuf_get.exit.i.i, %bb.f
  %.0.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.s, %hd_ringbuf_get.exit.i.i ], [ %i.u, %bb.f ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @nghttp2_hd_inflate_get_dynamic_table_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !123
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @nghttp2_hd_inflate_get_max_dynamic_table_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !72
  ret i64 %i.b
}

declare i32 @nghttp2_bufs_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 -1, 68) i32 @lookup_token(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  switch i64 %1, label %bb.cc [
    i64 2, label %bb.b
    i64 3, label %bb.d
    i64 4, label %bb.g
    i64 5, label %bb.n
    i64 6, label %bb.r
    i64 7, label %bb.w
    i64 8, label %bb.ae
    i64 9, label %bb.aj
    i64 10, label %bb.al
    i64 11, label %bb.ar
    i64 12, label %bb.at
    i64 13, label %bb.aw
    i64 14, label %bb.bd
    i64 15, label %bb.bg
    i64 16, label %bb.bj
    i64 17, label %bb.bp
    i64 18, label %bb.bs
    i64 19, label %bb.bu
    i64 25, label %bb.by
    i64 27, label %bb.ca
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !26
  %cond5 = icmp eq i8 %i.b, 101
  br i1 %cond5, label %bb.c, label %bb.cc

bb.c:                                             ; preds = %bb.b
  %rhsc = load i8, ptr %0, align 1
  %.not258 = icmp eq i8 %rhsc, 116
  br i1 %.not258, label %bb.cd, label %bb.cc

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !26
  switch i8 %i.d, label %bb.cc [
    i8 97, label %bb.e
    i8 101, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = load i16, ptr %0, align 1
  %i.f = icmp ne i16 26998, %i.e
  %i.g = zext i1 %i.f to i32
  %.not257 = icmp eq i32 %i.g, 0
  br i1 %.not257, label %bb.cd, label %bb.cc

bb.f:                                             ; preds = %bb.d
  %i.h = load i16, ptr %0, align 1
  %i.i = icmp ne i16 26465, %i.h
  %i.j = zext i1 %i.i to i32
  %.not256 = icmp eq i32 %i.j, 0
  br i1 %.not256, label %bb.cd, label %bb.cc

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !26
  switch i8 %i.l, label %bb.cc [
    i8 101, label %bb.h
    i8 103, label %bb.i
    i8 107, label %bb.j
    i8 109, label %bb.k
    i8 116, label %bb.l
    i8 121, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.m = load i16, ptr %0, align 1
  %i.n = xor i16 24932, %i.m
  %i.o = getelementptr i8, ptr %0, i64 2
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i16
  %i.r = xor i16 116, %i.q
  %i.s = or i16 %i.n, %i.r
  %i.t = icmp ne i16 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not255 = icmp eq i32 %i.u, 0
  br i1 %.not255, label %bb.cd, label %bb.cc

bb.i:                                             ; preds = %bb.g
  %i.v = load i16, ptr %0, align 1
  %i.w = xor i16 29797, %i.v
  %i.x = getelementptr i8, ptr %0, i64 2
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i16
  %i.aa = xor i16 97, %i.z
  %i.ab = or i16 %i.w, %i.aa
  %i.ac = icmp ne i16 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %.not254 = icmp eq i32 %i.ad, 0
  br i1 %.not254, label %bb.cd, label %bb.cc

bb.j:                                             ; preds = %bb.g
  %i.ae = load i16, ptr %0, align 1
  %i.af = xor i16 26988, %i.ae
  %i.ag = getelementptr i8, ptr %0, i64 2
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i16
  %i.aj = xor i16 110, %i.ai
  %i.ak = or i16 %i.af, %i.aj
  %i.al = icmp ne i16 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %.not253 = icmp eq i32 %i.am, 0
  br i1 %.not253, label %bb.cd, label %bb.cc

bb.k:                                             ; preds = %bb.g
  %i.an = load i16, ptr %0, align 1
  %i.ao = xor i16 29286, %i.an
  %i.ap = getelementptr i8, ptr %0, i64 2
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i16
  %i.as = xor i16 111, %i.ar
  %i.at = or i16 %i.ao, %i.as
  %i.au = icmp ne i16 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %.not252 = icmp eq i32 %i.av, 0
  br i1 %.not252, label %bb.cd, label %bb.cc

bb.l:                                             ; preds = %bb.g
  %i.aw = load i16, ptr %0, align 1
  %i.ax = xor i16 28520, %i.aw
  %i.ay = getelementptr i8, ptr %0, i64 2
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i16
  %i.bb = xor i16 115, %i.ba
  %i.bc = or i16 %i.ax, %i.bb
  %i.bd = icmp ne i16 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %.not251 = icmp eq i32 %i.be, 0
  br i1 %.not251, label %bb.cd, label %bb.cc

bb.m:                                             ; preds = %bb.g
  %i.bf = load i16, ptr %0, align 1
  %i.bg = xor i16 24950, %i.bf
  %i.bh = getelementptr i8, ptr %0, i64 2
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i16
  %i.bk = xor i16 114, %i.bj
  %i.bl = or i16 %i.bg, %i.bk
  %i.bm = icmp ne i16 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %.not250 = icmp eq i32 %i.bn, 0
  br i1 %.not250, label %bb.cd, label %bb.cc

bb.n:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !26
  switch i8 %i.bp, label %bb.cc [
    i8 101, label %bb.o
    i8 104, label %bb.p
    i8 119, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.bq = load i32, ptr %0, align 1
  %i.br = icmp ne i32 1735287154, %i.bq
  %i.bs = zext i1 %i.br to i32
  %.not249 = icmp eq i32 %i.bs, 0
  br i1 %.not249, label %bb.cd, label %bb.cc

bb.p:                                             ; preds = %bb.n
  %i.bt = load i32, ptr %0, align 1
  %i.bu = icmp ne i32 1952542778, %i.bt
  %i.bv = zext i1 %i.bu to i32
  %.not248 = icmp eq i32 %i.bv, 0
  br i1 %.not248, label %bb.cd, label %bb.cc

bb.q:                                             ; preds = %bb.n
  %i.bw = load i32, ptr %0, align 1
  %i.bx = icmp ne i32 1869376609, %i.bw
end_hunk_1
