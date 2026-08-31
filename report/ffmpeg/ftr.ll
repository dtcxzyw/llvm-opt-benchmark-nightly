Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ftr?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%struct.GetBitContext = type { ptr, i32, i32, i32 }
%struct.AACADTSHeaderInfo = type { i32, i32, i32, i8, i8, i8, i8, i8, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ftr\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"FTR Voice\00", align 1
@ff_ftr_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86116, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 536, ptr null, ptr null, ptr null, ptr @ftr_init, %union.anon { ptr @ftr_decode_frame }, ptr @ftr_close, ptr @ftr_flush, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Error submitting a packet for decoding\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @ftr_init(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29
  %i.e = add i32 %i.d, -65
  %or.cond = icmp ult i32 %i.e, -64
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @av_packet_alloc() #6      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 520
  store ptr %i.f, ptr %i.g, align 8, !tbaa !30
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @av_frame_alloc() #6       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 528
  store ptr %i.h, ptr %i.i, align 8, !tbaa !34
  %.not33 = icmp eq ptr %i.h, null
  br i1 %.not33, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.c, align 4, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 3 uses
  store i32 %i.j, ptr %i.k, align 8, !tbaa !35
  %i.l = tail call ptr @avcodec_find_decoder(i32 noundef 86018) #6 ; 3 uses
  %.not34 = icmp eq ptr %i.l, null
  br i1 %.not34, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.m = load i32, ptr %i.k, align 8, !tbaa !35
  %.not3639 = icmp sgt i32 %i.m, 0
  br i1 %.not3639, label %.lr.ph, label %._crit_edge

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load i32, ptr %i.k, align 8, !tbaa !35
  %i.o = sext i32 %i.n to i64
  %.not36 = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %.not36, label %.lr.ph, label %._crit_edge, !llvm.loop !36

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %i.p = tail call ptr @avcodec_alloc_context3(ptr noundef nonnull %i.l) #6 ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store ptr %i.p, ptr %i.q, align 8, !tbaa !38
  %.not35 = icmp eq ptr %i.p, null
  br i1 %.not35, label %.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.r = tail call i32 @avcodec_open2(ptr noundef nonnull %i.p, ptr noundef nonnull %i.l, ptr noundef null) #6 ; 2 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.e

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 348
  %i.v = load i32, ptr %i.u, align 4, !tbaa !40   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 %i.v, ptr %i.w, align 4, !tbaa !40
  %i.x = tail call i32 @av_sample_fmt_is_planar(i32 noundef %i.v) #6
  %.not37 = icmp eq i32 %i.x, 0
  %. = select i1 %.not37, i32 -22, i32 0
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.f, %._crit_edge, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ -22, %bb.a ], [ -1128613112, %bb.d ], [ %., %._crit_edge ], [ -12, %bb.b ], [ -12, %bb.c ], [ -12, %.lr.ph ], [ %i.r, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 268435456) i32 @ftr_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %4 = alloca %struct.GetBitContext, align 8      ; 8 uses
  %5 = alloca %struct.AACADTSHeaderInfo, align 4  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %or.cond.i = icmp ugt i32 %i.f, 268435455
  %i.g = shl nuw nsw i32 %i.f, 3
  %i.h = select i1 %or.cond.i, i32 -8, i32 %i.g   ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.h, 2147483135    ; 2 uses
  %i.i = icmp ne ptr %i.d, null
  %or.cond3.i.i = and i1 %i.i, %or.cond.i.i       ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %i.d, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.h, i32 0 ; 3 uses
  %i.j = add nuw nsw i32 %.013.i.i, 8
  br i1 %or.cond3.i.i, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !35
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph144, label %.thread126

.lr.ph144:                                        ; preds = %bb.b
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 520 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 528 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %i.u = load i32, ptr %i.l, align 8, !tbaa !35
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next154, %i.v
  br i1 %i.w, label %bb.d, label %.thread126.loopexit, !llvm.loop !49

bb.d:                                             ; preds = %.lr.ph144, %bb.c
  %indvars.iv153 = phi i64 [ 0, %.lr.ph144 ], [ %indvars.iv.next154, %bb.c ] ; 2 uses
  %.092141 = phi i32 [ 0, %.lr.ph144 ], [ %.pre-phi, %bb.c ] ; 3 uses
  %.sroa.4.0140 = phi i32 [ 0, %.lr.ph144 ], [ %i.cd, %bb.c ] ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv153
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  store ptr %.014.i.i, ptr %4, align 8, !tbaa !50
  store i32 %.sroa.4.0140, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !51
  store i32 %.013.i.i, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !51
  store i32 %i.j, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.z = sub nsw i32 %.013.i.i, %.sroa.4.0140     ; 2 uses
  %i.aa = icmp slt i32 %i.z, 64
  br i1 %i.aa, label %.thread132, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ab = call i32 @ff_adts_header_parse(ptr noundef nonnull %4, ptr noundef nonnull %5) #6 ; 7 uses
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %.thread132, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = shl nuw nsw i32 %i.ab, 3                ; 2 uses
  %i.ae = icmp samesign ugt i32 %i.ad, %i.z
  br i1 %i.ae, label %.thread132, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !30  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !43 ; 2 uses
  %i.ai = icmp sgt i32 %i.ab, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = sub nsw i32 %i.ab, %i.ah
  %i.ak = call i32 @av_grow_packet(ptr noundef nonnull %i.af, i32 noundef %i.aj) #6 ; 2 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.thread132, label %._crit_edge156

._crit_edge156:                                   ; preds = %bb.h
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge156, %bb.g
  %i.am = phi ptr [ %.pre, %._crit_edge156 ], [ %i.af, %bb.g ]
  %i.an = call i32 @av_packet_make_writable(ptr noundef %i.am) #6 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.thread132, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !41
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.at = lshr i32 %.sroa.4.0140, 3
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au
  %i.aw = zext nneg i32 %i.ab to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.av, i64 %i.aw, i1 false)
  %i.ax = load ptr, ptr %i.o, align 8, !tbaa !30  ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i32 %i.ab, ptr %i.ay, align 8, !tbaa !43
  %i.az = icmp samesign ugt i32 %i.ab, 12
  br i1 %i.az, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !41 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !52
  %i.be = and i8 %i.bd, 32
  %.not = icmp eq i8 %i.be, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !52
  %i.bi = xor i8 %i.bh, -1
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !52
  %i.bj = load <4 x i8>, ptr %i.bf, align 1, !tbaa !52
  %i.bk = xor <4 x i8> %i.bj, splat (i8 -1)
  %i.bl = shufflevector <4 x i8> %i.bk, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x i8> %i.bl, ptr %i.bf, align 1, !tbaa !52
  %.pre157 = load ptr, ptr %i.o, align 8, !tbaa !30
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %i.bm = phi ptr [ %i.ax, %bb.k ], [ %.pre157, %bb.l ], [ %i.ax, %bb.j ]
  %i.bn = call i32 @avcodec_send_packet(ptr noundef %i.y, ptr noundef %i.bm) #6 ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %.thread132

bb.o:                                             ; preds = %bb.m
  %i.bp = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.bq = call i32 @avcodec_receive_frame(ptr noundef %i.y, ptr noundef %i.bp) #6 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %.thread132, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = load i32, ptr %i.q, align 8, !tbaa !53  ; 2 uses
  %.not108 = icmp eq i32 %i.bs, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 344
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !53 ; 2 uses
  br i1 %.not108, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %i.bu, ptr %i.q, align 8, !tbaa !53
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %.not109 = icmp eq i32 %i.bs, %i.bu
  br i1 %.not109, label %bb.s, label %.thread132

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bv = load i32, ptr %i.k, align 8, !tbaa !44  ; 2 uses
  %.not110 = icmp eq i32 %i.bv, 0
  %i.bw = load ptr, ptr %i.p, align 8, !tbaa !34  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 112
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !44 ; 2 uses
  br i1 %.not110, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.by, ptr %i.k, align 8, !tbaa !44
  %i.bz = call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #6 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %.thread132, label %._crit_edge158

._crit_edge158:                                   ; preds = %bb.t
  %.pre159 = load ptr, ptr %i.p, align 8, !tbaa !34
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %.not111 = icmp eq i32 %i.bv, %i.by
  br i1 %.not111, label %bb.v, label %.thread132

bb.v:                                             ; preds = %._crit_edge158, %bb.u
  %i.cb = phi ptr [ %.pre159, %._crit_edge158 ], [ %i.bw, %bb.u ] ; 2 uses
  %i.cc = sub nsw i32 0, %.sroa.4.0140
  %.0.i.i120 = call i32 @llvm.smax.i32(i32 %i.ad, i32 %i.cc)
  %i.cd = add nuw nsw i32 %.0.i.i120, %.sroa.4.0140 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 388
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !54 ; 2 uses
  %i.cg = add nsw i32 %i.cf, %.092141             ; 2 uses
  %i.ch = load i32, ptr %i.r, align 4, !tbaa !29  ; 2 uses
  %i.ci = icmp sgt i32 %i.cg, %i.ch
  br i1 %i.ci, label %.thread132, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = load i32, ptr %i.s, align 4, !tbaa !40
  %i.ck = getelementptr inbounds nuw i8, ptr %i.y, i64 348 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !40
  %.not112 = icmp eq i32 %i.cj, %i.cl
  br i1 %.not112, label %.preheader, label %.thread132

.preheader:                                       ; preds = %bb.w
  %i.cm = icmp sgt i32 %i.cf, 0
  br i1 %i.cm, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cn = sext i32 %.092141 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.co = phi ptr [ %i.cb, %.lr.ph.preheader ], [ %i.de, %.lr.ph ]
  %i.cp = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %indvars.iv
  %i.cr = getelementptr [8 x i8], ptr %i.cq, i64 %i.cn
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !50
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 96
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !55
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !50
  %i.cx = load i32, ptr %i.ck, align 4, !tbaa !40
  %i.cy = call i32 @av_get_bytes_per_sample(i32 noundef %i.cx) #6
  %i.cz = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 112
  %i.db = load i32, ptr %i.da, align 8, !tbaa !44
  %i.dc = mul nsw i32 %i.db, %i.cy
  %i.dd = sext i32 %i.dc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr align 1 %i.cw, i64 %i.dd, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.de = load ptr, ptr %i.p, align 8, !tbaa !34  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 388
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !54 ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv.next, %i.dh
  br i1 %i.di, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !56

.thread132:                                       ; preds = %bb.f, %bb.w, %bb.v, %bb.u, %bb.t, %bb.o, %bb.i, %bb.h, %bb.e, %bb.d, %bb.r, %bb.n
  %.1.ph = phi i32 [ %i.bn, %bb.n ], [ -1094995529, %bb.r ], [ -1094995529, %bb.d ], [ -1094995529, %bb.e ], [ %i.ak, %bb.h ], [ %i.an, %bb.i ], [ %i.bq, %bb.o ], [ %i.bz, %bb.t ], [ -1094995529, %bb.u ], [ -1094995529, %bb.v ], [ -1094995529, %bb.w ], [ -1094995529, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.x

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre160 = load i32, ptr %i.r, align 4, !tbaa !29
  %.pre161 = add nsw i32 %i.dg, %.092141
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre-phi = phi i32 [ %.pre161, %._crit_edge.loopexit ], [ %i.cg, %.preheader ] ; 2 uses
end_hunk_0
