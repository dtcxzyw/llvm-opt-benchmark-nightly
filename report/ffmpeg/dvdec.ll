Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dvdec?download=true
inline.NumInlined: 33
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 58
begin_hunk_0_@llvm.memset.p0.i64

declare i32 @ff_vlc_init_from_lengths(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ff_dv_frame_profile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @ff_dv_init_dynamic_tables(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #5

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_set_sar(ptr noundef, i64) local_unnamed_addr #3

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @dv_decode_video_segment(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %2 = alloca [40 x %struct.BlockInfo], align 16  ; 5 uses
  %i.a = alloca [40 x [64 x i16]], align 16       ; 6 uses
  %i.b = alloca [144 x i8], align 16              ; 11 uses
  %i.c = alloca [464 x i8], align 16              ; 9 uses
  %i.d = alloca [5 x i32], align 16               ; 6 uses
  %i.e = alloca [5 x i32], align 16               ; 5 uses
  %i.f = alloca [8 x i64], align 16               ; 5 uses
  %i.g = ptrtoaddr ptr %i.f to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.k = load i32, ptr %i.j, align 8, !tbaa !31   ; 4 uses
  %i.l = sub nsw i32 3, %i.k                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 48472 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 15704
  %i.r = icmp eq i32 %i.k, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.bu, %bb.a
  %i.s = phi i1 [ false, %bb.a ], [ true, %bb.bu ]
  %.0244 = phi i32 [ 0, %bb.a ], [ 1, %bb.bu ]
  %.0243 = phi i32 [ undef, %bb.a ], [ %.2, %bb.bu ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(5120) %i.a, i8 0, i64 5120, i1 false)
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.u = load i16, ptr %1, align 2, !tbaa !146
  %i.v = zext i16 %i.u to i64
  %i.w = mul nuw nsw i64 %i.v, 80
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bit_copy.exit328
  %indvars.iv597 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next598, %bit_copy.exit328 ] ; 5 uses
  %.1525 = phi i32 [ %.0243, %bb.b ], [ %.2, %bit_copy.exit328 ] ; 3 uses
  %.1246524 = phi i32 [ %.0244, %bb.b ], [ %.8, %bit_copy.exit328 ] ; 2 uses
  %.0248522 = phi ptr [ %2, %bb.b ], [ %i.nt, %bit_copy.exit328 ] ; 3 uses
  %.0256521 = phi ptr [ %i.x, %bb.b ], [ %.1257.lcssa, %bit_copy.exit328 ] ; 2 uses
  %.0258519 = phi ptr [ %i.a, %bb.b ], [ %i.nw, %bit_copy.exit328 ] ; 3 uses
  %.sroa.0385.0517 = phi i32 [ 0, %bb.b ], [ %.sroa.0385.1, %bit_copy.exit328 ] ; 4 uses
  %.sroa.15391.0516 = phi i32 [ 32, %bb.b ], [ %.sroa.15391.1, %bit_copy.exit328 ] ; 4 uses
  %.sroa.29.0.idx515 = phi i64 [ 0, %bb.b ], [ %.sroa.29.1.idx, %bit_copy.exit328 ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0256521, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !29    ; 2 uses
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  %i.ab = and i32 %i.aa, 15                       ; 2 uses
  %i.ac = load i32, ptr %i.n, align 8, !tbaa !147
  %.not283 = icmp eq i32 %i.ac, 0
  br i1 %.not283, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.mask = and i32 %i.aa, 240
  %i.ad = icmp eq i32 %.mask, 224
  %spec.select = select i1 %i.ad, i32 1, i32 %.1246524 ; 2 uses
  %.not284 = icmp eq i64 %indvars.iv597, 0
  %i.ae = lshr i8 %i.z, 4
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  br i1 %.not284, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not285 = icmp eq i32 %.1525, %i.af
  %spec.select289 = select i1 %.not285, i32 %spec.select, i32 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.3 = phi i32 [ %.1246524, %bb.c ], [ %spec.select289, %bb.e ], [ %spec.select, %bb.d ] ; 2 uses
  %.2 = phi i32 [ %.1525, %bb.c ], [ %.1525, %bb.e ], [ %i.af, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0256521, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv597 ; 2 uses
  store i32 0, ptr %i.ah, align 4, !tbaa !41
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !37  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 60
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !148
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.am = shl nuw nsw i32 %i.ab, 6
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv597
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.ac
  %i.ao = phi i32 [ 0, %.lr.ph ], [ %i.ct, %bb.ac ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ac ] ; 4 uses
  %i.ap = phi ptr [ %i.ai, %.lr.ph ], [ %i.hc, %bb.ac ] ; 2 uses
  %.4498 = phi i32 [ %.3, %.lr.ph ], [ %.5, %bb.ac ]
  %.0249497 = phi ptr [ %.0248522, %.lr.ph ], [ %i.hb, %bb.ac ] ; 7 uses
  %.1257496 = phi ptr [ %i.ag, %.lr.ph ], [ %i.da, %bb.ac ] ; 7 uses
  %.0259495 = phi ptr [ %.0258519, %.lr.ph ], [ %i.ha, %bb.ac ] ; 3 uses
  %.sroa.0408.0493 = phi i32 [ 0, %.lr.ph ], [ %.sroa.0408.1, %bb.ac ] ; 3 uses
  %.sroa.15414.0492 = phi i32 [ 32, %.lr.ph ], [ %.sroa.15414.1, %bb.ac ] ; 3 uses
  %.sroa.29421.0.idx491 = phi i64 [ 0, %.lr.ph ], [ %.sroa.29421.1.idx, %bb.ac ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !149
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv
  %i.at = load i8, ptr %i.as, align 1, !tbaa !29  ; 2 uses
  %i.au = zext i8 %i.at to i32                    ; 6 uses
  %i.av = add nuw nsw i32 %i.au, 8                ; 3 uses
  %i.aw = load i32, ptr %.1257496, align 1, !tbaa !29
  %i.ax = call i32 @llvm.bswap.i32(i32 %i.aw)
  %i.ay = call i32 @llvm.umin.i32(i32 %i.av, i32 9) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.1257496, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !29
  %i.bb = icmp ugt i8 %i.at, 1
  %i.bc = zext i1 %i.bb to i32
  %spec.select.i = add nuw nsw i32 %i.ay, %i.bc   ; 2 uses
  %i.bd = zext i8 %i.ba to i32
  %i.be = and i32 %i.ay, 7
  %i.bf = shl nuw nsw i32 %i.bd, %i.be
  %i.bg = lshr i32 %i.bf, 7                       ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.1257496, i64 1
  %i.bi = load i32, ptr %i.bh, align 1, !tbaa !29
  %i.bj = call i32 @llvm.bswap.i32(i32 %i.bi)
  %i.bk = and i32 %spec.select.i, 7
  %i.bl = shl i32 %i.bj, %i.bk
  %i.bm = lshr i32 %i.bl, 30                      ; 3 uses
  %i.bn = add nuw nsw i32 %spec.select.i, 2
  %i.bo = call i32 @llvm.umin.i32(i32 %i.av, i32 %i.bn)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !39
  %i.br = and i32 %i.bq, 16
  %.not287 = icmp eq i32 %i.br, 0
  br i1 %.not287, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.o, align 8, !tbaa !36
  %.inv = icmp samesign ult i64 %indvars.iv, 4
  %i.bt = select i1 %.inv, i32 0, i32 4096
  %i.bu = shl nuw nsw i32 %i.bm, 10
  %i.bv = or disjoint i32 %i.bu, %i.bt
  %i.bw = or disjoint i32 %i.bv, %i.am
  %.not288 = icmp eq i64 %indvars.iv, 0
  %i.bx = and i32 %i.bg, 1
  %i.by = select i1 %.not288, i32 %i.bx, i32 0
  %i.bz = or i32 %i.ao, %i.by                     ; 2 uses
  store i32 %i.bz, ptr %i.ah, align 4, !tbaa !41
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ca = and i32 %i.bg, 1                        ; 2 uses
  %i.cb = trunc i32 %i.bg to i1
  %i.cc = select i1 %i.cb, i1 %i.r, i1 false
  %i.cd = zext i1 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !36
  %i.cg = zext nneg i32 %i.ca to i64
  %i.ch = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.cg
  %i.ci = icmp eq i32 %i.bm, 3
  %i.cj = select i1 %i.ci, i32 2816, i32 0
  %i.ck = mul nuw nsw i32 %i.ca, 1408
  %i.cl = add nuw nsw i32 %i.cj, %i.ck
  %i.cm = zext nneg i32 %i.bm to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @ff_dv_quant_offset, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !29
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nuw nsw i32 %i.ab, %i.cp
  %i.cr = shl nuw nsw i32 %i.cq, 6
  %i.cs = add nuw nsw i32 %i.cl, %i.cr
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ct = phi i32 [ %i.ao, %bb.i ], [ %i.bz, %bb.h ]
  %.sink619 = phi ptr [ %i.cf, %bb.i ], [ %i.bs, %bb.h ]
  %.sink618 = phi ptr [ %i.ch, %bb.i ], [ %i.p, %bb.h ] ; 2 uses
  %.pn.in = phi i32 [ %i.cs, %bb.i ], [ %i.bw, %bb.h ]
  %.pn = zext i32 %.pn.in to i64
  %.sink = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.pn ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0249497, i64 24
  store ptr %.sink619, ptr %i.cu, align 8, !tbaa !151
  %i.cv = getelementptr inbounds nuw i8, ptr %.0249497, i64 8
  store ptr %.sink618, ptr %i.cv, align 8, !tbaa !152
  store ptr %.sink, ptr %.0249497, align 8, !tbaa !153
  %sh.diff = ashr i32 %i.ax, 21
  %tr.sh.diff = trunc nsw i32 %sh.diff to i16
  %i.cw = and i16 %tr.sh.diff, -4
  %i.cx = add nsw i16 %i.cw, 1024
  store i16 %i.cx, ptr %.0259495, align 2, !tbaa !43
  %i.cy = lshr i32 %i.au, 3
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %.1257496, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0249497, i64 16 ; 3 uses
  store i8 0, ptr %i.db, align 8, !tbaa !154
  %i.dc = getelementptr inbounds nuw i8, ptr %.0249497, i64 32 ; 2 uses
  store i8 0, ptr %i.dc, align 8, !tbaa !155
  br label %bb.k

bb.k:                                             ; preds = %bb.p, %bb.j
  %.sink693 = phi i64 [ %i.fa, %bb.p ], [ 1, %bb.j ]
  %.sink690 = phi i32 [ %i.ea, %bb.p ], [ %i.bo, %bb.j ] ; 3 uses
  %.057.i = phi i32 [ %i.em, %bb.p ], [ 0, %bb.j ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.1257496, i64 %.sink693
  %i.de = load i32, ptr %i.dd, align 1, !tbaa !29
  %i.df = call i32 @llvm.bswap.i32(i32 %i.de)
  %i.dg = and i32 %.sink690, 7
  %i.dh = shl i32 %i.df, %i.dg                    ; 3 uses
  %i.di = lshr i32 %i.dh, 22                      ; 2 uses
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr @dv_rl_vlc, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  %i.dm = load i8, ptr %i.dl, align 2, !tbaa !29  ; 2 uses
  %i.dn = sext i8 %i.dm to i32                    ; 3 uses
  %i.do = icmp slt i8 %i.dm, 0
  br i1 %i.do, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dp = shl i32 %i.dh, 10
  %i.dq = add nsw i32 %i.dn, 32
  %i.dr = lshr i32 %i.dp, %i.dq
  %i.ds = load i16, ptr %i.dk, align 4, !tbaa !29
  %i.dt = sext i16 %i.ds to i32
  %i.du = add i32 %i.dr, %i.dt
  %i.dv = sub nsw i32 10, %i.dn
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.056.i = phi i32 [ %i.dv, %bb.l ], [ %i.dn, %bb.k ]
  %.055.i = phi i32 [ %i.du, %bb.l ], [ %i.di, %bb.k ]
  %i.dw = sext i32 %.055.i to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr @dv_rl_vlc, i64 %i.dw ; 2 uses
  %i.dy = load i16, ptr %i.dx, align 4, !tbaa !29
  %i.dz = sext i16 %i.dy to i32
  %i.ea = add nsw i32 %.056.i, %.sink690          ; 4 uses
  %i.eb = icmp ugt i32 %i.ea, %i.au
  br i1 %i.eb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ec = sub nsw i32 %i.au, %.sink690            ; 2 uses
  %i.ed = trunc i32 %i.ec to i8
  store i8 %i.ed, ptr %i.dc, align 8, !tbaa !155
  %i.ee = and i32 %i.ec, 255
  %i.ef = lshr i32 -1, %i.ee
  %i.eg = xor i32 %i.ef, -1
  %i.eh = and i32 %i.dh, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %.0249497, i64 36
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !156
  br label %dv_decode_ac.exit

bb.o:                                             ; preds = %bb.m
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dx, i64 3
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !29
  %i.el = zext i8 %i.ek to i32
  %i.em = add nuw nsw i32 %.057.i, %i.el          ; 4 uses
  %i.en = icmp samesign ugt i32 %i.em, 63
  br i1 %i.en, label %dv_decode_ac.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eo = zext nneg i32 %i.em to i64              ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.sink, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !41
  %i.er = mul i32 %i.eq, %i.dz
  %i.es = add i32 %i.er, 8192
  %i.et = lshr i32 %i.es, 14
  %i.eu = trunc i32 %i.et to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %.sink618, i64 %i.eo
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !29
  %i.ex = zext i8 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %.0259495, i64 %i.ex
  store i16 %i.eu, ptr %i.ey, align 2, !tbaa !43
  %i.ez = lshr i32 %i.ea, 3
  %i.fa = zext nneg i32 %i.ez to i64
  br label %bb.k

dv_decode_ac.exit:                                ; preds = %bb.o, %bb.n
  %.158.i = phi i32 [ %.057.i, %bb.n ], [ %i.em, %bb.o ]
  %.2.i = phi i32 [ %i.au, %bb.n ], [ %i.ea, %bb.o ] ; 3 uses
  %i.fb = trunc i32 %.158.i to i8                 ; 2 uses
  store i8 %i.fb, ptr %i.db, align 8, !tbaa !154
  %i.fc = icmp ugt i8 %i.fb, 63
  br i1 %i.fc, label %bb.q, label %bit_copy.exit

bb.q:                                             ; preds = %dv_decode_ac.exit
  %i.fd = sub nsw i32 %i.au, %.2.i                ; 3 uses
  %i.fe = icmp sgt i32 %i.fd, 24
  br i1 %i.fe, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.q, %put_bits.exit.i
  %.sroa.29421.5.idx = phi i64 [ %.sroa.29421.6.idx, %put_bits.exit.i ], [ %.sroa.29421.0.idx491, %bb.q ] ; 5 uses
  %.sroa.15.7 = phi i32 [ %i.fq, %put_bits.exit.i ], [ %.2.i, %bb.q ] ; 3 uses
  %i.ff = phi i32 [ %i.ga, %put_bits.exit.i ], [ %.sroa.15414.0492, %bb.q ] ; 4 uses
  %i.fg = phi i32 [ %.026.i.i.i, %put_bits.exit.i ], [ %.sroa.0408.0493, %bb.q ] ; 2 uses
  %.014.i = phi i32 [ %i.gb, %put_bits.exit.i ], [ %i.fd, %bb.q ] ; 2 uses
  %.sroa.29421.5.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.29421.5.idx
  %i.fh = lshr i32 %.sroa.15.7, 3
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %.1257496, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 1, !tbaa !29
  %i.fl = call i32 @llvm.bswap.i32(i32 %i.fk)
  %i.fm = and i32 %.sroa.15.7, 7
  %i.fn = shl i32 %i.fl, %i.fm
  %i.fo = lshr i32 %i.fn, 7                       ; 4 uses
  %i.fp = add nuw nsw i32 %.sroa.15.7, 25
  %i.fq = call i32 @llvm.umin.i32(i32 %i.av, i32 %i.fp) ; 2 uses
  %i.fr = icmp sgt i32 %i.ff, 25
  br i1 %i.fr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i
  %i.fs = shl i32 %i.fg, 25
  %i.ft = or disjoint i32 %i.fo, %i.fs
  br label %put_bits.exit.i

bb.s:                                             ; preds = %.lr.ph.i
  %notsub454 = add nsw i64 %.sroa.29421.5.idx, -81
  %i.fu = icmp ult i64 %notsub454, -4
  br i1 %i.fu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fv = shl i32 %i.fg, %i.ff
  %i.fw = sub nsw i32 25, %i.ff
  %i.fx = lshr i32 %i.fo, %i.fw
  %i.fy = or i32 %i.fx, %i.fv
  %i.fz = call i32 @llvm.bswap.i32(i32 %i.fy)
  store i32 %i.fz, ptr %.sroa.29421.5.ptr, align 1, !tbaa !29
  %.sroa.29421.5.add = add nuw nsw i64 %.sroa.29421.5.idx, 4
  br label %put_bits.exit.i

bb.u:                                             ; preds = %bb.s
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %put_bits.exit.i

put_bits.exit.i:                                  ; preds = %bb.u, %bb.t, %bb.r
  %.sroa.29421.6.idx = phi i64 [ %.sroa.29421.5.idx, %bb.r ], [ %.sroa.29421.5.add, %bb.t ], [ %.sroa.29421.5.idx, %bb.u ] ; 2 uses
  %.sink.i = phi i32 [ -25, %bb.r ], [ 7, %bb.t ], [ 7, %bb.u ]
  %.026.i.i.i = phi i32 [ %i.ft, %bb.r ], [ %i.fo, %bb.t ], [ %i.fo, %bb.u ] ; 2 uses
  %i.ga = add nsw i32 %.sink.i, %i.ff             ; 2 uses
  %i.gb = add nsw i32 %.014.i, -25                ; 2 uses
  %i.gc = icmp sgt i32 %.014.i, 49
  br i1 %i.gc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !104

._crit_edge.i:                                    ; preds = %put_bits.exit.i, %bb.q
  %.sroa.29421.2.idx = phi i64 [ %.sroa.29421.0.idx491, %bb.q ], [ %.sroa.29421.6.idx, %put_bits.exit.i ] ; 6 uses
  %.sroa.15414.2 = phi i32 [ %.sroa.15414.0492, %bb.q ], [ %i.ga, %put_bits.exit.i ] ; 6 uses
  %.sroa.0408.2 = phi i32 [ %.sroa.0408.0493, %bb.q ], [ %.026.i.i.i, %put_bits.exit.i ] ; 3 uses
  %.sroa.15.6 = phi i32 [ %.2.i, %bb.q ], [ %i.fq, %put_bits.exit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.fd, %bb.q ], [ %i.gb, %put_bits.exit.i ] ; 7 uses
  %.sroa.29421.2.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.29421.2.idx
  %i.gd = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.gd, label %bb.v, label %bit_copy.exit

bb.v:                                             ; preds = %._crit_edge.i
  %i.ge = lshr i32 %.sroa.15.6, 3
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %.1257496, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 1, !tbaa !29
  %i.gi = call i32 @llvm.bswap.i32(i32 %i.gh)
  %i.gj = and i32 %.sroa.15.6, 7
  %i.gk = shl i32 %i.gi, %i.gj
  %i.gl = sub nuw nsw i32 32, %.0.lcssa.i
  %i.gm = lshr i32 %i.gk, %i.gl                   ; 3 uses
  %i.gn = icmp slt i32 %.0.lcssa.i, %.sroa.15414.2
  br i1 %i.gn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.go = shl i32 %.sroa.0408.2, %.0.lcssa.i
  %i.gp = or disjoint i32 %i.gm, %i.go
  %i.gq = sub nuw nsw i32 %.sroa.15414.2, %.0.lcssa.i
  br label %bit_copy.exit

bb.x:                                             ; preds = %bb.v
  %notsub455 = add nsw i64 %.sroa.29421.2.idx, -81
  %i.gr = icmp ult i64 %notsub455, -4
  br i1 %i.gr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gs = shl i32 %.sroa.0408.2, %.sroa.15414.2
  %i.gt = sub nsw i32 %.0.lcssa.i, %.sroa.15414.2
  %i.gu = lshr i32 %i.gm, %i.gt
  %i.gv = or i32 %i.gu, %i.gs
  %i.gw = call i32 @llvm.bswap.i32(i32 %i.gv)
  store i32 %i.gw, ptr %.sroa.29421.2.ptr, align 1, !tbaa !29
  %.sroa.29421.2.add = add nuw nsw i64 %.sroa.29421.2.idx, 4
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.29421.3.idx = phi i64 [ %.sroa.29421.2.add, %bb.y ], [ %.sroa.29421.2.idx, %bb.z ]
  %reass.sub.i = add nsw i32 %.sroa.15414.2, 32
  %i.gx = sub nsw i32 %reass.sub.i, %.0.lcssa.i
  br label %bit_copy.exit

bit_copy.exit:                                    ; preds = %._crit_edge.i, %bb.aa, %bb.w, %dv_decode_ac.exit
  %.sroa.29421.1.idx = phi i64 [ %.sroa.29421.0.idx491, %dv_decode_ac.exit ], [ %.sroa.29421.2.idx, %._crit_edge.i ], [ %.sroa.29421.2.idx, %bb.w ], [ %.sroa.29421.3.idx, %bb.aa ] ; 2 uses
  %.sroa.15414.1 = phi i32 [ %.sroa.15414.0492, %dv_decode_ac.exit ], [ %.sroa.15414.2, %._crit_edge.i ], [ %i.gq, %bb.w ], [ %i.gx, %bb.aa ] ; 2 uses
  %.sroa.0408.1 = phi i32 [ %.sroa.0408.0493, %dv_decode_ac.exit ], [ %.sroa.0408.2, %._crit_edge.i ], [ %i.gp, %bb.w ], [ %i.gm, %bb.aa ] ; 2 uses
  %i.gy = load i8, ptr %i.db, align 8, !tbaa !154
  %i.gz = add i8 %i.gy, -64
  %or.cond290 = icmp ult i8 %i.gz, 63
  br i1 %or.cond290, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bit_copy.exit
  store i32 1, ptr %i.an, align 4, !tbaa !41
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bit_copy.exit
  %.5 = phi i32 [ 1, %bb.ab ], [ %.4498, %bit_copy.exit ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.0259495, i64 128
  %i.hb = getelementptr inbounds nuw i8, ptr %.0249497, i64 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hc = load ptr, ptr %i.i, align 8, !tbaa !37  ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 60
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !148
  %i.hf = sext i32 %i.he to i64
  %i.hg = icmp slt i64 %indvars.iv.next, %i.hf
  br i1 %i.hg, label %bb.g, label %._crit_edge.loopexit, !llvm.loop !105

._crit_edge.loopexit:                             ; preds = %bb.ac
  %i.hh = zext i32 %.sroa.0408.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %.sroa.29421.0.idx.lcssa490 = phi i64 [ 0, %bb.f ], [ %.sroa.29421.1.idx, %._crit_edge.loopexit ] ; 5 uses
  %.sroa.15414.0.lcssa = phi i32 [ 32, %bb.f ], [ %.sroa.15414.1, %._crit_edge.loopexit ] ; 7 uses
  %.sroa.0408.0.lcssa = phi i64 [ 0, %bb.f ], [ %i.hh, %._crit_edge.loopexit ]
  %.1257.lcssa = phi ptr [ %i.ag, %bb.f ], [ %i.da, %._crit_edge.loopexit ]
  %.4.lcssa = phi i32 [ %.3, %bb.f ], [ %.5, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.29421.0.ptr.le = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.29421.0.idx.lcssa490
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv597 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !41
  %i.hk = icmp sgt i32 %i.hj, 0
  br i1 %i.hk, label %bit_copy.exit328, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge
  %.tr.i = trunc i64 %.sroa.29421.0.idx.lcssa490 to i32
  %i.hl = shl i32 %.tr.i, 3
  %reass.sub.i296 = sub i32 %i.hl, %.sroa.15414.0.lcssa
  %i.hm = add i32 %reass.sub.i296, 32             ; 2 uses
  %or.cond.i = icmp ult i32 %i.hm, 2147483135
  %.013.i298 = select i1 %or.cond.i, i32 %i.hm, i32 0 ; 6 uses
  %i.hn = add nuw nsw i32 %.013.i298, 8
  %notsub563 = add nsw i64 %.sroa.29421.0.idx.lcssa490, -81
  %i.ho = icmp ult i64 %notsub563, -4
  br i1 %i.ho, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hp = zext nneg i32 %.sroa.15414.0.lcssa to i64
  %i.hq = shl i64 %.sroa.0408.0.lcssa, %i.hp
  %i.hr = trunc i64 %i.hq to i32
  %i.hs = call i32 @llvm.bswap.i32(i32 %i.hr)
  store i32 %i.hs, ptr %.sroa.29421.0.ptr.le, align 1, !tbaa !29
  %.sroa.29421.0.add = add nuw nsw i64 %.sroa.29421.0.idx.lcssa490, 4
  br label %put_bits32.exit

bb.af:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %put_bits32.exit

put_bits32.exit:                                  ; preds = %bb.ae, %bb.af
  %.sroa.29421.8.idx = phi i64 [ %.sroa.29421.0.add, %bb.ae ], [ %.sroa.29421.0.idx.lcssa490, %bb.af ] ; 5 uses
  %i.ht = icmp slt i32 %.sroa.15414.0.lcssa, 32
  br i1 %i.ht, label %.lr.ph.i301.preheader, label %flush_put_bits.exit

.lr.ph.i301.preheader:                            ; preds = %put_bits32.exit
  %smax = call i64 @llvm.smax.i64(i64 %.sroa.29421.8.idx, i64 80) ; 2 uses
  %i.hu = call i32 @llvm.smax.i32(i32 %.sroa.15414.0.lcssa, i32 24)
  %i.hv = add nuw i32 %i.hu, 7
  %i.hw = sub i32 %i.hv, %.sroa.15414.0.lcssa
  %.fr770 = freeze i32 %i.hw
  %i.hx = lshr i32 %.fr770, 3
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = sub i64 %smax, %.sroa.29421.8.idx
  %i.ia = call i64 @llvm.umin.i64(i64 %i.hy, i64 %i.hz) ; 2 uses
  %min.iters.check726 = icmp samesign ult i64 %i.ia, 32
  br i1 %min.iters.check726, label %.lr.ph.i301.preheader776, label %vector.ph727

vector.ph727:                                     ; preds = %.lr.ph.i301.preheader
  %i.ib = add nuw nsw i64 %i.ia, 1                ; 2 uses
  %i.ic = and i64 %i.ib, 31                       ; 2 uses
  %i.id = icmp eq i64 %i.ic, 0
  %i.ie = select i1 %i.id, i64 32, i64 %i.ic
  %n.vec728 = sub nsw i64 %i.ib, %i.ie            ; 3 uses
  %i.if = add i64 %.sroa.29421.8.idx, %n.vec728
  %i.ig = trunc nsw i64 %n.vec728 to i32
  %i.ih = shl i32 %i.ig, 3
  %i.ii = add i32 %.sroa.15414.0.lcssa, %i.ih
  %i.ij = getelementptr i8, ptr %i.b, i64 %.sroa.29421.8.idx
  br label %vector.body729

vector.body729:                                   ; preds = %vector.body729, %vector.ph727
  %index730 = phi i64 [ 0, %vector.ph727 ], [ %index.next731, %vector.body729 ] ; 2 uses
  %i.ik = getelementptr i8, ptr %i.ij, i64 %index730 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store <16 x i8> zeroinitializer, ptr %i.ik, align 1, !tbaa !29
  store <16 x i8> zeroinitializer, ptr %i.il, align 1, !tbaa !29
  %index.next731 = add nuw i64 %index730, 32      ; 2 uses
  %i.im = icmp eq i64 %index.next731, %n.vec728
  br i1 %i.im, label %.lr.ph.i301.preheader776, label %vector.body729, !llvm.loop !106

.lr.ph.i301.preheader776:                         ; preds = %vector.body729, %.lr.ph.i301.preheader
  %.sroa.29421.9.idx.ph = phi i64 [ %.sroa.29421.8.idx, %.lr.ph.i301.preheader ], [ %i.if, %vector.body729 ]
  %.sroa.15414.4.ph = phi i32 [ %.sroa.15414.0.lcssa, %.lr.ph.i301.preheader ], [ %i.ii, %vector.body729 ]
  br label %.lr.ph.i301

.lr.ph.i301:                                      ; preds = %.lr.ph.i301.preheader776, %bb.ah
  %.sroa.29421.9.idx = phi i64 [ %.sroa.29421.9.add, %bb.ah ], [ %.sroa.29421.9.idx.ph, %.lr.ph.i301.preheader776 ] ; 3 uses
  %.sroa.15414.4 = phi i32 [ %i.in, %bb.ah ], [ %.sroa.15414.4.ph, %.lr.ph.i301.preheader776 ] ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.29421.9.idx, %smax
  br i1 %exitcond.not, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i301
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 160) #10
  call void @abort() #12
  unreachable

bb.ah:                                            ; preds = %.lr.ph.i301
  %.sroa.29421.9.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.29421.9.idx
  %.sroa.29421.9.add = add i64 %.sroa.29421.9.idx, 1
  store i8 0, ptr %.sroa.29421.9.ptr, align 1, !tbaa !29
  %i.in = add nsw i32 %.sroa.15414.4, 8
  %i.io = icmp slt i32 %.sroa.15414.4, 24
  br i1 %i.io, label %.lr.ph.i301, label %flush_put_bits.exit, !llvm.loop !107

flush_put_bits.exit:                              ; preds = %bb.ah, %put_bits32.exit
  %i.ip = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 60
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !148 ; 2 uses
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %.lr.ph511, label %.thread

.lr.ph511:                                        ; preds = %flush_put_bits.exit, %bb.as
  %.6510 = phi i32 [ %.7, %bb.as ], [ %.4.lcssa, %flush_put_bits.exit ] ; 3 uses
  %.1250508 = phi ptr [ %i.lt, %bb.as ], [ %.0248522, %flush_put_bits.exit ] ; 7 uses
  %.1260506 = phi ptr [ %i.ls, %bb.as ], [ %.0258519, %flush_put_bits.exit ] ; 2 uses
  %.1271505 = phi i32 [ %i.lr, %bb.as ], [ 0, %flush_put_bits.exit ]
  %.sroa.15.0504 = phi i32 [ %.sroa.15.1, %bb.as ], [ 0, %flush_put_bits.exit ] ; 6 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.1250508, i64 16 ; 2 uses
  %i.iu = load i8, ptr %i.it, align 8, !tbaa !154 ; 2 uses
  %i.iv = icmp ult i8 %i.iu, 64
  %i.iw = icmp sgt i32 %.013.i298, %.sroa.15.0504
  %or.cond446 = select i1 %i.iv, i1 %i.iw, i1 false
  br i1 %or.cond446, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %.lr.ph511
  %i.ix = getelementptr inbounds nuw i8, ptr %.1250508, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !152
  %i.iz = load ptr, ptr %.1250508, align 8, !tbaa !153
  %i.ja = zext nneg i8 %i.iu to i32
  %i.jb = getelementptr inbounds nuw i8, ptr %.1250508, i64 32 ; 3 uses
  %i.jc = load i8, ptr %i.jb, align 8, !tbaa !155 ; 2 uses
  %i.jd = lshr i32 %.sroa.15.0504, 3
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 1, !tbaa !29
  %i.jh = call i32 @llvm.bswap.i32(i32 %i.jg)
  %i.ji = and i32 %.sroa.15.0504, 7
  %i.jj = shl i32 %i.jh, %i.ji                    ; 2 uses
  %.not.i302 = icmp eq i8 %i.jc, 0
  br i1 %.not.i302, label %.preheader775, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jk = zext i8 %i.jc to i32                    ; 2 uses
  %i.jl = lshr i32 %i.jj, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %.1250508, i64 36
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !156
  %i.jo = or i32 %i.jn, %i.jl
  %i.jp = sub nsw i32 %.sroa.15.0504, %i.jk
  store i8 0, ptr %i.jb, align 8, !tbaa !155
  br label %.preheader775

.preheader775:                                    ; preds = %bb.aj, %bb.ai
  %.154.i306.ph = phi i32 [ %.sroa.15.0504, %bb.ai ], [ %i.jp, %bb.aj ]
  %.1.i307.ph = phi i32 [ %i.jj, %bb.ai ], [ %i.jo, %bb.aj ]
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader775, %bb.ap
  %.057.i305 = phi i32 [ %i.ku, %bb.ap ], [ %i.ja, %.preheader775 ] ; 2 uses
  %.154.i306 = phi i32 [ %i.ki, %bb.ap ], [ %.154.i306.ph, %.preheader775 ] ; 2 uses
  %.1.i307 = phi i32 [ %i.ln, %bb.ap ], [ %.1.i307.ph, %.preheader775 ] ; 3 uses
  %i.jq = lshr i32 %.1.i307, 22                   ; 2 uses
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr @dv_rl_vlc, i64 %i.jr ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 2
  %i.ju = load i8, ptr %i.jt, align 2, !tbaa !29  ; 2 uses
  %i.jv = sext i8 %i.ju to i32                    ; 3 uses
  %i.jw = icmp slt i8 %i.ju, 0
  br i1 %i.jw, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.jx = shl i32 %.1.i307, 10
  %i.jy = add nsw i32 %i.jv, 32
  %i.jz = lshr i32 %i.jx, %i.jy
  %i.ka = load i16, ptr %i.js, align 4, !tbaa !29
  %i.kb = sext i16 %i.ka to i32
  %i.kc = add i32 %i.jz, %i.kb
  %i.kd = sub nsw i32 10, %i.jv
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.056.i308 = phi i32 [ %i.kd, %bb.al ], [ %i.jv, %bb.ak ]
  %.055.i309 = phi i32 [ %i.kc, %bb.al ], [ %i.jq, %bb.ak ]
  %i.ke = sext i32 %.055.i309 to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr @dv_rl_vlc, i64 %i.ke ; 2 uses
  %i.kg = load i16, ptr %i.kf, align 4, !tbaa !29
  %i.kh = sext i16 %i.kg to i32
  %i.ki = add i32 %.056.i308, %.154.i306          ; 5 uses
  %i.kj = icmp ugt i32 %i.ki, %.013.i298
  br i1 %i.kj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.kk = sub i32 %.013.i298, %.154.i306          ; 2 uses
  %i.kl = trunc i32 %i.kk to i8
  store i8 %i.kl, ptr %i.jb, align 8, !tbaa !155
  %i.km = and i32 %i.kk, 255
  %i.kn = lshr i32 -1, %i.km
  %i.ko = xor i32 %i.kn, -1
  %i.kp = and i32 %.1.i307, %i.ko
  %i.kq = getelementptr inbounds nuw i8, ptr %.1250508, i64 36
  store i32 %i.kp, ptr %i.kq, align 4, !tbaa !156
  br label %dv_decode_ac.exit312

bb.ao:                                            ; preds = %bb.am
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kf, i64 3
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !29
  %i.kt = zext i8 %i.ks to i32
  %i.ku = add nuw nsw i32 %.057.i305, %i.kt       ; 4 uses
  %i.kv = icmp samesign ugt i32 %i.ku, 63
  br i1 %i.kv, label %dv_decode_ac.exit312, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kw = zext nneg i32 %i.ku to i64              ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !41
  %i.kz = mul i32 %i.ky, %i.kh
  %i.la = add i32 %i.kz, 8192
  %i.lb = lshr i32 %i.la, 14
  %i.lc = trunc i32 %i.lb to i16
  %i.ld = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.kw
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !29
  %i.lf = zext i8 %i.le to i64
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %.1260506, i64 %i.lf
  store i16 %i.lc, ptr %i.lg, align 2, !tbaa !43
  %i.lh = lshr i32 %i.ki, 3
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.li
  %i.lk = load i32, ptr %i.lj, align 1, !tbaa !29
  %i.ll = call i32 @llvm.bswap.i32(i32 %i.lk)
  %i.lm = and i32 %i.ki, 7
  %i.ln = shl i32 %i.ll, %i.lm
  br label %bb.ak

dv_decode_ac.exit312:                             ; preds = %bb.ao, %bb.an
  %.158.i310 = phi i32 [ %.057.i305, %bb.an ], [ %i.ku, %bb.ao ]
  %.2.i311 = phi i32 [ %.013.i298, %bb.an ], [ %i.ki, %bb.ao ] ; 2 uses
  %i.lo = trunc i32 %.158.i310 to i8              ; 3 uses
  store i8 %i.lo, ptr %i.it, align 8, !tbaa !154
  %i.lp = icmp ult i8 %i.lo, 64
  br i1 %i.lp, label %bit_copy.exit328, label %bb.aq

bb.aq:                                            ; preds = %dv_decode_ac.exit312
  %i.lq = icmp ult i8 %i.lo, 127
  br i1 %i.lq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 1, ptr %i.hi, align 4, !tbaa !41
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph511, %bb.ar, %bb.aq
  %.sroa.15.1 = phi i32 [ %.2.i311, %bb.ar ], [ %.2.i311, %bb.aq ], [ %.sroa.15.0504, %.lr.ph511 ] ; 2 uses
  %.7 = phi i32 [ 1, %bb.ar ], [ %.6510, %bb.aq ], [ %.6510, %.lr.ph511 ] ; 2 uses
  %i.lr = add nuw nsw i32 %.1271505, 1            ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.1260506, i64 128
  %i.lt = getelementptr inbounds nuw i8, ptr %.1250508, i64 48
  %exitcond596.not = icmp eq i32 %i.lr, %i.ir
  br i1 %exitcond596.not, label %.thread, label %.lr.ph511, !llvm.loop !108

.thread:                                          ; preds = %bb.as, %flush_put_bits.exit
  %.sroa.15.0.lcssa = phi i32 [ 0, %flush_put_bits.exit ], [ %.sroa.15.1, %bb.as ] ; 3 uses
  %.6.lcssa = phi i32 [ %.4.lcssa, %flush_put_bits.exit ], [ %.7, %bb.as ] ; 3 uses
  %i.lu = sub nsw i32 %.013.i298, %.sroa.15.0.lcssa ; 3 uses
  %i.lv = icmp sgt i32 %i.lu, 24
  br i1 %i.lv, label %.lr.ph.i321, label %._crit_edge.i315

.lr.ph.i321:                                      ; preds = %.thread, %put_bits.exit.i325
  %.sroa.29.5.idx = phi i64 [ %.sroa.29.6.idx, %put_bits.exit.i325 ], [ %.sroa.29.0.idx515, %.thread ] ; 5 uses
  %.sroa.15.9 = phi i32 [ %i.mh, %put_bits.exit.i325 ], [ %.sroa.15.0.lcssa, %.thread ] ; 3 uses
  %i.lw = phi i32 [ %i.mr, %put_bits.exit.i325 ], [ %.sroa.15391.0516, %.thread ] ; 4 uses
  %i.lx = phi i32 [ %.026.i.i.i327, %put_bits.exit.i325 ], [ %.sroa.0385.0517, %.thread ] ; 2 uses
  %.014.i324 = phi i32 [ %i.ms, %put_bits.exit.i325 ], [ %i.lu, %.thread ] ; 2 uses
  %.sroa.29.5.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.29.5.idx
  %i.ly = lshr i32 %.sroa.15.9, 3
  %i.lz = zext nneg i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 1, !tbaa !29
  %i.mc = call i32 @llvm.bswap.i32(i32 %i.mb)
  %i.md = and i32 %.sroa.15.9, 7
  %i.me = shl i32 %i.mc, %i.md
  %i.mf = lshr i32 %i.me, 7                       ; 4 uses
  %i.mg = add i32 %.sroa.15.9, 25
  %i.mh = call i32 @llvm.umin.i32(i32 %i.hn, i32 %i.mg) ; 2 uses
  %i.mi = icmp sgt i32 %i.lw, 25
  br i1 %i.mi, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i321
  %i.mj = shl i32 %i.lx, 25
  %i.mk = or disjoint i32 %i.mf, %i.mj
  br label %put_bits.exit.i325

bb.au:                                            ; preds = %.lr.ph.i321
  %notsub = add nsw i64 %.sroa.29.5.idx, -401
  %i.ml = icmp ult i64 %notsub, -4
  br i1 %i.ml, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.mm = shl i32 %i.lx, %i.lw
  %i.mn = sub nsw i32 25, %i.lw
  %i.mo = lshr i32 %i.mf, %i.mn
  %i.mp = or i32 %i.mo, %i.mm
  %i.mq = call i32 @llvm.bswap.i32(i32 %i.mp)
  store i32 %i.mq, ptr %.sroa.29.5.ptr, align 1, !tbaa !29
  %.sroa.29.5.add = add nuw nsw i64 %.sroa.29.5.idx, 4
  br label %put_bits.exit.i325

bb.aw:                                            ; preds = %bb.au
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %put_bits.exit.i325

put_bits.exit.i325:                               ; preds = %bb.aw, %bb.av, %bb.at
  %.sroa.29.6.idx = phi i64 [ %.sroa.29.5.idx, %bb.at ], [ %.sroa.29.5.add, %bb.av ], [ %.sroa.29.5.idx, %bb.aw ] ; 2 uses
  %.sink.i326 = phi i32 [ -25, %bb.at ], [ 7, %bb.av ], [ 7, %bb.aw ]
  %.026.i.i.i327 = phi i32 [ %i.mk, %bb.at ], [ %i.mf, %bb.av ], [ %i.mf, %bb.aw ] ; 2 uses
  %i.mr = add nsw i32 %.sink.i326, %i.lw          ; 2 uses
  %i.ms = add nsw i32 %.014.i324, -25             ; 2 uses
  %i.mt = icmp sgt i32 %.014.i324, 49
  br i1 %i.mt, label %.lr.ph.i321, label %._crit_edge.i315, !llvm.loop !104

._crit_edge.i315:                                 ; preds = %put_bits.exit.i325, %.thread
  %.sroa.29.2.idx = phi i64 [ %.sroa.29.0.idx515, %.thread ], [ %.sroa.29.6.idx, %put_bits.exit.i325 ] ; 6 uses
  %.sroa.15391.2 = phi i32 [ %.sroa.15391.0516, %.thread ], [ %i.mr, %put_bits.exit.i325 ] ; 6 uses
  %.sroa.0385.2 = phi i32 [ %.sroa.0385.0517, %.thread ], [ %.026.i.i.i327, %put_bits.exit.i325 ] ; 3 uses
  %.sroa.15.8 = phi i32 [ %.sroa.15.0.lcssa, %.thread ], [ %i.mh, %put_bits.exit.i325 ] ; 2 uses
  %.0.lcssa.i316 = phi i32 [ %i.lu, %.thread ], [ %i.ms, %put_bits.exit.i325 ] ; 7 uses
  %.sroa.29.2.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.29.2.idx
  %i.mu = icmp sgt i32 %.0.lcssa.i316, 0
  br i1 %i.mu, label %bb.ax, label %bit_copy.exit328

bb.ax:                                            ; preds = %._crit_edge.i315
  %i.mv = lshr i32 %.sroa.15.8, 3
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 1, !tbaa !29
  %i.mz = call i32 @llvm.bswap.i32(i32 %i.my)
  %i.na = and i32 %.sroa.15.8, 7
  %i.nb = shl i32 %i.mz, %i.na
  %i.nc = sub nuw nsw i32 32, %.0.lcssa.i316
  %i.nd = lshr i32 %i.nb, %i.nc                   ; 3 uses
  %i.ne = icmp slt i32 %.0.lcssa.i316, %.sroa.15391.2
  br i1 %i.ne, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.nf = shl i32 %.sroa.0385.2, %.0.lcssa.i316
  %i.ng = or disjoint i32 %i.nd, %i.nf
  %i.nh = sub nuw nsw i32 %.sroa.15391.2, %.0.lcssa.i316
  br label %bit_copy.exit328

bb.az:                                            ; preds = %bb.ax
  %notsub453 = add nsw i64 %.sroa.29.2.idx, -401
  %i.ni = icmp ult i64 %notsub453, -4
  br i1 %i.ni, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.nj = shl i32 %.sroa.0385.2, %.sroa.15391.2
  %i.nk = sub nsw i32 %.0.lcssa.i316, %.sroa.15391.2
  %i.nl = lshr i32 %i.nd, %i.nk
  %i.nm = or i32 %i.nl, %i.nj
  %i.nn = call i32 @llvm.bswap.i32(i32 %i.nm)
  store i32 %i.nn, ptr %.sroa.29.2.ptr, align 1, !tbaa !29
  %.sroa.29.2.add = add nuw nsw i64 %.sroa.29.2.idx, 4
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sroa.29.3.idx = phi i64 [ %.sroa.29.2.add, %bb.ba ], [ %.sroa.29.2.idx, %bb.bb ]
  %reass.sub.i317 = add nsw i32 %.sroa.15391.2, 32
  %i.no = sub nsw i32 %reass.sub.i317, %.0.lcssa.i316
  br label %bit_copy.exit328

bit_copy.exit328:                                 ; preds = %dv_decode_ac.exit312, %._crit_edge.i315, %bb.bc, %bb.ay, %._crit_edge
  %.sroa.29.1.idx = phi i64 [ %.sroa.29.0.idx515, %._crit_edge ], [ %.sroa.29.3.idx, %bb.bc ], [ %.sroa.29.2.idx, %._crit_edge.i315 ], [ %.sroa.29.2.idx, %bb.ay ], [ %.sroa.29.0.idx515, %dv_decode_ac.exit312 ] ; 6 uses
  %.sroa.15391.1 = phi i32 [ %.sroa.15391.0516, %._crit_edge ], [ %i.no, %bb.bc ], [ %.sroa.15391.2, %._crit_edge.i315 ], [ %i.nh, %bb.ay ], [ %.sroa.15391.0516, %dv_decode_ac.exit312 ] ; 8 uses
  %.sroa.0385.1 = phi i32 [ %.sroa.0385.0517, %._crit_edge ], [ %i.nd, %bb.bc ], [ %.sroa.0385.2, %._crit_edge.i315 ], [ %i.ng, %bb.ay ], [ %.sroa.0385.0517, %dv_decode_ac.exit312 ] ; 2 uses
  %.8 = phi i32 [ %.4.lcssa, %._crit_edge ], [ %.6.lcssa, %bb.bc ], [ %.6.lcssa, %._crit_edge.i315 ], [ %.6.lcssa, %bb.ay ], [ %.6510, %dv_decode_ac.exit312 ] ; 3 uses
  %indvars.iv.next598 = add nuw nsw i64 %indvars.iv597, 1 ; 2 uses
  %i.np = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 60
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !148 ; 2 uses
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr inbounds [48 x i8], ptr %.0248522, i64 %i.ns
  %i.nu = shl nsw i32 %i.nr, 6
  %i.nv = sext i32 %i.nu to i64
  %i.nw = getelementptr inbounds [2 x i8], ptr %.0258519, i64 %i.nv
  %exitcond600.not = icmp eq i64 %indvars.iv.next598, 5
  br i1 %exitcond600.not, label %bb.bd, label %bb.c, !llvm.loop !109

bb.bd:                                            ; preds = %bit_copy.exit328
  %.tr.i329 = trunc i64 %.sroa.29.1.idx to i32
  %i.nx = shl i32 %.tr.i329, 3
  %reass.sub.i330 = sub i32 %i.nx, %.sroa.15391.1
  %i.ny = add i32 %reass.sub.i330, 32             ; 2 uses
  %or.cond.i331 = icmp ult i32 %i.ny, 2147483135
  %.013.i333 = select i1 %or.cond.i331, i32 %i.ny, i32 0 ; 4 uses
  %notsub564 = add nsw i64 %.sroa.29.1.idx, -401
  %i.nz = icmp ult i64 %notsub564, -4
  br i1 %i.nz, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %.sroa.29.0.ptr.le = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.29.1.idx
  %i.oa = zext i32 %.sroa.0385.1 to i64
  %i.ob = zext nneg i32 %.sroa.15391.1 to i64
  %i.oc = shl i64 %i.oa, %i.ob
  %i.od = trunc i64 %i.oc to i32
  %i.oe = call i32 @llvm.bswap.i32(i32 %i.od)
  store i32 %i.oe, ptr %.sroa.29.0.ptr.le, align 1, !tbaa !29
  %.sroa.29.0.add = add nuw nsw i64 %.sroa.29.1.idx, 4
  br label %put_bits32.exit335

bb.bf:                                            ; preds = %bb.bd
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %put_bits32.exit335

put_bits32.exit335:                               ; preds = %bb.be, %bb.bf
  %.sroa.29.8.idx = phi i64 [ %.sroa.29.0.add, %bb.be ], [ %.sroa.29.1.idx, %bb.bf ] ; 5 uses
  %i.of = icmp slt i32 %.sroa.15391.1, 32
  br i1 %i.of, label %.lr.ph.i337.preheader, label %flush_put_bits.exit338

.lr.ph.i337.preheader:                            ; preds = %put_bits32.exit335
  %smax601 = call i64 @llvm.smax.i64(i64 %.sroa.29.8.idx, i64 400) ; 2 uses
  %i.og = call i32 @llvm.smax.i32(i32 %.sroa.15391.1, i32 24)
  %i.oh = add nuw i32 %i.og, 7
  %i.oi = sub i32 %i.oh, %.sroa.15391.1
  %.fr771 = freeze i32 %i.oi
  %i.oj = lshr i32 %.fr771, 3
  %i.ok = zext nneg i32 %i.oj to i64
  %i.ol = sub i64 %smax601, %.sroa.29.8.idx
  %i.om = call i64 @llvm.umin.i64(i64 %i.ok, i64 %i.ol) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.om, 32
  br i1 %min.iters.check, label %.lr.ph.i337.preheader777, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i337.preheader
  %i.on = add nuw nsw i64 %i.om, 1                ; 2 uses
  %i.oo = and i64 %i.on, 31                       ; 2 uses
  %i.op = icmp eq i64 %i.oo, 0
  %i.oq = select i1 %i.op, i64 32, i64 %i.oo
end_hunk_0
begin_hunk_1_@dv_decode_video_segment:bb.a
  %i.aaz = getelementptr inbounds i8, ptr %i.xi, i64 %i.zd ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.aba = load <8 x i16>, ptr %i.vl, align 2, !tbaa !43, !noalias !166
  %i.abb = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aba, <8 x i16> zeroinitializer)
  %i.abc = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.abb, <8 x i16> splat (i16 255))
  %i.abd = trunc nuw <8 x i16> %i.abc to <8 x i8>
  store <8 x i8> %i.abd, ptr %i.aaz, align 1, !tbaa !29, !alias.scope !166
  %i.abe = getelementptr inbounds nuw i8, ptr %.4263558, i64 400
  %i.abf = getelementptr inbounds i8, ptr %i.aaz, i64 %i.vn ; 2 uses
  %i.abg = load <8 x i16>, ptr %i.abe, align 2, !tbaa !43, !noalias !166
  %i.abh = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.abg, <8 x i16> zeroinitializer)
  %i.abi = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.abh, <8 x i16> splat (i16 255))
  %i.abj = trunc nuw <8 x i16> %i.abi to <8 x i8>
  store <8 x i8> %i.abj, ptr %i.abf, align 1, !tbaa !29, !alias.scope !166
  %i.abk = getelementptr inbounds nuw i8, ptr %.4263558, i64 416
  %i.abl = getelementptr inbounds i8, ptr %i.abf, i64 %i.vn ; 2 uses
  %i.abm = load <8 x i16>, ptr %i.abk, align 2, !tbaa !43, !noalias !166
  %i.abn = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.abm, <8 x i16> zeroinitializer)
  %i.abo = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.abn, <8 x i16> splat (i16 255))
  %i.abp = trunc nuw <8 x i16> %i.abo to <8 x i8>
  store <8 x i8> %i.abp, ptr %i.abl, align 1, !tbaa !29, !alias.scope !166
  %i.abq = getelementptr inbounds nuw i8, ptr %.4263558, i64 432
  %i.abr = getelementptr inbounds i8, ptr %i.abl, i64 %i.vn
  %i.abs = load <8 x i16>, ptr %i.abq, align 2, !tbaa !43, !noalias !166
  %i.abt = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.abs, <8 x i16> zeroinitializer)
  %i.abu = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.abt, <8 x i16> splat (i16 255))
  %i.abv = trunc nuw <8 x i16> %i.abu to <8 x i8>
  store <8 x i8> %i.abv, ptr %i.abr, align 1, !tbaa !29, !alias.scope !166
  %i.abw = getelementptr inbounds nuw i8, ptr %.4263558, i64 448
  %i.abx = getelementptr inbounds i8, ptr %i.yg, i64 %i.zd ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.aby = load <8 x i16>, ptr %i.abw, align 2, !tbaa !43, !noalias !167
  %i.abz = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aby, <8 x i16> zeroinitializer)
  %i.aca = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.abz, <8 x i16> splat (i16 255))
  %i.acb = trunc nuw <8 x i16> %i.aca to <8 x i8>
  store <8 x i8> %i.acb, ptr %i.abx, align 1, !tbaa !29, !alias.scope !167
  %i.acc = getelementptr inbounds nuw i8, ptr %.4263558, i64 464
  %i.acd = getelementptr inbounds i8, ptr %i.abx, i64 %i.vn ; 2 uses
  %i.ace = load <8 x i16>, ptr %i.acc, align 2, !tbaa !43, !noalias !167
  %i.acf = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ace, <8 x i16> zeroinitializer)
  %i.acg = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.acf, <8 x i16> splat (i16 255))
  %i.ach = trunc nuw <8 x i16> %i.acg to <8 x i8>
  store <8 x i8> %i.ach, ptr %i.acd, align 1, !tbaa !29, !alias.scope !167
  %i.aci = getelementptr inbounds nuw i8, ptr %.4263558, i64 480
  %i.acj = getelementptr inbounds i8, ptr %i.acd, i64 %i.vn ; 2 uses
  %i.ack = load <8 x i16>, ptr %i.aci, align 2, !tbaa !43, !noalias !167
  %i.acl = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ack, <8 x i16> zeroinitializer)
  %i.acm = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.acl, <8 x i16> splat (i16 255))
  %i.acn = trunc nuw <8 x i16> %i.acm to <8 x i8>
  store <8 x i8> %i.acn, ptr %i.acj, align 1, !tbaa !29, !alias.scope !167
  %i.aco = getelementptr inbounds nuw i8, ptr %.4263558, i64 496
  %i.acp = getelementptr inbounds i8, ptr %i.acj, i64 %i.vn
  %i.acq = load <8 x i16>, ptr %i.aco, align 2, !tbaa !43, !noalias !167
  %i.acr = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.acq, <8 x i16> zeroinitializer)
  %i.acs = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.acr, <8 x i16> splat (i16 255))
  %i.act = trunc nuw <8 x i16> %i.acs to <8 x i8>
  store <8 x i8> %i.act, ptr %i.acp, align 1, !tbaa !29, !alias.scope !167
  br label %bb.cg

._crit_edge623:                                   ; preds = %bb.cb, %bb.cc
  %i.acu = phi i32 [ 0, %bb.cc ], [ %i.ve, %bb.cb ]
  %i.acv = shl i32 %i.uu, %i.acu
  %i.acw = getelementptr inbounds nuw i8, ptr %.4253560, i64 24
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !151
  %i.acy = sext i32 %i.acv to i64                 ; 5 uses
  call void %i.acx(ptr noundef %i.vb, i64 noundef %i.acy, ptr noundef %.4263558) #10
  %i.acz = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 4
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !39
  %i.adc = icmp eq i32 %i.adb, 4
  %i.add = getelementptr inbounds i8, ptr %i.vb, i64 %i.tb ; 3 uses
  br i1 %i.adc, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %._crit_edge623
  %i.ade = getelementptr inbounds nuw i8, ptr %.4253560, i64 120
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !151
  %i.adg = getelementptr inbounds nuw i8, ptr %.4263558, i64 256
  call void %i.adf(ptr noundef nonnull %i.add, i64 noundef %i.acy, ptr noundef nonnull %i.adg) #10
  br label %bb.cg

bb.cf:                                            ; preds = %._crit_edge623
  %i.adh = getelementptr inbounds nuw i8, ptr %.4253560, i64 72
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !151
  %i.adj = getelementptr inbounds nuw i8, ptr %.4263558, i64 128
  call void %i.adi(ptr noundef nonnull %i.add, i64 noundef %i.acy, ptr noundef nonnull %i.adj) #10
  %i.adk = getelementptr inbounds nuw i8, ptr %.4253560, i64 120
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !151
  %i.adm = sext i32 %.0266 to i64                 ; 2 uses
  %i.adn = getelementptr inbounds i8, ptr %i.vb, i64 %i.adm
  %i.ado = getelementptr inbounds nuw i8, ptr %.4263558, i64 256
  call void %i.adl(ptr noundef %i.adn, i64 noundef %i.acy, ptr noundef nonnull %i.ado) #10
  %i.adp = getelementptr inbounds nuw i8, ptr %.4253560, i64 168
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !151
  %i.adr = getelementptr inbounds i8, ptr %i.add, i64 %i.adm
  %i.ads = getelementptr inbounds nuw i8, ptr %.4263558, i64 384
  call void %i.adq(ptr noundef nonnull %i.adr, i64 noundef %i.acy, ptr noundef nonnull %i.ads) #10
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf, %bb.cd
  %i.adt = getelementptr inbounds nuw i8, ptr %.4253560, i64 192
  %i.adu = getelementptr inbounds nuw i8, ptr %.4263558, i64 512
  %i.adv = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 56
  %i.adx = load i32, ptr %i.adw, align 8, !tbaa !47 ; 2 uses
  %i.ady = icmp eq i32 %i.adx, 0
  %i.adz = zext i1 %i.ady to i32
  %i.aea = ashr i32 %.0441, %i.adz
  %i.aeb = load ptr, ptr %i.sx, align 8, !tbaa !46
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 68
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !41
  %i.aee = mul nsw i32 %i.aea, %i.aed
  %i.aef = icmp eq i32 %i.adx, 7
  %i.aeg = select i1 %i.aef, i32 2, i32 1
  %i.aeh = lshr i32 %i.tu, %i.aeg
  %i.aei = add nsw i32 %i.aee, %i.aeh
  %i.aej = shl i32 %i.aei, %i.l
  %i.aek = sext i32 %i.aej to i64
  %i.ael = icmp samesign ugt i16 %i.tt, 87
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv614 ; 2 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.co
  %.not280 = phi i1 [ false, %bb.cg ], [ true, %bb.co ]
  %indvars.iv611 = phi i64 [ 2, %bb.cg ], [ 1, %bb.co ] ; 5 uses
  %.5254556 = phi ptr [ %i.adt, %bb.cg ], [ %.6255, %bb.co ] ; 7 uses
  %.5264555 = phi ptr [ %i.adu, %bb.cg ], [ %.6265, %bb.co ] ; 23 uses
  %i.aen = load ptr, ptr %i.sx, align 8, !tbaa !46 ; 3 uses
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %i.aen, i64 %indvars.iv611
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !158
  %i.aeq = getelementptr inbounds i8, ptr %i.aep, i64 %i.aek ; 7 uses
  %i.aer = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 56
  %i.aet = load i32, ptr %i.aes, align 8, !tbaa !47
  %i.aeu = icmp eq i32 %i.aet, 7
  %or.cond9 = select i1 %i.aeu, i1 %i.ael, i1 false
  br i1 %or.cond9, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.aev = getelementptr inbounds nuw i8, ptr %.5254556, i64 24
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !151
  call void %i.aew(ptr noundef nonnull %i.f, i64 noundef 8, ptr noundef nonnull %.5264555) #10
  br i1 %brmerge, label %._crit_edge553.split, label %.lr.ph546.preheader

.lr.ph546.preheader:                              ; preds = %bb.ci
  %.pre630 = load ptr, ptr %i.sx, align 8, !tbaa !46
  %.phi.trans.insert631 = getelementptr inbounds nuw i8, ptr %.pre630, i64 64
  %.phi.trans.insert632 = getelementptr inbounds nuw [4 x i8], ptr %.phi.trans.insert631, i64 %indvars.iv611
  %.pre633 = load i32, ptr %.phi.trans.insert632, align 4, !tbaa !41
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph546.preheader, %._crit_edge547
  %indvar = phi i64 [ 0, %.lr.ph546.preheader ], [ %indvar.next, %._crit_edge547 ] ; 3 uses
  %i.aex = phi i32 [ %.pre633, %.lr.ph546.preheader ], [ %i.aht, %._crit_edge547 ]
  %.0550 = phi i32 [ 0, %.lr.ph546.preheader ], [ %i.ahp, %._crit_edge547 ]
  %.0241549 = phi ptr [ %i.f, %.lr.ph546.preheader ], [ %i.ahw, %._crit_edge547 ] ; 13 uses
  %.0242548 = phi ptr [ %i.aeq, %.lr.ph546.preheader ], [ %i.ahv, %._crit_edge547 ] ; 14 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %.0241549, i64 %i.td ; 11 uses
  %i.aez = shl i32 %i.aex, %i.l
  %i.afa = sext i32 %i.aez to i64                 ; 4 uses
  %i.afb = getelementptr inbounds i8, ptr %.0242548, i64 %i.afa ; 11 uses
  br i1 %min.iters.check745, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.0242548743 = ptrtoaddr ptr %.0242548 to i64   ; 3 uses
  %i.afc = add nsw i64 %i.afa, -1
  %diff.check = icmp ult i64 %i.afc, 31
  %i.afd = shl nuw nsw i64 %indvar, 3
  %i.afe = add nuw i64 %i.ti, %i.afd
  %i.aff = sub i64 %.0242548743, %i.afe
  %diff.check746 = icmp ugt i64 %i.aff, -32
  %conflict.rdx = or i1 %diff.check, %diff.check746
  %i.afg = mul nsw i64 %indvar, -8                ; 2 uses
  %i.afh = sub i64 %i.afg, %i.g
  %i.afi = add i64 %i.afh, %.0242548743           ; 2 uses
  %i.afj = add i64 %i.afi, -1
  %diff.check747 = icmp ult i64 %i.afj, 31
  %conflict.rdx748 = or i1 %conflict.rdx, %diff.check747
  %i.afk = sub i64 %i.afg, %i.ti
  %i.afl = add i64 %i.afk, %.0242548743
  %i.afm = add i64 %i.afl, %i.afa
  %i.afn = add i64 %i.afm, -1
  %diff.check749 = icmp ult i64 %i.afn, 31
  %conflict.rdx750 = or i1 %conflict.rdx748, %diff.check749
  %i.afo = add i64 %i.afi, %i.afa
  %i.afp = add i64 %i.afo, -1
  %diff.check751 = icmp ult i64 %i.afp, 31
  %conflict.rdx752 = or i1 %conflict.rdx750, %diff.check751
  br i1 %conflict.rdx752, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck
  br i1 %i.tp, label %vec.epilog.scalar.ph.epil.preheader, label %vec.epilog.scalar.ph

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check753, label %vec.epilog.vector.body, label %vector.body756

vector.body756:                                   ; preds = %vector.main.loop.iter.check, %vector.body756
  %index757 = phi i64 [ %index.next761, %vector.body756 ], [ 0, %vector.main.loop.iter.check ] ; 5 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %.0241549, i64 %index757 ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 16
  %wide.load = load <16 x i8>, ptr %i.afq, align 1, !tbaa !29
  %wide.load758 = load <16 x i8>, ptr %i.afr, align 1, !tbaa !29
  %i.afs = getelementptr inbounds nuw i8, ptr %.0242548, i64 %index757 ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 16
  store <16 x i8> %wide.load, ptr %i.afs, align 1, !tbaa !29
  store <16 x i8> %wide.load758, ptr %i.aft, align 1, !tbaa !29
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aey, i64 %index757 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 16
  %wide.load759 = load <16 x i8>, ptr %i.afu, align 1, !tbaa !29
  %wide.load760 = load <16 x i8>, ptr %i.afv, align 1, !tbaa !29
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afb, i64 %index757 ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 16
  store <16 x i8> %wide.load759, ptr %i.afw, align 1, !tbaa !29
  store <16 x i8> %wide.load760, ptr %i.afx, align 1, !tbaa !29
  %index.next761 = add nuw i64 %index757, 32      ; 2 uses
  %i.afy = icmp eq i64 %index.next761, %n.vec755
  br i1 %i.afy, label %._crit_edge547, label %vector.body756, !llvm.loop !131

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check
  %wide.load765 = load <4 x i8>, ptr %.0241549, align 1, !tbaa !29
  store <4 x i8> %wide.load765, ptr %.0242548, align 1, !tbaa !29
  %wide.load766 = load <4 x i8>, ptr %i.aey, align 1, !tbaa !29
  store <4 x i8> %wide.load766, ptr %i.afb, align 1, !tbaa !29
  br i1 %i.tj, label %._crit_edge547, label %vec.epilog.vector.body.1

vec.epilog.vector.body.1:                         ; preds = %vec.epilog.vector.body
  %i.afz = getelementptr inbounds nuw i8, ptr %.0241549, i64 4
  %wide.load765.1 = load <4 x i8>, ptr %i.afz, align 1, !tbaa !29
  %i.aga = getelementptr inbounds nuw i8, ptr %.0242548, i64 4
  store <4 x i8> %wide.load765.1, ptr %i.aga, align 1, !tbaa !29
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aey, i64 4
  %wide.load766.1 = load <4 x i8>, ptr %i.agb, align 1, !tbaa !29
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afb, i64 4
  store <4 x i8> %wide.load766.1, ptr %i.agc, align 1, !tbaa !29
  br i1 %i.tk, label %._crit_edge547, label %vec.epilog.vector.body.2

vec.epilog.vector.body.2:                         ; preds = %vec.epilog.vector.body.1
  %i.agd = getelementptr inbounds nuw i8, ptr %.0241549, i64 8
  %wide.load765.2 = load <4 x i8>, ptr %i.agd, align 1, !tbaa !29
  %i.age = getelementptr inbounds nuw i8, ptr %.0242548, i64 8
  store <4 x i8> %wide.load765.2, ptr %i.age, align 1, !tbaa !29
  %i.agf = getelementptr inbounds nuw i8, ptr %i.aey, i64 8
  %wide.load766.2 = load <4 x i8>, ptr %i.agf, align 1, !tbaa !29
  %i.agg = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  store <4 x i8> %wide.load766.2, ptr %i.agg, align 1, !tbaa !29
  br i1 %i.tl, label %._crit_edge547, label %vec.epilog.vector.body.3

vec.epilog.vector.body.3:                         ; preds = %vec.epilog.vector.body.2
  %i.agh = getelementptr inbounds nuw i8, ptr %.0241549, i64 12
  %wide.load765.3 = load <4 x i8>, ptr %i.agh, align 1, !tbaa !29
  %i.agi = getelementptr inbounds nuw i8, ptr %.0242548, i64 12
  store <4 x i8> %wide.load765.3, ptr %i.agi, align 1, !tbaa !29
  %i.agj = getelementptr inbounds nuw i8, ptr %i.aey, i64 12
  %wide.load766.3 = load <4 x i8>, ptr %i.agj, align 1, !tbaa !29
  %i.agk = getelementptr inbounds nuw i8, ptr %i.afb, i64 12
  store <4 x i8> %wide.load766.3, ptr %i.agk, align 1, !tbaa !29
  br i1 %i.tm, label %._crit_edge547, label %vec.epilog.vector.body.4

vec.epilog.vector.body.4:                         ; preds = %vec.epilog.vector.body.3
  %i.agl = getelementptr inbounds nuw i8, ptr %.0241549, i64 16
  %wide.load765.4 = load <4 x i8>, ptr %i.agl, align 1, !tbaa !29
  %i.agm = getelementptr inbounds nuw i8, ptr %.0242548, i64 16
  store <4 x i8> %wide.load765.4, ptr %i.agm, align 1, !tbaa !29
  %i.agn = getelementptr inbounds nuw i8, ptr %i.aey, i64 16
  %wide.load766.4 = load <4 x i8>, ptr %i.agn, align 1, !tbaa !29
  %i.ago = getelementptr inbounds nuw i8, ptr %i.afb, i64 16
  store <4 x i8> %wide.load766.4, ptr %i.ago, align 1, !tbaa !29
  br i1 %i.tn, label %._crit_edge547, label %vec.epilog.vector.body.5

vec.epilog.vector.body.5:                         ; preds = %vec.epilog.vector.body.4
  %i.agp = getelementptr inbounds nuw i8, ptr %.0241549, i64 20
  %wide.load765.5 = load <4 x i8>, ptr %i.agp, align 1, !tbaa !29
  %i.agq = getelementptr inbounds nuw i8, ptr %.0242548, i64 20
  store <4 x i8> %wide.load765.5, ptr %i.agq, align 1, !tbaa !29
  %i.agr = getelementptr inbounds nuw i8, ptr %i.aey, i64 20
  %wide.load766.5 = load <4 x i8>, ptr %i.agr, align 1, !tbaa !29
  %i.ags = getelementptr inbounds nuw i8, ptr %i.afb, i64 20
  store <4 x i8> %wide.load766.5, ptr %i.ags, align 1, !tbaa !29
  br i1 %i.to, label %._crit_edge547, label %vec.epilog.vector.body.6

vec.epilog.vector.body.6:                         ; preds = %vec.epilog.vector.body.5
  %i.agt = getelementptr inbounds nuw i8, ptr %.0241549, i64 24
  %wide.load765.6 = load <4 x i8>, ptr %i.agt, align 1, !tbaa !29
  %i.agu = getelementptr inbounds nuw i8, ptr %.0242548, i64 24
  store <4 x i8> %wide.load765.6, ptr %i.agu, align 1, !tbaa !29
  %i.agv = getelementptr inbounds nuw i8, ptr %i.aey, i64 24
  %wide.load766.6 = load <4 x i8>, ptr %i.agv, align 1, !tbaa !29
  %i.agw = getelementptr inbounds nuw i8, ptr %i.afb, i64 24
  store <4 x i8> %wide.load766.6, ptr %i.agw, align 1, !tbaa !29
  br label %._crit_edge547

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv604 = phi i64 [ %indvars.iv.next605.1, %vec.epilog.scalar.ph ], [ 0, %vec.epilog.scalar.ph.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.1, %vec.epilog.scalar.ph ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.agx = getelementptr inbounds nuw i8, ptr %.0241549, i64 %indvars.iv604
  %i.agy = load i8, ptr %i.agx, align 1, !tbaa !29
  %i.agz = getelementptr inbounds nuw i8, ptr %.0242548, i64 %indvars.iv604
  store i8 %i.agy, ptr %i.agz, align 1, !tbaa !29
  %i.aha = getelementptr inbounds nuw i8, ptr %i.aey, i64 %indvars.iv604
  %i.ahb = load i8, ptr %i.aha, align 1, !tbaa !29
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.afb, i64 %indvars.iv604
  store i8 %i.ahb, ptr %i.ahc, align 1, !tbaa !29
  %indvars.iv.next605 = or disjoint i64 %indvars.iv604, 1 ; 4 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0241549, i64 %indvars.iv.next605
  %i.ahe = load i8, ptr %i.ahd, align 1, !tbaa !29
  %i.ahf = getelementptr inbounds nuw i8, ptr %.0242548, i64 %indvars.iv.next605
  store i8 %i.ahe, ptr %i.ahf, align 1, !tbaa !29
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.aey, i64 %indvars.iv.next605
  %i.ahh = load i8, ptr %i.ahg, align 1, !tbaa !29
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.afb, i64 %indvars.iv.next605
  store i8 %i.ahh, ptr %i.ahi, align 1, !tbaa !29
  %indvars.iv.next605.1 = add nuw nsw i64 %indvars.iv604, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge547.loopexit.unr-lcssa, label %vec.epilog.scalar.ph, !llvm.loop !132

._crit_edge547.loopexit.unr-lcssa:                ; preds = %vec.epilog.scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge547, label %vec.epilog.scalar.ph.epil.preheader

vec.epilog.scalar.ph.epil.preheader:              ; preds = %._crit_edge547.loopexit.unr-lcssa, %vec.epilog.scalar.ph.preheader
  %indvars.iv604.epil.init = phi i64 [ 0, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next605.1, %._crit_edge547.loopexit.unr-lcssa ] ; 4 uses
  call void @llvm.assume(i1 %lcmp.mod808)
  %i.ahj = getelementptr inbounds nuw i8, ptr %.0241549, i64 %indvars.iv604.epil.init
  %i.ahk = load i8, ptr %i.ahj, align 1, !tbaa !29
  %i.ahl = getelementptr inbounds nuw i8, ptr %.0242548, i64 %indvars.iv604.epil.init
  store i8 %i.ahk, ptr %i.ahl, align 1, !tbaa !29
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.aey, i64 %indvars.iv604.epil.init
  %i.ahn = load i8, ptr %i.ahm, align 1, !tbaa !29
  %i.aho = getelementptr inbounds nuw i8, ptr %i.afb, i64 %indvars.iv604.epil.init
  store i8 %i.ahn, ptr %i.aho, align 1, !tbaa !29
  br label %._crit_edge547

._crit_edge547:                                   ; preds = %vector.body756, %vec.epilog.vector.body, %vec.epilog.vector.body.1, %vec.epilog.vector.body.2, %vec.epilog.vector.body.3, %vec.epilog.vector.body.4, %vec.epilog.vector.body.5, %vec.epilog.vector.body.6, %vec.epilog.scalar.ph.epil.preheader, %._crit_edge547.loopexit.unr-lcssa
  %i.ahp = add nuw nsw i32 %.0550, 1              ; 2 uses
  %i.ahq = load ptr, ptr %i.sx, align 8, !tbaa !46
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 64
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %indvars.iv611
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !41 ; 2 uses
  %i.ahu = sext i32 %i.aht to i64
  %i.ahv = getelementptr inbounds i8, ptr %.0242548, i64 %i.ahu
  %i.ahw = getelementptr inbounds nuw i8, ptr %.0241549, i64 8
  %exitcond610.not = icmp eq i32 %i.ahp, %smax609
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond610.not, label %._crit_edge553.split, label %iter.check, !llvm.loop !133

._crit_edge553.split:                             ; preds = %._crit_edge547, %bb.ci
  %i.ahx = getelementptr inbounds nuw i8, ptr %.5264555, i64 128
  %i.ahy = getelementptr inbounds nuw i8, ptr %.5254556, i64 48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  br label %bb.co

bb.cj:                                            ; preds = %bb.ch
  br i1 %i.vc, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.aen, i64 64
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %indvars.iv611
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !41 ; 2 uses
  %i.aic = load i32, ptr %i.aem, align 4, !tbaa !41 ; 2 uses
  %.not281 = icmp eq i32 %i.aic, 0
  %i.aid = select i1 %.not281, i32 %i.l, i32 0
  %i.aie = shl i32 %i.aib, %i.aid
  br label %._crit_edge626

bb.cl:                                            ; preds = %bb.cj
  %i.aif = load i32, ptr %i.aem, align 4, !tbaa !41
  %.not282 = icmp eq i32 %i.aif, 0
  %.phi.trans.insert627 = getelementptr inbounds nuw i8, ptr %i.aen, i64 64
  %.phi.trans.insert628 = getelementptr inbounds nuw [4 x i8], ptr %.phi.trans.insert627, i64 %indvars.iv611
  %.pre629 = load i32, ptr %.phi.trans.insert628, align 4, !tbaa !41 ; 3 uses
  br i1 %.not282, label %._crit_edge626, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.aig = load ptr, ptr %i.sz, align 8, !tbaa !159
  call void %i.aig(ptr noundef nonnull %.5264555) #10, !inline_history !134
  %i.aih = load ptr, ptr %i.sz, align 8, !tbaa !159
  %i.aii = getelementptr inbounds nuw i8, ptr %.5264555, i64 128 ; 2 uses
  call void %i.aih(ptr noundef nonnull %i.aii) #10, !inline_history !134
  %i.aij = shl i32 %.pre629, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.aik = sext i32 %i.aij to i64                 ; 12 uses
  %i.ail = load <8 x i16>, ptr %.5264555, align 2, !tbaa !43, !noalias !168
  %i.aim = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ail, <8 x i16> zeroinitializer)
  %i.ain = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.aim, <8 x i16> splat (i16 255))
  %i.aio = trunc nuw <8 x i16> %i.ain to <8 x i8>
  store <8 x i8> %i.aio, ptr %i.aeq, align 1, !tbaa !29, !alias.scope !168
  %i.aip = getelementptr inbounds nuw i8, ptr %.5264555, i64 16
  %i.aiq = getelementptr inbounds i8, ptr %i.aeq, i64 %i.aik ; 2 uses
  %i.air = load <8 x i16>, ptr %i.aip, align 2, !tbaa !43, !noalias !168
  %i.ais = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.air, <8 x i16> zeroinitializer)
  %i.ait = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.ais, <8 x i16> splat (i16 255))
  %i.aiu = trunc nuw <8 x i16> %i.ait to <8 x i8>
  store <8 x i8> %i.aiu, ptr %i.aiq, align 1, !tbaa !29, !alias.scope !168
  %i.aiv = getelementptr inbounds nuw i8, ptr %.5264555, i64 32
  %i.aiw = getelementptr inbounds i8, ptr %i.aiq, i64 %i.aik ; 2 uses
  %i.aix = load <8 x i16>, ptr %i.aiv, align 2, !tbaa !43, !noalias !168
  %i.aiy = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aix, <8 x i16> zeroinitializer)
  %i.aiz = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.aiy, <8 x i16> splat (i16 255))
  %i.aja = trunc nuw <8 x i16> %i.aiz to <8 x i8>
  store <8 x i8> %i.aja, ptr %i.aiw, align 1, !tbaa !29, !alias.scope !168
  %i.ajb = getelementptr inbounds nuw i8, ptr %.5264555, i64 48
  %i.ajc = getelementptr inbounds i8, ptr %i.aiw, i64 %i.aik
  %i.ajd = load <8 x i16>, ptr %i.ajb, align 2, !tbaa !43, !noalias !168
  %i.aje = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ajd, <8 x i16> zeroinitializer)
  %i.ajf = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.aje, <8 x i16> splat (i16 255))
  %i.ajg = trunc nuw <8 x i16> %i.ajf to <8 x i8>
  store <8 x i8> %i.ajg, ptr %i.ajc, align 1, !tbaa !29, !alias.scope !168
  %i.ajh = getelementptr inbounds nuw i8, ptr %.5264555, i64 64
  %i.aji = getelementptr inbounds nuw i8, ptr %i.aeq, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.ajj = load <8 x i16>, ptr %i.ajh, align 2, !tbaa !43, !noalias !169
  %i.ajk = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ajj, <8 x i16> zeroinitializer)
  %i.ajl = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.ajk, <8 x i16> splat (i16 255))
  %i.ajm = trunc nuw <8 x i16> %i.ajl to <8 x i8>
  store <8 x i8> %i.ajm, ptr %i.aji, align 1, !tbaa !29, !alias.scope !169
  %i.ajn = getelementptr inbounds nuw i8, ptr %.5264555, i64 80
  %i.ajo = getelementptr inbounds i8, ptr %i.aji, i64 %i.aik ; 2 uses
  %i.ajp = load <8 x i16>, ptr %i.ajn, align 2, !tbaa !43, !noalias !169
  %i.ajq = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ajp, <8 x i16> zeroinitializer)
  %i.ajr = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.ajq, <8 x i16> splat (i16 255))
  %i.ajs = trunc nuw <8 x i16> %i.ajr to <8 x i8>
  store <8 x i8> %i.ajs, ptr %i.ajo, align 1, !tbaa !29, !alias.scope !169
  %i.ajt = getelementptr inbounds nuw i8, ptr %.5264555, i64 96
  %i.aju = getelementptr inbounds i8, ptr %i.ajo, i64 %i.aik ; 2 uses
  %i.ajv = load <8 x i16>, ptr %i.ajt, align 2, !tbaa !43, !noalias !169
  %i.ajw = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ajv, <8 x i16> zeroinitializer)
  %i.ajx = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.ajw, <8 x i16> splat (i16 255))
  %i.ajy = trunc nuw <8 x i16> %i.ajx to <8 x i8>
  store <8 x i8> %i.ajy, ptr %i.aju, align 1, !tbaa !29, !alias.scope !169
  %i.ajz = getelementptr inbounds nuw i8, ptr %.5264555, i64 112
  %i.aka = getelementptr inbounds i8, ptr %i.aju, i64 %i.aik
  %i.akb = load <8 x i16>, ptr %i.ajz, align 2, !tbaa !43, !noalias !169
  %i.akc = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.akb, <8 x i16> zeroinitializer)
  %i.akd = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.akc, <8 x i16> splat (i16 255))
  %i.ake = trunc nuw <8 x i16> %i.akd to <8 x i8>
  store <8 x i8> %i.ake, ptr %i.aka, align 1, !tbaa !29, !alias.scope !169
  %i.akf = sext i32 %.pre629 to i64               ; 2 uses
  %i.akg = getelementptr inbounds i8, ptr %i.aeq, i64 %i.akf ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.akh = load <8 x i16>, ptr %i.aii, align 2, !tbaa !43, !noalias !170
  %i.aki = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.akh, <8 x i16> zeroinitializer)
  %i.akj = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.aki, <8 x i16> splat (i16 255))
  %i.akk = trunc nuw <8 x i16> %i.akj to <8 x i8>
  store <8 x i8> %i.akk, ptr %i.akg, align 1, !tbaa !29, !alias.scope !170
  %i.akl = getelementptr inbounds nuw i8, ptr %.5264555, i64 144
  %i.akm = getelementptr inbounds i8, ptr %i.akg, i64 %i.aik ; 2 uses
  %i.akn = load <8 x i16>, ptr %i.akl, align 2, !tbaa !43, !noalias !170
  %i.ako = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.akn, <8 x i16> zeroinitializer)
  %i.akp = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.ako, <8 x i16> splat (i16 255))
  %i.akq = trunc nuw <8 x i16> %i.akp to <8 x i8>
  store <8 x i8> %i.akq, ptr %i.akm, align 1, !tbaa !29, !alias.scope !170
  %i.akr = getelementptr inbounds nuw i8, ptr %.5264555, i64 160
  %i.aks = getelementptr inbounds i8, ptr %i.akm, i64 %i.aik ; 2 uses
  %i.akt = load <8 x i16>, ptr %i.akr, align 2, !tbaa !43, !noalias !170
  %i.aku = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.akt, <8 x i16> zeroinitializer)
  %i.akv = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.aku, <8 x i16> splat (i16 255))
  %i.akw = trunc nuw <8 x i16> %i.akv to <8 x i8>
  store <8 x i8> %i.akw, ptr %i.aks, align 1, !tbaa !29, !alias.scope !170
  %i.akx = getelementptr inbounds nuw i8, ptr %.5264555, i64 176
  %i.aky = getelementptr inbounds i8, ptr %i.aks, i64 %i.aik
  %i.akz = load <8 x i16>, ptr %i.akx, align 2, !tbaa !43, !noalias !170
  %i.ala = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.akz, <8 x i16> zeroinitializer)
  %i.alb = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.ala, <8 x i16> splat (i16 255))
  %i.alc = trunc nuw <8 x i16> %i.alb to <8 x i8>
  store <8 x i8> %i.alc, ptr %i.aky, align 1, !tbaa !29, !alias.scope !170
  %i.ald = getelementptr inbounds nuw i8, ptr %.5264555, i64 192
  %i.ale = getelementptr inbounds i8, ptr %i.aji, i64 %i.akf ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.alf = load <8 x i16>, ptr %i.ald, align 2, !tbaa !43, !noalias !171
  %i.alg = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.alf, <8 x i16> zeroinitializer)
  %i.alh = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.alg, <8 x i16> splat (i16 255))
  %i.ali = trunc nuw <8 x i16> %i.alh to <8 x i8>
  store <8 x i8> %i.ali, ptr %i.ale, align 1, !tbaa !29, !alias.scope !171
  %i.alj = getelementptr inbounds nuw i8, ptr %.5264555, i64 208
  %i.alk = getelementptr inbounds i8, ptr %i.ale, i64 %i.aik ; 2 uses
  %i.all = load <8 x i16>, ptr %i.alj, align 2, !tbaa !43, !noalias !171
  %i.alm = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.all, <8 x i16> zeroinitializer)
  %i.aln = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.alm, <8 x i16> splat (i16 255))
  %i.alo = trunc nuw <8 x i16> %i.aln to <8 x i8>
  store <8 x i8> %i.alo, ptr %i.alk, align 1, !tbaa !29, !alias.scope !171
  %i.alp = getelementptr inbounds nuw i8, ptr %.5264555, i64 224
  %i.alq = getelementptr inbounds i8, ptr %i.alk, i64 %i.aik ; 2 uses
  %i.alr = load <8 x i16>, ptr %i.alp, align 2, !tbaa !43, !noalias !171
  %i.als = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.alr, <8 x i16> zeroinitializer)
  %i.alt = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.als, <8 x i16> splat (i16 255))
  %i.alu = trunc nuw <8 x i16> %i.alt to <8 x i8>
  store <8 x i8> %i.alu, ptr %i.alq, align 1, !tbaa !29, !alias.scope !171
  %i.alv = getelementptr inbounds nuw i8, ptr %.5264555, i64 240
  %i.alw = getelementptr inbounds i8, ptr %i.alq, i64 %i.aik
  %i.alx = load <8 x i16>, ptr %i.alv, align 2, !tbaa !43, !noalias !171
  %i.aly = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.alx, <8 x i16> zeroinitializer)
  %i.alz = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.aly, <8 x i16> splat (i16 255))
  %i.ama = trunc nuw <8 x i16> %i.alz to <8 x i8>
  store <8 x i8> %i.ama, ptr %i.alw, align 1, !tbaa !29, !alias.scope !171
  %i.amb = getelementptr inbounds nuw i8, ptr %.5254556, i64 96
  %i.amc = getelementptr inbounds nuw i8, ptr %.5264555, i64 256
end_hunk_1
