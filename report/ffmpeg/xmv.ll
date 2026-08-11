inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@xmv_read_packet:bb.a
  %i.fy = add i64 %i.ft, %i.fx                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !40 ; 5 uses
  %wide.trip.count.i.i = zext i16 %i.fw to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.gb = icmp ult i16 %i.fw, 4
  br i1 %i.gb, label %.epil.preheader, label %.lr.ph146.i.i.new

.lr.ph146.i.i.new:                                ; preds = %.lr.ph146.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 65532
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph146.i.i.new
  %indvars.iv152.i.i = phi i64 [ 0, %.lr.ph146.i.i.new ], [ %indvars.iv.next153.i.i.3, %bb.v ] ; 5 uses
  %.0118143.i.i = phi i64 [ %i.fy, %.lr.ph146.i.i.new ], [ %i.gz, %bb.v ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph146.i.i.new ], [ %niter.next.3, %bb.v ]
  %i.gc = getelementptr inbounds nuw [64 x i8], ptr %i.ga, i64 %indvars.iv152.i.i ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  store i64 %.0118143.i.i, ptr %i.gd, align 8, !tbaa !91
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 44
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !87
  %i.gg = zext i32 %i.gf to i64
  %i.gh = add i64 %.0118143.i.i, %i.gg            ; 2 uses
  %i.gi = getelementptr inbounds nuw [64 x i8], ptr %i.ga, i64 %indvars.iv152.i.i ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 112
  store i64 %i.gh, ptr %i.gj, align 8, !tbaa !91
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 108
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !87
  %i.gm = zext i32 %i.gl to i64
  %i.gn = add i64 %i.gh, %i.gm                    ; 2 uses
  %i.go = getelementptr inbounds nuw [64 x i8], ptr %i.ga, i64 %indvars.iv152.i.i ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 176
  store i64 %i.gn, ptr %i.gp, align 8, !tbaa !91
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 172
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !87
  %i.gs = zext i32 %i.gr to i64
  %i.gt = add i64 %i.gn, %i.gs                    ; 2 uses
  %i.gu = getelementptr inbounds nuw [64 x i8], ptr %i.ga, i64 %indvars.iv152.i.i ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 240
  store i64 %i.gt, ptr %i.gv, align 8, !tbaa !91
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 236
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !87
  %i.gy = zext i32 %i.gx to i64
  %i.gz = add i64 %i.gt, %i.gy                    ; 2 uses
  %indvars.iv.next153.i.i.3 = add nuw nsw i64 %indvars.iv152.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge147.i.i.loopexit.unr-lcssa, label %bb.v, !llvm.loop !92

._crit_edge147.i.i.loopexit.unr-lcssa:            ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge147.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge147.i.i.loopexit.unr-lcssa, %.lr.ph146.i.i
  %indvars.iv152.i.i.epil.init = phi i64 [ 0, %.lr.ph146.i.i ], [ %indvars.iv.next153.i.i.3, %._crit_edge147.i.i.loopexit.unr-lcssa ]
  %.0118143.i.i.epil.init = phi i64 [ %i.fy, %.lr.ph146.i.i ], [ %i.gz, %._crit_edge147.i.i.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod58)
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.epil.preheader
  %indvars.iv152.i.i.epil = phi i64 [ %indvars.iv152.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next153.i.i.epil, %bb.w ] ; 2 uses
  %.0118143.i.i.epil = phi i64 [ %.0118143.i.i.epil.init, %.epil.preheader ], [ %i.hf, %bb.w ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.w ]
  %i.ha = getelementptr inbounds nuw [64 x i8], ptr %i.ga, i64 %indvars.iv152.i.i.epil ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  store i64 %.0118143.i.i.epil, ptr %i.hb, align 8, !tbaa !91
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 44
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !87
  %i.he = zext i32 %i.hd to i64
  %i.hf = add i64 %.0118143.i.i.epil, %i.he
  %indvars.iv.next153.i.i.epil = add nuw nsw i64 %indvars.iv152.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge147.i.i, label %bb.w, !llvm.loop !93

._crit_edge147.i.i:                               ; preds = %._crit_edge147.i.i.loopexit.unr-lcssa, %bb.w, %._crit_edge.i.i
  %.not131.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not131.i.i, label %xmv_fetch_new_packet.exit, label %bb.x

bb.x:                                             ; preds = %._crit_edge147.i.i
  %i.hg = load i32, ptr %i.an, align 8, !tbaa !62
  %.not132.i.i = icmp eq i32 %i.hg, 0
  br i1 %.not132.i.i, label %xmv_fetch_new_packet.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hh = getelementptr inbounds nuw i8, ptr %i.z, i64 84 ; 2 uses
  %i.hi = call i32 @avio_rl32(ptr noundef %i.aa) #7 ; 2 uses
  %trunc.i.i.i = trunc i32 %i.hi to i16
  %i.hj = and i16 %trunc.i.i.i, 63
  %mask.i.i.i = call i16 @llvm.bitreverse.i16(i16 %i.hj)
  %i.hk = zext i16 %mask.i.i.i to i32
  %i.hl = shl i32 %i.hi, 1
  %i.hm = and i32 %i.hl, 896
  %i.hn = or disjoint i32 %i.hm, %i.hk
  %i.ho = call i32 @llvm.bswap.i32(i32 %i.hn)     ; 2 uses
  store i32 %i.ho, ptr %i.hh, align 4, !tbaa !14
  %i.hp = load i32, ptr %i.ai, align 8, !tbaa !61
  %i.hq = add i32 %i.hp, -4
  store i32 %i.hq, ptr %i.ai, align 8, !tbaa !61
  %i.hr = load i64, ptr %i.fu, align 8, !tbaa !90
  %i.hs = add i64 %i.hr, 4
  store i64 %i.hs, ptr %i.fu, align 8, !tbaa !90
  %i.ht = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !79 ; 3 uses
  %i.hv = icmp sgt i32 %i.hu, -1
  br i1 %i.hv, label %bb.z, label %xmv_fetch_new_packet.exit

bb.z:                                             ; preds = %bb.y
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !95
  %i.hy = icmp ult i32 %i.hu, %i.hx
  br i1 %i.hy, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 389) #7
  call void @abort() #8
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !96
  %i.ib = zext nneg i32 %i.hu to i64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.ib
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !97
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !64 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !99
  %i.ii = icmp slt i32 %i.ih, 4
  br i1 %i.ii, label %bb.ac, label %.thread139.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ij = call i32 @ff_alloc_extradata(ptr noundef nonnull %i.if, i32 noundef 4) #7 ; 2 uses
  %i.ik = icmp slt i32 %i.ij, 0
  br i1 %i.ik, label %xmv_process_packet_header.exit.thread.i, label %..thread139_crit_edge.i.i

..thread139_crit_edge.i.i:                        ; preds = %bb.ac
  %.pre156.i.i = load ptr, ptr %i.ie, align 8, !tbaa !64
  %.pre157.i.i = load i32, ptr %i.hh, align 4
  br label %.thread139.i.i

.thread139.i.i:                                   ; preds = %..thread139_crit_edge.i.i, %bb.ab
  %i.il = phi i32 [ %.pre157.i.i, %..thread139_crit_edge.i.i ], [ %i.ho, %bb.ab ]
  %i.im = phi ptr [ %.pre156.i.i, %..thread139_crit_edge.i.i ], [ %i.if, %bb.ab ]
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !100
  store i32 %i.il, ptr %i.io, align 1
  br label %xmv_fetch_new_packet.exit

xmv_process_packet_header.exit.thread.i:          ; preds = %bb.q, %.peel.next.i.i, %bb.ac, %bb.m, %.lr.ph.i.i, %bb.g, %bb.e
  %.7.i.ph.i = phi i32 [ %i.ij, %bb.ac ], [ -12, %bb.g ], [ -12, %bb.m ], [ %i.bs, %.lr.ph.i.i ], [ %i.ad, %bb.e ], [ -12, %bb.q ], [ %i.dp, %.peel.next.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %xmv_fetch_new_packet.exit.thread

xmv_fetch_new_packet.exit:                        ; preds = %._crit_edge147.i.i, %bb.x, %bb.y, %.thread139.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ip = load i64, ptr %i.p, align 8, !tbaa !59
  %i.iq = load i32, ptr %i.t, align 4, !tbaa !60
  %i.ir = zext i32 %i.iq to i64
  %i.is = add i64 %i.ip, %i.ir
  store i64 %i.is, ptr %i.n, align 8, !tbaa !54
  br label %bb.ad

bb.ad:                                            ; preds = %xmv_fetch_new_packet.exit, %bb.a
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 5 uses
  %i.iu = load i16, ptr %i.it, align 8, !tbaa !80 ; 2 uses
  %i.iv = icmp eq i16 %i.iu, 0
  br i1 %i.iv, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %.val = load ptr, ptr %i.b, align 8, !tbaa !15  ; 5 uses
  %i.iw = getelementptr i8, ptr %0, i64 32
  %.val26 = load ptr, ptr %i.iw, align 8, !tbaa !30 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 4 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !101
  %i.iz = call i64 @avio_seek(ptr noundef %.val26, i64 noundef %i.iy, i32 noundef 0) #7
  %i.ja = load i64, ptr %i.ix, align 8, !tbaa !101
  %.not.i29 = icmp eq i64 %i.iz, %i.ja
  br i1 %.not.i29, label %bb.af, label %xmv_fetch_video_packet.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.jb = call i32 @avio_rl32(ptr noundef %.val26) #7 ; 3 uses
  %i.jc = shl i32 %i.jb, 2
  %i.jd = and i32 %i.jc, 524284                   ; 2 uses
  %i.je = add nuw nsw i32 %i.jd, 4                ; 3 uses
  %i.jf = lshr i32 %i.jb, 17
  %i.jg = add nuw nsw i32 %i.jd, 8                ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 3 uses
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !102
  %i.jj = icmp ugt i32 %i.jg, %i.ji
  br i1 %i.jj, label %xmv_fetch_video_packet.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jk = call i32 @av_get_packet(ptr noundef %.val26, ptr noundef %1, i32 noundef %i.je) #7 ; 2 uses
  %.not46.i = icmp eq i32 %i.jk, %i.je
  br i1 %.not46.i, label %.lr.ph.preheader.i, label %xmv_fetch_video_packet.exit

.lr.ph.preheader.i:                               ; preds = %bb.ag
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !103 ; 5 uses
  %i.jn = zext nneg i32 %i.je to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jn
  %2 = ptrtoaddr ptr %i.jm to i64                 ; 2 uses
  %3 = shl i32 %i.jb, 2
  %i.jp = and i32 %3, 524284
  %4 = zext nneg i32 %i.jp to i64
  %5 = add nuw i64 %2, %4
  %6 = add i64 %5, 3
  %7 = sub i64 %6, %2                             ; 2 uses
  %8 = lshr i64 %7, 2
  %9 = add nuw nsw i64 %8, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %7, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %9, 9223372036854775800        ; 3 uses
  %i.jq = shl i64 %n.vec, 2
  %i.jr = getelementptr i8, ptr %i.jm, i64 %i.jq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.js = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.jm, i64 %i.js ; 3 uses
  %i.jt = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 1, !tbaa !14
  %wide.load57 = load <4 x i32>, ptr %i.jt, align 1, !tbaa !14
  %i.ju = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.jv = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load57)
  store <4 x i32> %i.ju, ptr %next.gep, align 1, !tbaa !14
  store <4 x i32> %i.jv, ptr %i.jt, align 1, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jw = icmp eq i64 %index.next, %n.vec
  br i1 %i.jw, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %9, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.0421.i.ph = phi ptr [ %i.jm, %.lr.ph.preheader.i ], [ %i.jr, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0421.i = phi ptr [ %i.jz, %.lr.ph.i ], [ %.0421.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.jx = load i32, ptr %.0421.i, align 1, !tbaa !14
  %i.jy = call i32 @llvm.bswap.i32(i32 %i.jx)
  store i32 %i.jy, ptr %.0421.i, align 1, !tbaa !14
  %i.jz = getelementptr inbounds nuw i8, ptr %.0421.i, i64 4 ; 2 uses
  %i.ka = icmp ult ptr %i.jz, %i.jo
  br i1 %i.ka, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !107

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block
  %.pre.i = load ptr, ptr %i.jl, align 8, !tbaa !103
  %i.kb = getelementptr inbounds nuw i8, ptr %.val, i64 52
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !108
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !109
  %i.ke = zext nneg i32 %i.jf to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %.val, i64 96 ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !110
  %i.kh = add nsw i64 %i.kg, %i.ke                ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.val, i64 88
  store i64 %i.kh, ptr %i.ki, align 8, !tbaa !111
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 0, ptr %i.kj, align 8, !tbaa !112
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.kh, ptr %i.kk, align 8, !tbaa !113
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 -9223372036854775808, ptr %i.kl, align 8, !tbaa !114
  store i64 %i.kh, ptr %i.kf, align 8, !tbaa !110
  %i.km = load i8, ptr %.pre.i, align 1, !tbaa !14
  %.not47.i = icmp sgt i8 %i.km, -1
  %i.kn = zext i1 %.not47.i to i32
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.kn, ptr %i.ko, align 8, !tbaa !115
  %i.kp = load i32, ptr %i.jh, align 8, !tbaa !102
  %i.kq = sub i32 %i.kp, %i.jg
  store i32 %i.kq, ptr %i.jh, align 8, !tbaa !102
  %i.kr = zext nneg i32 %i.jg to i64
  %i.ks = load i64, ptr %i.ix, align 8, !tbaa !101
  %i.kt = add i64 %i.ks, %i.kr
  store i64 %i.kt, ptr %i.ix, align 8, !tbaa !101
  br label %xmv_fetch_video_packet.exit.thread39

bb.ah:                                            ; preds = %bb.ad
  %i.ku = zext i16 %i.iu to i64
  %i.kv = add nuw nsw i64 %i.ku, 4294967295
  %.val27 = load ptr, ptr %i.b, align 8, !tbaa !15 ; 3 uses
  %i.kw = getelementptr i8, ptr %0, i64 32
  %.val28 = load ptr, ptr %i.kw, align 8, !tbaa !30 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.val27, i64 104
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !40
  %i.kz = and i64 %i.kv, 4294967295
  %i.la = getelementptr inbounds nuw [64 x i8], ptr %i.ky, i64 %i.kz ; 6 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 48 ; 4 uses
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !91
  %i.ld = call i64 @avio_seek(ptr noundef %.val28, i64 noundef %i.lc, i32 noundef 0) #7
  %i.le = load i64, ptr %i.lb, align 8, !tbaa !91
  %.not.i31 = icmp eq i64 %i.ld, %i.le
  br i1 %.not.i31, label %bb.ai, label %xmv_fetch_video_packet.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.lf = getelementptr inbounds nuw i8, ptr %.val27, i64 72
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !57
  %i.lh = add i32 %i.lg, 1
  %i.li = getelementptr inbounds nuw i8, ptr %.val27, i64 76
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !58
  %i.lk = icmp ult i32 %i.lh, %i.lj
  br i1 %i.lk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ll = getelementptr inbounds nuw i8, ptr %i.la, i64 56
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !51
  %i.ln = getelementptr inbounds nuw i8, ptr %i.la, i64 44
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !87
  %..i = call i32 @llvm.umin.i32(i32 %i.lm, i32 %i.lo)
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.lp = getelementptr inbounds nuw i8, ptr %i.la, i64 44
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !87
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.025.i = phi i32 [ %..i, %bb.aj ], [ %i.lq, %bb.ak ] ; 3 uses
  %i.lr = call i32 @av_get_packet(ptr noundef %.val28, ptr noundef %1, i32 noundef %.025.i) #7 ; 2 uses
  %i.ls = icmp slt i32 %i.lr, 1
  br i1 %i.ls, label %xmv_fetch_video_packet.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lt = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !50
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.lu, ptr %i.lv, align 4, !tbaa !109
  %i.lw = getelementptr inbounds nuw i8, ptr %i.la, i64 44 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !87
  %i.ly = sub i32 %i.lx, %.025.i
  store i32 %i.ly, ptr %i.lw, align 4, !tbaa !87
  %i.lz = zext i32 %.025.i to i64
  %i.ma = load i64, ptr %i.lb, align 8, !tbaa !91
  %i.mb = add i64 %i.ma, %i.lz
  store i64 %i.mb, ptr %i.lb, align 8, !tbaa !91
  br label %xmv_fetch_video_packet.exit.thread39

xmv_fetch_video_packet.exit:                      ; preds = %bb.al, %bb.ag
  %.0 = phi i32 [ %i.jk, %bb.ag ], [ %i.lr, %bb.al ] ; 2 uses
  %.not24 = icmp eq i32 %.0, 0
  br i1 %.not24, label %xmv_fetch_video_packet.exit.thread39, label %xmv_fetch_video_packet.exit.thread

xmv_fetch_video_packet.exit.thread:               ; preds = %bb.ah, %bb.af, %bb.ae, %xmv_fetch_video_packet.exit
  %.037 = phi i32 [ %.0, %xmv_fetch_video_packet.exit ], [ -1094995529, %bb.ae ], [ -1094995529, %bb.af ], [ -1094995529, %bb.ah ]
  store i16 0, ptr %i.it, align 8, !tbaa !80
  %i.mc = load i32, ptr %i.f, align 4, !tbaa !58
  store i32 %i.mc, ptr %i.d, align 8, !tbaa !57
  br label %xmv_fetch_new_packet.exit.thread

xmv_fetch_video_packet.exit.thread39:             ; preds = %bb.am, %._crit_edge.i, %xmv_fetch_video_packet.exit
  %i.md = load i16, ptr %i.it, align 8, !tbaa !80
  %i.me = add i16 %i.md, 1                        ; 2 uses
  store i16 %i.me, ptr %i.it, align 8, !tbaa !80
  %i.mf = getelementptr inbounds nuw i8, ptr %i.c, i64 34
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !56
  %.not25 = icmp ult i16 %i.me, %i.mg
  br i1 %.not25, label %xmv_fetch_new_packet.exit.thread, label %bb.an

bb.an:                                            ; preds = %xmv_fetch_video_packet.exit.thread39
  store i16 0, ptr %i.it, align 8, !tbaa !80
  %i.mh = load i32, ptr %i.d, align 8, !tbaa !57
  %i.mi = add i32 %i.mh, 1
  store i32 %i.mi, ptr %i.d, align 8, !tbaa !57
  br label %xmv_fetch_new_packet.exit.thread

xmv_fetch_new_packet.exit.thread:                 ; preds = %xmv_process_packet_header.exit.thread.i, %bb.d, %bb.c, %bb.b, %xmv_fetch_video_packet.exit.thread39, %bb.an, %xmv_fetch_video_packet.exit.thread
  %.021 = phi i32 [ 0, %xmv_fetch_video_packet.exit.thread39 ], [ %.037, %xmv_fetch_video_packet.exit.thread ], [ 0, %bb.an ], [ %.7.i.ph.i, %xmv_process_packet_header.exit.thread.i ], [ -1094995529, %bb.d ], [ -1094995529, %bb.c ], [ -541478725, %bb.b ]
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @xmv_read_close(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @av_freep(ptr noundef nonnull %i.c) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i64 @avio_skip(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @avio_rl32(ptr noundef) local_unnamed_addr #3

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @avio_rl16(ptr noundef) local_unnamed_addr #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ff_wav_codec_get_id(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @avio_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ffio_read_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @avformat_new_stream(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @avpriv_set_pts_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare i32 @ff_alloc_extradata(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_get_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #5

end_hunk_0
