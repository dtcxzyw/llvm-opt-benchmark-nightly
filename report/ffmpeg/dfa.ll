Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dfa?download=true
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%struct.GetByteContext = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"dfa\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Chronomaster DFA\00", align 1
@ff_dfa_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 149, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 1032, ptr null, ptr null, ptr null, ptr @dfa_decode_init, %union.anon { ptr @dfa_decode_frame }, ptr @dfa_decode_end, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"av_image_check_size(avctx->width, avctx->height, 0, avctx) >= 0\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"libavcodec/dfa.c\00", align 1
@decoder = internal unnamed_addr constant [8 x ptr] [ptr @decode_copy, ptr @decode_tsw1, ptr @decode_bdlt, ptr @decode_wdlt, ptr @decode_tdlt, ptr @decode_dsw1, ptr @decode_blck, ptr @decode_dds1], align 16
@.str.5 = private unnamed_addr constant [25 x i8] c"Error decoding %s chunk\0A\00", align 1
@chunk_name = internal constant [8 x [5 x i8]] [[5 x i8] c"COPY\00", [5 x i8] c"TSW1\00", [5 x i8] c"BDLT\00", [5 x i8] c"WDLT\00", [5 x i8] c"TDLT\00", [5 x i8] c"DSW1\00", [5 x i8] c"BLCK\00", [5 x i8] c"DDS1\00"], align 16
@.str.6 = private unnamed_addr constant [32 x i8] c"Ignoring unknown chunk type %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1094995529, 1) i32 @dfa_decode_init(ptr noundef initializes((136, 140)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 11, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29   ; 3 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !30   ; 3 uses
  %.not17 = icmp eq i32 %i.g, 0
  %. = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.g)
  %i.h = icmp sgt i32 %., 65535
  %or.cond = or i1 %.not17, %i.h
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @av_image_check_size(i32 noundef %i.e, i32 noundef %i.g, i32 noundef 0, ptr noundef nonnull %0) #11
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 48) #11
  tail call void @abort() #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.d, align 8, !tbaa !29
  %i.l = load i32, ptr %i.f, align 4, !tbaa !30
  %i.m = mul nsw i32 %i.l, %i.k
  %i.n = sext i32 %i.m to i64
  %i.o = tail call noalias ptr @av_mallocz(i64 noundef %i.n) #11 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1024
  store ptr %i.o, ptr %i.p, align 8, !tbaa !32
  %.not18 = icmp eq ptr %i.o, null
  %.19 = select i1 %.not18, i32 -12, i32 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a, %bb.b
  %.0 = phi i32 [ %.19, %bb.e ], [ -1094995529, %bb.a ], [ -1094995529, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @dfa_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %4 = alloca %struct.GetByteContext, align 8     ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !45
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.i = load i16, ptr %i.h, align 1, !tbaa !33
  %i.j = icmp eq i16 %i.i, 256
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  %i.l = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #11 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.loopexit107, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !48   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !49   ; 4 uses
  %i.q = icmp ne ptr %i.n, null
  %i.r = icmp sgt i32 %i.p, -1
  %or.cond.i = and i1 %i.q, %i.r
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 141) #11
  tail call void @abort() #12
  unreachable

bytestream2_init.exit:                            ; preds = %bb.d
  store ptr %i.n, ptr %4, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.n, ptr %i.s, align 8, !tbaa !50
  %i.t = zext nneg i32 %i.p to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !36
  %.not156 = icmp eq i32 %i.p, 0
  br i1 %.not156, label %.loopexit106, label %.lr.ph113

.lr.ph113:                                        ; preds = %bytestream2_init.exit
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1024
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 116
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph113, %.loopexit105
  %i.aa = phi i32 [ %i.p, %.lr.ph113 ], [ %i.ci, %.loopexit105 ]
  %i.ab = phi i64 [ %i.t, %.lr.ph113 ], [ %i.ch, %.loopexit105 ]
  %i.ac = phi i64 [ %i.w, %.lr.ph113 ], [ %i.cf, %.loopexit105 ] ; 3 uses
  %i.ad = phi ptr [ %i.n, %.lr.ph113 ], [ %i.ce, %.loopexit105 ]
  %i.ae = phi ptr [ %i.u, %.lr.ph113 ], [ %i.cd, %.loopexit105 ] ; 4 uses
  %i.af = icmp samesign ult i32 %i.aa, 12
  br i1 %i.af, label %.loopexit107, label %bb.g

bb.g:                                             ; preds = %bb.f
  %..i = call i64 @llvm.smin.i64(i64 %i.ab, i64 4)
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 %..i ; 3 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ac, %i.ah
  %i.aj = icmp slt i64 %i.ai, 4
  br i1 %i.aj, label %bytestream2_get_le32.exit102, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  store ptr %i.ak, ptr %4, align 8, !tbaa !37
  %i.al = load i32, ptr %i.ag, align 1, !tbaa !33
  br label %bytestream2_get_le32.exit102

bytestream2_get_le32.exit102:                     ; preds = %bb.g, %bb.h
  %i.am = phi ptr [ %i.ak, %bb.h ], [ %i.ae, %bb.g ] ; 3 uses
  %.0.i101 = phi i32 [ %i.al, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.ac, %i.an
  %i.ap = icmp slt i64 %i.ao, 4
  br i1 %i.ap, label %bytestream2_get_le32.exit.thread, label %bytestream2_get_le32.exit

bytestream2_get_le32.exit.thread:                 ; preds = %bytestream2_get_le32.exit102
  store ptr %i.ae, ptr %4, align 8, !tbaa !35
  br label %.loopexit106

bytestream2_get_le32.exit:                        ; preds = %bytestream2_get_le32.exit102
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  store ptr %i.aq, ptr %4, align 8, !tbaa !37
  %i.ar = load i32, ptr %i.am, align 1, !tbaa !33 ; 4 uses
  switch i32 %i.ar, label %bb.l [
    i32 0, label %.loopexit106
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bytestream2_get_le32.exit
  %i.as = icmp ugt i32 %.0.i101, 770
  %i.at = udiv i32 %.0.i101, 3
  %i.au = select i1 %i.as, i32 256, i32 %i.at     ; 2 uses
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %.loopexit105, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %wide.trip.count = zext nneg i32 %i.au to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bytestream2_get_be24.exit
  %i.av = phi ptr [ %i.aq, %.lr.ph.preheader ], [ %i.bm, %bytestream2_get_be24.exit ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bytestream2_get_be24.exit ] ; 2 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.ac, %i.aw
  %i.ay = icmp slt i64 %i.ax, 3
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  store ptr %i.ae, ptr %4, align 8, !tbaa !35
  br label %bytestream2_get_be24.exit

bb.k:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 3 ; 2 uses
  store ptr %i.az, ptr %4, align 8, !tbaa !37
  %i.ba = load i8, ptr %i.av, align 1, !tbaa !33
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !33
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 8
  %i.bh = or disjoint i32 %i.bg, %i.bc
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !33
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bh, %i.bk
  br label %bytestream2_get_be24.exit

bytestream2_get_be24.exit:                        ; preds = %bb.j, %bb.k
  %i.bm = phi ptr [ %i.ae, %bb.j ], [ %i.az, %bb.k ]
  %.0.i103 = phi i32 [ 0, %bb.j ], [ %i.bl, %bb.k ] ; 2 uses
  %i.bn = shl nuw nsw i32 %.0.i103, 2
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.bp = lshr i32 %.0.i103, 4
  %i.bq = and i32 %i.bp, 197379
  %i.br = or i32 %i.bn, %i.bq
  %i.bs = or i32 %i.br, -16777216
  store i32 %i.bs, ptr %i.bo, align 4, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit105, label %.lr.ph, !llvm.loop !40

bb.l:                                             ; preds = %bytestream2_get_le32.exit
  %i.bt = icmp ult i32 %i.ar, 10
  br i1 %i.bt, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bu = add nsw i32 %i.ar, -2
  %i.bv = zext nneg i32 %i.bu to i64              ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @decoder, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !52
  %i.by = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.bz = load i32, ptr %i.y, align 8, !tbaa !29
  %i.ca = load i32, ptr %i.z, align 4, !tbaa !30
  %i.cb = call i32 %i.bx(ptr noundef nonnull %4, ptr noundef %i.by, i32 noundef %i.bz, i32 noundef %i.ca) #11
  %.not100 = icmp eq i32 %i.cb, 0
  br i1 %.not100, label %.loopexit105, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw [5 x i8], ptr @chunk_name, i64 %i.bv
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.cc) #11
  br label %.loopexit107

bb.o:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.6, i32 noundef %i.ar) #11
  br label %.loopexit105

.loopexit105:                                     ; preds = %bytestream2_get_be24.exit, %bb.i, %bb.o, %bb.m
  %i.cd = load ptr, ptr %i.v, align 8, !tbaa !36  ; 2 uses
  %i.ce = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = trunc i64 %i.ch to i32                  ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %bb.f, label %.loopexit106, !llvm.loop !41

.loopexit106:                                     ; preds = %.loopexit105, %bytestream2_get_le32.exit, %bytestream2_init.exit, %bytestream2_get_le32.exit.thread
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 1024
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !32 ; 2 uses
  %i.cm = load ptr, ptr %1, align 8, !tbaa !37    ; 2 uses
  br i1 %i.k, label %.preheader, label %bb.r

.preheader:                                       ; preds = %.loopexit106
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !30 ; 2 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph122, label %.loopexit

.lr.ph122:                                        ; preds = %.preheader
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.pre = load i32, ptr %i.cq, align 8, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph122, %._crit_edge119
  %i.cs = phi i32 [ %.pre, %.lr.ph122 ], [ %i.er, %._crit_edge119 ] ; 5 uses
  %i.ct = phi i32 [ %i.co, %.lr.ph122 ], [ %i.ew, %._crit_edge119 ]
  %.192121 = phi i32 [ 0, %.lr.ph122 ], [ %i.ev, %._crit_edge119 ] ; 3 uses
  %.093120 = phi ptr [ %i.cm, %.lr.ph122 ], [ %i.eu, %._crit_edge119 ] ; 3 uses
  %i.cu = and i32 %.192121, 3
  %i.cv = sdiv i32 %i.cs, 4
  %i.cw = mul nsw i32 %i.cv, %i.cu
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %i.cl, i64 %i.cx
  %i.cz = lshr i32 %.192121, 2
  %i.da = mul nsw i32 %i.cs, %i.cz
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 %i.db ; 5 uses
  %i.dd = sdiv i32 %i.ct, 4
  %i.de = mul nsw i32 %i.cs, %i.dd                ; 4 uses
  %i.df = icmp sgt i32 %i.cs, 3
  br i1 %i.df, label %.lr.ph115, label %._crit_edge

.lr.ph115:                                        ; preds = %bb.p
  %i.dg = shl nsw i32 %i.de, 1
  %i.dh = mul nsw i32 %i.de, 3
  %i.di = sext i32 %i.de to i64
  %i.dj = sext i32 %i.dg to i64
  %i.dk = sext i32 %i.dh to i64
  %invariant.gep = getelementptr i8, ptr %i.dc, i64 %i.di
  %invariant.gep152 = getelementptr i8, ptr %i.dc, i64 %i.dj
  %invariant.gep154 = getelementptr i8, ptr %i.dc, i64 %i.dk
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph115, %bb.q
  %indvars.iv129 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next130, %bb.q ] ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv129
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !33
  %i.dn = shl nuw nsw i64 %indvars.iv129, 2
  %i.do = getelementptr inbounds nuw i8, ptr %.093120, i64 %i.dn ; 4 uses
  store i8 %i.dm, ptr %i.do, align 1, !tbaa !33
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv129
  %i.dp = load i8, ptr %gep, align 1, !tbaa !33
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !33
  %gep153 = getelementptr i8, ptr %invariant.gep152, i64 %indvars.iv129
  %i.dr = load i8, ptr %gep153, align 1, !tbaa !33
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 2
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !33
  %gep155 = getelementptr i8, ptr %invariant.gep154, i64 %indvars.iv129
  %i.dt = load i8, ptr %gep155, align 1, !tbaa !33
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 3
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !33
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 3 uses
  %i.dv = load i32, ptr %i.cq, align 8, !tbaa !29 ; 2 uses
  %i.dw = sdiv i32 %i.dv, 4
  %i.dx = sext i32 %i.dw to i64
  %i.dy = icmp slt i64 %indvars.iv.next130, %i.dx
  br i1 %i.dy, label %bb.q, label %._crit_edge.loopexit, !llvm.loop !42

._crit_edge.loopexit:                             ; preds = %bb.q
  %i.dz = trunc nuw nsw i64 %indvars.iv.next130 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.p
  %i.ea = phi i32 [ %i.cs, %bb.p ], [ %i.dv, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.p ], [ %i.dz, %._crit_edge.loopexit ] ; 2 uses
  %i.eb = shl nuw nsw i32 %.0.lcssa, 2
  %i.ec = icmp slt i32 %i.eb, %i.ea
  br i1 %i.ec, label %.lr.ph118.preheader, label %._crit_edge119

.lr.ph118.preheader:                              ; preds = %._crit_edge
  %i.ed = zext nneg i32 %.0.lcssa to i64
  %i.ee = shl nuw nsw i64 %i.ed, 2
  br label %.lr.ph118

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %.lr.ph118
  %indvars.iv132 = phi i64 [ %i.ee, %.lr.ph118.preheader ], [ %indvars.iv.next133, %.lr.ph118 ] ; 3 uses
  %i.ef = trunc nuw nsw i64 %indvars.iv132 to i32 ; 2 uses
  %i.eg = lshr i32 %i.ef, 2
  %i.eh = and i32 %i.ef, 3
  %i.ei = mul nsw i32 %i.eh, %i.de
  %i.ej = add nsw i32 %i.ei, %i.eg
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds i8, ptr %i.dc, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !33
  %i.en = getelementptr inbounds nuw i8, ptr %.093120, i64 %indvars.iv132
  store i8 %i.em, ptr %i.en, align 1, !tbaa !33
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %i.eo = load i32, ptr %i.cq, align 8, !tbaa !29 ; 2 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = icmp slt i64 %indvars.iv.next133, %i.ep
  br i1 %i.eq, label %.lr.ph118, label %._crit_edge119, !llvm.loop !43

._crit_edge119:                                   ; preds = %.lr.ph118, %._crit_edge
  %i.er = phi i32 [ %i.ea, %._crit_edge ], [ %i.eo, %.lr.ph118 ]
  %i.es = load i32, ptr %i.cr, align 8, !tbaa !51
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds i8, ptr %.093120, i64 %i.et
  %i.ev = add nuw nsw i32 %.192121, 1             ; 2 uses
  %i.ew = load i32, ptr %i.cn, align 4, !tbaa !30 ; 2 uses
  %i.ex = icmp slt i32 %i.ev, %i.ew
  br i1 %i.ex, label %bb.p, label %.loopexit, !llvm.loop !44

bb.r:                                             ; preds = %.loopexit106
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !51
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !29 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !30
  call void @av_image_copy_plane(ptr noundef %i.cm, i32 noundef %i.ez, ptr noundef %i.cl, i32 noundef %i.fb, i32 noundef %i.fb, i32 noundef %i.fd) #11
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge119, %.preheader, %bb.r
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.ff, ptr noundef nonnull align 8 dereferenceable(1024) %i.b, i64 1024, i1 false)
  store i32 1, ptr %2, align 4, !tbaa !51
  %i.fg = load i32, ptr %i.o, align 8, !tbaa !49
  br label %.loopexit107

.loopexit107:                                     ; preds = %bb.f, %bb.c, %.loopexit, %bb.n
  %.095 = phi i32 [ %i.fg, %.loopexit ], [ %i.l, %bb.c ], [ -1094995529, %bb.n ], [ -1094995529, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 %.095
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @dfa_decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1024
  tail call void @av_freep(ptr noundef nonnull %i.c) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @av_image_check_size(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1094995529, 1) i32 @decode_copy(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = mul nsw i32 %3, %2                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = zext i32 %i.a to i64
  %i.i = tail call i64 @llvm.smin.i64(i64 %i.g, i64 %i.h) ; 2 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = and i64 %i.i, 4294967295                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.d, i64 %i.k, i1 false)
  %i.l = load ptr, ptr %0, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  store ptr %i.m, ptr %0, align 8, !tbaa !35
  %.not = icmp eq i32 %i.a, %i.j
  %. = select i1 %.not, i32 0, i32 -1094995529
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @decode_tsw1(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = mul nsw i32 %3, %2
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp slt i64 %i.i, 4
  br i1 %i.j, label %bytestream2_get_le32.exit55, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !37
  %i.l = load i32, ptr %i.f, align 1, !tbaa !33
  %.pre = ptrtoint ptr %i.k to i64
  br label %bytestream2_get_le32.exit55

bytestream2_get_le32.exit55:                      ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %.pre, %bb.b ], [ %i.g, %bb.a ]
  %i.m = phi ptr [ %i.k, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.0.i54 = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.n = sub i64 %i.g, %.pre-phi
  %i.o = icmp slt i64 %i.n, 4
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bytestream2_get_le32.exit55
  store ptr %i.e, ptr %0, align 8, !tbaa !35
  br label %bytestream2_get_le32.exit

bb.d:                                             ; preds = %bytestream2_get_le32.exit55
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store ptr %i.p, ptr %0, align 8, !tbaa !37
  %i.q = load i32, ptr %i.m, align 1, !tbaa !33
  %i.r = zext i32 %i.q to i64
  br label %bytestream2_get_le32.exit

bytestream2_get_le32.exit:                        ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ 0, %bb.c ], [ %i.r, %bb.d ]   ; 3 uses
  %i.s = icmp eq i32 %.0.i54, 0                   ; 2 uses
  %i.t = icmp eq i64 %.0.i, %i.b
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bytestream2_get_le32.exit
  %i.u = ptrtoint ptr %i.c to i64
  %i.v = ptrtoint ptr %1 to i64
  %.not = icmp sge i64 %.0.i, %i.b                ; 2 uses
  %brmerge = or i1 %.not, %i.s
  %.mux = select i1 %.not, i32 -1094995529, i32 0
  br i1 %brmerge, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %.in = phi i32 [ %i.x, %bb.t ], [ %.0.i54, %.lr.ph.preheader ]
  %.04263 = phi i32 [ %.1, %bb.t ], [ 0, %.lr.ph.preheader ]
  %.04362 = phi i32 [ %i.bs, %bb.t ], [ 65536, %.lr.ph.preheader ] ; 2 uses
  %.04661 = phi ptr [ %.147, %bb.t ], [ %i.w, %.lr.ph.preheader ] ; 6 uses
  %i.x = add i32 %.in, -1                         ; 2 uses
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !36   ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !35     ; 4 uses
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = icmp slt i32 %i.ad, 2
  br i1 %i.ae, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.af = icmp eq i32 %.04362, 65536
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 2 ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !37
  %i.ah = load i16, ptr %i.z, align 1, !tbaa !33
  %i.ai = zext i16 %i.ah to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = phi ptr [ %i.ag, %bb.g ], [ %i.z, %bb.f ] ; 5 uses
  %.144 = phi i32 [ 1, %bb.g ], [ %.04362, %bb.f ] ; 2 uses
  %.1 = phi i32 [ %i.ai, %bb.g ], [ %.04263, %bb.f ] ; 2 uses
  %i.ak = ptrtoint ptr %.04661 to i64             ; 2 uses
  %i.al = sub i64 %i.u, %i.ak                     ; 2 uses
  %i.am = icmp slt i64 %i.al, 2
  br i1 %i.am, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = and i32 %.1, %.144
  %.not52 = icmp eq i32 %i.an, 0
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = sub i64 %i.aa, %i.ao                    ; 2 uses
  br i1 %.not52, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = icmp slt i64 %i.ap, 2
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.y, ptr %0, align 8, !tbaa !35
  br label %bytestream2_get_le16.exit

bb.l:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.ar, ptr %0, align 8, !tbaa !37
  %i.as = load i16, ptr %i.aj, align 1, !tbaa !33
  %i.at = zext i16 %i.as to i32
  br label %bytestream2_get_le16.exit

bytestream2_get_le16.exit:                        ; preds = %bb.k, %bb.l
  %.0.i56 = phi i32 [ 0, %bb.k ], [ %i.at, %bb.l ] ; 2 uses
  %i.au = shl nuw nsw i32 %.0.i56, 1
  %i.av = and i32 %i.au, 16382                    ; 2 uses
  %i.aw = lshr i32 %.0.i56, 12
  %i.ax = and i32 %i.aw, 14
  %i.ay = add nuw nsw i32 %i.ax, 4                ; 2 uses
  %i.az = sub i64 %i.ak, %i.v
  %i.ba = zext nneg i32 %i.av to i64
  %i.bb = icmp slt i64 %i.az, %i.ba
  br i1 %i.bb, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bytestream2_get_le16.exit
  %i.bc = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.bd = icmp samesign ult i64 %i.al, %i.bc
  br i1 %i.bd, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @av_memcpy_backptr(ptr noundef %.04661, i32 noundef %i.av, i32 noundef %i.ay) #11
  %i.be = getelementptr inbounds nuw i8, ptr %.04661, i64 %i.bc
  br label %bb.t

bb.o:                                             ; preds = %bb.i
  %i.bf = icmp slt i64 %i.ap, 1
  br i1 %i.bf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.y, ptr %0, align 8, !tbaa !35
  br label %bytestream2_get_byte.exit59

bb.q:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.bg, ptr %0, align 8, !tbaa !37
  %i.bh = load i8, ptr %i.aj, align 1, !tbaa !33
  br label %bytestream2_get_byte.exit59

bytestream2_get_byte.exit59:                      ; preds = %bb.p, %bb.q
  %.0.i58 = phi i8 [ 0, %bb.p ], [ %i.bh, %bb.q ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.04661, i64 1
  store i8 %.0.i58, ptr %.04661, align 1, !tbaa !33
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !36  ; 2 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !35    ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = icmp slt i64 %i.bn, 1
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bytestream2_get_byte.exit59
  store ptr %i.bj, ptr %0, align 8, !tbaa !35
  br label %bytestream2_get_byte.exit

bb.s:                                             ; preds = %bytestream2_get_byte.exit59
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store ptr %i.bp, ptr %0, align 8, !tbaa !37
  %i.bq = load i8, ptr %i.bk, align 1, !tbaa !33
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.r, %bb.s
  %.0.i57 = phi i8 [ 0, %bb.r ], [ %i.bq, %bb.s ]
  %i.br = getelementptr inbounds nuw i8, ptr %.04661, i64 2
  store i8 %.0.i57, ptr %i.bi, align 1, !tbaa !33
  br label %bb.t

bb.t:                                             ; preds = %bytestream2_get_byte.exit, %bb.n
  %.147 = phi ptr [ %i.be, %bb.n ], [ %i.br, %bytestream2_get_byte.exit ]
  %i.bs = shl i32 %.144, 1
  %.not51 = icmp eq i32 %i.x, 0
  br i1 %.not51, label %.loopexit, label %.lr.ph, !llvm.loop !53

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %bb.m, %bytestream2_get_le16.exit, %bb.t, %bb.e, %bytestream2_get_le32.exit
  %.045 = phi i32 [ %.mux, %bb.e ], [ 0, %bytestream2_get_le32.exit ], [ -1094995529, %bytestream2_get_le16.exit ], [ -1094995529, %bb.h ], [ -1094995529, %.lr.ph ], [ -1094995529, %bb.m ], [ 0, %bb.t ]
  ret i32 %.045
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1094995529, 1) i32 @decode_bdlt(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp slt i64 %i.f, 2
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !35
  br label %bytestream2_get_le16.exit54

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !37
  %i.i = load i16, ptr %i.c, align 1, !tbaa !33
  %i.j = zext i16 %i.i to i32
  br label %bytestream2_get_le16.exit54

bytestream2_get_le16.exit54:                      ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.b, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %.0.i53 = phi i32 [ 0, %bb.b ], [ %i.j, %bb.c ] ; 3 uses
  %.not = icmp slt i32 %.0.i53, %3
  br i1 %.not, label %bb.d, label %.loopexit64

bb.d:                                             ; preds = %bytestream2_get_le16.exit54
  %i.l = mul nsw i32 %.0.i53, %2
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %1, i64 %i.m
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.d, %i.o
  %i.q = icmp slt i64 %i.p, 2
  br i1 %i.q, label %.preheader.thread, label %bytestream2_get_le16.exit

bytestream2_get_le16.exit:                        ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store ptr %i.r, ptr %0, align 8, !tbaa !37
  %i.s = load i16, ptr %i.k, align 1, !tbaa !33   ; 2 uses
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = add nuw nsw i32 %.0.i53, %i.t
  %i.v = icmp samesign ugt i32 %i.u, %3
  br i1 %i.v, label %.loopexit64, label %.preheader

.preheader.thread:                                ; preds = %bb.d
  store ptr %i.b, ptr %0, align 8, !tbaa !35
  br label %.loopexit64

.preheader:                                       ; preds = %bytestream2_get_le16.exit
  %.not4968 = icmp eq i16 %i.s, 0
  br i1 %.not4968, label %.loopexit64, label %.lr.ph70

.lr.ph70:                                         ; preds = %.preheader
  %i.w = sext i32 %2 to i64
  br label %bb.e

.loopexit:                                        ; preds = %bb.o, %bb.f
  %.not49 = icmp eq i32 %i.x, 0
  br i1 %.not49, label %.loopexit64, label %bb.e, !llvm.loop !54

bb.e:                                             ; preds = %.lr.ph70, %.loopexit
  %.in = phi i32 [ %i.t, %.lr.ph70 ], [ %i.x, %.loopexit ]
  %.04469 = phi ptr [ %i.n, %.lr.ph70 ], [ %i.af, %.loopexit ] ; 2 uses
  %i.x = add nsw i32 %.in, -1                     ; 2 uses
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.z = load ptr, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %.loopexit64, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds i8, ptr %.04469, i64 %i.w ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.ag, ptr %0, align 8, !tbaa !37
  %i.ah = load i8, ptr %i.z, align 1, !tbaa !33   ; 2 uses
  %.not5066 = icmp eq i8 %i.ah, 0
  br i1 %.not5066, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ai = zext i8 %i.ah to i32
  %i.aj = ptrtoint ptr %i.af to i64               ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.o
  %.in73 = phi i32 [ %i.ai, %.lr.ph ], [ %i.ak, %bb.o ]
  %.04267 = phi ptr [ %.04469, %.lr.ph ], [ %i.cd, %bb.o ] ; 2 uses
  %i.ak = add nsw i32 %.in73, -1                  ; 2 uses
  %i.al = ptrtoint ptr %.04267 to i64
  %i.am = sub i64 %i.aj, %i.al                    ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !36  ; 5 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !35    ; 4 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 5 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = icmp slt i64 %i.ar, 1
  br i1 %i.as, label %bytestream2_peek_byte.exit, label %bytestream2_peek_byte.exit.thread

bytestream2_peek_byte.exit:                       ; preds = %bb.g
  %.not51 = icmp sgt i64 %i.am, 0
  br i1 %.not51, label %bytestream2_get_byte.exit59, label %.loopexit64

bytestream2_peek_byte.exit.thread:                ; preds = %bb.g
  %i.at = load i8, ptr %i.ao, align 1, !tbaa !33
  %i.au = zext i8 %i.at to i64
  %.not5162 = icmp sgt i64 %i.am, %i.au
  br i1 %.not5162, label %bb.h, label %.loopexit64

bb.h:                                             ; preds = %bytestream2_peek_byte.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 3 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !37
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !33
  %i.ax = zext i8 %i.aw to i64
  %.pre = ptrtoint ptr %i.av to i64
  br label %bytestream2_get_byte.exit59

bytestream2_get_byte.exit59:                      ; preds = %bytestream2_peek_byte.exit, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.h ], [ %i.ap, %bytestream2_peek_byte.exit ]
  %i.ay = phi ptr [ %i.av, %bb.h ], [ %i.an, %bytestream2_peek_byte.exit ] ; 3 uses
  %.0.i58 = phi i64 [ %i.ax, %bb.h ], [ 0, %bytestream2_peek_byte.exit ]
  %i.az = getelementptr inbounds nuw i8, ptr %.04267, i64 %.0.i58 ; 5 uses
  %i.ba = sub i64 %i.ap, %.pre-phi
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bytestream2_get_byte.exit57.thread, label %bytestream2_get_byte.exit57

bytestream2_get_byte.exit57.thread:               ; preds = %bytestream2_get_byte.exit59
  store ptr %i.an, ptr %0, align 8, !tbaa !35
  br label %bb.i

bytestream2_get_byte.exit57:                      ; preds = %bytestream2_get_byte.exit59
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 4 uses
  store ptr %i.bc, ptr %0, align 8, !tbaa !37
  %i.bd = load i8, ptr %i.ay, align 1, !tbaa !33  ; 2 uses
  %i.be = sext i8 %i.bd to i32                    ; 2 uses
  %i.bf = icmp sgt i8 %i.bd, -1
  br i1 %i.bf, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bytestream2_get_byte.exit57.thread, %bytestream2_get_byte.exit57
  %i.bg = phi ptr [ %i.an, %bytestream2_get_byte.exit57.thread ], [ %i.bc, %bytestream2_get_byte.exit57 ] ; 2 uses
  %i.bh = phi i32 [ 0, %bytestream2_get_byte.exit57.thread ], [ %i.be, %bytestream2_get_byte.exit57 ] ; 2 uses
  %i.bi = ptrtoint ptr %i.az to i64
  %i.bj = sub i64 %i.aj, %i.bi
  %i.bk = zext nneg i32 %i.bh to i64              ; 3 uses
  %i.bl = icmp slt i64 %i.bj, %i.bk
  br i1 %i.bl, label %.loopexit64, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = ptrtoint ptr %i.bg to i64
  %i.bn = sub i64 %i.ap, %i.bm
  %i.bo = tail call i64 @llvm.smin.i64(i64 %i.bn, i64 %i.bk) ; 2 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = and i64 %i.bo, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %i.bg, i64 %i.bq, i1 false)
  %i.br = load ptr, ptr %0, align 8, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store ptr %i.bs, ptr %0, align 8, !tbaa !35
  %.not52 = icmp eq i32 %i.bh, %i.bp
  br i1 %.not52, label %bb.o, label %.loopexit64

bb.k:                                             ; preds = %bytestream2_get_byte.exit57
  %i.bt = sub nsw i32 0, %i.be
  %i.bu = ptrtoint ptr %i.az to i64
  %i.bv = sub i64 %i.aj, %i.bu
  %i.bw = zext nneg i32 %i.bt to i64              ; 3 uses
  %i.bx = icmp slt i64 %i.bv, %i.bw
  br i1 %i.bx, label %.loopexit64, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = ptrtoint ptr %i.bc to i64
  %i.bz = sub i64 %i.ap, %i.by
  %i.ca = icmp slt i64 %i.bz, 1
  br i1 %i.ca, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.an, ptr %0, align 8, !tbaa !35
  br label %bytestream2_get_byte.exit

bb.n:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store ptr %i.cb, ptr %0, align 8, !tbaa !37
  %i.cc = load i8, ptr %i.bc, align 1, !tbaa !33
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.m, %bb.n
  %.0.i55 = phi i8 [ 0, %bb.m ], [ %i.cc, %bb.n ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.az, i8 %.0.i55, i64 %i.bw, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bytestream2_get_byte.exit
  %.pre-phi75 = phi i64 [ %i.bk, %bb.j ], [ %i.bw, %bytestream2_get_byte.exit ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.az, i64 %.pre-phi75
  %.not50 = icmp eq i32 %i.ak, 0
  br i1 %.not50, label %.loopexit, label %bb.g, !llvm.loop !55

.loopexit64:                                      ; preds = %bb.e, %.loopexit, %bytestream2_peek_byte.exit.thread, %bb.k, %bb.j, %bb.i, %bytestream2_peek_byte.exit, %.preheader.thread, %.preheader, %bytestream2_get_le16.exit, %bytestream2_get_le16.exit54
  %.043 = phi i32 [ 0, %.preheader ], [ -1094995529, %bytestream2_get_le16.exit54 ], [ -1094995529, %bytestream2_get_le16.exit ], [ 0, %.preheader.thread ], [ -1094995529, %bytestream2_peek_byte.exit.thread ], [ -1094995529, %bytestream2_peek_byte.exit ], [ -1094995529, %bb.i ], [ -1094995529, %bb.j ], [ -1094995529, %bb.k ], [ -1094995529, %bb.e ], [ 0, %.loopexit ]
  ret i32 %.043
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1094995529, 1) i32 @decode_wdlt(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #6 {
bb.a:
  %i.a = mul nsw i32 %3, %2
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp slt i64 %i.i, 2
  br i1 %i.j, label %bytestream2_get_le16.exit92.thread, label %bytestream2_get_le16.exit92

bytestream2_get_le16.exit92:                      ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store ptr %i.k, ptr %0, align 8, !tbaa !37
  %i.l = load i16, ptr %i.f, align 1, !tbaa !33   ; 2 uses
  %i.m = zext i16 %i.l to i32                     ; 2 uses
  %i.n = icmp slt i32 %3, %i.m
  br i1 %i.n, label %.critedge, label %.preheader

bytestream2_get_le16.exit92.thread:               ; preds = %bb.a
  store ptr %i.e, ptr %0, align 8, !tbaa !35
  %i.o = icmp slt i32 %3, 0
  %spec.select = select i1 %i.o, i32 -1094995529, i32 0
  br label %.critedge

.preheader:                                       ; preds = %bytestream2_get_le16.exit92
  %.not126 = icmp eq i16 %i.l, 0
  br i1 %.not126, label %.critedge, label %.lr.ph129

.lr.ph129:                                        ; preds = %.preheader
  %i.p = sext i32 %2 to i64                       ; 4 uses
  %i.q = ptrtoint ptr %i.c to i64                 ; 2 uses
  br label %bb.b

.loopexit107:                                     ; preds = %.loopexit, %bb.j
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !56

bb.b:                                             ; preds = %.lr.ph129, %.loopexit107
  %.in = phi i32 [ %i.m, %.lr.ph129 ], [ %i.r, %.loopexit107 ]
  %.060128 = phi i32 [ 0, %.lr.ph129 ], [ %i.bp, %.loopexit107 ] ; 2 uses
  %.070127 = phi ptr [ %1, %.lr.ph129 ], [ %i.bo, %.loopexit107 ] ; 2 uses
  %i.r = add nsw i32 %.in, -1                     ; 3 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !37
  %i.aa = load i16, ptr %i.t, align 1, !tbaa !33
  %i.ab = zext i16 %i.aa to i32                   ; 3 uses
  %i.ac = and i32 %i.ab, 49152
  %i.ad = icmp eq i32 %i.ac, 49152
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bytestream2_get_le16.exit90
  %i.ae = phi ptr [ %i.au, %bytestream2_get_le16.exit90 ], [ %i.z, %bb.c ] ; 3 uses
  %.1115 = phi i32 [ %i.aq, %bytestream2_get_le16.exit90 ], [ %.060128, %bb.c ] ; 2 uses
  %.061114 = phi i32 [ %i.aw, %bytestream2_get_le16.exit90 ], [ %i.ab, %bb.c ] ; 2 uses
  %.171113 = phi ptr [ %i.ap, %bytestream2_get_le16.exit90 ], [ %.070127, %bb.c ] ; 2 uses
  %i.af = zext nneg i32 %.061114 to i64
  %sext = shl nuw i32 %.061114, 16
  %i.ag = ashr exact i32 %sext, 16                ; 2 uses
  %sext85 = shl nuw i64 %i.af, 48
  %i.ah = ashr exact i64 %sext85, 48
  %i.ai = mul nsw i64 %i.ah, %i.p
  %i.aj = sub nsw i64 0, %i.ai                    ; 2 uses
  %i.ak = ptrtoint ptr %.171113 to i64
  %i.al = sub i64 %i.q, %i.ak
  %.not86 = icmp sgt i64 %i.al, %i.aj
  br i1 %.not86, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.am = add nsw i32 %.1115, %i.r
  %i.an = sub i32 %i.am, %i.ag
  %i.ao = icmp ugt i32 %i.an, %3
  br i1 %i.ao, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds i8, ptr %.171113, i64 %i.aj ; 4 uses
  %i.aq = sub i32 %.1115, %i.ag                   ; 3 uses
  %i.ar = ptrtoint ptr %i.ae to i64
  %i.as = sub i64 %i.u, %i.ar
  %i.at = icmp slt i64 %i.as, 2
  br i1 %i.at, label %._crit_edge.thread, label %bytestream2_get_le16.exit90

bytestream2_get_le16.exit90:                      ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 2 ; 2 uses
  store ptr %i.au, ptr %0, align 8, !tbaa !37
  %i.av = load i16, ptr %i.ae, align 1, !tbaa !33
  %i.aw = zext i16 %i.av to i32                   ; 3 uses
  %i.ax = and i32 %i.aw, 49152
  %i.ay = icmp eq i32 %i.ax, 49152
  br i1 %i.ay, label %.lr.ph, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %bytestream2_get_le16.exit90, %bb.c
  %.171.lcssa = phi ptr [ %.070127, %bb.c ], [ %i.ap, %bytestream2_get_le16.exit90 ] ; 5 uses
  %.061.lcssa = phi i32 [ %i.ab, %bb.c ], [ %i.aw, %bytestream2_get_le16.exit90 ] ; 3 uses
  %.1.lcssa = phi i32 [ %.060128, %bb.c ], [ %i.aq, %bytestream2_get_le16.exit90 ] ; 3 uses
  %.not80 = icmp ugt ptr %i.c, %.171.lcssa
  br i1 %.not80, label %bb.f, label %.critedge

._crit_edge.thread:                               ; preds = %bb.e
  store ptr %i.s, ptr %0, align 8, !tbaa !35
  %.not80156 = icmp ugt ptr %i.c, %i.ap
  br i1 %.not80156, label %bytestream2_get_le16.exit88, label %.critedge

bb.f:                                             ; preds = %._crit_edge
  %.not81 = icmp samesign ult i32 %.061.lcssa, 32768
  br i1 %.not81, label %bytestream2_get_le16.exit88, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = trunc i32 %.061.lcssa to i8
  %i.ba = getelementptr i8, ptr %.171.lcssa, i64 %i.p
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1
  store i8 %i.az, ptr %i.bb, align 1, !tbaa !33
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !36  ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !35    ; 3 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = icmp slt i64 %i.bg, 2
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.bc, ptr %0, align 8, !tbaa !35
  br label %bytestream2_get_le16.exit88

bb.i:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  store ptr %i.bi, ptr %0, align 8, !tbaa !37
  %i.bj = load i16, ptr %i.bd, align 1, !tbaa !33
  %i.bk = zext i16 %i.bj to i32
  br label %bytestream2_get_le16.exit88

bytestream2_get_le16.exit88:                      ; preds = %._crit_edge.thread, %bb.i, %bb.h, %bb.f
  %.171.lcssa157165 = phi ptr [ %.171.lcssa, %bb.f ], [ %.171.lcssa, %bb.h ], [ %.171.lcssa, %bb.i ], [ %i.ap, %._crit_edge.thread ] ; 3 uses
  %.1.lcssa159164 = phi i32 [ %.1.lcssa, %bb.f ], [ %.1.lcssa, %bb.h ], [ %.1.lcssa, %bb.i ], [ %i.aq, %._crit_edge.thread ]
  %.263 = phi i32 [ %.061.lcssa, %bb.f ], [ 0, %bb.h ], [ %i.bk, %bb.i ], [ 0, %._crit_edge.thread ] ; 2 uses
  %i.bl = ptrtoint ptr %.171.lcssa157165 to i64
  %i.bm = sub i64 %i.q, %i.bl
  %i.bn = icmp slt i64 %i.bm, %i.p
  br i1 %i.bn, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bytestream2_get_le16.exit88
  %i.bo = getelementptr inbounds i8, ptr %.171.lcssa157165, i64 %i.p ; 2 uses
  %i.bp = add nsw i32 %.1.lcssa159164, 1
  %.not82122 = icmp eq i32 %.263, 0
  br i1 %.not82122, label %.loopexit107, label %.lr.ph125

.lr.ph125:                                        ; preds = %bb.j
  %i.bq = ptrtoint ptr %i.bo to i64               ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph125, %.loopexit
  %.in136 = phi i32 [ %.263, %.lr.ph125 ], [ %i.br, %.loopexit ]
  %.0123 = phi ptr [ %.171.lcssa157165, %.lr.ph125 ], [ %.2, %.loopexit ] ; 2 uses
  %i.br = add nsw i32 %.in136, -1                 ; 2 uses
  %i.bs = ptrtoint ptr %.0123 to i64
  %i.bt = sub i64 %i.bq, %i.bs                    ; 2 uses
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !36  ; 5 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !35    ; 4 uses
  %i.bw = ptrtoint ptr %i.bu to i64               ; 5 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = icmp slt i64 %i.by, 1
  br i1 %i.bz, label %bytestream2_peek_byte.exit, label %bytestream2_peek_byte.exit.thread

bytestream2_peek_byte.exit:                       ; preds = %bb.k
  %.not83 = icmp sgt i64 %i.bt, 0
  br i1 %.not83, label %bytestream2_get_byte.exit95, label %.critedge

bytestream2_peek_byte.exit.thread:                ; preds = %bb.k
  %i.ca = load i8, ptr %i.bv, align 1, !tbaa !33
  %i.cb = zext i8 %i.ca to i64
  %.not83105 = icmp sgt i64 %i.bt, %i.cb
  br i1 %.not83105, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bytestream2_peek_byte.exit.thread
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 3 uses
  store ptr %i.cc, ptr %0, align 8, !tbaa !37
  %i.cd = load i8, ptr %i.bv, align 1, !tbaa !33
  %i.ce = zext i8 %i.cd to i64
  %.pre = ptrtoint ptr %i.cc to i64
  br label %bytestream2_get_byte.exit95

bytestream2_get_byte.exit95:                      ; preds = %bytestream2_peek_byte.exit, %bb.l
  %.pre-phi = phi i64 [ %.pre, %bb.l ], [ %i.bw, %bytestream2_peek_byte.exit ]
  %i.cf = phi ptr [ %i.cc, %bb.l ], [ %i.bu, %bytestream2_peek_byte.exit ] ; 3 uses
  %.0.i94 = phi i64 [ %i.ce, %bb.l ], [ 0, %bytestream2_peek_byte.exit ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0123, i64 %.0.i94 ; 9 uses
  %i.ch = sub i64 %i.bw, %.pre-phi
  %i.ci = icmp slt i64 %i.ch, 1
  br i1 %i.ci, label %bytestream2_get_byte.exit.thread, label %bytestream2_get_byte.exit

bytestream2_get_byte.exit.thread:                 ; preds = %bytestream2_get_byte.exit95
  store ptr %i.bu, ptr %0, align 8, !tbaa !35
  br label %bb.m

bytestream2_get_byte.exit:                        ; preds = %bytestream2_get_byte.exit95
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 1 ; 4 uses
  store ptr %i.cj, ptr %0, align 8, !tbaa !37
  %i.ck = load i8, ptr %i.cf, align 1, !tbaa !33  ; 3 uses
  %i.cl = zext nneg i8 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = icmp sgt i8 %i.ck, -1
  br i1 %i.cn, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bytestream2_get_byte.exit.thread, %bytestream2_get_byte.exit
  %i.co = phi ptr [ %i.bu, %bytestream2_get_byte.exit.thread ], [ %i.cj, %bytestream2_get_byte.exit ] ; 2 uses
  %i.cp = phi i32 [ 0, %bytestream2_get_byte.exit.thread ], [ %i.cm, %bytestream2_get_byte.exit ] ; 2 uses
  %i.cq = ptrtoint ptr %i.cg to i64
  %i.cr = sub i64 %i.bq, %i.cq
  %i.cs = zext nneg i32 %i.cp to i64              ; 3 uses
  %i.ct = icmp slt i64 %i.cr, %i.cs
  br i1 %i.ct, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = ptrtoint ptr %i.co to i64
  %i.cv = sub i64 %i.bw, %i.cu
  %i.cw = tail call i64 @llvm.smin.i64(i64 %i.cv, i64 %i.cs) ; 2 uses
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = and i64 %i.cw, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %i.co, i64 %i.cy, i1 false)
  %i.cz = load ptr, ptr %0, align 8, !tbaa !35
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cy
  store ptr %i.da, ptr %0, align 8, !tbaa !35
  %.not84 = icmp eq i32 %i.cp, %i.cx
  br i1 %.not84, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cs
  br label %.loopexit

bb.p:                                             ; preds = %bytestream2_get_byte.exit
  %i.dc = sext i8 %i.ck to i32                    ; 2 uses
  %i.dd = sub nsw i32 0, %i.dc                    ; 2 uses
  %i.de = ptrtoint ptr %i.cg to i64
  %i.df = sub i64 %i.bq, %i.de
  %i.dg = shl nuw nsw i32 %i.dd, 1
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = icmp slt i64 %i.df, %i.dh
  br i1 %i.di, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dj = ptrtoint ptr %i.cj to i64
  %i.dk = sub i64 %i.bw, %i.dj
  %i.dl = icmp slt i64 %i.dk, 2
  br i1 %i.dl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %i.bu, ptr %0, align 8, !tbaa !35
  br label %iter.check

bb.s:                                             ; preds = %bb.q
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cf, i64 3
  store ptr %i.dm, ptr %0, align 8, !tbaa !37
  %i.dn = load i16, ptr %i.cj, align 1, !tbaa !33
  br label %iter.check

iter.check:                                       ; preds = %bb.s, %bb.r
  %.0.i = phi i16 [ 0, %bb.r ], [ %i.dn, %bb.s ]  ; 3 uses
  %narrow = sub nsw i32 0, %i.dc                  ; 3 uses
  %i.do = zext nneg i32 %narrow to i64            ; 5 uses
  %min.iters.check = icmp ult i32 %narrow, 4
  br i1 %min.iters.check, label %.lr.ph120.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check180 = icmp ult i32 %narrow, 16
  br i1 %min.iters.check180, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dp = and i64 %i.do, 12
  %n.vec = and i64 %i.do, 240                     ; 5 uses
  %i.dq = trunc nuw nsw i64 %n.vec to i32
  %i.dr = shl nuw nsw i64 %n.vec, 1
  %i.ds = getelementptr i8, ptr %i.cg, i64 %i.dr  ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.0.i, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.cg, i64 %i.dt ; 2 uses
  %i.du = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 1, !tbaa !33
  store <8 x i16> %broadcast.splat, ptr %i.du, align 1, !tbaa !33
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.do
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph120.preheader, label %vec.epilog.ph, !prof !64

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec181 = and i64 %i.do, 252                  ; 4 uses
  %i.dw = trunc nuw nsw i64 %n.vec181 to i32
  %i.dx = shl nuw nsw i64 %n.vec181, 1
  %i.dy = getelementptr i8, ptr %i.cg, i64 %i.dx  ; 2 uses
  %broadcast.splatinsert182 = insertelement <4 x i16> poison, i16 %.0.i, i64 0
  %broadcast.splat183 = shufflevector <4 x i16> %broadcast.splatinsert182, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index184 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next186, %vec.epilog.vector.body ] ; 2 uses
  %i.dz = shl i64 %index184, 1
  %next.gep185 = getelementptr i8, ptr %i.cg, i64 %i.dz
  store <4 x i16> %broadcast.splat183, ptr %next.gep185, align 1, !tbaa !33
  %index.next186 = add nuw i64 %index184, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next186, %n.vec181
  br i1 %i.ea, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !59

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n187 = icmp eq i64 %n.vec181, %i.do
  br i1 %cmp.n187, label %.loopexit, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.065119.ph = phi i32 [ 0, %iter.check ], [ %i.dq, %vec.epilog.iter.check ], [ %i.dw, %vec.epilog.middle.block ]
  %.1103118.ph = phi ptr [ %i.cg, %iter.check ], [ %i.ds, %vec.epilog.iter.check ], [ %i.dy, %vec.epilog.middle.block ]
  br label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %.lr.ph120
  %.065119 = phi i32 [ %i.ec, %.lr.ph120 ], [ %.065119.ph, %.lr.ph120.preheader ]
  %.1103118 = phi ptr [ %i.eb, %.lr.ph120 ], [ %.1103118.ph, %.lr.ph120.preheader ] ; 2 uses
  store i16 %.0.i, ptr %.1103118, align 1, !tbaa !33
  %i.eb = getelementptr inbounds nuw i8, ptr %.1103118, i64 2 ; 2 uses
  %i.ec = add nuw nsw i32 %.065119, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ec, %i.dd
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph120, !llvm.loop !60

.loopexit:                                        ; preds = %.lr.ph120, %middle.block, %vec.epilog.middle.block, %bb.o
  %.2 = phi ptr [ %i.db, %bb.o ], [ %i.dy, %vec.epilog.middle.block ], [ %i.ds, %middle.block ], [ %i.eb, %.lr.ph120 ]
  %.not82 = icmp eq i32 %i.br, 0
  br i1 %.not82, label %.loopexit107, label %bb.k, !llvm.loop !61

.critedge:                                        ; preds = %bb.b, %._crit_edge, %bytestream2_get_le16.exit88, %.loopexit107, %._crit_edge.thread, %bb.d, %.lr.ph, %bytestream2_peek_byte.exit.thread, %bb.p, %bb.n, %bb.m, %bytestream2_peek_byte.exit, %bytestream2_get_le16.exit92.thread, %.preheader, %bytestream2_get_le16.exit92
  %.369 = phi i32 [ %spec.select, %bytestream2_get_le16.exit92.thread ], [ -1094995529, %bytestream2_get_le16.exit92 ], [ 0, %.preheader ], [ -1094995529, %bb.d ], [ -1094995529, %bytestream2_peek_byte.exit.thread ], [ -1094995529, %bytestream2_peek_byte.exit ], [ -1094995529, %bb.m ], [ -1094995529, %bb.n ], [ -1094995529, %bb.p ], [ -1094995529, %.lr.ph ], [ -1094995529, %bytestream2_get_le16.exit88 ], [ 0, %.loopexit107 ], [ -1094995529, %._crit_edge.thread ], [ -1094995529, %._crit_edge ], [ -1094995529, %bb.b ]
  ret i32 %.369
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1094995529, 1) i32 @decode_tdlt(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #6 {
bb.a:
  %i.a = mul nsw i32 %3, %2
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp slt i64 %i.i, 4
  br i1 %i.j, label %bytestream2_get_le32.exit.thread, label %bytestream2_get_le32.exit

bytestream2_get_le32.exit.thread:                 ; preds = %bb.a
  store ptr %i.e, ptr %0, align 8, !tbaa !35
  br label %._crit_edge

bytestream2_get_le32.exit:                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !37
  %i.l = load i32, ptr %i.f, align 1, !tbaa !33   ; 2 uses
  %.not24 = icmp eq i32 %i.l, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bytestream2_get_le32.exit
  %i.m = ptrtoint ptr %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.n = phi ptr [ %i.k, %.lr.ph ], [ %i.as, %bb.e ] ; 4 uses
  %.in = phi i32 [ %i.l, %.lr.ph ], [ %i.o, %bb.e ]
  %.02225 = phi ptr [ %1, %.lr.ph ], [ %i.at, %bb.e ] ; 2 uses
  %i.o = add i32 %.in, -1                         ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = icmp slt i32 %i.t, 2
  br i1 %i.u, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !37
  %i.w = load i8, ptr %i.n, align 1, !tbaa !33
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 1                  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 2 ; 3 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !37
  %i.aa = load i8, ptr %i.v, align 1, !tbaa !33
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 1                ; 2 uses
  %i.ad = ptrtoint ptr %.02225 to i64
  %i.ae = sub i64 %i.m, %i.ad
  %i.af = add nuw nsw i32 %i.ac, %i.y
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = icmp slt i64 %i.ae, %i.ag
  br i1 %i.ah, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = ptrtoint ptr %i.z to i64
  %i.aj = sub i64 %i.q, %i.ai                     ; 2 uses
  %i.ak = trunc i64 %i.aj to i32
  %i.al = icmp sgt i32 %i.y, %i.ak
  br i1 %i.al, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = zext nneg i32 %i.ac to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.02225, i64 %i.am ; 2 uses
  %i.ao = zext nneg i32 %i.y to i64               ; 2 uses
  %i.ap = tail call i64 @llvm.smin.i64(i64 %i.aj, i64 %i.ao)
  %i.aq = and i64 %i.ap, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull align 1 %i.z, i64 %i.aq, i1 false)
  %i.ar = load ptr, ptr %0, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq ; 2 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.b, %bb.d, %bb.c, %bb.e, %bytestream2_get_le32.exit.thread, %bytestream2_get_le32.exit
  %.021 = phi i32 [ 0, %bytestream2_get_le32.exit ], [ 0, %bytestream2_get_le32.exit.thread ], [ 0, %bb.e ], [ -1094995529, %bb.d ], [ -1094995529, %bb.c ], [ -1094995529, %bb.b ]
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @decode_dsw1(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = mul nsw i32 %3, %2
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp slt i64 %i.i, 2
  br i1 %i.j, label %bytestream2_get_le16.exit49.thread, label %bytestream2_get_le16.exit49

bytestream2_get_le16.exit49.thread:               ; preds = %bb.a
  store ptr %i.e, ptr %0, align 8, !tbaa !35
  br label %._crit_edge

bytestream2_get_le16.exit49:                      ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store ptr %i.k, ptr %0, align 8, !tbaa !37
  %i.l = load i16, ptr %i.f, align 1, !tbaa !33   ; 2 uses
  %.not53 = icmp eq i16 %i.l, 0
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bytestream2_get_le16.exit49
  %i.m = zext i16 %i.l to i32
  %i.n = ptrtoint ptr %i.c to i64
  %i.o = ptrtoint ptr %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %.in = phi i32 [ %i.m, %.lr.ph ], [ %i.p, %bb.u ]
  %.03656 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.u ]
  %.03755 = phi i32 [ 65536, %.lr.ph ], [ %i.bt, %bb.u ] ; 2 uses
  %.04054 = phi ptr [ %1, %.lr.ph ], [ %.141, %bb.u ] ; 7 uses
  %i.p = add nsw i32 %.in, -1                     ; 2 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !36   ; 4 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !35     ; 4 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = trunc i64 %i.u to i32
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp eq i32 %.03755, 65536
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 2 ; 2 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !37
  %i.z = load i16, ptr %i.r, align 1, !tbaa !33
  %i.aa = zext i16 %i.z to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi ptr [ %i.y, %bb.d ], [ %i.r, %bb.c ] ; 8 uses
  %.138 = phi i32 [ 1, %bb.d ], [ %.03755, %bb.c ] ; 3 uses
  %.1 = phi i32 [ %i.aa, %bb.d ], [ %.03656, %bb.c ] ; 3 uses
  %i.ac = ptrtoint ptr %.04054 to i64             ; 2 uses
  %i.ad = sub i64 %i.n, %i.ac                     ; 2 uses
  %i.ae = icmp slt i64 %i.ad, 2
  br i1 %i.ae, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = and i32 %.1, %.138
  %.not44 = icmp eq i32 %i.af, 0
  br i1 %.not44, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = ptrtoint ptr %i.ab to i64
  %i.ah = sub i64 %i.s, %i.ag
  %i.ai = icmp slt i64 %i.ah, 2
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.q, ptr %0, align 8, !tbaa !35
  br label %bytestream2_get_le16.exit47

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store ptr %i.aj, ptr %0, align 8, !tbaa !37
  %i.ak = load i16, ptr %i.ab, align 1, !tbaa !33
  %i.al = zext i16 %i.ak to i32
  br label %bytestream2_get_le16.exit47

bytestream2_get_le16.exit47:                      ; preds = %bb.h, %bb.i
  %.0.i46 = phi i32 [ 0, %bb.h ], [ %i.al, %bb.i ] ; 2 uses
  %i.am = shl nuw nsw i32 %.0.i46, 1
  %i.an = and i32 %i.am, 16382                    ; 2 uses
  %i.ao = lshr i32 %.0.i46, 12
  %i.ap = and i32 %i.ao, 14
  %i.aq = add nuw nsw i32 %i.ap, 4                ; 2 uses
  %i.ar = sub i64 %i.ac, %i.o
  %i.as = zext nneg i32 %i.an to i64
  %i.at = icmp slt i64 %i.ar, %i.as
  br i1 %i.at, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bytestream2_get_le16.exit47
  %i.au = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.av = icmp samesign ult i64 %i.ad, %i.au
  br i1 %i.av, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @av_memcpy_backptr(ptr noundef %.04054, i32 noundef %i.an, i32 noundef %i.aq) #11
  %i.aw = getelementptr inbounds nuw i8, ptr %.04054, i64 %i.au
  br label %bb.u

bb.l:                                             ; preds = %bb.f
  %i.ax = shl i32 %.138, 1
  %i.ay = and i32 %.1, %i.ax
  %.not45 = icmp eq i32 %i.ay, 0
  %i.az = ptrtoint ptr %i.ab to i64
  %i.ba = sub i64 %i.s, %i.az                     ; 2 uses
  br i1 %.not45, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = icmp slt i64 %i.ba, 2
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr %i.q, ptr %0, align 8, !tbaa !35
  br label %bytestream2_get_le16.exit

bb.o:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store ptr %i.bc, ptr %0, align 8, !tbaa !37
  %i.bd = load i16, ptr %i.ab, align 1, !tbaa !33
  %i.be = zext i16 %i.bd to i64
  br label %bytestream2_get_le16.exit

bytestream2_get_le16.exit:                        ; preds = %bb.n, %bb.o
  %.0.i = phi i64 [ 0, %bb.n ], [ %i.be, %bb.o ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.04054, i64 %.0.i
  br label %bb.u

bb.p:                                             ; preds = %bb.l
  %i.bg = icmp slt i64 %i.ba, 1
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %i.q, ptr %0, align 8, !tbaa !35
  br label %bytestream2_get_byte.exit52

bb.r:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.bh, ptr %0, align 8, !tbaa !37
  %i.bi = load i8, ptr %i.ab, align 1, !tbaa !33
  br label %bytestream2_get_byte.exit52

bytestream2_get_byte.exit52:                      ; preds = %bb.q, %bb.r
  %.0.i51 = phi i8 [ 0, %bb.q ], [ %i.bi, %bb.r ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.04054, i64 1
  store i8 %.0.i51, ptr %.04054, align 1, !tbaa !33
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !36  ; 2 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !35    ; 3 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = icmp slt i64 %i.bo, 1
  br i1 %i.bp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bytestream2_get_byte.exit52
  store ptr %i.bk, ptr %0, align 8, !tbaa !35
  br label %bytestream2_get_byte.exit

bb.t:                                             ; preds = %bytestream2_get_byte.exit52
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store ptr %i.bq, ptr %0, align 8, !tbaa !37
  %i.br = load i8, ptr %i.bl, align 1, !tbaa !33
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.s, %bb.t
  %.0.i50 = phi i8 [ 0, %bb.s ], [ %i.br, %bb.t ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.04054, i64 2
  store i8 %.0.i50, ptr %i.bj, align 1, !tbaa !33
  br label %bb.u

bb.u:                                             ; preds = %bytestream2_get_le16.exit, %bytestream2_get_byte.exit, %bb.k
  %.141 = phi ptr [ %i.aw, %bb.k ], [ %i.bf, %bytestream2_get_le16.exit ], [ %i.bs, %bytestream2_get_byte.exit ]
  %i.bt = shl i32 %.138, 2
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.b, %bb.e, %bb.j, %bytestream2_get_le16.exit47, %bb.u, %bytestream2_get_le16.exit49.thread, %bytestream2_get_le16.exit49
  %.039 = phi i32 [ 0, %bytestream2_get_le16.exit49 ], [ 0, %bytestream2_get_le16.exit49.thread ], [ 0, %bb.u ], [ -1094995529, %bb.e ], [ -1094995529, %bb.j ], [ -1094995529, %bytestream2_get_le16.exit47 ], [ -1094995529, %bb.b ]
  ret i32 %.039
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @decode_blck(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) #7 {
bb.a:
  %i.a = mul nsw i32 %3, %2
  %i.b = sext i32 %i.a to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.b, i1 false)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1094995529, 1) i32 @decode_dds1(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #8 {
bb.a:
  %i.a = mul nsw i32 %3, %2
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = or i32 %3, %2
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.loopexit83

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp slt i64 %i.k, 2
  br i1 %i.l, label %bytestream2_get_le16.exit79.thread, label %bytestream2_get_le16.exit79

bytestream2_get_le16.exit79.thread:               ; preds = %bb.b
  store ptr %i.g, ptr %0, align 8, !tbaa !35
  br label %.loopexit83

bytestream2_get_le16.exit79:                      ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store ptr %i.m, ptr %0, align 8, !tbaa !37
  %i.n = load i16, ptr %i.h, align 1, !tbaa !33   ; 2 uses
  %i.o = ptrtoint ptr %i.c to i64                 ; 3 uses
  %.not7386 = icmp eq i16 %i.n, 0
  br i1 %.not7386, label %.loopexit83, label %.lr.ph

.lr.ph:                                           ; preds = %bytestream2_get_le16.exit79
  %i.p = zext i16 %i.n to i32
  %i.q = ptrtoint ptr %1 to i64
  %i.r = sext i32 %2 to i64                       ; 2 uses
  %i.s = icmp slt i32 %2, 4
  %i.t = add nuw nsw i32 %2, 4
  %i.u = zext nneg i32 %i.t to i64
  %i.v = add nuw nsw i32 %2, 1
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = zext nneg i32 %2 to i64                  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %.in = phi i32 [ %i.p, %.lr.ph ], [ %i.y, %.loopexit ]
  %.06589 = phi i32 [ 0, %.lr.ph ], [ %.1, %.loopexit ]
  %.06688 = phi i32 [ 65536, %.lr.ph ], [ %i.dg, %.loopexit ] ; 2 uses
  %.06987 = phi ptr [ %1, %.lr.ph ], [ %.2, %.loopexit ] ; 12 uses
  %i.y = add nsw i32 %.in, -1                     ; 2 uses
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !36   ; 4 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !35    ; 4 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 4 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  %i.af = icmp slt i32 %i.ae, 2
  br i1 %i.af, label %.loopexit83, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp eq i32 %.06688, 65536
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 2 ; 2 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !37
  %i.ai = load i16, ptr %i.aa, align 1, !tbaa !33
  %i.aj = zext i16 %i.ai to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ak = phi ptr [ %i.ah, %bb.e ], [ %i.aa, %bb.d ] ; 9 uses
  %.167 = phi i32 [ 1, %bb.e ], [ %.06688, %bb.d ] ; 3 uses
  %.1 = phi i32 [ %i.aj, %bb.e ], [ %.06589, %bb.d ] ; 3 uses
  %i.al = and i32 %.1, %.167
  %.not74 = icmp eq i32 %i.al, 0
  br i1 %.not74, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.ab, %i.am
  %i.ao = icmp slt i64 %i.an, 2
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.z, ptr %0, align 8, !tbaa !35
  br label %bytestream2_get_le16.exit77

bb.i:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store ptr %i.ap, ptr %0, align 8, !tbaa !37
  %i.aq = load i16, ptr %i.ak, align 1, !tbaa !33
  %i.ar = zext i16 %i.aq to i32
  br label %bytestream2_get_le16.exit77

bytestream2_get_le16.exit77:                      ; preds = %bb.h, %bb.i
  %.0.i76 = phi i32 [ 0, %bb.h ], [ %i.ar, %bb.i ] ; 2 uses
  %i.as = shl nuw nsw i32 %.0.i76, 2
  %i.at = and i32 %i.as, 32764                    ; 2 uses
  %i.au = lshr i32 %.0.i76, 12
  %i.av = and i32 %i.au, 14
  %i.aw = add nuw nsw i32 %i.av, 4                ; 2 uses
  %i.ax = ptrtoint ptr %.06987 to i64             ; 2 uses
  %i.ay = sub i64 %i.ax, %i.q
  %i.az = zext nneg i32 %i.at to i64
  %i.ba = icmp slt i64 %i.ay, %i.az
  br i1 %i.ba, label %.loopexit83, label %bb.j

bb.j:                                             ; preds = %bytestream2_get_le16.exit77
  %i.bb = sub i64 %i.o, %i.ax
  %i.bc = shl nuw nsw i32 %i.aw, 1
  %i.bd = add nsw i32 %i.bc, %2
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i64 %i.bb, %i.be
  br i1 %i.bf, label %.loopexit83, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.bg = sub nsw i32 0, %i.at
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader
  %.06485 = phi i32 [ 0, %.preheader ], [ %i.bu, %bb.k ]
  %.17084 = phi ptr [ %.06987, %.preheader ], [ %i.bt, %bb.k ] ; 7 uses
  %i.bi = getelementptr inbounds i8, ptr %.17084, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !33  ; 4 uses
  %i.bk = getelementptr i8, ptr %.17084, i64 %i.r ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 1
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !33
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %.17084, i64 1
  store i8 %i.bj, ptr %i.bm, align 1, !tbaa !33
  store i8 %i.bj, ptr %.17084, align 1, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %.17084, i64 2 ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.bh
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !33  ; 4 uses
  %i.bq = getelementptr i8, ptr %i.bn, i64 %i.r   ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 1
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !33
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %.17084, i64 3
  store i8 %i.bp, ptr %i.bs, align 1, !tbaa !33
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %.17084, i64 4 ; 2 uses
  %i.bu = add nuw nsw i32 %.06485, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.bu, %i.aw
  br i1 %exitcond.not.1, label %.loopexit, label %bb.k, !llvm.loop !67

bb.l:                                             ; preds = %bb.f
  %i.bv = shl i32 %.167, 1
  %i.bw = and i32 %.1, %i.bv
  %.not75 = icmp eq i32 %i.bw, 0
  br i1 %.not75, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = ptrtoint ptr %i.ak to i64
  %i.by = sub i64 %i.ab, %i.bx
  %i.bz = icmp slt i64 %i.by, 2
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr %i.z, ptr %0, align 8, !tbaa !35
  br label %bytestream2_get_le16.exit

bb.o:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store ptr %i.ca, ptr %0, align 8, !tbaa !37
  %i.cb = load i16, ptr %i.ak, align 1, !tbaa !33
  %i.cc = zext i16 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 1
  br label %bytestream2_get_le16.exit

bytestream2_get_le16.exit:                        ; preds = %bb.n, %bb.o
  %.0.i = phi i64 [ 0, %bb.n ], [ %i.cd, %bb.o ]  ; 2 uses
  %i.ce = ptrtoint ptr %.06987 to i64
  %i.cf = sub i64 %i.ce, %i.o
  %i.cg = icmp slt i64 %i.cf, %.0.i
  br i1 %i.cg, label %.loopexit83, label %bb.p

bb.p:                                             ; preds = %bytestream2_get_le16.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %.06987, i64 %.0.i
  br label %.loopexit

bb.q:                                             ; preds = %bb.l
  %i.ci = ptrtoint ptr %.06987 to i64
  %i.cj = sub i64 %i.o, %i.ci
  %i.ck = icmp slt i64 %i.cj, %i.u
  %or.cond = select i1 %i.s, i1 true, i1 %i.ck
  br i1 %or.cond, label %.loopexit83, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = ptrtoint ptr %i.ak to i64
  %i.cm = sub i64 %i.ab, %i.cl
  %i.cn = icmp slt i64 %i.cm, 1
  br i1 %i.cn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %i.z, ptr %0, align 8, !tbaa !35
  br label %bytestream2_get_byte.exit82

bb.t:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store ptr %i.co, ptr %0, align 8, !tbaa !37
  %i.cp = load i8, ptr %i.ak, align 1, !tbaa !33
  br label %bytestream2_get_byte.exit82

bytestream2_get_byte.exit82:                      ; preds = %bb.s, %bb.t
  %.0.i81 = phi i8 [ 0, %bb.s ], [ %i.cp, %bb.t ] ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.06987, i64 %i.w
  store i8 %.0.i81, ptr %i.cq, align 1, !tbaa !33
  %i.cr = getelementptr inbounds nuw i8, ptr %.06987, i64 %i.x
  store i8 %.0.i81, ptr %i.cr, align 1, !tbaa !33
  %i.cs = getelementptr inbounds nuw i8, ptr %.06987, i64 1
  store i8 %.0.i81, ptr %i.cs, align 1, !tbaa !33
  store i8 %.0.i81, ptr %.06987, align 1, !tbaa !33
  %i.ct = getelementptr inbounds nuw i8, ptr %.06987, i64 2 ; 3 uses
  %i.cu = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.cv = load ptr, ptr %0, align 8, !tbaa !35    ; 3 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = icmp slt i64 %i.cy, 1
  br i1 %i.cz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bytestream2_get_byte.exit82
  store ptr %i.cu, ptr %0, align 8, !tbaa !35
  br label %bytestream2_get_byte.exit

bb.v:                                             ; preds = %bytestream2_get_byte.exit82
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store ptr %i.da, ptr %0, align 8, !tbaa !37
  %i.db = load i8, ptr %i.cv, align 1, !tbaa !33
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.u, %bb.v
  %.0.i80 = phi i8 [ 0, %bb.u ], [ %i.db, %bb.v ] ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.w
  store i8 %.0.i80, ptr %i.dc, align 1, !tbaa !33
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.x
  store i8 %.0.i80, ptr %i.dd, align 1, !tbaa !33
  %i.de = getelementptr inbounds nuw i8, ptr %.06987, i64 3
  store i8 %.0.i80, ptr %i.de, align 1, !tbaa !33
  store i8 %.0.i80, ptr %i.ct, align 1, !tbaa !33
  %i.df = getelementptr inbounds nuw i8, ptr %.06987, i64 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.p, %bytestream2_get_byte.exit
  %.2 = phi ptr [ %i.df, %bytestream2_get_byte.exit ], [ %i.ch, %bb.p ], [ %i.bt, %bb.k ]
  %i.dg = shl i32 %.167, 2
  %.not73 = icmp eq i32 %i.y, 0
  br i1 %.not73, label %.loopexit83, label %bb.c, !llvm.loop !68

.loopexit83:                                      ; preds = %bb.c, %bb.j, %bytestream2_get_le16.exit77, %bytestream2_get_le16.exit, %bb.q, %.loopexit, %bytestream2_get_le16.exit79.thread, %bytestream2_get_le16.exit79, %bb.a
  %.068 = phi i32 [ -1094995529, %bb.a ], [ 0, %bytestream2_get_le16.exit79 ], [ 0, %bytestream2_get_le16.exit79.thread ], [ -1094995529, %bb.q ], [ -1094995529, %bytestream2_get_le16.exit ], [ -1094995529, %bb.c ], [ -1094995529, %bytestream2_get_le16.exit77 ], [ -1094995529, %bb.j ], [ 0, %.loopexit ]
  ret i32 %.068
}

declare void @av_memcpy_backptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

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
!29 = !{!27, !6, i64 112}
!30 = !{!27, !6, i64 116}
!31 = !{!"DfaContext", !5, i64 0, !14, i64 1024}
!32 = !{!31, !14, i64 1024}
!33 = !{!5, !5, i64 0}
!34 = !{!"GetByteContext", !14, i64 0, !14, i64 8, !14, i64 16}
!35 = !{!34, !14, i64 0}
!36 = !{!34, !14, i64 8}
!37 = !{!14, !14, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!27, !6, i64 136}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !38}
!42 = distinct !{!42, !38}
!43 = distinct !{!43, !38}
!44 = distinct !{!44, !38}
!45 = !{!27, !6, i64 80}
!46 = !{!27, !14, i64 72}
!47 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!48 = !{!47, !14, i64 24}
!49 = !{!47, !6, i64 32}
!50 = !{!34, !14, i64 16}
!51 = !{!6, !6, i64 0}
!52 = !{!9, !9, i64 0}
!53 = distinct !{!53, !38}
!54 = distinct !{!54, !38}
!55 = distinct !{!55, !38}
!56 = distinct !{!56, !38}
!57 = distinct !{!57, !38}
!58 = distinct !{!58, !38, !62, !63}
!59 = distinct !{!59, !38, !62, !63}
!60 = distinct !{!60, !38, !63, !62}
!61 = distinct !{!61, !38}
!62 = !{!"llvm.loop.isvectorized", i32 1}
!63 = !{!"llvm.loop.unroll.runtime.disable"}
!64 = !{!"branch_weights", i32 4, i32 12}
!65 = distinct !{!65, !38}
!66 = distinct !{!66, !38}
!67 = distinct !{!67, !38}
!68 = distinct !{!68, !38}
end_hunk_0
