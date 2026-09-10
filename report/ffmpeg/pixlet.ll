Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pixlet?download=true
inline.NumInlined: 45
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [7 x i8] c"pixlet\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Apple Pixlet\00", align 1
@ff_pixlet_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 216, i32 4098, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 132464, ptr null, ptr null, ptr null, ptr @pixlet_init, %union.anon { ptr @pixlet_decode_frame }, ptr @pixlet_close, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid packet size %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Version %d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Depth %d\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"error in lowpass coefficients for plane %d, top row\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"error in lowpass coefficients for plane %d, left column\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"error in lowpass coefficients for plane %d, rest\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"no bytes left\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"wrong magic number: 0x%08X for plane %d, band %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"error in highpass coefficients for plane %d, band %d\0A\00", align 1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @pixlet_init(ptr nofree noundef writeonly captures(none) initializes((136, 140), (156, 160)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 45, ptr %i.a, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 2, ptr %i.b, align 4, !tbaa !53
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 159, 0) i32 @pixlet_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 17 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !77   ; 4 uses
  %i.h = icmp ne ptr %i.e, null
  %i.i = icmp sgt i32 %i.g, -1
  %or.cond.i = and i1 %i.h, %i.i
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 141) #12
  tail call void @abort() #13
  unreachable

bytestream2_init.exit:                            ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !tbaa !78
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.e, ptr %i.j, align 8, !tbaa !79
  %i.k = zext nneg i32 %i.g to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !80
  %i.n = icmp samesign ult i32 %i.g, 4
  br i1 %i.n, label %bytestream2_get_be32.exit110.thread, label %bytestream2_get_be32.exit110

bytestream2_get_be32.exit110.thread:              ; preds = %bytestream2_init.exit
  store ptr %i.l, ptr %i.c, align 8, !tbaa !78
  br label %bb.d

bytestream2_get_be32.exit110:                     ; preds = %bytestream2_init.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !30
  %i.p = load i32, ptr %i.e, align 1, !tbaa !31
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)  ; 5 uses
  %i.r = icmp ult i32 %i.q, 159
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bytestream2_get_be32.exit110
  %i.s = add i32 %i.q, -4
  %gepdiff = add nsw i32 %i.g, -4
  %i.t = icmp ugt i32 %i.s, %gepdiff
  br i1 %i.t, label %bb.d, label %bytestream2_get_le32.exit

bb.d:                                             ; preds = %bytestream2_get_be32.exit110.thread, %bb.c, %bytestream2_get_be32.exit110
  %.0.i109129 = phi i32 [ 0, %bytestream2_get_be32.exit110.thread ], [ %i.q, %bb.c ], [ %i.q, %bytestream2_get_be32.exit110 ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %.0.i109129) #12
  br label %decode_plane.exit.thread

bytestream2_get_le32.exit:                        ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.c, align 8, !tbaa !30
  %i.v = load i32, ptr %i.o, align 1, !tbaa !31   ; 2 uses
  %.not = icmp eq i32 %i.v, 1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bytestream2_get_le32.exit
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i32 noundef %i.v) #12
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !80
  %.pre282.a = load ptr, ptr %i.c, align 8, !tbaa !78
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bytestream2_get_le32.exit
  %i.w = phi ptr [ %.pre282.a, %bb.e ], [ %i.u, %bytestream2_get_le32.exit ] ; 2 uses
  %i.x = phi ptr [ %.pre, %bb.e ], [ %i.l, %bytestream2_get_le32.exit ] ; 7 uses
  %.pre-phi = ptrtoint ptr %i.x to i64            ; 8 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %.pre-phi, %i.y
  %..i113 = tail call i64 @llvm.smin.i64(i64 %i.z, i64 4)
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %..i113 ; 4 uses
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !78
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %.pre-phi, %i.ab
  %i.ad = icmp slt i64 %i.ac, 4
  br i1 %i.ad, label %bytestream2_get_be32.exit108.thread, label %bytestream2_get_be32.exit108

bytestream2_get_be32.exit108.thread:              ; preds = %bb.f
  store ptr %i.x, ptr %i.c, align 8, !tbaa !78
  br label %decode_plane.exit.thread

bytestream2_get_be32.exit108:                     ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 3 uses
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !30
  %i.af = load i32, ptr %i.aa, align 1, !tbaa !31
  %.not96 = icmp eq i32 %i.af, 16777216
  br i1 %.not96, label %bb.g, label %decode_plane.exit.thread

bb.g:                                             ; preds = %bytestream2_get_be32.exit108
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %.pre-phi, %i.ag
  %..i112 = tail call i64 @llvm.smin.i64(i64 %i.ah, i64 4)
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %..i112 ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %.pre-phi, %i.aj
  %i.al = icmp slt i64 %i.ak, 4
  br i1 %i.al, label %bytestream2_get_be32.exit106, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 3 uses
  store ptr %i.am, ptr %i.c, align 8, !tbaa !30
  %i.an = load i32, ptr %i.ai, align 1, !tbaa !31
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  %.pre284 = ptrtoint ptr %i.am to i64
  br label %bytestream2_get_be32.exit106

bytestream2_get_be32.exit106:                     ; preds = %bb.g, %bb.h
  %.pre-phi285 = phi i64 [ %.pre284, %bb.h ], [ %.pre-phi, %bb.g ]
  %i.ap = phi ptr [ %i.am, %bb.h ], [ %i.x, %bb.g ] ; 2 uses
  %.0.i105 = phi i32 [ %i.ao, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.aq = sub i64 %.pre-phi, %.pre-phi285
  %i.ar = icmp slt i64 %i.aq, 4
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bytestream2_get_be32.exit106
  store ptr %i.x, ptr %i.c, align 8, !tbaa !78
  br label %bytestream2_get_be32.exit104

bb.j:                                             ; preds = %bytestream2_get_be32.exit106
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  store ptr %i.as, ptr %i.c, align 8, !tbaa !30
  %i.at = load i32, ptr %i.ap, align 1, !tbaa !31
  %i.au = tail call i32 @llvm.bswap.i32(i32 %i.at)
  br label %bytestream2_get_be32.exit104

bytestream2_get_be32.exit104:                     ; preds = %bb.i, %bb.j
  %i.av = phi ptr [ %i.x, %bb.i ], [ %i.as, %bb.j ] ; 4 uses
  %.0.i103 = phi i32 [ 0, %bb.i ], [ %i.au, %bb.j ] ; 3 uses
  %i.aw = icmp ugt i32 %.0.i105, 2147483615
  %i.ax = icmp ugt i32 %.0.i103, 2147483615
  %or.cond = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond, label %decode_plane.exit.thread, label %bb.k

bb.k:                                             ; preds = %bytestream2_get_be32.exit104
  %i.ay = add nuw nsw i32 %.0.i105, 31
  %i.az = and i32 %i.ay, 2147483616               ; 3 uses
  %i.ba = add nuw nsw i32 %.0.i103, 31
  %i.bb = and i32 %i.ba, 2147483616               ; 3 uses
  %i.bc = ptrtoint ptr %i.av to i64
  %i.bd = sub i64 %.pre-phi, %i.bc
  %i.be = icmp slt i64 %i.bd, 4
  br i1 %i.be, label %bytestream2_get_be32.exit102.thread, label %bytestream2_get_be32.exit102

bytestream2_get_be32.exit102.thread:              ; preds = %bb.k
  store ptr %i.x, ptr %i.c, align 8, !tbaa !78
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.bf, align 8, !tbaa !34
  br label %decode_plane.exit.thread

bytestream2_get_be32.exit102:                     ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 3 uses
  store ptr %i.bg, ptr %i.c, align 8, !tbaa !30
  %i.bh = load i32, ptr %i.av, align 1, !tbaa !31 ; 2 uses
  %i.bi = tail call i32 @llvm.bswap.i32(i32 %i.bh)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !34
  %.not97 = icmp eq i32 %i.bh, 67108864
  br i1 %.not97, label %bb.l, label %decode_plane.exit.thread

bb.l:                                             ; preds = %bytestream2_get_be32.exit102
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %.pre-phi, %i.bk
  %i.bm = icmp slt i64 %i.bl, 4
  br i1 %i.bm, label %bytestream2_get_be32.exit.thread, label %bytestream2_get_be32.exit

bytestream2_get_be32.exit.thread:                 ; preds = %bb.l
  store ptr %i.x, ptr %i.c, align 8, !tbaa !78
  br label %bb.m

bytestream2_get_be32.exit:                        ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.bn, ptr %i.c, align 8, !tbaa !30
  %i.bo = load i32, ptr %i.bg, align 1, !tbaa !31
  %i.bp = tail call i32 @llvm.bswap.i32(i32 %i.bo) ; 5 uses
  %i.bq = and i32 %i.bp, -8
  %or.cond3.not = icmp eq i32 %i.bq, 8
  br i1 %or.cond3.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bytestream2_get_be32.exit.thread, %bytestream2_get_be32.exit
  %.0.i139 = phi i32 [ 0, %bytestream2_get_be32.exit.thread ], [ %i.bp, %bytestream2_get_be32.exit ]
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i32 noundef %.0.i139) #12
  br label %decode_plane.exit.thread

bb.n:                                             ; preds = %bytestream2_get_be32.exit
  %.val115 = load ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val115, i64 60 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !81
  %i.bt = icmp eq i32 %i.bs, %i.bp
  br i1 %i.bt, label %build_luma_lut.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %notmask.i = shl nsw i32 -1, %i.bp
  %i.bu = xor i32 %notmask.i, -1
  store i32 %i.bp, ptr %i.br, align 4, !tbaa !81
  %i.bv = zext nneg i32 %i.bu to i64              ; 2 uses
  %i.bw = mul nuw nsw i64 %i.bv, %i.bv            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val115, i64 352 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.i = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.i.1, %bb.p ] ; 5 uses
  %i.by = mul nuw nsw i64 %indvars.iv.i, 65535
  %i.bz = mul i64 %i.by, %indvars.iv.i
  %i.ca = udiv i64 %i.bz, %i.bw
  %i.cb = trunc i64 %i.ca to i16
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.i
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !36
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.cd = mul nuw nsw i64 %indvars.iv.next.i, 65535
  %i.ce = mul i64 %i.cd, %indvars.iv.next.i
  %i.cf = udiv i64 %i.ce, %i.bw
  %i.cg = trunc i64 %i.cf to i16
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next.i
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !36
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 65536
  br i1 %exitcond.not.i.1, label %build_luma_lut.exit, label %bb.p, !llvm.loop !54

build_luma_lut.exit:                              ; preds = %bb.p, %bb.n
  %i.ci = tail call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %i.az, i32 noundef %i.bb) #12 ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %decode_plane.exit.thread, label %bb.q

bb.q:                                             ; preds = %build_luma_lut.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %.0.i105, ptr %i.ck, align 8, !tbaa !82
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %.0.i103, ptr %i.cl, align 4, !tbaa !83
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !38
  %.not98 = icmp eq i32 %i.cn, %i.az
  br i1 %.not98, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !39
  %.not99 = icmp eq i32 %i.cp, %i.bb
  br i1 %.not99, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.val114 = load ptr, ptr %i.a, align 8, !tbaa !28
  tail call fastcc void @free_buffers(ptr %.val114)
  store i32 %i.az, ptr %i.cm, align 8, !tbaa !38
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  store i32 %i.bb, ptr %i.cq, align 4, !tbaa !39
  %.val116 = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.cr = tail call fastcc i32 @init_decoder(ptr %.val116) ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.val = load ptr, ptr %i.a, align 8, !tbaa !28
  tail call fastcc void @free_buffers(ptr %.val)
  store i32 0, ptr %i.cm, align 8, !tbaa !38
  store i32 0, ptr %i.cq, align 4, !tbaa !39
  br label %decode_plane.exit.thread

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.ct = load ptr, ptr %i.m, align 8, !tbaa !80
  %i.cu = load ptr, ptr %i.c, align 8, !tbaa !78  ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %..i = tail call i64 @llvm.smin.i64(i64 %i.cx, i64 8)
  %i.cy = getelementptr inbounds i8, ptr %i.cu, i64 %..i
  store ptr %i.cy, ptr %i.c, align 8, !tbaa !78
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i32 2, ptr %i.cz, align 8, !tbaa !88
  %i.da = tail call i32 @ff_thread_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #12 ; 2 uses
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %decode_plane.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.u
  %i.dc = getelementptr i8, ptr %1, i64 64        ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.v

bb.v:                                             ; preds = %decode_plane.exit, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %decode_plane.exit ], [ 0, %.preheader ] ; 14 uses
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !28  ; 19 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !40
  %i.dh = sdiv i32 %i.dg, 2
  %i.di = sext i32 %i.dh to i64                   ; 25 uses
  %i.dj = icmp ne i64 %indvars.iv, 0
  %i.dk = zext i1 %i.dj to i32                    ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !34 ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.v
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %.pre170.i.a = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !80 ; 2 uses
  %.phi.trans.insert171.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.pre172.i.a = load ptr, ptr %.phi.trans.insert171.i, align 8, !tbaa !78
  %.pre174.i = ptrtoint ptr %.pre170.i.a to i64
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  %i.dr = getelementptr inbounds nuw [64 x i8], ptr %i.dq, i64 %indvars.iv ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = zext nneg i32 %i.dm to i64
  %.pre.i = load ptr, ptr %i.dp, align 8, !tbaa !80 ; 5 uses
  %.pre169.i.a = load ptr, ptr %i.do, align 8, !tbaa !78
  %i.du = ptrtoint ptr %.pre.i to i64             ; 4 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %.lr.ph.i
  %i.dv = phi ptr [ %.pre169.i.a, %.lr.ph.i ], [ %i.ef, %bb.z ] ; 3 uses
  %indvars.iv.i120 = phi i64 [ %i.dt, %.lr.ph.i ], [ %indvars.iv.next.i121, %bb.z ] ; 2 uses
  %indvars.iv.next.i121 = add nsw i64 %indvars.iv.i120, -1 ; 3 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.du, %i.dw
  %i.dy = icmp slt i64 %i.dx, 4
  br i1 %i.dy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store ptr %.pre.i, ptr %i.do, align 8, !tbaa !78
  br label %bytestream2_get_be32.exit106.i

bb.y:                                             ; preds = %bb.w
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 3 uses
  store ptr %i.dz, ptr %i.do, align 8, !tbaa !30
  %i.ea = load i32, ptr %i.dv, align 1, !tbaa !31
  %i.eb = tail call i32 @llvm.bswap.i32(i32 %i.ea)
  %.pre173.i = ptrtoint ptr %i.dz to i64
  br label %bytestream2_get_be32.exit106.i

bytestream2_get_be32.exit106.i:                   ; preds = %bb.y, %bb.x
  %.pre-phi.i = phi i64 [ %i.du, %bb.x ], [ %.pre173.i, %bb.y ]
  %i.ec = phi ptr [ %.pre.i, %bb.x ], [ %i.dz, %bb.y ] ; 2 uses
  %.0.i105.i = phi i32 [ 0, %bb.x ], [ %i.eb, %bb.y ] ; 2 uses
  %i.ed = sub i64 %i.du, %.pre-phi.i
  %i.ee = icmp slt i64 %i.ed, 4
  br i1 %i.ee, label %bytestream2_get_be32.exit.thread.i, label %bytestream2_get_be32.exit.i

bytestream2_get_be32.exit.thread.i:               ; preds = %bytestream2_get_be32.exit106.i
  store ptr %.pre.i, ptr %i.do, align 8, !tbaa !78
  br label %decode_plane.exit.thread

bytestream2_get_be32.exit.i:                      ; preds = %bytestream2_get_be32.exit106.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 4 ; 3 uses
  store ptr %i.ef, ptr %i.do, align 8, !tbaa !30
  %i.eg = load i32, ptr %i.ec, align 1, !tbaa !31 ; 2 uses
  %i.eh = icmp ne i32 %.0.i105.i, 0
  %i.ei = icmp ne i32 %i.eg, 0
  %or.cond.i122 = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %or.cond.i122, label %bb.z, label %decode_plane.exit.thread

bb.z:                                             ; preds = %bytestream2_get_be32.exit.i
  %i.ej = tail call i32 @llvm.bswap.i32(i32 %i.eg)
  %i.ek = sext i32 %.0.i105.i to i64
  %i.el = udiv i64 4294967296000000, %i.ek
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.next.i121
  store i64 %i.el, ptr %i.em, align 8, !tbaa !89
  %i.en = sext i32 %i.ej to i64
  %i.eo = udiv i64 4294967296000000, %i.en
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next.i121
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !89
  %i.eq = icmp samesign ugt i64 %indvars.iv.i120, 1
  br i1 %i.eq, label %bb.w, label %._crit_edge.i, !llvm.loop !55

._crit_edge.i:                                    ; preds = %bb.z, %.._crit_edge_crit_edge.i
  %.pre-phi175.i = phi i64 [ %.pre174.i, %.._crit_edge_crit_edge.i ], [ %i.du, %bb.z ] ; 4 uses
  %i.er = phi ptr [ %.pre172.i.a, %.._crit_edge_crit_edge.i ], [ %i.ef, %bb.z ] ; 2 uses
  %i.es = phi ptr [ %.pre170.i.a, %.._crit_edge_crit_edge.i ], [ %.pre.i, %bb.z ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.ev = ptrtoint ptr %i.er to i64
  %i.ew = sub i64 %.pre-phi175.i, %i.ev
  %..i107.i = tail call i64 @llvm.smin.i64(i64 %i.ew, i64 4)
  %i.ex = getelementptr inbounds i8, ptr %i.er, i64 %..i107.i ; 4 uses
  store ptr %i.ex, ptr %i.et, align 8, !tbaa !78
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !30 ; 7 uses
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = sub i64 %.pre-phi175.i, %i.fa
  %i.fc = icmp slt i64 %i.fb, 2
  br i1 %i.fc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i
  store ptr %i.es, ptr %i.et, align 8, !tbaa !78
  br label %bytestream2_get_be16.exit.i

bb.ab:                                            ; preds = %._crit_edge.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 2 ; 2 uses
  store ptr %i.fd, ptr %i.et, align 8, !tbaa !30
  %i.fe = load i16, ptr %i.ex, align 1, !tbaa !31
  %i.ff = tail call i16 @llvm.bswap.i16(i16 %i.fe)
  %.pre176.i = ptrtoint ptr %i.fd to i64
  br label %bytestream2_get_be16.exit.i

bytestream2_get_be16.exit.i:                      ; preds = %bb.ab, %bb.aa
  %.pre-phi177.i = phi i64 [ %.pre-phi175.i, %bb.aa ], [ %.pre176.i, %bb.ab ] ; 2 uses
  %.0.i108.i = phi i16 [ 0, %bb.aa ], [ %i.ff, %bb.ab ]
  store i16 %.0.i108.i, ptr %i.ez, align 2, !tbaa !36
  %i.fg = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.fh = load ptr, ptr %i.d, align 8, !tbaa !76  ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !79
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = sub i64 %.pre-phi177.i, %i.fk
  %sext.i = shl i64 %i.fl, 32
  %i.fm = ashr exact i64 %sext.i, 32
  %i.fn = getelementptr inbounds i8, ptr %i.fh, i64 %i.fm
  %i.fo = sub i64 %.pre-phi175.i, %.pre-phi177.i
  %i.fp = trunc i64 %i.fo to i32                  ; 2 uses
  %or.cond.i.i = icmp ugt i32 %i.fp, 268435455
  %i.fq = shl nuw nsw i32 %i.fp, 3
  %i.fr = select i1 %or.cond.i.i, i32 -8, i32 %i.fq ; 2 uses
  %or.cond.i.i.i = icmp ult i32 %i.fr, 2147483135 ; 2 uses
  %i.fs = icmp ne ptr %i.fh, null
  %or.cond3.i.i.i = and i1 %i.fs, %or.cond.i.i.i  ; 2 uses
  %.014.i.i.i = select i1 %or.cond.i.i.i, ptr %i.fn, ptr null
  %.013.i.i.i = select i1 %or.cond3.i.i.i, i32 %i.fr, i32 0 ; 2 uses
  store ptr %.014.i.i.i, ptr %i.fg, align 8, !tbaa !41
  %i.ft = getelementptr inbounds nuw i8, ptr %i.de, i64 44
  store i32 %.013.i.i.i, ptr %i.ft, align 4, !tbaa !90
  %i.fu = add nuw nsw i32 %.013.i.i.i, 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  store i32 %i.fu, ptr %i.fv, align 8, !tbaa !42
  %i.fw = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  store i32 0, ptr %i.fw, align 8, !tbaa !43
  br i1 %or.cond3.i.i.i, label %bb.ac, label %decode_plane.exit.thread

bb.ac:                                            ; preds = %bytestream2_get_be16.exit.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  %i.fy = getelementptr inbounds nuw i8, ptr %i.de, i64 131424
  %i.fz = getelementptr inbounds nuw [260 x i8], ptr %i.fy, i64 %indvars.iv ; 4 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !45
  %i.gb = add i32 %i.ga, -1                       ; 2 uses
  %i.gc = tail call fastcc i32 @read_low_coeffs(ptr nonnull %i.de, ptr noundef nonnull %i.fx, i32 noundef %i.gb, i32 noundef %i.gb, i64 noundef 0) ; 2 uses
  %i.gd = icmp slt i32 %i.gc, 0
  br i1 %i.gd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ge = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef range(i32 -2147483648, 3) %i.ge) #12
  br label %decode_plane.exit.thread

bb.ae:                                            ; preds = %bb.ac
  %i.gf = getelementptr inbounds [2 x i8], ptr %i.ez, i64 %i.di ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 3 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !46
  %i.gi = add i32 %i.gh, -1
  %.val109.i = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.gj = tail call fastcc i32 @read_low_coeffs(ptr %.val109.i, ptr noundef nonnull %i.gf, i32 noundef %i.gi, i32 noundef 1, i64 noundef %i.di) ; 2 uses
  %i.gk = icmp slt i32 %i.gj, 0
  br i1 %i.gk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gl = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef range(i32 -2147483648, 3) %i.gl) #12
  br label %decode_plane.exit.thread

bb.ag:                                            ; preds = %bb.ae
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  %i.gn = load i32, ptr %i.fz, align 4, !tbaa !45
  %i.go = add i32 %i.gn, -1                       ; 2 uses
  %i.gp = load i32, ptr %i.gg, align 4, !tbaa !46
  %i.gq = add i32 %i.gp, -1
  %i.gr = mul i32 %i.gq, %i.go
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.gs = tail call fastcc i32 @read_low_coeffs(ptr %.val.i, ptr noundef nonnull %i.gm, i32 noundef %i.gr, i32 noundef %i.go, i64 noundef %i.di) ; 3 uses
  %i.gt = icmp slt i32 %i.gs, 0
  br i1 %i.gt, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gu = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef range(i32 -2147483648, 3) %i.gu) #12
  br label %decode_plane.exit.thread

bb.ai:                                            ; preds = %bb.ag
  %i.gv = load ptr, ptr %i.eu, align 8, !tbaa !80
  %i.gw = load ptr, ptr %i.et, align 8, !tbaa !78 ; 2 uses
  %i.gx = ptrtoint ptr %i.gv to i64               ; 2 uses
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = zext nneg i32 %i.gs to i64
  %..i.i = tail call i64 @llvm.smin.i64(i64 %i.gz, i64 %i.ha)
  %i.hb = getelementptr inbounds i8, ptr %i.gw, i64 %..i.i ; 2 uses
  store ptr %i.hb, ptr %i.et, align 8, !tbaa !78
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = sub i64 %i.gx, %i.hc
  %i.he = trunc i64 %i.hd to i32
  %i.hf = icmp slt i32 %i.he, 1
  br i1 %i.hf, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.11) #12
  br label %decode_plane.exit.thread

bb.ak:                                            ; preds = %bb.ai
  %i.hg = load ptr, ptr %i.d, align 8, !tbaa !76  ; 2 uses
  %i.hh = load ptr, ptr %i.a, align 8, !tbaa !28  ; 9 uses
  %i.hi = load i32, ptr %i.df, align 4, !tbaa !40
  %i.hj = sdiv i32 %i.hi, 2
  %i.hk = sext i32 %i.hj to i64                   ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 56
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !34 ; 2 uses
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %.lr.ph.i.i, label %read_highpass.exit.i

.lr.ph.i.i:                                       ; preds = %bb.ak
  %i.ho = mul i32 %i.hm, 3
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 9 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hh, i64 131424
  %i.hs = getelementptr inbounds nuw [260 x i8], ptr %i.hr, i64 %indvars.iv
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hu = icmp ne ptr %i.hg, null
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.ho, i32 1)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64
  %.pre.i.i = load ptr, ptr %i.hq, align 8, !tbaa !80 ; 7 uses
  %.pre116.i.i.a = load ptr, ptr %i.hp, align 8, !tbaa !78
  %i.hv = ptrtoint ptr %.pre.i.i to i64           ; 10 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hh, i64 44
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hh, i64 40 ; 18 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.bv, %.lr.ph.i.i
  %i.ia = phi ptr [ %.pre116.i.i.a, %.lr.ph.i.i ], [ %i.te, %bb.bv ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.bv ] ; 3 uses
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = sub i64 %i.hv, %i.ib
  %i.id = icmp slt i64 %i.ic, 4
  br i1 %i.id, label %bytestream2_get_be32.exit68.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 4 ; 3 uses
  store ptr %i.ie, ptr %i.hp, align 8, !tbaa !30
  %i.if = load i32, ptr %i.ia, align 1, !tbaa !31
  %i.ig = tail call i32 @llvm.bswap.i32(i32 %i.if)
  %.pre117.i.i = ptrtoint ptr %i.ie to i64
  br label %bytestream2_get_be32.exit68.i.i

bytestream2_get_be32.exit68.i.i:                  ; preds = %bb.am, %bb.al
  %.pre-phi.i.i = phi i64 [ %.pre117.i.i, %bb.am ], [ %i.hv, %bb.al ]
  %i.ih = phi ptr [ %i.ie, %bb.am ], [ %.pre.i.i, %bb.al ] ; 2 uses
  %.0.i67.i.i = phi i32 [ %i.ig, %bb.am ], [ 0, %bb.al ] ; 3 uses
  %i.ii = sub i64 %i.hv, %.pre-phi.i.i
  %i.ij = icmp slt i64 %i.ii, 4
  br i1 %i.ij, label %bytestream2_get_be32.exit66.i.i, label %bb.an

bb.an:                                            ; preds = %bytestream2_get_be32.exit68.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 4 ; 3 uses
  store ptr %i.ik, ptr %i.hp, align 8, !tbaa !30
  %i.il = load i32, ptr %i.ih, align 1, !tbaa !31
  %i.im = tail call i32 @llvm.bswap.i32(i32 %i.il)
  %.pre118.i.i.a = ptrtoint ptr %i.ik to i64
  br label %bytestream2_get_be32.exit66.i.i

bytestream2_get_be32.exit66.i.i:                  ; preds = %bb.an, %bytestream2_get_be32.exit68.i.i
  %.pre-phi119.i.i.a = phi i64 [ %.pre118.i.i.a, %bb.an ], [ %i.hv, %bytestream2_get_be32.exit68.i.i ]
  %i.in = phi ptr [ %i.ik, %bb.an ], [ %.pre.i.i, %bytestream2_get_be32.exit68.i.i ] ; 2 uses
  %.0.i65.i.i = phi i32 [ %i.im, %bb.an ], [ 0, %bytestream2_get_be32.exit68.i.i ] ; 2 uses
  %i.io = sub i64 %i.hv, %.pre-phi119.i.i.a
  %i.ip = icmp slt i64 %i.io, 4
  br i1 %i.ip, label %bytestream2_get_be32.exit64.i.i, label %bb.ao

bb.ao:                                            ; preds = %bytestream2_get_be32.exit66.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 4 ; 3 uses
  store ptr %i.iq, ptr %i.hp, align 8, !tbaa !30
  %i.ir = load i32, ptr %i.in, align 1, !tbaa !31
  %i.is = tail call i32 @llvm.bswap.i32(i32 %i.ir)
  %.pre120.i.i.a = ptrtoint ptr %i.iq to i64
  br label %bytestream2_get_be32.exit64.i.i

bytestream2_get_be32.exit64.i.i:                  ; preds = %bb.ao, %bytestream2_get_be32.exit66.i.i
  %.pre-phi121.i.i.a = phi i64 [ %.pre120.i.i.a, %bb.ao ], [ %i.hv, %bytestream2_get_be32.exit66.i.i ]
  %i.it = phi ptr [ %i.iq, %bb.ao ], [ %.pre.i.i, %bytestream2_get_be32.exit66.i.i ] ; 2 uses
  %.0.i63.i.i = phi i32 [ %i.is, %bb.ao ], [ 0, %bytestream2_get_be32.exit66.i.i ] ; 2 uses
  %i.iu = sub i64 %i.hv, %.pre-phi121.i.i.a
  %i.iv = icmp slt i64 %i.iu, 4
  br i1 %i.iv, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bytestream2_get_be32.exit64.i.i
  store ptr %.pre.i.i, ptr %i.hp, align 8, !tbaa !78
  br label %bytestream2_get_be32.exit62.i.i

bb.aq:                                            ; preds = %bytestream2_get_be32.exit64.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 4 ; 3 uses
  store ptr %i.iw, ptr %i.hp, align 8, !tbaa !30
  %i.ix = load i32, ptr %i.it, align 1, !tbaa !31
  %i.iy = tail call i32 @llvm.bswap.i32(i32 %i.ix)
  %i.iz = sext i32 %i.iy to i64
  %.pre122.i.i = ptrtoint ptr %i.iw to i64
  br label %bytestream2_get_be32.exit62.i.i

bytestream2_get_be32.exit62.i.i:                  ; preds = %bb.aq, %bb.ap
  %.pre-phi123.i.i = phi i64 [ %i.hv, %bb.ap ], [ %.pre122.i.i, %bb.aq ]
  %i.ja = phi ptr [ %.pre.i.i, %bb.ap ], [ %i.iw, %bb.aq ] ; 2 uses
  %.0.i61.i.i = phi i64 [ 0, %bb.ap ], [ %i.iz, %bb.aq ] ; 2 uses
  %i.jb = load ptr, ptr %i.ey, align 8, !tbaa !30
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.jc = getelementptr inbounds nuw [20 x i8], ptr %i.hs, i64 %indvars.iv.next.i.i ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 12
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !47
  %i.jf = zext i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.jb, i64 %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !48
  %i.jj = zext i32 %i.ji to i64
  %i.jk = mul nsw i64 %i.jj, %i.hk
  %i.jl = getelementptr inbounds [2 x i8], ptr %i.jg, i64 %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !49 ; 4 uses
  %i.jo = sub i64 %i.hv, %.pre-phi123.i.i
  %i.jp = icmp slt i64 %i.jo, 4
  br i1 %i.jp, label %bytestream2_get_be32.exit.thread.i.i, label %bytestream2_get_be32.exit.i.i

bytestream2_get_be32.exit.thread.i.i:             ; preds = %bytestream2_get_be32.exit62.i.i
  store ptr %.pre.i.i, ptr %i.hp, align 8, !tbaa !78
  br label %bb.ar

bytestream2_get_be32.exit.i.i:                    ; preds = %bytestream2_get_be32.exit62.i.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ja, i64 4 ; 3 uses
  store ptr %i.jq, ptr %i.hp, align 8, !tbaa !30
  %i.jr = load i32, ptr %i.ja, align 1, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.jr, -272716322
  br i1 %.not.i.i, label %bb.as, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bytestream2_get_be32.exit.i.i
  %i.js = tail call i32 @llvm.bswap.i32(i32 %i.jr)
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.i.i, %bytestream2_get_be32.exit.thread.i.i
  %.0.i72.i.i = phi i32 [ 0, %bytestream2_get_be32.exit.thread.i.i ], [ %i.js, %.loopexit.i.i ]
  %i.jt = trunc i64 %indvars.iv to i32
  %.05496104.i.i = trunc i64 %indvars.iv.i.i to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.12, i32 noundef %.0.i72.i.i, i32 noundef range(i32 -2147483648, 3) %i.jt, i32 noundef %.05496104.i.i) #12
  br label %decode_plane.exit.thread

bb.as:                                            ; preds = %bytestream2_get_be32.exit.i.i
  %i.ju = icmp eq i32 %.0.i67.i.i, -2147483648
  br i1 %i.ju, label %decode_plane.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jv = load ptr, ptr %i.ht, align 8, !tbaa !79
  %i.jw = ptrtoint ptr %i.jq to i64               ; 2 uses
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = sub i64 %i.jw, %i.jx
  %sext.i.i = shl i64 %i.jy, 32
  %i.jz = ashr exact i64 %sext.i.i, 32
  %i.ka = getelementptr inbounds i8, ptr %i.hg, i64 %i.jz ; 15 uses
  %i.kb = tail call i32 @llvm.abs.i32(i32 %.0.i67.i.i, i1 true)
  %.not60.i.i = icmp slt i32 %.0.i65.i.i, %i.kb
  %i.kc = select i1 %.not60.i.i, i32 %.0.i67.i.i, i32 %.0.i65.i.i ; 3 uses
  %i.kd = load i32, ptr %i.jc, align 4, !tbaa !45 ; 4 uses
  %i.ke = sub i64 %i.hv, %i.jw                    ; 2 uses
  %i.kf = trunc i64 %i.ke to i32                  ; 2 uses
  %or.cond.i.i.i.i = icmp ugt i32 %i.kf, 268435455
  %i.kg = shl nuw nsw i32 %i.kf, 3
  %i.kh = select i1 %or.cond.i.i.i.i, i32 -8, i32 %i.kg ; 2 uses
  %or.cond.i.i.i.i.i = icmp ult i32 %i.kh, 2147483135 ; 2 uses
  %or.cond3.i.i.i.i.i = and i1 %i.hu, %or.cond.i.i.i.i.i ; 2 uses
  %.014.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, ptr %i.ka, ptr null
  %.013.i.i.i.i.i = select i1 %or.cond3.i.i.i.i.i, i32 %i.kh, i32 0 ; 2 uses
  store ptr %.014.i.i.i.i.i, ptr %i.hw, align 8, !tbaa !41
  store i32 %.013.i.i.i.i.i, ptr %i.hx, align 4, !tbaa !90
  %i.ki = add nuw nsw i32 %.013.i.i.i.i.i, 8      ; 18 uses
  store i32 %i.ki, ptr %i.hy, align 8, !tbaa !42
  store i32 0, ptr %i.hz, align 8, !tbaa !43
  br i1 %or.cond3.i.i.i.i.i, label %bb.au, label %read_high_coeffs.exit.thread.i.i

bb.au:                                            ; preds = %bb.at
  %i.kj = ashr i32 %i.kc, 31                      ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.kc, %i.kj
  br i1 %.not.i.i.i, label %bb.av, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.au
  %i.kk = xor i32 %i.kj, %i.kc                    ; 2 uses
  %i.kl = lshr i32 %i.kk, 1
  %i.km = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.kl, i1 false)
  %i.kn = sub nuw nsw i32 34, %i.km
  %i.ko = icmp ugt i32 %i.kk, 32767
  br i1 %i.ko, label %read_high_coeffs.exit.thread.i.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.preheader.i.i.i, %bb.au
  %.0116.i.i.i = phi i32 [ %i.kn, %.lr.ph.preheader.i.i.i ], [ 1, %bb.au ] ; 3 uses
  %i.kp = sub nuw nsw i32 25, %.0116.i.i.i        ; 3 uses
  %.not30.i.i.i = icmp eq i32 %i.jn, 0
  br i1 %.not30.i.i.i, label %._crit_edge29.i.i.i, label %.lr.ph28.i.i.i

.lr.ph28.i.i.i:                                   ; preds = %bb.av
  %i.kq = sub nuw nsw i32 32, %.0116.i.i.i
  %i.kr = lshr i32 %.0.i63.i.i, 1
  br label %bb.aw

bb.aw:                                            ; preds = %.backedge.i.i.i, %.lr.ph28.i.i.i
  %.promoted.i.i.i.i = phi i32 [ 0, %.lr.ph28.i.i.i ], [ %.promoted.i37.i.i.i, %.backedge.i.i.i ]
  %.026.i.i.i = phi i64 [ 3, %.lr.ph28.i.i.i ], [ %.0.be.i.i.i, %.backedge.i.i.i ] ; 3 uses
  %.010925.i.i.i = phi i32 [ 0, %.lr.ph28.i.i.i ], [ %.0109.be.i.i.i, %.backedge.i.i.i ]
  %.011224.i.i.i = phi i32 [ 0, %.lr.ph28.i.i.i ], [ %.0112.be.i.i.i, %.backedge.i.i.i ] ; 2 uses
  %.011523.i.i.i = phi i32 [ 0, %.lr.ph28.i.i.i ], [ %.0115.be.i.i.i, %.backedge.i.i.i ]
  %.012022.i.i.i = phi ptr [ %i.jl, %.lr.ph28.i.i.i ], [ %.0120.be.i.i.i, %.backedge.i.i.i ] ; 2 uses
  %i.ks = ashr i64 %.026.i.i.i, 8
  %i.kt = add nsw i64 %i.ks, 3                    ; 2 uses
  %i.ku = and i64 %i.kt, 268435455
  %.not140.i.i.i = icmp eq i64 %i.ku, 0
  br i1 %.not140.i.i.i, label %ff_clz_c.exit153.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kv = trunc i64 %i.kt to i32                  ; 2 uses
  %.not.i1529.i.i.i = icmp eq i32 %i.kv, 0
  br i1 %.not.i1529.i.i.i, label %ff_clz_c.exit153.i.i.i, label %.lr.ph12.preheader.i.i.i

.lr.ph12.preheader.i.i.i:                         ; preds = %bb.ax
  %i.kw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kv, i1 true)
  %i.kx = xor i32 %i.kw, 31
  %i.ky = tail call i32 @llvm.umin.i32(i32 %i.kx, i32 14)
  br label %ff_clz_c.exit153.i.i.i

ff_clz_c.exit153.i.i.i:                           ; preds = %.lr.ph12.preheader.i.i.i, %bb.ax, %bb.aw
  %.0110.i.i.i = phi i32 [ -1, %bb.aw ], [ 14, %bb.ax ], [ %i.ky, %.lr.ph12.preheader.i.i.i ] ; 5 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %ff_clz_c.exit153.i.i.i
  %spec.select.i6.i.i.i.i = phi i32 [ %.promoted.i.i.i.i, %ff_clz_c.exit153.i.i.i ], [ %spec.select.i.i.i.i.i, %bb.az ] ; 4 uses
  %.05.i.i.i.i = phi i32 [ 0, %ff_clz_c.exit153.i.i.i ], [ %i.lj, %bb.az ] ; 2 uses
  %i.kz = lshr i32 %spec.select.i6.i.i.i.i, 3
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.la
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !31
  %i.ld = icmp slt i32 %spec.select.i6.i.i.i.i, %i.ki
  %i.le = zext i1 %i.ld to i32
  %spec.select.i.i.i.i.i = add i32 %spec.select.i6.i.i.i.i, %i.le ; 9 uses
  %i.lf = zext i8 %i.lc to i32
  %i.lg = and i32 %spec.select.i6.i.i.i.i, 7
  store i32 %spec.select.i.i.i.i.i, ptr %i.hz, align 8, !tbaa !43
  %i.lh = lshr exact i32 128, %i.lg
  %i.li = and i32 %i.lh, %i.lf
  %.not.i162.i.i.i = icmp eq i32 %i.li, 0
  br i1 %.not.i162.i.i.i, label %get_unary.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lj = add nuw nsw i32 %.05.i.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.lj, %i.kp
  br i1 %exitcond.not.i.i.i.i, label %get_unary.exit.i.i.i, label %bb.ay, !llvm.loop !56

get_unary.exit.i.i.i:                             ; preds = %bb.az, %bb.ay
  %.0.lcssa.i.i.i.i = phi i32 [ %i.kp, %bb.az ], [ %.05.i.i.i.i, %bb.ay ]
  %.fr.i.i.i = freeze i32 %.0.lcssa.i.i.i.i       ; 3 uses
  %.not141.i.i.i = icmp ult i32 %.fr.i.i.i, %i.kp
  br i1 %.not141.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %get_unary.exit.i.i.i
  %i.lk = lshr i32 %spec.select.i.i.i.i.i, 3
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.ll
  %i.ln = load i32, ptr %i.lm, align 1, !tbaa !31
  %i.lo = tail call i32 @llvm.bswap.i32(i32 %i.ln)
  %i.lp = and i32 %spec.select.i.i.i.i.i, 7
  %i.lq = shl i32 %i.lo, %i.lp
  %i.lr = lshr i32 %i.lq, %i.kq
  %i.ls = add i32 %spec.select.i.i.i.i.i, %.0116.i.i.i
  %i.lt = tail call i32 @llvm.umin.i32(i32 %i.ki, i32 %i.ls) ; 2 uses
  store i32 %i.lt, ptr %i.hz, align 8, !tbaa !43
  br label %bb.bf

bb.bb:                                            ; preds = %get_unary.exit.i.i.i
  %i.lu = icmp slt i32 %.0110.i.i.i, 1
  br i1 %i.lu, label %read_high_coeffs.exit.thread.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %mulshl.i.i.i = shl nuw nsw i32 %.fr.i.i.i, %.0110.i.i.i
  %i.lv = sub nsw i32 %mulshl.i.i.i, %.fr.i.i.i   ; 2 uses
  %i.lw = lshr i32 %spec.select.i.i.i.i.i, 3
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.lx
  %i.lz = load i32, ptr %i.ly, align 1, !tbaa !31
  %i.ma = tail call i32 @llvm.bswap.i32(i32 %i.lz)
  %i.mb = and i32 %spec.select.i.i.i.i.i, 7
  %i.mc = shl i32 %i.ma, %i.mb
  %i.md = sub nuw nsw i32 32, %.0110.i.i.i
  %i.me = lshr i32 %i.mc, %i.md                   ; 2 uses
  %i.mf = icmp ult i32 %i.me, 2
  br i1 %i.mf, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.mg = add nsw i32 %.0110.i.i.i, -1
  %i.mh = add i32 %i.mg, %spec.select.i.i.i.i.i
  %i.mi = tail call i32 @llvm.umin.i32(i32 %i.ki, i32 %i.mh) ; 2 uses
  store i32 %i.mi, ptr %i.hz, align 8, !tbaa !43
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.mj = add i32 %spec.select.i.i.i.i.i, %.0110.i.i.i
  %i.mk = tail call i32 @llvm.umin.i32(i32 %i.ki, i32 %i.mj) ; 2 uses
  store i32 %i.mk, ptr %i.hz, align 8, !tbaa !43
  %i.ml = add nsw i32 %i.lv, -1
  %i.mm = add nsw i32 %i.ml, %i.me
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.ba
  %.promoted.i163.i.i.i = phi i32 [ %i.lt, %bb.ba ], [ %i.mi, %bb.bd ], [ %i.mk, %bb.be ] ; 5 uses
  %.0118.i.i.i = phi i32 [ %i.lr, %bb.ba ], [ %i.lv, %bb.bd ], [ %i.mm, %bb.be ]
  %i.mn = add nsw i32 %.0118.i.i.i, %.010925.i.i.i ; 4 uses
  %i.mo = icmp eq i32 %i.mn, 0
  br i1 %i.mo, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mp = and i32 %i.mn, 1                        ; 2 uses
  %i.mq = add nsw i32 %i.mn, 1
  %i.mr = lshr i32 %i.mq, 1
  %i.ms = mul i32 %i.mr, %.0.i63.i.i
  %i.mt = add i32 %i.ms, %i.kr
  %i.mu = sub nsw i32 0, %i.mp
  %i.mv = xor i32 %i.mt, %i.mu
  %i.mw = add i32 %i.mv, %i.mp
  %i.mx = trunc i32 %i.mw to i16
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.1.i.i.i = phi i16 [ %i.mx, %bb.bg ], [ 0, %bb.bf ]
  %i.my = add i32 %.011523.i.i.i, 1               ; 3 uses
  %i.mz = add i32 %.011224.i.i.i, 1               ; 2 uses
  %i.na = zext i32 %.011224.i.i.i to i64
  %i.nb = getelementptr inbounds nuw [2 x i8], ptr %.012022.i.i.i, i64 %i.na
  store i16 %.1.i.i.i, ptr %i.nb, align 2, !tbaa !36
  %i.nc = icmp eq i32 %i.mz, %i.kd                ; 2 uses
  %spec.select.idx.i.i.i = select i1 %i.nc, i64 %i.hk, i64 0
  %spec.select.i.i.i = getelementptr inbounds [2 x i8], ptr %.012022.i.i.i, i64 %spec.select.idx.i.i.i ; 4 uses
  %spec.select146.i.i.i = select i1 %i.nc, i32 0, i32 %i.mz ; 4 uses
  %i.nd = sext i32 %i.mn to i64
  %i.ne = mul nsw i64 %.0.i61.i.i, %i.nd
  %i.nf = mul i64 %.026.i.i.i, %.0.i61.i.i
  %i.ng = ashr i64 %i.nf, 8
  %i.nh = sub nsw i64 %i.ne, %i.ng
  %i.ni = add i64 %i.nh, %.026.i.i.i              ; 4 uses
  %i.nj = icmp ult i64 %i.ni, 64
  %.not142.i.i.i = icmp ult i32 %i.my, %i.jn
  %or.cond147.i.i.i = and i1 %.not142.i.i.i, %i.nj
  br i1 %or.cond147.i.i.i, label %bb.bi, label %.backedge.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %4 = add nuw nsw i64 %i.ni, 8
  %5 = lshr i64 %4, 5
  %6 = trunc nuw nsw i64 %i.ni to i32
  %7 = tail call range(i32 26, 33) i32 @llvm.ctlz.i32(i32 %6, i1 false)
  %i.nk = trunc nuw nsw i64 %5 to i32
  %8 = add nuw nsw i32 %7, %i.nk                  ; 3 uses
  %i.nl = add nsw i32 %8, -24                     ; 2 uses
  %notmask.i.i.i.i = shl nsw i32 -1, %i.nl
  %i.nm = and i32 %notmask.i.i.i.i, 16383
  %i.nn = xor i32 %i.nm, 16383                    ; 3 uses
  %i.no = lshr i32 %.promoted.i163.i.i.i, 3
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !31
  %i.ns = icmp slt i32 %.promoted.i163.i.i.i, %i.ki
  %i.nt = zext i1 %i.ns to i32
  %spec.select.i.i166.i.i.i = add i32 %.promoted.i163.i.i.i, %i.nt ; 6 uses
  %i.nu = zext i8 %i.nr to i32
  %i.nv = and i32 %.promoted.i163.i.i.i, 7
  store i32 %spec.select.i.i166.i.i.i, ptr %i.hz, align 8, !tbaa !43
  %i.nw = lshr exact i32 128, %i.nv
  %i.nx = and i32 %i.nw, %i.nu
  %.not.i167.i.i.i = icmp eq i32 %i.nx, 0
  br i1 %.not.i167.i.i.i, label %bb.bq, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ny = lshr i32 %spec.select.i.i166.i.i.i, 3
  %i.nz = zext nneg i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !31
  %i.oc = icmp slt i32 %spec.select.i.i166.i.i.i, %i.ki
  %i.od = zext i1 %i.oc to i32
  %spec.select.i.i166.1.i.i.i = add i32 %spec.select.i.i166.i.i.i, %i.od ; 6 uses
  %i.oe = zext i8 %i.ob to i32
  %i.of = and i32 %spec.select.i.i166.i.i.i, 7
  store i32 %spec.select.i.i166.1.i.i.i, ptr %i.hz, align 8, !tbaa !43
  %i.og = lshr exact i32 128, %i.of
  %i.oh = and i32 %i.og, %i.oe
  %.not.i167.1.i.i.i = icmp eq i32 %i.oh, 0
  br i1 %.not.i167.1.i.i.i, label %bb.bq, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.oi = lshr i32 %spec.select.i.i166.1.i.i.i, 3
  %i.oj = zext nneg i32 %i.oi to i64
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.oj
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !31
  %i.om = icmp slt i32 %spec.select.i.i166.1.i.i.i, %i.ki
  %i.on = zext i1 %i.om to i32
  %spec.select.i.i166.2.i.i.i = add i32 %spec.select.i.i166.1.i.i.i, %i.on ; 6 uses
  %i.oo = zext i8 %i.ol to i32
  %i.op = and i32 %spec.select.i.i166.1.i.i.i, 7
  store i32 %spec.select.i.i166.2.i.i.i, ptr %i.hz, align 8, !tbaa !43
  %i.oq = lshr exact i32 128, %i.op
  %i.or = and i32 %i.oq, %i.oo
  %.not.i167.2.i.i.i = icmp eq i32 %i.or, 0
  br i1 %.not.i167.2.i.i.i, label %bb.bq, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.os = lshr i32 %spec.select.i.i166.2.i.i.i, 3
  %i.ot = zext nneg i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.ot
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !31
  %i.ow = icmp slt i32 %spec.select.i.i166.2.i.i.i, %i.ki
  %i.ox = zext i1 %i.ow to i32
  %spec.select.i.i166.3.i.i.i = add i32 %spec.select.i.i166.2.i.i.i, %i.ox ; 6 uses
  %i.oy = zext i8 %i.ov to i32
  %i.oz = and i32 %spec.select.i.i166.2.i.i.i, 7
  store i32 %spec.select.i.i166.3.i.i.i, ptr %i.hz, align 8, !tbaa !43
  %i.pa = lshr exact i32 128, %i.oz
  %i.pb = and i32 %i.pa, %i.oy
  %.not.i167.3.i.i.i = icmp eq i32 %i.pb, 0
  br i1 %.not.i167.3.i.i.i, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.pc = lshr i32 %spec.select.i.i166.3.i.i.i, 3
  %i.pd = zext nneg i32 %i.pc to i64
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.pd
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !31
  %i.pg = icmp slt i32 %spec.select.i.i166.3.i.i.i, %i.ki
  %i.ph = zext i1 %i.pg to i32
  %spec.select.i.i166.4.i.i.i = add i32 %spec.select.i.i166.3.i.i.i, %i.ph ; 6 uses
  %i.pi = zext i8 %i.pf to i32
  %i.pj = and i32 %spec.select.i.i166.3.i.i.i, 7
  store i32 %spec.select.i.i166.4.i.i.i, ptr %i.hz, align 8, !tbaa !43
  %i.pk = lshr exact i32 128, %i.pj
  %i.pl = and i32 %i.pk, %i.pi
  %.not.i167.4.i.i.i = icmp eq i32 %i.pl, 0
  br i1 %.not.i167.4.i.i.i, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pm = lshr i32 %spec.select.i.i166.4.i.i.i, 3
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.pn
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !31
  %i.pq = icmp slt i32 %spec.select.i.i166.4.i.i.i, %i.ki
  %i.pr = zext i1 %i.pq to i32
  %spec.select.i.i166.5.i.i.i = add i32 %spec.select.i.i166.4.i.i.i, %i.pr ; 6 uses
  %i.ps = zext i8 %i.pp to i32
  %i.pt = and i32 %spec.select.i.i166.4.i.i.i, 7
  store i32 %spec.select.i.i166.5.i.i.i, ptr %i.hz, align 8, !tbaa !43
  %i.pu = lshr exact i32 128, %i.pt
  %i.pv = and i32 %i.pu, %i.ps
  %.not.i167.5.i.i.i = icmp eq i32 %i.pv, 0
  br i1 %.not.i167.5.i.i.i, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.pw = lshr i32 %spec.select.i.i166.5.i.i.i, 3
  %i.px = zext nneg i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.px
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !31
  %i.qa = icmp slt i32 %spec.select.i.i166.5.i.i.i, %i.ki
  %i.qb = zext i1 %i.qa to i32
  %spec.select.i.i166.6.i.i.i = add i32 %spec.select.i.i166.5.i.i.i, %i.qb ; 6 uses
  %i.qc = zext i8 %i.pz to i32
  %i.qd = and i32 %spec.select.i.i166.5.i.i.i, 7
  store i32 %spec.select.i.i166.6.i.i.i, ptr %i.hz, align 8, !tbaa !43
  %i.qe = lshr exact i32 128, %i.qd
  %i.qf = and i32 %i.qe, %i.qc
  %.not.i167.6.i.i.i = icmp eq i32 %i.qf, 0
  br i1 %.not.i167.6.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.qg = lshr i32 %spec.select.i.i166.6.i.i.i, 3
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.qh
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !31
  %i.qk = icmp slt i32 %spec.select.i.i166.6.i.i.i, %i.ki
  %i.ql = zext i1 %i.qk to i32
  %spec.select.i.i166.7.i.i.i = add i32 %spec.select.i.i166.6.i.i.i, %i.ql ; 6 uses
  %i.qm = zext i8 %i.qj to i32
  %i.qn = and i32 %spec.select.i.i166.6.i.i.i, 7
  store i32 %spec.select.i.i166.7.i.i.i, ptr %i.hz, align 8, !tbaa !43
  %i.qo = lshr exact i32 128, %i.qn
  %i.qp = and i32 %i.qo, %i.qm
  %.not.i167.7.i.i.i = icmp eq i32 %i.qp, 0
  br i1 %.not.i167.7.i.i.i, label %bb.bq, label %get_unary.exit170.thread.loopexit.i.i.i

get_unary.exit170.thread.loopexit.i.i.i:          ; preds = %bb.bp
  %i.qq = lshr i32 %spec.select.i.i166.7.i.i.i, 3
  %i.qr = zext nneg i32 %i.qq to i64
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.qr
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !31
  %i.qu = icmp slt i32 %spec.select.i.i166.7.i.i.i, %i.ki
  %i.qv = zext i1 %i.qu to i32
  %spec.select.i.i.i.i = add i32 %spec.select.i.i166.7.i.i.i, %i.qv ; 4 uses
  %i.qw = zext i8 %i.qt to i32
  %i.qx = and i32 %spec.select.i.i166.7.i.i.i, 7
  store i32 %spec.select.i.i.i.i, ptr %i.hz, align 8, !tbaa !43
  %i.qy = lshr exact i32 128, %i.qx
  %i.qz = and i32 %i.qy, %i.qw
  %.not144.i.i.i = icmp eq i32 %i.qz, 0           ; 2 uses
  %i.ra = lshr i32 %spec.select.i.i.i.i, 3
  %i.rb = zext nneg i32 %i.ra to i64
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.rb
  %i.rd = load i32, ptr %i.rc, align 1, !tbaa !31
  %i.re = tail call i32 @llvm.bswap.i32(i32 %i.rd)
  %i.rf = and i32 %spec.select.i.i.i.i, 7
  %i.rg = shl i32 %i.re, %i.rf
  %..i69.i.i = select i1 %.not144.i.i.i, i32 24, i32 16
  %.57.i.i.i = select i1 %.not144.i.i.i, i32 8, i32 16
  %i.rh = lshr i32 %i.rg, %..i69.i.i
  %i.ri = add i32 %.57.i.i.i, %spec.select.i.i.i.i
  %i.rj = tail call i32 @llvm.umin.i32(i32 %i.ki, i32 %i.ri) ; 2 uses
  store i32 %i.rj, ptr %i.hz, align 8, !tbaa !43
  %i.rk = shl nuw nsw i32 %i.nn, 3
  %i.rl = add nuw nsw i32 %i.rh, %i.rk            ; 2 uses
  %9 = icmp samesign ugt i32 %i.rl, 65535
  br i1 %9, label %read_high_coeffs.exit.thread.i.i, label %bb.bt

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi
  %.05.i165.lcssa.i.i.i = phi i32 [ 0, %bb.bi ], [ 1, %bb.bj ], [ 2, %bb.bk ], [ 3, %bb.bl ], [ 4, %bb.bm ], [ 5, %bb.bn ], [ 6, %bb.bo ], [ 7, %bb.bp ] ; 2 uses
  %spec.select.i.i166.lcssa.i.i.i = phi i32 [ %spec.select.i.i166.i.i.i, %bb.bi ], [ %spec.select.i.i166.1.i.i.i, %bb.bj ], [ %spec.select.i.i166.2.i.i.i, %bb.bk ], [ %spec.select.i.i166.3.i.i.i, %bb.bl ], [ %spec.select.i.i166.4.i.i.i, %bb.bm ], [ %spec.select.i.i166.5.i.i.i, %bb.bn ], [ %spec.select.i.i166.6.i.i.i, %bb.bo ], [ %spec.select.i.i166.7.i.i.i, %bb.bp ] ; 4 uses
  %i.rm = lshr i32 %spec.select.i.i166.lcssa.i.i.i, 3
  %i.rn = zext nneg i32 %i.rm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.rn
  %i.rp = load i32, ptr %i.ro, align 1, !tbaa !31
  %i.rq = tail call i32 @llvm.bswap.i32(i32 %i.rp)
  %i.rr = and i32 %spec.select.i.i166.lcssa.i.i.i, 7
  %i.rs = shl i32 %i.rq, %i.rr
  %i.rt = sub nuw nsw i32 56, %8
  %i.ru = lshr i32 %i.rs, %i.rt                   ; 2 uses
  %i.rv = icmp samesign ugt i32 %i.ru, 1
  br i1 %i.rv, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.rw = add i32 %spec.select.i.i166.lcssa.i.i.i, %i.nl
  %i.rx = tail call i32 @llvm.umin.i32(i32 %i.ki, i32 %i.rw) ; 2 uses
  store i32 %i.rx, ptr %i.hz, align 8, !tbaa !43
  %i.ry = mul nuw nsw i32 %.05.i165.lcssa.i.i.i, %i.nn
  %i.rz = add nsw i32 %i.ry, -1
  %i.sa = add nsw i32 %i.rz, %i.ru
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.sb = add nsw i32 %8, -25
  %i.sc = add i32 %i.sb, %spec.select.i.i166.lcssa.i.i.i
  %i.sd = tail call i32 @llvm.umin.i32(i32 %i.ki, i32 %i.sc) ; 2 uses
  store i32 %i.sd, ptr %i.hz, align 8, !tbaa !43
  %i.se = mul nuw nsw i32 %.05.i165.lcssa.i.i.i, %i.nn
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %get_unary.exit170.thread.loopexit.i.i.i
  %.promoted.i39.i.i.i = phi i32 [ %i.rl, %get_unary.exit170.thread.loopexit.i.i.i ], [ %i.se, %bb.bs ], [ %i.sa, %bb.br ] ; 7 uses
  %.0117.i.i.i = phi i32 [ %i.rj, %get_unary.exit170.thread.loopexit.i.i.i ], [ %i.sd, %bb.bs ], [ %i.rx, %bb.br ]
  %10 = add i32 %.promoted.i39.i.i.i, %i.my       ; 2 uses
  %i.sf = icmp ugt i32 %10, %i.jn
  br i1 %i.sf, label %read_high_coeffs.exit.thread.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.bt
  %.not31.i.i.i = icmp eq i32 %.promoted.i39.i.i.i, 0
  br i1 %.not31.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph19.i.i.i.preheader

.lr.ph19.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %xtraiter = and i32 %.promoted.i39.i.i.i, 1
  %i.sg = icmp eq i32 %.promoted.i39.i.i.i, 1
  br i1 %i.sg, label %.lr.ph19.i.i.i.epil.preheader, label %.lr.ph19.i.i.i.preheader.new

.lr.ph19.i.i.i.preheader.new:                     ; preds = %.lr.ph19.i.i.i.preheader
  %unroll_iter = and i32 %.promoted.i39.i.i.i, -2
  br label %.lr.ph19.i.i.i

.lr.ph19.i.i.i:                                   ; preds = %.lr.ph19.i.i.i, %.lr.ph19.i.i.i.preheader.new
  %.211417.i.i.i = phi i32 [ %spec.select146.i.i.i, %.lr.ph19.i.i.i.preheader.new ], [ %spec.select149.i.i.i.1, %.lr.ph19.i.i.i ] ; 2 uses
  %.212216.i.i.i = phi ptr [ %spec.select.i.i.i, %.lr.ph19.i.i.i.preheader.new ], [ %spec.select148.i.i.i.1, %.lr.ph19.i.i.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph19.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph19.i.i.i ]
  %i.sh = add i32 %.211417.i.i.i, 1               ; 2 uses
  %i.si = zext i32 %.211417.i.i.i to i64
  %i.sj = getelementptr inbounds nuw [2 x i8], ptr %.212216.i.i.i, i64 %i.si
  store i16 0, ptr %i.sj, align 2, !tbaa !36
  %i.sk = icmp eq i32 %i.sh, %i.kd                ; 2 uses
  %spec.select148.idx.i.i.i = select i1 %i.sk, i64 %i.hk, i64 0
  %spec.select148.i.i.i = getelementptr inbounds [2 x i8], ptr %.212216.i.i.i, i64 %spec.select148.idx.i.i.i ; 2 uses
  %spec.select149.i.i.i = select i1 %i.sk, i32 0, i32 %i.sh ; 2 uses
  %i.sl = add i32 %spec.select149.i.i.i, 1        ; 2 uses
  %i.sm = zext i32 %spec.select149.i.i.i to i64
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %spec.select148.i.i.i, i64 %i.sm
  store i16 0, ptr %i.sn, align 2, !tbaa !36
  %i.so = icmp eq i32 %i.sl, %i.kd                ; 2 uses
  %spec.select148.idx.i.i.i.1 = select i1 %i.so, i64 %i.hk, i64 0
  %spec.select148.i.i.i.1 = getelementptr inbounds [2 x i8], ptr %spec.select148.i.i.i, i64 %spec.select148.idx.i.i.i.1 ; 3 uses
  %spec.select149.i.i.i.1 = select i1 %i.so, i32 0, i32 %i.sl ; 3 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph19.i.i.i, !llvm.loop !57

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph19.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i, label %.lr.ph19.i.i.i.epil.preheader

.lr.ph19.i.i.i.epil.preheader:                    ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph19.i.i.i.preheader
  %.211417.i.i.i.epil.init = phi i32 [ %spec.select146.i.i.i, %.lr.ph19.i.i.i.preheader ], [ %spec.select149.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.212216.i.i.i.epil.init = phi ptr [ %spec.select.i.i.i, %.lr.ph19.i.i.i.preheader ], [ %spec.select148.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod548 = trunc i32 %.promoted.i39.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod548)
  %i.sp = add i32 %.211417.i.i.i.epil.init, 1     ; 2 uses
  %i.sq = zext i32 %.211417.i.i.i.epil.init to i64
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %.212216.i.i.i.epil.init, i64 %i.sq
  store i16 0, ptr %i.sr, align 2, !tbaa !36
  %i.ss = icmp eq i32 %i.sp, %i.kd                ; 2 uses
  %spec.select148.idx.i.i.i.epil = select i1 %i.ss, i64 %i.hk, i64 0
  %spec.select148.i.i.i.epil = getelementptr inbounds [2 x i8], ptr %.212216.i.i.i.epil.init, i64 %spec.select148.idx.i.i.i.epil
  %spec.select149.i.i.i.epil = select i1 %i.ss, i32 0, i32 %i.sp
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph19.i.i.i.epil.preheader, %._crit_edge.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i
  %.2122.lcssa.i.i.i = phi ptr [ %spec.select.i.i.i, %.preheader.i.i.i ], [ %spec.select148.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %spec.select148.i.i.i.epil, %.lr.ph19.i.i.i.epil.preheader ]
  %.2114.lcssa.i.i.i = phi i32 [ %spec.select146.i.i.i, %.preheader.i.i.i ], [ %spec.select149.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %spec.select149.i.i.i.epil, %.lr.ph19.i.i.i.epil.preheader ]
  %.not145.i.i.i = icmp ne i32 %.promoted.i39.i.i.i, 65535
  %i.st = zext i1 %.not145.i.i.i to i32
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %._crit_edge.i.i.i, %bb.bh
  %.promoted.i37.i.i.i = phi i32 [ %.0117.i.i.i, %._crit_edge.i.i.i ], [ %.promoted.i163.i.i.i, %bb.bh ] ; 2 uses
  %.0120.be.i.i.i = phi ptr [ %.2122.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %spec.select.i.i.i, %bb.bh ]
  %.0115.be.i.i.i = phi i32 [ %10, %._crit_edge.i.i.i ], [ %i.my, %bb.bh ] ; 2 uses
  %.0112.be.i.i.i = phi i32 [ %.2114.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %spec.select146.i.i.i, %bb.bh ]
  %.0109.be.i.i.i = phi i32 [ %i.st, %._crit_edge.i.i.i ], [ 0, %bb.bh ]
  %.0.be.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i ], [ %i.ni, %bb.bh ]
  %i.su = icmp ult i32 %.0115.be.i.i.i, %i.jn
  br i1 %i.su, label %bb.aw, label %._crit_edge29.i.i.i, !llvm.loop !58

._crit_edge29.i.i.i:                              ; preds = %.backedge.i.i.i, %bb.av
  %.val.i.i.i.i = phi i32 [ 0, %bb.av ], [ %.promoted.i37.i.i.i, %.backedge.i.i.i ] ; 3 uses
  %i.sv = sub nsw i32 0, %.val.i.i.i.i
  %i.sw = and i32 %i.sv, 7                        ; 2 uses
  %.not.i171.i.i.i = icmp eq i32 %i.sw, 0
  br i1 %.not.i171.i.i.i, label %read_high_coeffs.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %._crit_edge29.i.i.i
  %i.sx = add i32 %i.sw, %.val.i.i.i.i
  %i.sy = tail call i32 @llvm.umin.i32(i32 %i.ki, i32 %i.sx) ; 2 uses
  store i32 %i.sy, ptr %i.hz, align 8, !tbaa !43
  br label %read_high_coeffs.exit.i.i

read_high_coeffs.exit.i.i:                        ; preds = %bb.bu, %._crit_edge29.i.i.i
  %.val161.i.i.i = phi i32 [ %.val.i.i.i.i, %._crit_edge29.i.i.i ], [ %i.sy, %bb.bu ]
  %i.sz = ashr i32 %.val161.i.i.i, 3              ; 3 uses
  %i.ta = icmp slt i32 %i.sz, 0
  br i1 %i.ta, label %read_high_coeffs.exit.thread.i.i, label %bb.bv

read_high_coeffs.exit.thread.i.i:                 ; preds = %read_high_coeffs.exit.i.i, %.lr.ph.preheader.i.i.i, %bb.at, %bb.bt, %get_unary.exit170.thread.loopexit.i.i.i, %bb.bb
  %.0119.i74.i.i = phi i32 [ -1094995529, %bb.bt ], [ -1094995529, %bb.bb ], [ -1094995529, %get_unary.exit170.thread.loopexit.i.i.i ], [ -1094995529, %.lr.ph.preheader.i.i.i ], [ -1094995529, %bb.at ], [ %i.sz, %read_high_coeffs.exit.i.i ]
  %i.tb = trunc nuw nsw i64 %indvars.iv to i32
  %i.tc = trunc nuw nsw i64 %indvars.iv.i.i to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef range(i32 -2147483648, 3) %i.tb, i32 noundef %i.tc) #12
  br label %decode_plane.exit.thread

bb.bv:                                            ; preds = %read_high_coeffs.exit.i.i
  %i.td = zext nneg i32 %i.sz to i64
  %..i.i.i = tail call i64 @llvm.smin.i64(i64 %i.ke, i64 %i.td)
  %i.te = getelementptr inbounds i8, ptr %i.jq, i64 %..i.i.i ; 2 uses
  store ptr %i.te, ptr %i.hp, align 8, !tbaa !78
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %read_highpass.exit.i, label %bb.al, !llvm.loop !59

read_highpass.exit.i:                             ; preds = %bb.bv, %bb.ak
  %i.tf = getelementptr inbounds nuw i8, ptr %i.de, i64 88
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !50 ; 21 uses
  %i.th = load i32, ptr %i.fz, align 4, !tbaa !45 ; 3 uses
  %i.ti = load i32, ptr %i.gg, align 4, !tbaa !46 ; 5 uses
  %i.tj = sext i32 %i.th to i64
  %i.tk = shl nsw i64 %i.tj, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.tg, i8 0, i64 %i.tk, i1 false)
  %i.tl = icmp sgt i32 %i.ti, 0
  br i1 %i.tl, label %.lr.ph33.i.i, label %lowpass_prediction.exit.i

.lr.ph33.i.i:                                     ; preds = %read_highpass.exit.i
  %i.tm = icmp sgt i32 %i.th, 1
  br i1 %i.tm, label %.lr.ph.us.preheader.i.i, label %.lr.ph33.split.i.i.preheader

.lr.ph33.split.i.i.preheader:                     ; preds = %.lr.ph33.i.i
  %xtraiter549 = and i32 %i.ti, 3                 ; 3 uses
  %i.tn = icmp ult i32 %i.ti, 4
  br i1 %i.tn, label %.lr.ph33.split.i.i.epil.preheader, label %.lr.ph33.split.i.i.preheader.new

.lr.ph33.split.i.i.preheader.new:                 ; preds = %.lr.ph33.split.i.i.preheader
  %unroll_iter552 = and i32 %i.ti, 2147483644
  br label %.lr.ph33.split.i.i

.lr.ph.us.preheader.i.i:                          ; preds = %.lr.ph33.i.i
  %wide.trip.count.i114.i = zext nneg i32 %i.th to i64 ; 3 uses
  %scevgep = getelementptr i8, ptr %i.tg, i64 2
  %i.to = shl nuw nsw i64 %wide.trip.count.i114.i, 1 ; 2 uses
  %scevgep472 = getelementptr i8, ptr %i.tg, i64 %i.to
  %i.tp = shl nsw i64 %i.di, 1
  %i.tq = add nsw i64 %wide.trip.count.i114.i, -1 ; 6 uses
  %i.tr = add nsw i64 %wide.trip.count.i114.i, -2 ; 2 uses
  %i.ts = getelementptr i8, ptr %i.ez, i64 %i.to
  %xtraiter554 = and i64 %i.tq, 1
  %i.tt = icmp eq i64 %i.tr, 0
  %unroll_iter558 = and i64 %i.tq, -2
  %lcmp.mod556.not = icmp eq i64 %xtraiter554, 0
  %lcmp.mod557 = trunc i64 %i.tq to i1
  %xtraiter560 = and i64 %i.tq, 1
  %i.tu = icmp eq i64 %i.tr, 0
  %unroll_iter564 = and i64 %i.tq, -2
  %lcmp.mod562.not = icmp eq i64 %xtraiter560, 0
  %lcmp.mod563 = trunc i64 %i.tq to i1
  br label %.lver.check

.lver.check:                                      ; preds = %._crit_edge.us.i.i, %.lr.ph.us.preheader.i.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i.i ], [ 0, %.lr.ph.us.preheader.i.i ] ; 2 uses
  %.02731.us.i.i = phi i32 [ %i.vq, %._crit_edge.us.i.i ], [ 0, %.lr.ph.us.preheader.i.i ]
  %.02830.us.i.i = phi ptr [ %i.vp, %._crit_edge.us.i.i ], [ %i.ez, %.lr.ph.us.preheader.i.i ] ; 11 uses
  %i.tv = mul i64 %i.tp, %indvar
  %scevgep473 = getelementptr i8, ptr %i.ts, i64 %i.tv
  %i.tw = load i16, ptr %i.tg, align 2, !tbaa !36
  %i.tx = load i16, ptr %.02830.us.i.i, align 2, !tbaa !36
  %i.ty = add i16 %i.tx, %i.tw                    ; 2 uses
  store i16 %i.ty, ptr %i.tg, align 2, !tbaa !36
  store i16 %i.ty, ptr %.02830.us.i.i, align 2, !tbaa !36
  %bound0 = icmp ult ptr %scevgep, %scevgep473
  %bound1 = icmp ult ptr %.02830.us.i.i, %scevgep472
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.ph.lver.orig.preheader, label %.ph

.ph.lver.orig.preheader:                          ; preds = %.lver.check
  br i1 %i.tu, label %.ph.lver.orig.epil.preheader, label %.ph.lver.orig

.ph.lver.orig:                                    ; preds = %.ph.lver.orig.preheader, %.ph.lver.orig
  %indvars.iv.i115.i.lver.orig = phi i64 [ %indvars.iv.next.i116.i.lver.orig.1, %.ph.lver.orig ], [ 1, %.ph.lver.orig.preheader ] ; 4 uses
  %niter565 = phi i64 [ %niter565.next.1, %.ph.lver.orig ], [ 0, %.ph.lver.orig.preheader ]
  %i.tz = getelementptr inbounds nuw [2 x i8], ptr %i.tg, i64 %indvars.iv.i115.i.lver.orig ; 2 uses
  %i.ua = load i16, ptr %i.tz, align 2, !tbaa !36
  %i.ub = getelementptr inbounds nuw [2 x i8], ptr %.02830.us.i.i, i64 %indvars.iv.i115.i.lver.orig ; 3 uses
  %i.uc = load i16, ptr %i.ub, align 2, !tbaa !36
  %i.ud = add i16 %i.uc, %i.ua                    ; 2 uses
  store i16 %i.ud, ptr %i.tz, align 2, !tbaa !36
  %i.ue = getelementptr i8, ptr %i.ub, i64 -2
  %i.uf = load i16, ptr %i.ue, align 2, !tbaa !36
  %i.ug = add i16 %i.uf, %i.ud
  store i16 %i.ug, ptr %i.ub, align 2, !tbaa !36
  %indvars.iv.next.i116.i.lver.orig = add nuw nsw i64 %indvars.iv.i115.i.lver.orig, 1 ; 2 uses
  %i.uh = getelementptr inbounds nuw [2 x i8], ptr %i.tg, i64 %indvars.iv.next.i116.i.lver.orig ; 2 uses
  %i.ui = load i16, ptr %i.uh, align 2, !tbaa !36
  %i.uj = getelementptr inbounds nuw [2 x i8], ptr %.02830.us.i.i, i64 %indvars.iv.next.i116.i.lver.orig ; 3 uses
  %i.uk = load i16, ptr %i.uj, align 2, !tbaa !36
  %i.ul = add i16 %i.uk, %i.ui                    ; 2 uses
  store i16 %i.ul, ptr %i.uh, align 2, !tbaa !36
  %i.um = getelementptr i8, ptr %i.uj, i64 -2
  %i.un = load i16, ptr %i.um, align 2, !tbaa !36
  %i.uo = add i16 %i.un, %i.ul
  store i16 %i.uo, ptr %i.uj, align 2, !tbaa !36
  %indvars.iv.next.i116.i.lver.orig.1 = add nuw nsw i64 %indvars.iv.i115.i.lver.orig, 2 ; 2 uses
  %niter565.next.1 = add nuw i64 %niter565, 2     ; 2 uses
  %niter565.ncmp.1 = icmp eq i64 %niter565.next.1, %unroll_iter564
  br i1 %niter565.ncmp.1, label %._crit_edge.us.i.i.loopexit.unr-lcssa, label %.ph.lver.orig, !llvm.loop !60

.ph:                                              ; preds = %.lver.check
  %load_initial = load i16, ptr %.02830.us.i.i, align 2 ; 2 uses
  br i1 %i.tt, label %.epil.preheader, label %.ph.new

.ph.new:                                          ; preds = %.ph, %.ph.new
  %store_forwarded = phi i16 [ %i.va, %.ph.new ], [ %load_initial, %.ph ]
  %indvars.iv.i115.i = phi i64 [ %indvars.iv.next.i116.i.1, %.ph.new ], [ 1, %.ph ] ; 4 uses
  %niter559 = phi i64 [ %niter559.next.1, %.ph.new ], [ 0, %.ph ]
  %i.up = getelementptr inbounds nuw [2 x i8], ptr %i.tg, i64 %indvars.iv.i115.i ; 2 uses
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !36
  %i.ur = getelementptr inbounds nuw [2 x i8], ptr %.02830.us.i.i, i64 %indvars.iv.i115.i ; 2 uses
  %i.us = load i16, ptr %i.ur, align 2, !tbaa !36
  %i.ut = add i16 %i.us, %i.uq                    ; 2 uses
  store i16 %i.ut, ptr %i.up, align 2, !tbaa !36
  %i.uu = add i16 %store_forwarded, %i.ut         ; 2 uses
  store i16 %i.uu, ptr %i.ur, align 2, !tbaa !36
  %indvars.iv.next.i116.i = add nuw nsw i64 %indvars.iv.i115.i, 1 ; 2 uses
  %i.uv = getelementptr inbounds nuw [2 x i8], ptr %i.tg, i64 %indvars.iv.next.i116.i ; 2 uses
  %i.uw = load i16, ptr %i.uv, align 2, !tbaa !36
  %i.ux = getelementptr inbounds nuw [2 x i8], ptr %.02830.us.i.i, i64 %indvars.iv.next.i116.i ; 2 uses
  %i.uy = load i16, ptr %i.ux, align 2, !tbaa !36
  %i.uz = add i16 %i.uy, %i.uw                    ; 2 uses
  store i16 %i.uz, ptr %i.uv, align 2, !tbaa !36
  %i.va = add i16 %i.uu, %i.uz                    ; 3 uses
  store i16 %i.va, ptr %i.ux, align 2, !tbaa !36
  %indvars.iv.next.i116.i.1 = add nuw nsw i64 %indvars.iv.i115.i, 2 ; 2 uses
  %niter559.next.1 = add nuw i64 %niter559, 2     ; 2 uses
  %niter559.ncmp.1 = icmp eq i64 %niter559.next.1, %unroll_iter558
  br i1 %niter559.ncmp.1, label %._crit_edge.us.i.i.loopexit475.unr-lcssa, label %.ph.new, !llvm.loop !60

._crit_edge.us.i.i.loopexit.unr-lcssa:            ; preds = %.ph.lver.orig
  br i1 %lcmp.mod562.not, label %._crit_edge.us.i.i, label %.ph.lver.orig.epil.preheader

.ph.lver.orig.epil.preheader:                     ; preds = %._crit_edge.us.i.i.loopexit.unr-lcssa, %.ph.lver.orig.preheader
  %indvars.iv.i115.i.lver.orig.epil.init = phi i64 [ 1, %.ph.lver.orig.preheader ], [ %indvars.iv.next.i116.i.lver.orig.1, %._crit_edge.us.i.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod563)
  %i.vb = getelementptr inbounds nuw [2 x i8], ptr %i.tg, i64 %indvars.iv.i115.i.lver.orig.epil.init ; 2 uses
  %i.vc = load i16, ptr %i.vb, align 2, !tbaa !36
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %.02830.us.i.i, i64 %indvars.iv.i115.i.lver.orig.epil.init ; 3 uses
  %i.ve = load i16, ptr %i.vd, align 2, !tbaa !36
  %i.vf = add i16 %i.ve, %i.vc                    ; 2 uses
  store i16 %i.vf, ptr %i.vb, align 2, !tbaa !36
  %i.vg = getelementptr i8, ptr %i.vd, i64 -2
  %i.vh = load i16, ptr %i.vg, align 2, !tbaa !36
  %i.vi = add i16 %i.vh, %i.vf
  store i16 %i.vi, ptr %i.vd, align 2, !tbaa !36
  br label %._crit_edge.us.i.i

._crit_edge.us.i.i.loopexit475.unr-lcssa:         ; preds = %.ph.new
  br i1 %lcmp.mod556.not, label %._crit_edge.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.loopexit475.unr-lcssa, %.ph
  %store_forwarded.epil.init = phi i16 [ %load_initial, %.ph ], [ %i.va, %._crit_edge.us.i.i.loopexit475.unr-lcssa ]
  %indvars.iv.i115.i.epil.init = phi i64 [ 1, %.ph ], [ %indvars.iv.next.i116.i.1, %._crit_edge.us.i.i.loopexit475.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod557)
  %i.vj = getelementptr inbounds nuw [2 x i8], ptr %i.tg, i64 %indvars.iv.i115.i.epil.init ; 2 uses
  %i.vk = load i16, ptr %i.vj, align 2, !tbaa !36
  %i.vl = getelementptr inbounds nuw [2 x i8], ptr %.02830.us.i.i, i64 %indvars.iv.i115.i.epil.init ; 2 uses
  %i.vm = load i16, ptr %i.vl, align 2, !tbaa !36
  %i.vn = add i16 %i.vm, %i.vk                    ; 2 uses
  store i16 %i.vn, ptr %i.vj, align 2, !tbaa !36
  %i.vo = add i16 %store_forwarded.epil.init, %i.vn
  store i16 %i.vo, ptr %i.vl, align 2, !tbaa !36
  br label %._crit_edge.us.i.i

._crit_edge.us.i.i:                               ; preds = %.epil.preheader, %._crit_edge.us.i.i.loopexit475.unr-lcssa, %.ph.lver.orig.epil.preheader, %._crit_edge.us.i.i.loopexit.unr-lcssa
  %i.vp = getelementptr inbounds [2 x i8], ptr %.02830.us.i.i, i64 %i.di
  %i.vq = add nuw nsw i32 %.02731.us.i.i, 1       ; 2 uses
  %exitcond38.not.i.i = icmp eq i32 %i.vq, %i.ti
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond38.not.i.i, label %lowpass_prediction.exit.i, label %.lver.check, !llvm.loop !61

.lr.ph33.split.i.i:                               ; preds = %.lr.ph33.split.i.i, %.lr.ph33.split.i.i.preheader.new
  %.02830.i.i = phi ptr [ %i.ez, %.lr.ph33.split.i.i.preheader.new ], [ %i.wg, %.lr.ph33.split.i.i ] ; 3 uses
  %niter553 = phi i32 [ 0, %.lr.ph33.split.i.i.preheader.new ], [ %niter553.next.3, %.lr.ph33.split.i.i ]
  %i.vr = load i16, ptr %i.tg, align 2, !tbaa !36
  %i.vs = load i16, ptr %.02830.i.i, align 2, !tbaa !36
  %i.vt = add i16 %i.vs, %i.vr                    ; 2 uses
  store i16 %i.vt, ptr %i.tg, align 2, !tbaa !36
  store i16 %i.vt, ptr %.02830.i.i, align 2, !tbaa !36
  %i.vu = getelementptr inbounds [2 x i8], ptr %.02830.i.i, i64 %i.di ; 3 uses
  %i.vv = load i16, ptr %i.tg, align 2, !tbaa !36
  %i.vw = load i16, ptr %i.vu, align 2, !tbaa !36
  %i.vx = add i16 %i.vw, %i.vv                    ; 2 uses
  store i16 %i.vx, ptr %i.tg, align 2, !tbaa !36
  store i16 %i.vx, ptr %i.vu, align 2, !tbaa !36
  %i.vy = getelementptr inbounds [2 x i8], ptr %i.vu, i64 %i.di ; 3 uses
  %i.vz = load i16, ptr %i.tg, align 2, !tbaa !36
  %i.wa = load i16, ptr %i.vy, align 2, !tbaa !36
  %i.wb = add i16 %i.wa, %i.vz                    ; 2 uses
  store i16 %i.wb, ptr %i.tg, align 2, !tbaa !36
  store i16 %i.wb, ptr %i.vy, align 2, !tbaa !36
  %i.wc = getelementptr inbounds [2 x i8], ptr %i.vy, i64 %i.di ; 3 uses
  %i.wd = load i16, ptr %i.tg, align 2, !tbaa !36
  %i.we = load i16, ptr %i.wc, align 2, !tbaa !36
  %i.wf = add i16 %i.we, %i.wd                    ; 2 uses
  store i16 %i.wf, ptr %i.tg, align 2, !tbaa !36
  store i16 %i.wf, ptr %i.wc, align 2, !tbaa !36
  %i.wg = getelementptr inbounds [2 x i8], ptr %i.wc, i64 %i.di ; 2 uses
  %niter553.next.3 = add nuw nsw i32 %niter553, 4 ; 2 uses
  %niter553.ncmp.3 = icmp eq i32 %niter553.next.3, %unroll_iter552
  br i1 %niter553.ncmp.3, label %lowpass_prediction.exit.i.loopexit476.unr-lcssa, label %.lr.ph33.split.i.i, !llvm.loop !61

lowpass_prediction.exit.i.loopexit476.unr-lcssa:  ; preds = %.lr.ph33.split.i.i
  %lcmp.mod550.not = icmp eq i32 %xtraiter549, 0
  br i1 %lcmp.mod550.not, label %lowpass_prediction.exit.i, label %.lr.ph33.split.i.i.epil.preheader

.lr.ph33.split.i.i.epil.preheader:                ; preds = %lowpass_prediction.exit.i.loopexit476.unr-lcssa, %.lr.ph33.split.i.i.preheader
  %.02830.i.i.epil.init = phi ptr [ %i.ez, %.lr.ph33.split.i.i.preheader ], [ %i.wg, %lowpass_prediction.exit.i.loopexit476.unr-lcssa ]
  %lcmp.mod551 = icmp ne i32 %xtraiter549, 0
  tail call void @llvm.assume(i1 %lcmp.mod551)
  br label %.lr.ph33.split.i.i.epil

.lr.ph33.split.i.i.epil:                          ; preds = %.lr.ph33.split.i.i.epil, %.lr.ph33.split.i.i.epil.preheader
  %.02830.i.i.epil = phi ptr [ %i.wk, %.lr.ph33.split.i.i.epil ], [ %.02830.i.i.epil.init, %.lr.ph33.split.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph33.split.i.i.epil ], [ 0, %.lr.ph33.split.i.i.epil.preheader ]
  %i.wh = load i16, ptr %i.tg, align 2, !tbaa !36
  %i.wi = load i16, ptr %.02830.i.i.epil, align 2, !tbaa !36
  %i.wj = add i16 %i.wi, %i.wh                    ; 2 uses
  store i16 %i.wj, ptr %i.tg, align 2, !tbaa !36
  store i16 %i.wj, ptr %.02830.i.i.epil, align 2, !tbaa !36
  %i.wk = getelementptr inbounds [2 x i8], ptr %.02830.i.i.epil, i64 %i.di
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter549
  br i1 %epil.iter.cmp.not, label %lowpass_prediction.exit.i, label %.lr.ph33.split.i.i.epil, !llvm.loop !62

lowpass_prediction.exit.i:                        ; preds = %lowpass_prediction.exit.i.loopexit476.unr-lcssa, %.lr.ph33.split.i.i.epil, %._crit_edge.us.i.i, %read_highpass.exit.i
  %i.wl = load ptr, ptr %i.ey, align 8, !tbaa !30 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.wn = load i32, ptr %i.wm, align 8, !tbaa !38
  %i.wo = ashr i32 %i.wn, %i.dk
  %i.wp = getelementptr inbounds nuw i8, ptr %i.de, i64 68
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !39
  %i.wr = ashr i32 %i.wq, %i.dk
  %i.ws = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  %i.wt = getelementptr inbounds nuw [64 x i8], ptr %i.ws, i64 %indvars.iv ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 32
  %.val111.i = load ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  %i.wv = lshr i32 %i.wo, 4
  %i.ww = lshr i32 %i.wr, 4
  %i.wx = getelementptr inbounds nuw i8, ptr %.val111.i, i64 72
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !51 ; 18 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.val111.i, i64 80 ; 2 uses
  br label %bb.bw

bb.bw:                                            ; preds = %._crit_edge12.i.i, %lowpass_prediction.exit.i
  %indvars.iv31.i.i = phi i64 [ 0, %lowpass_prediction.exit.i ], [ %indvars.iv.next32.i.i, %._crit_edge12.i.i ] ; 3 uses
  %.05314.i.i = phi i32 [ %i.ww, %lowpass_prediction.exit.i ], [ %i.xf, %._crit_edge12.i.i ] ; 5 uses
  %.05413.i.i = phi i32 [ %i.wv, %lowpass_prediction.exit.i ], [ %i.xe, %._crit_edge12.i.i ] ; 4 uses
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %indvars.iv31.i.i
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !89 ; 2 uses
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.wt, i64 %indvars.iv31.i.i
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !89 ; 2 uses
  %i.xe = shl nuw i32 %.05413.i.i, 1              ; 3 uses
  %i.xf = shl nuw i32 %.05314.i.i, 1              ; 3 uses
  %.not.i117.i = icmp eq i32 %.05314.i.i, 0       ; 3 uses
  br i1 %.not.i117.i, label %.preheader.i.i, label %.lr.ph.i118.i

.lr.ph.i118.i:                                    ; preds = %bb.bw
  %i.xg = zext nneg i32 %.05413.i.i to i64        ; 5 uses
  %i.xh = zext i32 %i.xe to i64                   ; 2 uses
  %.not100.i.i.i = icmp eq i32 %.05413.i.i, 0
  br label %bb.bx

.preheader.i.i:                                   ; preds = %filterfn.exit.i.i, %bb.bw
  %.not16.i.i = icmp eq i32 %.05413.i.i, 0
  br i1 %.not16.i.i, label %._crit_edge12.i.i, label %.lr.ph11.i.i

.lr.ph11.i.i:                                     ; preds = %.preheader.i.i
  %i.xi = zext nneg i32 %.05314.i.i to i64        ; 5 uses
  %i.xj = zext i32 %i.xf to i64                   ; 6 uses
  %i.xk = getelementptr inbounds nuw [2 x i8], ptr %i.wy, i64 %i.xi
  %wide.trip.count29.i.i = zext i32 %i.xe to i64
  %xtraiter566 = and i64 %i.xj, 2                 ; 2 uses
  %i.xl = icmp eq i32 %.05314.i.i, 1
  %unroll_iter570 = and i64 %i.xj, 4294967292
  %lcmp.mod568.not = icmp eq i64 %xtraiter566, 0
  %lcmp.mod569 = icmp ne i64 %xtraiter566, 0
  %xtraiter572 = and i64 %i.xj, 6                 ; 3 uses
  %i.xm = icmp ult i32 %.05314.i.i, 4
  %unroll_iter576 = and i64 %i.xj, 4294967288
  %lcmp.mod574.not = icmp eq i64 %xtraiter572, 0
  %lcmp.mod575 = icmp ne i64 %xtraiter572, 0
  br label %bb.by

bb.bx:                                            ; preds = %filterfn.exit.i.i, %.lr.ph.i118.i
  %.0482.i.i = phi i32 [ 0, %.lr.ph.i118.i ], [ %i.aby, %filterfn.exit.i.i ]
  %.0511.i.i = phi ptr [ %i.wl, %.lr.ph.i118.i ], [ %i.abx, %filterfn.exit.i.i ] ; 5 uses
  %i.xn = load ptr, ptr %i.wz, align 8, !tbaa !51 ; 9 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 8 ; 8 uses
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr %i.xo, i64 %i.xg ; 16 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 16 ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.xo, ptr align 2 %.0511.i.i, i64 %i.xh, i1 false)
  %i.xr = getelementptr inbounds nuw [2 x i8], ptr %.0511.i.i, i64 %i.xg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.xq, ptr align 2 %i.xr, i64 %i.xh, i1 false)
  %i.xs = getelementptr inbounds nuw [2 x i8], ptr %i.xq, i64 %i.xg ; 8 uses
  %i.xt = getelementptr i8, ptr %i.xn, i64 10
  %i.xu = load i16, ptr %i.xt, align 2, !tbaa !36
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xn, i64 6
  store i16 %i.xu, ptr %i.xv, align 2, !tbaa !36
  %i.xw = getelementptr inbounds i8, ptr %i.xp, i64 -2
  %i.xx = load i16, ptr %i.xw, align 2, !tbaa !36
  store i16 %i.xx, ptr %i.xp, align 2, !tbaa !36
  %i.xy = load i16, ptr %i.xq, align 2, !tbaa !36
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xp, i64 14
  store i16 %i.xy, ptr %i.xz, align 2, !tbaa !36
  %i.ya = getelementptr inbounds i8, ptr %i.xs, i64 -4
  %i.yb = load i16, ptr %i.ya, align 2, !tbaa !36
  store i16 %i.yb, ptr %i.xs, align 2, !tbaa !36
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xs, i64 2
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xp, i64 2
  %i.ye = getelementptr i8, ptr %i.xn, i64 12
  %i.yf = load i16, ptr %i.ye, align 2, !tbaa !36
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xn, i64 4
  store i16 %i.yf, ptr %i.yg, align 2, !tbaa !36
  %i.yh = getelementptr inbounds i8, ptr %i.xp, i64 -4
  %i.yi = load i16, ptr %i.yh, align 2, !tbaa !36
  store i16 %i.yi, ptr %i.yd, align 2, !tbaa !36
  %i.yj = getelementptr i8, ptr %i.xp, i64 18
  %i.yk = load i16, ptr %i.yj, align 2, !tbaa !36
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xp, i64 12
  store i16 %i.yk, ptr %i.yl, align 2, !tbaa !36
  %i.ym = getelementptr inbounds i8, ptr %i.xs, i64 -6
  %i.yn = load i16, ptr %i.ym, align 2, !tbaa !36
  store i16 %i.yn, ptr %i.yc, align 2, !tbaa !36
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xs, i64 4
  %i.yp = getelementptr inbounds nuw i8, ptr %i.xp, i64 4
  %i.yq = getelementptr i8, ptr %i.xn, i64 14
  %i.yr = load i16, ptr %i.yq, align 2, !tbaa !36
  %i.ys = getelementptr inbounds nuw i8, ptr %i.xn, i64 2
  store i16 %i.yr, ptr %i.ys, align 2, !tbaa !36
  %i.yt = getelementptr inbounds i8, ptr %i.xp, i64 -6
  %i.yu = load i16, ptr %i.yt, align 2, !tbaa !36
  store i16 %i.yu, ptr %i.yp, align 2, !tbaa !36
  %i.yv = getelementptr i8, ptr %i.xp, i64 20
  %i.yw = load i16, ptr %i.yv, align 2, !tbaa !36
  %i.yx = getelementptr inbounds nuw i8, ptr %i.xp, i64 10
  store i16 %i.yw, ptr %i.yx, align 2, !tbaa !36
  %i.yy = getelementptr inbounds i8, ptr %i.xs, i64 -8
  %i.yz = load i16, ptr %i.yy, align 2, !tbaa !36
  store i16 %i.yz, ptr %i.yo, align 2, !tbaa !36
  %i.za = getelementptr inbounds nuw i8, ptr %i.xs, i64 6
  %i.zb = getelementptr inbounds nuw i8, ptr %i.xp, i64 6
  %i.zc = getelementptr i8, ptr %i.xn, i64 16
  %i.zd = load i16, ptr %i.zc, align 2, !tbaa !36
  store i16 %i.zd, ptr %i.xn, align 2, !tbaa !36
  %i.ze = getelementptr inbounds i8, ptr %i.xp, i64 -8
  %i.zf = load i16, ptr %i.ze, align 2, !tbaa !36
  store i16 %i.zf, ptr %i.zb, align 2, !tbaa !36
  %i.zg = getelementptr i8, ptr %i.xp, i64 22
  %i.zh = load i16, ptr %i.zg, align 2, !tbaa !36
  %i.zi = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  store i16 %i.zh, ptr %i.zi, align 2, !tbaa !36
  %i.zj = getelementptr inbounds i8, ptr %i.xs, i64 -10
  %i.zk = load i16, ptr %i.zj, align 2, !tbaa !36
  store i16 %i.zk, ptr %i.za, align 2, !tbaa !36
  br i1 %.not100.i.i.i, label %filterfn.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bx, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.bx ] ; 5 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.zl = getelementptr inbounds nuw [2 x i8], ptr %i.xo, i64 %indvars.iv.next.i.i.i
  %i.zm = load i16, ptr %i.zl, align 2, !tbaa !36
  %i.zn = sext i16 %i.zm to i64
  %i.zo = getelementptr inbounds nuw [2 x i8], ptr %i.xo, i64 %indvars.iv.i.i.i
  %i.zp = load i16, ptr %i.zo, align 2, !tbaa !36
  %i.zq = sext i16 %i.zp to i64
  %i.zr = mul nsw i64 %i.zq, 3687786320
  %i.zs = add nsw i64 %indvars.iv.i.i.i, -1       ; 2 uses
  %i.zt = getelementptr inbounds [2 x i8], ptr %i.xo, i64 %i.zs
  %i.zu = load i16, ptr %i.zt, align 2, !tbaa !36
  %i.zv = sext i16 %i.zu to i64
  %i.zw = getelementptr inbounds nuw [2 x i8], ptr %i.xq, i64 %indvars.iv.i.i.i
  %i.zx = load i16, ptr %i.zw, align 2, !tbaa !36
  %i.zy = sext i16 %i.zx to i64
  %i.zz = getelementptr inbounds [2 x i8], ptr %i.xq, i64 %i.zs
  %i.aaa = load i16, ptr %i.zz, align 2, !tbaa !36
  %i.aab = sext i16 %i.aaa to i64
  %reass.add86.i.i.i = add nsw i64 %i.aab, %i.zy
  %reass.mul87.i.i.i = mul nsw i64 %reass.add86.i.i.i, 1518500249
  %reass.add88.i.i.i = add nsw i64 %i.zv, %i.zn
  %reass.mul89.i.i.i = mul nsw i64 %reass.add88.i.i.i, -325392907
  %i.aac = add nsw i64 %reass.mul89.i.i.i, %i.zr
  %i.aad = add nsw i64 %i.aac, %reass.mul87.i.i.i
  %i.aae = ashr i64 %i.aad, 32
  %i.aaf = mul i64 %i.aae, %i.xb                  ; 2 uses
  %i.aag = lshr i64 %i.aaf, 32                    ; 2 uses
  %i.aah = trunc nuw i64 %i.aag to i32
  %i.aai = add i32 %i.aah, 32768
  %.not.i80.i.i.i = icmp ult i32 %i.aai, 65536
  %i.aaj = icmp sgt i64 %i.aaf, -1
  %i.aak = select i1 %i.aaj, i16 32767, i16 -32768
  %i.aal = trunc i64 %i.aag to i16
  %.0.i81.i.i.i = select i1 %.not.i80.i.i.i, i16 %i.aal, i16 %i.aak
  %.idx.i.i.i = shl nuw nsw i64 %indvars.iv.i.i.i, 2
  %i.aam = getelementptr inbounds nuw i8, ptr %.0511.i.i, i64 %.idx.i.i.i
  store i16 %.0.i81.i.i.i, ptr %i.aam, align 2, !tbaa !36
  %exitcond.not.i.i119.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.xg
  br i1 %exitcond.not.i.i119.i, label %.lr.ph99.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !63

.lr.ph99.i.i.i:                                   ; preds = %.lr.ph.i.i.i, %.lr.ph99.i.i.i
  %indvars.iv108.i.i.i = phi i64 [ %indvars.iv.next109.i.i.i, %.lr.ph99.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 5 uses
  %i.aan = getelementptr inbounds nuw [2 x i8], ptr %i.xo, i64 %indvars.iv108.i.i.i ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 4
  %i.aap = load i16, ptr %i.aao, align 2, !tbaa !36
  %i.aaq = sext i16 %i.aap to i64
  %indvars.iv.next109.i.i.i = add nuw nsw i64 %indvars.iv108.i.i.i, 1 ; 4 uses
  %i.aar = getelementptr inbounds nuw [2 x i8], ptr %i.xo, i64 %indvars.iv.next109.i.i.i
  %i.aas = load i16, ptr %i.aar, align 2, !tbaa !36
  %i.aat = sext i16 %i.aas to i64
  %i.aau = load i16, ptr %i.aan, align 2, !tbaa !36
  %i.aav = sext i16 %i.aau to i64
  %i.aaw = add nsw i64 %indvars.iv108.i.i.i, -1   ; 2 uses
  %i.aax = getelementptr inbounds [2 x i8], ptr %i.xo, i64 %i.aaw
  %i.aay = load i16, ptr %i.aax, align 2, !tbaa !36
  %i.aaz = sext i16 %i.aay to i64
  %i.aba = getelementptr inbounds nuw [2 x i8], ptr %i.xq, i64 %indvars.iv.next109.i.i.i
  %i.abb = load i16, ptr %i.aba, align 2, !tbaa !36
  %i.abc = sext i16 %i.abb to i64
  %i.abd = getelementptr inbounds nuw [2 x i8], ptr %i.xq, i64 %indvars.iv108.i.i.i
  %i.abe = load i16, ptr %i.abd, align 2, !tbaa !36
  %i.abf = sext i16 %i.abe to i64
  %i.abg = mul nsw i64 %i.abf, -3644400640
  %i.abh = getelementptr inbounds [2 x i8], ptr %i.xq, i64 %i.aaw
  %i.abi = load i16, ptr %i.abh, align 2, !tbaa !36
  %i.abj = sext i16 %i.abi to i64
  %reass.add.i.i.i = add nsw i64 %i.abj, %i.abc
  %reass.mul.i.i.i = mul nsw i64 %reass.add.i.i.i, 303700064
  %reass.add82.i.i.i = add nsw i64 %i.aav, %i.aat
  %reass.mul83.i.i.i = mul nsw i64 %reass.add82.i.i.i, 1583578880
  %reass.add84.i.i.i = add nsw i64 %i.aaz, %i.aaq
  %reass.mul85.i.i.i = mul nsw i64 %reass.add84.i.i.i, -65078576
  %i.abk = add nsw i64 %reass.mul85.i.i.i, %reass.mul83.i.i.i
  %i.abl = add nsw i64 %i.abk, %i.abg
  %i.abm = add nsw i64 %i.abl, %reass.mul.i.i.i
  %i.abn = ashr i64 %i.abm, 32
  %i.abo = mul i64 %i.abn, %i.xb                  ; 2 uses
  %i.abp = lshr i64 %i.abo, 32                    ; 2 uses
  %i.abq = trunc nuw i64 %i.abp to i32
  %i.abr = add i32 %i.abq, 32768
  %.not.i.i.i120.i = icmp ult i32 %i.abr, 65536
  %i.abs = icmp sgt i64 %i.abo, -1
  %i.abt = select i1 %i.abs, i16 32767, i16 -32768
  %i.abu = trunc i64 %i.abp to i16
  %.0.i.i.i.i = select i1 %.not.i.i.i120.i, i16 %i.abu, i16 %i.abt
  %.idx113.i.i.i = shl nuw nsw i64 %indvars.iv108.i.i.i, 2
  %i.abv = getelementptr inbounds nuw i8, ptr %.0511.i.i, i64 %.idx113.i.i.i
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 2
  store i16 %.0.i.i.i.i, ptr %i.abw, align 2, !tbaa !36
  %exitcond112.not.i.i.i = icmp eq i64 %indvars.iv.next109.i.i.i, %i.xg
  br i1 %exitcond112.not.i.i.i, label %filterfn.exit.i.i, label %.lr.ph99.i.i.i, !llvm.loop !64

filterfn.exit.i.i:                                ; preds = %.lr.ph99.i.i.i, %bb.bx
  %i.abx = getelementptr inbounds [2 x i8], ptr %.0511.i.i, i64 %i.di
  %i.aby = add nuw nsw i32 %.0482.i.i, 1          ; 2 uses
  %exitcond.not.i121.i = icmp eq i32 %i.aby, %i.xf
  br i1 %exitcond.not.i121.i, label %.preheader.i.i, label %bb.bx, !llvm.loop !65

bb.by:                                            ; preds = %._crit_edge9.i.i, %.lr.ph11.i.i
  %indvars.iv26.i.i = phi i64 [ 0, %.lr.ph11.i.i ], [ %indvars.iv.next27.i.i, %._crit_edge9.i.i ] ; 2 uses
  %i.abz = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %indvars.iv26.i.i ; 4 uses
  br i1 %.not.i117.i, label %._crit_edge.i.i, label %.lr.ph5.i.i.preheader

.lr.ph5.i.i.preheader:                            ; preds = %bb.by
  br i1 %i.xl, label %.lr.ph5.i.i.epil.preheader, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.lr.ph5.i.i.preheader, %.lr.ph5.i.i
  %indvars.iv.i122.i = phi i64 [ %indvars.iv.next.i123.i.3, %.lr.ph5.i.i ], [ 0, %.lr.ph5.i.i.preheader ] ; 5 uses
  %.1523.i.i = phi ptr [ %i.aco, %.lr.ph5.i.i ], [ %i.abz, %.lr.ph5.i.i.preheader ] ; 2 uses
  %niter571 = phi i64 [ %niter571.next.3, %.lr.ph5.i.i ], [ 0, %.lr.ph5.i.i.preheader ]
  %i.aca = load i16, ptr %.1523.i.i, align 2, !tbaa !36
  %i.acb = getelementptr inbounds nuw [2 x i8], ptr %i.wy, i64 %indvars.iv.i122.i
  store i16 %i.aca, ptr %i.acb, align 2, !tbaa !36
  %i.acc = getelementptr inbounds [2 x i8], ptr %.1523.i.i, i64 %i.di ; 2 uses
  %i.acd = load i16, ptr %i.acc, align 2, !tbaa !36
  %i.ace = getelementptr inbounds nuw [2 x i8], ptr %i.wy, i64 %indvars.iv.i122.i
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 2
  store i16 %i.acd, ptr %i.acf, align 2, !tbaa !36
  %i.acg = getelementptr inbounds [2 x i8], ptr %i.acc, i64 %i.di ; 2 uses
  %i.ach = load i16, ptr %i.acg, align 2, !tbaa !36
  %i.aci = getelementptr inbounds nuw [2 x i8], ptr %i.wy, i64 %indvars.iv.i122.i
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 4
  store i16 %i.ach, ptr %i.acj, align 2, !tbaa !36
  %i.ack = getelementptr inbounds [2 x i8], ptr %i.acg, i64 %i.di ; 2 uses
  %i.acl = load i16, ptr %i.ack, align 2, !tbaa !36
  %i.acm = getelementptr inbounds nuw [2 x i8], ptr %i.wy, i64 %indvars.iv.i122.i
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 6
  store i16 %i.acl, ptr %i.acn, align 2, !tbaa !36
  %i.aco = getelementptr inbounds [2 x i8], ptr %i.ack, i64 %i.di ; 2 uses
  %indvars.iv.next.i123.i.3 = add nuw nsw i64 %indvars.iv.i122.i, 4 ; 2 uses
  %niter571.next.3 = add i64 %niter571, 4         ; 2 uses
  %niter571.ncmp.3 = icmp eq i64 %niter571.next.3, %unroll_iter570
  br i1 %niter571.ncmp.3, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph5.i.i, !llvm.loop !66

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph5.i.i
  br i1 %lcmp.mod568.not, label %._crit_edge.i.i, label %.lr.ph5.i.i.epil.preheader

.lr.ph5.i.i.epil.preheader:                       ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph5.i.i.preheader
  %indvars.iv.i122.i.epil.init = phi i64 [ 0, %.lr.ph5.i.i.preheader ], [ %indvars.iv.next.i123.i.3, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.1523.i.i.epil.init = phi ptr [ %i.abz, %.lr.ph5.i.i.preheader ], [ %i.aco, %._crit_edge.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod569)
  br label %.lr.ph5.i.i.epil

.lr.ph5.i.i.epil:                                 ; preds = %.lr.ph5.i.i.epil, %.lr.ph5.i.i.epil.preheader
  %indvars.iv.i122.i.epil = phi i64 [ %indvars.iv.next.i123.i.epil, %.lr.ph5.i.i.epil ], [ %indvars.iv.i122.i.epil.init, %.lr.ph5.i.i.epil.preheader ] ; 2 uses
  %.1523.i.i.epil = phi ptr [ %i.acr, %.lr.ph5.i.i.epil ], [ %.1523.i.i.epil.init, %.lr.ph5.i.i.epil.preheader ] ; 2 uses
  %epil.iter567 = phi i64 [ %epil.iter567.next, %.lr.ph5.i.i.epil ], [ 0, %.lr.ph5.i.i.epil.preheader ]
  %i.acp = load i16, ptr %.1523.i.i.epil, align 2, !tbaa !36
  %i.acq = getelementptr inbounds nuw [2 x i8], ptr %i.wy, i64 %indvars.iv.i122.i.epil
  store i16 %i.acp, ptr %i.acq, align 2, !tbaa !36
  %i.acr = getelementptr inbounds [2 x i8], ptr %.1523.i.i.epil, i64 %i.di
  %indvars.iv.next.i123.i.epil = add nuw nsw i64 %indvars.iv.i122.i.epil, 1
  %epil.iter567.next = add i64 %epil.iter567, 1   ; 2 uses
  %epil.iter567.cmp.not = icmp eq i64 %epil.iter567.next, 2
  br i1 %epil.iter567.cmp.not, label %._crit_edge.i.i, label %.lr.ph5.i.i.epil, !llvm.loop !67

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph5.i.i.epil, %bb.by
  %i.acs = load ptr, ptr %i.wz, align 8, !tbaa !51 ; 9 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 8 ; 8 uses
  %i.acu = getelementptr inbounds nuw [2 x i8], ptr %i.act, i64 %i.xi ; 16 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 16 ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.act, ptr align 2 %i.wy, i64 %i.xj, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.acv, ptr align 2 %i.xk, i64 %i.xj, i1 false)
  %i.acw = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %i.xi ; 8 uses
  %i.acx = getelementptr i8, ptr %i.acs, i64 10
  %i.acy = load i16, ptr %i.acx, align 2, !tbaa !36
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acs, i64 6
  store i16 %i.acy, ptr %i.acz, align 2, !tbaa !36
  %i.ada = getelementptr inbounds i8, ptr %i.acu, i64 -2
  %i.adb = load i16, ptr %i.ada, align 2, !tbaa !36
  store i16 %i.adb, ptr %i.acu, align 2, !tbaa !36
  %i.adc = load i16, ptr %i.acv, align 2, !tbaa !36
  %i.add = getelementptr inbounds nuw i8, ptr %i.acu, i64 14
  store i16 %i.adc, ptr %i.add, align 2, !tbaa !36
  %i.ade = getelementptr inbounds i8, ptr %i.acw, i64 -4
  %i.adf = load i16, ptr %i.ade, align 2, !tbaa !36
  store i16 %i.adf, ptr %i.acw, align 2, !tbaa !36
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acw, i64 2
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acu, i64 2
  %i.adi = getelementptr i8, ptr %i.acs, i64 12
  %i.adj = load i16, ptr %i.adi, align 2, !tbaa !36
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acs, i64 4
  store i16 %i.adj, ptr %i.adk, align 2, !tbaa !36
  %i.adl = getelementptr inbounds i8, ptr %i.acu, i64 -4
  %i.adm = load i16, ptr %i.adl, align 2, !tbaa !36
  store i16 %i.adm, ptr %i.adh, align 2, !tbaa !36
  %i.adn = getelementptr i8, ptr %i.acu, i64 18
  %i.ado = load i16, ptr %i.adn, align 2, !tbaa !36
  %i.adp = getelementptr inbounds nuw i8, ptr %i.acu, i64 12
  store i16 %i.ado, ptr %i.adp, align 2, !tbaa !36
  %i.adq = getelementptr inbounds i8, ptr %i.acw, i64 -6
  %i.adr = load i16, ptr %i.adq, align 2, !tbaa !36
  store i16 %i.adr, ptr %i.adg, align 2, !tbaa !36
  %i.ads = getelementptr inbounds nuw i8, ptr %i.acw, i64 4
  %i.adt = getelementptr inbounds nuw i8, ptr %i.acu, i64 4
  %i.adu = getelementptr i8, ptr %i.acs, i64 14
  %i.adv = load i16, ptr %i.adu, align 2, !tbaa !36
  %i.adw = getelementptr inbounds nuw i8, ptr %i.acs, i64 2
  store i16 %i.adv, ptr %i.adw, align 2, !tbaa !36
  %i.adx = getelementptr inbounds i8, ptr %i.acu, i64 -6
  %i.ady = load i16, ptr %i.adx, align 2, !tbaa !36
  store i16 %i.ady, ptr %i.adt, align 2, !tbaa !36
  %i.adz = getelementptr i8, ptr %i.acu, i64 20
  %i.aea = load i16, ptr %i.adz, align 2, !tbaa !36
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.acu, i64 10
  store i16 %i.aea, ptr %i.aeb, align 2, !tbaa !36
  %i.aec = getelementptr inbounds i8, ptr %i.acw, i64 -8
  %i.aed = load i16, ptr %i.aec, align 2, !tbaa !36
  store i16 %i.aed, ptr %i.ads, align 2, !tbaa !36
  %i.aee = getelementptr inbounds nuw i8, ptr %i.acw, i64 6
  %i.aef = getelementptr inbounds nuw i8, ptr %i.acu, i64 6
  %i.aeg = getelementptr i8, ptr %i.acs, i64 16
  %i.aeh = load i16, ptr %i.aeg, align 2, !tbaa !36
  store i16 %i.aeh, ptr %i.acs, align 2, !tbaa !36
  %i.aei = getelementptr inbounds i8, ptr %i.acu, i64 -8
  %i.aej = load i16, ptr %i.aei, align 2, !tbaa !36
  store i16 %i.aej, ptr %i.aef, align 2, !tbaa !36
  %i.aek = getelementptr i8, ptr %i.acu, i64 22
  %i.ael = load i16, ptr %i.aek, align 2, !tbaa !36
  %i.aem = getelementptr inbounds nuw i8, ptr %i.acu, i64 8
  store i16 %i.ael, ptr %i.aem, align 2, !tbaa !36
  %i.aen = getelementptr inbounds i8, ptr %i.acw, i64 -10
  %i.aeo = load i16, ptr %i.aen, align 2, !tbaa !36
  store i16 %i.aeo, ptr %i.aee, align 2, !tbaa !36
  br i1 %.not.i117.i, label %._crit_edge9.i.i, label %.lr.ph.i58.i.i

.lr.ph.i58.i.i:                                   ; preds = %._crit_edge.i.i, %.lr.ph.i58.i.i
  %indvars.iv.i59.i.i = phi i64 [ %indvars.iv.next.i60.i.i, %.lr.ph.i58.i.i ], [ 0, %._crit_edge.i.i ] ; 5 uses
  %indvars.iv.next.i60.i.i = add nuw nsw i64 %indvars.iv.i59.i.i, 1 ; 3 uses
  %i.aep = getelementptr inbounds nuw [2 x i8], ptr %i.act, i64 %indvars.iv.next.i60.i.i
  %i.aeq = load i16, ptr %i.aep, align 2, !tbaa !36
  %i.aer = sext i16 %i.aeq to i64
  %i.aes = getelementptr inbounds nuw [2 x i8], ptr %i.act, i64 %indvars.iv.i59.i.i
  %i.aet = load i16, ptr %i.aes, align 2, !tbaa !36
  %i.aeu = sext i16 %i.aet to i64
  %i.aev = mul nsw i64 %i.aeu, 3687786320
  %i.aew = add nsw i64 %indvars.iv.i59.i.i, -1    ; 2 uses
  %i.aex = getelementptr inbounds [2 x i8], ptr %i.act, i64 %i.aew
  %i.aey = load i16, ptr %i.aex, align 2, !tbaa !36
  %i.aez = sext i16 %i.aey to i64
  %i.afa = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %indvars.iv.i59.i.i
  %i.afb = load i16, ptr %i.afa, align 2, !tbaa !36
  %i.afc = sext i16 %i.afb to i64
  %i.afd = getelementptr inbounds [2 x i8], ptr %i.acv, i64 %i.aew
  %i.afe = load i16, ptr %i.afd, align 2, !tbaa !36
  %i.aff = sext i16 %i.afe to i64
  %reass.add86.i61.i.i = add nsw i64 %i.aff, %i.afc
  %reass.mul87.i62.i.i = mul nsw i64 %reass.add86.i61.i.i, 1518500249
  %reass.add88.i63.i.i = add nsw i64 %i.aez, %i.aer
  %reass.mul89.i64.i.i = mul nsw i64 %reass.add88.i63.i.i, -325392907
  %i.afg = add nsw i64 %reass.mul89.i64.i.i, %i.aev
  %i.afh = add nsw i64 %i.afg, %reass.mul87.i62.i.i
  %i.afi = ashr i64 %i.afh, 32
  %i.afj = mul i64 %i.afi, %i.xd                  ; 2 uses
  %i.afk = lshr i64 %i.afj, 32                    ; 2 uses
  %i.afl = trunc nuw i64 %i.afk to i32
  %i.afm = add i32 %i.afl, 32768
  %.not.i80.i65.i.i = icmp ult i32 %i.afm, 65536
  %i.afn = icmp sgt i64 %i.afj, -1
  %i.afo = select i1 %i.afn, i16 32767, i16 -32768
  %i.afp = trunc i64 %i.afk to i16
  %.0.i81.i66.i.i = select i1 %.not.i80.i65.i.i, i16 %i.afp, i16 %i.afo
  %.idx.i67.i.i = shl nuw nsw i64 %indvars.iv.i59.i.i, 2
  %i.afq = getelementptr inbounds nuw i8, ptr %i.wy, i64 %.idx.i67.i.i
  store i16 %.0.i81.i66.i.i, ptr %i.afq, align 2, !tbaa !36
  %exitcond.not.i68.i.i = icmp eq i64 %indvars.iv.next.i60.i.i, %i.xi
  br i1 %exitcond.not.i68.i.i, label %.lr.ph99.i69.i.i, label %.lr.ph.i58.i.i, !llvm.loop !63

.lr.ph99.i69.i.i:                                 ; preds = %.lr.ph.i58.i.i, %.lr.ph99.i69.i.i
  %indvars.iv108.i70.i.i = phi i64 [ %indvars.iv.next109.i71.i.i, %.lr.ph99.i69.i.i ], [ 0, %.lr.ph.i58.i.i ] ; 5 uses
  %i.afr = getelementptr inbounds nuw [2 x i8], ptr %i.act, i64 %indvars.iv108.i70.i.i ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 4
  %i.aft = load i16, ptr %i.afs, align 2, !tbaa !36
  %i.afu = sext i16 %i.aft to i64
  %indvars.iv.next109.i71.i.i = add nuw nsw i64 %indvars.iv108.i70.i.i, 1 ; 4 uses
  %i.afv = getelementptr inbounds nuw [2 x i8], ptr %i.act, i64 %indvars.iv.next109.i71.i.i
  %i.afw = load i16, ptr %i.afv, align 2, !tbaa !36
  %i.afx = sext i16 %i.afw to i64
  %i.afy = load i16, ptr %i.afr, align 2, !tbaa !36
  %i.afz = sext i16 %i.afy to i64
  %i.aga = add nsw i64 %indvars.iv108.i70.i.i, -1 ; 2 uses
  %i.agb = getelementptr inbounds [2 x i8], ptr %i.act, i64 %i.aga
  %i.agc = load i16, ptr %i.agb, align 2, !tbaa !36
  %i.agd = sext i16 %i.agc to i64
  %i.age = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %indvars.iv.next109.i71.i.i
  %i.agf = load i16, ptr %i.age, align 2, !tbaa !36
  %i.agg = sext i16 %i.agf to i64
  %i.agh = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %indvars.iv108.i70.i.i
  %i.agi = load i16, ptr %i.agh, align 2, !tbaa !36
  %i.agj = sext i16 %i.agi to i64
  %i.agk = mul nsw i64 %i.agj, -3644400640
  %i.agl = getelementptr inbounds [2 x i8], ptr %i.acv, i64 %i.aga
  %i.agm = load i16, ptr %i.agl, align 2, !tbaa !36
  %i.agn = sext i16 %i.agm to i64
  %reass.add.i72.i.i = add nsw i64 %i.agn, %i.agg
  %reass.mul.i73.i.i = mul nsw i64 %reass.add.i72.i.i, 303700064
  %reass.add82.i74.i.i = add nsw i64 %i.afz, %i.afx
  %reass.mul83.i75.i.i = mul nsw i64 %reass.add82.i74.i.i, 1583578880
  %reass.add84.i76.i.i = add nsw i64 %i.agd, %i.afu
  %reass.mul85.i77.i.i = mul nsw i64 %reass.add84.i76.i.i, -65078576
  %i.ago = add nsw i64 %reass.mul85.i77.i.i, %reass.mul83.i75.i.i
  %i.agp = add nsw i64 %i.ago, %i.agk
  %i.agq = add nsw i64 %i.agp, %reass.mul.i73.i.i
  %i.agr = ashr i64 %i.agq, 32
  %i.ags = mul i64 %i.agr, %i.xd                  ; 2 uses
  %i.agt = lshr i64 %i.ags, 32                    ; 2 uses
  %i.agu = trunc nuw i64 %i.agt to i32
  %i.agv = add i32 %i.agu, 32768
  %.not.i.i78.i.i = icmp ult i32 %i.agv, 65536
  %i.agw = icmp sgt i64 %i.ags, -1
  %i.agx = select i1 %i.agw, i16 32767, i16 -32768
  %i.agy = trunc i64 %i.agt to i16
  %.0.i.i79.i.i = select i1 %.not.i.i78.i.i, i16 %i.agy, i16 %i.agx
  %.idx113.i80.i.i = shl nuw nsw i64 %indvars.iv108.i70.i.i, 2
  %i.agz = getelementptr inbounds nuw i8, ptr %i.wy, i64 %.idx113.i80.i.i
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 2
  store i16 %.0.i.i79.i.i, ptr %i.aha, align 2, !tbaa !36
  %exitcond112.not.i81.i.i = icmp eq i64 %indvars.iv.next109.i71.i.i, %i.xi
  br i1 %exitcond112.not.i81.i.i, label %.lr.ph8.i.i.preheader, label %.lr.ph99.i69.i.i, !llvm.loop !64

.lr.ph8.i.i.preheader:                            ; preds = %.lr.ph99.i69.i.i
  br i1 %i.xm, label %.lr.ph8.i.i.epil.preheader, label %.lr.ph8.i.i

.lr.ph8.i.i:                                      ; preds = %.lr.ph8.i.i.preheader, %.lr.ph8.i.i
  %indvars.iv21.i.i = phi i64 [ %indvars.iv.next22.i.i.7, %.lr.ph8.i.i ], [ 0, %.lr.ph8.i.i.preheader ] ; 9 uses
  %.26.i.i = phi ptr [ %i.aif, %.lr.ph8.i.i ], [ %i.abz, %.lr.ph8.i.i.preheader ] ; 2 uses
  %niter577 = phi i64 [ %niter577.next.7, %.lr.ph8.i.i ], [ 0, %.lr.ph8.i.i.preheader ]
  %i.ahb = getelementptr inbounds nuw [2 x i8], ptr %i.wy, i64 %indvars.iv21.i.i
  %i.ahc = load i16, ptr %i.ahb, align 2, !tbaa !36
  store i16 %i.ahc, ptr %.26.i.i, align 2, !tbaa !36
  %i.ahd = getelementptr inbounds [2 x i8], ptr %.26.i.i, i64 %i.di ; 2 uses
  %i.ahe = getelementptr inbounds nuw [2 x i8], ptr %i.wy, i64 %indvars.iv21.i.i
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 2
  %i.ahg = load i16, ptr %i.ahf, align 2, !tbaa !36
  store i16 %i.ahg, ptr %i.ahd, align 2, !tbaa !36
  %i.ahh = getelementptr inbounds [2 x i8], ptr %i.ahd, i64 %i.di ; 2 uses
  %i.ahi = getelementptr inbounds nuw [2 x i8], ptr %i.wy, i64 %indvars.iv21.i.i
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 4
  %i.ahk = load i16, ptr %i.ahj, align 2, !tbaa !36
  store i16 %i.ahk, ptr %i.ahh, align 2, !tbaa !36
  %i.ahl = getelementptr inbounds [2 x i8], ptr %i.ahh, i64 %i.di ; 2 uses
  %i.ahm = getelementptr inbounds nuw [2 x i8], ptr %i.wy, i64 %indvars.iv21.i.i
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 6
  %i.aho = load i16, ptr %i.ahn, align 2, !tbaa !36
  store i16 %i.aho, ptr %i.ahl, align 2, !tbaa !36
  %i.ahp = getelementptr inbounds [2 x i8], ptr %i.ahl, i64 %i.di ; 2 uses
  %i.ahq = getelementptr inbounds nuw [2 x i8], ptr %i.wy, i64 %indvars.iv21.i.i
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8
  %i.ahs = load i16, ptr %i.ahr, align 2, !tbaa !36
  store i16 %i.ahs, ptr %i.ahp, align 2, !tbaa !36
  %i.aht = getelementptr inbounds [2 x i8], ptr %i.ahp, i64 %i.di ; 2 uses
  %i.ahu = getelementptr inbounds nuw [2 x i8], ptr %i.wy, i64 %indvars.iv21.i.i
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 10
  %i.ahw = load i16, ptr %i.ahv, align 2, !tbaa !36
  store i16 %i.ahw, ptr %i.aht, align 2, !tbaa !36
  %i.ahx = getelementptr inbounds [2 x i8], ptr %i.aht, i64 %i.di ; 2 uses
  %i.ahy = getelementptr inbounds nuw [2 x i8], ptr %i.wy, i64 %indvars.iv21.i.i
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 12
  %i.aia = load i16, ptr %i.ahz, align 2, !tbaa !36
  store i16 %i.aia, ptr %i.ahx, align 2, !tbaa !36
  %i.aib = getelementptr inbounds [2 x i8], ptr %i.ahx, i64 %i.di ; 2 uses
  %i.aic = getelementptr inbounds nuw [2 x i8], ptr %i.wy, i64 %indvars.iv21.i.i
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 14
  %i.aie = load i16, ptr %i.aid, align 2, !tbaa !36
  store i16 %i.aie, ptr %i.aib, align 2, !tbaa !36
  %i.aif = getelementptr inbounds [2 x i8], ptr %i.aib, i64 %i.di ; 2 uses
  %indvars.iv.next22.i.i.7 = add nuw nsw i64 %indvars.iv21.i.i, 8 ; 2 uses
  %niter577.next.7 = add i64 %niter577, 8         ; 2 uses
  %niter577.ncmp.7 = icmp eq i64 %niter577.next.7, %unroll_iter576
  br i1 %niter577.ncmp.7, label %._crit_edge9.i.i.loopexit.unr-lcssa, label %.lr.ph8.i.i, !llvm.loop !68

._crit_edge9.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph8.i.i
  br i1 %lcmp.mod574.not, label %._crit_edge9.i.i, label %.lr.ph8.i.i.epil.preheader

.lr.ph8.i.i.epil.preheader:                       ; preds = %._crit_edge9.i.i.loopexit.unr-lcssa, %.lr.ph8.i.i.preheader
  %indvars.iv21.i.i.epil.init = phi i64 [ 0, %.lr.ph8.i.i.preheader ], [ %indvars.iv.next22.i.i.7, %._crit_edge9.i.i.loopexit.unr-lcssa ]
  %.26.i.i.epil.init = phi ptr [ %i.abz, %.lr.ph8.i.i.preheader ], [ %i.aif, %._crit_edge9.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod575)
  br label %.lr.ph8.i.i.epil

.lr.ph8.i.i.epil:                                 ; preds = %.lr.ph8.i.i.epil, %.lr.ph8.i.i.epil.preheader
  %indvars.iv21.i.i.epil = phi i64 [ %indvars.iv.next22.i.i.epil, %.lr.ph8.i.i.epil ], [ %indvars.iv21.i.i.epil.init, %.lr.ph8.i.i.epil.preheader ] ; 2 uses
  %.26.i.i.epil = phi ptr [ %i.aii, %.lr.ph8.i.i.epil ], [ %.26.i.i.epil.init, %.lr.ph8.i.i.epil.preheader ] ; 2 uses
  %epil.iter573 = phi i64 [ %epil.iter573.next, %.lr.ph8.i.i.epil ], [ 0, %.lr.ph8.i.i.epil.preheader ]
  %i.aig = getelementptr inbounds nuw [2 x i8], ptr %i.wy, i64 %indvars.iv21.i.i.epil
  %i.aih = load i16, ptr %i.aig, align 2, !tbaa !36
  store i16 %i.aih, ptr %.26.i.i.epil, align 2, !tbaa !36
  %i.aii = getelementptr inbounds [2 x i8], ptr %.26.i.i.epil, i64 %i.di
  %indvars.iv.next22.i.i.epil = add nuw nsw i64 %indvars.iv21.i.i.epil, 1
  %epil.iter573.next = add i64 %epil.iter573, 1   ; 2 uses
  %epil.iter573.cmp.not = icmp eq i64 %epil.iter573.next, %xtraiter572
  br i1 %epil.iter573.cmp.not, label %._crit_edge9.i.i, label %.lr.ph8.i.i.epil, !llvm.loop !69

._crit_edge9.i.i:                                 ; preds = %._crit_edge9.i.i.loopexit.unr-lcssa, %.lr.ph8.i.i.epil, %._crit_edge.i.i
  %indvars.iv.next27.i.i = add nuw nsw i64 %indvars.iv26.i.i, 1 ; 2 uses
  %exitcond30.not.i.i = icmp eq i64 %indvars.iv.next27.i.i, %wide.trip.count29.i.i
  br i1 %exitcond30.not.i.i, label %._crit_edge12.i.i, label %bb.by, !llvm.loop !70

._crit_edge12.i.i:                                ; preds = %._crit_edge9.i.i, %.preheader.i.i
  %indvars.iv.next32.i.i = add nuw nsw i64 %indvars.iv31.i.i, 1 ; 2 uses
  %exitcond34.not.i.i = icmp eq i64 %indvars.iv.next32.i.i, 4
  br i1 %exitcond34.not.i.i, label %decode_plane.exit, label %bb.bw, !llvm.loop !71

decode_plane.exit:                                ; preds = %._crit_edge12.i.i
  %i.aij = load i32, ptr %i.dd, align 8, !tbaa !92
  %i.aik = and i32 %i.aij, 8192
  %.not100 = icmp eq i32 %i.aik, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ail = icmp samesign ult i64 %indvars.iv, 2
  %or.cond210 = select i1 %.not100, i1 %i.ail, i1 false
  br i1 %or.cond210, label %bb.v, label %bb.bz, !llvm.loop !72

bb.bz:                                            ; preds = %decode_plane.exit
  %i.aim = load i32, ptr %i.cm, align 8, !tbaa !38 ; 5 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !39 ; 3 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.aiq = load i32, ptr %i.aip, align 4, !tbaa !81 ; 4 uses
  %.val117 = load ptr, ptr %i.a, align 8, !tbaa !28
  %.val119 = load i32, ptr %i.dc, align 8, !tbaa !40
  %i.air = sdiv i32 %.val119, 2
  %i.ais = sext i32 %i.air to i64
  %i.ait = getelementptr inbounds nuw i8, ptr %.val117, i64 352 ; 3 uses
  %i.aiu = icmp sgt i32 %i.aio, 0
  %i.aiv = icmp sgt i32 %i.aim, 0
  %or.cond.i123 = and i1 %i.aiv, %i.aiu
  br i1 %or.cond.i123, label %.preheader.preheader.i, label %postprocess_luma.exit

.preheader.preheader.i:                           ; preds = %bb.bz
  %.val118 = load ptr, ptr %1, align 8, !tbaa !30
  %wide.trip.count.i = zext nneg i32 %i.aim to i64 ; 2 uses
  %xtraiter579 = and i64 %wide.trip.count.i, 1
  %i.aiw = icmp eq i32 %i.aim, 1
  %unroll_iter583 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod581.not = icmp eq i64 %xtraiter579, 0
  %lcmp.mod582 = trunc i32 %i.aim to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i127, %.preheader.preheader.i
  %.04.i = phi i32 [ %i.aju, %._crit_edge.i127 ], [ 0, %.preheader.preheader.i ]
  %.0293.i = phi ptr [ %i.ajt, %._crit_edge.i127 ], [ %.val118, %.preheader.preheader.i ] ; 4 uses
  br i1 %i.aiw, label %.epil.preheader578, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %bb.cf
  %indvars.iv.i124 = phi i64 [ %indvars.iv.next.i125.1, %bb.cf ], [ 0, %.preheader.i ] ; 3 uses
  %niter584 = phi i64 [ %niter584.next.1, %bb.cf ], [ 0, %.preheader.i ]
  %i.aix = getelementptr inbounds nuw [2 x i8], ptr %.0293.i, i64 %indvars.iv.i124 ; 2 uses
  %i.aiy = load i16, ptr %i.aix, align 2, !tbaa !36 ; 3 uses
  %i.aiz = icmp slt i16 %i.aiy, 1
  br i1 %i.aiz, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %.preheader.i.new
  %i.aja = zext nneg i16 %i.aiy to i32
  %.highbits.i = lshr i32 %i.aja, %i.aiq
  %.not.i = icmp eq i32 %.highbits.i, 0
  br i1 %.not.i, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ajb = zext nneg i16 %i.aiy to i64
  %i.ajc = getelementptr inbounds nuw [2 x i8], ptr %i.ait, i64 %i.ajb
  %i.ajd = load i16, ptr %i.ajc, align 2, !tbaa !36
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %.preheader.i.new
  %.sink.i = phi i16 [ 0, %.preheader.i.new ], [ %i.ajd, %bb.cb ], [ -1, %bb.ca ]
  store i16 %.sink.i, ptr %i.aix, align 2, !tbaa !36
  %i.aje = getelementptr inbounds nuw [2 x i8], ptr %.0293.i, i64 %indvars.iv.i124
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 2 ; 2 uses
  %i.ajg = load i16, ptr %i.ajf, align 2, !tbaa !36 ; 3 uses
  %i.ajh = icmp slt i16 %i.ajg, 1
  br i1 %i.ajh, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.aji = zext nneg i16 %i.ajg to i32
  %.highbits.i.1 = lshr i32 %i.aji, %i.aiq
  %.not.i.1 = icmp eq i32 %.highbits.i.1, 0
  br i1 %.not.i.1, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ajj = zext nneg i16 %i.ajg to i64
  %i.ajk = getelementptr inbounds nuw [2 x i8], ptr %i.ait, i64 %i.ajj
  %i.ajl = load i16, ptr %i.ajk, align 2, !tbaa !36
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc
  %.sink.i.1 = phi i16 [ 0, %bb.cc ], [ %i.ajl, %bb.ce ], [ -1, %bb.cd ]
  store i16 %.sink.i.1, ptr %i.ajf, align 2, !tbaa !36
  %indvars.iv.next.i125.1 = add nuw nsw i64 %indvars.iv.i124, 2 ; 2 uses
  %niter584.next.1 = add i64 %niter584, 2         ; 2 uses
  %niter584.ncmp.1 = icmp eq i64 %niter584.next.1, %unroll_iter583
  br i1 %niter584.ncmp.1, label %._crit_edge.i127.unr-lcssa, label %.preheader.i.new, !llvm.loop !73

._crit_edge.i127.unr-lcssa:                       ; preds = %bb.cf
  br i1 %lcmp.mod581.not, label %._crit_edge.i127, label %.epil.preheader578

.epil.preheader578:                               ; preds = %._crit_edge.i127.unr-lcssa, %.preheader.i
  %indvars.iv.i124.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i125.1, %._crit_edge.i127.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod582)
  %i.ajm = getelementptr inbounds nuw [2 x i8], ptr %.0293.i, i64 %indvars.iv.i124.epil.init ; 2 uses
  %i.ajn = load i16, ptr %i.ajm, align 2, !tbaa !36 ; 3 uses
  %i.ajo = icmp slt i16 %i.ajn, 1
  br i1 %i.ajo, label %._crit_edge.i127.epilog-lcssa, label %bb.cg

bb.cg:                                            ; preds = %.epil.preheader578
  %i.ajp = zext nneg i16 %i.ajn to i32
  %.highbits.i.epil = lshr i32 %i.ajp, %i.aiq
  %.not.i.epil = icmp eq i32 %.highbits.i.epil, 0
  br i1 %.not.i.epil, label %bb.ch, label %._crit_edge.i127.epilog-lcssa

bb.ch:                                            ; preds = %bb.cg
  %i.ajq = zext nneg i16 %i.ajn to i64
  %i.ajr = getelementptr inbounds nuw [2 x i8], ptr %i.ait, i64 %i.ajq
  %i.ajs = load i16, ptr %i.ajr, align 2, !tbaa !36
  br label %._crit_edge.i127.epilog-lcssa

._crit_edge.i127.epilog-lcssa:                    ; preds = %bb.ch, %bb.cg, %.epil.preheader578
  %.sink.i.epil = phi i16 [ 0, %.epil.preheader578 ], [ %i.ajs, %bb.ch ], [ -1, %bb.cg ]
  store i16 %.sink.i.epil, ptr %i.ajm, align 2, !tbaa !36
  br label %._crit_edge.i127

._crit_edge.i127:                                 ; preds = %._crit_edge.i127.unr-lcssa, %._crit_edge.i127.epilog-lcssa
  %i.ajt = getelementptr [2 x i8], ptr %.0293.i, i64 %i.ais
  %i.aju = add nuw nsw i32 %.04.i, 1              ; 2 uses
  %exitcond7.not.i = icmp eq i32 %i.aju, %i.aio
  br i1 %exitcond7.not.i, label %postprocess_luma.exit, label %.preheader.i, !llvm.loop !74

postprocess_luma.exit:                            ; preds = %._crit_edge.i127, %bb.bz
  %i.ajv = ashr i32 %i.aim, 1
  %i.ajw = ashr i32 %i.aio, 1
  tail call fastcc void @postprocess_chroma(ptr noundef %1, i32 noundef %i.ajv, i32 noundef %i.ajw, i32 noundef %i.aiq)
  store i32 1, ptr %2, align 4, !tbaa !40
  br label %decode_plane.exit.thread

decode_plane.exit.thread:                         ; preds = %bytestream2_get_be16.exit.i, %bytestream2_get_be32.exit.i, %bb.as, %bb.ar, %bytestream2_get_be32.exit.thread.i, %bb.aj, %bb.ah, %bb.af, %bb.ad, %read_high_coeffs.exit.thread.i.i, %bytestream2_get_be32.exit102.thread, %bytestream2_get_be32.exit108.thread, %bb.u, %build_luma_lut.exit, %bytestream2_get_be32.exit102, %bytestream2_get_be32.exit104, %bytestream2_get_be32.exit108, %postprocess_luma.exit, %bb.t, %bb.m, %bb.d
  %.086 = phi i32 [ -1094995529, %bb.d ], [ %i.q, %postprocess_luma.exit ], [ -1094995529, %bytestream2_get_be32.exit108 ], [ -1094995529, %bytestream2_get_be32.exit104 ], [ -1094995529, %bb.m ], [ -1094995529, %bytestream2_get_be32.exit102 ], [ %i.cr, %bb.t ], [ %i.ci, %build_luma_lut.exit ], [ %i.da, %bb.u ], [ -1094995529, %bytestream2_get_be32.exit102.thread ], [ -1094995529, %bytestream2_get_be32.exit108.thread ], [ -1094995529, %bytestream2_get_be32.exit.i ], [ -1094995529, %bb.ar ], [ %.0119.i74.i.i, %read_high_coeffs.exit.thread.i.i ], [ -1094995529, %bytestream2_get_be32.exit.thread.i ], [ -1094995529, %bb.as ], [ -1094995529, %bb.aj ], [ %i.gs, %bb.ah ], [ %i.gj, %bb.af ], [ %i.gc, %bb.ad ], [ -1094995529, %bytestream2_get_be16.exit.i ]
  ret i32 %.086
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @pixlet_close(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @av_freep(ptr noundef nonnull %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @av_freep(ptr noundef nonnull %i.d) #12
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  tail call void @av_freep(ptr noundef nonnull %i.e) #12
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store <2 x i32> zeroinitializer, ptr %i.f, align 8, !tbaa !40
  ret i32 0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @free_buffers(ptr %.32.val) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.32.val, i64 72
  tail call void @av_freep(ptr noundef nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %.32.val, i64 80
  tail call void @av_freep(ptr noundef nonnull %i.b) #12
  %i.c = getelementptr inbounds nuw i8, ptr %.32.val, i64 88
  tail call void @av_freep(ptr noundef nonnull %i.c) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @init_decoder(ptr nofree captures(none) initializes((72, 96)) %.32.val) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.32.val, i64 68 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %i.c = sext i32 %i.b to i64
  %i.d = tail call ptr @av_malloc_array(i64 noundef %i.c, i64 noundef 2) #12
  %i.e = getelementptr inbounds nuw i8, ptr %.32.val, i64 72 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !51
  %i.f = load i32, ptr %i.a, align 4, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %.32.val, i64 64 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %. = tail call i32 @llvm.smax.i32(i32 %i.f, i32 %i.h)
  %i.i = add nsw i32 %., 16
  %i.j = sext i32 %i.i to i64
  %i.k = tail call ptr @av_malloc_array(i64 noundef %i.j, i64 noundef 2) #12
  %i.l = getelementptr inbounds nuw i8, ptr %.32.val, i64 80 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !51
  %i.m = load i32, ptr %i.g, align 8, !tbaa !38
  %i.n = ashr i32 %i.m, 4
  %i.o = sext i32 %i.n to i64
  %i.p = tail call ptr @av_malloc_array(i64 noundef %i.o, i64 noundef 2) #12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.32.val, i64 88
  store ptr %i.p, ptr %i.q, align 8, !tbaa !50
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !51
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !51
  %.not67 = icmp eq ptr %i.s, null
  %.not68 = icmp eq ptr %i.p, null
  %or.cond = select i1 %.not67, i1 true, i1 %.not68
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.t = load i32, ptr %i.g, align 8, !tbaa !38   ; 3 uses
  %i.u = load i32, ptr %i.a, align 4, !tbaa !39   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.32.val, i64 131424 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.32.val, i64 56
  %i.x = load i32, ptr %i.w, align 8, !tbaa !34   ; 3 uses
  %i.y = lshr i32 %i.t, 4                         ; 2 uses
  store i32 %i.y, ptr %i.v, align 8, !tbaa !45
  %i.z = lshr i32 %i.u, 4                         ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.32.val, i64 131428
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !46
  %i.ab = mul i32 %i.z, %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %.32.val, i64 131432
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !49
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.lhs.trunc = trunc i64 %indvars.iv to i8
  %i.ad = udiv i8 %.lhs.trunc, 3
  %.zext = zext nneg i8 %i.ad to i32
  %i.ae = sub nsw i32 %i.x, %.zext                ; 2 uses
  %i.af = lshr i32 %i.t, %i.ae                    ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ag = getelementptr inbounds nuw [20 x i8], ptr %i.v, i64 %indvars.iv.next ; 5 uses
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !45
  %i.ah = lshr i32 %i.u, %i.ae                    ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !46
  %i.aj = mul i32 %i.af, %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !49
  %i.al = trunc nuw nsw i64 %indvars.iv.next to i8
  %i.am = urem i8 %i.al, 3                        ; 2 uses
  %.not69 = icmp eq i8 %i.am, 2
  %i.an = select i1 %.not69, i32 0, i32 %i.af
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !47
  %.not70 = icmp eq i8 %i.am, 1
  %i.ap = select i1 %.not70, i32 0, i32 %i.ah
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !48
  %exitcond.not = icmp eq i64 %indvars.iv.next, 12
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !93

bb.d:                                             ; preds = %bb.c
  %i.ar = ashr i32 %i.t, 1                        ; 3 uses
  %i.as = ashr i32 %i.u, 1                        ; 3 uses
  %i.at = lshr i32 %i.ar, 4                       ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.32.val, i64 131684 ; 2 uses
  store i32 %i.at, ptr %i.au, align 4, !tbaa !45
  %i.av = lshr i32 %i.as, 4                       ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.32.val, i64 131688
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !46
  %i.ax = mul i32 %i.av, %i.at                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.32.val, i64 131692
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.1 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.1, %bb.e ] ; 2 uses
  %.lhs.trunc.1 = trunc i64 %indvars.iv.1 to i8
  %i.az = udiv i8 %.lhs.trunc.1, 3
  %.zext.1 = zext nneg i8 %i.az to i32
  %i.ba = sub nsw i32 %i.x, %.zext.1              ; 2 uses
  %i.bb = lshr i32 %i.ar, %i.ba                   ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 4 uses
  %i.bc = getelementptr inbounds nuw [20 x i8], ptr %i.au, i64 %indvars.iv.next.1 ; 5 uses
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !45
  %i.bd = lshr i32 %i.as, %i.ba                   ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !46
  %i.bf = mul i32 %i.bb, %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !49
  %i.bh = trunc nuw nsw i64 %indvars.iv.next.1 to i8
  %i.bi = urem i8 %i.bh, 3                        ; 2 uses
  %.not69.1 = icmp eq i8 %i.bi, 2
  %i.bj = select i1 %.not69.1, i32 0, i32 %i.bb
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !47
  %.not70.1 = icmp eq i8 %i.bi, 1
  %i.bl = select i1 %.not70.1, i32 0, i32 %i.bd
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !48
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, 12
  br i1 %exitcond.1.not, label %bb.f, label %bb.e, !llvm.loop !93

bb.f:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %.32.val, i64 131944 ; 2 uses
  store i32 %i.at, ptr %i.bn, align 8, !tbaa !45
  %i.bo = getelementptr inbounds nuw i8, ptr %.32.val, i64 131948
  store i32 %i.av, ptr %i.bo, align 4, !tbaa !46
  %i.bp = getelementptr inbounds nuw i8, ptr %.32.val, i64 131952
  store i32 %i.ax, ptr %i.bp, align 8, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.2 = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.2, %bb.g ] ; 2 uses
  %.lhs.trunc.2 = trunc i64 %indvars.iv.2 to i8
  %i.bq = udiv i8 %.lhs.trunc.2, 3
  %.zext.2 = zext nneg i8 %i.bq to i32
  %i.br = sub nsw i32 %i.x, %.zext.2              ; 2 uses
  %i.bs = lshr i32 %i.ar, %i.br                   ; 3 uses
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 4 uses
  %i.bt = getelementptr inbounds nuw [20 x i8], ptr %i.bn, i64 %indvars.iv.next.2 ; 5 uses
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !45
  %i.bu = lshr i32 %i.as, %i.br                   ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !46
  %i.bw = mul i32 %i.bs, %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !49
  %i.by = trunc nuw nsw i64 %indvars.iv.next.2 to i8
  %i.bz = urem i8 %i.by, 3                        ; 2 uses
  %.not69.2 = icmp eq i8 %i.bz, 2
  %i.ca = select i1 %.not69.2, i32 0, i32 %i.bs
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !47
  %.not70.2 = icmp eq i8 %i.bz, 1
  %i.cc = select i1 %.not70.2, i32 0, i32 %i.bu
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !48
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, 12
  br i1 %exitcond.2.not, label %.loopexit, label %bb.g, !llvm.loop !93

.loopexit:                                        ; preds = %bb.g, %bb.a, %bb.b
  %.0 = phi i32 [ -12, %bb.a ], [ -12, %bb.b ], [ 0, %bb.g ]
  ret i32 %.0
}

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @postprocess_chroma(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 -1073741824, 1073741824) %1, i32 noundef range(i32 -1073741824, 1073741824) %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40   ; 2 uses
  %i.c = sdiv i32 %i.b, 2
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %i.g = sdiv i32 %i.f, 2
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = add nsw i32 %3, -1
  %i.j = shl nuw i32 1, %i.i                      ; 3 uses
  %i.k = sub nsw i32 16, %3                       ; 3 uses
  %i.l = icmp sgt i32 %2, 0
  br i1 %i.l, label %.preheader.lr.ph, label %._crit_edge50.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.m = icmp sgt i32 %1, 0
  %notmask.i40 = shl nsw i32 -1, %3               ; 4 uses
  %i.n = xor i32 %notmask.i40, -1                 ; 3 uses
  br i1 %i.m, label %.preheader.preheader, label %._crit_edge50.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30   ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 5 uses
  %i.s = add nsw i32 %2, -1
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = mul nsw i64 %i.d, %i.t
  %i.v = add i64 %i.u, %wide.trip.count
  %i.w = shl i64 %i.v, 1
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.w
  %i.x = mul nsw i64 %i.h, %i.t
  %i.y = add i64 %i.x, %wide.trip.count
  %i.z = shl i64 %i.y, 1
  %scevgep55 = getelementptr i8, ptr %i.r, i64 %i.z
  %min.iters.check = icmp ult i32 %1, 8
  %bound0 = icmp ult ptr %i.p, %scevgep55
  %bound1 = icmp ult ptr %i.r, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.b, -1
  %i.aa = or i1 %found.conflict, %stride.check
  %stride.check56 = icmp slt i32 %i.f, -1
  %i.ab = or i1 %i.aa, %stride.check56
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert57 = insertelement <8 x i32> poison, i32 %notmask.i40, i64 0
  %broadcast.splat58 = shufflevector <8 x i32> %broadcast.splatinsert57, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert59 = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat60 = shufflevector <8 x i32> %broadcast.splatinsert59, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert61 = insertelement <8 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat62 = shufflevector <8 x i32> %broadcast.splatinsert61, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.049 = phi i32 [ %i.bp, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03648 = phi ptr [ %i.bo, %._crit_edge ], [ %i.r, %.preheader.preheader ] ; 3 uses
  %.03747 = phi ptr [ %i.bn, %._crit_edge ], [ %i.p, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ab
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.03747, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.ac, align 2, !tbaa !36, !alias.scope !100, !noalias !101
  %i.ad = sext <8 x i16> %wide.load to <8 x i32>
  %i.ae = add <8 x i32> %broadcast.splat, %i.ad   ; 3 uses
  %i.af = and <8 x i32> %i.ae, %broadcast.splat58
  %i.ag = icmp eq <8 x i32> %i.af, zeroinitializer
  %i.ah = icmp slt <8 x i32> %i.ae, zeroinitializer
  %i.ai = select <8 x i1> %i.ah, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat60
  %i.aj = select <8 x i1> %i.ag, <8 x i32> %i.ae, <8 x i32> %i.ai
  %i.ak = shl <8 x i32> %i.aj, %broadcast.splat62
  %i.al = trunc <8 x i32> %i.ak to <8 x i16>
  store <8 x i16> %i.al, ptr %i.ac, align 2, !tbaa !36, !alias.scope !100, !noalias !101
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %.03648, i64 %index ; 2 uses
  %wide.load63 = load <8 x i16>, ptr %i.am, align 2, !tbaa !36, !alias.scope !101
  %i.an = sext <8 x i16> %wide.load63 to <8 x i32>
  %i.ao = add <8 x i32> %broadcast.splat, %i.an   ; 3 uses
  %i.ap = and <8 x i32> %i.ao, %broadcast.splat58
  %i.aq = icmp eq <8 x i32> %i.ap, zeroinitializer
  %i.ar = icmp slt <8 x i32> %i.ao, zeroinitializer
  %i.as = select <8 x i1> %i.ar, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat60
  %i.at = select <8 x i1> %i.aq, <8 x i32> %i.ao, <8 x i32> %i.as
  %i.au = shl <8 x i32> %i.at, %broadcast.splat62
  %i.av = trunc <8 x i32> %i.au to <8 x i16>
  store <8 x i16> %i.av, ptr %i.am, align 2, !tbaa !36, !alias.scope !101
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.03747, i64 %indvars.iv ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !36
  %i.az = sext i16 %i.ay to i32
  %i.ba = add i32 %i.j, %i.az                     ; 3 uses
  %i.bb = and i32 %i.ba, %notmask.i40
  %.not.i41 = icmp eq i32 %i.bb, 0
  %isnotneg.inv.i42 = icmp slt i32 %i.ba, 0
  %i.bc = select i1 %isnotneg.inv.i42, i32 0, i32 %i.n
  %.0.i43 = select i1 %.not.i41, i32 %i.ba, i32 %i.bc
  %i.bd = shl i32 %.0.i43, %i.k
  %i.be = trunc i32 %i.bd to i16
  store i16 %i.be, ptr %i.ax, align 2, !tbaa !36
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.03648, i64 %indvars.iv ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !36
  %i.bh = sext i16 %i.bg to i32
  %i.bi = add i32 %i.j, %i.bh                     ; 3 uses
  %i.bj = and i32 %i.bi, %notmask.i40
  %.not.i = icmp eq i32 %i.bj, 0
  %isnotneg.inv.i = icmp slt i32 %i.bi, 0
  %i.bk = select i1 %isnotneg.inv.i, i32 0, i32 %i.n
  %.0.i = select i1 %.not.i, i32 %i.bi, i32 %i.bk
  %i.bl = shl i32 %.0.i, %i.k
  %i.bm = trunc i32 %i.bl to i16
  store i16 %i.bm, ptr %i.bf, align 2, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !98

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.bn = getelementptr [2 x i8], ptr %.03747, i64 %i.d
  %i.bo = getelementptr [2 x i8], ptr %.03648, i64 %i.h
  %i.bp = add nuw nsw i32 %.049, 1                ; 2 uses
  %exitcond52.not = icmp eq i32 %i.bp, %2
  br i1 %exitcond52.not, label %._crit_edge50.split, label %.preheader, !llvm.loop !99

._crit_edge50.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1094995529, 268435456) i32 @read_low_coeffs(ptr nofree captures(none) %.32.val, ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i64 noundef range(i64 -1073741824, 1073741824) %3) unnamed_addr #6 {
bb.a:
  %.not32 = icmp eq i32 %1, 0
  br i1 %.not32, label %.._crit_edge31_crit_edge, label %.lr.ph30

.._crit_edge31_crit_edge:                         ; preds = %bb.a
  %.phi.trans.insert = getelementptr i8, ptr %.32.val, i64 40
  %.val.i.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !43
  br label %._crit_edge31

.lr.ph30:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.32.val, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %.32.val, i64 40 ; 23 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !41   ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.32.val, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !42   ; 22 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph30, %.backedge
  %.028 = phi i32 [ 0, %.lr.ph30 ], [ %.0.be, %.backedge ]
  %.07827 = phi i64 [ 3, %.lr.ph30 ], [ %.078.be, %.backedge ] ; 3 uses
  %.07926 = phi i32 [ 0, %.lr.ph30 ], [ %.079.be, %.backedge ]
  %.08025 = phi i32 [ 0, %.lr.ph30 ], [ %.080.be, %.backedge ] ; 2 uses
  %.08324 = phi ptr [ %0, %.lr.ph30 ], [ %.083.be, %.backedge ] ; 2 uses
  %i.f = lshr i64 %.07827, 8
  %i.g = trunc i64 %i.f to i32
  %i.h = add i32 %i.g, 3                          ; 2 uses
  %.not.i10610 = icmp eq i32 %i.h, 0
  br i1 %.not.i10610, label %ff_clz_c.exit107, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.h, i1 true)
  %i.j = xor i32 %i.i, 31
  %i.k = tail call i32 @llvm.umin.i32(i32 %i.j, i32 14)
  br label %ff_clz_c.exit107

ff_clz_c.exit107:                                 ; preds = %.lr.ph.preheader, %bb.b
  %.0.i105.lcssa = phi i32 [ 14, %bb.b ], [ %i.k, %.lr.ph.preheader ] ; 5 uses
  %.promoted.i = load i32, ptr %i.b, align 8, !tbaa !43 ; 4 uses
  %i.l = lshr i32 %.promoted.i, 3
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !31
  %i.p = icmp slt i32 %.promoted.i, %i.e
  %i.q = zext i1 %i.p to i32
  %spec.select.i.i = add i32 %.promoted.i, %i.q   ; 6 uses
  %i.r = zext i8 %i.o to i32
  %i.s = and i32 %.promoted.i, 7
  store i32 %spec.select.i.i, ptr %i.b, align 8, !tbaa !43
  %i.t = lshr exact i32 128, %i.s
  %i.u = and i32 %i.t, %i.r
  %.not.i112 = icmp eq i32 %i.u, 0
  br i1 %.not.i112, label %get_unary.exit, label %bb.c

bb.c:                                             ; preds = %ff_clz_c.exit107
  %i.v = lshr i32 %spec.select.i.i, 3
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !31
  %i.z = icmp slt i32 %spec.select.i.i, %i.e
  %i.aa = zext i1 %i.z to i32
  %spec.select.i.i.1 = add i32 %spec.select.i.i, %i.aa ; 6 uses
  %i.ab = zext i8 %i.y to i32
  %i.ac = and i32 %spec.select.i.i, 7
  store i32 %spec.select.i.i.1, ptr %i.b, align 8, !tbaa !43
  %i.ad = lshr exact i32 128, %i.ac
  %i.ae = and i32 %i.ad, %i.ab
  %.not.i112.1 = icmp eq i32 %i.ae, 0
  br i1 %.not.i112.1, label %get_unary.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = lshr i32 %spec.select.i.i.1, 3
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !31
  %i.aj = icmp slt i32 %spec.select.i.i.1, %i.e
  %i.ak = zext i1 %i.aj to i32
  %spec.select.i.i.2 = add i32 %spec.select.i.i.1, %i.ak ; 6 uses
  %i.al = zext i8 %i.ai to i32
  %i.am = and i32 %spec.select.i.i.1, 7
  store i32 %spec.select.i.i.2, ptr %i.b, align 8, !tbaa !43
  %i.an = lshr exact i32 128, %i.am
  %i.ao = and i32 %i.an, %i.al
  %.not.i112.2 = icmp eq i32 %i.ao, 0
  br i1 %.not.i112.2, label %get_unary.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = lshr i32 %spec.select.i.i.2, 3
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !31
  %i.at = icmp slt i32 %spec.select.i.i.2, %i.e
  %i.au = zext i1 %i.at to i32
  %spec.select.i.i.3 = add i32 %spec.select.i.i.2, %i.au ; 6 uses
  %i.av = zext i8 %i.as to i32
  %i.aw = and i32 %spec.select.i.i.2, 7
  store i32 %spec.select.i.i.3, ptr %i.b, align 8, !tbaa !43
  %i.ax = lshr exact i32 128, %i.aw
  %i.ay = and i32 %i.ax, %i.av
  %.not.i112.3 = icmp eq i32 %i.ay, 0
  br i1 %.not.i112.3, label %get_unary.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = lshr i32 %spec.select.i.i.3, 3
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !31
  %i.bd = icmp slt i32 %spec.select.i.i.3, %i.e
  %i.be = zext i1 %i.bd to i32
  %spec.select.i.i.4 = add i32 %spec.select.i.i.3, %i.be ; 6 uses
  %i.bf = zext i8 %i.bc to i32
  %i.bg = and i32 %spec.select.i.i.3, 7
  store i32 %spec.select.i.i.4, ptr %i.b, align 8, !tbaa !43
  %i.bh = lshr exact i32 128, %i.bg
  %i.bi = and i32 %i.bh, %i.bf
  %.not.i112.4 = icmp eq i32 %i.bi, 0
  br i1 %.not.i112.4, label %get_unary.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = lshr i32 %spec.select.i.i.4, 3
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !31
  %i.bn = icmp slt i32 %spec.select.i.i.4, %i.e
  %i.bo = zext i1 %i.bn to i32
  %spec.select.i.i.5 = add i32 %spec.select.i.i.4, %i.bo ; 6 uses
  %i.bp = zext i8 %i.bm to i32
  %i.bq = and i32 %spec.select.i.i.4, 7
  store i32 %spec.select.i.i.5, ptr %i.b, align 8, !tbaa !43
  %i.br = lshr exact i32 128, %i.bq
  %i.bs = and i32 %i.br, %i.bp
  %.not.i112.5 = icmp eq i32 %i.bs, 0
  br i1 %.not.i112.5, label %get_unary.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = lshr i32 %spec.select.i.i.5, 3
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !31
  %i.bx = icmp slt i32 %spec.select.i.i.5, %i.e
  %i.by = zext i1 %i.bx to i32
  %spec.select.i.i.6 = add i32 %spec.select.i.i.5, %i.by ; 6 uses
  %i.bz = zext i8 %i.bw to i32
  %i.ca = and i32 %spec.select.i.i.5, 7
  store i32 %spec.select.i.i.6, ptr %i.b, align 8, !tbaa !43
  %i.cb = lshr exact i32 128, %i.ca
  %i.cc = and i32 %i.cb, %i.bz
  %.not.i112.6 = icmp eq i32 %i.cc, 0
  br i1 %.not.i112.6, label %get_unary.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cd = lshr i32 %spec.select.i.i.6, 3
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !31
  %i.ch = icmp slt i32 %spec.select.i.i.6, %i.e
  %i.ci = zext i1 %i.ch to i32
  %spec.select.i.i.7 = add i32 %spec.select.i.i.6, %i.ci ; 5 uses
  %i.cj = zext i8 %i.cg to i32
  %i.ck = and i32 %spec.select.i.i.6, 7
  store i32 %spec.select.i.i.7, ptr %i.b, align 8, !tbaa !43
  %i.cl = lshr exact i32 128, %i.ck
  %i.cm = and i32 %i.cl, %i.cj
  %.not.i112.7 = icmp eq i32 %i.cm, 0
  br i1 %.not.i112.7, label %get_unary.exit, label %get_unary.exit.thread.loopexit

get_unary.exit.thread.loopexit:                   ; preds = %bb.i
  %i.cn = lshr i32 %spec.select.i.i.7, 3
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 1, !tbaa !31
  %i.cr = tail call i32 @llvm.bswap.i32(i32 %i.cq)
  %i.cs = and i32 %spec.select.i.i.7, 7
  %i.ct = shl i32 %i.cr, %i.cs
  %i.cu = lshr i32 %i.ct, 16
  %i.cv = add i32 %spec.select.i.i.7, 16
  %i.cw = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.cv) ; 2 uses
  store i32 %i.cw, ptr %i.b, align 8, !tbaa !43
  br label %bb.l

get_unary.exit:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %ff_clz_c.exit107
  %.05.i.lcssa = phi i32 [ 0, %ff_clz_c.exit107 ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ] ; 4 uses
  %spec.select.i.i.lcssa = phi i32 [ %spec.select.i.i, %ff_clz_c.exit107 ], [ %spec.select.i.i.1, %bb.c ], [ %spec.select.i.i.2, %bb.d ], [ %spec.select.i.i.3, %bb.e ], [ %spec.select.i.i.4, %bb.f ], [ %spec.select.i.i.5, %bb.g ], [ %spec.select.i.i.6, %bb.h ], [ %spec.select.i.i.7, %bb.i ] ; 4 uses
  %i.cx = lshr i32 %spec.select.i.i.lcssa, 3
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 1, !tbaa !31
end_hunk_0
begin_hunk_1_@read_low_coeffs:bb.a
  %i.fg = lshr i32 %spec.select.i.i116, 3
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !31
  %i.fk = icmp slt i32 %spec.select.i.i116, %i.e
  %i.fl = zext i1 %i.fk to i32
  %spec.select.i.i116.1 = add i32 %spec.select.i.i116, %i.fl ; 6 uses
  %i.fm = zext i8 %i.fj to i32
  %i.fn = and i32 %spec.select.i.i116, 7
  store i32 %spec.select.i.i116.1, ptr %i.b, align 8, !tbaa !43
  %i.fo = lshr exact i32 128, %i.fn
  %i.fp = and i32 %i.fo, %i.fm
  %.not.i117.1 = icmp eq i32 %i.fp, 0
  br i1 %.not.i117.1, label %get_unary.exit120, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fq = lshr i32 %spec.select.i.i116.1, 3
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !31
  %i.fu = icmp slt i32 %spec.select.i.i116.1, %i.e
  %i.fv = zext i1 %i.fu to i32
  %spec.select.i.i116.2 = add i32 %spec.select.i.i116.1, %i.fv ; 6 uses
  %i.fw = zext i8 %i.ft to i32
  %i.fx = and i32 %spec.select.i.i116.1, 7
  store i32 %spec.select.i.i116.2, ptr %i.b, align 8, !tbaa !43
  %i.fy = lshr exact i32 128, %i.fx
  %i.fz = and i32 %i.fy, %i.fw
  %.not.i117.2 = icmp eq i32 %i.fz, 0
  br i1 %.not.i117.2, label %get_unary.exit120, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ga = lshr i32 %spec.select.i.i116.2, 3
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !31
  %i.ge = icmp slt i32 %spec.select.i.i116.2, %i.e
  %i.gf = zext i1 %i.ge to i32
  %spec.select.i.i116.3 = add i32 %spec.select.i.i116.2, %i.gf ; 6 uses
  %i.gg = zext i8 %i.gd to i32
  %i.gh = and i32 %spec.select.i.i116.2, 7
  store i32 %spec.select.i.i116.3, ptr %i.b, align 8, !tbaa !43
  %i.gi = lshr exact i32 128, %i.gh
  %i.gj = and i32 %i.gi, %i.gg
  %.not.i117.3 = icmp eq i32 %i.gj, 0
  br i1 %.not.i117.3, label %get_unary.exit120, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gk = lshr i32 %spec.select.i.i116.3, 3
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !31
  %i.go = icmp slt i32 %spec.select.i.i116.3, %i.e
  %i.gp = zext i1 %i.go to i32
  %spec.select.i.i116.4 = add i32 %spec.select.i.i116.3, %i.gp ; 6 uses
  %i.gq = zext i8 %i.gn to i32
  %i.gr = and i32 %spec.select.i.i116.3, 7
  store i32 %spec.select.i.i116.4, ptr %i.b, align 8, !tbaa !43
  %i.gs = lshr exact i32 128, %i.gr
  %i.gt = and i32 %i.gs, %i.gq
  %.not.i117.4 = icmp eq i32 %i.gt, 0
  br i1 %.not.i117.4, label %get_unary.exit120, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gu = lshr i32 %spec.select.i.i116.4, 3
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !31
  %i.gy = icmp slt i32 %spec.select.i.i116.4, %i.e
  %i.gz = zext i1 %i.gy to i32
  %spec.select.i.i116.5 = add i32 %spec.select.i.i116.4, %i.gz ; 6 uses
  %i.ha = zext i8 %i.gx to i32
  %i.hb = and i32 %spec.select.i.i116.4, 7
  store i32 %spec.select.i.i116.5, ptr %i.b, align 8, !tbaa !43
  %i.hc = lshr exact i32 128, %i.hb
  %i.hd = and i32 %i.hc, %i.ha
  %.not.i117.5 = icmp eq i32 %i.hd, 0
  br i1 %.not.i117.5, label %get_unary.exit120, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.he = lshr i32 %spec.select.i.i116.5, 3
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !31
  %i.hi = icmp slt i32 %spec.select.i.i116.5, %i.e
  %i.hj = zext i1 %i.hi to i32
  %spec.select.i.i116.6 = add i32 %spec.select.i.i116.5, %i.hj ; 6 uses
  %i.hk = zext i8 %i.hh to i32
  %i.hl = and i32 %spec.select.i.i116.5, 7
  store i32 %spec.select.i.i116.6, ptr %i.b, align 8, !tbaa !43
  %i.hm = lshr exact i32 128, %i.hl
  %i.hn = and i32 %i.hm, %i.hk
  %.not.i117.6 = icmp eq i32 %i.hn, 0
  br i1 %.not.i117.6, label %get_unary.exit120, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ho = lshr i32 %spec.select.i.i116.6, 3
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !31
  %i.hs = icmp slt i32 %spec.select.i.i116.6, %i.e
  %i.ht = zext i1 %i.hs to i32
  %spec.select.i.i116.7 = add i32 %spec.select.i.i116.6, %i.ht ; 5 uses
  %i.hu = zext i8 %i.hr to i32
  %i.hv = and i32 %spec.select.i.i116.6, 7
  store i32 %spec.select.i.i116.7, ptr %i.b, align 8, !tbaa !43
  %i.hw = lshr exact i32 128, %i.hv
  %i.hx = and i32 %i.hw, %i.hu
  %.not.i117.7 = icmp eq i32 %i.hx, 0
  br i1 %.not.i117.7, label %get_unary.exit120, label %get_unary.exit120.thread.loopexit

get_unary.exit120.thread.loopexit:                ; preds = %bb.u
  %i.hy = lshr i32 %spec.select.i.i116.7, 3
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 1, !tbaa !31
  %i.ic = tail call i32 @llvm.bswap.i32(i32 %i.ib)
  %i.id = and i32 %spec.select.i.i116.7, 7
  %i.ie = shl i32 %i.ic, %i.id
  %i.if = lshr i32 %i.ie, 16
  %i.ig = add i32 %spec.select.i.i116.7, 16
  %i.ih = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.ig) ; 2 uses
  store i32 %i.ih, ptr %i.b, align 8, !tbaa !43
  br label %bb.x

get_unary.exit120:                                ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %ff_clz_c.exit
  %.05.i115.lcssa = phi i32 [ 0, %ff_clz_c.exit ], [ 1, %bb.o ], [ 2, %bb.p ], [ 3, %bb.q ], [ 4, %bb.r ], [ 5, %bb.s ], [ 6, %bb.t ], [ 7, %bb.u ] ; 2 uses
  %spec.select.i.i116.lcssa = phi i32 [ %spec.select.i.i116, %ff_clz_c.exit ], [ %spec.select.i.i116.1, %bb.o ], [ %spec.select.i.i116.2, %bb.p ], [ %spec.select.i.i116.3, %bb.q ], [ %spec.select.i.i116.4, %bb.r ], [ %spec.select.i.i116.5, %bb.s ], [ %spec.select.i.i116.6, %bb.t ], [ %spec.select.i.i116.7, %bb.u ] ; 4 uses
  %i.ii = lshr i32 %spec.select.i.i116.lcssa, 3
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 1, !tbaa !31
  %i.im = tail call i32 @llvm.bswap.i32(i32 %i.il)
  %i.in = and i32 %spec.select.i.i116.lcssa, 7
  %i.io = shl i32 %i.im, %i.in
  %i.ip = sub i32 56, %i.es
  %i.iq = lshr i32 %i.io, %i.ip                   ; 2 uses
  %i.ir = icmp ugt i32 %i.iq, 1
  br i1 %i.ir, label %bb.v, label %bb.w

bb.v:                                             ; preds = %get_unary.exit120
  %i.is = add i32 %spec.select.i.i116.lcssa, %i.et
  %i.it = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.is) ; 2 uses
  store i32 %i.it, ptr %i.b, align 8, !tbaa !43
  %i.iu = mul nuw nsw i32 %.05.i115.lcssa, %i.ev
  %i.iv = add nsw i32 %i.iu, -1
  %i.iw = add i32 %i.iv, %i.iq
  br label %bb.x

bb.w:                                             ; preds = %get_unary.exit120
  %i.ix = add i32 %i.es, -25
  %i.iy = add i32 %i.ix, %spec.select.i.i116.lcssa
  %i.iz = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.iy) ; 2 uses
  store i32 %i.iz, ptr %i.b, align 8, !tbaa !43
  %i.ja = mul nuw nsw i32 %.05.i115.lcssa, %i.ev
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %get_unary.exit120.thread.loopexit
  %.val.i42 = phi i32 [ %i.ih, %get_unary.exit120.thread.loopexit ], [ %i.it, %bb.v ], [ %i.iz, %bb.w ]
  %.077 = phi i32 [ %i.if, %get_unary.exit120.thread.loopexit ], [ %i.iw, %bb.v ], [ %i.ja, %bb.w ] ; 8 uses
  %i.jb = sub nuw i32 %1, %i.ec
  %i.jc = icmp ugt i32 %.077, %i.jb
  br i1 %i.jc, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jd = add i32 %.077, %i.ec
  %.not33 = icmp eq i32 %.077, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph21.preheader

.lr.ph21.preheader:                               ; preds = %bb.y
  %xtraiter = and i32 %.077, 1
  %i.je = icmp eq i32 %.077, 1
  br i1 %i.je, label %.lr.ph21.epil.preheader, label %.lr.ph21.preheader.new

.lr.ph21.preheader.new:                           ; preds = %.lr.ph21.preheader
  %unroll_iter = and i32 %.077, -2
  br label %.lr.ph21

.lr.ph21:                                         ; preds = %.lr.ph21, %.lr.ph21.preheader.new
  %.220 = phi i32 [ %spec.select101, %.lr.ph21.preheader.new ], [ %spec.select103.1, %.lr.ph21 ] ; 2 uses
  %.28518 = phi ptr [ %spec.select100, %.lr.ph21.preheader.new ], [ %spec.select102.1, %.lr.ph21 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph21.preheader.new ], [ %niter.next.1, %.lr.ph21 ]
  %i.jf = add i32 %.220, 1                        ; 2 uses
  %i.jg = zext i32 %.220 to i64
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %.28518, i64 %i.jg
  store i16 0, ptr %i.jh, align 2, !tbaa !36
  %i.ji = icmp eq i32 %i.jf, %2                   ; 2 uses
  %spec.select102.idx = select i1 %i.ji, i64 %3, i64 0
  %spec.select102 = getelementptr inbounds [2 x i8], ptr %.28518, i64 %spec.select102.idx ; 2 uses
  %spec.select103 = select i1 %i.ji, i32 0, i32 %i.jf ; 2 uses
  %i.jj = add i32 %spec.select103, 1              ; 2 uses
  %i.jk = zext i32 %spec.select103 to i64
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %spec.select102, i64 %i.jk
  store i16 0, ptr %i.jl, align 2, !tbaa !36
  %i.jm = icmp eq i32 %i.jj, %2                   ; 2 uses
  %spec.select102.idx.1 = select i1 %i.jm, i64 %3, i64 0
  %spec.select102.1 = getelementptr inbounds [2 x i8], ptr %spec.select102, i64 %spec.select102.idx.1 ; 3 uses
  %spec.select103.1 = select i1 %i.jm, i32 0, i32 %i.jj ; 3 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph21, !llvm.loop !104

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph21
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph21.epil.preheader

.lr.ph21.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph21.preheader
  %.220.epil.init = phi i32 [ %spec.select101, %.lr.ph21.preheader ], [ %spec.select103.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.28518.epil.init = phi ptr [ %spec.select100, %.lr.ph21.preheader ], [ %spec.select102.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod53 = trunc i32 %.077 to i1
  tail call void @llvm.assume(i1 %lcmp.mod53)
  %i.jn = add i32 %.220.epil.init, 1              ; 2 uses
  %i.jo = zext i32 %.220.epil.init to i64
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %.28518.epil.init, i64 %i.jo
  store i16 0, ptr %i.jp, align 2, !tbaa !36
  %i.jq = icmp eq i32 %i.jn, %2                   ; 2 uses
  %spec.select102.idx.epil = select i1 %i.jq, i64 %3, i64 0
  %spec.select102.epil = getelementptr inbounds [2 x i8], ptr %.28518.epil.init, i64 %spec.select102.idx.epil
  %spec.select103.epil = select i1 %i.jq, i32 0, i32 %i.jn
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph21.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.y
  %.285.lcssa = phi ptr [ %spec.select100, %bb.y ], [ %spec.select102.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select102.epil, %.lr.ph21.epil.preheader ]
  %.2.lcssa = phi i32 [ %spec.select101, %bb.y ], [ %spec.select103.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select103.epil, %.lr.ph21.epil.preheader ]
  %i.jr = icmp slt i32 %.077, 65535
  %i.js = zext i1 %i.jr to i32
  br label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.l
  %.val.i41 = phi i32 [ %.val.i42, %._crit_edge ], [ %.promoted.i113, %bb.l ]
  %.083.be = phi ptr [ %.285.lcssa, %._crit_edge ], [ %spec.select100, %bb.l ]
  %.080.be = phi i32 [ %.2.lcssa, %._crit_edge ], [ %spec.select101, %bb.l ]
  %.079.be = phi i32 [ %i.jd, %._crit_edge ], [ %i.ec, %bb.l ] ; 2 uses
  %.078.be = phi i64 [ 0, %._crit_edge ], [ %i.ej, %bb.l ]
  %.0.be = phi i32 [ %i.js, %._crit_edge ], [ 0, %bb.l ]
  %i.jt = icmp ult i32 %.079.be, %1
  br i1 %i.jt, label %bb.b, label %._crit_edge31, !llvm.loop !105

._crit_edge31:                                    ; preds = %.backedge, %.._crit_edge31_crit_edge
  %.val.i = phi i32 [ %.val.i.pre, %.._crit_edge31_crit_edge ], [ %.val.i41, %.backedge ] ; 3 uses
  %i.ju = sub nsw i32 0, %.val.i
  %i.jv = and i32 %i.ju, 7                        ; 2 uses
  %.not.i121 = icmp eq i32 %i.jv, 0
  br i1 %.not.i121, label %align_get_bits.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge31
  %i.jw = getelementptr i8, ptr %.32.val, i64 40
  %i.jx = getelementptr inbounds nuw i8, ptr %.32.val, i64 48
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !42
  %i.jz = add i32 %i.jv, %.val.i
  %i.ka = tail call i32 @llvm.umin.i32(i32 %i.jy, i32 %i.jz) ; 2 uses
  store i32 %i.ka, ptr %i.jw, align 8, !tbaa !43
  br label %align_get_bits.exit

align_get_bits.exit:                              ; preds = %._crit_edge31, %bb.z
  %.val111 = phi i32 [ %.val.i, %._crit_edge31 ], [ %i.ka, %bb.z ]
  %i.kb = ashr i32 %.val111, 3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.x, %align_get_bits.exit
  %.082 = phi i32 [ %i.kb, %align_get_bits.exit ], [ -1094995529, %bb.x ]
  ret i32 %.082
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

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
!29 = !{!"GetByteContext", !14, i64 0, !14, i64 8, !14, i64 16}
!30 = !{!14, !14, i64 0}
!31 = !{!5, !5, i64 0}
!32 = !{!"GetBitContext", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!33 = !{!"PixletContext", !10, i64 0, !29, i64 8, !32, i64 32, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !5, i64 72, !17, i64 88, !5, i64 96, !5, i64 352, !5, i64 131424}
!34 = !{!33, !6, i64 56}
!35 = !{!"short", !5, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!33, !6, i64 64}
!39 = !{!33, !6, i64 68}
!40 = !{!6, !6, i64 0}
!41 = !{!32, !14, i64 0}
!42 = !{!32, !6, i64 16}
!43 = !{!32, !6, i64 8}
!44 = !{!"SubBand", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!45 = !{!44, !6, i64 0}
!46 = !{!44, !6, i64 4}
!47 = !{!44, !6, i64 12}
!48 = !{!44, !6, i64 16}
!49 = !{!44, !6, i64 8}
!50 = !{!33, !17, i64 88}
!51 = !{!17, !17, i64 0}
!52 = !{!27, !6, i64 136}
!53 = !{!27, !6, i64 156}
!54 = distinct !{!54, !37}
!55 = distinct !{!55, !37}
!56 = distinct !{!56, !37}
!57 = distinct !{!57, !37}
!58 = distinct !{!58, !37}
!59 = distinct !{!59, !37}
!60 = distinct !{!60, !37}
!61 = distinct !{!61, !37}
!62 = distinct !{!62, !91}
!63 = distinct !{!63, !37}
!64 = distinct !{!64, !37}
!65 = distinct !{!65, !37}
!66 = distinct !{!66, !37}
!67 = distinct !{!67, !91}
!68 = distinct !{!68, !37}
!69 = distinct !{!69, !91}
!70 = distinct !{!70, !37}
!71 = distinct !{!71, !37}
!72 = distinct !{!72, !37}
!73 = distinct !{!73, !37}
!74 = distinct !{!74, !37}
!75 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!76 = !{!75, !14, i64 24}
!77 = !{!75, !6, i64 32}
!78 = !{!29, !14, i64 0}
!79 = !{!29, !14, i64 16}
!80 = !{!29, !14, i64 8}
!81 = !{!33, !6, i64 60}
!82 = !{!27, !6, i64 112}
!83 = !{!27, !6, i64 116}
!84 = !{!"p2 omnipotent char", !25, i64 0}
!85 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!86 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!87 = !{!"AVFrame", !5, i64 0, !5, i64 64, !84, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !85, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !86, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!88 = !{!87, !6, i64 280}
!89 = !{!13, !13, i64 0}
!90 = !{!32, !6, i64 12}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = !{!27, !6, i64 64}
!93 = distinct !{!93, !37}
!94 = distinct !{!94, !"LVerDomain"}
!95 = distinct !{!95, !94}
!96 = distinct !{!96, !94}
!97 = distinct !{!97, !37, !102, !103}
!98 = distinct !{!98, !37, !102}
!99 = distinct !{!99, !37}
!100 = !{!95}
!101 = !{!96}
!102 = !{!"llvm.loop.isvectorized", i32 1}
!103 = !{!"llvm.loop.unroll.runtime.disable"}
!104 = distinct !{!104, !37}
!105 = distinct !{!105, !37}
end_hunk_1
