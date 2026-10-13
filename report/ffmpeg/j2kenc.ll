Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/j2kenc?download=true
inline.NumInlined: 83
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@j2kenc_init:bb.a
  %i.hu = trunc i64 %i.ht to i32
  %i.hv = sub i32 0, %i.hu                        ; 2 uses
  store i32 %i.hv, ptr %i.gx, align 8, !tbaa !39
  store i32 %i.hv, ptr %i.gy, align 8, !tbaa !39
  %i.hw = load i32, ptr %i.fx, align 8, !tbaa !39
  %i.hx = sext i32 %..i to i64
  %i.hy = sub nsw i64 0, %i.hx
  %i.hz = zext nneg i32 %i.hw to i64
  %i.ia = ashr i64 %i.hy, %i.hz
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = sub i32 0, %i.ib                        ; 2 uses
  store i32 %i.ic, ptr %i.hc, align 4, !tbaa !39
  store i32 %i.ic, ptr %i.hd, align 4, !tbaa !39
  %i.id = load i32, ptr %i.fy, align 4, !tbaa !39
  %i.ie = sext i32 %i.hf to i64
  %i.if = sub nsw i64 0, %i.ie
  %i.ig = zext nneg i32 %i.id to i64
  %i.ih = ashr i64 %i.if, %i.ig
  %i.ii = trunc i64 %i.ih to i32
  %i.ij = sub i32 0, %i.ii                        ; 2 uses
  store i32 %i.ij, ptr %i.hg, align 8, !tbaa !39
  store i32 %i.ij, ptr %i.hh, align 8, !tbaa !39
  %i.ik = load i32, ptr %i.fy, align 4, !tbaa !39
  %i.il = sext i32 %i.hl to i64
  %i.im = sub nsw i64 0, %i.il
  %i.in = zext nneg i32 %i.ik to i64
  %i.io = ashr i64 %i.im, %i.in
  %i.ip = trunc i64 %i.io to i32
  %i.iq = sub i32 0, %i.ip                        ; 2 uses
  store i32 %i.iq, ptr %i.hm, align 4, !tbaa !39
  store i32 %i.iq, ptr %i.hn, align 4, !tbaa !39
  %i.ir = load i32, ptr %i.fx, align 8, !tbaa !39
  %i.is = shl nuw i32 1, %i.ir
  %i.it = load i32, ptr %i.fy, align 4, !tbaa !39
  %i.iu = shl nuw i32 1, %i.it
  br label %.thread104.i

.thread104.i:                                     ; preds = %.preheader.preheader.i, %bb.af
  %i.iv = phi i32 [ %i.is, %.preheader.preheader.i ], [ 1, %bb.af ]
  %i.iw = phi i32 [ %i.iu, %.preheader.preheader.i ], [ 1, %bb.af ]
  %.shrunk.in.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv.i88
  %.shrunk.i = load i8, ptr %.shrunk.in.i, align 1, !tbaa !52
  %i.ix = zext i8 %.shrunk.i to i32
  %i.iy = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.iz = call i32 @ff_jpeg2000_init_component(ptr noundef nonnull %i.gu, ptr noundef nonnull %i.d, ptr noundef nonnull %i.cs, i32 noundef %i.ix, i32 noundef %i.iv, i32 noundef %i.iw, ptr noundef %i.iy) #11 ; 2 uses
  %i.ja = icmp sgt i32 %i.iz, -1
  br i1 %i.ja, label %bb.ae, label %init_tiles.exit, !llvm.loop !125

bb.ag:                                            ; preds = %bb.ae
  %indvars.iv.next138.i = add nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %i.jb = load i32, ptr %i.fg, align 8, !tbaa !60 ; 2 uses
  %i.jc = icmp slt i32 %i.gp, %i.jb
  br i1 %i.jc, label %bb.ac, label %._crit_edge.loopexit.i89, !llvm.loop !126

._crit_edge.loopexit.i89:                         ; preds = %bb.ag
  %i.jd = trunc nsw i64 %indvars.iv.next138.i to i32
  %.pre140.i = load i32, ptr %i.fq, align 4, !tbaa !62
  br label %._crit_edge.i85

._crit_edge.i85:                                  ; preds = %._crit_edge.loopexit.i89, %.preheader113.i
  %i.je = phi i32 [ %.pre140.i, %._crit_edge.loopexit.i89 ], [ %i.gb, %.preheader113.i ] ; 4 uses
  %.pr.i = phi i32 [ %i.jb, %._crit_edge.loopexit.i89 ], [ %i.gc, %.preheader113.i ] ; 3 uses
  %.193.lcssa.i = phi i32 [ %i.jd, %._crit_edge.loopexit.i89 ], [ %.092125.i, %.preheader113.i ]
  %i.jf = icmp slt i32 %i.ge, %i.je
  br i1 %i.jf, label %.preheader113.i, label %._crit_edge127.i, !llvm.loop !127

._crit_edge127.i:                                 ; preds = %._crit_edge.i85
  %i.jg = icmp sgt i32 %i.je, 0
  br i1 %i.jg, label %.preheader.lr.ph.i.i, label %.loopexit

.preheader.lr.ph.i.i:                             ; preds = %._crit_edge127.i
  %i.jh = icmp sgt i32 %.pr.i, 0
  %i.ji = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  br i1 %i.jh, label %.preheader.lr.ph.split.i.i, label %.loopexit

.preheader.lr.ph.split.i.i:                       ; preds = %.preheader.lr.ph.i.i
  %i.jj = load ptr, ptr %i.fu, align 8, !tbaa !63
  %i.jk = load i32, ptr %i.bt, align 4, !tbaa !51 ; 3 uses
  %i.jl = icmp sgt i32 %i.jk, 0
  %i.jm = sitofp nsz i32 %i.jk to double
  br i1 %i.jl, label %.preheader.lr.ph.split.split.i.i, label %.loopexit

.preheader.lr.ph.split.split.i.i:                 ; preds = %.preheader.lr.ph.split.i.i
  %i.jn = load i32, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %i.jo = icmp sgt i32 %i.jn, 0
  br i1 %i.jo, label %.preheader.us.preheader.i.i, label %.loopexit

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.split.split.i.i
  %i.jp = zext nneg i32 %.pr.i to i64             ; 2 uses
  %wide.trip.count73.i.i = zext nneg i32 %i.je to i64
  %wide.trip.count63.i.i = zext nneg i32 %i.jk to i64
  %wide.trip.count.i.i = zext nneg i32 %i.jn to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge50.split52.us.us.i.i, %.preheader.us.preheader.i.i
  %indvars.iv70.i.i = phi i64 [ 0, %.preheader.us.preheader.i.i ], [ %indvars.iv.next71.i.i, %._crit_edge50.split52.us.us.i.i ] ; 2 uses
  %i.jq = mul nuw nsw i64 %indvars.iv70.i.i, %i.jp
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %i.jj, i64 %i.jq
  br label %.lr.ph48.us.us.i.i

.lr.ph48.us.us.i.i:                               ; preds = %._crit_edge.split.us.us.us.i.i, %.preheader.us.i.i
  %indvars.iv65.i.i = phi i64 [ %indvars.iv.next66.i.i, %._crit_edge.split.us.us.us.i.i ], [ 0, %.preheader.us.i.i ] ; 2 uses
  %i.js = getelementptr inbounds nuw [16 x i8], ptr %i.jr, i64 %indvars.iv65.i.i ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !67
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 8 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %..loopexit_crit_edge.us.us.us.i.i, %.lr.ph48.us.us.i.i
  %indvars.iv60.i.i = phi i64 [ %indvars.iv.next61.i.i, %..loopexit_crit_edge.us.us.us.i.i ], [ 0, %.lr.ph48.us.us.i.i ] ; 3 uses
  %i.jv = getelementptr inbounds nuw [408 x i8], ptr %i.jt, i64 %indvars.iv60.i.i ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 368
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 372
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !39
  %i.jz = load i32, ptr %i.jw, align 8, !tbaa !39
  %i.ka = sub nsw i32 %i.jy, %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jv, i64 376
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 380
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !39
  %i.ke = load i32, ptr %i.kb, align 8, !tbaa !39
  %i.kf = sub nsw i32 %i.kd, %i.ke
  %indvars.iv.next61.i.i = add nuw nsw i64 %indvars.iv60.i.i, 1 ; 3 uses
  %i.kg = and i64 %indvars.iv.next61.i.i, 2
  %.not.us.us.us.i.i = icmp eq i64 %i.kg, 0
  br i1 %.not.us.us.us.i.i, label %.thread.us.us.us.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kh = load i32, ptr %i.fx, align 8, !tbaa !39
  %i.ki = shl nuw i32 1, %i.kh
  %i.kj = load i32, ptr %i.fy, align 4, !tbaa !39
  %i.kk = shl i32 %i.ki, %i.kj
  %i.kl = shl i32 %i.kk, 3
  br label %.thread.us.us.us.i.i

.thread.us.us.us.i.i:                             ; preds = %bb.ai, %bb.ah
  %i.km = phi i32 [ %i.kl, %bb.ai ], [ 8, %bb.ah ]
  %i.kn = mul nsw i32 %i.kf, %i.ka
  %i.ko = sitofp nsz i32 %i.kn to double
  %i.kp = fmul nnan nsz double %i.jm, %i.ko
  %i.kq = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv60.i.i
  br label %bb.aj

bb.aj:                                            ; preds = %bb.am, %.thread.us.us.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.am ], [ 0, %.thread.us.us.us.i.i ] ; 4 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv.i.i
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !39 ; 2 uses
  %i.kt = icmp sgt i32 %i.ks, 0
  br i1 %i.kt, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ku = load ptr, ptr %i.ju, align 8, !tbaa !68
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv.i.i
  store double 0.000000e+00, ptr %i.kv, align 8, !tbaa !70
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.kw = load i8, ptr %i.kq, align 1, !tbaa !52
  %i.kx = uitofp i8 %i.kw to double
  %i.ky = fmul nsz double %i.kp, %i.kx
  %i.kz = mul i32 %i.ks, %i.km
  %i.la = sitofp nsz i32 %i.kz to double
  %i.lb = fdiv nsz double %i.ky, %i.la
  %i.lc = load ptr, ptr %i.ju, align 8, !tbaa !68
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv.i.i ; 2 uses
  %i.le = load double, ptr %i.ld, align 8, !tbaa !70
  %i.lf = fadd nsz double %i.le, %i.lb
  store double %i.lf, ptr %i.ld, align 8, !tbaa !70
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %..loopexit_crit_edge.us.us.us.i.i, label %bb.aj, !llvm.loop !128

..loopexit_crit_edge.us.us.us.i.i:                ; preds = %bb.am
  %exitcond64.not.i.i = icmp eq i64 %indvars.iv.next61.i.i, %wide.trip.count63.i.i
  br i1 %exitcond64.not.i.i, label %._crit_edge.split.us.us.us.i.i, label %bb.ah, !llvm.loop !129

._crit_edge.split.us.us.us.i.i:                   ; preds = %..loopexit_crit_edge.us.us.us.i.i
  %indvars.iv.next66.i.i = add nuw nsw i64 %indvars.iv65.i.i, 1 ; 2 uses
  %exitcond69.not.i.i = icmp eq i64 %indvars.iv.next66.i.i, %i.jp
  br i1 %exitcond69.not.i.i, label %._crit_edge50.split52.us.us.i.i, label %.lr.ph48.us.us.i.i, !llvm.loop !130

._crit_edge50.split52.us.us.i.i:                  ; preds = %._crit_edge.split.us.us.us.i.i
  %indvars.iv.next71.i.i = add nuw nsw i64 %indvars.iv70.i.i, 1 ; 2 uses
  %exitcond74.not.i.i = icmp eq i64 %indvars.iv.next71.i.i, %wide.trip.count73.i.i
  br i1 %exitcond74.not.i.i, label %.loopexit, label %.preheader.us.i.i, !llvm.loop !131

.loopexit:                                        ; preds = %._crit_edge50.split52.us.us.i.i, %.preheader115.i, %._crit_edge127.i, %.preheader.lr.ph.i.i, %.preheader.lr.ph.split.i.i, %.preheader.lr.ph.split.split.i.i, %.preheader113.lr.ph.i
  %i.lg = load ptr, ptr %i.h, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lg, i32 noundef 48, ptr noundef nonnull @.str.34) #11
  br label %init_tiles.exit

init_tiles.exit:                                  ; preds = %bb.ad, %bb.ac, %.thread104.i, %init_quantization.exit, %bb.s, %.loopexit
  %.068 = phi i32 [ 0, %.loopexit ], [ %i.cm, %bb.s ], [ %i.iz, %.thread104.i ], [ -12, %init_quantization.exit ], [ -12, %bb.ac ], [ -12, %bb.ad ]
  ret i32 %.068
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @encode_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %4 = alloca %struct.Jpeg2000T1Context, align 8  ; 28 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 54 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30
  %i.e = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.d) #11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !197
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !198
  %i.j = mul i32 %i.g, 9
  %i.k = mul i32 %i.j, %i.i
  %i.l = add nsw i32 %i.k, 16384
  %i.m = sext i32 %i.l to i64
  %i.n = tail call i32 @ff_alloc_packet(ptr noundef %0, ptr noundef %1, i64 noundef %i.m) #11 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %put_siz.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !200  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !201
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 200 uses
  store ptr %i.q, ptr %i.s, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !202
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 9 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !72
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %2, ptr %i.y, align 8, !tbaa !203
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !208
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.ab, 100000000
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !209
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 7 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !52
  %i.ag = icmp ugt i8 %i.af, 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 5 uses
  %i.aj = load i32, ptr %i.ah, align 8, !tbaa !60 ; 6 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !62 ; 6 uses
  %i.al = mul nsw i32 %i.ak, %i.aj
  %i.am = icmp sgt i32 %i.al, 0                   ; 2 uses
  br i1 %i.ag, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %i.am, label %.lr.ph110.i, label %copy_frame_16.exit.thread456

.lr.ph110.i:                                      ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !63 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !54
  %.not.i = icmp eq i8 %i.aq, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  br i1 %.not.i, label %.lr.ph110.split.us.i, label %.lr.ph110.split.i

.lr.ph110.split.us.i:                             ; preds = %.lr.ph110.i
  %i.at = load ptr, ptr %2, align 8, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.us.i, %.lr.ph110.split.us.i
  %i.av = phi i32 [ %i.do, %.loopexit.us.i ], [ %i.ak, %.lr.ph110.split.us.i ] ; 2 uses
  %i.aw = phi i32 [ %i.dp, %.loopexit.us.i ], [ %i.aj, %.lr.ph110.split.us.i ] ; 2 uses
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %.loopexit.us.i ], [ 0, %.lr.ph110.split.us.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %indvars.iv141.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 368 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 376
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !39 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 380 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !39 ; 2 uses
  %i.be = icmp slt i32 %i.bb, %i.bd
  br i1 %i.be, label %.lr.ph107.us.i, label %.loopexit.us.i

.lr.ph107.us.i:                                   ; preds = %bb.d
  %i.bf = load i32, ptr %i.az, align 8, !tbaa !39 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 372 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !39 ; 4 uses
  %i.bi = icmp slt i32 %i.bf, %i.bh
  br i1 %i.bi, label %.lr.ph107.split.us112.preheader.i, label %.loopexit.us.i

.lr.ph107.split.us112.preheader.i:                ; preds = %.lr.ph107.us.i
  %i.bj = load i32, ptr %i.au, align 8, !tbaa !39 ; 2 uses
  %i.bk = mul nsw i32 %i.bj, %i.bb
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %i.at, i64 %i.bl
  %i.bn = load i32, ptr %i.ar, align 4, !tbaa !51 ; 3 uses
  %i.bo = mul nsw i32 %i.bn, %i.bf
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.bp
  br label %.lr.ph107.split.us112.i

.lr.ph107.split.us112.i:                          ; preds = %._crit_edge100.us.i, %.lr.ph107.split.us112.preheader.i
  %i.br = phi i32 [ %i.dc, %._crit_edge100.us.i ], [ %i.bd, %.lr.ph107.split.us112.preheader.i ] ; 2 uses
  %i.bs = phi i32 [ %i.dd, %._crit_edge100.us.i ], [ %i.bj, %.lr.ph107.split.us112.preheader.i ] ; 2 uses
  %i.bt = phi i32 [ %i.de, %._crit_edge100.us.i ], [ %i.bh, %.lr.ph107.split.us112.preheader.i ] ; 3 uses
  %i.bu = phi i32 [ %i.df, %._crit_edge100.us.i ], [ %i.bn, %.lr.ph107.split.us112.preheader.i ] ; 3 uses
  %i.bv = phi i32 [ %i.dg, %._crit_edge100.us.i ], [ %i.bh, %.lr.ph107.split.us112.preheader.i ] ; 4 uses
  %i.bw = phi i32 [ %i.dh, %._crit_edge100.us.i ], [ %i.bn, %.lr.ph107.split.us112.preheader.i ] ; 3 uses
  %i.bx = phi i32 [ %i.di, %._crit_edge100.us.i ], [ %i.bh, %.lr.ph107.split.us112.preheader.i ] ; 2 uses
  %.169104.us113.i = phi ptr [ %i.dl, %._crit_edge100.us.i ], [ %i.bq, %.lr.ph107.split.us112.preheader.i ] ; 2 uses
  %.173103.us114.i = phi i32 [ %i.dm, %._crit_edge100.us.i ], [ %i.bb, %.lr.ph107.split.us112.preheader.i ]
  %.074102.us.i = phi i32 [ %.175.lcssa.us.i, %._crit_edge100.us.i ], [ 0, %.lr.ph107.split.us112.preheader.i ] ; 3 uses
  %i.by = load i32, ptr %i.az, align 8, !tbaa !39 ; 4 uses
  %i.bz = icmp slt i32 %i.by, %i.bx
  br i1 %i.bz, label %.preheader.lr.ph.us.i, label %._crit_edge100.us.i

.preheader.lr.ph.us.i:                            ; preds = %.lr.ph107.split.us112.i
  %i.ca = icmp sgt i32 %i.bw, 0
  br i1 %i.ca, label %.preheader.us116.preheader.i, label %.preheader.lr.ph.split.us.us.i

.preheader.us116.preheader.i:                     ; preds = %.preheader.lr.ph.us.i
  %i.cb = sext i32 %.074102.us.i to i64
  br label %.preheader.us116.i

.preheader.lr.ph.split.us.us.i:                   ; preds = %.preheader.lr.ph.us.i
  %i.cc = add nsw i32 %i.by, 1
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 %i.cc)
  %i.cd = sub i32 %.074102.us.i, %i.by
  %i.ce = add i32 %i.cd, %smax.i
  br label %._crit_edge100.us.i

.preheader.us116.i:                               ; preds = %._crit_edge95.us.i, %.preheader.us116.preheader.i
  %i.cf = phi i32 [ %i.bt, %.preheader.us116.preheader.i ], [ %i.cx, %._crit_edge95.us.i ]
  %i.cg = phi i32 [ %i.bu, %.preheader.us116.preheader.i ], [ %i.cy, %._crit_edge95.us.i ] ; 2 uses
  %indvars.iv138.i = phi i64 [ %i.cb, %.preheader.us116.preheader.i ], [ %indvars.iv.next139.i, %._crit_edge95.us.i ] ; 2 uses
  %.06499.us.i = phi ptr [ %.169104.us113.i, %.preheader.us116.preheader.i ], [ %.1.lcssa.us.i, %._crit_edge95.us.i ] ; 2 uses
  %.17198.us117.i = phi i32 [ %i.by, %.preheader.us116.preheader.i ], [ %i.cz, %._crit_edge95.us.i ]
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph94.us.i, label %._crit_edge95.us.i

.lr.ph94.us.i:                                    ; preds = %.preheader.us116.i, %.lr.ph94.us.i
  %indvars.iv135.i = phi i64 [ %indvars.iv.next136.i, %.lr.ph94.us.i ], [ 0, %.preheader.us116.i ] ; 3 uses
  %.193.us.i = phi ptr [ %i.cl, %.lr.ph94.us.i ], [ %.06499.us.i, %.preheader.us116.i ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv135.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !52
  %i.ck = zext i8 %i.cj to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %.193.us.i, i64 2 ; 2 uses
  %i.cm = load i16, ptr %.193.us.i, align 2, !tbaa !57
  %i.cn = zext i16 %i.cm to i32
  %i.co = add nsw i32 %i.ck, -1
  %.neg.us.i = shl nsw i32 -1, %i.co
  %i.cp = add nsw i32 %.neg.us.i, %i.cn
  %i.cq = getelementptr inbounds nuw [408 x i8], ptr %i.ay, i64 %indvars.iv135.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 360
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !210
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %indvars.iv138.i
  store i32 %i.cp, ptr %i.ct, align 4, !tbaa !39
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 1 ; 2 uses
  %i.cu = load i32, ptr %i.ar, align 4, !tbaa !51 ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i64 %indvars.iv.next136.i, %i.cv
  br i1 %i.cw, label %.lr.ph94.us.i, label %._crit_edge95.us.loopexit.i, !llvm.loop !138

._crit_edge95.us.loopexit.i:                      ; preds = %.lr.ph94.us.i
  %.pre148.i = load i32, ptr %i.bg, align 4, !tbaa !39
  br label %._crit_edge95.us.i

._crit_edge95.us.i:                               ; preds = %._crit_edge95.us.loopexit.i, %.preheader.us116.i
  %i.cx = phi i32 [ %i.cf, %.preheader.us116.i ], [ %.pre148.i, %._crit_edge95.us.loopexit.i ] ; 5 uses
  %i.cy = phi i32 [ %i.cg, %.preheader.us116.i ], [ %i.cu, %._crit_edge95.us.loopexit.i ] ; 3 uses
  %.1.lcssa.us.i = phi ptr [ %.06499.us.i, %.preheader.us116.i ], [ %i.cl, %._crit_edge95.us.loopexit.i ]
  %i.cz = add nsw i32 %.17198.us117.i, 1          ; 2 uses
  %indvars.iv.next139.i = add nsw i64 %indvars.iv138.i, 1 ; 2 uses
  %i.da = icmp slt i32 %i.cz, %i.cx
  br i1 %i.da, label %.preheader.us116.i, label %._crit_edge100.us.loopexit.i, !llvm.loop !139

._crit_edge100.us.loopexit.i:                     ; preds = %._crit_edge95.us.i
  %i.db = trunc nsw i64 %indvars.iv.next139.i to i32
  %.pre149.i = load i32, ptr %i.au, align 8, !tbaa !39
  %.pre150.i = load i32, ptr %i.bc, align 4, !tbaa !39
  br label %._crit_edge100.us.i

._crit_edge100.us.i:                              ; preds = %._crit_edge100.us.loopexit.i, %.preheader.lr.ph.split.us.us.i, %.lr.ph107.split.us112.i
  %i.dc = phi i32 [ %i.br, %.lr.ph107.split.us112.i ], [ %.pre150.i, %._crit_edge100.us.loopexit.i ], [ %i.br, %.preheader.lr.ph.split.us.us.i ] ; 2 uses
  %i.dd = phi i32 [ %i.bs, %.lr.ph107.split.us112.i ], [ %.pre149.i, %._crit_edge100.us.loopexit.i ], [ %i.bs, %.preheader.lr.ph.split.us.us.i ] ; 2 uses
  %i.de = phi i32 [ %i.bt, %.lr.ph107.split.us112.i ], [ %i.cx, %._crit_edge100.us.loopexit.i ], [ %i.bt, %.preheader.lr.ph.split.us.us.i ]
  %i.df = phi i32 [ %i.bu, %.lr.ph107.split.us112.i ], [ %i.cy, %._crit_edge100.us.loopexit.i ], [ %i.bu, %.preheader.lr.ph.split.us.us.i ]
  %i.dg = phi i32 [ %i.bv, %.lr.ph107.split.us112.i ], [ %i.cx, %._crit_edge100.us.loopexit.i ], [ %i.bv, %.preheader.lr.ph.split.us.us.i ]
  %i.dh = phi i32 [ %i.bw, %.lr.ph107.split.us112.i ], [ %i.cy, %._crit_edge100.us.loopexit.i ], [ %i.bw, %.preheader.lr.ph.split.us.us.i ]
  %i.di = phi i32 [ %i.bx, %.lr.ph107.split.us112.i ], [ %i.cx, %._crit_edge100.us.loopexit.i ], [ %i.bv, %.preheader.lr.ph.split.us.us.i ]
  %.175.lcssa.us.i = phi i32 [ %.074102.us.i, %.lr.ph107.split.us112.i ], [ %i.db, %._crit_edge100.us.loopexit.i ], [ %i.ce, %.preheader.lr.ph.split.us.us.i ]
  %i.dj = sext i32 %i.dd to i64
  %i.dk = lshr i64 %i.dj, 1
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %.169104.us113.i, i64 %i.dk
  %i.dm = add nsw i32 %.173103.us114.i, 1         ; 2 uses
  %i.dn = icmp slt i32 %i.dm, %i.dc
  br i1 %i.dn, label %.lr.ph107.split.us112.i, label %.loopexit.us.loopexit.i, !llvm.loop !140

.loopexit.us.loopexit.i:                          ; preds = %._crit_edge100.us.i
  %.pre151.i = load i32, ptr %i.ah, align 8, !tbaa !60
  %.pre152.i = load i32, ptr %i.ai, align 4, !tbaa !62
  br label %.loopexit.us.i
end_hunk_0
begin_hunk_1_@encode_frame:bb.a
  %i.yp = or disjoint i8 %spec.select.i, 4
  %.1.i = select i1 %.not28.i, i8 %spec.select.i, i8 %i.yp
  store i8 %.1.i, ptr %i.yk, align 1, !tbaa !52
  %i.yq = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 1 ; 2 uses
  store ptr %i.yr, ptr %i.s, align 8, !tbaa !37
  %i.ys = getelementptr inbounds nuw i8, ptr %i.b, i64 932
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !79
  %i.yu = trunc i32 %i.yt to i8
  store i8 %i.yu, ptr %i.yr, align 1, !tbaa !52
  %i.yv = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 1 ; 2 uses
  store ptr %i.yw, ptr %i.s, align 8, !tbaa !37
  %i.yx = getelementptr inbounds nuw i8, ptr %i.b, i64 936 ; 4 uses
  %i.yy = load i32, ptr %i.yx, align 8, !tbaa !38
  %i.yz = trunc i32 %i.yy to i16
  %i.za = tail call i16 @llvm.bswap.i16(i16 %i.yz)
  store i16 %i.za, ptr %i.yw, align 1, !tbaa !52
  %i.zb = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 2 ; 2 uses
  store ptr %i.zc, ptr %i.s, align 8, !tbaa !37
  store i8 0, ptr %i.zc, align 1, !tbaa !52
  %i.zd = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 1 ; 2 uses
  store ptr %i.ze, ptr %i.s, align 8, !tbaa !37
  %i.zf = load i32, ptr %i.yg, align 8, !tbaa !55
  %i.zg = trunc i32 %i.zf to i8
  %i.zh = add i8 %i.zg, -1
  store i8 %i.zh, ptr %i.ze, align 1, !tbaa !52
  %i.zi = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 1 ; 2 uses
  store ptr %i.zj, ptr %i.s, align 8, !tbaa !37
  %i.zk = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.zl = load i8, ptr %i.zk, align 8, !tbaa !43
  %i.zm = add i8 %i.zl, -2
  store i8 %i.zm, ptr %i.zj, align 1, !tbaa !52
  %i.zn = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 1 ; 2 uses
  store ptr %i.zo, ptr %i.s, align 8, !tbaa !37
  %i.zp = getelementptr inbounds nuw i8, ptr %i.b, i64 121
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !44
  %i.zr = add i8 %i.zq, -2
  store i8 %i.zr, ptr %i.zo, align 1, !tbaa !52
  %i.zs = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 1 ; 2 uses
  store ptr %i.zt, ptr %i.s, align 8, !tbaa !37
  store i8 0, ptr %i.zt, align 1, !tbaa !52
  %i.zu = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 1 ; 2 uses
  store ptr %i.zv, ptr %i.s, align 8, !tbaa !37
  %i.zw = getelementptr inbounds nuw i8, ptr %i.b, i64 122 ; 3 uses
  %i.zx = load i8, ptr %i.zw, align 2, !tbaa !45
  %i.zy = icmp eq i8 %i.zx, 1
  %i.zz = zext i1 %i.zy to i8
  store i8 %i.zz, ptr %i.zv, align 1, !tbaa !52
  %i.aaa = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 1 ; 3 uses
  store ptr %i.aab, ptr %i.s, align 8, !tbaa !37
  %i.aac = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.b, i64 498 ; 3 uses
  %i.aae = load i8, ptr %i.aad, align 2, !tbaa !49
  %i.aaf = icmp eq i8 %i.aae, 0                   ; 2 uses
  %i.aag = load i32, ptr %i.yg, align 8, !tbaa !55
  %..i = select i1 %i.aaf, i32 3, i32 6
  %.44.i = select i1 %i.aaf, i32 1, i32 -1
  %i.aah = mul i32 %..i, %i.aag
  %i.aai = add i32 %i.aah, %.44.i                 ; 2 uses
  %i.aaj = load ptr, ptr %i.x, align 8, !tbaa !72
  %i.aak = ptrtoint ptr %i.aaj to i64
  %i.aal = ptrtoint ptr %i.aab to i64
  %i.aam = sub i64 %i.aak, %i.aal
  %i.aan = add nsw i32 %i.aai, 2
  %i.aao = sext i32 %i.aan to i64
  %i.aap = icmp slt i64 %i.aam, %i.aao
  br i1 %i.aap, label %put_siz.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i16 23807, ptr %i.aab, align 1, !tbaa !52
  %i.aaq = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 2 ; 2 uses
  store ptr %i.aar, ptr %i.s, align 8, !tbaa !37
  %i.aas = trunc i32 %i.aai to i16
  %i.aat = tail call i16 @llvm.bswap.i16(i16 %i.aas)
  store i16 %i.aat, ptr %i.aar, align 1, !tbaa !52
  %i.aau = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 2 ; 2 uses
  store ptr %i.aav, ptr %i.s, align 8, !tbaa !37
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.b, i64 499
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !46
  %i.aay = shl i8 %i.aax, 5
  %i.aaz = load i8, ptr %i.aad, align 2, !tbaa !49
  %i.aba = or i8 %i.aay, %i.aaz
  store i8 %i.aba, ptr %i.aav, align 1, !tbaa !52
  %i.abb = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 1 ; 5 uses
  store ptr %i.abc, ptr %i.s, align 8, !tbaa !37
  %i.abd = load i8, ptr %i.aad, align 2, !tbaa !49
  %i.abe = icmp eq i8 %i.abd, 0
  %i.abf = load i32, ptr %i.yg, align 8, !tbaa !55
  %i.abg = icmp sgt i32 %i.abf, 0                 ; 2 uses
  br i1 %i.abe, label %.preheader.i, label %.preheader31.i

.preheader31.i:                                   ; preds = %bb.z
  br i1 %i.abg, label %.lr.ph.i231, label %.loopexit

.lr.ph.i231:                                      ; preds = %.preheader31.i
  %i.abh = getelementptr inbounds nuw i8, ptr %i.b, i64 300
  br label %bb.aa

.preheader.i:                                     ; preds = %bb.z
  br i1 %i.abg, label %.lr.ph35.i, label %.loopexit

.lr.ph35.i:                                       ; preds = %.preheader.i, %.lr.ph35.i
  %i.abi = phi ptr [ %i.abn, %.lr.ph35.i ], [ %i.abc, %.preheader.i ]
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %.lr.ph35.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aac, i64 %indvars.iv38.i
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !52
  %i.abl = shl i8 %i.abk, 3
  store i8 %i.abl, ptr %i.abi, align 1, !tbaa !52
  %i.abm = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 1 ; 3 uses
  store ptr %i.abn, ptr %i.s, align 8, !tbaa !37
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %i.abo = load i32, ptr %i.yg, align 8, !tbaa !55
  %i.abp = mul nsw i32 %i.abo, 3
  %i.abq = add nsw i32 %i.abp, -2
  %i.abr = sext i32 %i.abq to i64
  %i.abs = icmp slt i64 %indvars.iv.next39.i, %i.abr
  br i1 %i.abs, label %.lr.ph35.i, label %.loopexit, !llvm.loop !158

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i231
  %i.abt = phi ptr [ %i.abc, %.lr.ph.i231 ], [ %i.acd, %bb.aa ]
  %indvars.iv.i232 = phi i64 [ 0, %.lr.ph.i231 ], [ %indvars.iv.next.i233, %bb.aa ] ; 3 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.aac, i64 %indvars.iv.i232
  %i.abv = load i8, ptr %i.abu, align 1, !tbaa !52
  %i.abw = zext i8 %i.abv to i16
  %i.abx = shl i16 %i.abw, 11
  %i.aby = getelementptr inbounds nuw [2 x i8], ptr %i.abh, i64 %indvars.iv.i232
  %i.abz = load i16, ptr %i.aby, align 2, !tbaa !57
  %i.aca = or i16 %i.abx, %i.abz
  %i.acb = tail call i16 @llvm.bswap.i16(i16 %i.aca)
  store i16 %i.acb, ptr %i.abt, align 1, !tbaa !52
  %i.acc = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 2 ; 3 uses
  store ptr %i.acd, ptr %i.s, align 8, !tbaa !37
  %indvars.iv.next.i233 = add nuw nsw i64 %indvars.iv.i232, 1 ; 2 uses
  %i.ace = load i32, ptr %i.yg, align 8, !tbaa !55
  %i.acf = mul nsw i32 %i.ace, 3
  %i.acg = add nsw i32 %i.acf, -2
  %i.ach = sext i32 %i.acg to i64
  %i.aci = icmp slt i64 %indvars.iv.next.i233, %i.ach
  br i1 %i.aci, label %bb.aa, label %.loopexit, !llvm.loop !159

.loopexit:                                        ; preds = %bb.aa, %.lr.ph35.i, %.preheader.i, %.preheader31.i
  %i.acj = phi ptr [ %i.abn, %.lr.ph35.i ], [ %i.abc, %.preheader31.i ], [ %i.abc, %.preheader.i ], [ %i.acd, %bb.aa ] ; 3 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !36
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 64
  %i.acn = load i32, ptr %i.acm, align 8, !tbaa !211
  %i.aco = and i32 %i.acn, 8388608
  %.not.i234 = icmp eq i32 %i.aco, 0
  br i1 %.not.i234, label %bb.ab, label %put_com.exit

bb.ab:                                            ; preds = %.loopexit
  %i.acp = load ptr, ptr %i.x, align 8, !tbaa !72
  %i.acq = ptrtoint ptr %i.acp to i64
  %i.acr = ptrtoint ptr %i.acj to i64
  %i.acs = sub i64 %i.acq, %i.acr
  %i.act = icmp slt i64 %i.acs, 18
  br i1 %i.act, label %put_siz.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i16 25855, ptr %i.acj, align 1, !tbaa !52
  %i.acu = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 2 ; 2 uses
  store ptr %i.acv, ptr %i.s, align 8, !tbaa !37
  store i16 4096, ptr %i.acv, align 1, !tbaa !52
  %i.acw = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 2 ; 2 uses
  store ptr %i.acx, ptr %i.s, align 8, !tbaa !37
  store i16 256, ptr %i.acx, align 1, !tbaa !52
  %i.acy = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 2 ; 2 uses
  store ptr %i.acz, ptr %i.s, align 8, !tbaa !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.acz, ptr noundef nonnull align 1 dereferenceable(12) @.str.49, i64 12, i1 false)
  %i.ada = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 12 ; 2 uses
  store ptr %i.adb, ptr %i.s, align 8, !tbaa !37
  br label %put_com.exit

put_com.exit:                                     ; preds = %.loopexit, %bb.ac
  %i.adc = phi ptr [ %i.acj, %.loopexit ], [ %i.adb, %bb.ac ]
  %i.add = load i32, ptr %i.nw, align 8, !tbaa !60
  %i.ade = load i32, ptr %i.nv, align 4, !tbaa !62
  %i.adf = mul nsw i32 %i.ade, %i.add
  %i.adg = icmp sgt i32 %i.adf, 0
  br i1 %i.adg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %put_com.exit
  %i.adh = getelementptr inbounds nuw i8, ptr %i.b, i64 504 ; 3 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %4, i64 36944 ; 22 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %4, i64 24576 ; 16 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %4, i64 36888 ; 15 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %4, i64 36916 ; 8 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %4, i64 36934 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %4, i64 36933 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.b, i64 912
  %i.adp = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %bb.cu
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cu ] ; 5 uses
  %i.adq = load ptr, ptr %i.x, align 8, !tbaa !72
  %i.adr = load ptr, ptr %i.s, align 8, !tbaa !71 ; 2 uses
  %i.ads = ptrtoint ptr %i.adq to i64
  %i.adt = ptrtoint ptr %i.adr to i64
  %i.adu = sub i64 %i.ads, %i.adt
  %i.adv = icmp slt i64 %i.adu, 12
  br i1 %i.adv, label %put_siz.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i16 -28417, ptr %i.adr, align 1, !tbaa !52
  %i.adw = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 2 ; 2 uses
  store ptr %i.adx, ptr %i.s, align 8, !tbaa !37
  store i16 2560, ptr %i.adx, align 1, !tbaa !52
  %i.ady = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 2 ; 2 uses
  store ptr %i.adz, ptr %i.s, align 8, !tbaa !37
  %i.aea = trunc nuw nsw i64 %indvars.iv to i32
  %i.aeb = trunc i64 %indvars.iv to i16
  %i.aec = call i16 @llvm.bswap.i16(i16 %i.aeb)
  store i16 %i.aec, ptr %i.adz, align 1, !tbaa !52
  %i.aed = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 2 ; 4 uses
  store ptr %i.aee, ptr %i.s, align 8, !tbaa !37
  store i32 0, ptr %i.aee, align 1, !tbaa !52
  %i.aef = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 4 ; 2 uses
  store ptr %i.aeg, ptr %i.s, align 8, !tbaa !37
  store i8 0, ptr %i.aeg, align 1, !tbaa !52
  %i.aeh = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 1 ; 2 uses
  store ptr %i.aei, ptr %i.s, align 8, !tbaa !37
  store i8 1, ptr %i.aei, align 1, !tbaa !52
  %i.aej = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 1 ; 3 uses
  store ptr %i.aek, ptr %i.s, align 8, !tbaa !37
  %i.ael = load ptr, ptr %i.x, align 8, !tbaa !72
  %i.aem = ptrtoint ptr %i.ael to i64
  %i.aen = ptrtoint ptr %i.aek to i64
  %i.aeo = sub i64 %i.aem, %i.aen
  %i.aep = icmp slt i64 %i.aeo, 2
  br i1 %i.aep, label %put_siz.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i16 -27649, ptr %i.aek, align 1, !tbaa !52
  %i.aeq = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 2
  store ptr %i.aer, ptr %i.s, align 8, !tbaa !37
  %i.aes = load ptr, ptr %i.adh, align 8, !tbaa !63
  %i.aet = getelementptr inbounds nuw [16 x i8], ptr %i.aes, i64 %indvars.iv ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.aeu = load i32, ptr %i.vf, align 4, !tbaa !51
  %i.aev = icmp sgt i32 %i.aeu, 0
  br i1 %i.aev, label %.lr.ph315.i, label %._crit_edge316.i

.lr.ph315.i:                                      ; preds = %bb.af, %._crit_edge312.i
  %indvars.iv346.i = phi i64 [ %indvars.iv.next347.i, %._crit_edge312.i ], [ 0, %bb.af ] ; 2 uses
  %i.aew = load ptr, ptr %i.adh, align 8, !tbaa !63
  %i.aex = getelementptr inbounds nuw [16 x i8], ptr %i.aew, i64 %indvars.iv
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !67
  %i.aez = getelementptr inbounds nuw [408 x i8], ptr %i.aey, i64 %indvars.iv346.i ; 7 uses
  %i.afa = load i8, ptr %i.zk, align 8, !tbaa !43
  %i.afb = zext nneg i8 %i.afa to i32
  %i.afc = shl nuw i32 1, %i.afb
  %i.afd = add nuw nsw i32 %i.afc, 2
  store i32 %i.afd, ptr %i.adi, align 8, !tbaa !214
  %i.afe = load ptr, ptr %i.ack, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.afe, i32 noundef 48, ptr noundef nonnull @.str.50) #11
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aez, i64 8
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aez, i64 360 ; 3 uses
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !210
  %i.afi = call i32 @ff_dwt_encode(ptr noundef nonnull %i.aff, ptr noundef %i.afh) #11 ; 2 uses
  %i.afj = icmp slt i32 %i.afi, 0
  br i1 %i.afj, label %encode_tile.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph315.i
  %i.afk = load ptr, ptr %i.ack, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.afk, i32 noundef 48, ptr noundef nonnull @.str.51) #11
  %i.afl = load i32, ptr %i.yg, align 8, !tbaa !55 ; 2 uses
  %i.afm = icmp sgt i32 %i.afl, 0
  br i1 %i.afm, label %.lr.ph311.i, label %._crit_edge312.i

.lr.ph311.i:                                      ; preds = %bb.ag
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aez, i64 368 ; 4 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.aez, i64 372 ; 4 uses
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge308.i, %.lr.ph311.i
  %i.afp = phi i32 [ %i.afl, %.lr.ph311.i ], [ %i.bfa, %._crit_edge308.i ]
  %indvars.iv343.i = phi i64 [ 0, %.lr.ph311.i ], [ %indvars.iv.next344.i, %._crit_edge308.i ] ; 5 uses
  %i.afq = load ptr, ptr %i.aez, align 8, !tbaa !80
  %i.afr = getelementptr inbounds nuw [40 x i8], ptr %i.afq, i64 %indvars.iv343.i ; 3 uses
  %i.afs = load i8, ptr %i.afr, align 8, !tbaa !83 ; 2 uses
  %.not319.i = icmp eq i8 %i.afs, 0
  br i1 %.not319.i, label %._crit_edge308.i, label %.lr.ph307.i

.lr.ph307.i:                                      ; preds = %bb.ah
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afr, i64 32
  %i.afu = icmp ne i64 %indvars.iv343.i, 0        ; 2 uses
  %i.afv = zext i1 %i.afu to i64
  %invariant.gep.i = getelementptr i8, ptr @ff_jpeg2000_sigctxno_lut, i64 %i.afv
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit263.i, %.lr.ph307.i
  %i.afw = phi i8 [ %i.afs, %.lr.ph307.i ], [ %i.bex, %.loopexit263.i ] ; 2 uses
  %indvars.iv340.i = phi i64 [ 0, %.lr.ph307.i ], [ %indvars.iv.next341.i, %.loopexit263.i ] ; 5 uses
  %i.afx = load ptr, ptr %i.aft, align 8, !tbaa !84
  %i.afy = getelementptr inbounds nuw [40 x i8], ptr %i.afx, i64 %indvars.iv340.i ; 9 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 32
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !87 ; 4 uses
  %i.agb = icmp eq i64 %indvars.iv340.i, 0
  br i1 %i.agb, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.agc = load ptr, ptr %i.aez, align 8, !tbaa !80
  %i.agd = getelementptr [40 x i8], ptr %i.agc, i64 %indvars.iv343.i ; 2 uses
  %i.age = getelementptr i8, ptr %i.agd, i64 -28
  %i.agf = getelementptr i8, ptr %i.agd, i64 -24
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !39
  %i.agh = load i32, ptr %i.age, align 4, !tbaa !39
  %i.agi = sub nsw i32 %i.agg, %i.agh
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.agj = phi i32 [ %i.agi, %bb.aj ], [ 0, %bb.ai ] ; 3 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.afy, i64 8 ; 2 uses
  %i.agl = load i32, ptr %i.agk, align 8, !tbaa !39 ; 4 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.afy, i64 18 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.afy, i64 12 ; 2 uses
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !39 ; 3 uses
  %i.agp = load i32, ptr %i.afy, align 8, !tbaa !39 ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.afy, i64 4 ; 2 uses
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !39 ; 2 uses
  %i.ags = icmp eq i32 %i.agp, %i.agr
  %i.agt = icmp eq i32 %i.agl, %i.ago
  %or.cond250.i = select i1 %i.ags, i1 true, i1 %i.agt
  br i1 %or.cond250.i, label %.loopexit263.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.agu = getelementptr inbounds nuw i8, ptr %i.aga, i64 4 ; 2 uses
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !91 ; 2 uses
  %i.agw = icmp sgt i32 %i.agv, 0
  br i1 %i.agw, label %.lr.ph304.i, label %.loopexit263.i

.lr.ph304.i:                                      ; preds = %bb.al
  %i.agx = sub i32 %i.agj, %i.agl
  %narrow.i = xor i32 %i.agl, -1
  %i.agy = sext i32 %narrow.i to i64
  %i.agz = load i16, ptr %i.agm, align 2, !tbaa !215 ; 3 uses
  %i.aha = zext nneg i16 %i.agz to i64
  %i.ahb = ashr i64 %i.agy, %i.aha
  %i.ahc = trunc nsw i64 %i.ahb to i32
  %i.ahd = sub nsw i32 0, %i.ahc
  %i.ahe = zext nneg i16 %i.agz to i32
  %i.ahf = shl i32 %i.ahd, %i.ahe
  %spec.select.i237 = call i32 @llvm.smin.i32(i32 %i.ahf, i32 %i.ago)
  %i.ahg = add i32 %i.agx, %spec.select.i237
  %i.ahh = icmp ne i64 %indvars.iv340.i, 1
  %or.cond.not.i = and i1 %i.afu, %i.ahh
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.afy, i64 16 ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.afy, i64 20
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.aga, i64 24 ; 3 uses
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv340.i ; 3 uses
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge298.i, %.lr.ph304.i
  %i.ahl = phi i32 [ %i.agv, %.lr.ph304.i ], [ %i.bek, %._crit_edge298.i ]
  %i.ahm = phi i32 [ %i.agl, %.lr.ph304.i ], [ %i.bel, %._crit_edge298.i ]
  %i.ahn = phi i32 [ %i.ago, %.lr.ph304.i ], [ %i.bem, %._crit_edge298.i ]
  %i.aho = phi i16 [ %i.agz, %.lr.ph304.i ], [ %i.ben, %._crit_edge298.i ]
  %i.ahp = phi i32 [ %i.agr, %.lr.ph304.i ], [ %i.beo, %._crit_edge298.i ] ; 2 uses
  %i.ahq = phi i32 [ %i.agp, %.lr.ph304.i ], [ %i.bep, %._crit_edge298.i ] ; 3 uses
  %.0176302.i = phi i32 [ %i.ahg, %.lr.ph304.i ], [ %.208.i, %._crit_edge298.i ] ; 6 uses
  %.0177301.i = phi i32 [ %i.agj, %.lr.ph304.i ], [ %.0176302.i, %._crit_edge298.i ] ; 6 uses
  %.0182300.i = phi i32 [ 0, %.lr.ph304.i ], [ %.1183.lcssa.i, %._crit_edge298.i ] ; 2 uses
  %.0184299.i = phi i32 [ 0, %.lr.ph304.i ], [ %i.bev, %._crit_edge298.i ]
  br i1 %or.cond.not.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ahr = load ptr, ptr %i.aez, align 8, !tbaa !80
  %i.ahs = getelementptr [40 x i8], ptr %i.ahr, i64 %indvars.iv343.i ; 2 uses
  %i.aht = getelementptr i8, ptr %i.ahs, i64 -36
  %i.ahu = getelementptr i8, ptr %i.ahs, i64 -32
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !39
  %i.ahw = load i32, ptr %i.aht, align 4, !tbaa !39
  %i.ahx = sub nsw i32 %i.ahv, %i.ahw
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0180.i = phi i32 [ %i.ahx, %bb.an ], [ 0, %bb.am ] ; 3 uses
  %i.ahy = load i32, ptr %i.aga, align 8, !tbaa !92
  %i.ahz = icmp sgt i32 %i.ahy, 0
end_hunk_1
begin_hunk_2_@encode_frame:bb.a

bb.aq:                                            ; preds = %bb.aq, %.lr.ph.i242
  %.0279.i = phi ptr [ %i.akp, %.lr.ph.i242 ], [ %i.alf, %bb.aq ] ; 3 uses
  %.1278.i = phi i32 [ %.1181291.i, %.lr.ph.i242 ], [ %i.alg, %bb.aq ] ; 2 uses
  %i.akq = load i32, ptr %i.afo, align 4, !tbaa !39
  %i.akr = load i32, ptr %i.afn, align 8, !tbaa !39
  %i.aks = sub nsw i32 %i.akq, %i.akr
  %i.akt = mul nsw i32 %i.aks, %.1175280.i
  %i.aku = add nsw i32 %i.akt, %.1278.i
  %i.akv = sext i32 %i.aku to i64
  %i.akw = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.akv
  %i.akx = load i32, ptr %i.akw, align 4, !tbaa !39 ; 2 uses
  store i32 %i.akx, ptr %.0279.i, align 4, !tbaa !39
  %i.aky = sext i32 %i.akx to i64
  %i.akz = load i32, ptr %i.ahj, align 4, !tbaa !217
  %i.ala = sdiv i32 1073741824, %i.akz
  %i.alb = sext i32 %i.ala to i64
  %i.alc = mul nsw i64 %i.alb, %i.aky
  %i.ald = lshr i64 %i.alc, 9
  %i.ale = trunc i64 %i.ald to i32
  store i32 %i.ale, ptr %.0279.i, align 4, !tbaa !39
  %i.alf = getelementptr inbounds nuw i8, ptr %.0279.i, i64 4
  %i.alg = add nsw i32 %.1278.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.alg, %.0178295.i
  br i1 %exitcond.not.i, label %._crit_edge.i243, label %bb.aq, !llvm.loop !162

._crit_edge.i243:                                 ; preds = %bb.aq
  %i.alh = add nsw i32 %.1175280.i, 1             ; 2 uses
  %exitcond336.not.i = icmp eq i32 %i.alh, %.0176302.i
  br i1 %exitcond336.not.i, label %.loopexit.i, label %.lr.ph.i242, !llvm.loop !163

.loopexit.i:                                      ; preds = %._crit_edge.i243, %._crit_edge286.i, %.preheader.i244, %.preheader261.i
  %i.ali = load ptr, ptr %i.ahk, align 8, !tbaa !93 ; 2 uses
  %i.alj = getelementptr inbounds [104 x i8], ptr %i.ali, i64 %indvars.iv.i238
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 24
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !97
  %.not204.i = icmp eq ptr %i.all, null
  br i1 %.not204.i, label %bb.ar, label %.thread

bb.ar:                                            ; preds = %.loopexit.i
  %i.alm = call noalias ptr @av_malloc(i64 noundef 8193) #11 ; 2 uses
  %i.aln = load ptr, ptr %i.ahk, align 8, !tbaa !93 ; 2 uses
  %i.alo = getelementptr inbounds [104 x i8], ptr %i.aln, i64 %indvars.iv.i238
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 24
  store ptr %i.alm, ptr %i.alp, align 8, !tbaa !97
  %i.alq = getelementptr inbounds [104 x i8], ptr %i.aln, i64 %indvars.iv.i238 ; 3 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 56
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !98
  %.not205.i = icmp eq ptr %i.als, null
  br i1 %.not205.i, label %bb.as, label %.thread.i

.thread:                                          ; preds = %.loopexit.i
  %i.alt = getelementptr inbounds [104 x i8], ptr %i.ali, i64 %indvars.iv.i238 ; 3 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 56
  %i.alv = load ptr, ptr %i.alu, align 8, !tbaa !98
  %.not205.i459 = icmp eq ptr %i.alv, null
  br i1 %.not205.i459, label %bb.as, label %.thread.i.thread

.thread.i.thread:                                 ; preds = %.thread
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alt, i64 24
  br label %.thread408.i

bb.as:                                            ; preds = %.thread, %bb.ar
  %i.alx = call ptr @av_malloc_array(i64 noundef 100, i64 noundef 24) #11 ; 2 uses
  %i.aly = load ptr, ptr %i.ahk, align 8, !tbaa !93
  %i.alz = getelementptr inbounds [104 x i8], ptr %i.aly, i64 %indvars.iv.i238 ; 3 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 56
  store ptr %i.alx, ptr %i.ama, align 8, !tbaa !98
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alz, i64 24 ; 2 uses
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !97
  %.not206.i = icmp eq ptr %i.amc, null
  %i.amd = icmp eq ptr %i.alx, null
  %or.cond = select i1 %.not206.i, i1 true, i1 %i.amd
  br i1 %or.cond, label %encode_tile.exit.thread, label %.thread408.i

.thread.i:                                        ; preds = %bb.ar
  %i.ame = icmp eq ptr %i.alm, null
  %i.amf = getelementptr inbounds nuw i8, ptr %i.alq, i64 24
  br i1 %i.ame, label %encode_tile.exit.thread, label %.thread408.i

.thread408.i:                                     ; preds = %.thread.i.thread, %bb.as, %.thread.i
  %i.amg = phi ptr [ %i.alz, %bb.as ], [ %i.alq, %.thread.i ], [ %i.alt, %.thread.i.thread ] ; 6 uses
  %i.amh = phi ptr [ %i.amb, %bb.as ], [ %i.amf, %.thread.i ], [ %i.alw, %.thread.i.thread ] ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amg, i64 56 ; 3 uses
  %i.amj = sub nsw i32 %.0178295.i, %.1181291.i   ; 7 uses
  %i.amk = load i32, ptr %i.adi, align 8, !tbaa !214
  %i.aml = mul nsw i32 %i.amk, %i.aim
  %i.amm = sext i32 %i.aml to i64
  %i.amn = shl nsw i64 %i.amm, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.adj, i8 0, i64 %i.amn, i1 false)
  %i.amo = icmp sgt i32 %i.amj, 0                 ; 3 uses
  %or.cond.i.i = and i1 %i.ain, %i.amo
  br i1 %or.cond.i.i, label %.preheader.us.preheader.i.i, label %._crit_edge16.thread.i.i

.preheader.us.preheader.i.i:                      ; preds = %.thread408.i
  %.pre.pre.i.i = load i32, ptr %i.adi, align 8, !tbaa !214
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.pre.i.i = phi i32 [ %.pre37.i.i, %._crit_edge.us.i.i ], [ %.pre.pre.i.i, %.preheader.us.preheader.i.i ] ; 2 uses
  %.09415.us.i.i = phi i32 [ %.195..us.i.i, %._crit_edge.us.i.i ], [ 0, %.preheader.us.preheader.i.i ]
  %.09614.us.i.i = phi i32 [ %i.amp, %._crit_edge.us.i.i ], [ 0, %.preheader.us.preheader.i.i ] ; 3 uses
  %i.amp = add nuw nsw i32 %.09614.us.i.i, 1      ; 3 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.av, %.preheader.us.i.i
  %.pre38.i.i.a = phi i32 [ %.pre.i.i, %.preheader.us.i.i ], [ %.pre37.i.i, %bb.av ]
  %i.amq = phi i32 [ %.pre.i.i, %.preheader.us.i.i ], [ %i.ang, %bb.av ] ; 3 uses
  %.19513.us.i.i = phi i32 [ %.09415.us.i.i, %.preheader.us.i.i ], [ %.195..us.i.i, %bb.av ]
  %.09712.us.i.i = phi i32 [ 0, %.preheader.us.i.i ], [ %i.anh, %bb.av ] ; 4 uses
  %i.amr = mul nsw i32 %i.amq, %.09614.us.i.i
  %i.ams = add nsw i32 %.09712.us.i.i, %i.amr
  %i.amt = sext i32 %i.ams to i64
  %i.amu = getelementptr inbounds [4 x i8], ptr %4, i64 %i.amt ; 2 uses
  %i.amv = load i32, ptr %i.amu, align 4, !tbaa !39 ; 3 uses
  %i.amw = icmp slt i32 %i.amv, 0
  br i1 %i.amw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.amx = mul nsw i32 %i.amq, %i.amp
  %i.amy = add nsw i32 %.09712.us.i.i, %i.amx
  %i.amz = sext i32 %i.amy to i64
  %i.ana = getelementptr [2 x i8], ptr %i.adj, i64 %i.amz
  %i.anb = getelementptr i8, ptr %i.ana, i64 2    ; 2 uses
  %i.anc = load i16, ptr %i.anb, align 2, !tbaa !57
  %i.and = or i16 %i.anc, -32768
  store i16 %i.and, ptr %i.anb, align 2, !tbaa !57
  %i.ane = sub nsw i32 0, %i.amv
  store i32 %i.ane, ptr %i.amu, align 4, !tbaa !39
  %.pre36.i.i = load i32, ptr %i.adi, align 8, !tbaa !214 ; 3 uses
  %.pre40.i.i = mul nsw i32 %.pre36.i.i, %.09614.us.i.i
  %.pre41.i.i = add nsw i32 %.pre40.i.i, %.09712.us.i.i
  %.pre43.i.i = sext i32 %.pre41.i.i to i64
  %.phi.trans.insert.i = getelementptr inbounds [4 x i8], ptr %4, i64 %.pre43.i.i
  %.pre.i241 = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !39
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.anf = phi i32 [ %.pre.i241, %bb.au ], [ %i.amv, %bb.at ]
  %.pre37.i.i = phi i32 [ %.pre36.i.i, %bb.au ], [ %.pre38.i.i.a, %bb.at ] ; 2 uses
  %i.ang = phi i32 [ %.pre36.i.i, %bb.au ], [ %i.amq, %bb.at ]
  %.195..us.i.i = call i32 @llvm.smax.i32(i32 %.19513.us.i.i, i32 %i.anf) ; 6 uses
  %i.anh = add nuw nsw i32 %.09712.us.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.anh, %i.amj
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.at, !llvm.loop !164

._crit_edge.us.i.i:                               ; preds = %bb.av
  %exitcond30.not.i.i = icmp eq i32 %i.amp, %i.ail
  br i1 %exitcond30.not.i.i, label %._crit_edge16.i.i, label %.preheader.us.i.i, !llvm.loop !165

._crit_edge16.i.i:                                ; preds = %._crit_edge.us.i.i
  %i.ani = icmp eq i32 %.195..us.i.i, 0
  br i1 %i.ani, label %._crit_edge16.thread.i.i, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge16.i.i
  %.not.i.i.i = icmp ult i32 %.195..us.i.i, 65536 ; 2 uses
  %i.anj = lshr i32 %.195..us.i.i, 16
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %.195..us.i.i, i32 %i.anj ; 3 uses
  %spec.select12.i.i.i = select i1 %.not.i.i.i, i8 0, i8 16 ; 2 uses
  %.not11.i.i.i = icmp samesign ult i32 %spec.select.i.i.i, 256 ; 2 uses
  %i.ank = lshr i32 %spec.select.i.i.i, 8
  %i.anl = or disjoint i8 %spec.select12.i.i.i, 8
  %.110.i.i.i = select i1 %.not11.i.i.i, i32 %spec.select.i.i.i, i32 %i.ank
  %.1.i.i.i = select i1 %.not11.i.i.i, i8 %spec.select12.i.i.i, i8 %i.anl
  %i.anm = zext nneg i32 %.110.i.i.i to i64
  %i.ann = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.anm
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !52
  %i.anp = add nsw i8 %.1.i.i.i, -5
  %i.anq = add i8 %i.anp, %i.ano
  br label %._crit_edge16.thread.i.i

._crit_edge16.thread.i.i:                         ; preds = %bb.aw, %._crit_edge16.i.i, %.thread408.i
  %.sink.i.i = phi i8 [ %i.anq, %bb.aw ], [ 0, %._crit_edge16.i.i ], [ 0, %.thread408.i ] ; 3 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.amg, i64 2
  store i8 %.sink.i.i, ptr %i.anr, align 2, !tbaa !99
  %i.ans = load ptr, ptr %i.amh, align 8, !tbaa !97
  store i8 0, ptr %i.ans, align 1, !tbaa !52
  %i.ant = load ptr, ptr %i.amh, align 8, !tbaa !97
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 1
  call void @ff_mqc_initenc(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.anu) #11
  %.not24.i.i = icmp eq i8 %.sink.i.i, 0
  br i1 %.not24.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

._crit_edge.thread.i.i:                           ; preds = %._crit_edge16.thread.i.i
  store i8 0, ptr %i.amg, align 8, !tbaa !100
  %i.anv = getelementptr inbounds nuw i8, ptr %i.amg, i64 1
  store i8 0, ptr %i.anv, align 1, !tbaa !101
  br label %bb.ca

.lr.ph.i.i:                                       ; preds = %._crit_edge16.thread.i.i
  %i.anw = zext i8 %.sink.i.i to i32
  %i.anx = add nsw i32 %i.anw, -1
  %wide.trip.count.i.i.i = zext nneg i32 %i.amj to i64
  %i.any = icmp slt i32 %i.amj, 1
  %brmerge.i.i = or i1 %i.aip, %i.any
  br label %bb.ax

bb.ax:                                            ; preds = %encode_sigpass.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %encode_sigpass.exit.i.i ] ; 4 uses
  %.021.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bdf, %encode_sigpass.exit.i.i ]
  %.09320.i.i = phi i32 [ %i.anx, %.lr.ph.i.i ], [ %spec.select104.i.i, %encode_sigpass.exit.i.i ] ; 10 uses
  %.09918.i.i = phi i32 [ 2, %.lr.ph.i.i ], [ %spec.select.i.i, %encode_sigpass.exit.i.i ] ; 2 uses
  %i.anz = shl nuw i32 64, %.09320.i.i            ; 10 uses
  switch i32 %.09918.i.i, label %default.unreachable.i.i [
    i32 0, label %bb.ay
    i32 1, label %bb.be
    i32 2, label %bb.bl
  ]

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.ain, label %.preheader69.lr.ph.i.i.i, label %encode_sigpass.exit.i.i

.preheader69.lr.ph.i.i.i:                         ; preds = %bb.ay
  %.not68.i.i.i = icmp eq i32 %.09320.i.i, 0
  br i1 %i.amo, label %.preheader69.us.i.i.i, label %encode_sigpass.exit.i.i

.preheader69.us.i.i.i:                            ; preds = %.preheader69.lr.ph.i.i.i, %._crit_edge72.split.us.i.i.i
  %.06.i.i = phi i32 [ %.5.i.i, %._crit_edge72.split.us.i.i.i ], [ 0, %.preheader69.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %._crit_edge72.split.us.i.i.i ], [ 4, %.preheader69.lr.ph.i.i.i ] ; 2 uses
  %.073.us.i.i.i = phi i32 [ %i.aoa, %._crit_edge72.split.us.i.i.i ], [ 0, %.preheader69.lr.ph.i.i.i ] ; 3 uses
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.ail, i32 %indvars.iv.i.i.i)
  %i.aoa = add i32 %.073.us.i.i.i, 4              ; 3 uses
  %invariant.smin.us.i.i.i = call i32 @llvm.smin.i32(i32 %i.ail, i32 %i.aoa)
  %i.aob = icmp slt i32 %.073.us.i.i.i, %invariant.smin.us.i.i.i
  br i1 %i.aob, label %.preheader.us.preheader.i.i.i, label %._crit_edge72.split.us.i.i.i

.preheader.us.preheader.i.i.i:                    ; preds = %.preheader69.us.i.i.i
  %.pre.pre.i.i.i = load i32, ptr %i.adi, align 8, !tbaa !214
  br label %.preheader.us.i.i.i

bb.az:                                            ; preds = %.preheader.us.i.i.i, %bb.bd
  %.1.i.i = phi i32 [ %.4.i.i, %.preheader.us.i.i.i ], [ %.3.i.i, %bb.bd ] ; 3 uses
  %.pre79.i.i.i = phi i32 [ %.pre.i.i.i, %.preheader.us.i.i.i ], [ %.pre78.i.i.i, %bb.bd ]
  %i.aoc = phi i32 [ %.pre.i.i.i, %.preheader.us.i.i.i ], [ %i.arb, %bb.bd ] ; 3 uses
  %.06370.us.i.i.i = phi i32 [ %.073.us.i.i.i, %.preheader.us.i.i.i ], [ %i.aod, %bb.bd ] ; 4 uses
  %i.aod = add nuw nsw i32 %.06370.us.i.i.i, 1    ; 6 uses
  %i.aoe = mul nsw i32 %i.aod, %i.aoc
  %i.aof = add nsw i32 %i.aoe, %.06471.us.i.i.i
  %i.aog = sext i32 %i.aof to i64
  %i.aoh = getelementptr [2 x i8], ptr %i.adj, i64 %i.aog
  %i.aoi = getelementptr i8, ptr %i.aoh, i64 2
  %i.aoj = load i16, ptr %i.aoi, align 2, !tbaa !57
  %i.aok = zext i16 %i.aoj to i32                 ; 2 uses
  %i.aol = and i32 %i.aok, 8192
  %.not.us.i.i.i = icmp ne i32 %i.aol, 0
  %i.aom = and i32 %i.aok, 255                    ; 2 uses
  %.not66.us.i.i.i = icmp eq i32 %i.aom, 0
  %or.cond.us.i.i.i = or i1 %.not.us.i.i.i, %.not66.us.i.i.i
  br i1 %or.cond.us.i.i.i, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.aon = zext nneg i32 %i.aom to i64
  %gep.us.i.i.i = getelementptr [4 x i8], ptr %gep.i, i64 %i.aon
  %i.aoo = load i8, ptr %gep.us.i.i.i, align 1, !tbaa !52
  %i.aop = mul nsw i32 %.06370.us.i.i.i, %i.aoc
  %i.aoq = add nsw i32 %i.aop, %.06471.us.i.i.i
  %i.aor = sext i32 %i.aoq to i64
  %i.aos = getelementptr inbounds [4 x i8], ptr %4, i64 %i.aor
  %i.aot = load i32, ptr %i.aos, align 4, !tbaa !39
  %i.aou = and i32 %i.aot, %i.anz
  %.not67.us.i.i.i = icmp ne i32 %i.aou, 0        ; 2 uses
  %i.aov = zext i1 %.not67.us.i.i.i to i32
  %i.aow = zext i8 %i.aoo to i64
  %i.aox = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.aow
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.aox, i32 noundef %i.aov) #11
  br i1 %.not67.us.i.i.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.aoy = load i32, ptr %i.adi, align 8, !tbaa !214
  %i.aoz = mul nsw i32 %i.aoy, %i.aod
  %i.apa = add nsw i32 %i.aoz, %.06471.us.i.i.i
  %i.apb = sext i32 %i.apa to i64
  %i.apc = getelementptr [2 x i8], ptr %i.adj, i64 %i.apb
  %i.apd = getelementptr i8, ptr %i.apc, i64 2
  %i.ape = load i16, ptr %i.apd, align 2, !tbaa !57 ; 2 uses
  %i.apf = zext i16 %i.ape to i32                 ; 2 uses
  %i.apg = and i32 %i.apf, 15
  %i.aph = zext nneg i32 %i.apg to i64            ; 2 uses
  %i.api = getelementptr inbounds nuw [16 x i8], ptr @ff_jpeg2000_xorbit_lut, i64 %i.aph
  %i.apj = lshr i32 %i.apf, 8
  %i.apk = and i32 %i.apj, 15
  %i.apl = zext nneg i32 %i.apk to i64            ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %i.api, i64 %i.apl
  %i.apn = load i8, ptr %i.apm, align 1, !tbaa !52
  %i.apo = getelementptr inbounds nuw [16 x i8], ptr @ff_jpeg2000_sgnctxno_lut, i64 %i.aph
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 %i.apl
  %i.apq = load i8, ptr %i.app, align 1, !tbaa !52
  %i.apr = zext i8 %i.apq to i64
  %i.aps = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.apr
  %i.apt = lshr i16 %i.ape, 15
  %i.apu = zext i8 %i.apn to i16
  %i.apv = xor i16 %i.apt, %i.apu
  %i.apw = zext nneg i16 %i.apv to i32
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.aps, i32 noundef %i.apw) #11
  %i.apx = load i32, ptr %i.adi, align 8, !tbaa !214 ; 2 uses
  %i.apy = mul nsw i32 %i.apx, %.06370.us.i.i.i
  %i.apz = add nsw i32 %i.apy, %.06471.us.i.i.i
  %i.aqa = sext i32 %i.apz to i64
  %i.aqb = getelementptr inbounds [4 x i8], ptr %4, i64 %i.aqa
  %i.aqc = load i32, ptr %i.aqb, align 4, !tbaa !39 ; 2 uses
  %i.aqd = ashr i32 %i.aqc, %.09320.i.i
  %i.aqe = and i32 %i.aqd, 127
  %i.aqf = zext nneg i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds nuw [4 x i8], ptr @lut_nmsedec_sig, i64 %i.aqf
  %i.aqh = and i32 %i.aqc, 127
  %i.aqi = zext nneg i32 %i.aqh to i64
  %i.aqj = getelementptr inbounds nuw [4 x i8], ptr @lut_nmsedec_sig0, i64 %i.aqi
  %.0.in.i.us.i.i.i = select i1 %.not68.i.i.i, ptr %i.aqj, ptr %i.aqg
  %.0.i.us.i.i.i = load i32, ptr %.0.in.i.us.i.i.i, align 4, !tbaa !39
  %i.aqk = add nsw i32 %.0.i.us.i.i.i, %.1.i.i
  %i.aql = mul nsw i32 %i.apx, %i.aod
  %i.aqm = add nsw i32 %i.aql, %.06471.us.i.i.i
  %i.aqn = sext i32 %i.aqm to i64
  %i.aqo = getelementptr [2 x i8], ptr %i.adj, i64 %i.aqn
  %i.aqp = getelementptr i8, ptr %i.aqo, i64 2
  %i.aqq = load i16, ptr %i.aqp, align 2, !tbaa !57
  %i.aqr = lshr i16 %i.aqq, 15
  %i.aqs = zext nneg i16 %i.aqr to i32
  call void @ff_jpeg2000_set_significance(ptr noundef nonnull %4, i32 noundef %.06471.us.i.i.i, i32 noundef %.06370.us.i.i.i, i32 noundef %i.aqs) #11
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.2.i.i = phi i32 [ %i.aqk, %bb.bb ], [ %.1.i.i, %bb.ba ]
  %i.aqt = load i32, ptr %i.adi, align 8, !tbaa !214 ; 3 uses
  %i.aqu = mul nsw i32 %i.aqt, %i.aod
  %i.aqv = add nsw i32 %i.aqu, %.06471.us.i.i.i
  %i.aqw = sext i32 %i.aqv to i64
  %i.aqx = getelementptr [2 x i8], ptr %i.adj, i64 %i.aqw
  %i.aqy = getelementptr i8, ptr %i.aqx, i64 2    ; 2 uses
  %i.aqz = load i16, ptr %i.aqy, align 2, !tbaa !57
  %i.ara = or i16 %i.aqz, 4096
  store i16 %i.ara, ptr %i.aqy, align 2, !tbaa !57
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.az
  %.3.i.i = phi i32 [ %.1.i.i, %bb.az ], [ %.2.i.i, %bb.bc ] ; 3 uses
  %.pre78.i.i.i = phi i32 [ %.pre79.i.i.i, %bb.az ], [ %i.aqt, %bb.bc ] ; 2 uses
  %i.arb = phi i32 [ %i.aoc, %bb.az ], [ %i.aqt, %bb.bc ]
  %exitcond.not.i.i.i = icmp eq i32 %i.aod, %smin.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.us.i.i.i, label %bb.az, !llvm.loop !166

.preheader.us.i.i.i:                              ; preds = %._crit_edge.us.i.i.i, %.preheader.us.preheader.i.i.i
  %.4.i.i = phi i32 [ %.06.i.i, %.preheader.us.preheader.i.i.i ], [ %.3.i.i, %._crit_edge.us.i.i.i ]
  %.pre.i.i.i = phi i32 [ %.pre.pre.i.i.i, %.preheader.us.preheader.i.i.i ], [ %.pre78.i.i.i, %._crit_edge.us.i.i.i ] ; 2 uses
  %.06471.us.i.i.i = phi i32 [ 0, %.preheader.us.preheader.i.i.i ], [ %i.arc, %._crit_edge.us.i.i.i ] ; 8 uses
  br label %bb.az

._crit_edge.us.i.i.i:                             ; preds = %bb.bd
  %i.arc = add nuw nsw i32 %.06471.us.i.i.i, 1    ; 2 uses
  %exitcond77.not.i.i.i = icmp eq i32 %i.arc, %i.amj
  br i1 %exitcond77.not.i.i.i, label %._crit_edge72.split.us.i.i.i, label %.preheader.us.i.i.i, !llvm.loop !167

._crit_edge72.split.us.i.i.i:                     ; preds = %._crit_edge.us.i.i.i, %.preheader69.us.i.i.i
  %.5.i.i = phi i32 [ %.06.i.i, %.preheader69.us.i.i.i ], [ %.3.i.i, %._crit_edge.us.i.i.i ] ; 2 uses
  %i.ard = icmp slt i32 %i.aoa, %i.ail
  %indvars.iv.next.i.i.i = add i32 %indvars.iv.i.i.i, 4
  br i1 %i.ard, label %.preheader69.us.i.i.i, label %encode_sigpass.exit.i.i, !llvm.loop !168

bb.be:                                            ; preds = %bb.ax
  br i1 %brmerge.i.i, label %encode_sigpass.exit.i.i, label %.preheader42.lr.ph.split.us.i.i.i

.preheader42.lr.ph.split.us.i.i.i:                ; preds = %bb.be
  %.not41.i.i.i = icmp eq i32 %.09320.i.i, 0
  br i1 %.not41.i.i.i, label %.preheader42.us.us.i.i.i, label %.preheader42.us.i.i.i

.preheader42.us.us.i.i.i:                         ; preds = %.preheader42.lr.ph.split.us.i.i.i, %._crit_edge46.split.us.us.i.i.i
  %.7.i.i = phi i32 [ %.11.i.i, %._crit_edge46.split.us.us.i.i.i ], [ 0, %.preheader42.lr.ph.split.us.i.i.i ] ; 2 uses
  %indvars.iv61.i.i.i = phi i32 [ %indvars.iv.next62.i.i.i, %._crit_edge46.split.us.us.i.i.i ], [ 4, %.preheader42.lr.ph.split.us.i.i.i ] ; 2 uses
  %.049.us.us.i.i.i = phi i32 [ %i.are, %._crit_edge46.split.us.us.i.i.i ], [ 0, %.preheader42.lr.ph.split.us.i.i.i ] ; 3 uses
  %smin63.i.i.i = call i32 @llvm.smin.i32(i32 %i.ail, i32 %indvars.iv61.i.i.i)
  %i.are = add i32 %.049.us.us.i.i.i, 4           ; 3 uses
  %invariant.smin.us.us.i.i.i = call i32 @llvm.smin.i32(i32 %i.ail, i32 %i.are)
  %i.arf = icmp slt i32 %.049.us.us.i.i.i, %invariant.smin.us.us.i.i.i
  br i1 %i.arf, label %.preheader.us.us.us.preheader.i.i.i, label %._crit_edge46.split.us.us.i.i.i

.preheader.us.us.us.preheader.i.i.i:              ; preds = %.preheader42.us.us.i.i.i
  %.pre66.pre.i.i.i = load i32, ptr %i.adi, align 8, !tbaa !214 ; 2 uses
  br label %.preheader.us.us.us.i.i.i

.preheader.us.us.us.i.i.i:                        ; preds = %._crit_edge.split.us.us.us.us.i.i.i, %.preheader.us.us.us.preheader.i.i.i
  %i.arg = phi i32 [ %.pre66.pre.i.i.i, %.preheader.us.us.us.preheader.i.i.i ], [ %i.atb, %._crit_edge.split.us.us.us.us.i.i.i ]
  %.8.i.i = phi i32 [ %.7.i.i, %.preheader.us.us.us.preheader.i.i.i ], [ %.10.i.i, %._crit_edge.split.us.us.us.us.i.i.i ]
  %.pre66.i.i.i = phi i32 [ %.pre66.pre.i.i.i, %.preheader.us.us.us.preheader.i.i.i ], [ %.pre6670.i.i.i, %._crit_edge.split.us.us.us.us.i.i.i ] ; 2 uses
  %.03944.us.us.us.i.i.i = phi i32 [ 0, %.preheader.us.us.us.preheader.i.i.i ], [ %i.atd, %._crit_edge.split.us.us.us.us.i.i.i ] ; 5 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %.preheader.us.us.us.i.i.i
  %i.arh = phi i32 [ %i.arg, %.preheader.us.us.us.i.i.i ], [ %i.atb, %bb.bh ] ; 2 uses
  %.9.i.i = phi i32 [ %.8.i.i, %.preheader.us.us.us.i.i.i ], [ %.10.i.i, %bb.bh ] ; 2 uses
  %.pre6671.i.i.i = phi i32 [ %.pre66.i.i.i, %.preheader.us.us.us.i.i.i ], [ %.pre6670.i.i.i, %bb.bh ]
  %i.ari = phi i32 [ %.pre66.i.i.i, %.preheader.us.us.us.i.i.i ], [ %i.atc, %bb.bh ] ; 3 uses
  %.03843.us.us.us.us.i.i.i = phi i32 [ %.049.us.us.i.i.i, %.preheader.us.us.us.i.i.i ], [ %i.arj, %bb.bh ] ; 3 uses
  %i.arj = add nuw nsw i32 %.03843.us.us.us.us.i.i.i, 1 ; 4 uses
  %i.ark = mul nsw i32 %i.arj, %i.ari
  %i.arl = add nsw i32 %i.ark, %.03944.us.us.us.i.i.i
  %i.arm = sext i32 %i.arl to i64
  %i.arn = getelementptr [2 x i8], ptr %i.adj, i64 %i.arm
  %i.aro = getelementptr i8, ptr %i.arn, i64 2
  %i.arp = load i16, ptr %i.aro, align 2, !tbaa !57
  %i.arq = zext i16 %i.arp to i32                 ; 3 uses
  %i.arr = and i32 %i.arq, 12288
  %i.ars = icmp eq i32 %i.arr, 8192
  br i1 %i.ars, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.art = lshr i32 %i.arq, 14
  %i.aru = and i32 %i.art, 1
  %i.arv = zext nneg i32 %i.aru to i64
  %i.arw = getelementptr inbounds nuw [2 x i8], ptr @refctxno_lut, i64 %i.arv
  %i.arx = and i32 %i.arq, 255
  %i.ary = icmp ne i32 %i.arx, 0
  %i.arz = zext i1 %i.ary to i64
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arw, i64 %i.arz
  %i.asb = load i8, ptr %i.asa, align 1, !tbaa !52
  %i.asc = mul nsw i32 %.03843.us.us.us.us.i.i.i, %i.ari
  %i.asd = add nsw i32 %i.asc, %.03944.us.us.us.i.i.i
  %i.ase = sext i32 %i.asd to i64
  %i.asf = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ase
  %i.asg = load i32, ptr %i.asf, align 4, !tbaa !39
  %i.ash = and i32 %i.asg, 127
  %i.asi = zext nneg i32 %i.ash to i64
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr @lut_nmsedec_ref0, i64 %i.asi
  %.0.i.us.us.us.us.i.i.i = load i32, ptr %i.asj, align 4, !tbaa !39
  %i.ask = add nsw i32 %.0.i.us.us.us.us.i.i.i, %.9.i.i
  %i.asl = zext i8 %i.asb to i64
  %i.asm = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.asl
  %i.asn = mul nsw i32 %.03843.us.us.us.us.i.i.i, %i.arh
  %i.aso = add nsw i32 %i.asn, %.03944.us.us.us.i.i.i
  %i.asp = sext i32 %i.aso to i64
  %i.asq = getelementptr inbounds [4 x i8], ptr %4, i64 %i.asp
  %i.asr = load i32, ptr %i.asq, align 4, !tbaa !39
  %i.ass = lshr i32 %i.asr, 6
  %.lobit.i.i.i = and i32 %i.ass, 1
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.asm, i32 noundef %.lobit.i.i.i) #11
  %i.ast = load i32, ptr %i.adi, align 8, !tbaa !214 ; 4 uses
  %i.asu = mul nsw i32 %i.ast, %i.arj
  %i.asv = add nsw i32 %i.asu, %.03944.us.us.us.i.i.i
  %i.asw = sext i32 %i.asv to i64
  %i.asx = getelementptr [2 x i8], ptr %i.adj, i64 %i.asw
  %i.asy = getelementptr i8, ptr %i.asx, i64 2    ; 2 uses
  %i.asz = load i16, ptr %i.asy, align 2, !tbaa !57
  %i.ata = or i16 %i.asz, 16384
  store i16 %i.ata, ptr %i.asy, align 2, !tbaa !57
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.atb = phi i32 [ %i.ast, %bb.bg ], [ %i.arh, %bb.bf ] ; 2 uses
  %.10.i.i = phi i32 [ %i.ask, %bb.bg ], [ %.9.i.i, %bb.bf ] ; 3 uses
  %.pre6670.i.i.i = phi i32 [ %i.ast, %bb.bg ], [ %.pre6671.i.i.i, %bb.bf ] ; 2 uses
  %i.atc = phi i32 [ %i.ast, %bb.bg ], [ %i.ari, %bb.bf ]
  %exitcond64.not.i.i.i = icmp eq i32 %i.arj, %smin63.i.i.i
  br i1 %exitcond64.not.i.i.i, label %._crit_edge.split.us.us.us.us.i.i.i, label %bb.bf, !llvm.loop !169

._crit_edge.split.us.us.us.us.i.i.i:              ; preds = %bb.bh
  %i.atd = add nuw nsw i32 %.03944.us.us.us.i.i.i, 1 ; 2 uses
  %exitcond65.not.i.i.i = icmp eq i32 %i.atd, %i.amj
  br i1 %exitcond65.not.i.i.i, label %._crit_edge46.split.us.us.i.i.i, label %.preheader.us.us.us.i.i.i, !llvm.loop !170

._crit_edge46.split.us.us.i.i.i:                  ; preds = %._crit_edge.split.us.us.us.us.i.i.i, %.preheader42.us.us.i.i.i
  %.11.i.i = phi i32 [ %.7.i.i, %.preheader42.us.us.i.i.i ], [ %.10.i.i, %._crit_edge.split.us.us.us.us.i.i.i ] ; 2 uses
  %i.ate = icmp slt i32 %i.are, %i.ail
  %indvars.iv.next62.i.i.i = add i32 %indvars.iv61.i.i.i, 4
  br i1 %i.ate, label %.preheader42.us.us.i.i.i, label %encode_sigpass.exit.i.i, !llvm.loop !171

.preheader42.us.i.i.i:                            ; preds = %.preheader42.lr.ph.split.us.i.i.i, %._crit_edge46.split.us.i.i.i
  %.12.i.i = phi i32 [ %.16.i.i, %._crit_edge46.split.us.i.i.i ], [ 0, %.preheader42.lr.ph.split.us.i.i.i ] ; 2 uses
  %indvars.iv.i105.i.i = phi i32 [ %indvars.iv.next.i108.i.i, %._crit_edge46.split.us.i.i.i ], [ 4, %.preheader42.lr.ph.split.us.i.i.i ] ; 2 uses
  %.049.us.i.i.i = phi i32 [ %i.atf, %._crit_edge46.split.us.i.i.i ], [ 0, %.preheader42.lr.ph.split.us.i.i.i ] ; 3 uses
  %smin.i106.i.i = call i32 @llvm.smin.i32(i32 %i.ail, i32 %indvars.iv.i105.i.i)
  %i.atf = add i32 %.049.us.i.i.i, 4              ; 3 uses
  %invariant.smin.us.i107.i.i = call i32 @llvm.smin.i32(i32 %i.ail, i32 %i.atf)
  %i.atg = icmp slt i32 %.049.us.i.i.i, %invariant.smin.us.i107.i.i
  br i1 %i.atg, label %.preheader.us53.preheader.i.i.i, label %._crit_edge46.split.us.i.i.i

.preheader.us53.preheader.i.i.i:                  ; preds = %.preheader42.us.i.i.i
  %.pre.pre.i109.i.i = load i32, ptr %i.adi, align 8, !tbaa !214 ; 2 uses
  br label %.preheader.us53.i.i.i

.preheader.us53.i.i.i:                            ; preds = %._crit_edge.split.us.i.i.i, %.preheader.us53.preheader.i.i.i
  %i.ath = phi i32 [ %.pre.pre.i109.i.i, %.preheader.us53.preheader.i.i.i ], [ %i.ave, %._crit_edge.split.us.i.i.i ]
  %.13.i.i = phi i32 [ %.12.i.i, %.preheader.us53.preheader.i.i.i ], [ %.15.i.i, %._crit_edge.split.us.i.i.i ]
  %.pre.i110.i.i = phi i32 [ %.pre.pre.i109.i.i, %.preheader.us53.preheader.i.i.i ], [ %.pre67.i.i.i, %._crit_edge.split.us.i.i.i ] ; 2 uses
  %.03944.us54.i.i.i = phi i32 [ 0, %.preheader.us53.preheader.i.i.i ], [ %i.avg, %._crit_edge.split.us.i.i.i ] ; 5 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bk, %.preheader.us53.i.i.i
  %i.ati = phi i32 [ %i.ath, %.preheader.us53.i.i.i ], [ %i.ave, %bb.bk ] ; 2 uses
  %.14.i.i = phi i32 [ %.13.i.i, %.preheader.us53.i.i.i ], [ %.15.i.i, %bb.bk ] ; 2 uses
  %.pre68.i.i.i = phi i32 [ %.pre.i110.i.i, %.preheader.us53.i.i.i ], [ %.pre67.i.i.i, %bb.bk ]
  %i.atj = phi i32 [ %.pre.i110.i.i, %.preheader.us53.i.i.i ], [ %i.avf, %bb.bk ] ; 3 uses
  %.03843.us.i.i.i = phi i32 [ %.049.us.i.i.i, %.preheader.us53.i.i.i ], [ %i.atk, %bb.bk ] ; 3 uses
  %i.atk = add nuw nsw i32 %.03843.us.i.i.i, 1    ; 4 uses
  %i.atl = mul nsw i32 %i.atk, %i.atj
  %i.atm = add nsw i32 %i.atl, %.03944.us54.i.i.i
  %i.atn = sext i32 %i.atm to i64
  %i.ato = getelementptr [2 x i8], ptr %i.adj, i64 %i.atn
  %i.atp = getelementptr i8, ptr %i.ato, i64 2
  %i.atq = load i16, ptr %i.atp, align 2, !tbaa !57
  %i.atr = zext i16 %i.atq to i32                 ; 3 uses
  %i.ats = and i32 %i.atr, 12288
  %i.att = icmp eq i32 %i.ats, 8192
  br i1 %i.att, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.atu = lshr i32 %i.atr, 14
  %i.atv = and i32 %i.atu, 1
  %i.atw = zext nneg i32 %i.atv to i64
  %i.atx = getelementptr inbounds nuw [2 x i8], ptr @refctxno_lut, i64 %i.atw
  %i.aty = and i32 %i.atr, 255
  %i.atz = icmp ne i32 %i.aty, 0
  %i.aua = zext i1 %i.atz to i64
  %i.aub = getelementptr inbounds nuw i8, ptr %i.atx, i64 %i.aua
  %i.auc = load i8, ptr %i.aub, align 1, !tbaa !52
  %i.aud = mul nsw i32 %.03843.us.i.i.i, %i.atj
  %i.aue = add nsw i32 %i.aud, %.03944.us54.i.i.i
  %i.auf = sext i32 %i.aue to i64
  %i.aug = getelementptr inbounds [4 x i8], ptr %4, i64 %i.auf
  %i.auh = load i32, ptr %i.aug, align 4, !tbaa !39
  %i.aui = ashr i32 %i.auh, %.09320.i.i
  %i.auj = and i32 %i.aui, 127
  %i.auk = zext nneg i32 %i.auj to i64
  %i.aul = getelementptr inbounds nuw [4 x i8], ptr @lut_nmsedec_ref, i64 %i.auk
  %.0.i.us.i112.i.i = load i32, ptr %i.aul, align 4, !tbaa !39
  %i.aum = add nsw i32 %.0.i.us.i112.i.i, %.14.i.i
  %i.aun = zext i8 %i.auc to i64
  %i.auo = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.aun
  %i.aup = mul nsw i32 %.03843.us.i.i.i, %i.ati
  %i.auq = add nsw i32 %i.aup, %.03944.us54.i.i.i
  %i.aur = sext i32 %i.auq to i64
  %i.aus = getelementptr inbounds [4 x i8], ptr %4, i64 %i.aur
  %i.aut = load i32, ptr %i.aus, align 4, !tbaa !39
  %i.auu = and i32 %i.aut, %i.anz
  %.not.us.i113.i.i = icmp ne i32 %i.auu, 0
  %i.auv = zext i1 %.not.us.i113.i.i to i32
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.auo, i32 noundef %i.auv) #11
  %i.auw = load i32, ptr %i.adi, align 8, !tbaa !214 ; 4 uses
  %i.aux = mul nsw i32 %i.auw, %i.atk
  %i.auy = add nsw i32 %i.aux, %.03944.us54.i.i.i
  %i.auz = sext i32 %i.auy to i64
  %i.ava = getelementptr [2 x i8], ptr %i.adj, i64 %i.auz
  %i.avb = getelementptr i8, ptr %i.ava, i64 2    ; 2 uses
  %i.avc = load i16, ptr %i.avb, align 2, !tbaa !57
  %i.avd = or i16 %i.avc, 16384
  store i16 %i.avd, ptr %i.avb, align 2, !tbaa !57
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.ave = phi i32 [ %i.auw, %bb.bj ], [ %i.ati, %bb.bi ] ; 2 uses
  %.15.i.i = phi i32 [ %i.aum, %bb.bj ], [ %.14.i.i, %bb.bi ] ; 3 uses
  %.pre67.i.i.i = phi i32 [ %i.auw, %bb.bj ], [ %.pre68.i.i.i, %bb.bi ] ; 2 uses
  %i.avf = phi i32 [ %i.auw, %bb.bj ], [ %i.atj, %bb.bi ]
  %exitcond.not.i111.i.i = icmp eq i32 %i.atk, %smin.i106.i.i
  br i1 %exitcond.not.i111.i.i, label %._crit_edge.split.us.i.i.i, label %bb.bi, !llvm.loop !169

._crit_edge.split.us.i.i.i:                       ; preds = %bb.bk
  %i.avg = add nuw nsw i32 %.03944.us54.i.i.i, 1  ; 2 uses
  %exitcond60.not.i.i.i = icmp eq i32 %i.avg, %i.amj
  br i1 %exitcond60.not.i.i.i, label %._crit_edge46.split.us.i.i.i, label %.preheader.us53.i.i.i, !llvm.loop !170

._crit_edge46.split.us.i.i.i:                     ; preds = %._crit_edge.split.us.i.i.i, %.preheader42.us.i.i.i
  %.16.i.i = phi i32 [ %.12.i.i, %.preheader42.us.i.i.i ], [ %.15.i.i, %._crit_edge.split.us.i.i.i ] ; 2 uses
  %i.avh = icmp slt i32 %i.atf, %i.ail
  %indvars.iv.next.i108.i.i = add i32 %indvars.iv.i105.i.i, 4
  br i1 %i.avh, label %.preheader42.us.i.i.i, label %encode_sigpass.exit.i.i, !llvm.loop !171

bb.bl:                                            ; preds = %bb.ax
  br i1 %i.ain, label %.preheader177.lr.ph.i.i.i, label %encode_sigpass.exit.i.i

.preheader177.lr.ph.i.i.i:                        ; preds = %bb.bl
  %.not174.i.i.i = icmp eq i32 %.09320.i.i, 0     ; 2 uses
  br i1 %i.amo, label %.preheader177.us.i.i.i, label %encode_sigpass.exit.i.i

.preheader177.us.i.i.i:                           ; preds = %.preheader177.lr.ph.i.i.i, %._crit_edge.us.i120.i.i
  %.18.i.i = phi i32 [ %.24.i.i, %._crit_edge.us.i120.i.i ], [ 0, %.preheader177.lr.ph.i.i.i ]
  %indvars.iv193.i.i.i = phi i64 [ %indvars.iv.next194.i.i.i, %._crit_edge.us.i120.i.i ], [ 0, %.preheader177.lr.ph.i.i.i ] ; 6 uses
  %indvars34.i.i = trunc i64 %indvars.iv193.i.i.i to i32 ; 2 uses
  %i.avi = or disjoint i64 %indvars.iv193.i.i.i, 3 ; 2 uses
  %i.avj = icmp samesign ult i64 %i.avi, %i.aio
  %i.avk = or disjoint i64 %indvars.iv193.i.i.i, 1
  %i.avl = or disjoint i64 %indvars.iv193.i.i.i, 2
  %indvars.iv.next194.i.i.i = add nuw nsw i64 %indvars.iv193.i.i.i, 4 ; 5 uses
  %i.avm = trunc nuw nsw i64 %indvars.iv.next194.i.i.i to i32
  %invariant.smin.us.i115.i.i = call i32 @llvm.smin.i32(i32 %i.avm, i32 %i.ail)
  br label %bb.bm

bb.bm:                                            ; preds = %.loopexit.us.i.i.i, %.preheader177.us.i.i.i
  %.19.i.i = phi i32 [ %.18.i.i, %.preheader177.us.i.i.i ], [ %.24.i.i, %.loopexit.us.i.i.i ] ; 3 uses
  %indvars.iv.i116.i.i = phi i64 [ 0, %.preheader177.us.i.i.i ], [ %indvars.iv.next.i118.i.i, %.loopexit.us.i.i.i ] ; 15 uses
  %.pre.i117.pre.i.i = load i32, ptr %i.adi, align 8, !tbaa !214 ; 2 uses
  br i1 %i.avj, label %bb.bn, label %.lr.ph.us.preheader.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.avn = sext i32 %.pre.i117.pre.i.i to i64     ; 5 uses
  %i.avo = mul nsw i64 %i.avk, %i.avn             ; 2 uses
  %i.avp = getelementptr [2 x i8], ptr %i.adj, i64 %i.avo
  %i.avq = getelementptr [2 x i8], ptr %i.avp, i64 %indvars.iv.i116.i.i
  %i.avr = getelementptr i8, ptr %i.avq, i64 2
  %i.avs = load i16, ptr %i.avr, align 2, !tbaa !57
  %i.avt = and i16 %i.avs, 12543
  %.not.us.i122.i.i = icmp eq i16 %i.avt, 0
  br i1 %.not.us.i122.i.i, label %bb.bo, label %.lr.ph.us.preheader.i.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.avu = mul nsw i64 %i.avl, %i.avn             ; 2 uses
  %i.avv = getelementptr [2 x i8], ptr %i.adj, i64 %i.avu
  %i.avw = getelementptr [2 x i8], ptr %i.avv, i64 %indvars.iv.i116.i.i
  %i.avx = getelementptr i8, ptr %i.avw, i64 2
  %i.avy = load i16, ptr %i.avx, align 2, !tbaa !57
  %i.avz = and i16 %i.avy, 12543
  %.not161.us.i.i.i = icmp eq i16 %i.avz, 0
  br i1 %.not161.us.i.i.i, label %bb.bp, label %.lr.ph.us.preheader.i.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.awa = mul nsw i64 %i.avi, %i.avn             ; 2 uses
  %i.awb = getelementptr [2 x i8], ptr %i.adj, i64 %i.awa
  %i.awc = getelementptr [2 x i8], ptr %i.awb, i64 %indvars.iv.i116.i.i
  %i.awd = getelementptr i8, ptr %i.awc, i64 2
  %i.awe = load i16, ptr %i.awd, align 2, !tbaa !57
  %i.awf = and i16 %i.awe, 12543
  %.not162.us.i.i.i = icmp eq i16 %i.awf, 0
  br i1 %.not162.us.i.i.i, label %bb.bq, label %.lr.ph.us.preheader.i.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.awg = mul nsw i64 %indvars.iv.next194.i.i.i, %i.avn
  %i.awh = getelementptr [2 x i8], ptr %i.adj, i64 %i.awg
  %i.awi = getelementptr [2 x i8], ptr %i.awh, i64 %indvars.iv.i116.i.i
  %i.awj = getelementptr i8, ptr %i.awi, i64 2
  %i.awk = load i16, ptr %i.awj, align 2, !tbaa !57
  %i.awl = and i16 %i.awk, 12543
  %.not163.us.i.i.i = icmp eq i16 %i.awl, 0
  br i1 %.not163.us.i.i.i, label %.preheader.us.preheader.i123.i.i, label %.lr.ph.us.preheader.i.i.i

.preheader.us.preheader.i123.i.i:                 ; preds = %bb.bq
  %i.awm = mul nsw i64 %indvars.iv193.i.i.i, %i.avn
  %i.awn = getelementptr [4 x i8], ptr %4, i64 %i.awm
  %i.awo = getelementptr [4 x i8], ptr %i.awn, i64 %indvars.iv.i116.i.i
  %i.awp = load i32, ptr %i.awo, align 4, !tbaa !39
  %i.awq = and i32 %i.awp, %i.anz
  %.not164.us.i.i.i = icmp eq i32 %i.awq, 0
  br i1 %.not164.us.i.i.i, label %.preheader.us.1.i.i.i, label %.lr.ph181.us.preheader.i.i.i

.lr.ph.us.preheader.i.i.i:                        ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm
  %i.awr = getelementptr [2 x i8], ptr %i.adj, i64 %indvars.iv.i116.i.i ; 4 uses
  %i.aws = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.i116.i.i ; 2 uses
  %i.awt = trunc nuw nsw i64 %indvars.iv.i116.i.i to i32
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %bb.bt, %.lr.ph.us.preheader.i.i.i
  %.20.i.i = phi i32 [ %.19.i.i, %.lr.ph.us.preheader.i.i.i ], [ %.21.i.i, %bb.bt ] ; 3 uses
  %i.awu = phi i32 [ %.pre.i117.pre.i.i, %.lr.ph.us.preheader.i.i.i ], [ %i.azh, %bb.bt ] ; 3 uses
  %.1178.us.i.i.i = phi i32 [ %indvars34.i.i, %.lr.ph.us.preheader.i.i.i ], [ %i.awv, %bb.bt ] ; 4 uses
  %i.awv = add nuw nsw i32 %.1178.us.i.i.i, 1     ; 6 uses
  %i.aww = mul nsw i32 %i.awv, %i.awu
  %i.awx = sext i32 %i.aww to i64
  %i.awy = getelementptr [2 x i8], ptr %i.awr, i64 %i.awx
  %i.awz = getelementptr i8, ptr %i.awy, i64 2
  %i.axa = load i16, ptr %i.awz, align 2, !tbaa !57
  %i.axb = zext i16 %i.axa to i32                 ; 2 uses
  %i.axc = and i32 %i.axb, 12288
  %.not168.us.i.i.i = icmp eq i32 %i.axc, 0
  br i1 %.not168.us.i.i.i, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %.lr.ph.us.i.i.i
  %i.axd = and i32 %i.axb, 255
  %i.axe = zext nneg i32 %i.axd to i64
  %gep.us.i121.i.i = getelementptr [4 x i8], ptr %gep.i, i64 %i.axe
  %i.axf = load i8, ptr %gep.us.i121.i.i, align 1, !tbaa !52
  %i.axg = zext i8 %i.axf to i64
  %i.axh = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.axg
  %i.axi = mul nsw i32 %.1178.us.i.i.i, %i.awu
  %i.axj = sext i32 %i.axi to i64
  %i.axk = getelementptr [4 x i8], ptr %i.aws, i64 %i.axj
  %i.axl = load i32, ptr %i.axk, align 4, !tbaa !39
  %i.axm = and i32 %i.axl, %i.anz
  %.not169.us.i.i.i = icmp ne i32 %i.axm, 0
  %i.axn = zext i1 %.not169.us.i.i.i to i32
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.axh, i32 noundef %i.axn) #11
  %i.axo = load i32, ptr %i.adi, align 8, !tbaa !214 ; 3 uses
  %i.axp = mul nsw i32 %i.axo, %.1178.us.i.i.i
  %i.axq = sext i32 %i.axp to i64
  %i.axr = getelementptr [4 x i8], ptr %i.aws, i64 %i.axq
  %i.axs = load i32, ptr %i.axr, align 4, !tbaa !39 ; 3 uses
  %i.axt = and i32 %i.axs, %i.anz
  %.not170.us.i.i.i = icmp eq i32 %i.axt, 0
  br i1 %.not170.us.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.axu = mul nsw i32 %i.axo, %i.awv
  %i.axv = sext i32 %i.axu to i64
  %i.axw = getelementptr [2 x i8], ptr %i.awr, i64 %i.axv
  %i.axx = getelementptr i8, ptr %i.axw, i64 2
  %i.axy = load i16, ptr %i.axx, align 2, !tbaa !57 ; 2 uses
  %i.axz = zext i16 %i.axy to i32                 ; 2 uses
  %i.aya = and i32 %i.axz, 15
  %i.ayb = zext nneg i32 %i.aya to i64            ; 2 uses
  %i.ayc = getelementptr inbounds nuw [16 x i8], ptr @ff_jpeg2000_xorbit_lut, i64 %i.ayb
  %i.ayd = lshr i32 %i.axz, 8
  %i.aye = and i32 %i.ayd, 15
  %i.ayf = zext nneg i32 %i.aye to i64            ; 2 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayc, i64 %i.ayf
  %i.ayh = load i8, ptr %i.ayg, align 1, !tbaa !52
  %i.ayi = getelementptr inbounds nuw [16 x i8], ptr @ff_jpeg2000_sgnctxno_lut, i64 %i.ayb
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayi, i64 %i.ayf
  %i.ayk = load i8, ptr %i.ayj, align 1, !tbaa !52
  %i.ayl = ashr i32 %i.axs, %.09320.i.i
  %i.aym = and i32 %i.ayl, 127
  %i.ayn = zext nneg i32 %i.aym to i64
  %i.ayo = getelementptr inbounds nuw [4 x i8], ptr @lut_nmsedec_sig, i64 %i.ayn
  %i.ayp = and i32 %i.axs, 127
  %i.ayq = zext nneg i32 %i.ayp to i64
  %i.ayr = getelementptr inbounds nuw [4 x i8], ptr @lut_nmsedec_sig0, i64 %i.ayq
  %.0.in.i171.us.i.i.i = select i1 %.not174.i.i.i, ptr %i.ayr, ptr %i.ayo
  %.0.i172.us.i.i.i = load i32, ptr %.0.in.i171.us.i.i.i, align 4, !tbaa !39
  %i.ays = add nsw i32 %.0.i172.us.i.i.i, %.20.i.i
  %i.ayt = zext i8 %i.ayk to i64
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.ayt
  %i.ayv = lshr i16 %i.axy, 15
  %i.ayw = zext i8 %i.ayh to i16
  %i.ayx = xor i16 %i.ayv, %i.ayw
  %i.ayy = zext nneg i16 %i.ayx to i32
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.ayu, i32 noundef %i.ayy) #11
  %i.ayz = load i32, ptr %i.adi, align 8, !tbaa !214
  %i.aza = mul nsw i32 %i.ayz, %i.awv
  %i.azb = sext i32 %i.aza to i64
  %i.azc = getelementptr [2 x i8], ptr %i.awr, i64 %i.azb
  %i.azd = getelementptr i8, ptr %i.azc, i64 2
  %i.aze = load i16, ptr %i.azd, align 2, !tbaa !57
  %i.azf = lshr i16 %i.aze, 15
  %i.azg = zext nneg i16 %i.azf to i32
  call void @ff_jpeg2000_set_significance(ptr noundef nonnull %4, i32 noundef %i.awt, i32 noundef %.1178.us.i.i.i, i32 noundef %i.azg) #11
  %.pre196.i.i.i = load i32, ptr %i.adi, align 8, !tbaa !214
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %.lr.ph.us.i.i.i
  %.21.i.i = phi i32 [ %.20.i.i, %bb.br ], [ %i.ays, %bb.bs ], [ %.20.i.i, %.lr.ph.us.i.i.i ] ; 2 uses
  %i.azh = phi i32 [ %i.axo, %bb.br ], [ %.pre196.i.i.i, %bb.bs ], [ %i.awu, %.lr.ph.us.i.i.i ] ; 2 uses
  %i.azi = mul nsw i32 %i.azh, %i.awv
  %i.azj = sext i32 %i.azi to i64
  %i.azk = getelementptr [2 x i8], ptr %i.awr, i64 %i.azj
  %i.azl = getelementptr i8, ptr %i.azk, i64 2    ; 2 uses
  %i.azm = load i16, ptr %i.azl, align 2, !tbaa !57
  %i.azn = and i16 %i.azm, -4097
  store i16 %i.azn, ptr %i.azl, align 2, !tbaa !57
  %i.azo = icmp slt i32 %i.awv, %invariant.smin.us.i115.i.i
  br i1 %i.azo, label %.lr.ph.us.i.i.i, label %.loopexit.us.i.i.i, !llvm.loop !172

.preheader.us.1.i.i.i:                            ; preds = %.preheader.us.preheader.i123.i.i
  %i.azp = getelementptr [4 x i8], ptr %4, i64 %i.avo
  %i.azq = getelementptr [4 x i8], ptr %i.azp, i64 %indvars.iv.i116.i.i
  %i.azr = load i32, ptr %i.azq, align 4, !tbaa !39
  %i.azs = and i32 %i.azr, %i.anz
  %.not164.us.1.i.i.i = icmp eq i32 %i.azs, 0
  br i1 %.not164.us.1.i.i.i, label %.preheader.us.2.i.i.i, label %.lr.ph181.us.preheader.i.i.i

.preheader.us.2.i.i.i:                            ; preds = %.preheader.us.1.i.i.i
  %i.azt = getelementptr [4 x i8], ptr %4, i64 %i.avu
  %i.azu = getelementptr [4 x i8], ptr %i.azt, i64 %indvars.iv.i116.i.i
  %i.azv = load i32, ptr %i.azu, align 4, !tbaa !39
  %i.azw = and i32 %i.azv, %i.anz
  %.not164.us.2.i.i.i = icmp eq i32 %i.azw, 0
  br i1 %.not164.us.2.i.i.i, label %.preheader.us.3.i.i.i, label %.lr.ph181.us.preheader.i.i.i

.preheader.us.3.i.i.i:                            ; preds = %.preheader.us.2.i.i.i
  %i.azx = getelementptr [4 x i8], ptr %4, i64 %i.awa
  %i.azy = getelementptr [4 x i8], ptr %i.azx, i64 %indvars.iv.i116.i.i
  %i.azz = load i32, ptr %i.azy, align 4, !tbaa !39
  %i.baa = and i32 %i.azz, %i.anz
  %.not164.us.3.i.i.i = icmp eq i32 %i.baa, 0
  br i1 %.not164.us.3.i.i.i, label %bb.bu, label %.lr.ph181.us.preheader.i.i.i

bb.bu:                                            ; preds = %.preheader.us.3.i.i.i
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.adm, i32 noundef 0) #11
  br label %.loopexit.us.i.i.i

.lr.ph181.us.preheader.i.i.i:                     ; preds = %.preheader.us.3.i.i.i, %.preheader.us.2.i.i.i, %.preheader.us.1.i.i.i, %.preheader.us.preheader.i123.i.i
  %.0157.lcssa.us.ph.i.i.i = phi i32 [ 2, %.preheader.us.2.i.i.i ], [ 3, %.preheader.us.3.i.i.i ], [ 1, %.preheader.us.1.i.i.i ], [ 0, %.preheader.us.preheader.i123.i.i ] ; 3 uses
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.adm, i32 noundef 1) #11
  %i.bab = lshr i32 %.0157.lcssa.us.ph.i.i.i, 1
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.adn, i32 noundef %i.bab) #11
  %i.bac = and i32 %.0157.lcssa.us.ph.i.i.i, 1
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.adn, i32 noundef %i.bac) #11
  %i.bad = or disjoint i32 %.0157.lcssa.us.ph.i.i.i, %indvars34.i.i
  %.pre197.i.i.i = load i32, ptr %i.adi, align 8, !tbaa !214
  %i.bae = getelementptr [2 x i8], ptr %i.adj, i64 %indvars.iv.i116.i.i ; 4 uses
  %i.baf = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.i116.i.i ; 2 uses
  %i.bag = trunc nuw nsw i64 %indvars.iv.i116.i.i to i32
  %i.bah = sext i32 %i.bad to i64                 ; 2 uses
  br label %.lr.ph181.us.i.i.i.a

.lr.ph181.us.i.i.i.a:                             ; preds = %bb.bz, %.lr.ph181.us.preheader.i.i.i
  %indvars.iv31.i.i = phi i64 [ %indvars.iv.next32.i.i, %bb.bz ], [ %i.bah, %.lr.ph181.us.preheader.i.i.i ] ; 5 uses
  %.22.i.i = phi i32 [ %.23.i.i, %bb.bz ], [ %.19.i.i, %.lr.ph181.us.preheader.i.i.i ] ; 3 uses
  %5 = phi i32 [ %i.bci, %bb.bz ], [ %.pre197.i.i.i, %.lr.ph181.us.preheader.i.i.i ] ; 3 uses
  %indvars.iv.next32.i.i = add nuw nsw i64 %indvars.iv31.i.i, 1 ; 6 uses
  %i.bai = sext i32 %5 to i64                     ; 4 uses
  %i.baj = mul nsw i64 %indvars.iv.next32.i.i, %i.bai
  %i.bak = getelementptr [2 x i8], ptr %i.bae, i64 %i.baj
  %i.bal = getelementptr i8, ptr %i.bak, i64 2
  %i.bam = load i16, ptr %i.bal, align 2, !tbaa !57
  %i.ban = zext i16 %i.bam to i32                 ; 2 uses
  %6 = and i32 %i.ban, 12288
  %.not165.us.i.i.i = icmp eq i32 %6, 0
  br i1 %.not165.us.i.i.i, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %.lr.ph181.us.i.i.i.a
  %i.bao = icmp samesign ugt i64 %indvars.iv31.i.i, %i.bah
  br i1 %i.bao, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %7 = and i32 %i.ban, 255
  %8 = zext nneg i32 %7 to i64
  %gep183.us.i.i.i = getelementptr [4 x i8], ptr %gep.i, i64 %8
  %9 = load i8, ptr %gep183.us.i.i.i, align 1, !tbaa !52
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds nuw i8, ptr %i.adl, i64 %10
  %i.bap = mul nsw i64 %indvars.iv31.i.i, %i.bai
  %12 = getelementptr [4 x i8], ptr %i.baf, i64 %i.bap
  %13 = load i32, ptr %12, align 4, !tbaa !39
  %14 = and i32 %13, %i.anz
  %.not166.us.i.i.i = icmp ne i32 %14, 0
  %i.baq = zext i1 %.not166.us.i.i.i to i32
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %11, i32 noundef %i.baq) #11
  %.pre198.i.i.i = load i32, ptr %i.adi, align 8, !tbaa !214 ; 2 uses
  %.pre45.i.i = sext i32 %.pre198.i.i.i to i64
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pre-phi46.i.i = phi i64 [ %.pre45.i.i, %bb.bw ], [ %i.bai, %bb.bv ] ; 3 uses
  %15 = phi i32 [ %.pre198.i.i.i, %bb.bw ], [ %5, %bb.bv ]
  %i.bar = mul nsw i64 %.pre-phi46.i.i, %indvars.iv31.i.i
  %i.bas = getelementptr [4 x i8], ptr %i.baf, i64 %i.bar
  %i.bat = load i32, ptr %i.bas, align 4, !tbaa !39 ; 3 uses
  %i.bau = and i32 %i.bat, %i.anz
  %.not167.us.i.i.i = icmp eq i32 %i.bau, 0
  br i1 %.not167.us.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.bav = mul nsw i64 %.pre-phi46.i.i, %indvars.iv.next32.i.i
  %i.baw = getelementptr [2 x i8], ptr %i.bae, i64 %i.bav
  %i.bax = getelementptr i8, ptr %i.baw, i64 2
  %i.bay = load i16, ptr %i.bax, align 2, !tbaa !57 ; 2 uses
  %i.baz = zext i16 %i.bay to i32                 ; 2 uses
  %i.bba = and i32 %i.baz, 15
  %i.bbb = zext nneg i32 %i.bba to i64            ; 2 uses
  %i.bbc = getelementptr inbounds nuw [16 x i8], ptr @ff_jpeg2000_xorbit_lut, i64 %i.bbb
  %i.bbd = lshr i32 %i.baz, 8
  %i.bbe = and i32 %i.bbd, 15
  %i.bbf = zext nneg i32 %i.bbe to i64            ; 2 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbc, i64 %i.bbf
  %i.bbh = load i8, ptr %i.bbg, align 1, !tbaa !52
  %i.bbi = getelementptr inbounds nuw [16 x i8], ptr @ff_jpeg2000_sgnctxno_lut, i64 %i.bbb
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbi, i64 %i.bbf
  %i.bbk = load i8, ptr %i.bbj, align 1, !tbaa !52
  %i.bbl = ashr i32 %i.bat, %.09320.i.i
  %i.bbm = and i32 %i.bbl, 127
  %i.bbn = zext nneg i32 %i.bbm to i64
  %i.bbo = getelementptr inbounds nuw [4 x i8], ptr @lut_nmsedec_sig, i64 %i.bbn
  %i.bbp = and i32 %i.bat, 127
  %i.bbq = zext nneg i32 %i.bbp to i64
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr @lut_nmsedec_sig0, i64 %i.bbq
  %.0.in.i.us.i124.i.i = select i1 %.not174.i.i.i, ptr %i.bbr, ptr %i.bbo
  %.0.i.us.i125.i.i = load i32, ptr %.0.in.i.us.i124.i.i, align 4, !tbaa !39
  %i.bbs = add nsw i32 %.0.i.us.i125.i.i, %.22.i.i
  %i.bbt = zext i8 %i.bbk to i64
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.bbt
  %i.bbv = lshr i16 %i.bay, 15
  %i.bbw = zext i8 %i.bbh to i16
  %i.bbx = xor i16 %i.bbv, %i.bbw
  %i.bby = zext nneg i16 %i.bbx to i32
  call void @ff_mqc_encode(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.bbu, i32 noundef %i.bby) #11
  %i.bbz = load i32, ptr %i.adi, align 8, !tbaa !214
  %i.bca = sext i32 %i.bbz to i64
  %i.bcb = mul nsw i64 %indvars.iv.next32.i.i, %i.bca
  %i.bcc = getelementptr [2 x i8], ptr %i.bae, i64 %i.bcb
  %i.bcd = getelementptr i8, ptr %i.bcc, i64 2
  %i.bce = load i16, ptr %i.bcd, align 2, !tbaa !57
  %i.bcf = lshr i16 %i.bce, 15
  %i.bcg = zext nneg i16 %i.bcf to i32
  %i.bch = trunc nsw i64 %indvars.iv31.i.i to i32
  call void @ff_jpeg2000_set_significance(ptr noundef nonnull %4, i32 noundef %i.bag, i32 noundef %i.bch, i32 noundef %i.bcg) #11
  %.pre199.i.i.i = load i32, ptr %i.adi, align 8, !tbaa !214 ; 2 uses
  %.pre47.i.i = sext i32 %.pre199.i.i.i to i64
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %.lr.ph181.us.i.i.i.a
  %.pre-phi48.i.i = phi i64 [ %.pre47.i.i, %bb.by ], [ %.pre-phi46.i.i, %bb.bx ], [ %i.bai, %.lr.ph181.us.i.i.i.a ]
  %.23.i.i = phi i32 [ %i.bbs, %bb.by ], [ %.22.i.i, %bb.bx ], [ %.22.i.i, %.lr.ph181.us.i.i.i.a ] ; 2 uses
  %i.bci = phi i32 [ %.pre199.i.i.i, %bb.by ], [ %15, %bb.bx ], [ %5, %.lr.ph181.us.i.i.i.a ]
  %i.bcj = mul nsw i64 %.pre-phi48.i.i, %indvars.iv.next32.i.i
  %i.bck = getelementptr [2 x i8], ptr %i.bae, i64 %i.bcj
  %i.bcl = getelementptr i8, ptr %i.bck, i64 2    ; 2 uses
  %i.bcm = load i16, ptr %i.bcl, align 2, !tbaa !57
  %i.bcn = and i16 %i.bcm, -4097
  store i16 %i.bcn, ptr %i.bcl, align 2, !tbaa !57
  %i.bco = icmp samesign ugt i64 %indvars.iv.next194.i.i.i, %indvars.iv.next32.i.i
  br i1 %i.bco, label %.lr.ph181.us.i.i.i.a, label %.loopexit.us.i.i.i, !llvm.loop !173

.loopexit.us.i.i.i:                               ; preds = %bb.bt, %bb.bz, %bb.bu
  %.24.i.i = phi i32 [ %.19.i.i, %bb.bu ], [ %.23.i.i, %bb.bz ], [ %.21.i.i, %bb.bt ] ; 3 uses
  %indvars.iv.next.i118.i.i = add nuw nsw i64 %indvars.iv.i116.i.i, 1 ; 2 uses
  %exitcond.not.i119.i.i = icmp eq i64 %indvars.iv.next.i118.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i119.i.i, label %._crit_edge.us.i120.i.i, label %bb.bm, !llvm.loop !174

._crit_edge.us.i120.i.i:                          ; preds = %.loopexit.us.i.i.i
  %i.bcp = icmp samesign ult i64 %indvars.iv.next194.i.i.i, %i.aio
  br i1 %i.bcp, label %.preheader177.us.i.i.i, label %encode_sigpass.exit.i.i, !llvm.loop !175

default.unreachable.i.i:                          ; preds = %bb.ax
  unreachable

encode_sigpass.exit.i.i:                          ; preds = %._crit_edge.us.i120.i.i, %._crit_edge46.split.us.i.i.i, %._crit_edge46.split.us.us.i.i.i, %._crit_edge72.split.us.i.i.i, %.preheader177.lr.ph.i.i.i, %bb.bl, %bb.be, %.preheader69.lr.ph.i.i.i, %bb.ay
  %.26.i.i = phi i32 [ 0, %bb.be ], [ 0, %bb.ay ], [ 0, %bb.bl ], [ 0, %.preheader69.lr.ph.i.i.i ], [ 0, %.preheader177.lr.ph.i.i.i ], [ %.11.i.i, %._crit_edge46.split.us.us.i.i.i ], [ %.5.i.i, %._crit_edge72.split.us.i.i.i ], [ %.16.i.i, %._crit_edge46.split.us.i.i.i ], [ %.24.i.i, %._crit_edge.us.i120.i.i ]
  %i.bcq = load ptr, ptr %i.ami, align 8, !tbaa !98
  %i.bcr = getelementptr inbounds nuw [24 x i8], ptr %i.bcq, i64 %indvars.iv.i.i ; 2 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcr, i64 16
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcr, i64 20
  %i.bcu = call i32 @ff_mqc_flush_to(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.bcs, ptr noundef nonnull %i.bct) #11
  %i.bcv = load ptr, ptr %i.ami, align 8, !tbaa !98 ; 2 uses
  %i.bcw = getelementptr inbounds nuw [24 x i8], ptr %i.bcv, i64 %indvars.iv.i.i ; 3 uses
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bcw, i64 20
  %i.bcy = load i32, ptr %i.bcx, align 4, !tbaa !103
  %i.bcz = sub i32 %i.bcu, %i.bcy
  %i.bda = trunc i32 %i.bcz to i16
  store i16 %i.bda, ptr %i.bcw, align 8, !tbaa !104
  %i.bdb = sext i32 %.26.i.i to i64
  %i.bdc = shl nuw nsw i32 %.09320.i.i, 1
  %i.bdd = zext nneg i32 %i.bdc to i64
  %i.bde = shl i64 %i.bdb, %i.bdd
  %i.bdf = add nsw i64 %i.bde, %.021.i.i          ; 2 uses
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bcw, i64 8
  store i64 %i.bdf, ptr %i.bdg, align 8, !tbaa !105
  %i.bdh = add nuw nsw i32 %.09918.i.i, 1         ; 2 uses
  %i.bdi = icmp eq i32 %i.bdh, 3                  ; 2 uses
  %spec.select.i.i = select i1 %i.bdi, i32 0, i32 %i.bdh
  %i.bdj = sext i1 %i.bdi to i32
  %spec.select104.i.i = add nsw i32 %.09320.i.i, %i.bdj ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bdk = icmp sgt i32 %spec.select104.i.i, -1
  br i1 %i.bdk, label %bb.ax, label %._crit_edge.i.i, !llvm.loop !176

._crit_edge.i.i:                                  ; preds = %encode_sigpass.exit.i.i
  %i.bdl = trunc i64 %indvars.iv.next.i.i to i8   ; 2 uses
  store i8 %i.bdl, ptr %i.amg, align 8, !tbaa !100
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.amg, i64 1
  store i8 %i.bdl, ptr %i.bdm, align 1, !tbaa !101
  %sext.i.i = shl i64 %indvars.iv.i.i, 32
  %i.bdn = ashr exact i64 %sext.i.i, 32           ; 2 uses
  %i.bdo = getelementptr inbounds [24 x i8], ptr %i.bcv, i64 %i.bdn ; 2 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdo, i64 16
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdo, i64 20
  %i.bdr = call i32 @ff_mqc_flush_to(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.bdp, ptr noundef nonnull %i.bdq) #11
  %i.bds = load ptr, ptr %i.ami, align 8, !tbaa !98
  %i.bdt = getelementptr inbounds [24 x i8], ptr %i.bds, i64 %i.bdn ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bdt, i64 20
  %i.bdv = load i32, ptr %i.bdu, align 4, !tbaa !103
  %i.bdw = sub i32 %i.bdr, %i.bdv
  %i.bdx = trunc i32 %i.bdw to i16
  store i16 %i.bdx, ptr %i.bdt, align 8, !tbaa !104
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  %i.bdy = load i16, ptr %i.ahi, align 8, !tbaa !216
  %i.bdz = zext nneg i16 %i.bdy to i32
  %i.bea = shl nuw i32 1, %i.bdz
  %i.beb = add nsw i32 %i.bea, %.0178295.i
  %i.bec = load i32, ptr %i.agq, align 4, !tbaa !39 ; 2 uses
  %i.bed = load i32, ptr %i.afy, align 8, !tbaa !39 ; 2 uses
  %i.bee = add i32 %i.bec, %.0180.i
  %i.bef = sub i32 %i.bee, %i.bed
  %..i239 = call i32 @llvm.smin.i32(i32 %i.beb, i32 %i.bef)
  %i.beg = add nuw nsw i32 %.0185289.i, 1         ; 2 uses
  %indvars.iv.next.i240 = add nsw i64 %indvars.iv.i238, 1 ; 2 uses
  %i.beh = load i32, ptr %i.aga, align 8, !tbaa !92
  %i.bei = icmp slt i32 %i.beg, %i.beh
  br i1 %i.bei, label %bb.ap, label %._crit_edge298.loopexit.i, !llvm.loop !177

._crit_edge298.loopexit.i:                        ; preds = %bb.ca
  %i.bej = trunc nsw i64 %indvars.iv.next.i240 to i32
  %.pre350.i = load i16, ptr %i.agm, align 2, !tbaa !215
  %.pre351.i = load i32, ptr %i.agn, align 4, !tbaa !39
  %.pre352.i = load i32, ptr %i.agk, align 8, !tbaa !39
  %.pre353.i = load i32, ptr %i.agu, align 4, !tbaa !91
  br label %._crit_edge298.i

._crit_edge298.i:                                 ; preds = %._crit_edge298.loopexit.i, %bb.ao
  %i.bek = phi i32 [ %i.ahl, %bb.ao ], [ %.pre353.i, %._crit_edge298.loopexit.i ] ; 2 uses
  %i.bel = phi i32 [ %i.ahm, %bb.ao ], [ %.pre352.i, %._crit_edge298.loopexit.i ] ; 2 uses
  %i.bem = phi i32 [ %i.ahn, %bb.ao ], [ %.pre351.i, %._crit_edge298.loopexit.i ] ; 2 uses
  %i.ben = phi i16 [ %i.aho, %bb.ao ], [ %.pre350.i, %._crit_edge298.loopexit.i ] ; 2 uses
  %i.beo = phi i32 [ %i.ahp, %bb.ao ], [ %i.bec, %._crit_edge298.loopexit.i ]
  %i.bep = phi i32 [ %i.ahq, %bb.ao ], [ %i.bed, %._crit_edge298.loopexit.i ]
  %.1183.lcssa.i = phi i32 [ %.0182300.i, %bb.ao ], [ %i.bej, %._crit_edge298.loopexit.i ]
  %i.beq = zext nneg i16 %i.ben to i32
  %i.ber = shl nuw i32 1, %i.beq
  %i.bes = add nsw i32 %i.ber, %.0176302.i
  %i.bet = sub i32 %i.agj, %i.bel
  %i.beu = add i32 %i.bet, %i.bem
  %.208.i = call i32 @llvm.smin.i32(i32 %i.bes, i32 %i.beu)
  %i.bev = add nuw nsw i32 %.0184299.i, 1         ; 2 uses
  %i.bew = icmp slt i32 %i.bev, %i.bek
  br i1 %i.bew, label %bb.am, label %.loopexit263.loopexit.i, !llvm.loop !178

.loopexit263.loopexit.i:                          ; preds = %._crit_edge298.i
  %.pre354.i = load i8, ptr %i.afr, align 8, !tbaa !83
  br label %.loopexit263.i

.loopexit263.i:                                   ; preds = %.loopexit263.loopexit.i, %bb.al, %bb.ak
  %i.bex = phi i8 [ %.pre354.i, %.loopexit263.loopexit.i ], [ %i.afw, %bb.al ], [ %i.afw, %bb.ak ] ; 2 uses
  %indvars.iv.next341.i = add nuw nsw i64 %indvars.iv340.i, 1 ; 2 uses
  %i.bey = zext i8 %i.bex to i64
  %i.bez = icmp samesign ult i64 %indvars.iv.next341.i, %i.bey
  br i1 %i.bez, label %bb.ai, label %._crit_edge308.loopexit.i, !llvm.loop !179

._crit_edge308.loopexit.i:                        ; preds = %.loopexit263.i
  %.pre355.i = load i32, ptr %i.yg, align 8, !tbaa !55
  br label %._crit_edge308.i

._crit_edge308.i:                                 ; preds = %._crit_edge308.loopexit.i, %bb.ah
  %i.bfa = phi i32 [ %.pre355.i, %._crit_edge308.loopexit.i ], [ %i.afp, %bb.ah ] ; 2 uses
  %indvars.iv.next344.i = add nuw nsw i64 %indvars.iv343.i, 1 ; 2 uses
  %i.bfb = sext i32 %i.bfa to i64
  %i.bfc = icmp slt i64 %indvars.iv.next344.i, %i.bfb
  br i1 %i.bfc, label %bb.ah, label %._crit_edge312.i, !llvm.loop !180

._crit_edge312.i:                                 ; preds = %._crit_edge308.i, %bb.ag
  %i.bfd = load ptr, ptr %i.ack, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bfd, i32 noundef 48, ptr noundef nonnull @.str.52) #11
  %indvars.iv.next347.i = add nuw nsw i64 %indvars.iv346.i, 1 ; 2 uses
  %i.bfe = load i32, ptr %i.vf, align 4, !tbaa !51
  %i.bff = sext i32 %i.bfe to i64
  %i.bfg = icmp slt i64 %indvars.iv.next347.i, %i.bff
  br i1 %i.bfg, label %.lr.ph315.i, label %._crit_edge316.i, !llvm.loop !181

._crit_edge316.i:                                 ; preds = %._crit_edge312.i, %bb.af
  %i.bfh = load ptr, ptr %i.ack, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bfh, i32 noundef 48, ptr noundef nonnull @.str.53) #11
  %i.bfi = load i8, ptr %i.ado, align 8, !tbaa !41
  %.not.i236 = icmp eq i8 %i.bfi, 0
  %i.bfj = load i32, ptr %i.vf, align 4, !tbaa !51 ; 3 uses
  %i.bfk = icmp sgt i32 %i.bfj, 0                 ; 2 uses
  br i1 %.not.i236, label %bb.cm, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge316.i
  br i1 %i.bfk, label %.lr.ph163.i.i, label %.preheader127.i.i

.lr.ph163.i.i:                                    ; preds = %bb.cb
  %i.bfl = load ptr, ptr %i.aet, align 8, !tbaa !67
  %i.bfm = load i32, ptr %i.yg, align 8, !tbaa !55 ; 2 uses
  %i.bfn = icmp sgt i32 %i.bfm, 0
  br i1 %i.bfn, label %.lr.ph.us170.preheader.i.i, label %.preheader127.i.i

.lr.ph.us170.preheader.i.i:                       ; preds = %.lr.ph163.i.i
  %wide.trip.count210.i.i = zext nneg i32 %i.bfj to i64
  %wide.trip.count205.i.i = zext nneg i32 %i.bfm to i64
  br label %.lr.ph.us170.i.i

.lr.ph.us170.i.i:                                 ; preds = %._crit_edge.us171.i.i, %.lr.ph.us170.preheader.i.i
  %indvars.iv207.i.i = phi i64 [ 0, %.lr.ph.us170.preheader.i.i ], [ %indvars.iv.next208.i.i, %._crit_edge.us171.i.i ] ; 2 uses
  %.0106161.us.i.i = phi double [ 0.000000e+00, %.lr.ph.us170.preheader.i.i ], [ %.2108.lcssa.us.i.i, %._crit_edge.us171.i.i ]
  %.0109160.us.i.i = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.us170.preheader.i.i ], [ %.2111.lcssa.us.i.i, %._crit_edge.us171.i.i ]
  %i.bfo = getelementptr inbounds nuw [408 x i8], ptr %i.bfl, i64 %indvars.iv207.i.i
  %i.bfp = load ptr, ptr %i.bfo, align 8, !tbaa !80
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge151.us.i.i, %.lr.ph.us170.i.i
  %indvars.iv202.i.i = phi i64 [ 0, %.lr.ph.us170.i.i ], [ %indvars.iv.next203.i.i, %._crit_edge151.us.i.i ] ; 2 uses
  %.1107157.us.i.i = phi double [ %.0106161.us.i.i, %.lr.ph.us170.i.i ], [ %.2108.lcssa.us.i.i, %._crit_edge151.us.i.i ] ; 3 uses
  %.1110156.us.i.i = phi double [ %.0109160.us.i.i, %.lr.ph.us170.i.i ], [ %.2111.lcssa.us.i.i, %._crit_edge151.us.i.i ] ; 3 uses
  %i.bfq = getelementptr inbounds nuw [40 x i8], ptr %i.bfp, i64 %indvars.iv202.i.i ; 4 uses
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfq, i64 20
  %i.bfs = load i32, ptr %i.bfr, align 4, !tbaa !106
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfq, i64 24
  %i.bfu = load i32, ptr %i.bft, align 8, !tbaa !107
  %i.bfv = mul nsw i32 %i.bfu, %i.bfs             ; 2 uses
  %i.bfw = icmp sgt i32 %i.bfv, 0
  br i1 %i.bfw, label %.preheader128.lr.ph.us.i.i, label %._crit_edge151.us.i.i

.preheader128.lr.ph.us.i.i:                       ; preds = %bb.cc
  %i.bfx = load i8, ptr %i.bfq, align 8, !tbaa !83 ; 2 uses
  %.not181.i.i = icmp eq i8 %i.bfx, 0
  br i1 %.not181.i.i, label %._crit_edge151.us.i.i, label %.preheader128.lr.ph.split.us.us.i.i

.preheader128.lr.ph.split.us.us.i.i:              ; preds = %.preheader128.lr.ph.us.i.i
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfq, i64 32
  %i.bfz = load ptr, ptr %i.bfy, align 8, !tbaa !84
  %wide.trip.count200.i.i = zext nneg i32 %i.bfv to i64
  %wide.trip.count195.i.i = zext i8 %i.bfx to i64
  br label %.preheader128.us.us.i.i

.preheader128.us.us.i.i:                          ; preds = %._crit_edge145.us.us.i.i, %.preheader128.lr.ph.split.us.us.i.i
  %indvars.iv197.i.i = phi i64 [ %indvars.iv.next198.i.i, %._crit_edge145.us.us.i.i ], [ 0, %.preheader128.lr.ph.split.us.us.i.i ] ; 2 uses
  %.2108150.us.us.i.i = phi double [ %.4.lcssa.us.us.i.i, %._crit_edge145.us.us.i.i ], [ %.1107157.us.i.i, %.preheader128.lr.ph.split.us.us.i.i ]
  %.2111149.us.us.i.i = phi double [ %.4113.lcssa.us.us.i.i, %._crit_edge145.us.us.i.i ], [ %.1110156.us.i.i, %.preheader128.lr.ph.split.us.us.i.i ]
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge138.us.us.i.i, %.preheader128.us.us.i.i
  %indvars.iv192.i.i = phi i64 [ %indvars.iv.next193.i.i, %._crit_edge138.us.us.i.i ], [ 0, %.preheader128.us.us.i.i ] ; 2 uses
  %.3143.us.us.i.i = phi double [ %.4.lcssa.us.us.i.i, %._crit_edge138.us.us.i.i ], [ %.2108150.us.us.i.i, %.preheader128.us.us.i.i ] ; 2 uses
  %.3112142.us.us.i.i = phi double [ %.4113.lcssa.us.us.i.i, %._crit_edge138.us.us.i.i ], [ %.2111149.us.us.i.i, %.preheader128.us.us.i.i ] ; 2 uses
end_hunk_2
begin_hunk_3_@llvm.smin.v4i32
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !40}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS7AVClass", !10, i64 0}
!12 = !{!"p1 _ZTS7AVCodec", !10, i64 0}
!13 = !{!"p1 _ZTS15AVCodecInternal", !10, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 omnipotent char", !10, i64 0}
!16 = !{!"AVRational", !7, i64 0, !7, i64 4}
!17 = !{!"float", !6, i64 0}
!18 = !{!"p1 short", !10, i64 0}
!19 = !{!"AVChannelLayout", !7, i64 0, !7, i64 4, !6, i64 8, !10, i64 16}
!20 = !{!"p1 _ZTS10RcOverride", !10, i64 0}
!21 = !{!"p1 _ZTS9AVHWAccel", !10, i64 0}
!22 = !{!"p1 _ZTS11AVBufferRef", !10, i64 0}
!23 = !{!"p1 _ZTS17AVCodecDescriptor", !10, i64 0}
!24 = !{!"p1 _ZTS16AVPacketSideData", !10, i64 0}
!25 = !{!"p1 int", !10, i64 0}
!26 = !{!"any p2 pointer", !10, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !26, i64 0}
!28 = !{!"AVCodecContext", !11, i64 0, !7, i64 8, !7, i64 12, !12, i64 16, !7, i64 24, !7, i64 28, !10, i64 32, !13, i64 40, !10, i64 48, !14, i64 56, !7, i64 64, !7, i64 68, !15, i64 72, !7, i64 80, !16, i64 84, !16, i64 92, !16, i64 100, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !16, i64 128, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !10, i64 184, !10, i64 192, !7, i64 200, !17, i64 204, !17, i64 208, !17, i64 212, !17, i64 216, !17, i64 220, !17, i64 224, !17, i64 228, !17, i64 232, !17, i64 236, !7, i64 240, !7, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !18, i64 288, !18, i64 296, !18, i64 304, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !7, i64 328, !7, i64 332, !7, i64 336, !7, i64 340, !7, i64 344, !7, i64 348, !19, i64 352, !7, i64 376, !7, i64 380, !7, i64 384, !7, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !7, i64 404, !10, i64 408, !7, i64 416, !7, i64 420, !7, i64 424, !17, i64 428, !17, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !20, i64 456, !14, i64 464, !14, i64 472, !17, i64 480, !17, i64 484, !7, i64 488, !7, i64 492, !15, i64 496, !15, i64 504, !7, i64 512, !7, i64 516, !7, i64 520, !7, i64 524, !7, i64 528, !21, i64 536, !10, i64 544, !22, i64 552, !22, i64 560, !7, i64 568, !7, i64 572, !6, i64 576, !7, i64 640, !7, i64 644, !7, i64 648, !7, i64 652, !7, i64 656, !7, i64 660, !7, i64 664, !10, i64 672, !10, i64 680, !7, i64 688, !7, i64 692, !7, i64 696, !7, i64 700, !7, i64 704, !7, i64 708, !7, i64 712, !7, i64 716, !7, i64 720, !23, i64 728, !15, i64 736, !7, i64 744, !7, i64 748, !15, i64 752, !15, i64 760, !15, i64 768, !24, i64 776, !7, i64 784, !7, i64 788, !14, i64 792, !7, i64 800, !7, i64 804, !14, i64 808, !10, i64 816, !14, i64 824, !25, i64 832, !7, i64 840, !27, i64 848, !7, i64 856, !7, i64 860}
!29 = !{!28, !10, i64 32}
!30 = !{!28, !7, i64 136}
!31 = !{!"p1 _ZTS14AVCodecContext", !10, i64 0}
!32 = !{!"p1 _ZTS7AVFrame", !10, i64 0}
!33 = !{!"Jpeg2000CodingStyle", !7, i64 0, !7, i64 4, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11, !6, i64 12, !6, i64 13, !6, i64 14, !6, i64 15, !6, i64 16, !6, i64 50, !6, i64 84}
!34 = !{!"Jpeg2000QuantStyle", !6, i64 0, !6, i64 100, !6, i64 298, !6, i64 299}
!35 = !{!"", !11, i64 0, !31, i64 8, !32, i64 16, !7, i64 24, !7, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !15, i64 72, !15, i64 80, !15, i64 88, !7, i64 96, !14, i64 104, !33, i64 112, !34, i64 200, !10, i64 504, !6, i64 512, !6, i64 912, !7, i64 916, !7, i64 920, !7, i64 924, !7, i64 928, !7, i64 932, !7, i64 936, !15, i64 944}
!36 = !{!35, !31, i64 8}
!37 = !{!15, !15, i64 0}
!38 = !{!35, !7, i64 936}
!39 = !{!7, !7, i64 0}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!35, !6, i64 912}
!42 = !{!35, !7, i64 916}
!43 = !{!33, !6, i64 8}
!44 = !{!33, !6, i64 9}
!45 = !{!33, !6, i64 10}
!46 = !{!34, !6, i64 299}
!47 = !{!35, !7, i64 56}
!48 = !{!35, !7, i64 60}
!49 = !{!34, !6, i64 298}
!50 = !{!"AVPixFmtDescriptor", !15, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !14, i64 16, !6, i64 24, !15, i64 104}
!51 = !{!35, !7, i64 52}
!52 = !{!6, !6, i64 0}
!53 = !{!50, !14, i64 16}
!54 = !{!35, !6, i64 48}
!55 = !{!33, !7, i64 0}
!56 = !{!"short", !6, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"llvm.loop.unswitch.partial.disable"}
!59 = !{!35, !7, i64 24}
!60 = !{!35, !7, i64 64}
!61 = !{!35, !7, i64 28}
!62 = !{!35, !7, i64 68}
!63 = !{!35, !10, i64 504}
!64 = !{!"p1 _ZTS17Jpeg2000Component", !10, i64 0}
!65 = !{!"p1 double", !10, i64 0}
!66 = !{!"", !64, i64 0, !65, i64 8}
!67 = !{!66, !64, i64 0}
!68 = !{!66, !65, i64 8}
!69 = !{!"double", !6, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!35, !15, i64 80}
!72 = !{!35, !15, i64 88}
!73 = !{!"p1 _ZTS16Jpeg2000ResLevel", !10, i64 0}
!74 = !{!"p1 float", !10, i64 0}
!75 = !{!"DWTContext", !6, i64 0, !6, i64 256, !6, i64 320, !6, i64 321, !25, i64 328, !74, i64 336}
!76 = !{!"Jpeg2000Component", !73, i64 0, !75, i64 8, !74, i64 352, !25, i64 360, !6, i64 368, !6, i64 384, !6, i64 400}
!77 = !{!35, !7, i64 924}
!78 = !{!35, !7, i64 928}
!79 = !{!35, !7, i64 932}
!80 = !{!76, !73, i64 0}
!81 = !{!"p1 _ZTS12Jpeg2000Band", !10, i64 0}
!82 = !{!"Jpeg2000ResLevel", !6, i64 0, !6, i64 4, !7, i64 20, !7, i64 24, !6, i64 28, !6, i64 29, !81, i64 32}
!83 = !{!82, !6, i64 0}
!84 = !{!82, !81, i64 32}
!85 = !{!"p1 _ZTS12Jpeg2000Prec", !10, i64 0}
!86 = !{!"Jpeg2000Band", !6, i64 0, !56, i64 16, !56, i64 18, !7, i64 20, !17, i64 24, !85, i64 32}
!87 = !{!86, !85, i64 32}
!88 = !{!"p1 _ZTS15Jpeg2000TgtNode", !10, i64 0}
!89 = !{!"p1 _ZTS12Jpeg2000Cblk", !10, i64 0}
!90 = !{!"Jpeg2000Prec", !7, i64 0, !7, i64 4, !88, i64 8, !88, i64 16, !89, i64 24, !7, i64 32, !6, i64 36}
!91 = !{!90, !7, i64 4}
!92 = !{!90, !7, i64 0}
!93 = !{!90, !89, i64 24}
!94 = !{!"p1 _ZTS12Jpeg2000Pass", !10, i64 0}
!95 = !{!"p1 _ZTS13Jpeg2000Layer", !10, i64 0}
!96 = !{!"Jpeg2000Cblk", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !56, i64 4, !18, i64 8, !6, i64 16, !6, i64 17, !15, i64 24, !14, i64 32, !7, i64 40, !7, i64 44, !25, i64 48, !94, i64 56, !95, i64 64, !6, i64 72, !7, i64 88, !6, i64 92, !6, i64 100, !6, i64 101}
!97 = !{!96, !15, i64 24}
!98 = !{!96, !94, i64 56}
!99 = !{!96, !6, i64 2}
!100 = !{!96, !6, i64 0}
!101 = !{!96, !6, i64 1}
!102 = !{!"Jpeg2000Pass", !56, i64 0, !14, i64 8, !6, i64 16, !7, i64 20}
!103 = !{!102, !7, i64 20}
!104 = !{!102, !56, i64 0}
!105 = !{!102, !14, i64 8}
!106 = !{!82, !7, i64 20}
!107 = !{!82, !7, i64 24}
!108 = !{!96, !95, i64 64}
!109 = !{!"Jpeg2000Layer", !15, i64 0, !7, i64 8, !7, i64 12, !69, i64 16, !7, i64 24}
!110 = !{!109, !15, i64 0}
!111 = !{!109, !7, i64 24}
!112 = !{!109, !7, i64 12}
!113 = !{!109, !7, i64 8}
!114 = !{!"llvm.loop.isvectorized", i32 1}
!115 = !{!"llvm.loop.unroll.runtime.disable"}
!116 = !{!35, !7, i64 96}
!117 = !{!"Jpeg2000TgtNode", !6, i64 0, !6, i64 1, !6, i64 2, !88, i64 8}
!118 = !{!117, !6, i64 0}
!119 = !{!117, !88, i64 8}
!120 = distinct !{!120, !40}
!121 = distinct !{!121, !40}
!122 = distinct !{!122, !40}
!123 = distinct !{!123, !40}
!124 = distinct !{!124, !40, !58}
!125 = distinct !{!125, !40}
!126 = distinct !{!126, !40}
!127 = distinct !{!127, !40, !58}
!128 = distinct !{!128, !40}
!129 = distinct !{!129, !40}
!130 = distinct !{!130, !40}
!131 = distinct !{!131, !40}
!132 = !{!35, !15, i64 944}
!133 = !{!35, !7, i64 920}
!134 = !{!33, !6, i64 12}
!135 = !{!50, !6, i64 8}
!136 = !{!"AVComponentDescriptor", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!137 = !{!136, !7, i64 16}
!138 = distinct !{!138, !40}
!139 = distinct !{!139, !40, !58}
!140 = distinct !{!140, !40, !58}
!141 = distinct !{!141, !40}
!142 = distinct !{!142, !40}
!143 = distinct !{!143, !40, !58}
!144 = distinct !{!144, !40}
!145 = distinct !{!145, !40, !58}
!146 = distinct !{!146, !40}
!147 = distinct !{!147, !40, !58}
!148 = distinct !{!148, !40, !58}
!149 = distinct !{!149, !40}
!150 = distinct !{!150, !40}
!151 = distinct !{!151, !40, !58}
!152 = distinct !{!152, !40}
!153 = distinct !{!153, !40, !58}
!154 = distinct !{!154, !40}
!155 = distinct !{!155, !40, !58}
!156 = distinct !{!156, !40}
!157 = distinct !{!157, !40}
!158 = distinct !{!158, !40}
!159 = distinct !{!159, !40}
!160 = distinct !{!160, !40}
!161 = distinct !{!161, !40}
!162 = distinct !{!162, !40}
!163 = distinct !{!163, !40}
!164 = distinct !{!164, !40}
!165 = distinct !{!165, !40}
!166 = distinct !{!166, !40}
!167 = distinct !{!167, !40}
!168 = distinct !{!168, !40}
!169 = distinct !{!169, !40}
!170 = distinct !{!170, !40}
!171 = distinct !{!171, !40}
!172 = distinct !{!172, !40}
!173 = distinct !{!173, !40}
!174 = distinct !{!174, !40}
!175 = distinct !{!175, !40}
!176 = distinct !{!176, !40}
!177 = distinct !{!177, !40}
!178 = distinct !{!178, !40}
!179 = distinct !{!179, !40}
!180 = distinct !{!180, !40}
!181 = distinct !{!181, !40}
!182 = distinct !{!182, !40, !218}
!183 = distinct !{!183, !40}
!184 = distinct !{!184, !40}
!185 = distinct !{!185, !40}
!186 = distinct !{!186, !40}
!187 = distinct !{!187, !40}
!188 = distinct !{!188, !40}
!189 = distinct !{!189, !40}
!190 = distinct !{!190, !40}
!191 = distinct !{!191, !40}
!192 = distinct !{!192, !40}
!193 = distinct !{!193, !40}
!194 = distinct !{!194, !40}
!195 = distinct !{!195, !40}
!196 = distinct !{!196, !40}
!197 = !{!28, !7, i64 112}
!198 = !{!28, !7, i64 116}
!199 = !{!"AVPacket", !22, i64 0, !14, i64 8, !14, i64 16, !15, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !24, i64 48, !7, i64 56, !14, i64 64, !14, i64 72, !10, i64 80, !22, i64 88, !16, i64 96}
!200 = !{!199, !15, i64 24}
!201 = !{!35, !15, i64 72}
!202 = !{!199, !7, i64 32}
!203 = !{!35, !32, i64 16}
!204 = !{!"p2 omnipotent char", !26, i64 0}
!205 = !{!"p2 _ZTS11AVBufferRef", !26, i64 0}
!206 = !{!"p1 _ZTS12AVDictionary", !10, i64 0}
!207 = !{!"AVFrame", !6, i64 0, !6, i64 64, !204, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !16, i64 124, !14, i64 136, !14, i64 144, !16, i64 152, !7, i64 160, !10, i64 168, !7, i64 176, !7, i64 180, !6, i64 184, !205, i64 248, !7, i64 256, !27, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !14, i64 304, !206, i64 312, !7, i64 320, !22, i64 328, !22, i64 336, !14, i64 344, !14, i64 352, !14, i64 360, !14, i64 368, !10, i64 376, !19, i64 384, !14, i64 408, !7, i64 416}
!208 = !{!207, !7, i64 160}
!209 = !{!35, !14, i64 104}
!210 = !{!76, !25, i64 360}
!211 = !{!28, !7, i64 64}
!212 = !{!"MqcState", !15, i64 0, !15, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !6, i64 28, !7, i64 48}
!213 = !{!"Jpeg2000T1Context", !6, i64 0, !6, i64 24576, !212, i64 36888, !7, i64 36944}
!214 = !{!213, !7, i64 36944}
!215 = !{!86, !56, i64 18}
!216 = !{!86, !56, i64 16}
!217 = !{!86, !7, i64 20}
!218 = !{!"llvm.loop.peeled.count", i32 1}
!219 = distinct !{!219, !40}
!220 = distinct !{!220, !40}
!221 = distinct !{!221, !40, !114, !115}
!222 = distinct !{!222, !40, !114, !115}
!223 = distinct !{!223, !40, !115, !114}
!224 = distinct !{!224, !40}
!225 = distinct !{!225, !40}
!226 = distinct !{!226, !40}
!227 = distinct !{!227, !40, !58}
!228 = distinct !{!228, !40, !58}
!229 = distinct !{!229, !40}
!230 = distinct !{!230, !40}
!231 = distinct !{!231, !40, !58}
!232 = distinct !{!232, !40}
!233 = distinct !{!233, !40}
!234 = distinct !{!234, !40}
!235 = distinct !{!235, !40}
!236 = distinct !{!236, !40, !58}
!237 = distinct !{!237, !40}
!238 = distinct !{!238, !40}
!239 = distinct !{!239, !40}
!240 = distinct !{!240, !40}
!241 = distinct !{!241, !40}
!242 = distinct !{!242, !40, !58}
!243 = distinct !{!243, !40}
!244 = distinct !{!244, !40}
!245 = distinct !{!245, !40, !114, !115}
!246 = distinct !{!246, !40, !115, !114}
!247 = distinct !{!247, !40}
!248 = distinct !{!248, !40}
!249 = distinct !{!249, !40, !58}
!250 = distinct !{!250, !40}
!251 = !{!82, !6, i64 28}
!252 = !{!82, !6, i64 29}
!253 = distinct !{!253, !40}
!254 = distinct !{!254, !40}
!255 = distinct !{!255, !40}
!256 = distinct !{!256, !40}
!257 = distinct !{!257, !40}
!258 = distinct !{!258, !40}
!259 = !{!35, !7, i64 112}
!260 = !{!109, !69, i64 16}
!261 = distinct !{!261, !40}
!262 = distinct !{!262, !40}
!263 = distinct !{!263, !40}
!264 = distinct !{!264, !40}
!265 = distinct !{!265, !40}
!266 = distinct !{!266, !40}
!267 = distinct !{!267, !40}
!268 = distinct !{!268, !40}
!269 = distinct !{!269, !40}
!270 = distinct !{!270, !40}
!271 = distinct !{!271, !40}
!272 = distinct !{!272, !40}
!273 = distinct !{!273, !40}
!274 = !{!90, !88, i64 8}
!275 = !{!90, !88, i64 16}
!276 = !{!96, !6, i64 3}
!277 = !{!96, !6, i64 17}
!278 = distinct !{!278, !40}
!279 = !{!88, !88, i64 0}
!280 = !{!117, !6, i64 1}
!281 = !{!117, !6, i64 2}
end_hunk_3
