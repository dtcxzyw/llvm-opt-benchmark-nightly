Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pcx?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.5 = private unnamed_addr constant [23 x i8] c"PCX data is corrupted\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"invalid PCX file\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"File is too short\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"image data possibly corrupted\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"expected palette after image data\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @pcx_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.GetByteContext, align 8     ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = icmp slt i32 %i.b, 128
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.2) #9
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 16 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %bytestream2_init.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 141) #9
  tail call void @abort() #10
  unreachable

bytestream2_init.exit:                            ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !34
  %i.g = zext nneg i32 %i.b to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !14
  %i.k = load i8, ptr %i.e, align 1, !tbaa !15
  %.not = icmp eq i8 %i.k, 10
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bytestream2_init.exit
  %i.l = load i8, ptr %i.j, align 1, !tbaa !15
  %i.m = icmp ugt i8 %i.l, 5
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bytestream2_init.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.3) #9
  br label %bb.av

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.p = load i8, ptr %i.n, align 1, !tbaa !15    ; 2 uses
  %i.q = zext i8 %i.p to i32                      ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.s = load i8, ptr %i.o, align 1, !tbaa !15    ; 3 uses
  %i.t = zext i8 %i.s to i32                      ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.v = load i16, ptr %i.r, align 1, !tbaa !15   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.x = load i16, ptr %i.u, align 1, !tbaa !15   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.z = load i16, ptr %i.w, align 1, !tbaa !15   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.ab = load i16, ptr %i.y, align 1, !tbaa !15  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  %i.ad = load i16, ptr %i.aa, align 1, !tbaa !15
  %i.ae = zext i16 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !48
  %i.ag = load i16, ptr %i.ac, align 1, !tbaa !15
  %i.ah = zext i16 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !49
  %i.aj = icmp ult i16 %i.z, %i.v
  %i.ak = icmp ult i16 %i.ab, %i.x
  %or.cond207 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond207, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4) #9
  br label %bb.av

bb.i:                                             ; preds = %bb.g
  %narrow = sub nuw i16 %i.z, %i.v                ; 2 uses
  %i.al = zext i16 %narrow to i32
  %i.am = add nuw nsw i32 %i.al, 1                ; 8 uses
  %narrow225 = sub nuw i16 %i.ab, %i.x
  %i.an = zext i16 %narrow225 to i32              ; 6 uses
  %i.ao = add nuw nsw i32 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 65
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 66
  %i.ar = load i8, ptr %i.ap, align 1, !tbaa !15
  %.fr256 = freeze i8 %i.ar                       ; 7 uses
  %i.as = zext i8 %.fr256 to i32                  ; 3 uses
  %i.at = load i16, ptr %i.aq, align 1, !tbaa !15 ; 4 uses
  %i.au = zext i16 %i.at to i32                   ; 2 uses
  %i.av = mul nuw nsw i32 %i.au, %i.as            ; 12 uses
  %i.aw = mul nuw nsw i32 %i.as, %i.t             ; 2 uses
  %i.ax = mul nuw i32 %i.aw, %i.am
  %i.ay = add nuw i32 %i.ax, 7
  %i.az = lshr i32 %i.ay, 3
  %i.ba = icmp samesign ult i32 %i.av, %i.az
  br i1 %i.ba, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not197 = icmp eq i8 %i.p, 0                   ; 2 uses
  br i1 %.not197, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %gepdiff = add nsw i32 %i.b, -68
  %i.bb = udiv i32 %gepdiff, %i.ao
  %i.bc = icmp samesign ugt i32 %i.av, %i.bb
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5) #9
  br label %bb.av

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bd = shl nuw nsw i32 %i.as, 8
  %i.be = or disjoint i32 %i.bd, %i.t
  %trunc = trunc nuw i32 %i.be to i16
  switch i16 %trunc, label %bb.o [
    i16 776, label %bb.p
    i16 264, label %bb.n
    i16 260, label %bb.n
    i16 258, label %bb.n
    i16 257, label %bb.n
    i16 1025, label %bb.n
    i16 769, label %bb.n
    i16 513, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #9
  br label %bb.av

bb.p:                                             ; preds = %bb.m, %bb.n
  %.sink = phi i32 [ 11, %bb.n ], [ 2, %bb.m ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink, ptr %i.bf, align 8, !tbaa !50
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  store ptr %i.bg, ptr %4, align 8, !tbaa !16
  %i.bh = tail call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %i.am, i32 noundef %i.ao) #9 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %bb.av, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #9 ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %bb.av, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 1, ptr %i.bl, align 8, !tbaa !55
  %i.bm = load ptr, ptr %1, align 8, !tbaa !14    ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !17
  %i.bp = sext i32 %i.bo to i64                   ; 5 uses
  %i.bq = add nuw nsw i32 %i.av, 64
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = tail call noalias ptr @av_malloc(i64 noundef %i.br) #9 ; 18 uses
  %.not198 = icmp eq ptr %i.bs, null
  br i1 %.not198, label %bb.av, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = icmp eq i8 %.fr256, 3
  %i.bu = icmp eq i8 %i.s, 8                      ; 3 uses
  %or.cond = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %or.cond, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %bb.s
  %i.bv = ptrtoint ptr %i.h to i64                ; 3 uses
  %.not37.i = icmp eq i16 %i.at, 0
  %i.bw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.bx = shl nuw nsw i32 %i.au, 1
  %i.by = zext i16 %i.at to i64
  %i.bz = zext nneg i32 %i.bx to i64
  %wide.trip.count291 = zext nneg i32 %i.am to i64 ; 2 uses
  %invariant.gep332 = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.by ; 3 uses
  %invariant.gep334 = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bz ; 3 uses
  %xtraiter377 = and i64 %wide.trip.count291, 1
  %i.ca = icmp eq i16 %i.z, %i.v
  %unroll_iter380 = and i64 %wide.trip.count291, 131070
  %lcmp.mod378.not = icmp eq i64 %xtraiter377, 0
  %lcmp.mod379 = trunc i32 %i.am to i1
  br label %bb.t

bb.t:                                             ; preds = %.preheader, %bb.aa
  %.0163255 = phi ptr [ %i.bm, %.preheader ], [ %i.eo, %bb.aa ] ; 10 uses
  %.0169254 = phi i32 [ 0, %.preheader ], [ %i.ep, %bb.aa ] ; 2 uses
  %i.cb = phi ptr [ %i.bg, %.preheader ], [ %i.dp, %bb.aa ] ; 5 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.bv, %i.cc                    ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = icmp slt i32 %i.ce, 1
  br i1 %i.cf, label %pcx_rle_decode.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not197, label %bb.z, label %.critedge2.preheader.i

.critedge2.preheader.i:                           ; preds = %bb.u
  br i1 %.not37.i, label %pcx_rle_decode.exit, label %.lr.ph36.i

.critedge2.loopexit.i:                            ; preds = %bytestream2_get_byte.exit.i, %.lr.ph.preheader.i
  %.123.lcssa.i = phi i32 [ %.02235.i, %bytestream2_get_byte.exit.i ], [ %i.dl, %.lr.ph.preheader.i ] ; 2 uses
  %i.cg = icmp ult i32 %.123.lcssa.i, %i.av
  br i1 %i.cg, label %.lr.ph36.i, label %pcx_rle_decode.exit.sink.split, !llvm.loop !0

.lr.ph36.i:                                       ; preds = %.critedge2.preheader.i, %.critedge2.loopexit.i
  %i.ch = phi ptr [ %i.cy, %.critedge2.loopexit.i ], [ %i.cb, %.critedge2.preheader.i ] ; 5 uses
  %.02235.i = phi i32 [ %.123.lcssa.i, %.critedge2.loopexit.i ], [ 0, %.critedge2.preheader.i ] ; 5 uses
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = sub i64 %i.bv, %i.ci                    ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %bb.v, label %pcx_rle_decode.exit.sink.split

bb.v:                                             ; preds = %.lr.ph36.i
  %i.cm = icmp slt i64 %i.cj, 1
  br i1 %i.cm, label %bytestream2_get_byte.exit.i, label %bytestream2_get_byte.exit29.i

bytestream2_get_byte.exit29.i:                    ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 4 uses
  %i.co = load i8, ptr %i.ch, align 1, !tbaa !15  ; 4 uses
  %i.cp = icmp ugt i8 %i.co, -65
  br i1 %i.cp, label %bb.w, label %bytestream2_get_byte.exit.i

bb.w:                                             ; preds = %bytestream2_get_byte.exit29.i
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = sub i64 %i.bv, %i.cq                    ; 2 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %bb.x, label %bytestream2_get_byte.exit.i

bb.x:                                             ; preds = %bb.w
  %i.cu = and i8 %i.co, 63                        ; 2 uses
  %i.cv = icmp slt i64 %i.cr, 1
  br i1 %i.cv, label %bytestream2_get_byte.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.cx = load i8, ptr %i.cn, align 1, !tbaa !15
  br label %bytestream2_get_byte.exit.i

bytestream2_get_byte.exit.i:                      ; preds = %bb.x, %bb.v, %bb.y, %bb.w, %bytestream2_get_byte.exit29.i
  %i.cy = phi ptr [ %i.cw, %bb.y ], [ %i.cn, %bb.w ], [ %i.cn, %bytestream2_get_byte.exit29.i ], [ %i.h, %bb.v ], [ %i.h, %bb.x ] ; 2 uses
  %.021.i = phi i8 [ %i.cu, %bb.y ], [ 1, %bb.w ], [ 1, %bytestream2_get_byte.exit29.i ], [ 1, %bb.v ], [ %i.cu, %bb.x ] ; 2 uses
  %.0.in.shrunk.i = phi i8 [ %i.cx, %bb.y ], [ %i.co, %bb.w ], [ %i.co, %bytestream2_get_byte.exit29.i ], [ 0, %bb.v ], [ 0, %bb.x ]
  %i.cz = icmp uge i32 %.02235.i, %i.av
  %.not2731.i = icmp eq i8 %.021.i, 0
  %or.cond32.i = or i1 %i.cz, %.not2731.i
  br i1 %or.cond32.i, label %.critedge2.loopexit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bytestream2_get_byte.exit.i
  %i.da = zext nneg i32 %.02235.i to i64          ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.bs, i64 %i.da
  %i.db = xor i32 %.02235.i, -1
  %i.dc = add nsw i32 %i.av, %i.db
  %i.dd = zext i32 %i.dc to i64
  %i.de = add nsw i8 %.021.i, -1
  %i.df = zext nneg i8 %i.de to i64               ; 2 uses
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 %i.df)
  %i.dg = add nuw nsw i64 %umin.i, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i, i8 %.0.in.shrunk.i, i64 range(i64 0, 64) %i.dg, i1 false), !tbaa !15
  %i.dh = xor i64 %i.da, -1
  %i.di = add nsw i64 %i.dh, %i.bw
  %umin = tail call i64 @llvm.umin.i64(i64 %i.di, i64 %i.df)
  %i.dj = trunc nuw nsw i64 %umin to i32
  %i.dk = add nuw nsw i32 %i.dj, 1
  %i.dl = add i32 %i.dk, %.02235.i
  br label %.critedge2.loopexit.i

bb.z:                                             ; preds = %bb.u
  %i.dm = tail call i64 @llvm.smin.i64(i64 %i.cd, i64 %i.bw)
  %i.dn = and i64 %i.dm, 2147483647               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr align 1 %i.cb, i64 %i.dn, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.dn
  br label %pcx_rle_decode.exit.sink.split

pcx_rle_decode.exit.sink.split:                   ; preds = %.critedge2.loopexit.i, %.lr.ph36.i, %bb.z
  %.sink337 = phi ptr [ %i.do, %bb.z ], [ %i.ch, %.lr.ph36.i ], [ %i.cy, %.critedge2.loopexit.i ] ; 2 uses
  store ptr %.sink337, ptr %4, align 8
  br label %pcx_rle_decode.exit

pcx_rle_decode.exit:                              ; preds = %pcx_rle_decode.exit.sink.split, %.critedge2.preheader.i
  %i.dp = phi ptr [ %i.cb, %.critedge2.preheader.i ], [ %.sink337, %pcx_rle_decode.exit.sink.split ]
  br i1 %i.ca, label %.epil.preheader376, label %pcx_rle_decode.exit.new

pcx_rle_decode.exit.new:                          ; preds = %pcx_rle_decode.exit, %pcx_rle_decode.exit.new
  %indvars.iv288 = phi i64 [ %indvars.iv.next289.1, %pcx_rle_decode.exit.new ], [ 0, %pcx_rle_decode.exit ] ; 6 uses
  %niter381 = phi i64 [ %niter381.next.1, %pcx_rle_decode.exit.new ], [ 0, %pcx_rle_decode.exit ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bs, i64 %indvars.iv288
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !15
  %i.ds = mul nuw nsw i64 %indvars.iv288, 3       ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0163255, i64 %i.ds
  store i8 %i.dr, ptr %i.dt, align 1, !tbaa !15
  %gep333 = getelementptr inbounds nuw i8, ptr %invariant.gep332, i64 %indvars.iv288
  %i.du = load i8, ptr %gep333, align 1, !tbaa !15
  %5 = getelementptr inbounds nuw i8, ptr %.0163255, i64 %i.ds
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !15
  %gep335 = getelementptr inbounds nuw i8, ptr %invariant.gep334, i64 %indvars.iv288
  %i.dw = load i8, ptr %gep335, align 1, !tbaa !15
  %6 = getelementptr inbounds nuw i8, ptr %.0163255, i64 %i.ds
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !15
  %indvars.iv.next289 = or disjoint i64 %indvars.iv288, 1 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bs, i64 %indvars.iv.next289
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !15
  %i.ea = mul nuw nsw i64 %indvars.iv.next289, 3  ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0163255, i64 %i.ea
  store i8 %i.dz, ptr %i.eb, align 1, !tbaa !15
  %gep333.1 = getelementptr inbounds nuw i8, ptr %invariant.gep332, i64 %indvars.iv.next289
  %i.ec = load i8, ptr %gep333.1, align 1, !tbaa !15
  %7 = getelementptr inbounds nuw i8, ptr %.0163255, i64 %i.ea
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !15
  %gep335.1 = getelementptr inbounds nuw i8, ptr %invariant.gep334, i64 %indvars.iv.next289
  %i.ee = load i8, ptr %gep335.1, align 1, !tbaa !15
  %8 = getelementptr inbounds nuw i8, ptr %.0163255, i64 %i.ea
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !15
  %indvars.iv.next289.1 = add nuw nsw i64 %indvars.iv288, 2 ; 2 uses
  %niter381.next.1 = add i64 %niter381, 2         ; 2 uses
  %niter381.ncmp.1 = icmp eq i64 %niter381.next.1, %unroll_iter380
  br i1 %niter381.ncmp.1, label %.unr-lcssa375, label %pcx_rle_decode.exit.new, !llvm.loop !19

.unr-lcssa375:                                    ; preds = %pcx_rle_decode.exit.new
  br i1 %lcmp.mod378.not, label %bb.aa, label %.epil.preheader376

.epil.preheader376:                               ; preds = %.unr-lcssa375, %pcx_rle_decode.exit
  %indvars.iv288.epil.init = phi i64 [ 0, %pcx_rle_decode.exit ], [ %indvars.iv.next289.1, %.unr-lcssa375 ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod379)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bs, i64 %indvars.iv288.epil.init
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !15
  %i.ei = mul nuw nsw i64 %indvars.iv288.epil.init, 3 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0163255, i64 %i.ei
  store i8 %i.eh, ptr %i.ej, align 1, !tbaa !15
  %gep333.epil = getelementptr inbounds nuw i8, ptr %invariant.gep332, i64 %indvars.iv288.epil.init
  %i.ek = load i8, ptr %gep333.epil, align 1, !tbaa !15
  %9 = getelementptr inbounds nuw i8, ptr %.0163255, i64 %i.ei
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 1
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !15
  %gep335.epil = getelementptr inbounds nuw i8, ptr %invariant.gep334, i64 %indvars.iv288.epil.init
  %i.em = load i8, ptr %gep335.epil, align 1, !tbaa !15
  %10 = getelementptr inbounds nuw i8, ptr %.0163255, i64 %i.ei
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 2
  store i8 %i.em, ptr %i.en, align 1, !tbaa !15
  br label %bb.aa

bb.aa:                                            ; preds = %.unr-lcssa375, %.epil.preheader376
  %i.eo = getelementptr inbounds i8, ptr %.0163255, i64 %i.bp
  %i.ep = add nuw nsw i32 %.0169254, 1
  %exitcond293.not = icmp eq i32 %.0169254, %i.an
  br i1 %exitcond293.not, label %.thread219, label %bb.t, !llvm.loop !20

bb.ab:                                            ; preds = %bb.s
  %i.eq = icmp eq i8 %.fr256, 1                   ; 2 uses
  %or.cond3 = select i1 %i.eq, i1 %i.bu, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.er = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.es = add nsw i32 %i.er, -769                 ; 2 uses
  %i.et = icmp slt i32 %i.er, 769
  br i1 %i.et, label %bb.ad, label %.preheader229

.preheader229:                                    ; preds = %bb.ac
  %i.eu = zext nneg i32 %i.am to i64
  br label %bb.af

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7) #9
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !56
  %i.ex = and i32 %i.ew, 8
  %.not205 = icmp eq i32 %i.ex, 0
  br i1 %.not205, label %bb.ae, label %pcx_rle_decode.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ey = load i32, ptr %i.a, align 8, !tbaa !32
  br label %pcx_rle_decode.exit.thread

bb.af:                                            ; preds = %.preheader229, %bb.ag
  %.1164251 = phi ptr [ %i.bm, %.preheader229 ], [ %i.fc, %bb.ag ] ; 2 uses
  %.1170250 = phi i32 [ 0, %.preheader229 ], [ %i.fb, %bb.ag ] ; 2 uses
  %i.ez = call fastcc i32 @pcx_rle_decode(ptr noundef %4, ptr noundef %i.bs, i32 noundef %i.av, i32 noundef %i.q) ; 2 uses
  %i.fa = icmp slt i32 %i.ez, 0
  br i1 %i.fa, label %pcx_rle_decode.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.1164251, ptr noundef nonnull align 1 dereferenceable(1) %i.bs, i64 %i.eu, i1 false)
  %i.fb = add nuw nsw i32 %.1170250, 1
  %i.fc = getelementptr inbounds i8, ptr %.1164251, i64 %i.bp
  %exitcond287.not = icmp eq i32 %.1170250, %i.an
  br i1 %exitcond287.not, label %bb.ah, label %bb.af, !llvm.loop !21

bb.ah:                                            ; preds = %bb.ag
  %i.fd = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.fe = load ptr, ptr %i.f, align 8, !tbaa !34  ; 2 uses
  %i.ff = ptrtoint ptr %i.fd to i64               ; 2 uses
  %i.fg = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = trunc i64 %i.fh to i32
  %.not202 = icmp eq i32 %i.es, %i.fi
  br i1 %.not202, label %._crit_edge, label %bb.ai

._crit_edge:                                      ; preds = %bb.ah
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !13
  %.pre294 = ptrtoint ptr %.pre to i64
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.8) #9
  %i.fj = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.fk = ptrtoint ptr %i.fj to i64               ; 2 uses
  %i.fl = sub i64 %i.fk, %i.fg
  %i.fm = trunc i64 %i.fl to i32
  %..i = tail call i32 @llvm.smin.i32(i32 %i.es, i32 %i.fm)
  %i.fn = sext i32 %..i to i64
  %i.fo = getelementptr inbounds i8, ptr %i.fe, i64 %i.fn ; 2 uses
  %.pre295 = ptrtoint ptr %i.fo to i64
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge, %bb.ai
  %.pre-phi296 = phi i64 [ %i.ff, %._crit_edge ], [ %.pre295, %bb.ai ]
  %.pre-phi = phi i64 [ %.pre294, %._crit_edge ], [ %i.fk, %bb.ai ]
  %i.fp = phi ptr [ %i.fd, %._crit_edge ], [ %i.fo, %bb.ai ] ; 2 uses
  %i.fq = sub i64 %.pre-phi, %.pre-phi296
  %i.fr = icmp slt i64 %i.fq, 1
  br i1 %i.fr, label %bytestream2_get_byte.exit.thread, label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.aj
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  store ptr %i.fs, ptr %4, align 8, !tbaa !14
  %i.ft = load i8, ptr %i.fp, align 1, !tbaa !15
  %.not203 = icmp eq i8 %i.ft, 12
  br i1 %.not203, label %.thread219, label %bytestream2_get_byte.exit.thread

bytestream2_get_byte.exit.thread:                 ; preds = %bb.aj, %bytestream2_get_byte.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.9) #9
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !56
  %i.fw = and i32 %i.fv, 8
  %.not204 = icmp eq i32 %i.fw, 0
  br i1 %.not204, label %bb.ak, label %pcx_rle_decode.exit.thread

bb.ak:                                            ; preds = %bytestream2_get_byte.exit.thread
  %i.fx = load i32, ptr %i.a, align 8, !tbaa !32
  br label %pcx_rle_decode.exit.thread

bb.al:                                            ; preds = %bb.ab
  br i1 %i.eq, label %.preheader232, label %.preheader236

.preheader236:                                    ; preds = %bb.al
  %.not257 = icmp eq i8 %.fr256, 0
  br i1 %.not257, label %.preheader236.split.preheader, label %.preheader236.split.us.preheader

.preheader236.split.us.preheader:                 ; preds = %.preheader236
  %i.fy = zext i8 %.fr256 to i64                  ; 3 uses
  %i.fz = zext i16 %i.at to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.am to i64
  %xtraiter = and i64 %i.fy, 1
  %unroll_iter = and i64 %i.fy, 254
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod369 = trunc i8 %.fr256 to i1
  br label %.preheader236.split.us

.preheader236.split.preheader:                    ; preds = %.preheader236
  %i.ga = zext i16 %narrow to i64
  %i.gb = add nuw nsw i64 %i.ga, 1
  br label %.preheader236.split

.preheader236.split.us:                           ; preds = %.preheader236.split.us.preheader, %.split.us.us
  %.3245.us = phi ptr [ %i.hg, %.split.us.us ], [ %i.bm, %.preheader236.split.us.preheader ] ; 2 uses
  %.3172244.us = phi i32 [ %i.hh, %.split.us.us ], [ 0, %.preheader236.split.us.preheader ] ; 2 uses
  %i.gc = call fastcc i32 @pcx_rle_decode(ptr noundef %4, ptr noundef %i.bs, i32 noundef %i.av, i32 noundef %i.q) ; 2 uses
  %i.gd = icmp slt i32 %i.gc, 0
  br i1 %i.gd, label %pcx_rle_decode.exit.thread, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.preheader236.split.us, %._crit_edge.us.us
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %._crit_edge.us.us ], [ 0, %.preheader236.split.us ] ; 4 uses
  %i.ge = trunc nuw nsw i64 %indvars.iv273 to i32
  %i.gf = and i32 %i.ge, 7
  %i.gg = lshr exact i32 128, %i.gf               ; 3 uses
  %i.gh = lshr i64 %indvars.iv273, 3
  %i.gi = and i64 %i.gh, 536870911
  %invariant.gep = getelementptr i8, ptr %i.bs, i64 %i.gi ; 3 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %i.fy, %.lr.ph.us.us ], [ %indvars.iv.next.1, %bb.am ] ; 2 uses
  %.0242.us.us = phi i8 [ 0, %.lr.ph.us.us ], [ %i.gw, %bb.am ]
  %niter = phi i64 [ 0, %.lr.ph.us.us ], [ %niter.next.1, %bb.am ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.gj = mul nuw nsw i64 %indvars.iv.next, %i.fz
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.gj
  %i.gk = load i8, ptr %gep, align 1, !tbaa !15
  %i.gl = zext i8 %i.gk to i32
  %i.gm = and i32 %i.gg, %i.gl
  %.not382 = icmp eq i32 %i.gm, 0
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 3 uses
  %i.gn = shl i8 %.0242.us.us, 2
  %i.go = select i1 %.not382, i8 0, i8 2
  %i.gp = or disjoint i8 %i.gn, %i.go
  %i.gq = mul nuw nsw i64 %indvars.iv.next.1, %i.fz
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.gq
  %i.gr = load i8, ptr %gep.1, align 1, !tbaa !15
  %i.gs = zext i8 %i.gr to i32
  %i.gt = and i32 %i.gg, %i.gs
  %i.gu = icmp ne i32 %i.gt, 0
  %i.gv = zext i1 %i.gu to i8
  %i.gw = or disjoint i8 %i.gp, %i.gv             ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.us.us.unr-lcssa, label %bb.am, !llvm.loop !22

._crit_edge.us.us.unr-lcssa:                      ; preds = %bb.am
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod369)
  %indvars.iv.next.epil = add nsw i64 %indvars.iv.next.1, -1
  %i.gx = shl i8 %i.gw, 1
  %i.gy = mul nuw nsw i64 %indvars.iv.next.epil, %i.fz
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %i.gy
  %i.gz = load i8, ptr %gep.epil, align 1, !tbaa !15
  %i.ha = zext i8 %i.gz to i32
  %i.hb = and i32 %i.gg, %i.ha
  %i.hc = icmp ne i32 %i.hb, 0
  %i.hd = zext i1 %i.hc to i8
  %i.he = or disjoint i8 %i.gx, %i.hd
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.epil.preheader
  %.lcssa365 = phi i8 [ %i.gw, %._crit_edge.us.us.unr-lcssa ], [ %i.he, %.epil.preheader ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.3245.us, i64 %indvars.iv273
  store i8 %.lcssa365, ptr %i.hf, align 1, !tbaa !15
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count
  br i1 %exitcond.not, label %.split.us.us, label %.lr.ph.us.us, !llvm.loop !23

.split.us.us:                                     ; preds = %._crit_edge.us.us
  %i.hg = getelementptr inbounds i8, ptr %.3245.us, i64 %i.bp
  %i.hh = add nuw nsw i32 %.3172244.us, 1
  %exitcond276.not = icmp eq i32 %.3172244.us, %i.an
  br i1 %exitcond276.not, label %.thread219, label %.preheader236.split.us, !llvm.loop !24
end_hunk_0
