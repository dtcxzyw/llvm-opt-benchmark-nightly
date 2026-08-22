Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mss12?download=true
inline.NumInlined: 26
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@decode_region_intra:bb.a
  %.05880.epil.init = phi ptr [ %i.p, %.lr.ph83.split.preheader ], [ %i.cu, %.thread.loopexit106.unr-lcssa ]
  %lcmp.mod108 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph83.split.epil

.lr.ph83.split.epil:                              ; preds = %.lr.ph83.split.epil, %.lr.ph83.split.epil.preheader
  %.05880.epil = phi ptr [ %i.dk, %.lr.ph83.split.epil ], [ %.05880.epil.init, %.lr.ph83.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph83.split.epil ], [ 0, %.lr.ph83.split.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.05880.epil, i8 %i.bp, i64 %i.bq, i1 false)
  %i.dk = getelementptr inbounds i8, ptr %.05880.epil, i64 %i.g
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread, label %.lr.ph83.split.epil, !llvm.loop !125

.thread:                                          ; preds = %.thread.loopexit106.unr-lcssa, %.lr.ph83.split.epil, %.thread.loopexit.unr-lcssa, %.preheader.us.epil, %.lr.ph83.split.us.epil.preheader, %bb.g, %bb.b, %decode_pixel.exit, %bb.i
  %.162 = phi i32 [ %i.df, %bb.i ], [ -1094995529, %bb.b ], [ %.050.i100, %decode_pixel.exit ], [ 0, %bb.g ], [ 0, %.thread.loopexit.unr-lcssa ], [ 0, %.lr.ph83.split.us.epil.preheader ], [ 0, %.preheader.us.epil ], [ 0, %.lr.ph83.split.epil ], [ 0, %.thread.loopexit106.unr-lcssa ]
  ret i32 %.162
}

; Function Attrs: cold nounwind optsize uwtable
define range(i32 -1094995529, 1) i32 @ff_mss12_decode_init(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !84     ; 26 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !126  ; 4 uses
  %i.d = icmp slt i32 %i.c, 820
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %i.c) #9
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 11 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !127  ; 5 uses
  %i.g = load i32, ptr %i.f, align 1, !tbaa !13
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)  ; 2 uses
  %i.i = icmp ult i32 %i.h, %i.c
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %i.h, i32 noundef %i.c) #9
  br label %bb.aa

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.k = load i32, ptr %i.j, align 1, !tbaa !13
  %i.l = tail call i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !110
  %. = tail call i32 @llvm.umax.i32(i32 %i.l, i32 %i.n) ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  store i32 %., ptr %i.o, align 8, !tbaa !128
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = load i32, ptr %i.p, align 1, !tbaa !13
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 116 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !112
  %i.u = tail call i32 @llvm.umax.i32(i32 %i.r, i32 %i.t) ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 124 ; 2 uses
  store i32 %i.u, ptr %i.v, align 4, !tbaa !129
  %i.w = icmp sgt i32 %., 4096
  %i.x = icmp sgt i32 %i.u, 4096
  %or.cond = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %., i32 noundef %i.u) #9
  br label %bb.aa

bb.g:                                             ; preds = %bb.e
  %i.y = icmp slt i32 %., 1
  %i.z = icmp slt i32 %i.u, 1
  %or.cond125 = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond125, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %., i32 noundef %i.u) #9
  br label %bb.aa

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !13
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ae = load i32, ptr %i.ad, align 1, !tbaa !13
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 48, ptr noundef nonnull @.str.4, i32 noundef %i.ac, i32 noundef %i.af) #9
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !127 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !13
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = icmp ugt i32 %i.aj, 1
  %i.al = zext i1 %i.ak to i32
  %.not = icmp eq i32 %1, %i.al
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull @.str.5) #9
  br label %bb.aa

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.an = load i32, ptr %i.am, align 1, !tbaa !13
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an) ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !130
  %i.aq = icmp ugt i32 %i.ao, 256
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %i.ao) #9
  br label %bb.aa

bb.m:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 48, ptr noundef nonnull @.str.7, i32 noundef %i.ao) #9
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !127 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = load i32, ptr %i.as, align 1, !tbaa !13
  %i.au = tail call i32 @llvm.bswap.i32(i32 %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i32, ptr %i.av, align 1, !tbaa !13
  %i.ax = tail call i32 @llvm.bswap.i32(i32 %i.aw)
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 48, ptr noundef nonnull @.str.8, i32 noundef %i.au, i32 noundef %i.ax) #9
  %i.ay = load i32, ptr %i.o, align 8, !tbaa !128
  %i.az = load i32, ptr %i.v, align 4, !tbaa !129
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 48, ptr noundef nonnull @.str.9, i32 noundef %i.ay, i32 noundef %i.az) #9
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !127
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !13
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bc)
  %i.be = bitcast i32 %i.bd to float
  %i.bf = fpext nsz float %i.be to double
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 48, ptr noundef nonnull @.str.10, double noundef %i.bf) #9
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !127
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load i32, ptr %i.bh, align 1, !tbaa !13
  %i.bj = tail call i32 @llvm.bswap.i32(i32 %i.bi)
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 48, ptr noundef nonnull @.str.11, i32 noundef %i.bj) #9
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !127
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  %i.bm = load i32, ptr %i.bl, align 1, !tbaa !13
  %i.bn = tail call i32 @llvm.bswap.i32(i32 %i.bm)
  %i.bo = bitcast i32 %i.bn to float
  %i.bp = fpext nsz float %i.bo to double
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 48, ptr noundef nonnull @.str.12, double noundef %i.bp) #9
  %i.bq = load ptr, ptr %i.e, align 8, !tbaa !127
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load i32, ptr %i.br, align 1, !tbaa !13
  %i.bt = tail call i32 @llvm.bswap.i32(i32 %i.bs)
  %i.bu = bitcast i32 %i.bt to float
  %i.bv = fpext nsz float %i.bu to double
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 48, ptr noundef nonnull @.str.13, double noundef %i.bv) #9
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !127
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 44
  %i.by = load i32, ptr %i.bx, align 1, !tbaa !13
  %i.bz = tail call i32 @llvm.bswap.i32(i32 %i.by)
  %i.ca = bitcast i32 %i.bz to float
  %i.cb = fpext nsz float %i.ca to double
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 48, ptr noundef nonnull @.str.14, double noundef %i.cb) #9
  %.not122 = icmp eq i32 %1, 0
  br i1 %.not122, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = load i32, ptr %i.b, align 8, !tbaa !126 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 828
  br i1 %i.cd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %i.cc) #9
  br label %bb.aa

bb.p:                                             ; preds = %bb.n
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !127
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 52
  %i.cg = load i32, ptr %i.cf, align 1, !tbaa !13
  %i.ch = tail call i32 @llvm.bswap.i32(i32 %i.cg) ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1116
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !131
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 48, ptr noundef nonnull @.str.16, i32 noundef %i.ch) #9
  %i.cj = load ptr, ptr %i.e, align 8, !tbaa !127
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cl = load i32, ptr %i.ck, align 1, !tbaa !13
  %i.cm = tail call i32 @llvm.bswap.i32(i32 %i.cl) ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 %i.cm, ptr %i.cn, align 8, !tbaa !132
  %i.co = add i32 %i.cm, -257
  %or.cond126 = icmp ult i32 %i.co, -255
  br i1 %or.cond126, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull @.str.17, i32 noundef %i.cm) #9
  br label %bb.aa

bb.r:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 48, ptr noundef nonnull @.str.18, i32 noundef %i.cm) #9
  br label %bb.t

bb.s:                                             ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1116
  store <2 x i32> <i32 0, i32 256>, ptr %i.cp, align 4, !tbaa !117
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cq = phi i64 [ 52, %bb.s ], [ 60, %bb.r ]
  %i.cr = load ptr, ptr %i.e, align 8, !tbaa !127
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.u
  %indvars.iv = phi i64 [ 0, %bb.t ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.cu = mul nuw nsw i64 %indvars.iv, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cu ; 3 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !13
  %i.cx = zext i8 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.cx, 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !13
  %i.db = zext i8 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !13
  %i.df = zext i8 %i.de to i32
  %i.dg = or disjoint i32 %i.cy, %i.dc
  %i.dh = or disjoint i32 %i.dg, %i.df
  %i.di = or disjoint i32 %i.dh, -16777216
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.v, label %bb.u, !llvm.loop !133

bb.v:                                             ; preds = %bb.u
  %i.dk = load i32, ptr %i.m, align 8, !tbaa !110
  %i.dl = add nsw i32 %i.dk, 15
  %i.dm = and i32 %i.dl, -16
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !115
  %i.dp = load i32, ptr %i.s, align 4, !tbaa !112
  %i.dq = sext i32 %i.dp to i64
  %i.dr = tail call ptr @av_malloc_array(i64 noundef %i.dn, i64 noundef %i.dq) #9 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !114
  %.not123 = icmp eq ptr %i.dr, null
  br i1 %.not123, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull @.str.19) #9
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  store ptr %0, ptr %2, align 8, !tbaa !73
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !132
  tail call fastcc void @slicecontext_init(ptr noundef nonnull %2, i32 noundef %1, i32 noundef %i.du) #10
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !131
  %.not124 = icmp eq i32 %i.dw, 0
  br i1 %.not124, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %0, ptr %3, align 8, !tbaa !73
  %i.dx = load i32, ptr %i.dt, align 8, !tbaa !132
  tail call fastcc void @slicecontext_init(ptr noundef nonnull %3, i32 noundef %1, i32 noundef %i.dx) #10
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store i32 1, ptr %i.dy, align 8, !tbaa !134
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w, %bb.q, %bb.o, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0108 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bb.d ], [ -1094995529, %bb.f ], [ -1094995529, %bb.h ], [ -1, %bb.j ], [ -1094995529, %bb.l ], [ -1094995529, %bb.o ], [ -1094995529, %bb.q ], [ 0, %bb.z ], [ -12, %bb.w ]
  ret i32 %.0108
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @slicecontext_init(ptr nofree noundef writeonly captures(none) initializes((1296, 1308), (2596, 2608), (3896, 3908), (5196, 5208), (6496, 6516), (7816, 7828), (9116, 9128), (87128, 87140), (88440, 88452), (89740, 89752), (167752, 167756)) %0, i32 noundef range(i32 0, 2) %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1296
  store <2 x i32> <i32 2, i32 -1>, ptr %i.a, align 4, !tbaa !117
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1304
  store i32 -2, ptr %i.b, align 4, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store <2 x i32> <i32 2, i32 -1>, ptr %i.c, align 4, !tbaa !117
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i32 -2, ptr %i.d, align 4, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6496
  store <2 x i32> <i32 3, i32 50>, ptr %i.e, align 4, !tbaa !117
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6504
  store i32 150, ptr %i.f, align 4, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5196
  store <2 x i32> <i32 2, i32 50>, ptr %i.g, align 4, !tbaa !117
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5204
  store i32 100, ptr %i.h, align 4, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3896
  store <2 x i32> <i32 3, i32 15>, ptr %i.i, align 4, !tbaa !117
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3904
  store i32 45, ptr %i.j, align 4, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6508
  tail call fastcc void @pixctx_init(ptr noundef nonnull %i.k, i32 noundef 8, i32 noundef %2, i32 noundef 0) #10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 87132
  %.not.not = icmp eq i32 %1, 0
  %i.m = select i1 %.not.not, i32 2, i32 3
  tail call fastcc void @pixctx_init(ptr noundef nonnull %i.l, i32 noundef %i.m, i32 noundef %2, i32 noundef %1) #10
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define noundef i32 @ff_mss12_decode_end(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056
  tail call void @av_freep(ptr noundef nonnull %i.a) #9
  ret i32 0
}

declare void @av_freep(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @decode_region(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(address) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 noundef %7, i64 noundef %8, ptr noundef %9, ptr nofree noundef readonly captures(none) %10) unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %2, null                    ; 2 uses
  %i.a = select i1 %.not, i64 0, i64 %8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = mul nsw i32 %3, 3
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.e = sext i32 %4 to i64
  %i.f = mul nsw i64 %8, %i.e
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.i = icmp sgt i32 %6, 0
  br i1 %i.i, label %.preheader64.lr.ph, label %decode_pixel.exit.thread

.preheader64.lr.ph:                               ; preds = %bb.c
  %i.j = icmp sgt i32 %5, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 1320
  %i.p = getelementptr i8, ptr %9, i64 8          ; 4 uses
  br i1 %i.j, label %.preheader64.preheader, label %decode_pixel.exit.thread

.preheader64.preheader:                           ; preds = %.preheader64.lr.ph
  %i.q = sext i32 %4 to i64
  %i.r = mul nsw i64 %7, %i.q
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %i.t = sext i32 %3 to i64
  %i.u = getelementptr i8, ptr %i.s, i64 %i.t
  %scevgep80 = getelementptr i8, ptr %9, i64 7
  %wide.trip.count88 = zext nneg i32 %5 to i64
  br label %.preheader64

.preheader64:                                     ; preds = %.preheader64.preheader, %._crit_edge73
  %.05576 = phi i32 [ %i.bu, %._crit_edge73 ], [ 0, %.preheader64.preheader ] ; 3 uses
  %.05875 = phi ptr [ %i.bs, %._crit_edge73 ], [ %i.u, %.preheader64.preheader ] ; 3 uses
  %.05974 = phi ptr [ %i.bt, %._crit_edge73 ], [ %i.h, %.preheader64.preheader ] ; 3 uses
  %.not62 = icmp eq ptr %.05974, null
  br label %bb.d

bb.d:                                             ; preds = %.preheader64, %bb.m
  %indvars.iv85 = phi i64 [ 0, %.preheader64 ], [ %indvars.iv.next86, %bb.m ] ; 5 uses
  %i.v = trunc nuw nsw i64 %indvars.iv85 to i32   ; 3 uses
  %i.w = or i32 %.05576, %i.v
  %or.cond.not = icmp eq i32 %i.w, 0
  br i1 %or.cond.not, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %i.k, align 4, !tbaa !67
  %i.y = icmp sgt i32 %i.x, 16
  br i1 %i.y, label %decode_pixel.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.aa = tail call i32 %i.z(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #9, !inline_history !122 ; 3 uses
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !82
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds i8, ptr %i.p, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.ag = zext i8 %i.af to i32
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.ai = tail call i32 %i.ah(ptr noundef nonnull %0, ptr noundef nonnull %i.o) #9, !inline_history !122 ; 4 uses
  %i.aj = load i32, ptr %9, align 4, !tbaa !43    ; 2 uses
  %i.ak = add i32 %i.aj, -1                       ; 2 uses
  %i.al = icmp sgt i32 %i.aj, 1
  br i1 %i.al, label %.lr.ph.preheader, label %decode_pixel.exit

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count = zext nneg i32 %i.ak to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.an = load i8, ptr %i.am, align 1, !tbaa !13
  %i.ao = zext i8 %i.an to i32
  %i.ap = icmp eq i32 %i.ai, %i.ao
  br i1 %i.ap, label %.loopexit.loopexit.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !83

.loopexit.loopexit.split.loop.exit:               ; preds = %.lr.ph
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.loopexit.loopexit.split.loop.exit, %bb.g
  %.152.i = phi i32 [ %i.aa, %bb.g ], [ %i.aq, %.loopexit.loopexit.split.loop.exit ], [ %i.ak, %bb.i ] ; 4 uses
  %.050.i = phi i32 [ %i.ag, %bb.g ], [ %i.ai, %.loopexit.loopexit.split.loop.exit ], [ %i.ai, %bb.i ] ; 3 uses
  %.not59.i = icmp eq i32 %.152.i, 0
  br i1 %.not59.i, label %decode_pixel.exit, label %.preheader

.preheader:                                       ; preds = %.loopexit
  %i.ar = icmp sgt i32 %.152.i, 0
  br i1 %i.ar, label %.lr.ph70.preheader, label %._crit_edge

.lr.ph70.preheader:                               ; preds = %.preheader
  %i.as = zext nneg i32 %.152.i to i64            ; 2 uses
  %i.at = add nsw i32 %.152.i, -1
  %i.au = zext nneg i32 %i.at to i64
  %i.av = sub nsw i64 %i.as, %i.au                ; 2 uses
  %scevgep79 = getelementptr i8, ptr %i.p, i64 %i.av
  %scevgep81 = getelementptr i8, ptr %scevgep80, i64 %i.av
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %scevgep79, ptr align 1 %scevgep81, i64 %i.as, i1 false), !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph70.preheader, %.preheader
  %i.aw = trunc i32 %.050.i to i8
  store i8 %i.aw, ptr %i.p, align 4, !tbaa !13
  br label %decode_pixel.exit

bb.j:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.05875, i64 %indvars.iv85
  %i.ay = xor i32 %i.v, -1
  %i.az = add nsw i32 %5, %i.ay
  %i.ba = tail call fastcc i32 @decode_pixel_in_context(ptr noundef %0, ptr noundef %9, ptr noundef %i.ax, i64 noundef %7, i32 noundef %i.v, i32 noundef %.05576, i32 noundef %i.az)
  br label %decode_pixel.exit

decode_pixel.exit:                                ; preds = %bb.h, %._crit_edge, %.loopexit, %bb.j
  %.0 = phi i32 [ %i.ba, %bb.j ], [ %.050.i, %.loopexit ], [ %.050.i, %._crit_edge ], [ %i.ai, %bb.h ] ; 4 uses
  %i.bb = icmp slt i32 %.0, 0
  br i1 %i.bb, label %decode_pixel.exit.thread, label %bb.k

bb.k:                                             ; preds = %decode_pixel.exit
  %i.bc = trunc i32 %.0 to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.05875, i64 %indvars.iv85
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !13
  br i1 %.not62, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = zext nneg i32 %.0 to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.be ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !117
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = mul nuw nsw i64 %indvars.iv85, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %.05974, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store i8 %i.bh, ptr %i.bk, align 1, !tbaa !13
  %i.bl = load i32, ptr %i.bf, align 4, !tbaa !117
  %i.bm = lshr i32 %i.bl, 8
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !13
  %i.bp = load i32, ptr %i.bf, align 4, !tbaa !117
  %i.bq = lshr i32 %i.bp, 16
  %i.br = trunc i32 %i.bq to i8
  store i8 %i.br, ptr %i.bj, align 1, !tbaa !13
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  br i1 %exitcond89.not, label %._crit_edge73, label %bb.d, !llvm.loop !135

._crit_edge73:                                    ; preds = %bb.m
  %i.bs = getelementptr inbounds i8, ptr %.05875, i64 %7
  %i.bt = getelementptr inbounds i8, ptr %.05974, i64 %i.a
  %i.bu = add nuw nsw i32 %.05576, 1              ; 2 uses
  %exitcond90.not = icmp eq i32 %i.bu, %6
end_hunk_0
