Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/recon_tmpl?download=true
inline.NumInlined: 111
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 38
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TxfmInfo = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Dav1dMasks = type { [3 x [11 x %struct.anon.45]], [56 x i8], [16384 x i8], [8192 x i8], [4096 x i8], [8192 x i8], [4096 x i8], [2048 x i8], [4096 x i8], [2048 x i8], [1024 x i8], [16384 x i8], [8192 x i8], [4096 x i8], [8192 x i8], [4096 x i8], [2048 x i8], [4096 x i8], [2048 x i8], [1024 x i8], [8192 x i8], [4096 x i8], [2048 x i8], [4096 x i8], [2048 x i8], [1024 x i8], [2048 x i8], [1024 x i8], [512 x i8], [1024 x i8], [3072 x i8], [1536 x i8], [768 x i8], [768 x i8], [384 x i8], [192 x i8], [192 x i8], [96 x i8], [48 x i8], [48 x i8] }
%struct.anon.45 = type { [2 x [16 x i16]], [4 x i16] }

@dav1d_block_dimensions = external hidden constant [22 x [4 x i8]], align 16
@dav1d_memset_pow2 = external hidden local_unnamed_addr constant [6 x ptr], align 16
@dav1d_txfm_dimensions = external hidden local_unnamed_addr constant [19 x %struct.TxfmInfo], align 16
@dav1d_masks = external hidden global %struct.Dav1dMasks, align 64
@dav1d_filter_2d = external hidden local_unnamed_addr constant [4 x [4 x i8]], align 16
@dav1d_txtp_from_uvmode = external hidden local_unnamed_addr constant [14 x i8], align 1
@dav1d_filter_mode_to_y_mode = external hidden local_unnamed_addr constant [5 x i8], align 1
@dav1d_tx_types_per_set = external hidden local_unnamed_addr constant [40 x i8], align 16
@dav1d_tx_type_class = external hidden local_unnamed_addr constant [17 x i8], align 16
@dav1d_lo_ctx_offsets = external hidden local_unnamed_addr constant [3 x [5 x [5 x i8]]], align 16
@dav1d_scans = external hidden local_unnamed_addr constant [19 x ptr], align 16
@dav1d_skip_ctx = external hidden local_unnamed_addr constant [5 x [5 x i8]], align 16

; Function Attrs: nounwind uwtable
define hidden void @dav1d_read_coef_blocks_8bpc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i16], align 2                ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 10 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2168
  %i.i = load i32, ptr %i.h, align 8, !tbaa !29   ; 3 uses
  %i.j = icmp eq i32 %i.i, 1                      ; 2 uses
  %i.k = icmp ne i32 %i.i, 3
  %i.l = zext i1 %i.j to i32                      ; 16 uses
  %i.m = zext i1 %i.k to i32                      ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 16 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !62   ; 4 uses
  %i.p = and i32 %i.o, 31                         ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 13 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !63   ; 4 uses
  %i.s = and i32 %i.r, 31                         ; 5 uses
  %i.t = lshr i32 %i.p, %i.m                      ; 3 uses
  %i.u = lshr i32 %i.s, %i.l                      ; 3 uses
  %i.v = zext i32 %1 to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @dav1d_block_dimensions, i64 %i.v ; 4 uses
  %i.x = load i8, ptr %i.w, align 4, !tbaa !64
  %i.y = zext i8 %i.x to i32                      ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !64
  %i.ab = zext i8 %i.aa to i32                    ; 3 uses
  %i.ac = add nuw nsw i32 %i.y, %i.m
  %i.ad = lshr i32 %i.ac, %i.m
  %i.ae = add nuw nsw i32 %i.ab, %i.l
  %i.af = lshr i32 %i.ae, %i.l
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = icmp samesign ule i32 %i.y, %i.m
  %i.ah = and i32 %i.o, 1
  %.not233 = icmp eq i32 %i.ah, 0
  %or.cond = select i1 %i.ag, i1 %.not233, i1 false
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = icmp samesign ugt i32 %i.ab, %i.l
  %i.aj = trunc i32 %i.r to i1
  %spec.select = select i1 %i.ai, i1 true, i1 %i.aj
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.ak = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %spec.select, %bb.c ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.am = load i8, ptr %i.al, align 2, !tbaa !65
  %.not234 = icmp eq i8 %i.am, 0
  br i1 %.not234, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !67 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !64
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @dav1d_memset_pow2, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !68
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.av = zext nneg i32 %i.p to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  tail call void %i.at(ptr noundef nonnull %i.aw, i32 noundef 64) #9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !64
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @dav1d_memset_pow2, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !68
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bd = zext nneg i32 %i.s to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  tail call void %i.bb(ptr noundef nonnull %i.be, i32 noundef 64) #9
  br i1 %i.ak, label %bb.f, label %bb.ag

bb.f:                                             ; preds = %bb.e
  %i.bf = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 -2147483648, 257) %i.ad, i1 true)
  %i.bg = xor i32 %i.bf, 31
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @dav1d_memset_pow2, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !68 ; 2 uses
  %i.bk = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 -2147483648, 257) %i.af, i1 true)
  %i.bl = xor i32 %i.bk, 31
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr @dav1d_memset_pow2, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !68 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.bq = zext nneg i32 %i.t to i64               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  tail call void %i.bj(ptr noundef nonnull %i.br, i32 noundef 64) #9
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  tail call void %i.bj(ptr noundef nonnull %i.bt, i32 noundef 64) #9
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bv = zext nneg i32 %i.u to i64               ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bv
  tail call void %i.bo(ptr noundef nonnull %i.bw, i32 noundef 64) #9
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  tail call void %i.bo(ptr noundef nonnull %i.by, i32 noundef 64) #9
  br label %bb.ag

bb.g:                                             ; preds = %bb.d
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load ptr, ptr %i.bz, align 16, !tbaa !69 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 3280 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 16, !tbaa !70
  %i.cd = sub nsw i32 %i.cc, %i.o
  %i.ce = tail call noundef i32 @llvm.smin.i32(i32 %i.y, i32 %i.cd) ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 3284 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !71
  %i.ch = sub nsw i32 %i.cg, %i.r
  %i.ci = tail call noundef i32 @llvm.smin.i32(i32 %i.ab, i32 %i.ch) ; 4 uses
  %i.cj = add nsw i32 %i.ce, %i.m
  %i.ck = ashr i32 %i.cj, %i.m
  %i.cl = add nsw i32 %i.ci, %i.l
  %i.cm = ashr i32 %i.cl, %i.l
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 7 ; 3 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !72
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr @dav1d_txfm_dimensions, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 4 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !73
  %.not236 = icmp eq i8 %i.cs, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 26 ; 2 uses
  %.in.in = select i1 %.not236, ptr %i.cu, ptr %i.ct
  %.in = load i8, ptr %.in.in, align 2, !tbaa !64
  %i.cv = zext i8 %.in to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr @dav1d_txfm_dimensions, i64 %i.cv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 29
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !64
  %i.cz = zext i8 %i.cy to i16
  store i16 %i.cz, ptr %i.a, align 2, !tbaa !74
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !64
  store i16 %i.dc, ptr %i.da, align 2, !tbaa !74
  %i.dd = icmp sgt i32 %i.ci, 0
  br i1 %i.dd, label %.lr.ph290, label %._crit_edge.split

.lr.ph290:                                        ; preds = %bb.g
  %i.de = icmp sgt i32 %i.ce, 0
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ca, i64 13592 ; 9 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.ca, i64 13584 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 9344 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
  br i1 %i.de, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.lr.ph290
  %3 = select i1 %i.j, i32 2, i32 1
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.do = insertelement <2 x i32> poison, i32 %i.m, i64 0
  %i.dp = insertelement <2 x i32> %i.do, i32 %i.l, i64 1 ; 2 uses
  br label %.lr.ph

..loopexit247_crit_edge:                          ; preds = %.loopexit
  %i.dq = icmp slt i32 %i.dt, %i.ci
  %indvars.iv.next = add nuw nsw i32 %i.ds, 32
  br i1 %i.dq, label %.lr.ph, label %._crit_edge.split

._crit_edge.split:                                ; preds = %..loopexit247_crit_edge, %.lr.ph290, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.ag

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit247_crit_edge
  %4 = phi i32 [ %i.o, %.lr.ph.preheader ], [ %i.oa, %..loopexit247_crit_edge ]
  %i.dr = phi i32 [ %i.r, %.lr.ph.preheader ], [ %i.ob, %..loopexit247_crit_edge ]
  %i.ds = phi i32 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %..loopexit247_crit_edge ] ; 2 uses
  %.0230289 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.dt, %..loopexit247_crit_edge ] ; 7 uses
  %i.dt = add nuw nsw i32 %.0230289, 16           ; 4 uses
  %i.du = call noundef i32 @llvm.smin.i32(i32 %i.ci, i32 %i.dt)
  %i.dv = icmp ne i32 %.0230289, 0
  %i.dw = zext i1 %i.dv to i32
  %i.dx = lshr exact i32 %i.dt, %i.l
  %i.dy = call i32 @llvm.smin.i32(i32 %i.cm, i32 %i.dx) ; 4 uses
  %i.dz = lshr exact i32 %.0230289, %i.l          ; 5 uses
  %i.ea = icmp slt i32 %i.dz, %i.dy
  %5 = shl i32 %i.dz, %3
  %6 = sub i32 %i.ds, %5
  br label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph, %.loopexit
  %i.eb = phi i32 [ %4, %.lr.ph ], [ %i.oa, %.loopexit ]
  %i.ec = phi i32 [ %i.dr, %.lr.ph ], [ %i.ob, %.loopexit ]
  %.0229288 = phi i32 [ 0, %.lr.ph ], [ %i.ed, %.loopexit ] ; 7 uses
  %i.ed = add nuw nsw i32 %.0229288, 16           ; 4 uses
  %i.ee = call noundef i32 @llvm.smin.i32(i32 %i.ce, i32 %i.ed)
  %i.ef = add nsw i32 %i.ec, %.0230289
  store i32 %i.ef, ptr %i.q, align 4, !tbaa !63
  %i.eg = icmp ne i32 %.0229288, 0
  %i.eh = zext i1 %i.eg to i32
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %i.ei = phi i32 [ %i.ha, %._crit_edge.us ], [ %i.eb, %.lr.ph.us.preheader ]
  %.0226251.us = phi i32 [ %i.hd, %._crit_edge.us ], [ %.0230289, %.lr.ph.us.preheader ] ; 3 uses
  %.0228250.us = phi i32 [ %i.hg, %._crit_edge.us ], [ %i.dw, %.lr.ph.us.preheader ] ; 2 uses
  %i.ej = add nsw i32 %i.ei, %.0229288
  store i32 %i.ej, ptr %i.n, align 8, !tbaa !62
  %i.ek = add nuw nsw i32 %.0226251.us, %i.s
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.el ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.us, %bb.o
  %.0224249.us = phi i32 [ %i.eh, %.lr.ph.us ], [ %i.gy, %bb.o ] ; 2 uses
  %.0225248.us = phi i32 [ %.0229288, %.lr.ph.us ], [ %i.gv, %bb.o ] ; 3 uses
  %i.en = load i8, ptr %i.cr, align 1, !tbaa !73
  %.not239.us = icmp eq i8 %i.en, 0
  br i1 %.not239.us, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 64, ptr %i.b, align 1, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.eo = load ptr, ptr %i.df, align 16, !tbaa !67
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = add nuw nsw i32 %.0225248.us, %i.p
  %i.er = zext nneg i32 %i.eq to i64              ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.er
  %i.et = load i8, ptr %i.ct, align 2, !tbaa !64
  %i.eu = zext i8 %i.et to i32
  %i.ev = load ptr, ptr %i.dh, align 8, !tbaa !76
  %i.ew = call fastcc i32 @decode_coefs(ptr noundef nonnull %0, ptr noundef nonnull %i.es, ptr noundef nonnull %i.em, i32 noundef %i.eu, i32 noundef %1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0, ptr noundef %i.ev, ptr noundef %i.c, ptr noundef %i.b)
  %i.ex = shl nsw i32 %i.ew, 5
  %i.ey = load i32, ptr %i.c, align 4, !tbaa !78
  %i.ez = add i32 %i.ex, %i.ey
  %i.fa = trunc i32 %i.ez to i16
  %i.fb = load ptr, ptr %i.di, align 8, !tbaa !79 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  store ptr %i.fc, ptr %i.di, align 8, !tbaa !79
  store i16 %i.fa, ptr %i.fb, align 2, !tbaa !74
  %i.fd = load i8, ptr %i.cw, align 8, !tbaa !80
  %i.fe = zext i8 %i.fd to i32                    ; 3 uses
  %i.ff = call i32 @llvm.umin.i32(i32 %i.fe, i32 8)
  %i.fg = load i8, ptr %i.dj, align 1, !tbaa !82
  %i.fh = zext i8 %i.fg to i32                    ; 2 uses
  %i.fi = call i32 @llvm.umin.i32(i32 %i.fh, i32 8)
  %i.fj = shl nuw nsw i32 %i.ff, 4
  %i.fk = mul nuw nsw i32 %i.fj, %i.fi
  %i.fl = load ptr, ptr %i.dh, align 8, !tbaa !76
  %i.fm = zext nneg i32 %i.fk to i64
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %i.fm
  store ptr %i.fn, ptr %i.dh, align 8, !tbaa !76
  %i.fo = load ptr, ptr %i.df, align 16, !tbaa !67
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.er ; 2 uses
  %i.fr = load i8, ptr %i.b, align 1, !tbaa !64   ; 3 uses
  %i.fs = zext i8 %i.fr to i32                    ; 2 uses
  %i.ft = load i32, ptr %i.cb, align 16, !tbaa !70
  %i.fu = load i32, ptr %i.n, align 8, !tbaa !62
  %i.fv = sub nsw i32 %i.ft, %i.fu
  %i.fw = call noundef i32 @llvm.smin.i32(i32 %i.fe, i32 %i.fv) ; 4 uses
  %i.fx = add i32 %i.fw, -1
  %or.cond.i.us = icmp ult i32 %i.fx, 32
  call void @llvm.assume(i1 %or.cond.i.us)
  %i.fy = call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.fw)
  %i.fz = icmp samesign ult i32 %i.fy, 2
  br i1 %i.fz, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ga = zext nneg i32 %i.fw to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fq, i8 %i.fr, i64 %i.ga, i1 false)
  br label %dav1d_memset_likely_pow2.exit.us

bb.k:                                             ; preds = %bb.i
  %i.gb = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 -2147483648, 257) %i.fw, i1 true)
  %i.gc = xor i32 %i.gb, 31
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr @dav1d_memset_pow2, i64 %i.gd
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !68
  call void %i.gf(ptr noundef nonnull %i.fq, i32 noundef range(i32 0, 256) %i.fs) #9, !inline_history !83
  br label %dav1d_memset_likely_pow2.exit.us

dav1d_memset_likely_pow2.exit.us:                 ; preds = %bb.k, %bb.j
  %i.gg = load i32, ptr %i.cf, align 4, !tbaa !71
  %i.gh = load i32, ptr %i.q, align 4, !tbaa !63
  %i.gi = sub nsw i32 %i.gg, %i.gh
  %i.gj = call noundef i32 @llvm.smin.i32(i32 %i.fh, i32 %i.gi) ; 4 uses
  %i.gk = add i32 %i.gj, -1
  %or.cond.i240.us = icmp ult i32 %i.gk, 32
  call void @llvm.assume(i1 %or.cond.i240.us)
  %i.gl = call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.gj)
  %i.gm = icmp samesign ult i32 %i.gl, 2
  br i1 %i.gm, label %bb.m, label %bb.l

bb.l:                                             ; preds = %dav1d_memset_likely_pow2.exit.us
  %i.gn = zext nneg i32 %i.gj to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.em, i8 %i.fr, i64 %i.gn, i1 false)
  br label %dav1d_memset_likely_pow2.exit241.us

bb.m:                                             ; preds = %dav1d_memset_likely_pow2.exit.us
  %i.go = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 -2147483648, 257) %i.gj, i1 true)
  %i.gp = xor i32 %i.go, 31
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr @dav1d_memset_pow2, i64 %i.gq
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !68
  call void %i.gs(ptr noundef nonnull %i.em, i32 noundef range(i32 0, 256) %i.fs) #9, !inline_history !83
  br label %dav1d_memset_likely_pow2.exit241.us

dav1d_memset_likely_pow2.exit241.us:              ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  %i.gt = load i8, ptr %i.cu, align 2, !tbaa !64
  %i.gu = zext i8 %i.gt to i32
  call fastcc void @read_coef_tree(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %i.gu, i32 noundef 0, ptr noundef %i.a, i32 noundef %.0224249.us, i32 noundef %.0228250.us, ptr noundef null)
  %.pre = load i8, ptr %i.cw, align 8, !tbaa !80
  %.pre302 = zext i8 %.pre to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %dav1d_memset_likely_pow2.exit241.us
  %.pre-phi = phi i32 [ %.pre302, %bb.n ], [ %i.fe, %dav1d_memset_likely_pow2.exit241.us ] ; 2 uses
  %i.gv = add nuw nsw i32 %.0225248.us, %.pre-phi ; 2 uses
  %i.gw = load i32, ptr %i.n, align 8, !tbaa !62  ; 2 uses
  %i.gx = add nsw i32 %i.gw, %.pre-phi
  store i32 %i.gx, ptr %i.n, align 8, !tbaa !62
  %i.gy = add nuw nsw i32 %.0224249.us, 1
  %i.gz = icmp slt i32 %i.gv, %i.ee
  br i1 %i.gz, label %bb.h, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.o
  %i.ha = sub nsw i32 %i.gw, %.0225248.us         ; 6 uses
  store i32 %i.ha, ptr %i.n, align 8, !tbaa !62
  %i.hb = load i8, ptr %i.dj, align 1, !tbaa !82
  %i.hc = zext i8 %i.hb to i32                    ; 2 uses
  %i.hd = add nuw nsw i32 %.0226251.us, %i.hc     ; 2 uses
  %i.he = load i32, ptr %i.q, align 4, !tbaa !63  ; 2 uses
  %i.hf = add nsw i32 %i.he, %i.hc
  store i32 %i.hf, ptr %i.q, align 4, !tbaa !63
  %i.hg = add nuw nsw i32 %.0228250.us, 1
  %i.hh = icmp slt i32 %i.hd, %i.du
  br i1 %i.hh, label %.lr.ph.us, label %._crit_edge254

._crit_edge254:                                   ; preds = %._crit_edge.us
  %i.hi = sub nsw i32 %i.he, %.0226251.us         ; 5 uses
  store i32 %i.hi, ptr %i.q, align 4, !tbaa !63
  br i1 %i.ak, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %._crit_edge254
  %i.hj = lshr exact i32 %i.ed, %i.m
  %i.hk = call noundef i32 @llvm.smin.i32(i32 %i.ck, i32 %i.hj) ; 3 uses
  %i.hl = lshr exact i32 %.0229288, %i.m          ; 3 uses
  br i1 %i.ea, label %.split.us, label %.loopexit

.split.us:                                        ; preds = %bb.p
  %i.hm = icmp slt i32 %i.hl, %i.hk
  br i1 %i.hm, label %.lr.ph262.us.us.preheader, label %bb.ae

.lr.ph262.us.us.preheader:                        ; preds = %.split.us
  %i.hn = add nsw i32 %i.hi, %.0230289
  store i32 %i.hn, ptr %i.q, align 4, !tbaa !63
  br label %.lr.ph.us266.us.us

.lr.ph.us266.us.us:                               ; preds = %._crit_edge.us267.us.us, %.lr.ph262.us.us.preheader
  %i.ho = phi i32 [ %i.ha, %.lr.ph262.us.us.preheader ], [ %i.kq, %._crit_edge.us267.us.us ]
  %.1227260.us.us.us = phi i32 [ %i.dz, %.lr.ph262.us.us.preheader ], [ %i.kr, %._crit_edge.us267.us.us ] ; 3 uses
  %i.hp = add nsw i32 %i.ho, %.0229288
  store i32 %i.hp, ptr %i.n, align 8, !tbaa !62
  %i.hq = shl nuw i32 %.1227260.us.us.us, %i.l
  %i.hr = add nsw i32 %i.hq, %i.s
  %i.hs = shl nsw i32 %i.hr, 5
  %i.ht = or disjoint i32 %i.hs, %i.p
  %i.hu = add nuw nsw i32 %.1227260.us.us.us, %i.u
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.hv ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %dav1d_memset_likely_pow2.exit245.us.us.us, %.lr.ph.us266.us.us
  %.1258.us.us.us = phi i32 [ %i.hl, %.lr.ph.us266.us.us ], [ %i.kk, %dav1d_memset_likely_pow2.exit245.us.us.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i8 64, ptr %i.d, align 1, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.hx = load i8, ptr %i.cr, align 1, !tbaa !73  ; 2 uses
  %.not238.us.us.us = icmp eq i8 %i.hx, 0
  br i1 %.not238.us.us.us, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hy = shl nuw i32 %.1258.us.us.us, %i.m
  %i.hz = add nsw i32 %i.ht, %i.hy
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds i8, ptr %i.dk, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !64
  %i.id = zext i8 %i.ic to i32
  store i32 %i.id, ptr %i.e, align 4, !tbaa !78
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ie = load ptr, ptr %i.df, align 16, !tbaa !67
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 64
  %i.ig = add nuw nsw i32 %.1258.us.us.us, %i.t
  %i.ih = zext nneg i32 %i.ig to i64              ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ih
  %i.ij = load i8, ptr %i.cn, align 1, !tbaa !72
  %i.ik = zext i8 %i.ij to i32
  %i.il = zext i8 %i.hx to i32
  %i.im = load ptr, ptr %i.dh, align 8, !tbaa !76
  %i.in = call fastcc i32 @decode_coefs(ptr noundef nonnull %0, ptr noundef nonnull %i.ii, ptr noundef nonnull %i.hw, i32 noundef %i.ik, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %i.il, i32 noundef 1, ptr noundef %i.im, ptr noundef %i.e, ptr noundef %i.d)
  %i.io = shl nsw i32 %i.in, 5
  %i.ip = load i32, ptr %i.e, align 4, !tbaa !78
  %i.iq = add i32 %i.io, %i.ip
  %i.ir = trunc i32 %i.iq to i16
  %i.is = load ptr, ptr %i.di, align 8, !tbaa !79 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 2
  store ptr %i.it, ptr %i.di, align 8, !tbaa !79
  store i16 %i.ir, ptr %i.is, align 2, !tbaa !74
  %i.iu = load i8, ptr %i.cq, align 8, !tbaa !80  ; 2 uses
  %i.iv = zext i8 %i.iu to i64
  %i.iw = load i8, ptr %i.dm, align 1, !tbaa !82  ; 2 uses
  %i.ix = zext i8 %i.iw to i64
  %i.iy = load ptr, ptr %i.dh, align 8, !tbaa !76
  %i.iz = shl nuw nsw i64 %i.iv, 5
  %.idx.us.us.us = mul nuw nsw i64 %i.iz, %i.ix   ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.idx.us.us.us
  store ptr %i.ja, ptr %i.dh, align 8, !tbaa !76
  %i.jb = zext i8 %i.iu to i32                    ; 5 uses
  %i.jc = zext i8 %i.iw to i32                    ; 5 uses
  %i.jd = load <2 x i32>, ptr %i.cb, align 16, !tbaa !78
  %i.je = load <2 x i32>, ptr %i.n, align 8, !tbaa !78
  %i.jf = add <2 x i32> %i.jd, %i.dp
  %i.jg = sub <2 x i32> %i.jf, %i.je              ; 2 uses
  %i.jh = extractelement <2 x i32> %i.jg, i64 0
  %i.ji = ashr i32 %i.jh, %i.m
  %i.jj = call noundef i32 @llvm.smin.i32(i32 %i.jb, i32 %i.ji) ; 4 uses
  %i.jk = extractelement <2 x i32> %i.jg, i64 1
  %i.jl = ashr i32 %i.jk, %i.l
  %i.jm = call noundef i32 @llvm.smin.i32(i32 %i.jc, i32 %i.jl) ; 4 uses
  %i.jn = load ptr, ptr %i.df, align 16, !tbaa !67
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.ih ; 2 uses
  %i.jq = load i8, ptr %i.d, align 1, !tbaa !64   ; 3 uses
  %i.jr = zext i8 %i.jq to i32                    ; 2 uses
  %i.js = add i32 %i.jj, -1
  %or.cond.i242.us.us.us = icmp ult i32 %i.js, 32
  call void @llvm.assume(i1 %or.cond.i242.us.us.us)
  %i.jt = call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.jj)
  %i.ju = icmp samesign ult i32 %i.jt, 2
  br i1 %i.ju, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.jv = zext nneg i32 %i.jj to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jp, i8 %i.jq, i64 %i.jv, i1 false)
  br label %dav1d_memset_likely_pow2.exit243.us.us.us

bb.u:                                             ; preds = %bb.s
  %i.jw = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 -2147483648, 257) %i.jj, i1 true)
  %i.jx = xor i32 %i.jw, 31
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr @dav1d_memset_pow2, i64 %i.jy
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !68
  call void %i.ka(ptr noundef nonnull %i.jp, i32 noundef range(i32 0, 256) %i.jr) #9, !inline_history !83
  br label %dav1d_memset_likely_pow2.exit243.us.us.us

dav1d_memset_likely_pow2.exit243.us.us.us:        ; preds = %bb.u, %bb.t
  %i.kb = add i32 %i.jm, -1
  %or.cond.i244.us.us.us = icmp ult i32 %i.kb, 32
  call void @llvm.assume(i1 %or.cond.i244.us.us.us)
  %i.kc = call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.jm)
  %i.kd = icmp samesign ult i32 %i.kc, 2
  br i1 %i.kd, label %bb.w, label %bb.v

bb.v:                                             ; preds = %dav1d_memset_likely_pow2.exit243.us.us.us
  %i.ke = zext nneg i32 %i.jm to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hw, i8 %i.jq, i64 %i.ke, i1 false)
  br label %dav1d_memset_likely_pow2.exit245.us.us.us

bb.w:                                             ; preds = %dav1d_memset_likely_pow2.exit243.us.us.us
  %i.kf = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 -2147483648, 257) %i.jm, i1 true)
  %i.kg = xor i32 %i.kf, 31
  %i.kh = zext nneg i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr @dav1d_memset_pow2, i64 %i.kh
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !68
  call void %i.kj(ptr noundef nonnull %i.hw, i32 noundef range(i32 0, 256) %i.jr) #9, !inline_history !83
  br label %dav1d_memset_likely_pow2.exit245.us.us.us

dav1d_memset_likely_pow2.exit245.us.us.us:        ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.kk = add nuw nsw i32 %.1258.us.us.us, %i.jb  ; 3 uses
  %i.kl = shl nuw nsw i32 %i.jb, %i.m             ; 2 uses
  %i.km = load i32, ptr %i.n, align 8, !tbaa !62
  %i.kn = add nsw i32 %i.km, %i.kl                ; 2 uses
  store i32 %i.kn, ptr %i.n, align 8, !tbaa !62
  %i.ko = icmp slt i32 %i.kk, %i.hk
  br i1 %i.ko, label %bb.q, label %._crit_edge.us267.us.us

._crit_edge.us267.us.us:                          ; preds = %dav1d_memset_likely_pow2.exit245.us.us.us
  %i.kp = shl nuw i32 %i.kk, %i.m
  %i.kq = sub nsw i32 %i.kn, %i.kp                ; 3 uses
  store i32 %i.kq, ptr %i.n, align 8, !tbaa !62
  %i.kr = add nuw nsw i32 %.1227260.us.us.us, %i.jc ; 3 uses
  %i.ks = shl nuw nsw i32 %i.jc, %i.l             ; 2 uses
  %i.kt = load i32, ptr %i.q, align 4, !tbaa !63
  %i.ku = add nsw i32 %i.ks, %i.kt                ; 2 uses
  store i32 %i.ku, ptr %i.q, align 4, !tbaa !63
  %i.kv = icmp slt i32 %i.kr, %i.dy
  br i1 %i.kv, label %.lr.ph.us266.us.us, label %._crit_edge263.split.us.us.us

._crit_edge263.split.us.us.us:                    ; preds = %._crit_edge.us267.us.us
  %i.kw = shl nuw i32 %i.kr, %i.l
  %i.kx = sub nsw i32 %i.ku, %i.kw
  %i.ky = add nsw i32 %i.kx, %.0230289
  store i32 %i.ky, ptr %i.q, align 4, !tbaa !63
  br label %.lr.ph.us266.us.us.1

.lr.ph.us266.us.us.1:                             ; preds = %._crit_edge.us267.us.us.1, %._crit_edge263.split.us.us.us
  %i.kz = phi i32 [ %i.kq, %._crit_edge263.split.us.us.us ], [ %i.nt, %._crit_edge.us267.us.us.1 ]
  %.1227260.us.us.us.1 = phi i32 [ %i.dz, %._crit_edge263.split.us.us.us ], [ %i.nu, %._crit_edge.us267.us.us.1 ] ; 3 uses
  %i.la = add nsw i32 %i.kz, %.0229288
  store i32 %i.la, ptr %i.n, align 8, !tbaa !62
  %i.lb = shl nuw i32 %.1227260.us.us.us.1, %i.l
  %i.lc = add nsw i32 %i.lb, %i.s
  %i.ld = shl nsw i32 %i.lc, 5
  %i.le = or disjoint i32 %i.ld, %i.p
  %i.lf = add nuw nsw i32 %.1227260.us.us.us.1, %i.u
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.lg ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %dav1d_memset_likely_pow2.exit245.us.us.us.1, %.lr.ph.us266.us.us.1
  %.1258.us.us.us.1 = phi i32 [ %i.hl, %.lr.ph.us266.us.us.1 ], [ %i.no, %dav1d_memset_likely_pow2.exit245.us.us.us.1 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i8 64, ptr %i.d, align 1, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.li = load i8, ptr %i.cr, align 1, !tbaa !73  ; 2 uses
  %.not238.us.us.us.1 = icmp eq i8 %i.li, 0
  br i1 %.not238.us.us.us.1, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.lj = shl nuw i32 %.1258.us.us.us.1, %i.m
  %i.lk = add nsw i32 %i.le, %i.lj
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds i8, ptr %i.dk, i64 %i.ll
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !64
  %i.lo = zext i8 %i.ln to i32
  store i32 %i.lo, ptr %i.e, align 4, !tbaa !78
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.lp = load ptr, ptr %i.df, align 16, !tbaa !67
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 96
  %i.lr = add nuw nsw i32 %.1258.us.us.us.1, %i.t
  %i.ls = zext nneg i32 %i.lr to i64              ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.ls
  %i.lu = load i8, ptr %i.cn, align 1, !tbaa !72
  %i.lv = zext i8 %i.lu to i32
  %i.lw = zext i8 %i.li to i32
  %i.lx = load ptr, ptr %i.dh, align 8, !tbaa !76
  %i.ly = call fastcc i32 @decode_coefs(ptr noundef nonnull %0, ptr noundef nonnull %i.lt, ptr noundef nonnull %i.lh, i32 noundef %i.lv, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %i.lw, i32 noundef 2, ptr noundef %i.lx, ptr noundef %i.e, ptr noundef %i.d)
  %i.lz = shl nsw i32 %i.ly, 5
  %i.ma = load i32, ptr %i.e, align 4, !tbaa !78
  %i.mb = add i32 %i.lz, %i.ma
  %i.mc = trunc i32 %i.mb to i16
  %i.md = load ptr, ptr %i.di, align 8, !tbaa !79 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 2
  store ptr %i.me, ptr %i.di, align 8, !tbaa !79
  store i16 %i.mc, ptr %i.md, align 2, !tbaa !74
  %i.mf = load ptr, ptr %i.dh, align 8, !tbaa !76
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %.idx.us.us.us
  store ptr %i.mg, ptr %i.dh, align 8, !tbaa !76
  %i.mh = load <2 x i32>, ptr %i.cb, align 16, !tbaa !78
  %i.mi = load <2 x i32>, ptr %i.n, align 8, !tbaa !78
  %i.mj = add <2 x i32> %i.mh, %i.dp
  %i.mk = sub <2 x i32> %i.mj, %i.mi              ; 2 uses
  %i.ml = extractelement <2 x i32> %i.mk, i64 0
  %i.mm = ashr i32 %i.ml, %i.m
  %i.mn = call noundef i32 @llvm.smin.i32(i32 %i.jb, i32 %i.mm) ; 4 uses
  %i.mo = extractelement <2 x i32> %i.mk, i64 1
  %i.mp = ashr i32 %i.mo, %i.l
  %i.mq = call noundef i32 @llvm.smin.i32(i32 %i.jc, i32 %i.mp) ; 4 uses
  %i.mr = load ptr, ptr %i.df, align 16, !tbaa !67
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 96
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.ls ; 2 uses
  %i.mu = load i8, ptr %i.d, align 1, !tbaa !64   ; 3 uses
  %i.mv = zext i8 %i.mu to i32                    ; 2 uses
  %i.mw = add i32 %i.mn, -1
  %or.cond.i242.us.us.us.1 = icmp ult i32 %i.mw, 32
  call void @llvm.assume(i1 %or.cond.i242.us.us.us.1)
  %i.mx = call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.mn)
  %i.my = icmp samesign ult i32 %i.mx, 2
  br i1 %i.my, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mz = zext nneg i32 %i.mn to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.mt, i8 %i.mu, i64 %i.mz, i1 false)
  br label %dav1d_memset_likely_pow2.exit243.us.us.us.1

bb.ab:                                            ; preds = %bb.z
  %i.na = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 -2147483648, 257) %i.mn, i1 true)
  %i.nb = xor i32 %i.na, 31
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr @dav1d_memset_pow2, i64 %i.nc
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !68
  call void %i.ne(ptr noundef nonnull %i.mt, i32 noundef range(i32 0, 256) %i.mv) #9, !inline_history !83
  br label %dav1d_memset_likely_pow2.exit243.us.us.us.1

dav1d_memset_likely_pow2.exit243.us.us.us.1:      ; preds = %bb.ab, %bb.aa
  %i.nf = add i32 %i.mq, -1
  %or.cond.i244.us.us.us.1 = icmp ult i32 %i.nf, 32
  call void @llvm.assume(i1 %or.cond.i244.us.us.us.1)
  %i.ng = call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.mq)
  %i.nh = icmp samesign ult i32 %i.ng, 2
  br i1 %i.nh, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %dav1d_memset_likely_pow2.exit243.us.us.us.1
  %i.ni = zext nneg i32 %i.mq to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.lh, i8 %i.mu, i64 %i.ni, i1 false)
  br label %dav1d_memset_likely_pow2.exit245.us.us.us.1

bb.ad:                                            ; preds = %dav1d_memset_likely_pow2.exit243.us.us.us.1
  %i.nj = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 -2147483648, 257) %i.mq, i1 true)
  %i.nk = xor i32 %i.nj, 31
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr @dav1d_memset_pow2, i64 %i.nl
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !68
  call void %i.nn(ptr noundef nonnull %i.lh, i32 noundef range(i32 0, 256) %i.mv) #9, !inline_history !83
  br label %dav1d_memset_likely_pow2.exit245.us.us.us.1

dav1d_memset_likely_pow2.exit245.us.us.us.1:      ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.no = add nuw nsw i32 %.1258.us.us.us.1, %i.jb ; 3 uses
  %i.np = load i32, ptr %i.n, align 8, !tbaa !62
  %i.nq = add nsw i32 %i.np, %i.kl                ; 2 uses
  store i32 %i.nq, ptr %i.n, align 8, !tbaa !62
  %i.nr = icmp slt i32 %i.no, %i.hk
  br i1 %i.nr, label %bb.x, label %._crit_edge.us267.us.us.1

._crit_edge.us267.us.us.1:                        ; preds = %dav1d_memset_likely_pow2.exit245.us.us.us.1
  %i.ns = shl nuw i32 %i.no, %i.m
  %i.nt = sub nsw i32 %i.nq, %i.ns                ; 3 uses
  store i32 %i.nt, ptr %i.n, align 8, !tbaa !62
  %i.nu = add nuw nsw i32 %.1227260.us.us.us.1, %i.jc ; 3 uses
  %i.nv = load i32, ptr %i.q, align 4, !tbaa !63
  %i.nw = add nsw i32 %i.ks, %i.nv                ; 2 uses
  store i32 %i.nw, ptr %i.q, align 4, !tbaa !63
  %i.nx = icmp slt i32 %i.nu, %i.dy
  br i1 %i.nx, label %.lr.ph.us266.us.us.1, label %.split.us.split.a

.split.us.split.a:                                ; preds = %._crit_edge.us267.us.us.1
  %i.ny = shl nuw i32 %i.nu, %i.l
  %7 = sub nsw i32 %i.nw, %i.ny
  br label %.loopexit.sink.split

bb.ae:                                            ; preds = %.split.us
  %8 = load i8, ptr %i.dm, align 1, !tbaa !82
  %9 = zext i8 %8 to i32
  br label %._crit_edge263.split.us277.a

._crit_edge263.split.us277.a:                     ; preds = %bb.ae, %._crit_edge263.split.us277.a
  %.1227260.us276 = phi i32 [ %i.dz, %bb.ae ], [ %10, %._crit_edge263.split.us277.a ]
  %10 = add nuw nsw i32 %.1227260.us276, %9       ; 2 uses
  %11 = icmp slt i32 %10, %i.dy
  br i1 %11, label %._crit_edge263.split.us277.a, label %bb.af

bb.af:                                            ; preds = %._crit_edge263.split.us277.a
  %i.nz = add i32 %6, %i.hi
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.af, %.split.us.split.a
  %.lcssa340.sink = phi i32 [ %7, %.split.us.split.a ], [ %i.nz, %bb.af ] ; 2 uses
  %.ph = phi i32 [ %i.nt, %.split.us.split.a ], [ %i.ha, %bb.af ]
  store i32 %.lcssa340.sink, ptr %i.q, align 4, !tbaa !63
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.p, %._crit_edge254
  %i.oa = phi i32 [ %i.ha, %bb.p ], [ %i.ha, %._crit_edge254 ], [ %.ph, %.loopexit.sink.split ] ; 2 uses
  %i.ob = phi i32 [ %i.hi, %bb.p ], [ %i.hi, %._crit_edge254 ], [ %.lcssa340.sink, %.loopexit.sink.split ] ; 2 uses
  %i.oc = icmp slt i32 %i.ed, %i.ce
  br i1 %i.oc, label %.lr.ph.us.preheader, label %..loopexit247_crit_edge

bb.ag:                                            ; preds = %bb.e, %bb.f, %._crit_edge.split
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @read_coef_tree(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef range(i32 0, 256) %3, i32 noundef range(i32 0, 3) %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !69  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 3112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.i = zext nneg i32 %3 to i64                  ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @dav1d_txfm_dimensions, i64 %i.i ; 4 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !80    ; 3 uses
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !82    ; 9 uses
  %i.o = zext i8 %i.n to i32                      ; 12 uses
  %i.p = icmp samesign ult i32 %4, 2
  br i1 %i.p, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.q = zext nneg i32 %4 to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !74   ; 2 uses
  %.not = icmp eq i16 %i.s, 0
  br i1 %.not, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = zext i16 %i.s to i32
  %i.u = shl nsw i32 %7, 2
  %i.v = add nsw i32 %i.u, %6
  %i.w = shl nuw i32 1, %i.v
  %i.x = and i32 %i.w, %i.t
  %.not174 = icmp eq i32 %i.x, 0
  br i1 %.not174, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.z = load i8, ptr %i.y, align 2, !tbaa !85    ; 2 uses
  %i.aa = zext i8 %i.z to i32                     ; 4 uses
  %i.ab = zext i8 %i.z to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @dav1d_txfm_dimensions, i64 %i.ab ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !80
  %i.ae = zext i8 %i.ad to i32                    ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !82
  %i.ah = zext i8 %i.ag to i32                    ; 3 uses
  %i.ai = add nuw nsw i32 %4, 1                   ; 4 uses
  %i.aj = shl nsw i32 %6, 1                       ; 4 uses
  %i.ak = shl nsw i32 %7, 1                       ; 3 uses
  tail call fastcc void @read_coef_tree(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %i.aa, i32 noundef %i.ai, ptr noundef %5, i32 noundef %i.aj, i32 noundef %i.ak, ptr noundef %8)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !62
  %i.an = add nsw i32 %i.am, %i.ae                ; 4 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !62
  %.not178 = icmp ult i8 %i.k, %i.n               ; 2 uses
  br i1 %.not178, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 3280
  %i.ap = load i32, ptr %i.ao, align 16, !tbaa !70
  %i.aq = icmp slt i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = or disjoint i32 %i.aj, 1
  %.not179 = icmp eq ptr %8, null
  %i.as = shl nuw nsw i32 %i.ae, 2
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 %i.at
  %i.av = select i1 %.not179, ptr null, ptr %i.au
  tail call fastcc void @read_coef_tree(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %i.aa, i32 noundef %i.ai, ptr noundef %5, i32 noundef %i.ar, i32 noundef %i.ak, ptr noundef %i.av)
  %.pre = load i32, ptr %i.al, align 8, !tbaa !62
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.aw = phi i32 [ %.pre, %bb.f ], [ %i.an, %bb.e ], [ %i.an, %bb.d ]
  %i.ax = sub nsw i32 %i.aw, %i.ae
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !62
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !63
  %i.ba = add nsw i32 %i.az, %i.ah                ; 4 uses
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !63
  %.not180 = icmp ult i8 %i.n, %i.k
  br i1 %.not180, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 3284
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !71
  %i.bd = icmp slt i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %.not181 = icmp eq ptr %8, null
  br i1 %.not181, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = shl nuw nsw i32 %i.ah, 2
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 2144
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !86
  %i.bi = mul nsw i64 %i.bh, %i.bf
  %i.bj = getelementptr inbounds i8, ptr %8, i64 %i.bi
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi ptr [ %i.bj, %bb.j ], [ null, %bb.i ] ; 3 uses
  %i.bk = or disjoint i32 %i.ak, 1                ; 2 uses
  tail call fastcc void @read_coef_tree(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %i.aa, i32 noundef %i.ai, ptr noundef %5, i32 noundef %i.aj, i32 noundef %i.bk, ptr noundef %.0)
  %i.bl = load i32, ptr %i.al, align 8, !tbaa !62
  %i.bm = add nsw i32 %i.bl, %i.ae                ; 4 uses
  store i32 %i.bm, ptr %i.al, align 8, !tbaa !62
  br i1 %.not178, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 3280
  %i.bo = load i32, ptr %i.bn, align 16, !tbaa !70
  %i.bp = icmp slt i32 %i.bm, %i.bo
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bq = or disjoint i32 %i.aj, 1
  %.not182 = icmp eq ptr %.0, null
  %i.br = shl nuw nsw i32 %i.ae, 2
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bs
  %i.bu = select i1 %.not182, ptr null, ptr %i.bt
  tail call fastcc void @read_coef_tree(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %i.aa, i32 noundef %i.ai, ptr noundef %5, i32 noundef %i.bq, i32 noundef %i.bk, ptr noundef %i.bu)
  %.pre224 = load i32, ptr %i.al, align 8, !tbaa !62
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.bv = phi i32 [ %.pre224, %bb.m ], [ %i.bm, %bb.l ], [ %i.bm, %bb.k ]
  %i.bw = sub nsw i32 %i.bv, %i.ae
  store i32 %i.bw, ptr %i.al, align 8, !tbaa !62
  %.pre225 = load i32, ptr %i.ay, align 4, !tbaa !63
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h, %bb.g
  %i.bx = phi i32 [ %.pre225, %bb.n ], [ %i.ba, %bb.h ], [ %i.ba, %bb.g ]
  %i.by = sub nsw i32 %i.bx, %i.ah
  store i32 %i.by, ptr %i.ay, align 4, !tbaa !63
  br label %bb.al

bb.p:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !62
  %i.cb = and i32 %i.ca, 31                       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !63
  %i.ce = and i32 %i.cd, 31                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 258564 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !87 ; 3 uses
  %.not175 = icmp eq i32 %i.cg, 0
  br i1 %.not175, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1024
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ci = and i32 %i.cg, 1
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 13568 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !76, !nonnull !88, !noundef !88 ; 3 uses
  %i.cn = tail call i32 @llvm.umin.i32(i32 %i.l, i32 8)
  %i.co = tail call i32 @llvm.umin.i32(i32 %i.o, i32 8)
  %i.cp = shl nuw nsw i32 %i.cn, 4
  %i.cq = mul nuw nsw i32 %i.cp, %i.co
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.cr
  store ptr %i.cs, ptr %i.cl, align 8, !tbaa !76
  %.not176 = icmp eq i32 %i.cg, 2
  br i1 %.not176, label %.thread234, label %bb.r

bb.r:                                             ; preds = %.thread, %bb.q
  %.0167187 = phi ptr [ %i.ch, %.thread ], [ %i.cm, %bb.q ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 16, !tbaa !67
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_0
