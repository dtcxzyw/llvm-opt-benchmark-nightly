Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hdrdec?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"hdr\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"HDR (Radiance RGBE format) image\00", align 1
@ff_hdr_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 258, i32 4098, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 8, i8 0, i8 0, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, %union.anon { ptr @hdr_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"PIXASPECT=%f\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"-Y %d +X %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"+Y %d +X %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"-Y %d -X %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"+Y %d -X %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"-X %d +Y %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"+X %d +Y %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"-X %d -Y %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"+X %d -Y %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @hdr_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 28 uses
  %i.b = alloca i32, align 4                      ; 14 uses
  %i.c = alloca [512 x i8], align 16              ; 22 uses
  %i.d = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.i = icmp ne ptr %i.f, null
  %i.j = icmp sgt i32 %i.h, -1
  %or.cond.i = and i1 %i.i, %i.j
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 141) #8
  tail call void @abort() #9
  unreachable

bytestream2_init.exit:                            ; preds = %bb.a
  %i.k = zext nneg i32 %i.h to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k ; 31 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.c, i8 0, i64 512, i1 false)
  %i.m = ptrtoint ptr %i.l to i64                 ; 48 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bytestream2_init.exit
  %i.n = phi ptr [ %i.f, %bytestream2_init.exit ], [ %.sroa.0.14, %bb.f ] ; 3 uses
  %.0.i130 = phi i32 [ 0, %bytestream2_init.exit ], [ %.1.i, %bb.f ] ; 4 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.m, %i.o
  %i.q = icmp slt i64 %i.p, 1
  br i1 %i.q, label %bytestream2_get_byte.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.s = load i8, ptr %i.n, align 1, !tbaa !27
  %i.t = zext i8 %i.s to i32
  br label %bytestream2_get_byte.exit.i

bytestream2_get_byte.exit.i:                      ; preds = %bb.c, %bb.d
  %.sroa.0.14 = phi ptr [ %i.r, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  %.0.i.i = phi i32 [ %i.t, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.u = icmp slt i32 %.0.i130, 511
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bytestream2_get_byte.exit.i
  %i.v = trunc nuw i32 %.0.i.i to i8
  %i.w = add nsw i32 %.0.i130, 1
  %i.x = sext i32 %.0.i130 to i64
  %i.y = getelementptr inbounds i8, ptr %i.c, i64 %i.x
  store i8 %i.v, ptr %i.y, align 1, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bytestream2_get_byte.exit.i
  %.1.i = phi i32 [ %.0.i130, %bytestream2_get_byte.exit.i ], [ %i.w, %bb.e ]
  %i.z = ptrtoint ptr %.sroa.0.14 to i64
  %i.aa = sub i64 %i.m, %i.z
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = icmp ne i32 %.0.i.i, 10
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.c, label %hdr_get_line.exit, !llvm.loop !9

hdr_get_line.exit:                                ; preds = %bb.f
  %i.af = load i64, ptr %i.c, align 16
  %i.ag = xor i64 5638868765947084579, %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 3
  %i.ai = load i64, ptr %i.ah, align 1
  %i.aj = xor i64 740071717154145345, %i.ai
  %i.ak = or i64 %i.ag, %i.aj
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %hdr_get_line.exit
  %i.an = load i32, ptr %i.c, align 16
  %i.ao = xor i32 1196572451, %i.an
  %i.ap = getelementptr i8, ptr %i.c, i64 3
  %i.aq = load i32, ptr %i.ap, align 1
  %i.ar = xor i32 172311111, %i.aq
  %i.as = or i32 %i.ao, %i.ar
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %.not109 = icmp eq i32 %i.au, 0
  br i1 %.not109, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g, %hdr_get_line.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 124
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %bb.h
  %.sroa.0.0 = phi ptr [ %.sroa.0.14, %bb.h ], [ %.sroa.0.15, %bb.o ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.c, i8 0, i64 512, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %i.ax = phi ptr [ %.sroa.0.0, %bb.i ], [ %.sroa.0.15, %bb.m ] ; 3 uses
  %.0.i133 = phi i32 [ 0, %bb.i ], [ %.1.i137, %bb.m ] ; 4 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.m, %i.ay
  %i.ba = icmp slt i64 %i.az, 1
  br i1 %i.ba, label %bytestream2_get_byte.exit.i134, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bc = load i8, ptr %i.ax, align 1, !tbaa !27
  %i.bd = zext i8 %i.bc to i32
  br label %bytestream2_get_byte.exit.i134

bytestream2_get_byte.exit.i134:                   ; preds = %bb.j, %bb.k
  %.sroa.0.15 = phi ptr [ %i.bb, %bb.k ], [ %i.l, %bb.j ] ; 4 uses
  %.0.i.i135 = phi i32 [ %i.bd, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.be = icmp slt i32 %.0.i133, 511
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bytestream2_get_byte.exit.i134
  %i.bf = trunc nuw i32 %.0.i.i135 to i8
  %i.bg = add nsw i32 %.0.i133, 1
  %i.bh = sext i32 %.0.i133 to i64
  %i.bi = getelementptr inbounds i8, ptr %i.c, i64 %i.bh
  store i8 %i.bf, ptr %i.bi, align 1, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bytestream2_get_byte.exit.i134
  %.1.i137 = phi i32 [ %.0.i133, %bytestream2_get_byte.exit.i134 ], [ %i.bg, %bb.l ]
  %i.bj = ptrtoint ptr %.sroa.0.15 to i64
  %i.bk = sub i64 %i.m, %i.bj
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = icmp sgt i32 %i.bl, 0
  %i.bn = icmp ne i32 %.0.i.i135, 10
  %i.bo = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %i.bo, label %bb.j, label %hdr_get_line.exit141, !llvm.loop !9

hdr_get_line.exit141:                             ; preds = %bb.m
  %i.bp = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.d) #8
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %hdr_get_line.exit141
  %i.br = load float, ptr %i.d, align 4, !tbaa !30
  %i.bs = fpext nsz float %i.br to double
  %i.bt = call i64 @av_d2q(double noundef %i.bs, i32 noundef 4096) #10 ; 2 uses
  %.sroa.01.0.insert.insert.i = call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 32) ; 2 uses
  store i64 %.sroa.01.0.insert.insert.i, ptr %i.aw, align 4, !tbaa !17
  store i64 %.sroa.01.0.insert.insert.i, ptr %i.av, align 8, !tbaa !17
  br label %bb.o

bb.o:                                             ; preds = %hdr_get_line.exit141, %bb.n
  %i.bu = load i8, ptr %i.c, align 16, !tbaa !27
  switch i8 %i.bu, label %bb.i [
    i8 10, label %bb.p
    i8 0, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.c, i8 0, i64 512, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.p
  %i.bv = phi ptr [ %.sroa.0.15, %bb.p ], [ %.sroa.0.16, %bb.t ] ; 3 uses
  %.0.i144 = phi i32 [ 0, %bb.p ], [ %.1.i148, %bb.t ] ; 4 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.m, %i.bw
  %i.by = icmp slt i64 %i.bx, 1
  br i1 %i.by, label %bytestream2_get_byte.exit.i145, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.ca = load i8, ptr %i.bv, align 1, !tbaa !27
  %i.cb = zext i8 %i.ca to i32
  br label %bytestream2_get_byte.exit.i145

bytestream2_get_byte.exit.i145:                   ; preds = %bb.q, %bb.r
  %.sroa.0.16 = phi ptr [ %i.bz, %bb.r ], [ %i.l, %bb.q ] ; 3 uses
  %.0.i.i146 = phi i32 [ %i.cb, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %i.cc = icmp slt i32 %.0.i144, 511
  br i1 %i.cc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bytestream2_get_byte.exit.i145
  %i.cd = trunc nuw i32 %.0.i.i146 to i8
  %i.ce = add nsw i32 %.0.i144, 1
  %i.cf = sext i32 %.0.i144 to i64
  %i.cg = getelementptr inbounds i8, ptr %i.c, i64 %i.cf
  store i8 %i.cd, ptr %i.cg, align 1, !tbaa !27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bytestream2_get_byte.exit.i145
  %.1.i148 = phi i32 [ %.0.i144, %bytestream2_get_byte.exit.i145 ], [ %i.ce, %bb.s ]
  %i.ch = ptrtoint ptr %.sroa.0.16 to i64
  %i.ci = sub i64 %i.m, %i.ch
  %i.cj = trunc i64 %i.ci to i32                  ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  %i.cl = icmp ne i32 %.0.i.i146, 10
  %i.cm = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %i.cm, label %bb.q, label %hdr_get_line.exit152, !llvm.loop !9

hdr_get_line.exit152:                             ; preds = %bb.t
  %i.cn = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #8
  %i.co = icmp eq i32 %i.cn, 2
  br i1 %i.co, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %hdr_get_line.exit152
  %i.cp = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #8
  %i.cq = icmp eq i32 %i.cp, 2
  br i1 %i.cq, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #8
  %i.cs = icmp eq i32 %i.cr, 2
  br i1 %i.cs, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #8
  %i.cu = icmp eq i32 %i.ct, 2
  br i1 %i.cu, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %i.cw = icmp eq i32 %i.cv, 2
  br i1 %i.cw, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cx = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %i.cy = icmp eq i32 %i.cx, 2
  br i1 %i.cy, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cz = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %i.da = icmp eq i32 %i.cz, 2
  br i1 %i.da, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.u, %bb.w, %bb.y, %bb.z, %bb.aa, %bb.x, %bb.v, %hdr_get_line.exit152
  %i.dc = load i32, ptr %i.b, align 4, !tbaa !17  ; 2 uses
  %i.dd = shl nsw i32 %i.dc, 2
  %i.de = icmp sgt i32 %i.dd, %i.cj
  br i1 %i.de, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = load i32, ptr %i.a, align 4, !tbaa !17
  %i.dg = call i32 @ff_set_dimensions(ptr noundef %0, i32 noundef %i.df, i32 noundef %i.dc) #8 ; 2 uses
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 175, ptr %i.di, align 8, !tbaa !43
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !44
  %i.dl = icmp sgt i32 %i.dk, 47
  br i1 %i.dl, label %.loopexit.sink.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dm = call i32 @ff_thread_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #8 ; 2 uses
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %.loopexit, label %.preheader307

.preheader307:                                    ; preds = %bb.ae
  %i.do = load i32, ptr %i.b, align 4, !tbaa !17
  %.not118326 = icmp sgt i32 %i.do, 0
  br i1 %.not118326, label %.lr.ph329, label %.thread286

.lr.ph329:                                        ; preds = %.preheader307
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.pre = load i32, ptr %i.a, align 4, !tbaa !17
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph329, %decompress.exit
  %i.du = phi i32 [ %.pre, %.lr.ph329 ], [ %i.rn, %decompress.exit ] ; 4 uses
  %.092328 = phi i32 [ 0, %.lr.ph329 ], [ %i.sg, %decompress.exit ] ; 9 uses
  %.sroa.0.1327 = phi ptr [ %.sroa.0.16, %.lr.ph329 ], [ %.sroa.0.6, %decompress.exit ] ; 7 uses
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !45
  %i.dw = load i32, ptr %i.dr, align 8, !tbaa !17
  %i.dx = mul nsw i32 %i.dw, %.092328
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %i.dv, i64 %i.dy
  %i.ea = load ptr, ptr %1, align 8, !tbaa !45    ; 4 uses
  %i.eb = load i32, ptr %i.dq, align 8, !tbaa !17
  %i.ec = mul i32 %i.eb, %.092328
  %i.ed = sext i32 %i.ec to i64                   ; 4 uses
  %i.ee = getelementptr inbounds i8, ptr %i.ea, i64 %i.ed ; 11 uses
  %i.ef = load ptr, ptr %i.ds, align 8, !tbaa !45
  %i.eg = load i32, ptr %i.dt, align 4, !tbaa !17
  %i.eh = mul nsw i32 %i.eg, %.092328
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 %i.ei
  %i.ek = add i32 %i.du, -32768
  %or.cond = icmp ult i32 %i.ek, -32760
  br i1 %or.cond, label %bb.ag, label %bb.ap

bb.ag:                                            ; preds = %bb.af
  %i.el = icmp sgt i32 %i.du, 0
  br i1 %i.el, label %.lr.ph53.i.preheader, label %decompress.exit.threadthread-pre-split

.lr.ph53.i.preheader:                             ; preds = %bb.ag
  %scevgep527 = getelementptr i8, ptr %i.ea, i64 -4
  %scevgep528 = getelementptr i8, ptr %scevgep527, i64 %i.ed
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.preheader, %bb.ao
  %.sroa.0.17 = phi ptr [ %.sroa.0.21, %bb.ao ], [ %.sroa.0.1327, %.lr.ph53.i.preheader ] ; 3 uses
  %.03251.i = phi i32 [ %.1.i155, %bb.ao ], [ 0, %.lr.ph53.i.preheader ] ; 3 uses
  %.03450.i.idx = phi i64 [ %.2.i.idx, %bb.ao ], [ 0, %.lr.ph53.i.preheader ] ; 6 uses
  %.03649.i = phi i32 [ %.238.i, %bb.ao ], [ %i.du, %.lr.ph53.i.preheader ] ; 3 uses
  %.03450.i.ptr = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.03450.i.idx ; 4 uses
  %i.em = ptrtoint ptr %.sroa.0.17 to i64
  %i.en = sub i64 %i.m, %i.em                     ; 2 uses
  %i.eo = trunc i64 %i.en to i32
  %i.ep = icmp slt i32 %i.eo, 4
  br i1 %i.ep, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph53.i
  %i.eq = icmp slt i64 %i.en, 1
  br i1 %i.eq, label %bytestream2_get_byte.exit44.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.17, i64 1 ; 2 uses
  %i.es = load i8, ptr %.sroa.0.17, align 1, !tbaa !27
  %.pre369 = ptrtoint ptr %i.er to i64
  br label %bytestream2_get_byte.exit44.i

bytestream2_get_byte.exit44.i:                    ; preds = %bb.ah, %bb.ai
  %.pre-phi = phi i64 [ %i.m, %bb.ah ], [ %.pre369, %bb.ai ]
  %.sroa.0.18 = phi ptr [ %i.l, %bb.ah ], [ %i.er, %bb.ai ] ; 2 uses
  %.0.i43.i = phi i8 [ 0, %bb.ah ], [ %i.es, %bb.ai ] ; 2 uses
  store i8 %.0.i43.i, ptr %.03450.i.ptr, align 1, !tbaa !27
  %i.et = sub i64 %i.m, %.pre-phi
  %i.eu = icmp slt i64 %i.et, 1
  br i1 %i.eu, label %bytestream2_get_byte.exit42.i, label %bb.aj

bb.aj:                                            ; preds = %bytestream2_get_byte.exit44.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.18, i64 1 ; 2 uses
  %i.ew = load i8, ptr %.sroa.0.18, align 1, !tbaa !27
  %.pre370 = ptrtoint ptr %i.ev to i64
  br label %bytestream2_get_byte.exit42.i

bytestream2_get_byte.exit42.i:                    ; preds = %bytestream2_get_byte.exit44.i, %bb.aj
  %.pre-phi371 = phi i64 [ %i.m, %bytestream2_get_byte.exit44.i ], [ %.pre370, %bb.aj ]
  %.sroa.0.19 = phi ptr [ %i.l, %bytestream2_get_byte.exit44.i ], [ %i.ev, %bb.aj ] ; 2 uses
  %.0.i41.i = phi i8 [ 0, %bytestream2_get_byte.exit44.i ], [ %i.ew, %bb.aj ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.03450.i.ptr, i64 1
  store i8 %.0.i41.i, ptr %i.ex, align 1, !tbaa !27
  %i.ey = sub i64 %i.m, %.pre-phi371
  %i.ez = icmp slt i64 %i.ey, 1
  br i1 %i.ez, label %bytestream2_get_byte.exit40.i, label %bb.ak

bb.ak:                                            ; preds = %bytestream2_get_byte.exit42.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.19, i64 1 ; 2 uses
  %i.fb = load i8, ptr %.sroa.0.19, align 1, !tbaa !27
  %.pre372 = ptrtoint ptr %i.fa to i64
  br label %bytestream2_get_byte.exit40.i

bytestream2_get_byte.exit40.i:                    ; preds = %bytestream2_get_byte.exit42.i, %bb.ak
  %.pre-phi373 = phi i64 [ %i.m, %bytestream2_get_byte.exit42.i ], [ %.pre372, %bb.ak ]
  %.sroa.0.20 = phi ptr [ %i.l, %bytestream2_get_byte.exit42.i ], [ %i.fa, %bb.ak ] ; 2 uses
  %.0.i39.i = phi i8 [ 0, %bytestream2_get_byte.exit42.i ], [ %i.fb, %bb.ak ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.03450.i.ptr, i64 2
  store i8 %.0.i39.i, ptr %i.fc, align 1, !tbaa !27
  %i.fd = sub i64 %i.m, %.pre-phi373
  %i.fe = icmp slt i64 %i.fd, 1
  br i1 %i.fe, label %bytestream2_get_byte.exit.i153, label %bb.al

bb.al:                                            ; preds = %bytestream2_get_byte.exit40.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.20, i64 1
  %i.fg = load i8, ptr %.sroa.0.20, align 1, !tbaa !27
  %i.fh = zext i8 %i.fg to i32
  br label %bytestream2_get_byte.exit.i153

bytestream2_get_byte.exit.i153:                   ; preds = %bytestream2_get_byte.exit40.i, %bb.al
  %.sroa.0.21 = phi ptr [ %i.ff, %bb.al ], [ %i.l, %bytestream2_get_byte.exit40.i ] ; 3 uses
  %.0.i.i154 = phi i32 [ %i.fh, %bb.al ], [ 0, %bytestream2_get_byte.exit40.i ] ; 3 uses
  %i.fi = trunc nuw i32 %.0.i.i154 to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %.03450.i.ptr, i64 3
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !27
  %i.fk = icmp eq i8 %.0.i43.i, 1
  %i.fl = icmp eq i8 %.0.i41.i, 1
  %or.cond288 = select i1 %i.fk, i1 %i.fl, i1 false
  %i.fm = icmp eq i8 %.0.i39.i, 1
  %or.cond289 = select i1 %or.cond288, i1 %i.fm, i1 false
  br i1 %or.cond289, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bytestream2_get_byte.exit.i153
  %i.fn = icmp ne i32 %.0.i.i154, 0
  %i.fo = icmp sgt i64 %.03450.i.idx, 3
  %i.fp = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %i.fp, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.am
  %i.fq = shl nuw nsw i32 %.0.i.i154, %.03251.i
  %scevgep529 = getelementptr i8, ptr %scevgep528, i64 %.03450.i.idx
  %load_initial530 = load i32, ptr %scevgep529, align 1
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.am
  %.137.lcssa.i = phi i32 [ %.03649.i, %bb.am ], [ %i.ft, %.lr.ph.i ]
  %.135.lcssa.i.idx = phi i64 [ %.03450.i.idx, %bb.am ], [ %.13546.i.add, %.lr.ph.i ]
  %i.fr = add nsw i32 %.03251.i, 8
  %i.fs = icmp sgt i32 %.03251.i, 8
  br i1 %i.fs, label %decompress.exit.threadthread-pre-split, label %bb.ao

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.047.i = phi i32 [ %i.fu, %.lr.ph.i ], [ %i.fq, %.lr.ph.preheader.i ] ; 2 uses
  %.13546.i.idx = phi i64 [ %.13546.i.add, %.lr.ph.i ], [ %.03450.i.idx, %.lr.ph.preheader.i ] ; 2 uses
  %.13745.i = phi i32 [ %i.ft, %.lr.ph.i ], [ %.03649.i, %.lr.ph.preheader.i ]
  %.13546.i.ptr = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.13546.i.idx
  store i32 %load_initial530, ptr %.13546.i.ptr, align 1
  %.13546.i.add = add nuw nsw i64 %.13546.i.idx, 4 ; 2 uses
  %i.ft = add nsw i32 %.13745.i, -1               ; 3 uses
  %i.fu = add nsw i32 %.047.i, -1
  %i.fv = icmp samesign ugt i32 %.047.i, 1
  %i.fw = icmp ne i32 %i.ft, 0
  %or.cond.i156 = select i1 %i.fv, i1 %i.fw, i1 false
  br i1 %or.cond.i156, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !10

bb.an:                                            ; preds = %bytestream2_get_byte.exit.i153
  %.03450.i.add = add nuw nsw i64 %.03450.i.idx, 4
  %i.fx = add nsw i32 %.03649.i, -1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge.i
  %.238.i = phi i32 [ %.137.lcssa.i, %._crit_edge.i ], [ %i.fx, %bb.an ] ; 2 uses
  %.2.i.idx = phi i64 [ %.135.lcssa.i.idx, %._crit_edge.i ], [ %.03450.i.add, %bb.an ]
  %.1.i155 = phi i32 [ %i.fr, %._crit_edge.i ], [ 0, %bb.an ]
  %i.fy = icmp sgt i32 %.238.i, 0
  br i1 %i.fy, label %.lr.ph53.i, label %decompress.exit.threadthread-pre-split, !llvm.loop !11

bb.ap:                                            ; preds = %bb.af
  %i.fz = ptrtoint ptr %.sroa.0.1327 to i64
  %i.ga = sub i64 %i.m, %i.fz
  %i.gb = icmp slt i64 %i.ga, 1
  br i1 %i.gb, label %.lr.ph53.i158, label %bytestream2_peek_byte.exit

bytestream2_peek_byte.exit:                       ; preds = %bb.ap
  %i.gc = load i8, ptr %.sroa.0.1327, align 1, !tbaa !27
  %.not110 = icmp eq i8 %i.gc, 2
  br i1 %.not110, label %bb.az, label %.lr.ph53.i158

.lr.ph53.i158:                                    ; preds = %bb.ap, %bytestream2_peek_byte.exit
  %scevgep522 = getelementptr i8, ptr %i.ea, i64 -4
  %scevgep523 = getelementptr i8, ptr %scevgep522, i64 %i.ed
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ay, %.lr.ph53.i158
  %.sroa.0.23 = phi ptr [ %.sroa.0.1327, %.lr.ph53.i158 ], [ %.sroa.0.27, %bb.ay ] ; 3 uses
  %.03251.i159 = phi i32 [ 0, %.lr.ph53.i158 ], [ %.1.i172, %bb.ay ] ; 3 uses
  %.03450.i160.idx = phi i64 [ 0, %.lr.ph53.i158 ], [ %.2.i171.idx, %bb.ay ] ; 6 uses
  %.03649.i161 = phi i32 [ %i.du, %.lr.ph53.i158 ], [ %.238.i170, %bb.ay ] ; 3 uses
  %.03450.i160.ptr = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.03450.i160.idx ; 4 uses
  %i.gd = ptrtoint ptr %.sroa.0.23 to i64
  %i.ge = sub i64 %i.m, %i.gd                     ; 2 uses
end_hunk_0
begin_hunk_1_@hdr_decode_frame:bb.a
  %.sroa.0.8.3 = phi ptr [ %i.pf, %bb.ce ], [ %i.l, %bb.cd ] ; 2 uses
  %.0.i119.3 = phi i8 [ %i.pg, %bb.ce ], [ 0, %bb.cd ]
  %i.ph = getelementptr inbounds i8, ptr %i.ol, i64 %indvars.iv.3
  store i8 %.0.i119.3, ptr %i.ph, align 1, !tbaa !27
  %indvars.iv.next.3 = add nsw i64 %indvars.iv.3, 4
  %.not114.3 = icmp eq i32 %i.oy, 0
  br i1 %.not114.3, label %.thread.3, label %bb.cc, !llvm.loop !13

bb.cf:                                            ; preds = %bytestream2_get_byte.exit123.3
  %i.pi = ptrtoint ptr %i.or to i64
  %i.pj = sub i64 %i.m, %i.pi
  %i.pk = icmp slt i64 %i.pj, 1
  br i1 %i.pk, label %bytestream2_get_byte.exit121.3, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.0.3316.3, i64 2
  %i.pm = load i8, ptr %i.or, align 1, !tbaa !27
  br label %bytestream2_get_byte.exit121.3

bytestream2_get_byte.exit121.3:                   ; preds = %bb.cg, %bb.cf
  %.sroa.0.9.3 = phi ptr [ %i.pl, %bb.cg ], [ %i.l, %bb.cf ] ; 3 uses
  %.0.i120.3 = phi i8 [ %i.pm, %bb.cg ], [ 0, %bb.cf ]
  %i.pn = and i32 %i.ot, 127                      ; 3 uses
  %.not116312.3 = icmp eq i32 %i.pn, 0
  br i1 %.not116312.3, label %.thread.3, label %.lr.ph.preheader.3

.lr.ph.preheader.3:                               ; preds = %bytestream2_get_byte.exit121.3
  %i.po = sext i32 %.096317.3 to i64
  %i.pp = shl nuw nsw i32 %i.pn, 2
  %i.pq = add i32 %.096317.3, %i.pp
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.ch, %.lr.ph.preheader.3
  %indvars.iv345.3 = phi i64 [ %i.po, %.lr.ph.preheader.3 ], [ %indvars.iv.next346.3, %bb.ch ] ; 4 uses
  %.in330.3 = phi i32 [ %i.pn, %.lr.ph.preheader.3 ], [ %i.pu, %bb.ch ]
  %i.pr = load i32, ptr %i.a, align 4, !tbaa !17
  %i.ps = shl nsw i32 %i.pr, 2
  %i.pt = sext i32 %i.ps to i64
  %.not117.3 = icmp slt i64 %indvars.iv345.3, %i.pt
  br i1 %.not117.3, label %bb.ch, label %.thread.3.loopexit.split.loop.exit472

bb.ch:                                            ; preds = %.lr.ph.3
  %i.pu = add nsw i32 %.in330.3, -1               ; 2 uses
  %i.pv = getelementptr inbounds i8, ptr %i.ol, i64 %indvars.iv345.3
  store i8 %.0.i120.3, ptr %i.pv, align 1, !tbaa !27
  %indvars.iv.next346.3 = add nsw i64 %indvars.iv345.3, 4
  %.not116.3 = icmp eq i32 %i.pu, 0
  br i1 %.not116.3, label %.thread.3, label %.lr.ph.3, !llvm.loop !14

.thread.3.loopexit.split.loop.exit472:            ; preds = %.lr.ph.3
  %i.pw = trunc nsw i64 %indvars.iv345.3 to i32
  br label %.thread.3

.thread.3.loopexit436.split.loop.exit469:         ; preds = %bb.cc
  %i.px = trunc nsw i64 %indvars.iv.3 to i32
  br label %.thread.3

.thread.3:                                        ; preds = %bytestream2_get_byte.exit.3, %bb.ch, %.thread.3.loopexit436.split.loop.exit469, %.thread.3.loopexit.split.loop.exit472, %bytestream2_get_byte.exit121.3, %bb.cb, %bb.ca
  %.sroa.0.5.3 = phi ptr [ %.sroa.0.9.3, %bytestream2_get_byte.exit121.3 ], [ %i.l, %bb.ca ], [ %i.or, %bb.cb ], [ %.sroa.0.9.3, %.thread.3.loopexit.split.loop.exit472 ], [ %.sroa.0.9.3, %bb.ch ], [ %.sroa.0.4310.3, %.thread.3.loopexit436.split.loop.exit469 ], [ %.sroa.0.8.3, %bytestream2_get_byte.exit.3 ] ; 2 uses
  %.399.3 = phi i32 [ %.096317.3, %bytestream2_get_byte.exit121.3 ], [ %.096317.3, %bb.ca ], [ %.096317.3, %bb.cb ], [ %i.pw, %.thread.3.loopexit.split.loop.exit472 ], [ %i.pq, %bb.ch ], [ %i.px, %.thread.3.loopexit436.split.loop.exit469 ], [ %i.ox, %bytestream2_get_byte.exit.3 ] ; 2 uses
  %i.py = load i32, ptr %i.a, align 4, !tbaa !17  ; 2 uses
  %i.pz = shl nsw i32 %i.py, 2
  %i.qa = icmp slt i32 %.399.3, %i.pz
  br i1 %i.qa, label %.lr.ph318.3, label %decompress.exit.thread, !llvm.loop !12

.lr.ph502:                                        ; preds = %.lr.ph318.preheader, %.lr.ph318
  %i.qb = phi i64 [ %i.kj, %.lr.ph318 ], [ %i.io, %.lr.ph318.preheader ]
  %.sroa.0.3316501 = phi ptr [ %.sroa.0.5, %.lr.ph318 ], [ %.sroa.0.11, %.lr.ph318.preheader ] ; 3 uses
  %.096317500 = phi i32 [ %.399, %.lr.ph318 ], [ 0, %.lr.ph318.preheader ] ; 7 uses
  %i.qc = icmp slt i64 %i.qb, 1
  br i1 %i.qc, label %.thread, label %bytestream2_get_byte.exit123

bytestream2_get_byte.exit123:                     ; preds = %.lr.ph502
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.0.3316501, i64 1 ; 4 uses
  %i.qe = load i8, ptr %.sroa.0.3316501, align 1, !tbaa !27 ; 3 uses
  %i.qf = zext i8 %i.qe to i32                    ; 3 uses
  %i.qg = icmp ugt i8 %i.qe, -128
  br i1 %i.qg, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bytestream2_get_byte.exit123
  %i.qh = ptrtoint ptr %i.qd to i64
  %i.qi = sub i64 %i.m, %i.qh
  %i.qj = icmp slt i64 %i.qi, 1
  br i1 %i.qj, label %bytestream2_get_byte.exit121, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.0.3316501, i64 2
  %i.ql = load i8, ptr %i.qd, align 1, !tbaa !27
  br label %bytestream2_get_byte.exit121

bytestream2_get_byte.exit121:                     ; preds = %bb.ci, %bb.cj
  %.sroa.0.9 = phi ptr [ %i.qk, %bb.cj ], [ %i.l, %bb.ci ] ; 3 uses
  %.0.i120 = phi i8 [ %i.ql, %bb.cj ], [ 0, %bb.ci ]
  %i.qm = and i32 %i.qf, 127                      ; 3 uses
  %.not116312 = icmp eq i32 %i.qm, 0
  br i1 %.not116312, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bytestream2_get_byte.exit121
  %i.qn = sext i32 %.096317500 to i64
  %i.qo = shl nuw nsw i32 %i.qm, 2
  %i.qp = add i32 %.096317500, %i.qo
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ck
  %indvars.iv345 = phi i64 [ %i.qn, %.lr.ph.preheader ], [ %indvars.iv.next346, %bb.ck ] ; 4 uses
  %.in330 = phi i32 [ %i.qm, %.lr.ph.preheader ], [ %i.qt, %bb.ck ]
  %i.qq = load i32, ptr %i.a, align 4, !tbaa !17
  %i.qr = shl nsw i32 %i.qq, 2
  %i.qs = sext i32 %i.qr to i64
  %.not117 = icmp slt i64 %indvars.iv345, %i.qs
  br i1 %.not117, label %bb.ck, label %.thread.loopexit.split.loop.exit457

bb.ck:                                            ; preds = %.lr.ph
  %i.qt = add nsw i32 %.in330, -1                 ; 2 uses
  %i.qu = getelementptr inbounds i8, ptr %i.ik, i64 %indvars.iv345
  store i8 %.0.i120, ptr %i.qu, align 1, !tbaa !27
  %indvars.iv.next346 = add nsw i64 %indvars.iv345, 4
  %.not116 = icmp eq i32 %i.qt, 0
  br i1 %.not116, label %.thread, label %.lr.ph, !llvm.loop !14

bb.cl:                                            ; preds = %bytestream2_get_byte.exit123
  %.not113 = icmp eq i8 %i.qe, 0
  br i1 %.not113, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.cl
  %i.qv = sext i32 %.096317500 to i64
  %i.qw = shl nuw nsw i32 %i.qf, 2
  %i.qx = add i32 %.096317500, %i.qw
  br label %bb.cm

bb.cm:                                            ; preds = %.preheader, %bytestream2_get_byte.exit
  %indvars.iv = phi i64 [ %i.qv, %.preheader ], [ %indvars.iv.next, %bytestream2_get_byte.exit ] ; 4 uses
  %.in = phi i32 [ %i.qf, %.preheader ], [ %i.qy, %bytestream2_get_byte.exit ]
  %.sroa.0.4310 = phi ptr [ %i.qd, %.preheader ], [ %.sroa.0.8, %bytestream2_get_byte.exit ] ; 4 uses
  %i.qy = add nsw i32 %.in, -1                    ; 2 uses
  %i.qz = load i32, ptr %i.a, align 4, !tbaa !17
  %i.ra = shl nsw i32 %i.qz, 2
  %i.rb = sext i32 %i.ra to i64
  %.not115 = icmp slt i64 %indvars.iv, %i.rb
  br i1 %.not115, label %bb.cn, label %.thread.loopexit442.split.loop.exit454

bb.cn:                                            ; preds = %bb.cm
  %i.rc = ptrtoint ptr %.sroa.0.4310 to i64
  %i.rd = sub i64 %i.m, %i.rc
  %i.re = icmp slt i64 %i.rd, 1
  br i1 %i.re, label %bytestream2_get_byte.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.0.4310, i64 1
  %i.rg = load i8, ptr %.sroa.0.4310, align 1, !tbaa !27
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.cn, %bb.co
  %.sroa.0.8 = phi ptr [ %i.rf, %bb.co ], [ %i.l, %bb.cn ] ; 2 uses
  %.0.i119 = phi i8 [ %i.rg, %bb.co ], [ 0, %bb.cn ]
  %i.rh = getelementptr inbounds i8, ptr %i.ik, i64 %indvars.iv
  store i8 %.0.i119, ptr %i.rh, align 1, !tbaa !27
  %indvars.iv.next = add nsw i64 %indvars.iv, 4
  %.not114 = icmp eq i32 %i.qy, 0
  br i1 %.not114, label %.thread, label %bb.cm, !llvm.loop !13

.thread.loopexit.split.loop.exit457:              ; preds = %.lr.ph
  %i.ri = trunc nsw i64 %indvars.iv345 to i32
  br label %.thread

.thread.loopexit442.split.loop.exit454:           ; preds = %bb.cm
  %i.rj = trunc nsw i64 %indvars.iv to i32
  br label %.thread

.thread:                                          ; preds = %bytestream2_get_byte.exit, %bb.ck, %.thread.loopexit442.split.loop.exit454, %.thread.loopexit.split.loop.exit457, %bytestream2_get_byte.exit121, %.lr.ph502, %bb.cl
  %.sroa.0.5 = phi ptr [ %.sroa.0.9, %bytestream2_get_byte.exit121 ], [ %i.l, %.lr.ph502 ], [ %i.qd, %bb.cl ], [ %.sroa.0.9, %.thread.loopexit.split.loop.exit457 ], [ %.sroa.0.9, %bb.ck ], [ %.sroa.0.4310, %.thread.loopexit442.split.loop.exit454 ], [ %.sroa.0.8, %bytestream2_get_byte.exit ] ; 4 uses
  %.399 = phi i32 [ %.096317500, %bytestream2_get_byte.exit121 ], [ %.096317500, %.lr.ph502 ], [ %.096317500, %bb.cl ], [ %i.ri, %.thread.loopexit.split.loop.exit457 ], [ %i.qp, %bb.ck ], [ %i.rj, %.thread.loopexit442.split.loop.exit454 ], [ %i.qx, %bytestream2_get_byte.exit ] ; 2 uses
  %i.rk = load i32, ptr %i.a, align 4, !tbaa !17  ; 3 uses
  %i.rl = shl nsw i32 %i.rk, 2
  %i.rm = icmp slt i32 %.399, %i.rl
  br i1 %i.rm, label %.lr.ph318, label %.thread..critedge_crit_edge, !llvm.loop !12

decompress.exit.threadthread-pre-split:           ; preds = %bb.bl, %._crit_edge.i199, %.lr.ph318.3, %bb.ay, %._crit_edge.i173, %bb.ao, %._crit_edge.i, %.preheader303.preheader, %.critedge, %.critedge.1, %bb.ag, %.critedge.2
  %.sroa.0.6.ph = phi ptr [ %.sroa.0.27, %bb.ay ], [ %.sroa.0.21, %bb.ao ], [ %.sroa.0.3.lcssa.ph.1, %.critedge.1 ], [ %.sroa.0.3.lcssa.ph, %.critedge ], [ %.sroa.0.3316.3, %.lr.ph318.3 ], [ %.sroa.0.11, %.preheader303.preheader ], [ %.sroa.0.3.lcssa.ph.2, %.critedge.2 ], [ %.sroa.0.1327, %bb.ag ], [ %.sroa.0.21, %._crit_edge.i ], [ %.sroa.0.27, %._crit_edge.i173 ], [ %.sroa.0.33, %._crit_edge.i199 ], [ %.sroa.0.33, %bb.bl ]
  %.pr = load i32, ptr %i.a, align 4, !tbaa !17
  br label %decompress.exit.thread

decompress.exit.thread:                           ; preds = %.thread.3, %decompress.exit.threadthread-pre-split, %bb.bd
  %i.rn = phi i32 [ %.pr, %decompress.exit.threadthread-pre-split ], [ %i.is, %bb.bd ], [ %i.py, %.thread.3 ] ; 3 uses
  %.sroa.0.6 = phi ptr [ %.sroa.0.6.ph, %decompress.exit.threadthread-pre-split ], [ %.sroa.0.11, %bb.bd ], [ %.sroa.0.5.3, %.thread.3 ]
  %i.ro = icmp sgt i32 %i.rn, 0
  br i1 %i.ro, label %.lr.ph325, label %decompress.exit

.lr.ph325:                                        ; preds = %decompress.exit.thread
  %i.rp = load ptr, ptr %1, align 8, !tbaa !45
  %i.rq = load i32, ptr %i.dq, align 8, !tbaa !17
  %i.rr = mul nsw i32 %i.rq, %.092328
  %i.rs = sext i32 %i.rr to i64
  %i.rt = getelementptr inbounds i8, ptr %i.rp, i64 %i.rs
  %wide.trip.count = zext nneg i32 %i.rn to i64
  br label %bb.cp

bb.cp:                                            ; preds = %.lr.ph325, %convert.exit213
  %indvars.iv359 = phi i64 [ 0, %.lr.ph325 ], [ %indvars.iv.next360, %convert.exit213 ] ; 5 uses
  %i.ru = shl nuw nsw i64 %indvars.iv359, 2
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.ru ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rv, i64 3
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1 ; 2 uses
  %i.rw = icmp eq i8 %.sroa.6.0.copyload, 0
  br i1 %i.rw, label %convert.exit213, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.rx = zext i8 %.sroa.6.0.copyload to i32
  %i.ry = add nsw i32 %i.rx, -128                 ; 3 uses
  %.sroa.0.0.copyload = load i8, ptr %i.rv, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rv, i64 2
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rv, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %i.rz = uitofp i8 %.sroa.0.0.copyload to float
  %i.sa = fmul nnan nsz float %i.rz, 3.906250e-03
  %i.sb = call nsz float @llvm.ldexp.f32.i32(float %i.sa, i32 range(i32 -128, 128) %i.ry)
  %4 = uitofp i8 %.sroa.5.0.copyload to float
  %5 = fmul nnan nsz float %4, 3.906250e-03
  %6 = call nsz float @llvm.ldexp.f32.i32(float %5, i32 range(i32 -128, 128) %i.ry)
  %7 = uitofp i8 %.sroa.4.0.copyload to float
  %8 = fmul nnan nsz float %7, 3.906250e-03
  %i.sc = call nsz float @llvm.ldexp.f32.i32(float %8, i32 range(i32 -128, 128) %i.ry)
  br label %convert.exit213

convert.exit213:                                  ; preds = %bb.cp, %bb.cq
  %.sink362 = phi float [ %i.sb, %bb.cq ], [ 0.000000e+00, %bb.cp ]
  %.sink = phi float [ %6, %bb.cq ], [ 0.000000e+00, %bb.cp ]
  %.0.i212 = phi nsz float [ %i.sc, %bb.cq ], [ 0.000000e+00, %bb.cp ]
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv359
  store float %.sink362, ptr %i.sd, align 4, !tbaa !30
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv359
  store float %.sink, ptr %i.se, align 4, !tbaa !30
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv359
  store float %.0.i212, ptr %i.sf, align 4, !tbaa !30
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next360, %wide.trip.count
  br i1 %exitcond.not, label %decompress.exit, label %bb.cp, !llvm.loop !15

decompress.exit:                                  ; preds = %convert.exit213, %decompress.exit.thread
  %i.sg = add nuw nsw i32 %.092328, 1             ; 2 uses
  %i.sh = load i32, ptr %i.b, align 4, !tbaa !17
  %.not118 = icmp slt i32 %i.sg, %i.sh
  br i1 %.not118, label %bb.af, label %.thread286, !llvm.loop !16

.thread286:                                       ; preds = %decompress.exit, %.preheader307
  store i32 1, ptr %2, align 4, !tbaa !17
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.ad, %.thread286
  %i.si = load i32, ptr %i.g, align 8, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph53.i184, %bb.aq, %.lr.ph53.i, %.loopexit.sink.split, %bb.ae, %bb.ac, %bb.ab, %bb.g
  %.3 = phi i32 [ %i.dm, %bb.ae ], [ -1094995529, %bb.g ], [ -1094995529, %bb.ab ], [ -1094995529, %bb.aq ], [ %i.dg, %bb.ac ], [ -1094995529, %.lr.ph53.i ], [ %i.si, %.loopexit.sink.split ], [ -1094995529, %.lr.ph53.i184 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_d2q(double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ldexp.f32.i32(float, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind willreturn memory(none) }

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
!9 = distinct !{!9, !28}
!10 = distinct !{!10, !28}
!11 = distinct !{!11, !28}
!12 = distinct !{!12, !28}
!13 = distinct !{!13, !28}
!14 = distinct !{!14, !28}
!15 = distinct !{!15, !28}
!16 = distinct !{!16, !28}
!17 = !{!6, !6, i64 0}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!"p1 _ZTS11AVBufferRef", !18, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!"p1 omnipotent char", !18, i64 0}
!22 = !{!"p1 _ZTS16AVPacketSideData", !18, i64 0}
!23 = !{!"AVRational", !6, i64 0, !6, i64 4}
!24 = !{!"AVPacket", !19, i64 0, !20, i64 8, !20, i64 16, !21, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !22, i64 48, !6, i64 56, !20, i64 64, !20, i64 72, !18, i64 80, !19, i64 88, !23, i64 96}
!25 = !{!24, !21, i64 24}
!26 = !{!24, !6, i64 32}
!27 = !{!5, !5, i64 0}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"float", !5, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"p1 _ZTS7AVClass", !18, i64 0}
!32 = !{!"p1 _ZTS7AVCodec", !18, i64 0}
!33 = !{!"p1 _ZTS15AVCodecInternal", !18, i64 0}
!34 = !{!"p1 short", !18, i64 0}
!35 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !18, i64 16}
!36 = !{!"p1 _ZTS10RcOverride", !18, i64 0}
!37 = !{!"p1 _ZTS9AVHWAccel", !18, i64 0}
!38 = !{!"p1 _ZTS17AVCodecDescriptor", !18, i64 0}
!39 = !{!"p1 int", !18, i64 0}
!40 = !{!"any p2 pointer", !18, i64 0}
!41 = !{!"p2 _ZTS15AVFrameSideData", !40, i64 0}
!42 = !{!"AVCodecContext", !31, i64 0, !6, i64 8, !6, i64 12, !32, i64 16, !6, i64 24, !6, i64 28, !18, i64 32, !33, i64 40, !18, i64 48, !20, i64 56, !6, i64 64, !6, i64 68, !21, i64 72, !6, i64 80, !23, i64 84, !23, i64 92, !23, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !23, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !18, i64 184, !18, i64 192, !6, i64 200, !29, i64 204, !29, i64 208, !29, i64 212, !29, i64 216, !29, i64 220, !29, i64 224, !29, i64 228, !29, i64 232, !29, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !34, i64 288, !34, i64 296, !34, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !35, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !18, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !29, i64 428, !29, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !36, i64 456, !20, i64 464, !20, i64 472, !29, i64 480, !29, i64 484, !6, i64 488, !6, i64 492, !21, i64 496, !21, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !37, i64 536, !18, i64 544, !19, i64 552, !19, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !18, i64 672, !18, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !38, i64 728, !21, i64 736, !6, i64 744, !6, i64 748, !21, i64 752, !21, i64 760, !21, i64 768, !22, i64 776, !6, i64 784, !6, i64 788, !20, i64 792, !6, i64 800, !6, i64 804, !20, i64 808, !18, i64 816, !20, i64 824, !39, i64 832, !6, i64 840, !41, i64 848, !6, i64 856, !6, i64 860}
!43 = !{!42, !6, i64 136}
!44 = !{!42, !6, i64 704}
!45 = !{!21, !21, i64 0}
end_hunk_1
