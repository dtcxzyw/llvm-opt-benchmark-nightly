Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/lscrdec?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"lscr\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"LEAD Screen Capture\00", align 1
@ff_lscr_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 237, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 248, ptr null, ptr null, ptr null, ptr @lscr_decode_init, %union.anon { ptr @decode_frame_lscr }, ptr @lscr_decode_close, ptr @lscr_decode_flush, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"inflate returned error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"%d undecompressed bytes left in buffer\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @lscr_decode_init(ptr noundef initializes((136, 140), (156, 160)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 2, ptr %i.c, align 4, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 3, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.e, align 8, !tbaa !37
  %i.f = tail call ptr @av_frame_alloc() #5       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.f, ptr %i.g, align 8, !tbaa !38
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ff_pngdsp_init(ptr noundef nonnull %i.b) #5
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.i = tail call i32 @ff_inflate_init(ptr noundef nonnull %i.h, ptr noundef nonnull %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ -12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_frame_lscr(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !45   ; 4 uses
  %i.h = icmp slt i32 %i.g, 2
  br i1 %i.h, label %.thread183, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %i.g, 2
  br i1 %i.i, label %.thread183, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 5 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.d, label %bytestream2_init.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 141) #5
  tail call void @abort() #6
  unreachable

bytestream2_init.exit:                            ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !47
  %i.m = zext nneg i32 %i.g to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 4 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store ptr %i.p, ptr %i.c, align 8, !tbaa !49
  %i.q = load i16, ptr %i.k, align 1, !tbaa !50   ; 3 uses
  %i.r = zext i16 %i.q to i32                     ; 3 uses
  %gepdiff = add nsw i32 %i.g, -2
  %i.s = mul nuw nsw i32 %i.r, 20
  %i.t = or disjoint i32 %i.s, 2
  %i.u = icmp samesign ugt i32 %i.t, %gepdiff
  br i1 %i.u, label %.thread183, label %bb.e

bb.e:                                             ; preds = %bytestream2_init.exit
  %.not = icmp eq i16 %i.q, 0                     ; 2 uses
  %i.v = zext i1 %.not to i32
  %i.w = tail call i32 @ff_reget_buffer(ptr noundef nonnull %0, ptr noundef %i.e, i32 noundef %i.v) #5 ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %.thread183, label %.preheader

.preheader:                                       ; preds = %bb.e
  br i1 %.not, label %.thread, label %.lr.ph200

.lr.ph200:                                        ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.ac = icmp eq i16 %i.q, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 276 ; 3 uses
  %i.ae = mul nuw nsw i32 %i.r, 12
  %i.af = or disjoint i32 %i.ae, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 124 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 116 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph200, %decode_idat.exit
  %.0123199 = phi i32 [ 0, %.lr.ph200 ], [ %i.gj, %decode_idat.exit ] ; 2 uses
  %.0126198 = phi i32 [ 0, %.lr.ph200 ], [ %i.dh, %decode_idat.exit ] ; 2 uses
  %i.av = tail call i32 @inflateReset(ptr noundef nonnull %i.y) #5
  %.not141 = icmp eq i32 %i.av, 0
  br i1 %.not141, label %bb.g, label %.thread183

bb.g:                                             ; preds = %bb.f
  %i.aw = mul nuw nsw i32 %.0123199, 12
  %i.ax = or disjoint i32 %i.aw, 2
  %i.ay = load ptr, ptr %i.o, align 8, !tbaa !48  ; 9 uses
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !47  ; 3 uses
  %i.ba = ptrtoint ptr %i.ay to i64               ; 12 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = trunc i64 %i.bc to i32                  ; 2 uses
  %..i166 = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 %i.bd)
  %i.be = sext i32 %..i166 to i64
  %i.bf = getelementptr inbounds i8, ptr %i.az, i64 %i.be ; 3 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.ba, %i.bg
  %i.bi = icmp slt i64 %i.bh, 2
  br i1 %i.bi, label %bytestream2_get_le16.exit155, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 2 ; 3 uses
  store ptr %i.bj, ptr %i.c, align 8, !tbaa !49
  %i.bk = load i16, ptr %i.bf, align 1, !tbaa !50
  %i.bl = zext i16 %i.bk to i32
  %.pre = ptrtoint ptr %i.bj to i64
  br label %bytestream2_get_le16.exit155

bytestream2_get_le16.exit155:                     ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.h ], [ %i.ba, %bb.g ]
  %i.bm = phi ptr [ %i.bj, %bb.h ], [ %i.ay, %bb.g ] ; 2 uses
  %.0.i154 = phi i32 [ %i.bl, %bb.h ], [ 0, %bb.g ] ; 4 uses
  %i.bn = sub i64 %i.ba, %.pre-phi
  %i.bo = icmp slt i64 %i.bn, 2
  br i1 %i.bo, label %bytestream2_get_le16.exit153, label %bb.i

bb.i:                                             ; preds = %bytestream2_get_le16.exit155
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 2 ; 3 uses
  store ptr %i.bp, ptr %i.c, align 8, !tbaa !49
  %i.bq = load i16, ptr %i.bm, align 1, !tbaa !50
  %i.br = zext i16 %i.bq to i32
  %.pre211 = ptrtoint ptr %i.bp to i64
  br label %bytestream2_get_le16.exit153

bytestream2_get_le16.exit153:                     ; preds = %bytestream2_get_le16.exit155, %bb.i
  %.pre-phi212 = phi i64 [ %.pre211, %bb.i ], [ %i.ba, %bytestream2_get_le16.exit155 ]
  %i.bs = phi ptr [ %i.bp, %bb.i ], [ %i.ay, %bytestream2_get_le16.exit155 ] ; 2 uses
  %.0.i152 = phi i32 [ %i.br, %bb.i ], [ 0, %bytestream2_get_le16.exit155 ] ; 4 uses
  %i.bt = sub i64 %i.ba, %.pre-phi212
  %i.bu = icmp slt i64 %i.bt, 2
  br i1 %i.bu, label %bytestream2_get_le16.exit151, label %bb.j

bb.j:                                             ; preds = %bytestream2_get_le16.exit153
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 2 ; 3 uses
  store ptr %i.bv, ptr %i.c, align 8, !tbaa !49
  %i.bw = load i16, ptr %i.bs, align 1, !tbaa !50
  %i.bx = zext i16 %i.bw to i32
  %.pre213 = ptrtoint ptr %i.bv to i64
  br label %bytestream2_get_le16.exit151

bytestream2_get_le16.exit151:                     ; preds = %bytestream2_get_le16.exit153, %bb.j
  %.pre-phi214 = phi i64 [ %.pre213, %bb.j ], [ %i.ba, %bytestream2_get_le16.exit153 ]
  %i.by = phi ptr [ %i.bv, %bb.j ], [ %i.ay, %bytestream2_get_le16.exit153 ] ; 2 uses
  %.0.i150 = phi i32 [ %i.bx, %bb.j ], [ 0, %bytestream2_get_le16.exit153 ] ; 2 uses
  %i.bz = sub i64 %i.ba, %.pre-phi214
  %i.ca = icmp slt i64 %i.bz, 2
  br i1 %i.ca, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bytestream2_get_le16.exit151
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !51
  br label %bytestream2_get_le16.exit

bb.l:                                             ; preds = %bytestream2_get_le16.exit151
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 2 ; 2 uses
  store ptr %i.cb, ptr %i.c, align 8, !tbaa !49
  %i.cc = load i16, ptr %i.by, align 1, !tbaa !50
  %i.cd = zext i16 %i.cc to i32
  br label %bytestream2_get_le16.exit

bytestream2_get_le16.exit:                        ; preds = %bb.k, %bb.l
  %i.ce = phi ptr [ %i.ay, %bb.k ], [ %i.cb, %bb.l ] ; 3 uses
  %.0.i = phi i32 [ 0, %bb.k ], [ %i.cd, %bb.l ]  ; 2 uses
  %i.cf = sub nsw i32 %.0.i150, %.0.i154          ; 3 uses
  %i.cg = sub nsw i32 %.0.i, %.0.i152             ; 3 uses
  store i32 %i.cg, ptr %i.z, align 8, !tbaa !52
  %i.ch = icmp slt i32 %i.cf, 1
  br i1 %i.ch, label %.thread183, label %bb.m

bb.m:                                             ; preds = %bytestream2_get_le16.exit
  %i.ci = load i32, ptr %i.aa, align 8, !tbaa !53 ; 3 uses
  %.not142 = icmp slt i32 %.0.i154, %i.ci
  br i1 %.not142, label %bb.n, label %.thread183

bb.n:                                             ; preds = %bb.m
  %i.cj = icmp samesign ugt i32 %.0.i150, %i.ci
  %i.ck = icmp slt i32 %i.cg, 1
  %or.cond4 = select i1 %i.cj, i1 true, i1 %i.ck
  br i1 %or.cond4, label %.thread183, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = load i32, ptr %i.ab, align 4, !tbaa !54 ; 3 uses
  %.not143 = icmp sge i32 %.0.i152, %i.cl
  %i.cm = icmp sgt i32 %.0.i, %i.cl
  %or.cond = select i1 %.not143, i1 true, i1 %i.cm
  br i1 %or.cond, label %.thread183, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = ptrtoint ptr %i.ce to i64
  %i.co = sub i64 %i.ba, %i.cn
  %i.cp = icmp slt i64 %i.co, 4
  br i1 %i.cp, label %bytestream2_get_le32.exit162, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store ptr %i.cq, ptr %i.c, align 8, !tbaa !49
  %i.cr = load i32, ptr %i.ce, align 1, !tbaa !50
  br label %bytestream2_get_le32.exit162

bytestream2_get_le32.exit162:                     ; preds = %bb.p, %bb.q
  %.0.i161 = phi i32 [ %i.cr, %bb.q ], [ 0, %bb.p ] ; 3 uses
  %4 = icmp eq i32 %i.cf, %i.ci
  %or.cond185 = and i1 %i.ac, %4
  br i1 %or.cond185, label %5, label %12

5:                                                ; preds = %bytestream2_get_le32.exit162
  %6 = icmp eq i32 %i.cg, %i.cl
  %7 = icmp eq i32 %.0.i154, 0
  %or.cond8 = select i1 %6, i1 %7, i1 false
  %8 = icmp eq i32 %.0.i152, 0
  %or.cond10 = select i1 %or.cond8, i1 %8, i1 false
  br i1 %or.cond10, label %9, label %12

9:                                                ; preds = %5
  %10 = load i32, ptr %i.ad, align 4, !tbaa !59
  %11 = or i32 %10, 2
  br label %bb.r

12:                                               ; preds = %5, %bytestream2_get_le32.exit162
  %13 = load i32, ptr %i.ad, align 4, !tbaa !59
  %14 = and i32 %13, -3
  br label %bb.r

bb.r:                                             ; preds = %12, %9
  %storemerge.a = phi i32 [ %14, %12 ], [ %11, %9 ]
  store i32 %storemerge.a, ptr %i.ad, align 4, !tbaa !59
  %i.cs = add nsw i32 %i.af, %.0126198            ; 2 uses
  %i.ct = icmp slt i32 %i.cs, 0
  %..i168 = tail call i32 @llvm.smin.i32(i32 %i.cs, i32 %i.bd)
  %.0.i169 = select i1 %i.ct, i32 0, i32 %..i168
  %i.cu = sext i32 %.0.i169 to i64
  %i.cv = getelementptr inbounds i8, ptr %i.az, i64 %i.cu ; 3 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.ba, %i.cw
  %i.cy = icmp slt i64 %i.cx, 4
  br i1 %i.cy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !51
  br label %bytestream2_get_be32.exit165

bb.t:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 3 uses
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !49
  %i.da = load i32, ptr %i.cv, align 1, !tbaa !50
  %i.db = tail call i32 @llvm.bswap.i32(i32 %i.da)
  %.pre215 = ptrtoint ptr %i.cz to i64
  br label %bytestream2_get_be32.exit165

bytestream2_get_be32.exit165:                     ; preds = %bb.s, %bb.t
  %.pre-phi216 = phi i64 [ %i.ba, %bb.s ], [ %.pre215, %bb.t ]
  %i.dc = phi ptr [ %i.ay, %bb.s ], [ %i.cz, %bb.t ] ; 2 uses
  %.0.i164 = phi i32 [ 0, %bb.s ], [ %i.db, %bb.t ]
  %i.dd = sub i64 %i.ba, %.pre-phi216
  %i.de = icmp slt i64 %i.dd, 4
  br i1 %i.de, label %bytestream2_get_le32.exit160.thread, label %bytestream2_get_le32.exit160

bytestream2_get_le32.exit160.thread:              ; preds = %bytestream2_get_be32.exit165
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !51
  br label %.thread183

bytestream2_get_le32.exit160:                     ; preds = %bytestream2_get_be32.exit165
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store ptr %i.df, ptr %i.c, align 8, !tbaa !49
  %i.dg = load i32, ptr %i.dc, align 1, !tbaa !50
  %.not144 = icmp eq i32 %i.dg, 1413563465
  br i1 %.not144, label %bb.u, label %.thread183

bb.u:                                             ; preds = %bytestream2_get_le32.exit160
  %i.dh = add i32 %.0.i161, %.0126198
  store i32 0, ptr %i.ag, align 4, !tbaa !60
  %i.di = mul nuw nsw i32 %i.cf, 3                ; 3 uses
  store i32 %i.di, ptr %i.ah, align 4, !tbaa !61
  %i.dj = add nuw nsw i32 %i.di, 16
  %i.dk = zext nneg i32 %i.dj to i64
  tail call void @av_fast_padded_malloc(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj, i64 noundef %i.dk) #5
  %i.dl = load ptr, ptr %i.ai, align 8, !tbaa !62
  %.not145 = icmp eq ptr %i.dl, null
  br i1 %.not145, label %.thread183, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = load i32, ptr %i.ah, align 4, !tbaa !61
  %i.dn = sext i32 %i.dm to i64
  tail call void @av_fast_padded_malloc(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i64 noundef %i.dn) #5
  %i.do = load ptr, ptr %i.ak, align 8, !tbaa !63
  %.not146 = icmp eq ptr %i.do, null
  br i1 %.not146, label %.thread183, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dp = add nuw nsw i32 %i.di, 1                ; 2 uses
  store i32 %i.dp, ptr %i.am, align 8, !tbaa !64
  %i.dq = load ptr, ptr %i.ai, align 8, !tbaa !62
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 15 ; 2 uses
  store ptr %i.dr, ptr %i.an, align 8, !tbaa !65
  store i32 %i.dp, ptr %i.ao, align 8, !tbaa !66
  store ptr %i.dr, ptr %i.ap, align 8, !tbaa !67
  %i.ds = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.dt = load i32, ptr %i.ab, align 4, !tbaa !54
  %i.du = xor i32 %.0.i152, -1
  %i.dv = add i32 %i.dt, %i.du
  %i.dw = load i32, ptr %i.aq, align 8, !tbaa !68 ; 2 uses
  %i.dx = mul nsw i32 %i.dv, %i.dw
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %i.ds, i64 %i.dy
  %i.ea = mul nuw nsw i32 %.0.i154, 3
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.eb
  store ptr %i.ec, ptr %i.ar, align 8, !tbaa !69
  %i.ed = sub nsw i32 0, %i.dw
  store i32 %i.ed, ptr %i.as, align 8, !tbaa !70
  %i.ee = icmp sgt i32 %.0.i161, 16
  br i1 %i.ee, label %.lr.ph, label %decode_idat.exit

.lr.ph:                                           ; preds = %bb.w, %bytestream2_get_le32.exit
  %.0196 = phi i32 [ %.0.i163, %bytestream2_get_le32.exit ], [ %.0.i164, %bb.w ] ; 4 uses
  %.0122195 = phi i32 [ %i.fq, %bytestream2_get_le32.exit ], [ %.0.i161, %bb.w ]
  %i.ef = load ptr, ptr %i.o, align 8, !tbaa !48
  %i.eg = load ptr, ptr %i.c, align 8, !tbaa !51  ; 3 uses
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei                    ; 2 uses
  %i.ek = trunc i64 %i.ej to i32                  ; 2 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %.0196, i32 %i.ek)
  store i32 %spec.select.i, ptr %i.at, align 8, !tbaa !71
  store ptr %i.eg, ptr %i.y, align 8, !tbaa !72
  %i.el = icmp slt i32 %.0196, 1
  br i1 %i.el, label %.thread183, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %i.em = zext nneg i32 %.0196 to i64
  %..i.i = tail call i64 @llvm.smin.i64(i64 %i.ej, i64 %i.em)
  %i.en = getelementptr inbounds i8, ptr %i.eg, i64 %..i.i
  store ptr %i.en, ptr %i.c, align 8, !tbaa !51
  %.not35.i = icmp eq i32 %i.ek, 0
  br i1 %.not35.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %bb.ai
  %i.eo = tail call i32 @inflate(ptr noundef nonnull %i.y, i32 noundef 1) #5 ; 3 uses
  %or.cond.i = icmp ugt i32 %i.eo, 1
  br i1 %or.cond.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i
  %i.ep = load ptr, ptr %i.au, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ep, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %i.eo) #5
  br label %.thread183

bb.z:                                             ; preds = %.lr.ph.i
  %i.eq = load i32, ptr %i.ao, align 8, !tbaa !66
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.es = load i32, ptr %i.ag, align 4, !tbaa !60 ; 3 uses
  %i.et = load i32, ptr %i.z, align 8, !tbaa !52
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ev = load ptr, ptr %i.ar, align 8, !tbaa !69
  %i.ew = load i32, ptr %i.as, align 8, !tbaa !70 ; 2 uses
  %i.ex = mul nsw i32 %i.ew, %i.es
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds i8, ptr %i.ev, i64 %i.ey ; 2 uses
  %i.fa = icmp eq i32 %i.es, 0
  br i1 %i.fa, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fb = load ptr, ptr %i.ak, align 8, !tbaa !63
  br label %handle_row.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.fc = sext i32 %i.ew to i64
  %i.fd = sub nsw i64 0, %i.fc
  %i.fe = getelementptr inbounds i8, ptr %i.ez, i64 %i.fd
  br label %handle_row.exit.i

handle_row.exit.i:                                ; preds = %bb.ad, %bb.ac
  %.0.i.i = phi ptr [ %i.fb, %bb.ac ], [ %i.fe, %bb.ad ]
  %i.ff = load ptr, ptr %i.an, align 8, !tbaa !65 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !50
  %i.fh = zext i8 %i.fg to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fj = load i32, ptr %i.ah, align 4, !tbaa !61
  tail call void @ff_png_filter_row(ptr noundef nonnull %i.b, ptr noundef %i.ez, i32 noundef %i.fh, ptr noundef nonnull %i.fi, ptr noundef %.0.i.i, i32 noundef %i.fj, i32 noundef 3) #5
  %i.fk = load i32, ptr %i.ag, align 4, !tbaa !60
  %i.fl = add nsw i32 %i.fk, 1
  store i32 %i.fl, ptr %i.ag, align 4, !tbaa !60
  br label %bb.ae

bb.ae:                                            ; preds = %handle_row.exit.i, %bb.aa
  %i.fm = load i32, ptr %i.am, align 8, !tbaa !64
  store i32 %i.fm, ptr %i.ao, align 8, !tbaa !66
  %i.fn = load ptr, ptr %i.an, align 8, !tbaa !65
  store ptr %i.fn, ptr %i.ap, align 8, !tbaa !67
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.z
  %i.fo = icmp eq i32 %i.eo, 1
  %.pre.i = load i32, ptr %i.at, align 8, !tbaa !71 ; 2 uses
  %.not32.i = icmp eq i32 %.pre.i, 0              ; 2 uses
  br i1 %i.fo, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  br i1 %.not32.i, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fp = load ptr, ptr %i.au, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fp, i32 noundef 24, ptr noundef nonnull @.str.6, i32 noundef %.pre.i) #5
  br label %.loopexit

bb.ai:                                            ; preds = %bb.af
  br i1 %.not32.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !41

.loopexit:                                        ; preds = %bb.ai, %bb.ah, %bb.x, %bb.ag
  %.neg = add nsw i32 %.0122195, -16
  %i.fq = sub nsw i32 %.neg, %.0196               ; 2 uses
  %i.fr = icmp sgt i32 %i.fq, 16
  br i1 %i.fr, label %bb.aj, label %decode_idat.exit

bb.aj:                                            ; preds = %.loopexit
  %i.fs = load ptr, ptr %i.o, align 8, !tbaa !48  ; 4 uses
  %i.ft = load ptr, ptr %i.c, align 8, !tbaa !51  ; 2 uses
  %i.fu = ptrtoint ptr %i.fs to i64               ; 4 uses
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %..i = tail call i64 @llvm.smin.i64(i64 %i.fw, i64 4)
  %i.fx = getelementptr inbounds i8, ptr %i.ft, i64 %..i ; 3 uses
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = sub i64 %i.fu, %i.fy
  %i.ga = icmp slt i64 %i.fz, 4
  br i1 %i.ga, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.fs, ptr %i.c, align 8, !tbaa !51
  br label %bytestream2_get_be32.exit

bb.al:                                            ; preds = %bb.aj
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 4 ; 3 uses
  store ptr %i.gb, ptr %i.c, align 8, !tbaa !49
  %i.gc = load i32, ptr %i.fx, align 1, !tbaa !50
  %i.gd = tail call i32 @llvm.bswap.i32(i32 %i.gc)
  %.pre217 = ptrtoint ptr %i.gb to i64
  br label %bytestream2_get_be32.exit

bytestream2_get_be32.exit:                        ; preds = %bb.ak, %bb.al
  %.pre-phi218 = phi i64 [ %i.fu, %bb.ak ], [ %.pre217, %bb.al ]
  %i.ge = phi ptr [ %i.fs, %bb.ak ], [ %i.gb, %bb.al ] ; 2 uses
  %.0.i163 = phi i32 [ 0, %bb.ak ], [ %i.gd, %bb.al ]
  %i.gf = sub i64 %i.fu, %.pre-phi218
  %i.gg = icmp slt i64 %i.gf, 4
  br i1 %i.gg, label %bytestream2_get_le32.exit.thread, label %bytestream2_get_le32.exit

bytestream2_get_le32.exit.thread:                 ; preds = %bytestream2_get_be32.exit
  store ptr %i.fs, ptr %i.c, align 8, !tbaa !51
  br label %.thread183

bytestream2_get_le32.exit:                        ; preds = %bytestream2_get_be32.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  store ptr %i.gh, ptr %i.c, align 8, !tbaa !49
  %i.gi = load i32, ptr %i.ge, align 1, !tbaa !50
  %.not147 = icmp eq i32 %i.gi, 1413563465
  br i1 %.not147, label %.lr.ph, label %.thread183, !llvm.loop !42

decode_idat.exit:                                 ; preds = %.loopexit, %bb.w
  %i.gj = add nuw nsw i32 %.0123199, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.gj, %i.r
  br i1 %exitcond.not, label %.thread, label %bb.f, !llvm.loop !43

.thread:                                          ; preds = %decode_idat.exit, %.preheader
  %i.gk = getelementptr inbounds nuw i8, ptr %i.e, i64 276
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !59
  %i.gm = and i32 %i.gl, 2
  %.not149 = icmp eq i32 %i.gm, 0
  %i.gn = select i1 %.not149, i32 2, i32 1
  %i.go = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i32 %i.gn, ptr %i.go, align 8, !tbaa !74
  %i.gp = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.e) #5 ; 2 uses
  %i.gq = icmp slt i32 %i.gp, 0
  br i1 %i.gq, label %.thread183, label %bb.am

bb.am:                                            ; preds = %.thread
  store i32 1, ptr %2, align 4, !tbaa !68
  %i.gr = load i32, ptr %i.f, align 8, !tbaa !45
  br label %.thread183

.thread183:                                       ; preds = %bb.m, %bb.n, %bb.o, %bb.u, %bb.v, %bytestream2_get_le16.exit, %bb.f, %bytestream2_get_le32.exit160, %.lr.ph, %bytestream2_get_le32.exit, %bytestream2_get_le32.exit.thread, %bb.y, %bytestream2_get_le32.exit160.thread, %.thread, %bb.e, %bytestream2_init.exit, %bb.b, %bb.a, %bb.am
  %.3 = phi i32 [ -1094995529, %.lr.ph ], [ -1094995529, %bb.a ], [ 0, %bb.b ], [ -1094995529, %bytestream2_init.exit ], [ %i.w, %bb.e ], [ %i.gr, %bb.am ], [ %i.gp, %.thread ], [ -1094995529, %bytestream2_get_le32.exit160.thread ], [ -1094995529, %bytestream2_get_le32.exit.thread ], [ -542398533, %bb.y ], [ -1094995529, %bytestream2_get_le32.exit ], [ -1094995529, %bb.n ], [ -1094995529, %bb.o ], [ -12, %bb.u ], [ -12, %bb.v ], [ -1094995529, %bytestream2_get_le16.exit ], [ -542398533, %bb.f ], [ -1094995529, %bytestream2_get_le32.exit160 ], [ -1094995529, %bb.m ]
  ret i32 %.3
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @lscr_decode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #5
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @av_freep(ptr noundef nonnull %i.d) #5
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @av_freep(ptr noundef nonnull %i.e) #5
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  tail call void @ff_inflate_end(ptr noundef nonnull %i.f) #5
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @lscr_decode_flush(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  tail call void @av_frame_unref(ptr noundef %i.d) #5
  ret void
}
end_hunk_0
