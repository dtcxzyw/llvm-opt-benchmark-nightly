Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/wcmv?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"wcmv\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"WinCAM Motion Video\00", align 1
@ff_wcmv_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 232, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 524424, ptr null, ptr null, ptr null, ptr @decode_init, %union.anon { ptr @decode_frame }, ptr @decode_close, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Unsupported bits_per_coded_sample: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Inflate reset error: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Inflate failed with return code: %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37   ; 3 uses
  switch i32 %i.d, label %bb.d [
    i32 16, label %bb.e
    i32 24, label %bb.b
    i32 32, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %i.d) #7
  br label %bb.g

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i32 [ 28, %bb.c ], [ 3, %bb.b ], [ 37, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink, ptr %i.e, align 8, !tbaa !29
  %i.f = lshr i32 %i.d, 3
  store i32 %i.f, ptr %i.b, align 8, !tbaa !35
  %i.g = tail call ptr @av_frame_alloc() #7       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.g, ptr %i.h, align 8, !tbaa !36
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = tail call i32 @ff_inflate_init(ptr noundef nonnull %i.i, ptr noundef nonnull %0) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.0 = phi i32 [ -1163346256, %bb.d ], [ %i.j, %bb.f ], [ -12, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !35   ; 10 uses
  %i.f = tail call i32 @inflateReset(ptr noundef nonnull %i.d) #7 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.f) #7
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !43   ; 4 uses
  %i.k = icmp ne ptr %i.h, null
  %i.l = icmp sgt i32 %i.j, -1
  %or.cond.i = and i1 %i.k, %i.l
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 141) #7
  tail call void @abort() #8
  unreachable

bytestream2_init.exit:                            ; preds = %bb.c
  %i.m = zext nneg i32 %i.j to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m ; 17 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 27 uses
  %i.p = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.q = icmp samesign ult i32 %i.j, 2
  br i1 %i.q, label %bytestream2_get_le16.exit228, label %bb.e

bb.e:                                             ; preds = %bytestream2_init.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.s = load i16, ptr %i.h, align 1, !tbaa !44
  %i.t = zext i16 %i.s to i32
  br label %bytestream2_get_le16.exit228

bytestream2_get_le16.exit228:                     ; preds = %bytestream2_init.exit, %bb.e
  %.sroa.0248.15 = phi ptr [ %i.r, %bb.e ], [ %i.n, %bytestream2_init.exit ] ; 10 uses
  %.0.i227 = phi i32 [ %i.t, %bb.e ], [ 0, %bytestream2_init.exit ] ; 13 uses
  %.not200 = icmp eq i32 %.0.i227, 0              ; 3 uses
  %spec.select = zext i1 %.not200 to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 6 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.w = tail call i32 @ff_reget_buffer(ptr noundef nonnull %0, ptr noundef %i.v, i32 noundef %spec.select) #7 ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bytestream2_get_le16.exit228
  %i.y = icmp samesign ugt i32 %.0.i227, 5
  br i1 %i.y, label %bb.g, label %bb.ad

bb.g:                                             ; preds = %bb.f
  %i.z = shl nuw nsw i32 %.0.i227, 3
  %i.aa = icmp samesign ugt i32 %.0.i227, 8191
  br i1 %i.aa, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ab = ptrtoint ptr %.sroa.0248.15 to i64
  %i.ac = sub i64 %i.o, %i.ab
  %i.ad = icmp slt i64 %i.ac, 3
  br i1 %i.ad, label %bytestream2_get_le24.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0248.15, i64 3
  %i.af = getelementptr i8, ptr %.sroa.0248.15, i64 1
  %i.ag = load i16, ptr %i.af, align 1
  %i.ah = zext i16 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 8
  %i.aj = load i8, ptr %.sroa.0248.15, align 1, !tbaa !44
  %i.ak = zext i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  br label %bytestream2_get_le24.exit

bb.j:                                             ; preds = %bb.g
  %i.am = icmp samesign ugt i32 %.0.i227, 31
  %i.an = ptrtoint ptr %.sroa.0248.15 to i64
  %i.ao = sub i64 %i.o, %i.an                     ; 2 uses
  br i1 %i.am, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ap = icmp slt i64 %i.ao, 2
  br i1 %i.ap, label %bytestream2_get_le24.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0248.15, i64 2
  %i.ar = load i16, ptr %.sroa.0248.15, align 1, !tbaa !44
  %i.as = zext i16 %i.ar to i32
  br label %bytestream2_get_le24.exit

bb.m:                                             ; preds = %bb.j
  %i.at = icmp slt i64 %i.ao, 1
  br i1 %i.at, label %bytestream2_get_le24.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0248.15, i64 1
  %i.av = load i8, ptr %.sroa.0248.15, align 1, !tbaa !44
  %i.aw = zext i8 %i.av to i32
  br label %bytestream2_get_le24.exit

bytestream2_get_le24.exit:                        ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  %.sroa.0248.0 = phi ptr [ %i.n, %bb.k ], [ %i.n, %bb.h ], [ %i.ae, %bb.i ], [ %i.aq, %bb.l ], [ %i.au, %bb.n ], [ %i.n, %bb.m ] ; 2 uses
  %.0165 = phi i32 [ 0, %bb.k ], [ 0, %bb.h ], [ %i.al, %bb.i ], [ %i.as, %bb.l ], [ %i.aw, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %i.ax = ptrtoint ptr %.sroa.0248.0 to i64       ; 2 uses
  %i.ay = sub i64 %i.ax, %i.p                     ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = load i32, ptr %i.i, align 8, !tbaa !43
  %i.bb = sub nsw i32 %i.ba, %i.az
  %i.bc = icmp sgt i32 %.0165, %i.bb
  br i1 %i.bc, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bytestream2_get_le24.exit
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !42
  %sext335 = shl i64 %i.ay, 32
  %i.be = ashr exact i64 %sext335, 32
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.be
  store ptr %i.bf, ptr %i.d, align 8, !tbaa !45
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i32 %.0165, ptr %i.bg, align 8, !tbaa !46
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 524288, ptr %i.bj, align 8, !tbaa !48
  %i.bk = tail call i32 @inflate(ptr noundef nonnull %i.d, i32 noundef 4) #7 ; 2 uses
  %.not202 = icmp eq i32 %i.bk, 1
  br i1 %.not202, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %i.bk) #7
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.bl = tail call i32 @inflateReset(ptr noundef nonnull %i.d) #7 ; 2 uses
  %.not203 = icmp eq i32 %i.bl, 0
  br i1 %.not203, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.bl) #7
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.bm = sub i64 %i.o, %i.ax
  %i.bn = zext nneg i32 %.0165 to i64
  %..i238 = tail call i64 @llvm.smin.i64(i64 %i.bm, i64 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0248.0, i64 %..i238 ; 3 uses
  %i.bp = zext nneg i32 %i.z to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bp ; 4 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 5 uses
  %i.bs = sext i32 %i.e to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.w
  %.0164349 = phi i32 [ 0, %bb.s ], [ %i.cr, %bb.w ]
  %.0166348 = phi i32 [ 0, %bb.s ], [ %i.cq, %bb.w ] ; 2 uses
  %.sroa.0.0347 = phi ptr [ %i.bh, %bb.s ], [ %.sroa.0.1, %bb.w ] ; 2 uses
  %i.bt = ptrtoint ptr %.sroa.0.0347 to i64
  %i.bu = sub i64 %i.br, %i.bt
  %..i237 = tail call i64 @llvm.smin.i64(i64 %i.bu, i64 4)
  %i.bv = getelementptr inbounds i8, ptr %.sroa.0.0347, i64 %..i237 ; 3 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.br, %i.bw
  %i.by = icmp slt i64 %i.bx, 2
  br i1 %i.by, label %bytestream2_get_le16.exit224, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 2 ; 2 uses
  %i.ca = load i16, ptr %i.bv, align 1, !tbaa !44
  %i.cb = zext i16 %i.ca to i32
  %.pre370 = ptrtoint ptr %i.bz to i64
  br label %bytestream2_get_le16.exit224

bytestream2_get_le16.exit224:                     ; preds = %bb.t, %bb.u
  %.pre-phi = phi i64 [ %i.br, %bb.t ], [ %.pre370, %bb.u ]
  %.sroa.0.2 = phi ptr [ %i.bq, %bb.t ], [ %i.bz, %bb.u ] ; 2 uses
  %.0.i223 = phi i32 [ 0, %bb.t ], [ %i.cb, %bb.u ] ; 2 uses
  %i.cc = sub i64 %i.br, %.pre-phi
  %i.cd = icmp slt i64 %i.cc, 2
  br i1 %i.cd, label %bytestream2_get_le16.exit222, label %bb.v

bb.v:                                             ; preds = %bytestream2_get_le16.exit224
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 2
  %i.cf = load i16, ptr %.sroa.0.2, align 1, !tbaa !44
  %i.cg = zext i16 %i.cf to i32
  br label %bytestream2_get_le16.exit222

bytestream2_get_le16.exit222:                     ; preds = %bytestream2_get_le16.exit224, %bb.v
  %.sroa.0.1 = phi ptr [ %i.ce, %bb.v ], [ %i.bq, %bytestream2_get_le16.exit224 ]
  %.0.i221 = phi i32 [ %i.cg, %bb.v ], [ 0, %bytestream2_get_le16.exit224 ] ; 2 uses
  %i.ch = sext i32 %.0166348 to i64
  %i.ci = zext nneg i32 %.0.i223 to i64
  %i.cj = mul nsw i64 %i.ci, %i.bs
  %i.ck = zext nneg i32 %.0.i221 to i64
  %i.cl = mul nsw i64 %i.cj, %i.ck
  %i.cm = add nsw i64 %i.cl, %i.ch
  %i.cn = icmp slt i64 %i.cm, 2147483648
  br i1 %i.cn, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bytestream2_get_le16.exit222
  %i.co = mul nsw i32 %.0.i223, %i.e
  %i.cp = mul nsw i32 %i.co, %.0.i221
  %i.cq = add nsw i32 %i.cp, %.0166348            ; 3 uses
  %i.cr = add nuw nsw i32 %.0164349, 1            ; 2 uses
  %exitcond367.not = icmp eq i32 %i.cr, %.0.i227
  br i1 %exitcond367.not, label %bb.x, label %bb.t, !llvm.loop !38

bb.x:                                             ; preds = %bb.w
  %i.cs = icmp sgt i32 %i.cq, 65534
  br i1 %i.cs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ct = ptrtoint ptr %i.bo to i64
  %i.cu = sub i64 %i.o, %i.ct
  %..i236 = tail call i64 @llvm.smin.i64(i64 %i.cu, i64 3)
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.cv = icmp sgt i32 %i.cq, 254
  %i.cw = ptrtoint ptr %i.bo to i64
  %i.cx = sub i64 %i.o, %i.cw                     ; 2 uses
  br i1 %i.cv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %..i235 = tail call i64 @llvm.smin.i64(i64 %i.cx, i64 2)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %..i234 = tail call i64 @llvm.smin.i64(i64 %i.cx, i64 1)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.ab, %bb.aa
  %..i236.sink = phi i64 [ %..i236, %bb.y ], [ %..i234, %bb.ab ], [ %..i235, %bb.aa ]
  %i.cy = getelementptr inbounds i8, ptr %i.bo, i64 %..i236.sink
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = sub i64 %i.cz, %i.p                     ; 2 uses
  %i.db = trunc i64 %i.da to i32
  %i.dc = load ptr, ptr %i.g, align 8, !tbaa !42
  %sext336 = shl i64 %i.da, 32
  %i.dd = ashr exact i64 %sext336, 32
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 %i.dd
  store ptr %i.de, ptr %i.d, align 8, !tbaa !45
  %i.df = load i32, ptr %i.i, align 8, !tbaa !43
  %i.dg = sub nsw i32 %i.df, %i.db
  store i32 %i.dg, ptr %i.bg, align 8, !tbaa !46
  br label %bb.be

bb.ad:                                            ; preds = %bb.f
  br i1 %.not200, label %bb.be, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = tail call i32 @llvm.umin.i32(i32 %i.j, i32 2)
  %i.di = zext nneg i32 %i.dh to i64              ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.di ; 2 uses
  %i.dk = sext i32 %i.e to i64                    ; 5 uses
  %gepdiff = sub nsw i64 %i.m, %i.di              ; 2 uses
  %..i233 = tail call i64 @llvm.smin.i64(i64 %gepdiff, i64 4) ; 2 uses
  %gepdiff420 = sub i64 %gepdiff, %..i233
  %i.dl = icmp slt i64 %gepdiff420, 2
  br i1 %i.dl, label %bytestream2_get_le16.exit220, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dm = getelementptr inbounds i8, ptr %i.dj, i64 %..i233 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2 ; 2 uses
  %i.do = load i16, ptr %i.dm, align 1, !tbaa !44
  %i.dp = zext i16 %i.do to i32
  %.pre378 = ptrtoint ptr %i.dn to i64
  br label %bytestream2_get_le16.exit220

bytestream2_get_le16.exit220:                     ; preds = %bb.ae, %bb.af
  %.pre-phi379 = phi i64 [ %i.o, %bb.ae ], [ %.pre378, %bb.af ]
  %.sroa.0248.13 = phi ptr [ %i.n, %bb.ae ], [ %i.dn, %bb.af ] ; 2 uses
  %.0.i219 = phi i32 [ 0, %bb.ae ], [ %i.dp, %bb.af ] ; 2 uses
  %i.dq = sub i64 %i.o, %.pre-phi379
  %i.dr = icmp slt i64 %i.dq, 2
  br i1 %i.dr, label %bytestream2_get_le16.exit218, label %bb.ag

bb.ag:                                            ; preds = %bytestream2_get_le16.exit220
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0248.13, i64 2
  %i.dt = load i16, ptr %.sroa.0248.13, align 1, !tbaa !44
  %i.du = zext i16 %i.dt to i32
  br label %bytestream2_get_le16.exit218

bytestream2_get_le16.exit218:                     ; preds = %bytestream2_get_le16.exit220, %bb.ag
  %.sroa.0248.12 = phi ptr [ %i.ds, %bb.ag ], [ %i.n, %bytestream2_get_le16.exit220 ] ; 3 uses
  %.0.i217 = phi i32 [ %i.du, %bb.ag ], [ 0, %bytestream2_get_le16.exit220 ] ; 2 uses
  %i.dv = zext nneg i32 %.0.i219 to i64
  %i.dw = mul nsw i64 %i.dv, %i.dk
  %i.dx = zext nneg i32 %.0.i217 to i64
  %i.dy = mul nsw i64 %i.dw, %i.dx
  %i.dz = icmp slt i64 %i.dy, 2147483648
  br i1 %i.dz, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bytestream2_get_le16.exit218
  %i.ea = mul nsw i32 %.0.i219, %i.e
  %i.eb = mul nsw i32 %i.ea, %.0.i217             ; 3 uses
  %exitcond.not = icmp eq i32 %.0.i227, 1
  br i1 %exitcond.not, label %bb.ay, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ec = ptrtoint ptr %.sroa.0248.12 to i64
  %i.ed = sub i64 %i.o, %i.ec
  %..i233.1 = tail call i64 @llvm.smin.i64(i64 %i.ed, i64 4)
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0248.12, i64 %..i233.1 ; 3 uses
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = sub i64 %i.o, %i.ef
  %i.eh = icmp slt i64 %i.eg, 2
  br i1 %i.eh, label %bytestream2_get_le16.exit220.1, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 2 ; 2 uses
  %i.ej = load i16, ptr %i.ee, align 1, !tbaa !44
  %i.ek = zext i16 %i.ej to i32
  %.pre378.1 = ptrtoint ptr %i.ei to i64
  br label %bytestream2_get_le16.exit220.1

bytestream2_get_le16.exit220.1:                   ; preds = %bb.aj, %bb.ai
  %.pre-phi379.1 = phi i64 [ %i.o, %bb.ai ], [ %.pre378.1, %bb.aj ]
  %.sroa.0248.13.1 = phi ptr [ %i.n, %bb.ai ], [ %i.ei, %bb.aj ] ; 2 uses
  %.0.i219.1 = phi i32 [ 0, %bb.ai ], [ %i.ek, %bb.aj ] ; 2 uses
  %i.el = sub i64 %i.o, %.pre-phi379.1
  %i.em = icmp slt i64 %i.el, 2
  br i1 %i.em, label %bytestream2_get_le16.exit218.1, label %bb.ak

bb.ak:                                            ; preds = %bytestream2_get_le16.exit220.1
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0248.13.1, i64 2
  %i.eo = load i16, ptr %.sroa.0248.13.1, align 1, !tbaa !44
  %i.ep = zext i16 %i.eo to i32
  br label %bytestream2_get_le16.exit218.1

bytestream2_get_le16.exit218.1:                   ; preds = %bb.ak, %bytestream2_get_le16.exit220.1
  %.sroa.0248.12.1 = phi ptr [ %i.en, %bb.ak ], [ %i.n, %bytestream2_get_le16.exit220.1 ] ; 3 uses
  %.0.i217.1 = phi i32 [ %i.ep, %bb.ak ], [ 0, %bytestream2_get_le16.exit220.1 ] ; 2 uses
  %i.eq = sext i32 %i.eb to i64
  %i.er = zext nneg i32 %.0.i219.1 to i64
  %i.es = mul nsw i64 %i.er, %i.dk
  %i.et = zext nneg i32 %.0.i217.1 to i64
  %i.eu = mul nsw i64 %i.es, %i.et
  %i.ev = add nsw i64 %i.eu, %i.eq
  %i.ew = icmp slt i64 %i.ev, 2147483648
  br i1 %i.ew, label %bb.al, label %.critedge

bb.al:                                            ; preds = %bytestream2_get_le16.exit218.1
  %i.ex = mul nsw i32 %.0.i219.1, %i.e
  %i.ey = mul nsw i32 %i.ex, %.0.i217.1
  %i.ez = add nsw i32 %i.ey, %i.eb                ; 3 uses
  %exitcond.not.1 = icmp eq i32 %.0.i227, 2
  br i1 %exitcond.not.1, label %bb.ay, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fa = ptrtoint ptr %.sroa.0248.12.1 to i64
  %i.fb = sub i64 %i.o, %i.fa
  %..i233.2 = tail call i64 @llvm.smin.i64(i64 %i.fb, i64 4)
  %i.fc = getelementptr inbounds i8, ptr %.sroa.0248.12.1, i64 %..i233.2 ; 3 uses
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = sub i64 %i.o, %i.fd
  %i.ff = icmp slt i64 %i.fe, 2
  br i1 %i.ff, label %bytestream2_get_le16.exit220.2, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 2 ; 2 uses
  %i.fh = load i16, ptr %i.fc, align 1, !tbaa !44
  %i.fi = zext i16 %i.fh to i32
  %.pre378.2 = ptrtoint ptr %i.fg to i64
  br label %bytestream2_get_le16.exit220.2

bytestream2_get_le16.exit220.2:                   ; preds = %bb.an, %bb.am
  %.pre-phi379.2 = phi i64 [ %i.o, %bb.am ], [ %.pre378.2, %bb.an ]
  %.sroa.0248.13.2 = phi ptr [ %i.n, %bb.am ], [ %i.fg, %bb.an ] ; 2 uses
  %.0.i219.2 = phi i32 [ 0, %bb.am ], [ %i.fi, %bb.an ] ; 2 uses
  %i.fj = sub i64 %i.o, %.pre-phi379.2
  %i.fk = icmp slt i64 %i.fj, 2
  br i1 %i.fk, label %bytestream2_get_le16.exit218.2, label %bb.ao

bb.ao:                                            ; preds = %bytestream2_get_le16.exit220.2
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0248.13.2, i64 2
  %i.fm = load i16, ptr %.sroa.0248.13.2, align 1, !tbaa !44
  %i.fn = zext i16 %i.fm to i32
  br label %bytestream2_get_le16.exit218.2

bytestream2_get_le16.exit218.2:                   ; preds = %bb.ao, %bytestream2_get_le16.exit220.2
  %.sroa.0248.12.2 = phi ptr [ %i.fl, %bb.ao ], [ %i.n, %bytestream2_get_le16.exit220.2 ] ; 3 uses
  %.0.i217.2 = phi i32 [ %i.fn, %bb.ao ], [ 0, %bytestream2_get_le16.exit220.2 ] ; 2 uses
  %i.fo = sext i32 %i.ez to i64
  %i.fp = zext nneg i32 %.0.i219.2 to i64
  %i.fq = mul nsw i64 %i.fp, %i.dk
  %i.fr = zext nneg i32 %.0.i217.2 to i64
  %i.fs = mul nsw i64 %i.fq, %i.fr
  %i.ft = add nsw i64 %i.fs, %i.fo
  %i.fu = icmp slt i64 %i.ft, 2147483648
  br i1 %i.fu, label %bb.ap, label %.critedge

bb.ap:                                            ; preds = %bytestream2_get_le16.exit218.2
  %i.fv = mul nsw i32 %.0.i219.2, %i.e
  %i.fw = mul nsw i32 %i.fv, %.0.i217.2
  %i.fx = add nsw i32 %i.fw, %i.ez                ; 3 uses
  %exitcond.not.2 = icmp eq i32 %.0.i227, 3
  br i1 %exitcond.not.2, label %bb.ay, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fy = ptrtoint ptr %.sroa.0248.12.2 to i64
  %i.fz = sub i64 %i.o, %i.fy
  %..i233.3 = tail call i64 @llvm.smin.i64(i64 %i.fz, i64 4)
  %i.ga = getelementptr inbounds i8, ptr %.sroa.0248.12.2, i64 %..i233.3 ; 3 uses
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = sub i64 %i.o, %i.gb
  %i.gd = icmp slt i64 %i.gc, 2
  br i1 %i.gd, label %bytestream2_get_le16.exit220.3, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 2 ; 2 uses
  %i.gf = load i16, ptr %i.ga, align 1, !tbaa !44
  %i.gg = zext i16 %i.gf to i32
  %.pre378.3 = ptrtoint ptr %i.ge to i64
  br label %bytestream2_get_le16.exit220.3

bytestream2_get_le16.exit220.3:                   ; preds = %bb.ar, %bb.aq
  %.pre-phi379.3 = phi i64 [ %i.o, %bb.aq ], [ %.pre378.3, %bb.ar ]
  %.sroa.0248.13.3 = phi ptr [ %i.n, %bb.aq ], [ %i.ge, %bb.ar ] ; 2 uses
  %.0.i219.3 = phi i32 [ 0, %bb.aq ], [ %i.gg, %bb.ar ] ; 2 uses
  %i.gh = sub i64 %i.o, %.pre-phi379.3
  %i.gi = icmp slt i64 %i.gh, 2
  br i1 %i.gi, label %bytestream2_get_le16.exit218.3, label %bb.as

bb.as:                                            ; preds = %bytestream2_get_le16.exit220.3
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0248.13.3, i64 2
  %i.gk = load i16, ptr %.sroa.0248.13.3, align 1, !tbaa !44
  %i.gl = zext i16 %i.gk to i32
  br label %bytestream2_get_le16.exit218.3

bytestream2_get_le16.exit218.3:                   ; preds = %bb.as, %bytestream2_get_le16.exit220.3
  %.sroa.0248.12.3 = phi ptr [ %i.gj, %bb.as ], [ %i.n, %bytestream2_get_le16.exit220.3 ] ; 3 uses
  %.0.i217.3 = phi i32 [ %i.gl, %bb.as ], [ 0, %bytestream2_get_le16.exit220.3 ] ; 2 uses
  %i.gm = sext i32 %i.fx to i64
  %i.gn = zext nneg i32 %.0.i219.3 to i64
  %i.go = mul nsw i64 %i.gn, %i.dk
  %i.gp = zext nneg i32 %.0.i217.3 to i64
  %i.gq = mul nsw i64 %i.go, %i.gp
  %i.gr = add nsw i64 %i.gq, %i.gm
  %i.gs = icmp slt i64 %i.gr, 2147483648
  br i1 %i.gs, label %bb.at, label %.critedge

bb.at:                                            ; preds = %bytestream2_get_le16.exit218.3
  %i.gt = mul nsw i32 %.0.i219.3, %i.e
  %i.gu = mul nsw i32 %i.gt, %.0.i217.3
  %i.gv = add nsw i32 %i.gu, %i.fx                ; 3 uses
  %exitcond.not.3 = icmp eq i32 %.0.i227, 4
  br i1 %exitcond.not.3, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gw = ptrtoint ptr %.sroa.0248.12.3 to i64
  %i.gx = sub i64 %i.o, %i.gw
  %..i233.4 = tail call i64 @llvm.smin.i64(i64 %i.gx, i64 4)
  %i.gy = getelementptr inbounds i8, ptr %.sroa.0248.12.3, i64 %..i233.4 ; 3 uses
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = sub i64 %i.o, %i.gz
  %i.hb = icmp slt i64 %i.ha, 2
  br i1 %i.hb, label %bytestream2_get_le16.exit220.4, label %bb.av
end_hunk_0
