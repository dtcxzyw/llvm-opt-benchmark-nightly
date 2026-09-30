Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mjpegdec?download=true
inline.NumInlined: 62
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@ff_mjpeg_decode_frame_from_buf:bb.a
  %or.cond8.i = select i1 %i.he, i1 %i.hf, i1 false
  br i1 %or.cond8.i, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.hg = load ptr, ptr %i.ab, align 8, !tbaa !66 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  store ptr %i.hh, ptr %i.ab, align 8, !tbaa !66
  %i.hi = load i8, ptr %i.hg, align 1, !tbaa !63
  %i.hj = zext i8 %i.hi to i32                    ; 2 uses
  store i32 %i.hj, ptr %i.al, align 8, !tbaa !319
  %i.hk = load ptr, ptr %i.af, align 8, !tbaa !49 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 524
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !70
  %i.hn = and i32 %i.hm, 1
  %.not229.i = icmp eq i32 %i.hn, 0
  br i1 %.not229.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.hk, i32 noundef 32, ptr noundef nonnull @.str.114, i32 noundef %i.hj) #10
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ho = add nsw i32 %i.cx, -7
  br label %.thread289.i

bb.bc:                                            ; preds = %bb.ay
  %i.hp = icmp eq i32 %i.dn, 2019979885
  %or.cond10.i = select i1 %i.hp, i1 %i.hf, i1 false
  br i1 %or.cond10.i, label %bb.bd, label %.thread279.i

bb.bd:                                            ; preds = %bb.bc
  %i.hq = load ptr, ptr %i.ab, align 8, !tbaa !66 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  store ptr %i.hr, ptr %i.ab, align 8, !tbaa !66
  %i.hs = load i8, ptr %i.hq, align 1, !tbaa !63
  %i.ht = zext i8 %i.hs to i32                    ; 2 uses
  store i32 %i.ht, ptr %i.ak, align 4, !tbaa !320
  %i.hu = load ptr, ptr %i.af, align 8, !tbaa !49 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 524
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !70
  %i.hx = and i32 %i.hw, 1
  %.not228.i = icmp eq i32 %i.hx, 0
  br i1 %.not228.i, label %.thread.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.hu, i32 noundef 32, ptr noundef nonnull @.str.116, i32 noundef %i.ht) #10
  br label %.thread.i

.thread.i:                                        ; preds = %bb.be, %bb.bd
  %i.hy = add nsw i32 %i.cx, -7
  br label %.thread289.i

.thread279.i:                                     ; preds = %bb.bc, %bb.ah, %bb.ag
  switch i8 %i.cb, label %.thread289.i [
    i8 -29, label %bb.bf
    i8 -31, label %bb.bo
    i8 -30, label %bb.bx
  ]

bb.bf:                                            ; preds = %.thread279.i
  %i.hz = icmp eq i32 %i.dn, 1397770847
  %i.ia = icmp ugt i16 %i.cw, 15
  %or.cond12.i = and i1 %i.ia, %i.hz
  br i1 %or.cond12.i, label %bb.bg, label %.thread289.i

bb.bg:                                            ; preds = %bb.bf
  %i.ib = load ptr, ptr %i.af, align 8, !tbaa !49 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 524
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !70
  %i.ie = and i32 %i.id, 1
  %.not225.i = icmp eq i32 %i.ie, 0
  br i1 %.not225.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.ib, i32 noundef 32, ptr noundef nonnull @.str.118) #10
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.if = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 7
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 8 ; 2 uses
  store ptr %i.ih, ptr %i.ab, align 8, !tbaa !66
  %i.ii = load i8, ptr %i.ig, align 1, !tbaa !63
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 9 ; 2 uses
  store ptr %i.ij, ptr %i.ab, align 8, !tbaa !66
  %i.ik = load i8, ptr %i.ih, align 1, !tbaa !63
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 10
  store ptr %i.il, ptr %i.ab, align 8, !tbaa !66
  %i.im = load i8, ptr %i.ij, align 1, !tbaa !63
  %i.in = add nsw i32 %i.cx, -16                  ; 5 uses
  call void @av_freep(ptr noundef nonnull %i.l) #10
  %i.io = call ptr @av_stereo3d_alloc() #10       ; 5 uses
  store ptr %i.io, ptr %i.l, align 8, !tbaa !321
  %.not226.i = icmp eq ptr %i.io, null
  br i1 %.not226.i, label %.thread289.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  switch i8 %i.im, label %.thread289.i [
    i8 0, label %bb.bk
    i8 1, label %bb.bl
  ]

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.io, align 4, !tbaa !323
  br label %.thread289.i

bb.bl:                                            ; preds = %bb.bj
  %switch.tableidx = add i8 %i.ik, -1             ; 2 uses
  %i.ip = icmp ult i8 %switch.tableidx, 3
  br i1 %i.ip, label %switch.lookup, label %bb.bm

switch.lookup:                                    ; preds = %bb.bl
  %i.iq = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ff_mjpeg_decode_frame_from_buf, i64 %i.iq
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.io, align 4, !tbaa !323
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %switch.lookup
  %i.ir = and i8 %i.ii, 4
  %.not227.i = icmp eq i8 %i.ir, 0
  br i1 %.not227.i, label %bb.bn, label %.thread289.i

bb.bn:                                            ; preds = %bb.bm
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  store i32 1, ptr %i.is, align 4, !tbaa !324
  br label %.thread289.i

bb.bo:                                            ; preds = %.thread279.i
  %i.it = icmp eq i32 %i.dn, 1718188101
  %i.iu = icmp ugt i16 %i.cw, 7
  %or.cond14.i = and i1 %i.iu, %i.it
  br i1 %or.cond14.i, label %bb.bp, label %.thread281.i

bb.bp:                                            ; preds = %bb.bo
  %i.iv = load ptr, ptr %i.ab, align 8, !tbaa !56
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 2 ; 2 uses
  store ptr %i.iw, ptr %i.ab, align 8, !tbaa !56
  %i.ix = add nsw i32 %i.cx, -8                   ; 4 uses
  %i.iy = load ptr, ptr %i.k, align 8, !tbaa !325
  %.not224.i = icmp eq ptr %i.iy, null
  %i.iz = load ptr, ptr %i.af, align 8, !tbaa !49 ; 2 uses
  br i1 %.not224.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.iz, i32 noundef 24, ptr noundef nonnull @.str.120) #10
  br label %.thread289.i

bb.br:                                            ; preds = %bb.bp
  %i.ja = zext nneg i32 %i.ix to i64
  %i.jb = call i32 @av_exif_parse_buffer(ptr noundef %i.iz, ptr noundef nonnull %i.iw, i64 noundef %i.ja, ptr noundef nonnull %i.k, i32 noundef 0) #10 ; 3 uses
  %i.jc = icmp slt i32 %i.jb, 0
  br i1 %i.jc, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.jd = load ptr, ptr %i.af, align 8, !tbaa !49
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.jd, i32 noundef 24, ptr noundef nonnull @.str.121) #10
  br label %.thread289.i

bb.bt:                                            ; preds = %bb.br
  %i.je = load ptr, ptr %i.ab, align 8, !tbaa !56
  %i.jf = zext nneg i32 %i.jb to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jf
  store ptr %i.jg, ptr %i.ab, align 8, !tbaa !56
  %i.jh = sub nsw i32 %i.ix, %i.jb
  br label %bb.cq

.thread281.i:                                     ; preds = %bb.bo
  %i.ji = icmp ugt i16 %i.cw, 38
  br i1 %i.ji, label %bb.bu, label %.thread289.i

bb.bu:                                            ; preds = %.thread281.i
  %i.jj = load ptr, ptr %i.ab, align 8, !tbaa !66 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  store ptr %i.jk, ptr %i.ab, align 8, !tbaa !66
  %i.jl = load i32, ptr %i.jj, align 1, !tbaa !63
  %i.jm = add nsw i32 %i.cx, -10                  ; 3 uses
  %i.jn = icmp eq i32 %i.jl, 1735420525
  br i1 %i.jn, label %bb.bv, label %.thread289.thread296.i

bb.bv:                                            ; preds = %bb.bu
  %i.jo = load ptr, ptr %i.af, align 8, !tbaa !49 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 524
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !70
  %i.jr = and i32 %i.jq, 1
  %.not215.i = icmp eq i32 %i.jr, 0
  br i1 %.not215.i, label %.thread289.thread296.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.jo, i32 noundef 32, ptr noundef nonnull @.str.123) #10
  br label %.thread289.thread296.i

bb.bx:                                            ; preds = %.thread279.i
  %i.js = icmp eq i32 %i.dn, 1598243657
  %i.jt = icmp ugt i16 %i.cw, 15
  %or.cond18.i = and i1 %i.js, %i.jt
  br i1 %or.cond18.i, label %bb.by, label %.thread289.i

bb.by:                                            ; preds = %bb.bx
  %i.ju = load ptr, ptr %i.ab, align 8, !tbaa !66 ; 7 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 4 ; 2 uses
  store ptr %i.jv, ptr %i.ab, align 8, !tbaa !66
  %i.jw = load i32, ptr %i.ju, align 1, !tbaa !63
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 7
  store ptr %i.jx, ptr %i.ab, align 8, !tbaa !66
  %6 = load i16, ptr %i.jv, align 1
  %7 = call i16 @llvm.bswap.i16(i16 %6)
  %i.jy = zext i16 %7 to i32
  %i.jz = shl nuw nsw i32 %i.jy, 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ju, i64 6
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !63
  %i.kc = zext i8 %i.kb to i32
  %i.kd = or disjoint i32 %i.jz, %i.kc
  %.not216.i = icmp eq i32 %i.jw, 1179603536
  %.not217.i = icmp eq i32 %i.kd, 4803653
  %or.cond239.i = select i1 %.not216.i, i1 %.not217.i, i1 false
  br i1 %or.cond239.i, label %bb.bz, label %.thread289.thread296.sink.split.i

bb.bz:                                            ; preds = %bb.by
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ju, i64 9 ; 2 uses
  store ptr %i.kf, ptr %i.ab, align 8, !tbaa !66
  %i.kg = load i8, ptr %i.ke, align 1, !tbaa !63  ; 3 uses
  %i.kh = zext i8 %i.kg to i64
  %i.ki = icmp eq i8 %i.kg, 0
  br i1 %i.ki, label %.thread289.thread296.sink.split.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ju, i64 10
  store ptr %i.kj, ptr %i.ab, align 8, !tbaa !66
  %i.kk = load i8, ptr %i.kf, align 1, !tbaa !63  ; 4 uses
  %i.kl = zext i8 %i.kk to i32                    ; 2 uses
  %i.km = add nsw i32 %i.cx, -16                  ; 6 uses
  %i.kn = icmp eq i8 %i.kk, 0
  br i1 %i.kn, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ko = load ptr, ptr %i.af, align 8, !tbaa !49
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ko, i32 noundef 24, ptr noundef nonnull @.str.129) #10
  br label %.thread289.i

bb.cc:                                            ; preds = %bb.ca
  %i.kp = load i32, ptr %i.n, align 16, !tbaa !134 ; 2 uses
  %.not218.i = icmp eq i32 %i.kp, 0               ; 2 uses
  %.not219.i = icmp eq i32 %i.kp, %i.kl
  %or.cond240.i = or i1 %.not218.i, %.not219.i
  br i1 %or.cond240.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kq = load ptr, ptr %i.af, align 8, !tbaa !49
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.kq, i32 noundef 24, ptr noundef nonnull @.str.130) #10
  br label %.thread289.i

bb.ce:                                            ; preds = %bb.cc
  %i.kr = icmp ugt i8 %i.kg, %i.kk
  br i1 %i.kr, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ks = load ptr, ptr %i.af, align 8, !tbaa !49
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ks, i32 noundef 24, ptr noundef nonnull @.str.131) #10
  br label %.thread289.i

bb.cg:                                            ; preds = %bb.ce
  br i1 %.not218.i, label %bb.ch, label %._crit_edge.i682

._crit_edge.i682:                                 ; preds = %bb.cg
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !135
  br label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.kt = zext i8 %i.kk to i64
  %i.ku = call noalias ptr @av_calloc(i64 noundef %i.kt, i64 noundef 16) #10 ; 3 uses
  store ptr %i.ku, ptr %.phi.trans.insert.i, align 8, !tbaa !135
  %.not220.i = icmp eq ptr %i.ku, null
  br i1 %.not220.i, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.kv = load ptr, ptr %i.af, align 8, !tbaa !49
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.kv, i32 noundef 16, ptr noundef nonnull @.str.132) #10
  br label %bb.cr

bb.cj:                                            ; preds = %bb.ch
  store i32 %i.kl, ptr %i.n, align 16, !tbaa !134
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %._crit_edge.i682
  %i.kw = phi ptr [ %.pre.i, %._crit_edge.i682 ], [ %i.ku, %bb.cj ]
  %i.kx = add nsw i64 %i.kh, -1                   ; 2 uses
  %i.ky = getelementptr inbounds nuw [16 x i8], ptr %i.kw, i64 %i.kx ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !327
  %.not221.i = icmp eq ptr %i.kz, null
  br i1 %.not221.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.la = load ptr, ptr %i.af, align 8, !tbaa !49
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.la, i32 noundef 24, ptr noundef nonnull @.str.133) #10
  br label %.thread289.i

bb.cm:                                            ; preds = %bb.ck
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store i32 %i.km, ptr %i.lb, align 8, !tbaa !328
  %i.lc = zext nneg i32 %i.km to i64              ; 3 uses
  %i.ld = call noalias ptr @av_malloc(i64 noundef %i.lc) #10 ; 3 uses
  %i.le = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !135
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr %i.le, i64 %i.kx
  store ptr %i.ld, ptr %i.lf, align 8, !tbaa !327
  %.not222.i = icmp eq ptr %i.ld, null
  br i1 %.not222.i, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.lg = load ptr, ptr %i.af, align 8, !tbaa !49
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lg, i32 noundef 16, ptr noundef nonnull @.str.134) #10
  br label %bb.cr

bb.co:                                            ; preds = %bb.cm
  %i.lh = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ld, ptr align 1 %i.lh, i64 %i.lc, i1 false)
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lc
  store ptr %i.li, ptr %i.ab, align 8, !tbaa !56
  %i.lj = load i32, ptr %i.aq, align 4, !tbaa !316 ; 2 uses
  %i.lk = add nsw i32 %i.lj, 1
  store i32 %i.lk, ptr %i.aq, align 4, !tbaa !316
  %i.ll = load i32, ptr %i.n, align 16, !tbaa !134
  %.not223.i = icmp slt i32 %i.lj, %i.ll
  br i1 %.not223.i, label %mjpeg_decode_app.exit.thread, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.lm = load ptr, ptr %i.af, align 8, !tbaa !49
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lm, i32 noundef 24, ptr noundef nonnull @.str.135) #10
  br label %mjpeg_decode_app.exit.thread

bb.cq:                                            ; preds = %bb.bt, %bb.ae
  %.3.i680 = phi i32 [ %i.jh, %bb.bt ], [ %i.fu, %bb.ae ] ; 2 uses
  %i.ln = icmp slt i32 %.3.i680, 0
  br i1 %i.ln, label %.thread292.i, label %.thread289.i

.thread292.i:                                     ; preds = %bb.cq
  %i.lo = load ptr, ptr %i.af, align 8, !tbaa !49
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lo, i32 noundef 16, ptr noundef nonnull @.str.136) #10
  br label %mjpeg_decode_app.exit.thread

.thread289.i:                                     ; preds = %.thread279.i, %bb.bf, %.thread281.i, %bb.cq, %bb.cl, %bb.cf, %bb.cd, %bb.cb, %bb.bx, %bb.bs, %bb.bq, %bb.bn, %bb.bm, %bb.bk, %bb.bj, %bb.bi, %.thread.i, %bb.bb, %bb.ax, %bb.aw, %bb.as, %bb.ao, %bb.ak, %bb.ab, %bb.w, %bb.v, %bb.q
  %.3291.i = phi i32 [ %.3.i680, %bb.cq ], [ %i.dp, %.thread279.i ], [ %i.dp, %bb.bx ], [ %i.gj, %bb.ak ], [ %i.de, %bb.q ], [ %i.ix, %bb.bq ], [ %i.ix, %bb.bs ], [ %i.in, %bb.bm ], [ %i.in, %bb.bn ], [ %i.in, %bb.bk ], [ %i.in, %bb.bj ], [ %i.in, %bb.bi ], [ %i.ho, %bb.bb ], [ %i.gy, %bb.as ], [ %i.gy, %bb.aw ], [ %i.gy, %bb.ax ], [ %i.dp, %bb.ao ], [ %i.fe, %bb.ab ], [ %i.dp, %bb.w ], [ %i.ea, %bb.v ], [ %i.km, %bb.cf ], [ %i.km, %bb.cb ], [ %i.km, %bb.cd ], [ %i.km, %bb.cl ], [ %i.hy, %.thread.i ], [ %i.dp, %bb.bf ], [ %i.dp, %.thread281.i ] ; 2 uses
  %.not300.i = icmp eq i32 %.3291.i, 0
  br i1 %.not300.i, label %mjpeg_decode_app.exit.thread, label %.thread289.thread296.i

.thread289.thread296.sink.split.i:                ; preds = %bb.bz, %bb.by
  %.sink315.i = phi i32 [ -7, %bb.by ], [ -9, %bb.bz ]
  %.str.128.sink.i = phi ptr [ @.str.127, %bb.by ], [ @.str.128, %bb.bz ]
  %i.lp = add nsw i32 %.sink315.i, %i.dp
  %i.lq = load ptr, ptr %i.af, align 8, !tbaa !49
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lq, i32 noundef 24, ptr noundef nonnull %.str.128.sink.i) #10
  br label %.thread289.thread296.i

.thread289.thread296.i:                           ; preds = %bb.bv, %bb.bw, %bb.bu, %.thread289.thread296.sink.split.i, %.thread289.i
  %.3291298.i = phi i32 [ %.3291.i, %.thread289.i ], [ %i.lp, %.thread289.thread296.sink.split.i ], [ %i.jm, %bb.bu ], [ %i.jm, %bb.bw ], [ %i.jm, %bb.bv ]
  %i.lr = load ptr, ptr %i.ab, align 8, !tbaa !56
  %i.ls = zext nneg i32 %.3291298.i to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.ls
  store ptr %i.lt, ptr %i.ab, align 8, !tbaa !56
  br label %mjpeg_decode_app.exit.thread

mjpeg_decode_app.exit.thread:                     ; preds = %.thread289.i, %.thread289.thread296.i, %.thread292.i, %bb.u, %bb.cp, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %mjpeg_decode_com.exit

bb.cr:                                            ; preds = %bb.cn, %bb.ci, %bb.p, %mjpeg_parse_len.exit.thread.i
  %.1200.i = phi i32 [ -12, %bb.cn ], [ -1094995529, %mjpeg_parse_len.exit.thread.i ], [ -1094995529, %bb.p ], [ -12, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  %i.lu = call i32 @av_strerror(i32 noundef range(i32 -2147483648, 0) %.1200.i, ptr noundef nonnull %i.d, i64 noundef 64) #10 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.57, ptr noundef nonnull %i.d) #10
  br label %mjpeg_decode_com.exit

bb.cs:                                            ; preds = %bb.m
  switch i8 %i.cb, label %mjpeg_decode_com.exit [
    i8 -2, label %bb.ct
    i8 -37, label %bb.dn
  ]

bb.ct:                                            ; preds = %bb.cs
  %i.lv = load ptr, ptr %i.ab, align 8, !tbaa !66 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 2 ; 2 uses
  store ptr %i.lw, ptr %i.ab, align 8, !tbaa !66
  %i.lx = load i16, ptr %i.lv, align 1, !tbaa !63 ; 2 uses
  %i.ly = call i16 @llvm.bswap.i16(i16 %i.lx)     ; 3 uses
  %i.lz = zext i16 %i.ly to i32                   ; 3 uses
  %i.ma = icmp ult i16 %i.ly, 2
  br i1 %i.ma, label %mjpeg_parse_len.exit.thread.i693, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.mb = load ptr, ptr %i.ad, align 16, !tbaa !58
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = ptrtoint ptr %i.lw to i64
  %i.me = sub i64 %i.mc, %i.md
  %i.mf = trunc i64 %i.me to i32
  %i.mg = add nsw i32 %i.lz, -2                   ; 5 uses
  %i.mh = icmp sgt i32 %i.mg, %i.mf
  br i1 %i.mh, label %mjpeg_parse_len.exit.thread.i693, label %mjpeg_parse_len.exit.i684

mjpeg_parse_len.exit.thread.i693:                 ; preds = %bb.cu, %bb.ct
  %i.mi = load ptr, ptr %i.af, align 8, !tbaa !49
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.mi, i32 noundef 16, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.137, i32 noundef %i.lz) #10
  br label %.critedge

mjpeg_parse_len.exit.i684:                        ; preds = %bb.cu
  %.not.i685 = icmp eq i32 %i.mg, 0
  br i1 %.not.i685, label %mjpeg_decode_com.exit, label %bb.cv

bb.cv:                                            ; preds = %mjpeg_parse_len.exit.i684
  %i.mj = add nsw i32 %i.lz, -1
  %i.mk = zext nneg i32 %i.mj to i64
  %i.ml = call noalias ptr @av_malloc(i64 noundef %i.mk) #10 ; 19 uses
end_hunk_0
