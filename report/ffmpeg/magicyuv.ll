Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/magicyuv?download=true
inline.NumInlined: 40
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@magy_decode_slice10:bb.a
  %wide.load629 = load <8 x i16>, ptr %i.ts, align 2, !tbaa !63, !alias.scope !125
  %i.tz = zext <8 x i16> %wide.load629 to <8 x i32>
  %i.ua = add nuw nsw <8 x i32> %i.tz, %i.ty
  %i.ub = and <8 x i32> %i.ua, %broadcast.splat
  %i.uc = trunc <8 x i32> %i.ub to <8 x i16>
  store <8 x i16> %i.uc, ptr %i.tx, align 2, !tbaa !63, !alias.scope !126, !noalias !125
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ud = icmp eq i64 %index.next, %n.vec
  br i1 %i.ud, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge526, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv559.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 6 uses
  br i1 %lcmp.mod644.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ue = getelementptr inbounds nuw [2 x i8], ptr %.0530, i64 %indvars.iv559.ph ; 2 uses
  %i.uf = load i16, ptr %i.ue, align 2, !tbaa !63
  %i.ug = zext i16 %i.uf to i32
  %i.uh = getelementptr inbounds nuw [2 x i8], ptr %.0284529, i64 %indvars.iv559.ph ; 2 uses
  %i.ui = load i16, ptr %i.uh, align 2, !tbaa !63
  %i.uj = zext i16 %i.ui to i32
  %i.uk = add nuw nsw i32 %i.uj, %i.ug
  %i.ul = and i32 %i.uk, %i.g
  %i.um = trunc i32 %i.ul to i16
  store i16 %i.um, ptr %i.ue, align 2, !tbaa !63
  %i.un = getelementptr inbounds nuw [2 x i8], ptr %.0285528, i64 %indvars.iv559.ph ; 2 uses
  %i.uo = load i16, ptr %i.un, align 2, !tbaa !63
  %i.up = zext i16 %i.uo to i32
  %i.uq = load i16, ptr %i.uh, align 2, !tbaa !63
  %i.ur = zext i16 %i.uq to i32
  %i.us = add nuw nsw i32 %i.ur, %i.up
  %i.ut = and i32 %i.us, %i.g
  %i.uu = trunc i32 %i.ut to i16
  store i16 %i.uu, ptr %i.un, align 2, !tbaa !63
  %indvars.iv.next560.prol = or disjoint i64 %indvars.iv559.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv559.unr = phi i64 [ %indvars.iv559.ph, %scalar.ph.preheader ], [ %indvars.iv.next560.prol, %scalar.ph.prol ]
  %i.uv = icmp eq i64 %indvars.iv559.ph, %i.tp
  br i1 %i.uv, label %._crit_edge526, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv559 = phi i64 [ %indvars.iv.next560.1, %scalar.ph ], [ %indvars.iv559.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %.0530, i64 %indvars.iv559 ; 2 uses
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !63
  %i.uy = zext i16 %i.ux to i32
  %i.uz = getelementptr inbounds nuw [2 x i8], ptr %.0284529, i64 %indvars.iv559 ; 2 uses
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !63
  %i.vb = zext i16 %i.va to i32
  %i.vc = add nuw nsw i32 %i.vb, %i.uy
  %i.vd = and i32 %i.vc, %i.g
  %i.ve = trunc i32 %i.vd to i16
  store i16 %i.ve, ptr %i.uw, align 2, !tbaa !63
  %i.vf = getelementptr inbounds nuw [2 x i8], ptr %.0285528, i64 %indvars.iv559 ; 2 uses
  %i.vg = load i16, ptr %i.vf, align 2, !tbaa !63
  %i.vh = zext i16 %i.vg to i32
  %i.vi = load i16, ptr %i.uz, align 2, !tbaa !63
  %i.vj = zext i16 %i.vi to i32
  %i.vk = add nuw nsw i32 %i.vj, %i.vh
  %i.vl = and i32 %i.vk, %i.g
  %i.vm = trunc i32 %i.vl to i16
  store i16 %i.vm, ptr %i.vf, align 2, !tbaa !63
  %indvars.iv.next560 = add nuw nsw i64 %indvars.iv559, 1 ; 3 uses
  %i.vn = getelementptr inbounds nuw [2 x i8], ptr %.0530, i64 %indvars.iv.next560 ; 2 uses
  %i.vo = load i16, ptr %i.vn, align 2, !tbaa !63
  %i.vp = zext i16 %i.vo to i32
  %i.vq = getelementptr inbounds nuw [2 x i8], ptr %.0284529, i64 %indvars.iv.next560 ; 2 uses
  %i.vr = load i16, ptr %i.vq, align 2, !tbaa !63
  %i.vs = zext i16 %i.vr to i32
  %i.vt = add nuw nsw i32 %i.vs, %i.vp
  %i.vu = and i32 %i.vt, %i.g
  %i.vv = trunc i32 %i.vu to i16
  store i16 %i.vv, ptr %i.vn, align 2, !tbaa !63
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %.0285528, i64 %indvars.iv.next560 ; 2 uses
  %i.vx = load i16, ptr %i.vw, align 2, !tbaa !63
  %i.vy = zext i16 %i.vx to i32
  %i.vz = load i16, ptr %i.vq, align 2, !tbaa !63
  %i.wa = zext i16 %i.vz to i32
  %i.wb = add nuw nsw i32 %i.wa, %i.vy
  %i.wc = and i32 %i.wb, %i.g
  %i.wd = trunc i32 %i.wc to i16
  store i16 %i.wd, ptr %i.vw, align 2, !tbaa !63
  %indvars.iv.next560.1 = add nuw nsw i64 %indvars.iv559, 2 ; 2 uses
  %exitcond563.not.1 = icmp eq i64 %indvars.iv.next560.1, %wide.trip.count562
  br i1 %exitcond563.not.1, label %._crit_edge526, label %scalar.ph, !llvm.loop !120

._crit_edge526:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.we = getelementptr inbounds [2 x i8], ptr %.0530, i64 %i.sa
  %i.wf = getelementptr inbounds [2 x i8], ptr %.0284529, i64 %i.sd
  %i.wg = getelementptr inbounds [2 x i8], ptr %.0285528, i64 %i.sg
  %i.wh = add nuw nsw i32 %.1299527, 1            ; 2 uses
  %exitcond564.not = icmp eq i32 %i.wh, %.316
  br i1 %exitcond564.not, label %bits_init8_be.exit.thread, label %.preheader, !llvm.loop !121

bits_init8_be.exit.thread:                        ; preds = %bb.b, %bb.d, %bits_read_vlc_multi_be.exit, %._crit_edge526, %bb.aj, %.preheader.lr.ph, %._crit_edge523
  %.2302 = phi i32 [ 0, %._crit_edge523 ], [ -1094995529, %bits_read_vlc_multi_be.exit ], [ 0, %bb.aj ], [ 0, %.preheader.lr.ph ], [ 0, %._crit_edge526 ], [ -1094995529, %bb.d ], [ -1094995529, %bb.b ]
  ret i32 %.2302
}

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #3

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_fast_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @build_huffman(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 2, -2147483648) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [33 x i16], align 16              ; 40 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 65880    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(66) %i.a, i8 0, i64 66, i1 false)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 141) #8
  tail call void @abort() #9
  unreachable

.lr.ph:                                           ; preds = %bb.a
  %i.e = zext nneg i32 %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 62 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 58 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 54 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 52 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 50 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 46 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 44 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 42 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 38 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 34 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 30 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 26 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 22 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 18 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 14 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.ap = zext nneg i32 %3 to i64                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %xtraiter89 = and i32 %3, 1
  %lcmp.mod90.not = icmp eq i32 %xtraiter89, 0
  %indvars.iv.next.i.prol = add nsw i64 %i.ap, -1 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next.i.prol ; 2 uses
  %i.as = trunc i64 %indvars.iv.next.i.prol to i16
  %i.at = icmp eq i32 %3, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %.04377 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.k ] ; 4 uses
  %.04476 = phi i32 [ 0, %.lr.ph ], [ %.246, %bb.k ] ; 4 uses
  %.sroa.0.075 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.1, %bb.k ] ; 3 uses
  %i.au = load i8, ptr %.sroa.0.075, align 1, !tbaa !29 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.075, i64 1 ; 3 uses
  %i.aw = and i8 %i.au, 127                       ; 3 uses
  %.not = icmp sgt i8 %i.au, -1
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.g, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %.thread69, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.075, i64 2
  %i.bc = load i8, ptr %i.av, align 1, !tbaa !29
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %i.bd, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.0.1 = phi ptr [ %i.av, %bb.c ], [ %i.bb, %bb.e ] ; 2 uses
  %.042 = phi i32 [ 1, %bb.c ], [ %i.be, %bb.e ]  ; 2 uses
  %i.bf = add nuw nsw i32 %.042, %.04377          ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, %3
  %i.bh = add nsw i8 %i.aw, -33
  %i.bi = icmp ult i8 %i.bh, -32
  %or.cond3 = select i1 %i.bg, i1 true, i1 %i.bi
  br i1 %or.cond3, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = zext nneg i8 %i.aw to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bj ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !63
  %i.bm = trunc nuw nsw i32 %.042 to i16
  %i.bn = add i16 %i.bl, %i.bm
  store i16 %i.bn, ptr %i.bk, align 2, !tbaa !63
  %i.bo = sext i32 %.04377 to i64                 ; 2 uses
  %scevgep82 = getelementptr i8, ptr %i.d, i64 %i.bo
  %i.bp = add i32 %.04377, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 %i.bp)
  %i.bq = xor i32 %.04377, -1
  %i.br = add i32 %smax, %i.bq
  %i.bs = zext i32 %i.br to i64
  %i.bt = add nuw nsw i64 %i.bs, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep82, i8 %i.aw, i64 %i.bt, i1 false), !tbaa !29
  %i.bu = sext i32 %i.bf to i64
  br label %.new

.new:                                             ; preds = %bb.g, %.new
  %indvars.iv = phi i64 [ %i.bo, %bb.g ], [ %indvars.iv.next.7, %.new ]
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bv = icmp slt i64 %indvars.iv.next.7, %i.bu
  br i1 %i.bv, label %.new, label %.unr-lcssa, !llvm.loop !129

.unr-lcssa:                                       ; preds = %.new
  %i.bw = trunc nsw i64 %indvars.iv.next.7 to i32 ; 2 uses
  %i.bx = icmp eq i32 %3, %i.bw
  br i1 %i.bx, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.unr-lcssa
  %.val = load ptr, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %i.by = load i16, ptr %i.k, align 16, !tbaa !63
  %i.bz = load i16, ptr %i.j, align 2, !tbaa !63
  %i.ca = add i16 %i.bz, %i.by                    ; 2 uses
  store i16 %i.ca, ptr %i.j, align 2, !tbaa !63
  %i.cb = load i16, ptr %i.l, align 4, !tbaa !63
  %i.cc = add i16 %i.cb, %i.ca                    ; 2 uses
  store i16 %i.cc, ptr %i.l, align 4, !tbaa !63
  %i.cd = load i16, ptr %i.m, align 2, !tbaa !63
  %i.ce = add i16 %i.cd, %i.cc                    ; 2 uses
  store i16 %i.ce, ptr %i.m, align 2, !tbaa !63
  %i.cf = load i16, ptr %i.n, align 8, !tbaa !63
  %i.cg = add i16 %i.cf, %i.ce                    ; 2 uses
  store i16 %i.cg, ptr %i.n, align 8, !tbaa !63
  %i.ch = load i16, ptr %i.o, align 2, !tbaa !63
  %i.ci = add i16 %i.ch, %i.cg                    ; 2 uses
  store i16 %i.ci, ptr %i.o, align 2, !tbaa !63
  %i.cj = load i16, ptr %i.p, align 4, !tbaa !63
  %i.ck = add i16 %i.cj, %i.ci                    ; 2 uses
  store i16 %i.ck, ptr %i.p, align 4, !tbaa !63
  %i.cl = load i16, ptr %i.q, align 2, !tbaa !63
  %i.cm = add i16 %i.cl, %i.ck                    ; 2 uses
  store i16 %i.cm, ptr %i.q, align 2, !tbaa !63
  %i.cn = load i16, ptr %i.r, align 16, !tbaa !63
  %i.co = add i16 %i.cn, %i.cm                    ; 2 uses
  store i16 %i.co, ptr %i.r, align 16, !tbaa !63
  %i.cp = load i16, ptr %i.s, align 2, !tbaa !63
  %i.cq = add i16 %i.cp, %i.co                    ; 2 uses
  store i16 %i.cq, ptr %i.s, align 2, !tbaa !63
  %i.cr = load i16, ptr %i.t, align 4, !tbaa !63
  %i.cs = add i16 %i.cr, %i.cq                    ; 2 uses
  store i16 %i.cs, ptr %i.t, align 4, !tbaa !63
  %i.ct = load i16, ptr %i.u, align 2, !tbaa !63
  %i.cu = add i16 %i.ct, %i.cs                    ; 2 uses
  store i16 %i.cu, ptr %i.u, align 2, !tbaa !63
  %i.cv = load i16, ptr %i.v, align 8, !tbaa !63
  %i.cw = add i16 %i.cv, %i.cu                    ; 2 uses
  store i16 %i.cw, ptr %i.v, align 8, !tbaa !63
  %i.cx = load i16, ptr %i.w, align 2, !tbaa !63
  %i.cy = add i16 %i.cx, %i.cw                    ; 2 uses
  store i16 %i.cy, ptr %i.w, align 2, !tbaa !63
  %i.cz = load i16, ptr %i.x, align 4, !tbaa !63
  %i.da = add i16 %i.cz, %i.cy                    ; 2 uses
  store i16 %i.da, ptr %i.x, align 4, !tbaa !63
  %i.db = load i16, ptr %i.y, align 2, !tbaa !63
  %i.dc = add i16 %i.db, %i.da                    ; 2 uses
  store i16 %i.dc, ptr %i.y, align 2, !tbaa !63
  %i.dd = load i16, ptr %i.z, align 16, !tbaa !63
  %i.de = add i16 %i.dd, %i.dc                    ; 2 uses
  store i16 %i.de, ptr %i.z, align 16, !tbaa !63
  %i.df = load i16, ptr %i.aa, align 2, !tbaa !63
  %i.dg = add i16 %i.df, %i.de                    ; 2 uses
  store i16 %i.dg, ptr %i.aa, align 2, !tbaa !63
  %i.dh = load i16, ptr %i.ab, align 4, !tbaa !63
  %i.di = add i16 %i.dh, %i.dg                    ; 2 uses
  store i16 %i.di, ptr %i.ab, align 4, !tbaa !63
  %i.dj = load i16, ptr %i.ac, align 2, !tbaa !63
  %i.dk = add i16 %i.dj, %i.di                    ; 2 uses
  store i16 %i.dk, ptr %i.ac, align 2, !tbaa !63
  %i.dl = load i16, ptr %i.ad, align 8, !tbaa !63
  %i.dm = add i16 %i.dl, %i.dk                    ; 2 uses
  store i16 %i.dm, ptr %i.ad, align 8, !tbaa !63
  %i.dn = load i16, ptr %i.ae, align 2, !tbaa !63
  %i.do = add i16 %i.dn, %i.dm                    ; 2 uses
  store i16 %i.do, ptr %i.ae, align 2, !tbaa !63
  %i.dp = load i16, ptr %i.af, align 4, !tbaa !63
  %i.dq = add i16 %i.dp, %i.do                    ; 2 uses
  store i16 %i.dq, ptr %i.af, align 4, !tbaa !63
  %i.dr = load i16, ptr %i.ag, align 2, !tbaa !63
  %i.ds = add i16 %i.dr, %i.dq                    ; 2 uses
  store i16 %i.ds, ptr %i.ag, align 2, !tbaa !63
  %i.dt = load i16, ptr %i.ah, align 16, !tbaa !63
  %i.du = add i16 %i.dt, %i.ds                    ; 2 uses
  store i16 %i.du, ptr %i.ah, align 16, !tbaa !63
  %i.dv = load i16, ptr %i.ai, align 2, !tbaa !63
  %i.dw = add i16 %i.dv, %i.du                    ; 2 uses
  store i16 %i.dw, ptr %i.ai, align 2, !tbaa !63
  %i.dx = load i16, ptr %i.aj, align 4, !tbaa !63
  %i.dy = add i16 %i.dx, %i.dw                    ; 2 uses
  store i16 %i.dy, ptr %i.aj, align 4, !tbaa !63
  %i.dz = load i16, ptr %i.ak, align 2, !tbaa !63
  %i.ea = add i16 %i.dz, %i.dy                    ; 2 uses
  store i16 %i.ea, ptr %i.ak, align 2, !tbaa !63
  %i.eb = load i16, ptr %i.al, align 8, !tbaa !63
  %i.ec = add i16 %i.eb, %i.ea                    ; 2 uses
  store i16 %i.ec, ptr %i.al, align 8, !tbaa !63
  %i.ed = load i16, ptr %i.am, align 2, !tbaa !63
  %i.ee = add i16 %i.ed, %i.ec                    ; 2 uses
  store i16 %i.ee, ptr %i.am, align 2, !tbaa !63
  %i.ef = load i16, ptr %i.an, align 4, !tbaa !63
  %i.eg = add i16 %i.ef, %i.ee                    ; 2 uses
  store i16 %i.eg, ptr %i.an, align 4, !tbaa !63
  %i.eh = load i16, ptr %i.ao, align 2, !tbaa !63
  %i.ei = add i16 %i.eh, %i.eg
  store i16 %i.ei, ptr %i.ao, align 2, !tbaa !63
  %i.ej = getelementptr inbounds nuw i8, ptr %.val, i64 344 ; 5 uses
  br i1 %lcmp.mod90.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %bb.h
  %i.ek = load i8, ptr %i.ar, align 1, !tbaa !29
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.el ; 2 uses
  %i.en = load i16, ptr %i.em, align 2, !tbaa !63
  %i.eo = add i16 %i.en, -1                       ; 2 uses
  store i16 %i.eo, ptr %i.em, align 2, !tbaa !63
  %i.ep = zext i16 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ep ; 3 uses
  %i.er = load i8, ptr %i.ar, align 1, !tbaa !29
  store i8 %i.er, ptr %i.eq, align 2, !tbaa !29
  %.sroa.2.0..sroa_idx.i.prol = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  store i8 0, ptr %.sroa.2.0..sroa_idx.i.prol, align 1
  %.sroa.3.0..sroa_idx.i.prol = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  store i16 %i.as, ptr %.sroa.3.0..sroa_idx.i.prol, align 2, !tbaa !63
  br label %.preheader.i.prol.loopexit

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %bb.h
  %indvars.iv.i.unr = phi i64 [ %i.ap, %bb.h ], [ %indvars.iv.next.i.prol, %.preheader.i.prol ]
  br i1 %i.at, label %huff_build.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.i ], [ %indvars.iv.i.unr, %.preheader.i.prol.loopexit ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.es = and i64 %indvars.iv.next.i, 4294967295
  %i.et = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.es ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !29
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ev ; 2 uses
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !63
  %i.ey = add i16 %i.ex, -1                       ; 2 uses
  store i16 %i.ey, ptr %i.ew, align 2, !tbaa !63
  %i.ez = zext i16 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ez ; 3 uses
  %i.fb = load i8, ptr %i.et, align 1, !tbaa !29
  %i.fc = trunc i64 %indvars.iv.next.i to i16
  store i8 %i.fb, ptr %i.fa, align 2, !tbaa !29
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  store i8 0, ptr %.sroa.2.0..sroa_idx.i, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  store i16 %i.fc, ptr %.sroa.3.0..sroa_idx.i, align 2, !tbaa !63
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 3 uses
  %i.fd = and i64 %indvars.iv.next.i.1, 4294967295 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fd ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !29
  %i.fg = zext i8 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.fg ; 2 uses
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !63
  %i.fj = add i16 %i.fi, -1                       ; 2 uses
  store i16 %i.fj, ptr %i.fh, align 2, !tbaa !63
  %i.fk = zext i16 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fk ; 3 uses
  %i.fm = load i8, ptr %i.fe, align 1, !tbaa !29
  %i.fn = trunc i64 %indvars.iv.next.i.1 to i16
  store i8 %i.fm, ptr %i.fl, align 2, !tbaa !29
  %.sroa.2.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  store i8 0, ptr %.sroa.2.0..sroa_idx.i.1, align 1
  %.sroa.3.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  store i16 %i.fn, ptr %.sroa.3.0..sroa_idx.i.1, align 2, !tbaa !63
  %.not.i58.1 = icmp eq i64 %i.fd, 0
  br i1 %.not.i58.1, label %huff_build.exit, label %.preheader.i, !llvm.loop !130

huff_build.exit:                                  ; preds = %.preheader.i, %.preheader.i.prol.loopexit
  %i.fo = sext i32 %.04476 to i64                 ; 2 uses
  %i.fp = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.fo ; 2 uses
  %i.fq = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.fo ; 2 uses
  tail call void @ff_vlc_free(ptr noundef nonnull %i.fp) #8
  tail call void @ff_vlc_free_multi(ptr noundef nonnull %i.fq) #8
  %i.fr = load i8, ptr %i.ej, align 2, !tbaa !132
  %narrow.i = tail call i8 @llvm.umin.i8(i8 %i.fr, i8 12)
  %spec.select.i = zext nneg i8 %narrow.i to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %.val, i64 346
  %i.ft = tail call i32 @ff_vlc_init_multi_from_lengths(ptr noundef nonnull %i.fp, ptr noundef nonnull %i.fq, i32 noundef %spec.select.i, i32 noundef range(i32 1, -2147483648) %3, i32 noundef range(i32 1, -2147483648) %3, ptr noundef nonnull %i.ej, i32 noundef 4, ptr noundef nonnull %i.fs, i32 noundef 4, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %0) #8
  %.not56 = icmp eq i32 %i.ft, 0
  br i1 %.not56, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %huff_build.exit
  %i.fu = add nsw i32 %.04476, 1                  ; 3 uses
  %i.fv = load i32, ptr %i.aq, align 8, !tbaa !37
  %i.fw = icmp eq i32 %i.fu, %i.fv
  br i1 %i.fw, label %.thread69, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(66) %i.a, i8 0, i64 66, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %.unr-lcssa, %bb.j
  %.246 = phi i32 [ %.04476, %.unr-lcssa ], [ %i.fu, %bb.j ] ; 2 uses
  %.3 = phi i32 [ %i.bw, %.unr-lcssa ], [ 0, %bb.j ]
  %i.fx = ptrtoint ptr %.sroa.0.1 to i64
  %i.fy = sub i64 %i.g, %i.fx
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %bb.c, label %.thread69

.thread69:                                        ; preds = %bb.k, %bb.i, %bb.d
  %.347.ph = phi i32 [ %.246, %bb.k ], [ %.04476, %bb.d ], [ %i.fu, %bb.i ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !37
  %.not57 = icmp eq i32 %.347.ph, %i.gc
  br i1 %.not57, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %huff_build.exit, %bb.f, %.thread69
  %.str.16.sink = phi ptr [ @.str.17, %.thread69 ], [ @.str.15, %bb.f ], [ @.str.16, %huff_build.exit ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %.str.16.sink) #8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %.thread69
  %.250 = phi i32 [ 0, %.thread69 ], [ -1094995529, %.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.250
}

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @ff_vlc_free(ptr noundef) local_unnamed_addr #3

declare void @ff_vlc_free_multi(ptr noundef) local_unnamed_addr #3

declare i32 @ff_vlc_init_multi_from_lengths(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!5, !5, i64 0}
!30 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!31 = !{!"LLVidDSPContext", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!32 = !{!"MagicYUVContext", !30, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !14, i64 48, !5, i64 56, !5, i64 72, !5, i64 88, !5, i64 120, !5, i64 136, !5, i64 232, !9, i64 296, !31, i64 304, !5, i64 344, !5, i64 65880}
!33 = !{!32, !6, i64 28}
!34 = !{!6, !6, i64 0}
!35 = !{!32, !6, i64 12}
!36 = !{!32, !6, i64 8}
!37 = !{!32, !6, i64 24}
!38 = !{!32, !6, i64 40}
!39 = !{!27, !6, i64 120}
!40 = !{!32, !6, i64 16}
!41 = !{!27, !6, i64 124}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"p1 _ZTS5Slice", !9, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"Slice", !6, i64 0, !6, i64 4}
!46 = !{!45, !6, i64 0}
!47 = !{!45, !6, i64 4}
!48 = !{!32, !14, i64 48}
!49 = !{!32, !30, i64 0}
!50 = !{!14, !14, i64 0}
!51 = !{!"p1 _ZTS14VLC_MULTI_ELEM", !9, i64 0}
!52 = !{!"VLC_MULTI", !51, i64 0, !6, i64 8, !6, i64 12}
!53 = !{!52, !51, i64 0}
!54 = !{!"p1 _ZTS7VLCElem", !9, i64 0}
!55 = !{!"VLC", !6, i64 0, !54, i64 8, !6, i64 16, !6, i64 20}
!56 = !{!55, !54, i64 8}
!57 = !{!55, !6, i64 0}
!58 = !{!"VLC_MULTI_ELEM", !5, i64 0, !5, i64 6, !5, i64 7}
!59 = !{!58, !5, i64 7}
!60 = !{!58, !5, i64 6}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!"short", !5, i64 0}
!63 = !{!62, !62, i64 0}
!64 = distinct !{!64, !42}
!65 = distinct !{!65, !42}
!66 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!67 = !{!66, !6, i64 32}
!68 = !{!66, !14, i64 24}
!69 = !{!27, !6, i64 136}
!70 = !{!"AVPixFmtDescriptor", !14, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !13, i64 16, !5, i64 24, !14, i64 104}
!71 = !{!70, !13, i64 16}
!72 = !{!70, !5, i64 9}
!73 = !{!70, !5, i64 10}
!74 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!75 = !{!74, !6, i64 16}
!76 = !{!32, !9, i64 296}
!77 = !{!32, !6, i64 32}
!78 = !{!32, !6, i64 36}
!79 = !{!32, !6, i64 20}
!80 = !{!27, !9, i64 680}
!81 = !{!"p2 omnipotent char", !25, i64 0}
!82 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!83 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!84 = !{!"AVFrame", !5, i64 0, !5, i64 64, !81, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !82, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !83, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!85 = !{!84, !6, i64 292}
!86 = !{!84, !6, i64 280}
!87 = distinct !{!87, !42}
!88 = distinct !{!88, !42}
!89 = distinct !{!89, !42}
!90 = distinct !{!90, !42}
!91 = distinct !{!91, !42}
!92 = distinct !{!92, !61}
!93 = distinct !{!93, !42}
!94 = distinct !{!94, !42}
!95 = distinct !{!95, !42}
!96 = distinct !{!96, !42}
!97 = distinct !{!97, !42}
!98 = distinct !{!98, !42}
!99 = !{!32, !9, i64 320}
!100 = !{!32, !9, i64 336}
!101 = !{!32, !9, i64 312}
!102 = !{!32, !9, i64 304}
!103 = distinct !{!103, !42}
!104 = distinct !{!104, !42}
!105 = distinct !{!105, !42}
!106 = distinct !{!106, !42}
!107 = distinct !{!107, !42}
!108 = distinct !{!108, !42}
!109 = distinct !{!109, !61}
!110 = distinct !{!110, !42}
!111 = distinct !{!111, !42}
!112 = distinct !{!112, !42}
!113 = distinct !{!113, !42}
!114 = distinct !{!114, !42}
!115 = distinct !{!115, !"LVerDomain"}
!116 = distinct !{!116, !115}
!117 = distinct !{!117, !115}
!118 = distinct !{!118, !115}
!119 = distinct !{!119, !42, !127, !128}
!120 = distinct !{!120, !42, !127}
!121 = distinct !{!121, !42}
!122 = !{!32, !9, i64 328}
!123 = !{!116}
!124 = !{!118, !117}
!125 = !{!117}
!126 = !{!118}
!127 = !{!"llvm.loop.isvectorized", i32 1}
!128 = !{!"llvm.loop.unroll.runtime.disable"}
!129 = distinct !{!129, !42}
!130 = distinct !{!130, !42}
!131 = !{!"HuffEntry", !5, i64 0, !62, i64 2}
!132 = !{!131, !5, i64 0}
end_hunk_0
