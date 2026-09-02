Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/lagarith?download=true
inline.NumInlined: 26
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@lag_decode_frame:bb.a
  %.not281 = icmp ult i32 %i.m, %i.f
  %or.cond287 = select i1 %or.cond286, i1 %.not281, i1 false
  br i1 %or.cond287, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2) #7
  br label %.loopexit299

bb.ab:                                            ; preds = %bb.z
  %i.kz = load ptr, ptr %1, align 8, !tbaa !49
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !36
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !48
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !35
  %i.lg = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.lh = add i32 %i.f, -9
  %i.li = tail call fastcc i32 @lag_decode_arith_plane(ptr noundef %i.h, ptr noundef %i.kz, i32 noundef %i.lb, i32 noundef %i.ld, i32 noundef %i.lf, ptr noundef nonnull %i.lg, i32 noundef %i.lh) ; 2 uses
  %i.lj = icmp slt i32 %i.li, 0
  br i1 %i.lj, label %.loopexit299, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !49
  %i.lm = load <2 x i32>, ptr %i.la, align 8, !tbaa !35
  %i.ln = add nsw <2 x i32> %i.lm, splat (i32 1)
  %i.lo = sdiv <2 x i32> %i.ln, splat (i32 2)     ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !35
  %i.lr = zext i32 %i.k to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.lr
  %i.lt = sub nuw i32 %i.f, %i.k
  %i.lu = extractelement <2 x i32> %i.lo, i64 0
  %i.lv = extractelement <2 x i32> %i.lo, i64 1
  %i.lw = tail call fastcc i32 @lag_decode_arith_plane(ptr noundef %i.h, ptr noundef %i.ll, i32 noundef %i.lu, i32 noundef %i.lv, i32 noundef %i.lq, ptr noundef nonnull %i.ls, i32 noundef %i.lt) ; 2 uses
  %i.lx = icmp slt i32 %i.lw, 0
  br i1 %i.lx, label %.loopexit299, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !49
  %i.ma = load <2 x i32>, ptr %i.la, align 8, !tbaa !35
  %i.mb = add nsw <2 x i32> %i.ma, splat (i32 1)
  %i.mc = sdiv <2 x i32> %i.mb, splat (i32 2)     ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.me = load i32, ptr %i.md, align 4, !tbaa !35
  %i.mf = zext i32 %i.m to i64
  %i.mg = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mf
  %i.mh = sub nuw i32 %i.f, %i.m
  %i.mi = extractelement <2 x i32> %i.mc, i64 0
  %i.mj = extractelement <2 x i32> %i.mc, i64 1
  %i.mk = tail call fastcc i32 @lag_decode_arith_plane(ptr noundef %i.h, ptr noundef %i.lz, i32 noundef %i.mi, i32 noundef %i.mj, i32 noundef %i.me, ptr noundef nonnull %i.mg, i32 noundef %i.mh)
  br label %.loopexit

bb.ae:                                            ; preds = %bb.a
  %i.ml = zext i8 %i.i to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.ml) #7
  br label %.loopexit299

.loopexit:                                        ; preds = %bb.j, %bb.ad, %bb.x
  %.1 = phi i32 [ %i.mk, %bb.ad ], [ %i.ku, %bb.x ], [ %i.dk, %bb.j ] ; 2 uses
  %i.mm = icmp slt i32 %.1, 0
  br i1 %i.mm, label %.loopexit299, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.f, %bb.d, %.preheader295, %._crit_edge, %.preheader, %.preheader293, %.loopexit
  store i32 1, ptr %2, align 4, !tbaa !35
  br label %.loopexit299

.loopexit299:                                     ; preds = %bb.q, %.thread350, %.loopexit, %bb.ac, %bb.ab, %bb.y, %bb.w, %bb.v, %bb.s, %bb.l, %bb.g, %bb.b, %.loopexit.thread, %bb.ae, %bb.aa, %bb.u, %bb.o
  %.0 = phi i32 [ -1163346256, %bb.ae ], [ %i.li, %bb.ab ], [ %i.lw, %bb.ac ], [ %i.f, %.loopexit.thread ], [ %i.r, %bb.b ], [ %i.dk, %bb.g ], [ -1094995529, %bb.o ], [ %i.fp, %bb.l ], [ %.1, %.loopexit ], [ -1094995529, %bb.u ], [ %i.ji, %bb.s ], [ %i.ju, %bb.v ], [ %i.kh, %bb.w ], [ -1094995529, %bb.aa ], [ %i.kw, %bb.y ], [ %i.u, %.thread350 ], [ %i.hu, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @ff_llviddsp_init(ptr noundef) local_unnamed_addr #3

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define internal void @lag_init_static_data() #0 {
bb.a:
  tail call void @ff_vlc_init_table_sparse(ptr noundef nonnull @lag_tab, i32 noundef 128, i32 noundef 7, i32 noundef 53, ptr noundef nonnull @lag_bits, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @lag_codes, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @lag_symbols, i32 noundef 1, i32 noundef 1, i32 noundef 0) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @ff_vlc_init_table_sparse(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @lag_decode_arith_plane(ptr nofree noundef captures(none) initializes((48, 52)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %7 = alloca %struct.GetBitContext, align 8      ; 7 uses
  %8 = alloca %struct.lag_rac, align 8            ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.c = zext nneg i32 %6 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 %i.c
  %i.e = load ptr, ptr %0, align 8, !tbaa !32     ; 3 uses
  store ptr %i.e, ptr %8, align 8, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i32 0, ptr %i.f, align 8, !tbaa !77
  %i.g = icmp slt i32 %6, 2
  br i1 %i.g, label %lag_read_prob_header.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %5, align 1, !tbaa !33      ; 7 uses
  %i.i = zext i8 %i.h to i32                      ; 3 uses
  %i.j = icmp ult i8 %i.h, 4
  br i1 %i.j, label %bb.c, label %bb.bh

bb.c:                                             ; preds = %bb.b
  %i.k = mul nsw i32 %3, %2                       ; 3 uses
  %i.l = icmp samesign ult i32 %6, 5
  br i1 %i.l, label %lag_read_prob_header.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not130 = icmp eq i8 %i.h, 0                   ; 2 uses
  br i1 %.not130, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.n = load i32, ptr %i.m, align 1, !tbaa !33   ; 2 uses
  %i.o = icmp ult i32 %i.n, %i.k
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.k)
  %spec.select132 = select i1 %i.o, i32 5, i32 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0108 = phi i32 [ %i.k, %bb.d ], [ %spec.select, %bb.e ] ; 3 uses
  %.0107 = phi i32 [ 1, %bb.d ], [ %spec.select132, %bb.e ] ; 2 uses
  %i.p = zext nneg i32 %.0107 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 %i.p ; 9 uses
  %i.r = sub nuw nsw i32 %6, %.0107               ; 2 uses
  %i.s = icmp samesign ugt i32 %i.r, 268435455
  %i.t = shl nuw nsw i32 %i.r, 3
  %i.u = select i1 %i.s, i32 -8, i32 %i.t         ; 2 uses
  %or.cond.i.i = icmp ugt i32 %i.u, 2147483134    ; 3 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr null, ptr %i.q
  %.013.i.i = select i1 %or.cond.i.i, i32 0, i32 %i.u ; 2 uses
  store ptr %.014.i.i, ptr %7, align 8, !tbaa !79
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.013.i.i, ptr %i.v, align 4, !tbaa !80
  %i.w = add nuw nsw i32 %.013.i.i, 8             ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.w, ptr %i.x, align 8, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  br i1 %or.cond.i.i, label %lag_read_prob_header.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 52 ; 17 uses
  store i32 0, ptr %i.z, align 4, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 1080
  store i32 -1, ptr %i.aa, align 8, !tbaa !35
  br label %bb.h

bb.h:                                             ; preds = %.loopexit137.i, %bb.g
  %i.ab = phi i32 [ 0, %bb.g ], [ %.sroa.4.0.copyload.i.i, %.loopexit137.i ] ; 3 uses
  %.081150.i = phi i32 [ 0, %bb.g ], [ %.1.i, %.loopexit137.i ] ; 4 uses
  %.084149.i = phi i32 [ 0, %bb.g ], [ %i.eo, %.loopexit137.i ] ; 3 uses
  %.088148.i = phi i32 [ 1, %bb.g ], [ %i.ep, %.loopexit137.i ] ; 7 uses
  %i.ac = sext i32 %.088148.i to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ac ; 3 uses
  %i.ae = lshr i32 %i.ab, 3
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 1, !tbaa !33
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %i.ah)
  %i.aj = and i32 %i.ab, 7
  %i.ak = shl i32 %i.ai, %i.aj
  %i.al = lshr i32 %i.ak, 25
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr @lag_tab, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !33
  %i.aq = sext i16 %i.ap to i32
  %i.ar = load i16, ptr %i.an, align 4, !tbaa !33 ; 4 uses
  %i.as = sext i16 %i.ar to i32                   ; 5 uses
  %i.at = add i32 %i.ab, %i.aq
  %i.au = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.at) ; 5 uses
  %i.av = icmp ugt i16 %i.ar, 31
  br i1 %i.av, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = icmp eq i16 %i.ar, 0
  br i1 %i.aw, label %.thread128.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = icmp samesign ult i16 %i.ar, 26
  %i.ay = lshr i32 %i.au, 3
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 1, !tbaa !33
  %i.bc = tail call i32 @llvm.bswap.i32(i32 %i.bb)
  %i.bd = and i32 %i.au, 7
  %i.be = shl i32 %i.bc, %i.bd                    ; 2 uses
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bf = sub nuw nsw i32 32, %i.as
  %i.bg = lshr i32 %i.be, %i.bf
  %i.bh = add nuw i32 %i.au, %i.as
  %i.bi = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.bh)
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.bj = lshr i32 %i.be, 16
  %i.bk = add nuw i32 %i.au, 16
  %i.bl = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.bk) ; 3 uses
  %i.bm = add nsw i32 %i.as, -16                  ; 2 uses
  %i.bn = shl nuw nsw i32 %i.bj, %i.bm
  %i.bo = lshr i32 %i.bl, 3
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 1, !tbaa !33
  %i.bs = tail call i32 @llvm.bswap.i32(i32 %i.br)
  %i.bt = and i32 %i.bl, 7
  %i.bu = shl i32 %i.bs, %i.bt
  %i.bv = sub nuw nsw i32 48, %i.as
  %i.bw = lshr i32 %i.bu, %i.bv
  %i.bx = add i32 %i.bl, %i.bm
  %i.by = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.bx)
  %i.bz = or i32 %i.bw, %i.bn
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  store i32 0, ptr %i.ad, align 4, !tbaa !35
  br label %.critedge.sink.split.i

bb.n:                                             ; preds = %bb.l, %bb.k
  %.sink.i.i = phi i32 [ %i.bi, %bb.k ], [ %i.by, %bb.l ] ; 2 uses
  %.0.i.i.i = phi i32 [ %i.bg, %bb.k ], [ %i.bz, %bb.l ]
  %i.ca = shl nuw i32 1, %i.as
  %i.cb = or i32 %.0.i.i.i, %i.ca
  %i.cc = add i32 %i.cb, -1                       ; 4 uses
  store i32 %i.cc, ptr %i.ad, align 4, !tbaa !35
  %9 = zext i32 %.084149.i to i64
  %10 = zext i32 %i.cc to i64
  %11 = add nuw nsw i64 %10, %9
  %i.cd = icmp samesign ugt i64 %11, 4294967295
  br i1 %i.cd, label %.critedge.sink.split.i, label %bb.o

.thread128.i:                                     ; preds = %bb.i
  store i32 0, ptr %i.ad, align 4, !tbaa !35
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ce = add i32 %i.cc, %.084149.i               ; 2 uses
  %.not103.i = icmp eq i32 %i.cc, 0
  br i1 %.not103.i, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o, %.thread128.i
  %i.cf = phi i32 [ %i.au, %.thread128.i ], [ %.sink.i.i, %bb.o ] ; 3 uses
  %i.cg = phi i32 [ %.084149.i, %.thread128.i ], [ %i.ce, %bb.o ] ; 3 uses
  %i.ch = lshr i32 %i.cf, 3
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 1, !tbaa !33
  %i.cl = tail call i32 @llvm.bswap.i32(i32 %i.ck)
  %i.cm = and i32 %i.cf, 7
  %i.cn = shl i32 %i.cl, %i.cm
  %i.co = lshr i32 %i.cn, 25
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr @lag_tab, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !33
  %i.ct = sext i16 %i.cs to i32
  %i.cu = load i16, ptr %i.cq, align 4, !tbaa !33 ; 4 uses
  %i.cv = sext i16 %i.cu to i32                   ; 5 uses
  %i.cw = add i32 %i.cf, %i.ct
  %i.cx = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.cw) ; 5 uses
  %i.cy = icmp ugt i16 %i.cu, 31
  br i1 %i.cy, label %.critedge.sink.split.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = icmp eq i16 %i.cu, 0
  br i1 %i.cz, label %.loopexit137.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.da = icmp samesign ult i16 %i.cu, 26
  %i.db = lshr i32 %i.cx, 3
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 1, !tbaa !33
  %i.df = tail call i32 @llvm.bswap.i32(i32 %i.de)
  %i.dg = and i32 %i.cx, 7
  %i.dh = shl i32 %i.df, %i.dg                    ; 2 uses
  br i1 %i.da, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.di = sub nuw nsw i32 32, %i.cv
  %i.dj = lshr i32 %i.dh, %i.di
  %i.dk = add nuw i32 %i.cx, %i.cv
  %i.dl = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.dk)
  br label %.thread135.i

bb.t:                                             ; preds = %bb.r
  %i.dm = lshr i32 %i.dh, 16
  %i.dn = add nuw i32 %i.cx, 16
  %i.do = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.dn) ; 3 uses
  %i.dp = add nsw i32 %i.cv, -16                  ; 2 uses
  %i.dq = shl nuw nsw i32 %i.dm, %i.dp
  %i.dr = lshr i32 %i.do, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 1, !tbaa !33
  %i.dv = tail call i32 @llvm.bswap.i32(i32 %i.du)
  %i.dw = and i32 %i.do, 7
  %i.dx = shl i32 %i.dv, %i.dw
  %i.dy = sub nuw nsw i32 48, %i.cv
  %i.dz = lshr i32 %i.dx, %i.dy
  %i.ea = add i32 %i.do, %i.dp
  %i.eb = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.ea)
  %i.ec = or i32 %i.dz, %i.dq
  br label %.thread135.i

.thread135.i:                                     ; preds = %bb.t, %bb.s
  %.sink.i106.i = phi i32 [ %i.dl, %bb.s ], [ %i.eb, %bb.t ] ; 2 uses
  %.0.i.i107.i = phi i32 [ %i.dj, %bb.s ], [ %i.ec, %bb.t ]
  %i.ed = shl nuw i32 1, %i.cv
  %i.ee = or i32 %.0.i.i107.i, %i.ed
  %i.ef = add i32 %i.ee, -1
  %i.eg = sub nsw i32 256, %.088148.i
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.ef, i32 %i.eg) ; 3 uses
  %.not163.i = icmp eq i32 %spec.select.i, 0
  br i1 %.not163.i, label %.loopexit137.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.thread135.i
  %i.eh = add nsw i32 %.088148.i, 1
  %i.ei = sext i32 %i.eh to i64
  %i.ej = shl nsw i64 %i.ei, 2
  %scevgep172.i = getelementptr i8, ptr %i.z, i64 %i.ej
  %i.ek = zext nneg i32 %spec.select.i to i64
  %i.el = shl nuw nsw i64 %i.ek, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep172.i, i8 0, i64 %i.el, i1 false), !tbaa !35
  %i.em = add i32 %spec.select.i, %.088148.i
  br label %.loopexit137.i

bb.u:                                             ; preds = %bb.o
  %i.en = add nsw i32 %.081150.i, 1
  br label %.loopexit137.i

.loopexit137.i:                                   ; preds = %bb.u, %.lr.ph.preheader.i, %.thread135.i, %bb.q
  %.sroa.4.0.copyload.i.i = phi i32 [ %.sink.i.i, %bb.u ], [ %.sink.i106.i, %.thread135.i ], [ %.sink.i106.i, %.lr.ph.preheader.i ], [ %i.cx, %bb.q ] ; 5 uses
  %i.eo = phi i32 [ %i.ce, %bb.u ], [ %i.cg, %.thread135.i ], [ %i.cg, %.lr.ph.preheader.i ], [ %i.cg, %bb.q ] ; 10 uses
  %.290.i = phi i32 [ %.088148.i, %bb.u ], [ %.088148.i, %.thread135.i ], [ %i.em, %.lr.ph.preheader.i ], [ %.088148.i, %bb.q ] ; 2 uses
  %.1.i = phi i32 [ %i.en, %bb.u ], [ %.081150.i, %.thread135.i ], [ %.081150.i, %.lr.ph.preheader.i ], [ %.081150.i, %bb.q ] ; 2 uses
  %i.ep = add nsw i32 %.290.i, 1
  %i.eq = icmp slt i32 %.290.i, 256
  br i1 %i.eq, label %bb.h, label %bb.v, !llvm.loop !51

bb.v:                                             ; preds = %.loopexit137.i
  store i32 %.sroa.4.0.copyload.i.i, ptr %i.y, align 8, !tbaa !82
  %.not.i = icmp eq i32 %i.eo, 0
  br i1 %.not.i, label %.critedge.sink.split.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = icmp eq i32 %.1.i, 1
  br i1 %i.er, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.es = lshr i32 %.sroa.4.0.copyload.i.i, 3
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 1, !tbaa !33
  %i.ew = tail call i32 @llvm.bswap.i32(i32 %i.ev)
  %i.ex = and i32 %.sroa.4.0.copyload.i.i, 7
  %i.ey = shl i32 %i.ew, %i.ex
  %i.ez = and i32 %i.ey, 16711680
  %i.fa = add nuw i32 %.sroa.4.0.copyload.i.i, 16
  %i.fb = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.fa) ; 2 uses
  %i.fc = lshr i32 %i.fb, 3
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 1, !tbaa !33
  %i.fg = tail call i32 @llvm.bswap.i32(i32 %i.ff)
  %i.fh = and i32 %i.fb, 7
  %i.fi = shl i32 %i.fg, %i.fh
  %i.fj = lshr i32 %i.fi, 16
  %i.fk = or disjoint i32 %i.fj, %i.ez
  %.not99.i = icmp eq i32 %i.fk, 0
  br i1 %.not99.i, label %bb.y, label %lag_read_prob_header.exit.thread

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not.i.i = icmp ult i32 %i.eo, 65536           ; 2 uses
  %i.fl = lshr i32 %i.eo, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.eo, i32 %i.fl ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.fm = lshr i32 %spec.select.i.i, 8
  %i.fn = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.fm
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.fn
  %i.fo = zext nneg i32 %.110.i.i to i64
  %i.fp = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !33
  %i.fr = zext i8 %i.fq to i32
  %i.fs = add nuw nsw i32 %.1.i.i, %i.fr          ; 4 uses
  %i.ft = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.eo)
  %.not100.i = icmp samesign ult i32 %i.ft, 2
  br i1 %.not100.i, label %.loopexit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = add i32 %i.eo, -1                       ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.eo, 65537         ; 2 uses
  %i.fv = lshr i32 %i.fu, 16
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.fu, i32 %i.fv ; 3 uses
  %spec.select12.i.i.i = select i1 %.not.i.i.i, i64 0, i64 16
  %.not11.i.i.i = icmp samesign ult i32 %spec.select.i.i.i, 256 ; 2 uses
  %i.fw = lshr i32 %spec.select.i.i.i, 8
  %.110.i.i.i = select i1 %.not11.i.i.i, i32 %spec.select.i.i.i, i32 %i.fw
  %i.fx = zext nneg i32 %.110.i.i.i to i64
  %i.fy = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !33
  %i.ga = zext i8 %i.fz to i64
  %i.gb = select i1 %.not11.i.i.i, i64 1, i64 9
  %i.gc = or disjoint i64 %i.gb, %spec.select12.i.i.i
  %i.gd = add nuw nsw i64 %i.gc, %i.ga            ; 2 uses
  %i.ge = zext i32 %i.eo to i64                   ; 4 uses
  %i.gf = udiv i64 4503599627370496, %i.ge        ; 2 uses
  %i.gg = mul i64 %i.gf, %i.ge                    ; 0 uses
  %.recomposed = urem i64 4503599627370496, %i.ge
  %i.gh = shl i64 %i.gf, %i.gd
  %i.gi = shl i64 %.recomposed, %i.gd
  %i.gj = lshr i32 %i.eo, 1
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = add i64 %i.gi, %i.gk
  %i.gm = udiv i64 %i.gl, %i.ge
  %i.gn = add i64 %i.gh, %i.gm                    ; 2 uses
  %i.go = and i64 %i.gn, 4294967295               ; 2 uses
  %i.gp = lshr i64 %i.gn, 32                      ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %indvars.iv.i = phi i64 [ 1, %bb.z ], [ %indvars.iv.next.i, %bb.aa ] ; 2 uses
  %.082152.i = phi i32 [ 0, %bb.z ], [ %i.hp, %bb.aa ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !35
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = mul nuw i64 %i.go, %i.gs                ; 2 uses
  %i.gu = mul nuw i64 %i.gp, %i.gs
  %i.gv = lshr i64 %i.gt, 32
  %i.gw = add nuw i64 %i.gv, %i.gu                ; 2 uses
  %i.gx = and i64 %i.gt, 4294967295
  %i.gy = lshr i64 %i.gw, 21
  %i.gz = trunc i64 %i.gy to i32                  ; 3 uses
  %.not.i.i111.i = icmp ult i32 %i.gz, 65536      ; 2 uses
  %i.ha = lshr i32 %i.gz, 16
  %spec.select.i.i112.i = select i1 %.not.i.i111.i, i32 %i.gz, i32 %i.ha ; 3 uses
  %spec.select12.i.i113.i = select i1 %.not.i.i111.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i114.i = icmp samesign ult i32 %spec.select.i.i112.i, 256 ; 2 uses
  %i.hb = lshr i32 %spec.select.i.i112.i, 8
  %i.hc = or disjoint i32 %spec.select12.i.i113.i, 8
  %.110.i.i115.i = select i1 %.not11.i.i114.i, i32 %spec.select.i.i112.i, i32 %i.hb
end_hunk_0
