Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/binkaudio?download=true
inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"binkaudio_rdft\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Bink Audio (RDFT)\00", align 1
@ff_binkaudio_rdft_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86063, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 65, i32 6720, ptr null, ptr null, ptr null, ptr @decode_init, %union.anon { ptr @binkaudio_receive_frame }, ptr @decode_end, ptr @decode_flush, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"binkaudio_dct\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Bink Audio (DCT)\00", align 1
@ff_binkaudio_dct_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.2, ptr @.str.3, i32 1, i32 86064, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 65, i32 6720, ptr null, ptr null, ptr null, ptr @decode_init, %union.anon { ptr @binkaudio_receive_frame }, ptr @decode_end, ptr @decode_flush, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"invalid number of channels: %d\0A\00", align 1
@ff_wma_critical_freqs = external local_unnamed_addr constant [25 x i16], align 16
@ff_log2_tab = external local_unnamed_addr constant [256 x i8], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"Packet is too small\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Incomplete packet\0A\00", align 1
@rle_length_tab = internal unnamed_addr constant [16 x i8] c"\02\03\04\05\06\08\09\0A\0B\0C\0D\0E\0F\10 @", align 16

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.f = load i32, ptr %i.e, align 8, !tbaa !57   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !32
  %i.k = icmp eq i32 %i.j, 86063
  %i.l = select i1 %i.k, i32 2, i32 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33   ; 9 uses
  %i.o = icmp slt i32 %i.f, 22050
  %i.p = icmp slt i32 %i.f, 44100
  %. = select i1 %i.p, i32 10, i32 11
  %.0 = select i1 %i.o, i32 9, i32 %.             ; 3 uses
  %i.q = icmp slt i32 %i.n, 1
  %i.r = icmp sgt i32 %i.n, %i.l
  %or.cond = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %i.n) #7
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.s) #7
  tail call void @av_channel_layout_default(ptr noundef nonnull %i.s, i32 noundef %i.n) #7
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load i32, ptr %i.t, align 8, !tbaa !58
  %i.v = icmp sgt i32 %i.u, 3
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !34
  %i.aa = icmp eq i8 %i.z, 98
  %i.ab = zext i1 %i.aa to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = phi i32 [ 0, %bb.c ], [ %i.ab, %bb.d ]  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !39
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 20 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !32
  %i.ah = icmp eq i32 %i.ag, 86063                ; 2 uses
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 3, ptr %i.ai, align 4, !tbaa !60
  %i.aj = udiv i32 2147483647, %i.n
  %i.ak = icmp sgt i32 %i.f, %i.aj
  br i1 %i.ak, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = mul nsw i32 %i.n, %i.f                  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 1, ptr %i.am, align 8, !tbaa !40
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.h, label %vector.ph

bb.h:                                             ; preds = %bb.g
  %i.an = zext nneg i32 %i.n to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !34
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nuw nsw i32 %.0, %i.aq
  br label %vector.ph

bb.i:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.n, ptr %i.as, align 8, !tbaa !40
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 8, ptr %i.at, align 4, !tbaa !60
  %i.au = tail call i32 @llvm.umin.i32(i32 %i.n, i32 2)
  br label %vector.ph

vector.ph:                                        ; preds = %bb.g, %bb.h, %bb.i
  %spec.select = phi i32 [ 1, %bb.g ], [ 1, %bb.h ], [ %i.au, %bb.i ]
  %.085 = phi i32 [ %i.al, %bb.g ], [ %i.al, %bb.h ], [ %i.f, %bb.i ]
  %.1 = phi i32 [ %.0, %bb.g ], [ %i.ar, %bb.h ], [ %.0, %bb.i ] ; 3 uses
  %i.av = shl nuw i32 1, %.1                      ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !41
  %i.ax = sdiv i32 %i.av, 16                      ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !42
  %i.az = sub nsw i32 %i.av, %i.ax
  %i.ba = mul nsw i32 %spec.select, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !43
  %i.bc = sext i32 %.085 to i64
  %i.bd = add nsw i64 %i.bc, 1
  %i.be = sdiv i64 %i.bd, 2                       ; 2 uses
  %i.bf = trunc nsw i64 %i.be to i32
  %i.bg = sitofp nsz i32 %i.av to double          ; 2 uses
  %i.bh = tail call ninf nsz double @llvm.sqrt.f64(double %i.bg)
  %i.bi = fmul nsz double %i.bh, 3.276800e+04
  %.113 = select i1 %i.ah, double 2.000000e+00, double %i.bg
  %i.bj = fdiv nsz double %.113, %i.bi
  %i.bk = fptrunc double %i.bj to float           ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store float %i.bk, ptr %i.bl, align 8, !tbaa !44
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 6308
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bk, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bn = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.bo = fmul nnan nsz <4 x float> %i.bn, splat (float f0x3E1C8FA1)
  %i.bp = tail call nnan nsz <4 x float> @llvm.exp.v4f32(<4 x float> %i.bo)
  %i.bq = fmul nsz <4 x float> %i.bp, %broadcast.splat
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index
  store <4 x float> %i.bq, ptr %i.br, align 4, !tbaa !45
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.bs = icmp eq i64 %index.next, 96
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %middle.block, %bb.k
  %indvars.iv99 = phi i64 [ 1, %middle.block ], [ %indvars.iv.next100, %bb.k ] ; 6 uses
  %i.bu = getelementptr [2 x i8], ptr @ff_wma_critical_freqs, i64 %indvars.iv99
  %i.bv = getelementptr i8, ptr %i.bu, i64 -2
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !62
  %i.bx = zext i16 %i.bw to i64
  %.not93 = icmp sgt i64 %i.be, %i.bx
  br i1 %.not93, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next100, 25
  br i1 %exitcond102.not, label %.thread, label %bb.j, !llvm.loop !55

.thread:                                          ; preds = %bb.k
  store i32 25, ptr %i.bt, align 4, !tbaa !49
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 60 ; 2 uses
  store i32 2, ptr %i.by, align 4, !tbaa !50
  br label %.lr.ph.preheader

bb.l:                                             ; preds = %bb.j
  %i.bz = trunc nuw nsw i64 %indvars.iv99 to i32
  store i32 %i.bz, ptr %i.bt, align 4, !tbaa !49
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 60 ; 3 uses
  store i32 2, ptr %i.ca, align 4, !tbaa !50
  %i.cb = icmp samesign ugt i64 %indvars.iv99, 1
  br i1 %i.cb, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.thread, %bb.l
  %i.cc = phi ptr [ %i.by, %.thread ], [ %i.ca, %bb.l ]
  %i.cd = phi i64 [ 25, %.thread ], [ %indvars.iv99, %bb.l ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv103 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next104, %.lr.ph ] ; 3 uses
  %i.cf = getelementptr [2 x i8], ptr @ff_wma_critical_freqs, i64 %indvars.iv103
  %i.cg = getelementptr i8, ptr %i.cf, i64 -2
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !62
  %i.ci = zext i16 %i.ch to i32
  %i.cj = shl i32 %i.ci, %.1
  %i.ck = sdiv i32 %i.cj, %i.bf
  %i.cl = and i32 %i.ck, -2
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv103
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !50
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.cn = icmp samesign ult i64 %indvars.iv.next104, %i.cd
  br i1 %i.cn, label %.lr.ph, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
  %i.co = phi ptr [ %i.ca, %bb.l ], [ %i.cc, %.lr.ph ]
  %.pre-phi = phi i64 [ %indvars.iv99, %bb.l ], [ %i.cd, %.lr.ph ]
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.co, i64 %.pre-phi
  store i32 %i.av, ptr %i.cp, align 4, !tbaa !50
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 1, ptr %i.cq, align 4, !tbaa !51
  %i.cr = load i32, ptr %i.af, align 4, !tbaa !32
  %i.cs = icmp eq i32 %i.cr, 86063
  br i1 %i.cs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store float 5.000000e-01, ptr %i.a, align 4, !tbaa !45
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 6704
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 6712
  %i.cv = call i32 @av_tx_init(ptr noundef nonnull %i.ct, ptr noundef nonnull %i.cu, i32 noundef 6, i32 noundef 1, i32 noundef %i.av, ptr noundef nonnull %i.a, i64 noundef 0) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.cw = sitofp nsz i32 %i.av to double
  %i.cx = fdiv nsz double 1.000000e+00, %i.cw
  %i.cy = fptrunc nsz double %i.cx to float
  store float %i.cy, ptr %i.b, align 4, !tbaa !45
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 6704
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 6712
  %i.db = add nsw i32 %.1, -1
  %i.dc = shl nuw i32 1, %i.db
  %i.dd = call i32 @av_tx_init(ptr noundef nonnull %i.cz, ptr noundef nonnull %i.da, i32 noundef 9, i32 noundef 1, i32 noundef %i.dc, ptr noundef nonnull %i.b, i64 noundef 0) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.082 = phi i32 [ %i.cv, %bb.m ], [ %i.dd, %bb.n ] ; 2 uses
  %i.de = icmp slt i32 %.082, 0
  br i1 %i.de, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !63
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !69
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 6696
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !52
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.f, %bb.p, %bb.b
  %.086 = phi i32 [ -1094995529, %bb.b ], [ 0, %bb.p ], [ -1094995529, %bb.f ], [ %.082, %bb.o ]
  ret i32 %.086
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @binkaudio_receive_frame(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [25 x float], align 16            ; 7 uses
  %i.b = alloca [4098 x float], align 16          ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 24 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6696 ; 4 uses
  %i.f = getelementptr i8, ptr %i.d, i64 12       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.h = getelementptr i8, ptr %i.d, i64 8        ; 23 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 6308
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 60 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 6712
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 6704
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 28 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 164 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.ao, %bb.a
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !52  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !83
  %.not = icmp eq ptr %i.ac, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.ad = call i32 @ff_decode_get_packet(ptr noundef %0, ptr noundef nonnull %i.aa) #7 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.i, align 4, !tbaa !53
  br label %bb.aq

bb.e:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !52  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !84 ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 4
  br i1 %i.ai, label %.loopexit66.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !83 ; 2 uses
  %i.al = icmp samesign ugt i32 %i.ah, 268435455
  %i.am = shl nuw nsw i32 %i.ah, 3
  %i.an = select i1 %i.al, i32 -8, i32 %i.am      ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.an, 2147483135   ; 2 uses
  %i.ao = icmp ne ptr %i.ak, null
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.ao      ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %i.ak, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.an, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %i.d, align 8, !tbaa !85
  store i32 %.013.i.i, ptr %i.f, align 4, !tbaa !86
  %i.ap = add nuw nsw i32 %.013.i.i, 8            ; 2 uses
  store i32 %i.ap, ptr %i.g, align 8, !tbaa !87
  store i32 0, ptr %i.h, align 8, !tbaa !88
  br i1 %or.cond3.i.i, label %bb.g, label %.loopexit66

bb.g:                                             ; preds = %bb.f
  %i.aq = call i32 @llvm.umin.i32(i32 %i.ap, i32 32)
  store i32 %i.aq, ptr %i.h, align 8, !tbaa !88
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %i.ar = load i32, ptr %i.i, align 4, !tbaa !53
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.at = load i32, ptr %i.j, align 8, !tbaa !41
  store i32 %i.at, ptr %i.k, align 8, !tbaa !93
  %i.au = call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #7 ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %.loopexit66, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 -9223372036854775808, ptr %i.l, align 8, !tbaa !94
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !95  ; 5 uses
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !32
  %.not65 = icmp eq i32 %i.az, 86064              ; 3 uses
  %i.ba = load i32, ptr %i.o, align 8, !tbaa !40
  %i.bb = load i32, ptr %i.i, align 4, !tbaa !53  ; 3 uses
  %i.bc = sub i32 %i.ba, %i.bb                    ; 3 uses
  %spec.select = call i32 @llvm.smin.i32(i32 %i.bc, i32 2) ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  br i1 %.not65, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = load i32, ptr %i.h, align 8, !tbaa !88
  %i.be = load i32, ptr %i.g, align 8, !tbaa !87
  %i.bf = add i32 %i.bd, 2
  %i.bg = call i32 @llvm.umin.i32(i32 %i.be, i32 %i.bf)
  store i32 %i.bg, ptr %i.h, align 8, !tbaa !88
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bh = icmp sgt i32 %i.bc, 0
  br i1 %i.bh, label %.lr.ph220.i, label %.loopexit

.lr.ph220.i:                                      ; preds = %bb.n
  %i.bi = sext i32 %i.bb to i64                   ; 7 uses
  %wide.trip.count245.i = zext nneg i32 %spec.select to i64
  %invariant.gep.sink.i = getelementptr [8 x i8], ptr %i.aw, i64 %i.bi
  br label %bb.o

bb.o:                                             ; preds = %bb.ak, %.lr.ph220.i
  %indvars.iv242.i = phi i64 [ 0, %.lr.ph220.i ], [ %indvars.iv.next243.i, %bb.ak ] ; 2 uses
  %i.bj = load i32, ptr %i.p, align 8, !tbaa !39
  %.not164.i = icmp eq i32 %i.bj, 0               ; 2 uses
  %.val170.i = load i32, ptr %i.h, align 8, !tbaa !88 ; 7 uses
  %.val171.i = load i32, ptr %i.f, align 4, !tbaa !86 ; 2 uses
  %i.bk = sub nsw i32 %.val171.i, %.val170.i      ; 2 uses
  br i1 %.not164.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = icmp slt i32 %i.bk, 64
  br i1 %i.bl, label %bb.al, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = load i32, ptr %i.g, align 8, !tbaa !87  ; 5 uses
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !85  ; 5 uses
  %i.bo = lshr i32 %.val170.i, 3
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 1, !tbaa !34
  %i.bs = and i32 %.val170.i, 7
  %i.bt = lshr i32 %i.br, %i.bs
  %i.bu = and i32 %i.bt, 65535
  %i.bv = add nsw i32 %.val170.i, 16
  %i.bw = call i32 @llvm.umin.i32(i32 %i.bm, i32 %i.bv) ; 4 uses
  store i32 %i.bw, ptr %i.h, align 8, !tbaa !88
  %i.bx = lshr i32 %i.bw, 3
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 1, !tbaa !34
  %i.cb = and i32 %i.bw, 7
  %i.cc = lshr i32 %i.ca, %i.cb
  %i.cd = add i32 %i.bw, 16
  %i.ce = call i32 @llvm.umin.i32(i32 %i.bm, i32 %i.cd) ; 4 uses
  store i32 %i.ce, ptr %i.h, align 8, !tbaa !88
  %i.cf = shl i32 %i.cc, 16
  %i.cg = or disjoint i32 %i.cf, %i.bu
  %i.ch = bitcast i32 %i.cg to float
  %i.ci = load float, ptr %i.q, align 8, !tbaa !44 ; 2 uses
  %i.cj = fmul nsz float %i.ci, %i.ch             ; 2 uses
  store float %i.cj, ptr %i.b, align 16, !tbaa !45
  %i.ck = lshr i32 %i.ce, 3
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 1, !tbaa !34
  %i.co = and i32 %i.ce, 7
  %i.cp = lshr i32 %i.cn, %i.co
  %i.cq = and i32 %i.cp, 65535
  %i.cr = add i32 %i.ce, 16
  %i.cs = call i32 @llvm.umin.i32(i32 %i.bm, i32 %i.cr) ; 4 uses
  store i32 %i.cs, ptr %i.h, align 8, !tbaa !88
  %i.ct = lshr i32 %i.cs, 3
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 1, !tbaa !34
  %i.cx = and i32 %i.cs, 7
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = add i32 %i.cs, 16
  %i.da = call i32 @llvm.umin.i32(i32 %i.bm, i32 %i.cz) ; 2 uses
  store i32 %i.da, ptr %i.h, align 8, !tbaa !88
  %i.db = shl i32 %i.cy, 16
  %i.dc = or disjoint i32 %i.db, %i.cq
  %i.dd = bitcast i32 %i.dc to float
  %i.de = fmul nsz float %i.ci, %i.dd
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.df = icmp slt i32 %i.bk, 58
  br i1 %i.df, label %bb.al, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dg = load i32, ptr %i.g, align 8, !tbaa !87  ; 7 uses
  %i.dh = load ptr, ptr %i.d, align 8, !tbaa !85  ; 7 uses
  %i.di = lshr i32 %.val170.i, 3
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 1, !tbaa !34
  %i.dm = and i32 %.val170.i, 7
  %i.dn = lshr i32 %i.dl, %i.dm
  %i.do = and i32 %i.dn, 31
  %i.dp = add nsw i32 %.val170.i, 5
  %i.dq = call i32 @llvm.umin.i32(i32 %i.dg, i32 %i.dp) ; 4 uses
  store i32 %i.dq, ptr %i.h, align 8, !tbaa !88
  %i.dr = lshr i32 %i.dq, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 1, !tbaa !34
  %i.dv = and i32 %i.dq, 7
  %i.dw = lshr i32 %i.du, %i.dv
  %i.dx = and i32 %i.dw, 8388607
  %i.dy = add i32 %i.dq, 23
  %i.dz = call i32 @llvm.umin.i32(i32 %i.dg, i32 %i.dy) ; 5 uses
  store i32 %i.dz, ptr %i.h, align 8, !tbaa !88
  %i.ea = uitofp nsz nneg i32 %i.dx to float
  %i.eb = add nsw i32 %i.do, -23
  %i.ec = call nsz float @llvm.ldexp.f32.i32(float %i.ea, i32 %i.eb) ; 2 uses
  %i.ed = lshr i32 %i.dz, 3
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !34
  %i.eh = icmp slt i32 %i.dz, %i.dg
  %i.ei = zext i1 %i.eh to i32
  %spec.select.i.i.i = add i32 %i.dz, %i.ei       ; 4 uses
  %i.ej = zext i8 %i.eg to i32
  %i.ek = and i32 %i.dz, 7
  store i32 %spec.select.i.i.i, ptr %i.h, align 8, !tbaa !88
  %i.el = shl nuw nsw i32 1, %i.ek
  %i.em = and i32 %i.el, %i.ej
  %.not.i.i = icmp eq i32 %i.em, 0
  %i.en = fneg nsz float %i.ec
  %.0.i.i60 = select nsz i1 %.not.i.i, float %i.ec, float %i.en
  %i.eo = load float, ptr %i.q, align 8, !tbaa !44 ; 2 uses
  %i.ep = fmul nsz float %i.eo, %.0.i.i60         ; 2 uses
  store float %i.ep, ptr %i.b, align 16, !tbaa !45
  %i.eq = lshr i32 %spec.select.i.i.i, 3
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.er
  %i.et = load i32, ptr %i.es, align 1, !tbaa !34
  %i.eu = and i32 %spec.select.i.i.i, 7
  %i.ev = lshr i32 %i.et, %i.eu
  %i.ew = and i32 %i.ev, 31
  %i.ex = add i32 %spec.select.i.i.i, 5
  %i.ey = call i32 @llvm.umin.i32(i32 %i.dg, i32 %i.ex) ; 4 uses
  store i32 %i.ey, ptr %i.h, align 8, !tbaa !88
  %i.ez = lshr i32 %i.ey, 3
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 1, !tbaa !34
  %i.fd = and i32 %i.ey, 7
  %i.fe = lshr i32 %i.fc, %i.fd
  %i.ff = and i32 %i.fe, 8388607
  %i.fg = add i32 %i.ey, 23
  %i.fh = call i32 @llvm.umin.i32(i32 %i.dg, i32 %i.fg) ; 5 uses
  store i32 %i.fh, ptr %i.h, align 8, !tbaa !88
  %i.fi = uitofp nsz nneg i32 %i.ff to float
  %i.fj = add nsw i32 %i.ew, -23
  %i.fk = call nsz float @llvm.ldexp.f32.i32(float %i.fi, i32 %i.fj) ; 2 uses
  %i.fl = lshr i32 %i.fh, 3
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !34
  %i.fp = icmp slt i32 %i.fh, %i.dg
  %i.fq = zext i1 %i.fp to i32
  %spec.select.i.i174.i = add i32 %i.fh, %i.fq    ; 2 uses
  %i.fr = zext i8 %i.fo to i32
  %i.fs = and i32 %i.fh, 7
  store i32 %spec.select.i.i174.i, ptr %i.h, align 8, !tbaa !88
  %i.ft = shl nuw nsw i32 1, %i.fs
  %i.fu = and i32 %i.ft, %i.fr
  %.not.i175.i = icmp eq i32 %i.fu, 0
  %i.fv = fneg nsz float %i.fk
  %.0.i176.i = select nsz i1 %.not.i175.i, float %i.fk, float %i.fv
  %i.fw = fmul nsz float %i.eo, %.0.i176.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.fx = phi float [ %i.cj, %bb.q ], [ %i.ep, %bb.s ]
  %storemerge.i = phi float [ %i.de, %bb.q ], [ %i.fw, %bb.s ] ; 2 uses
  %i.fy = phi ptr [ %i.bn, %bb.q ], [ %i.dh, %bb.s ] ; 6 uses
  %i.fz = phi i32 [ %i.bm, %bb.q ], [ %i.dg, %bb.s ] ; 6 uses
  %.promoted.i = phi i32 [ %i.da, %bb.q ], [ %spec.select.i.i174.i, %bb.s ] ; 3 uses
  store float %storemerge.i, ptr %i.r, align 4, !tbaa !45
  %i.ga = sub nsw i32 %.val171.i, %.promoted.i
  %i.gb = load i32, ptr %i.s, align 4, !tbaa !49  ; 3 uses
  %i.gc = shl nsw i32 %i.gb, 3
  %i.gd = icmp slt i32 %i.ga, %i.gc
  br i1 %i.gd, label %bb.al, label %.preheader183.i

.preheader183.i:                                  ; preds = %bb.t
  %i.ge = icmp sgt i32 %i.gb, 0
  br i1 %i.ge, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader183.i
  %wide.trip.count.i = zext nneg i32 %i.gb to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.u ] ; 2 uses
  %i.gf = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.go, %bb.u ] ; 3 uses
  %i.gg = lshr i32 %i.gf, 3
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 1, !tbaa !34
  %i.gk = and i32 %i.gf, 7
  %i.gl = lshr i32 %i.gj, %i.gk
  %i.gm = and i32 %i.gl, 255
  %i.gn = add i32 %i.gf, 8
  %i.go = call i32 @llvm.umin.i32(i32 %i.fz, i32 %i.gn) ; 3 uses
  store i32 %i.go, ptr %i.h, align 8, !tbaa !88
  %i.gp = call i32 @llvm.umin.i32(i32 %i.gm, i32 95)
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.gq
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !45
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store float %i.gs, ptr %i.gt, align 4, !tbaa !45
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.u, !llvm.loop !70

._crit_edge.i:                                    ; preds = %bb.u, %.preheader183.i
  %.promoted209.i = phi i32 [ %.promoted.i, %.preheader183.i ], [ %i.go, %bb.u ]
  %i.gu = load i32, ptr %i.j, align 8, !tbaa !41  ; 5 uses
  %i.gv = icmp sgt i32 %i.gu, 2
  br i1 %i.gv, label %.lr.ph206.i, label %._crit_edge207.thread.i

.lr.ph206.i:                                      ; preds = %._crit_edge.i
  %i.gw = load float, ptr %i.a, align 16, !tbaa !45
  br label %bb.v

bb.v:                                             ; preds = %.loopexit179.i, %.lr.ph206.i
  %.promoted192210.i = phi i32 [ %.promoted209.i, %.lr.ph206.i ], [ %.promoted192211.i, %.loopexit179.i ] ; 5 uses
  %.0143204.i = phi float [ %i.gw, %.lr.ph206.i ], [ %.4.i, %.loopexit179.i ] ; 3 uses
  %.0144203.i = phi i32 [ 0, %.lr.ph206.i ], [ %.4148.i, %.loopexit179.i ] ; 4 uses
  %.1152202.i = phi i32 [ 2, %.lr.ph206.i ], [ %.3154.i, %.loopexit179.i ] ; 7 uses
  br i1 %.not164.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gx = add nsw i32 %.1152202.i, 16
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.gy = lshr i32 %.promoted192210.i, 3
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !34
  %i.hc = icmp slt i32 %.promoted192210.i, %i.fz
  %i.hd = zext i1 %i.hc to i32
  %spec.select.i.i = add i32 %.promoted192210.i, %i.hd ; 5 uses
  %i.he = zext i8 %i.hb to i32
  %i.hf = and i32 %.promoted192210.i, 7
  store i32 %spec.select.i.i, ptr %i.h, align 8, !tbaa !88
  %i.hg = shl nuw nsw i32 1, %i.hf
  %i.hh = and i32 %i.hg, %i.he
  %.not166.i = icmp eq i32 %i.hh, 0
  br i1 %.not166.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hi = lshr i32 %spec.select.i.i, 3
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 1, !tbaa !34
  %i.hm = and i32 %spec.select.i.i, 7
  %i.hn = lshr i32 %i.hl, %i.hm
  %i.ho = and i32 %i.hn, 15
  %i.hp = add i32 %spec.select.i.i, 4
  %i.hq = call i32 @llvm.umin.i32(i32 %i.fz, i32 %i.hp) ; 2 uses
  store i32 %i.hq, ptr %i.h, align 8, !tbaa !88
  %i.hr = zext nneg i32 %i.ho to i64
  %i.hs = getelementptr inbounds nuw i8, ptr @rle_length_tab, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !34
  %i.hu = zext i8 %i.ht to i32
  %i.hv = shl nuw nsw i32 %i.hu, 3
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.promoted192213.i = phi i32 [ %i.hq, %bb.y ], [ %spec.select.i.i, %bb.x ]
  %.pn.i = phi i32 [ %i.hv, %bb.y ], [ 8, %bb.x ]
  %.0149.i = add nsw i32 %.pn.i, %.1152202.i
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.promoted192214.i = phi i32 [ %.promoted192210.i, %bb.w ], [ %.promoted192213.i, %bb.z ] ; 3 uses
  %.1150.i = phi i32 [ %i.gx, %bb.w ], [ %.0149.i, %bb.z ]
  %..1150.i = call i32 @llvm.smin.i32(i32 %.1150.i, i32 %i.gu) ; 8 uses
  %i.hw = lshr i32 %.promoted192214.i, 3
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 1, !tbaa !34
  %i.ia = and i32 %.promoted192214.i, 7
  %i.ib = lshr i32 %i.hz, %i.ia
  %i.ic = and i32 %i.ib, 15                       ; 3 uses
  %i.id = add i32 %.promoted192214.i, 4
  %i.ie = call i32 @llvm.umin.i32(i32 %i.fz, i32 %i.id) ; 5 uses
  store i32 %i.ie, ptr %i.h, align 8, !tbaa !88
  %i.if = icmp eq i32 %i.ic, 0
  br i1 %i.if, label %bb.ab, label %.preheader180.i

.preheader180.i:                                  ; preds = %bb.aa
  %i.ig = icmp slt i32 %.1152202.i, %..1150.i
  br i1 %i.ig, label %.lr.ph189.i, label %.loopexit179.i

.lr.ph189.i:                                      ; preds = %.preheader180.i
  %i.ih = sub nuw nsw i32 32, %i.ic
  %i.ii = lshr i32 -1, %i.ih
  %i.ij = sext i32 %.1152202.i to i64
  %wide.trip.count234.i = sext i32 %..1150.i to i64
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ik = sext i32 %.1152202.i to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ik
  %i.im = sub nsw i32 %..1150.i, %.1152202.i
  %i.in = sext i32 %i.im to i64
  %i.io = shl nsw i64 %i.in, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.il, i8 0, i64 %i.io, i1 false)
  %i.ip = sext i32 %.0144203.i to i64             ; 2 uses
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !50
  %i.is = icmp ult i32 %i.ir, %..1150.i
  br i1 %i.is, label %.lr.ph197.i, label %.loopexit179.i

.lr.ph197.i:                                      ; preds = %bb.ab, %.lr.ph197.i
  %indvars.iv236.i = phi i64 [ %indvars.iv.next237.i, %.lr.ph197.i ], [ %i.ip, %bb.ab ] ; 2 uses
  %indvars.iv.next237.i = add nsw i64 %indvars.iv236.i, 1 ; 3 uses
  %i.it = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv.next237.i
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !50
  %i.iv = icmp ult i32 %i.iu, %..1150.i
  br i1 %i.iv, label %.lr.ph197.i, label %..loopexit179_crit_edge.i, !llvm.loop !71

bb.ac:                                            ; preds = %bb.ai, %.lr.ph189.i
  %indvars.iv231.i = phi i64 [ %i.ij, %.lr.ph189.i ], [ %indvars.iv.next232.i, %bb.ai ] ; 3 uses
  %spec.select.i177193.i = phi i32 [ %i.ie, %.lr.ph189.i ], [ %spec.select.i177194.i, %bb.ai ] ; 3 uses
  %.2188.i = phi float [ %.0143204.i, %.lr.ph189.i ], [ %.3.i, %bb.ai ]
  %.2146187.i = phi i32 [ %.0144203.i, %.lr.ph189.i ], [ %.3147.i, %bb.ai ] ; 3 uses
  %i.iw = sext i32 %.2146187.i to i64             ; 2 uses
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !50
  %i.iz = trunc nsw i64 %indvars.iv231.i to i32
  %i.ja = icmp eq i32 %i.iy, %i.iz
  br i1 %i.ja, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jb = add nsw i32 %.2146187.i, 1
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.iw
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !45
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.3147.i = phi i32 [ %i.jb, %bb.ad ], [ %.2146187.i, %bb.ac ] ; 2 uses
  %.3.i = phi nsz float [ %i.jd, %bb.ad ], [ %.2188.i, %bb.ac ] ; 4 uses
  %i.je = lshr i32 %spec.select.i177193.i, 3
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 1, !tbaa !34
  %i.ji = and i32 %spec.select.i177193.i, 7
  %i.jj = lshr i32 %i.jh, %i.ji
  %i.jk = and i32 %i.jj, %i.ii                    ; 3 uses
  %i.jl = add i32 %spec.select.i177193.i, %i.ic
  %i.jm = call i32 @llvm.umin.i32(i32 %i.fz, i32 %i.jl) ; 6 uses
  store i32 %i.jm, ptr %i.h, align 8, !tbaa !88
  %.not167.i = icmp eq i32 %i.jk, 0
  br i1 %.not167.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jn = lshr i32 %i.jm, 3
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !34
  %i.jr = icmp slt i32 %i.jm, %i.fz
  %i.js = zext i1 %i.jr to i32
  %spec.select.i177.i = add i32 %i.jm, %i.js      ; 3 uses
  %i.jt = zext i8 %i.jq to i32
  %i.ju = and i32 %i.jm, 7
  store i32 %spec.select.i177.i, ptr %i.h, align 8, !tbaa !88
  %i.jv = shl nuw nsw i32 1, %i.ju
  %i.jw = and i32 %i.jv, %i.jt
  %.not168.i = icmp eq i32 %i.jw, 0
  br i1 %.not168.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jx = fneg nsz float %.3.i
  %i.jy = uitofp nneg i32 %i.jk to float
  %i.jz = fmul nsz float %i.jx, %i.jy
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ka = uitofp nneg i32 %i.jk to float
  %i.kb = fmul nsz float %.3.i, %i.ka
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %.sink.i = phi float [ %i.jz, %bb.ag ], [ %i.kb, %bb.ah ], [ 0.000000e+00, %bb.ae ]
  %spec.select.i177194.i = phi i32 [ %spec.select.i177.i, %bb.ag ], [ %spec.select.i177.i, %bb.ah ], [ %i.jm, %bb.ae ] ; 2 uses
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv231.i
  store float %.sink.i, ptr %i.kc, align 4, !tbaa !45
  %indvars.iv.next232.i = add nsw i64 %indvars.iv231.i, 1 ; 2 uses
  %exitcond235.not.i = icmp eq i64 %indvars.iv.next232.i, %wide.trip.count234.i
  br i1 %exitcond235.not.i, label %.loopexit179.i, label %bb.ac, !llvm.loop !72

..loopexit179_crit_edge.i:                        ; preds = %.lr.ph197.i
  %i.kd = trunc nsw i64 %indvars.iv.next237.i to i32
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv236.i
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !45
  br label %.loopexit179.i

.loopexit179.i:                                   ; preds = %bb.ai, %..loopexit179_crit_edge.i, %bb.ab, %.preheader180.i
  %.promoted192211.i = phi i32 [ %i.ie, %bb.ab ], [ %i.ie, %..loopexit179_crit_edge.i ], [ %i.ie, %.preheader180.i ], [ %spec.select.i177194.i, %bb.ai ]
  %.3154.i = phi i32 [ %..1150.i, %bb.ab ], [ %..1150.i, %..loopexit179_crit_edge.i ], [ %.1152202.i, %.preheader180.i ], [ %..1150.i, %bb.ai ] ; 2 uses
  %.4148.i = phi i32 [ %.0144203.i, %bb.ab ], [ %i.kd, %..loopexit179_crit_edge.i ], [ %.0144203.i, %.preheader180.i ], [ %.3147.i, %bb.ai ]
  %.4.i = phi nsz float [ %.0143204.i, %bb.ab ], [ %i.kf, %..loopexit179_crit_edge.i ], [ %.0143204.i, %.preheader180.i ], [ %.3.i, %bb.ai ]
  %i.kg = icmp slt i32 %.3154.i, %i.gu
  br i1 %i.kg, label %bb.v, label %._crit_edge207.i, !llvm.loop !73

._crit_edge207.i:                                 ; preds = %.loopexit179.i
  br i1 %.not65, label %._crit_edge207.i._crit_edge, label %.preheader182.i

._crit_edge207.i._crit_edge:                      ; preds = %._crit_edge207.i
  %.pre78 = load float, ptr %i.b, align 16, !tbaa !45
  br label %bb.aj

._crit_edge207.thread.i:                          ; preds = %._crit_edge.i
  br i1 %.not65, label %bb.aj, label %.preheader182.._crit_edge217_crit_edge.i

.preheader182.i:                                  ; preds = %._crit_edge207.i
  %i.kh = zext nneg i32 %i.gu to i64              ; 2 uses
  br label %.lr.ph216.i

.preheader182.._crit_edge217_crit_edge.i:         ; preds = %._crit_edge207.thread.i
  %.pre.i = sext i32 %i.gu to i64
  br label %._crit_edge217.i

bb.aj:                                            ; preds = %._crit_edge207.i._crit_edge, %._crit_edge207.thread.i
  %i.ki = phi float [ %.pre78, %._crit_edge207.i._crit_edge ], [ %i.fx, %._crit_edge207.thread.i ]
  %i.kj = fmul nsz float %i.ki, 2.000000e+00
  store float %i.kj, ptr %i.b, align 16, !tbaa !45
  br label %bb.ak

._crit_edge217.i.loopexit:                        ; preds = %.lr.ph216.i
  %.pre = load float, ptr %i.r, align 4, !tbaa !45
  br label %._crit_edge217.i

._crit_edge217.i:                                 ; preds = %._crit_edge217.i.loopexit, %.preheader182.._crit_edge217_crit_edge.i
  %i.kk = phi float [ %storemerge.i, %.preheader182.._crit_edge217_crit_edge.i ], [ %.pre, %._crit_edge217.i.loopexit ]
  %.pre-phi.i = phi i64 [ %.pre.i, %.preheader182.._crit_edge217_crit_edge.i ], [ %i.kh, %._crit_edge217.i.loopexit ]
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.pre-phi.i ; 2 uses
  store float %i.kk, ptr %i.kl, align 4, !tbaa !45
  store float 0.000000e+00, ptr %i.r, align 4, !tbaa !45
  %i.km = getelementptr i8, ptr %i.kl, i64 4
  store float 0.000000e+00, ptr %i.km, align 4, !tbaa !45
  br label %bb.ak

.lr.ph216.i:                                      ; preds = %.lr.ph216.i, %.preheader182.i
  %indvars.iv239.i = phi i64 [ 2, %.preheader182.i ], [ %indvars.iv.next240.i, %.lr.ph216.i ] ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv239.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4 ; 2 uses
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !45
  %i.kq = fneg nsz float %i.kp
  store float %i.kq, ptr %i.ko, align 4, !tbaa !45
  %indvars.iv.next240.i = add nuw nsw i64 %indvars.iv239.i, 2 ; 2 uses
  %i.kr = icmp samesign ult i64 %indvars.iv.next240.i, %i.kh
  br i1 %i.kr, label %.lr.ph216.i, label %._crit_edge217.i.loopexit, !llvm.loop !74

bb.ak:                                            ; preds = %._crit_edge217.i, %bb.aj
  %.sink274.i = phi i64 [ 4, %bb.aj ], [ 8, %._crit_edge217.i ]
  %i.ks = load ptr, ptr %i.v, align 8, !tbaa !96
  %i.kt = load ptr, ptr %i.w, align 8, !tbaa !97
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.sink.i, i64 %indvars.iv242.i
  %i.ku = load ptr, ptr %gep.i, align 8, !tbaa !99
  call void %i.ks(ptr noundef %i.kt, ptr noundef %i.ku, ptr noundef nonnull %i.b, i64 noundef %.sink274.i) #7, !inline_history !75
  %indvars.iv.next243.i = add nuw nsw i64 %indvars.iv242.i, 1 ; 2 uses
  %exitcond246.not.i = icmp eq i64 %indvars.iv.next243.i, %wide.trip.count245.i
  br i1 %exitcond246.not.i, label %.preheader178.i.preheader, label %bb.o, !llvm.loop !76

.preheader178.i.preheader:                        ; preds = %bb.ak
  %i.kv = shl nsw i64 %i.bi, 10                   ; 2 uses
  %i.kw = load i32, ptr %i.x, align 4, !tbaa !42  ; 6 uses
  %i.kx = mul nuw nsw i32 %i.kw, %spec.select     ; 5 uses
  %i.ky = load i32, ptr %i.y, align 4, !tbaa !51
  %.not163.i = icmp eq i32 %i.ky, 0
  %i.kz = icmp sgt i32 %i.kw, 0
  %or.cond.i = select i1 %.not163.i, i1 %i.kz, i1 false
  br i1 %or.cond.i, label %.lr.ph223.i, label %.preheader178.i..loopexit.i_crit_edge

.preheader178.i..loopexit.i_crit_edge:            ; preds = %.preheader178.i.preheader
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bi
  %.pre79 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !99
  br label %.loopexit.i

.lr.ph223.i:                                      ; preds = %.preheader178.i.preheader
  %i.la = getelementptr inbounds [1024 x i8], ptr %i.z, i64 %i.bi ; 5 uses
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bi
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !99 ; 9 uses
  %i.ld = sitofp nsz i32 %i.kx to float           ; 4 uses
  %wide.trip.count250.i = zext nneg i32 %i.kw to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.kw, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph223.i
  %i.le = shl nuw nsw i64 %wide.trip.count250.i, 2 ; 2 uses
  %i.lf = getelementptr i8, ptr %i.lc, i64 %i.le
  %i.lg = getelementptr i8, ptr %i.d, i64 %i.kv
  %i.lh = getelementptr i8, ptr %i.lg, i64 164
  %i.li = getelementptr i8, ptr %i.lh, i64 %i.le
  %bound0 = icmp ult ptr %i.lc, %i.li
  %bound1 = icmp ult ptr %i.la, %i.lf
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count250.i, 2147483644 ; 4 uses
  %i.lj = trunc nuw nsw i64 %n.vec to i32
  %i.lk = mul nuw i32 %spec.select, %i.lj
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ld, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert98 = insertelement <4 x i32> poison, i32 %i.kx, i64 0
  %broadcast.splat99 = shufflevector <4 x i32> %broadcast.splatinsert98, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert102 = insertelement <4 x i32> poison, i32 %spec.select, i64 0
  %broadcast.splat103 = shufflevector <4 x i32> %broadcast.splatinsert102, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ll = mul nuw nsw <4 x i32> %broadcast.splat103, <i32 0, i32 1, i32 2, i32 3>
  %i.lm = shl nuw nsw i32 %spec.select, 2
  %broadcast.splatinsert104 = insertelement <4 x i32> poison, i32 %i.lm, i64 0
  %broadcast.splat105 = shufflevector <4 x i32> %broadcast.splatinsert104, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ %i.ll, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %index
  %wide.load = load <4 x float>, ptr %i.ln, align 4, !tbaa !45, !alias.scope !100
  %i.lo = sub nsw <4 x i32> %broadcast.splat99, %vec.ind
  %i.lp = sitofp nsz <4 x i32> %i.lo to <4 x float>
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %index ; 2 uses
  %wide.load106 = load <4 x float>, ptr %i.lq, align 4, !tbaa !45, !alias.scope !101, !noalias !100
  %i.lr = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.ls = fmul nsz <4 x float> %wide.load106, %i.lr
  %i.lt = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %i.lp, <4 x float> %i.ls)
  %i.lu = fdiv nsz <4 x float> %i.lt, %broadcast.splat
  store <4 x float> %i.lu, ptr %i.lq, align 4, !tbaa !45, !alias.scope !101, !noalias !100
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, %broadcast.splat105
  %i.lv = icmp eq i64 %index.next, %n.vec
  br i1 %i.lv, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count250.i
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph223.i, %middle.block
  %indvars.iv247.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph223.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.0222.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph223.i ], [ %i.lk, %middle.block ] ; 4 uses
  %xtraiter = and i64 %wide.trip.count250.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv247.i.ph
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !45
  %i.ly = sub nsw i32 %i.kx, %.0222.i.ph
  %i.lz = sitofp nsz i32 %i.ly to float
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv247.i.ph ; 2 uses
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !45
  %i.mc = uitofp nsz nneg i32 %.0222.i.ph to float
  %i.md = fmul nsz float %i.mb, %i.mc
  %i.me = call nsz float @llvm.fmuladd.f32(float %i.lx, float %i.lz, float %i.md)
  %i.mf = fdiv nsz float %i.me, %i.ld
  store float %i.mf, ptr %i.ma, align 4, !tbaa !45
  %indvars.iv.next248.i.prol = or disjoint i64 %indvars.iv247.i.ph, 1
  %i.mg = add nuw nsw i32 %.0222.i.ph, %spec.select
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv247.i.unr = phi i64 [ %indvars.iv247.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next248.i.prol, %scalar.ph.prol ]
  %.0222.i.unr = phi i32 [ %.0222.i.ph, %scalar.ph.preheader ], [ %i.mg, %scalar.ph.prol ]
  %i.mh = add nsw i64 %wide.trip.count250.i, -1
  %i.mi = icmp eq i64 %indvars.iv247.i.ph, %i.mh
  br i1 %i.mi, label %.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv247.i = phi i64 [ %indvars.iv.next248.i.1, %scalar.ph ], [ %indvars.iv247.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.0222.i = phi i32 [ %i.ne, %scalar.ph ], [ %.0222.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv247.i
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !45
  %i.ml = sub nsw i32 %i.kx, %.0222.i
  %i.mm = sitofp nsz i32 %i.ml to float
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv247.i ; 2 uses
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !45
  %i.mp = uitofp nsz nneg i32 %.0222.i to float
  %i.mq = fmul nsz float %i.mo, %i.mp
  %i.mr = call nsz float @llvm.fmuladd.f32(float %i.mk, float %i.mm, float %i.mq)
  %i.ms = fdiv nsz float %i.mr, %i.ld
  store float %i.ms, ptr %i.mn, align 4, !tbaa !45
  %indvars.iv.next248.i = add nuw nsw i64 %indvars.iv247.i, 1 ; 2 uses
  %i.mt = add nuw nsw i32 %.0222.i, %spec.select  ; 3 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.next248.i
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !45
  %i.mw = sub nsw i32 %i.kx, %i.mt
  %i.mx = sitofp nsz i32 %i.mw to float
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv.next248.i ; 2 uses
  %i.mz = load float, ptr %i.my, align 4, !tbaa !45
  %i.na = uitofp nsz nneg i32 %i.mt to float
  %i.nb = fmul nsz float %i.mz, %i.na
  %i.nc = call nsz float @llvm.fmuladd.f32(float %i.mv, float %i.mx, float %i.nb)
  %i.nd = fdiv nsz float %i.nc, %i.ld
  store float %i.nd, ptr %i.my, align 4, !tbaa !45
  %indvars.iv.next248.i.1 = add nuw nsw i64 %indvars.iv247.i, 2 ; 2 uses
  %i.ne = add nuw nsw i32 %i.mt, %spec.select
  %exitcond251.not.i.1 = icmp eq i64 %indvars.iv.next248.i.1, %wide.trip.count250.i
  br i1 %exitcond251.not.i.1, label %.loopexit.i, label %scalar.ph, !llvm.loop !81

.loopexit.i:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader178.i..loopexit.i_crit_edge
  %i.nf = phi ptr [ %.pre79, %.preheader178.i..loopexit.i_crit_edge ], [ %i.lc, %middle.block ], [ %i.lc, %scalar.ph ], [ %i.lc, %scalar.ph.prol.loopexit ]
  %i.ng = getelementptr inbounds [1024 x i8], ptr %i.z, i64 %i.bi
  %i.nh = load i32, ptr %i.j, align 8, !tbaa !41
  %i.ni = sub nsw i32 %i.nh, %i.kw
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.nf, i64 %i.nj
  %i.nl = sext i32 %i.kw to i64
  %i.nm = shl nsw i64 %i.nl, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ng, ptr align 4 %i.nk, i64 %i.nm, i1 false)
  %exitcond256.not.i = icmp eq i32 %i.bc, 1
  br i1 %exitcond256.not.i, label %.loopexit.loopexit, label %.preheader178.i.1

.preheader178.i.1:                                ; preds = %.loopexit.i
  %i.nn = load i32, ptr %i.x, align 4, !tbaa !42  ; 6 uses
  %i.no = mul nuw nsw i32 %i.nn, %spec.select     ; 5 uses
  %i.np = load i32, ptr %i.y, align 4, !tbaa !51
  %.not163.i.1 = icmp eq i32 %i.np, 0
  %i.nq = icmp sgt i32 %i.nn, 0
  %or.cond.i.1 = select i1 %.not163.i.1, i1 %i.nq, i1 false
  %i.nr = add nsw i64 %i.bi, 1                    ; 4 uses
  br i1 %or.cond.i.1, label %.lr.ph223.i.1, label %.preheader178.i..loopexit.i_crit_edge.1

.preheader178.i..loopexit.i_crit_edge.1:          ; preds = %.preheader178.i.1
  %.phi.trans.insert.1 = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.nr
  %.pre79.1 = load ptr, ptr %.phi.trans.insert.1, align 8, !tbaa !99
  br label %.loopexit.i.1

.lr.ph223.i.1:                                    ; preds = %.preheader178.i.1
  %i.ns = getelementptr inbounds [1024 x i8], ptr %i.z, i64 %i.nr ; 5 uses
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.nr
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !99 ; 9 uses
  %i.nv = sitofp nsz i32 %i.no to float           ; 4 uses
  %wide.trip.count250.i.1 = zext nneg i32 %i.nn to i64 ; 6 uses
  %min.iters.check.1 = icmp ult i32 %i.nn, 4
  br i1 %min.iters.check.1, label %scalar.ph.preheader.1, label %vector.memcheck.1

vector.memcheck.1:                                ; preds = %.lr.ph223.i.1
  %i.nw = shl nuw nsw i64 %wide.trip.count250.i.1, 2 ; 2 uses
  %i.nx = getelementptr i8, ptr %i.nu, i64 %i.nw
  %i.ny = getelementptr i8, ptr %i.d, i64 %i.kv
  %i.nz = getelementptr i8, ptr %i.ny, i64 1188
  %i.oa = getelementptr i8, ptr %i.nz, i64 %i.nw
  %bound0.1 = icmp ult ptr %i.nu, %i.oa
  %bound1.1 = icmp ult ptr %i.ns, %i.nx
  %found.conflict.1 = and i1 %bound0.1, %bound1.1
  br i1 %found.conflict.1, label %scalar.ph.preheader.1, label %vector.ph.1

vector.ph.1:                                      ; preds = %vector.memcheck.1
  %n.vec.1 = and i64 %wide.trip.count250.i.1, 2147483644 ; 4 uses
  %i.ob = trunc nuw nsw i64 %n.vec.1 to i32
  %i.oc = mul nuw i32 %spec.select, %i.ob
  %i.od = or disjoint i32 %i.oc, 1
  %broadcast.splatinsert.1 = insertelement <4 x float> poison, float %i.nv, i64 0
  %broadcast.splat.1 = shufflevector <4 x float> %broadcast.splatinsert.1, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert98.1 = insertelement <4 x i32> poison, i32 %i.no, i64 0
  %broadcast.splat99.1 = shufflevector <4 x i32> %broadcast.splatinsert98.1, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert102.1 = insertelement <4 x i32> poison, i32 %spec.select, i64 0
  %broadcast.splat103.1 = shufflevector <4 x i32> %broadcast.splatinsert102.1, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.oe = mul nuw nsw <4 x i32> %broadcast.splat103.1, <i32 0, i32 1, i32 2, i32 3>
  %induction.1 = add nuw nsw <4 x i32> %i.oe, splat (i32 1)
  %i.of = shl nuw nsw i32 %spec.select, 2
  %broadcast.splatinsert104.1 = insertelement <4 x i32> poison, i32 %i.of, i64 0
  %broadcast.splat105.1 = shufflevector <4 x i32> %broadcast.splatinsert104.1, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vector.ph.1
  %index.1 = phi i64 [ 0, %vector.ph.1 ], [ %index.next.1, %vector.body.1 ] ; 3 uses
  %vec.ind.1 = phi <4 x i32> [ %induction.1, %vector.ph.1 ], [ %vec.ind.next.1, %vector.body.1 ] ; 3 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %index.1
  %wide.load.1 = load <4 x float>, ptr %i.og, align 4, !tbaa !45, !alias.scope !100
  %i.oh = sub nsw <4 x i32> %broadcast.splat99.1, %vec.ind.1
  %i.oi = sitofp nsz <4 x i32> %i.oh to <4 x float>
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %index.1 ; 2 uses
  %wide.load106.1 = load <4 x float>, ptr %i.oj, align 4, !tbaa !45, !alias.scope !101, !noalias !100
  %i.ok = uitofp nneg <4 x i32> %vec.ind.1 to <4 x float>
  %i.ol = fmul nsz <4 x float> %wide.load106.1, %i.ok
  %i.om = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load.1, <4 x float> %i.oi, <4 x float> %i.ol)
  %i.on = fdiv nsz <4 x float> %i.om, %broadcast.splat.1
  store <4 x float> %i.on, ptr %i.oj, align 4, !tbaa !45, !alias.scope !101, !noalias !100
  %index.next.1 = add nuw i64 %index.1, 4         ; 2 uses
  %vec.ind.next.1 = add nuw nsw <4 x i32> %vec.ind.1, %broadcast.splat105.1
  %i.oo = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.oo, label %middle.block.1, label %vector.body.1, !llvm.loop !80

middle.block.1:                                   ; preds = %vector.body.1
  %cmp.n.1 = icmp eq i64 %n.vec.1, %wide.trip.count250.i.1
  br i1 %cmp.n.1, label %.loopexit.i.1, label %scalar.ph.preheader.1

scalar.ph.preheader.1:                            ; preds = %middle.block.1, %vector.memcheck.1, %.lr.ph223.i.1
  %indvars.iv247.i.ph.1 = phi i64 [ 0, %vector.memcheck.1 ], [ 0, %.lr.ph223.i.1 ], [ %n.vec.1, %middle.block.1 ] ; 5 uses
  %.0222.i.ph.1 = phi i32 [ 1, %vector.memcheck.1 ], [ 1, %.lr.ph223.i.1 ], [ %i.od, %middle.block.1 ] ; 4 uses
  %xtraiter.1 = and i64 %wide.trip.count250.i.1, 1
  %lcmp.mod.1.not = icmp eq i64 %xtraiter.1, 0
  br i1 %lcmp.mod.1.not, label %scalar.ph.prol.loopexit.1, label %scalar.ph.prol.1

scalar.ph.prol.1:                                 ; preds = %scalar.ph.preheader.1
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv247.i.ph.1
  %i.oq = load float, ptr %i.op, align 4, !tbaa !45
  %i.or = sub nsw i32 %i.no, %.0222.i.ph.1
  %i.os = sitofp nsz i32 %i.or to float
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv247.i.ph.1 ; 2 uses
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !45
  %i.ov = uitofp nsz nneg i32 %.0222.i.ph.1 to float
  %i.ow = fmul nsz float %i.ou, %i.ov
  %i.ox = call nsz float @llvm.fmuladd.f32(float %i.oq, float %i.os, float %i.ow)
  %i.oy = fdiv nsz float %i.ox, %i.nv
  store float %i.oy, ptr %i.ot, align 4, !tbaa !45
  %indvars.iv.next248.i.prol.1 = or disjoint i64 %indvars.iv247.i.ph.1, 1
  %i.oz = add nuw nsw i32 %.0222.i.ph.1, %spec.select
  br label %scalar.ph.prol.loopexit.1

scalar.ph.prol.loopexit.1:                        ; preds = %scalar.ph.prol.1, %scalar.ph.preheader.1
  %indvars.iv247.i.unr.1 = phi i64 [ %indvars.iv247.i.ph.1, %scalar.ph.preheader.1 ], [ %indvars.iv.next248.i.prol.1, %scalar.ph.prol.1 ]
  %.0222.i.unr.1 = phi i32 [ %.0222.i.ph.1, %scalar.ph.preheader.1 ], [ %i.oz, %scalar.ph.prol.1 ]
  %i.pa = add nsw i64 %wide.trip.count250.i.1, -1
  %i.pb = icmp eq i64 %indvars.iv247.i.ph.1, %i.pa
  br i1 %i.pb, label %.loopexit.i.1, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph.prol.loopexit.1, %scalar.ph.1
  %indvars.iv247.i.1 = phi i64 [ %indvars.iv.next248.i.1.1, %scalar.ph.1 ], [ %indvars.iv247.i.unr.1, %scalar.ph.prol.loopexit.1 ] ; 4 uses
  %.0222.i.1 = phi i32 [ %i.px, %scalar.ph.1 ], [ %.0222.i.unr.1, %scalar.ph.prol.loopexit.1 ] ; 3 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv247.i.1
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !45
  %i.pe = sub nsw i32 %i.no, %.0222.i.1
  %i.pf = sitofp nsz i32 %i.pe to float
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv247.i.1 ; 2 uses
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !45
  %i.pi = uitofp nsz nneg i32 %.0222.i.1 to float
  %i.pj = fmul nsz float %i.ph, %i.pi
  %i.pk = call nsz float @llvm.fmuladd.f32(float %i.pd, float %i.pf, float %i.pj)
  %i.pl = fdiv nsz float %i.pk, %i.nv
  store float %i.pl, ptr %i.pg, align 4, !tbaa !45
  %indvars.iv.next248.i.1110 = add nuw nsw i64 %indvars.iv247.i.1, 1 ; 2 uses
  %i.pm = add nuw nsw i32 %.0222.i.1, %spec.select ; 3 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv.next248.i.1110
  %i.po = load float, ptr %i.pn, align 4, !tbaa !45
  %i.pp = sub nsw i32 %i.no, %i.pm
  %i.pq = sitofp nsz i32 %i.pp to float
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.next248.i.1110 ; 2 uses
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !45
  %i.pt = uitofp nsz nneg i32 %i.pm to float
  %i.pu = fmul nsz float %i.ps, %i.pt
  %i.pv = call nsz float @llvm.fmuladd.f32(float %i.po, float %i.pq, float %i.pu)
  %i.pw = fdiv nsz float %i.pv, %i.nv
  store float %i.pw, ptr %i.pr, align 4, !tbaa !45
  %indvars.iv.next248.i.1.1 = add nuw nsw i64 %indvars.iv247.i.1, 2 ; 2 uses
  %i.px = add nuw nsw i32 %i.pm, %spec.select
  %exitcond251.not.i.1.1 = icmp eq i64 %indvars.iv.next248.i.1.1, %wide.trip.count250.i.1
  br i1 %exitcond251.not.i.1.1, label %.loopexit.i.1, label %scalar.ph.1, !llvm.loop !81

.loopexit.i.1:                                    ; preds = %scalar.ph.prol.loopexit.1, %scalar.ph.1, %middle.block.1, %.preheader178.i..loopexit.i_crit_edge.1
  %i.py = phi ptr [ %.pre79.1, %.preheader178.i..loopexit.i_crit_edge.1 ], [ %i.nu, %middle.block.1 ], [ %i.nu, %scalar.ph.1 ], [ %i.nu, %scalar.ph.prol.loopexit.1 ]
  %i.pz = getelementptr inbounds [1024 x i8], ptr %i.z, i64 %i.nr
  %i.qa = load i32, ptr %i.j, align 8, !tbaa !41
  %i.qb = sub nsw i32 %i.qa, %i.nn
  %i.qc = sext i32 %i.qb to i64
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.qc
  %i.qe = sext i32 %i.nn to i64
  %i.qf = shl nsw i64 %i.qe, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.pz, ptr align 4 %i.qd, i64 %i.qf, i1 false)
  br label %.loopexit.loopexit

bb.al:                                            ; preds = %bb.p, %bb.r, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit66.sink.split

.loopexit.loopexit:                               ; preds = %.loopexit.i.1, %.loopexit.i
  %.pre80 = load i32, ptr %i.i, align 4, !tbaa !53
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.n
  %i.qg = phi i32 [ %.pre80, %.loopexit.loopexit ], [ %i.bb, %bb.n ]
  store i32 0, ptr %i.y, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.qh = add nsw i32 %i.qg, 2                    ; 2 uses
  store i32 %i.qh, ptr %i.i, align 4, !tbaa !53
  %.val.i = load i32, ptr %i.h, align 8, !tbaa !88 ; 3 uses
  %i.qi = sub nsw i32 0, %.val.i
  %i.qj = and i32 %i.qi, 31                       ; 2 uses
  %.not.i61 = icmp eq i32 %i.qj, 0
  br i1 %.not.i61, label %get_bits_align32.exit, label %bb.am

bb.am:                                            ; preds = %.loopexit
  %i.qk = load i32, ptr %i.g, align 8, !tbaa !87
  %i.ql = add i32 %i.qj, %.val.i
  %i.qm = call i32 @llvm.umin.i32(i32 %i.qk, i32 %i.ql) ; 2 uses
  store i32 %i.qm, ptr %i.h, align 8, !tbaa !88
  br label %get_bits_align32.exit

get_bits_align32.exit:                            ; preds = %.loopexit, %bb.am
  %.val = phi i32 [ %.val.i, %.loopexit ], [ %i.qm, %bb.am ]
  %.val58 = load i32, ptr %i.f, align 4, !tbaa !86
  %.not55 = icmp eq i32 %.val58, %.val
  br i1 %.not55, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %get_bits_align32.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.qn = load ptr, ptr %i.e, align 8, !tbaa !52
  call void @av_packet_unref(ptr noundef %i.qn) #7
  %.pre82 = load i32, ptr %i.i, align 4, !tbaa !53
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %get_bits_align32.exit
  %i.qo = phi i32 [ %.pre82, %bb.an ], [ %i.qh, %get_bits_align32.exit ]
  %i.qp = load i32, ptr %i.o, align 8, !tbaa !40
  %.not56 = icmp slt i32 %i.qo, %i.qp
  br i1 %.not56, label %bb.b, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.i, align 4, !tbaa !53
  %i.qq = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.qr = load i32, ptr %i.qq, align 8, !tbaa !43
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !33
  %spec.select57 = call i32 @llvm.smin.i32(i32 %i.qt, i32 2)
  %i.qu = sdiv i32 %i.qr, %spec.select57
  store i32 %i.qu, ptr %i.k, align 8, !tbaa !93
  br label %bb.aq

.loopexit66.sink.split:                           ; preds = %bb.e, %bb.al
  %.str.6.sink = phi ptr [ @.str.6, %bb.al ], [ @.str.5, %bb.e ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %.str.6.sink) #7
  br label %.loopexit66

.loopexit66:                                      ; preds = %bb.i, %bb.f, %.loopexit66.sink.split
  %.0 = phi i32 [ -1094995529, %.loopexit66.sink.split ], [ -1094995529, %bb.f ], [ %i.au, %bb.i ]
  store i32 0, ptr %i.i, align 4, !tbaa !53
  %i.qv = load ptr, ptr %i.e, align 8, !tbaa !52
  call void @av_packet_unref(ptr noundef %i.qv) #7
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit66, %bb.ap, %bb.d
  %.047 = phi i32 [ %.0, %.loopexit66 ], [ 0, %bb.ap ], [ %i.ad, %bb.d ]
  ret i32 %.047
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6704
  tail call void @av_tx_uninit(ptr noundef nonnull %i.c) #7
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @decode_flush(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 1, ptr %i.c, align 4, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 0, ptr %i.d, align 4, !tbaa !53
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #4

declare void @av_channel_layout_default(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @ff_decode_get_packet(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @av_packet_unref(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ldexp.f32.i32(float, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!29 = !{!27, !11, i64 16}
!30 = !{!"p1 _ZTS9AVProfile", !9, i64 0}
!31 = !{!"AVCodec", !14, i64 0, !14, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !5, i64 28, !10, i64 32, !30, i64 40, !14, i64 48}
!32 = !{!31, !6, i64 20}
!33 = !{!27, !6, i64 356}
!34 = !{!5, !5, i64 0}
!35 = !{!"GetBitContext", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!36 = !{!"p1 _ZTS8AVPacket", !9, i64 0}
!37 = !{!"p1 _ZTS11AVTXContext", !9, i64 0}
!38 = !{!"BinkAudioContext", !35, i64 0, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !16, i64 56, !5, i64 60, !5, i64 164, !5, i64 6308, !36, i64 6696, !37, i64 6704, !9, i64 6712}
!39 = !{!38, !6, i64 24}
!40 = !{!38, !6, i64 32}
!41 = !{!38, !6, i64 40}
!42 = !{!38, !6, i64 44}
!43 = !{!38, !6, i64 48}
!44 = !{!38, !16, i64 56}
!45 = !{!16, !16, i64 0}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = !{!38, !6, i64 52}
!50 = !{!6, !6, i64 0}
!51 = !{!38, !6, i64 28}
!52 = !{!38, !36, i64 6696}
!53 = !{!38, !6, i64 36}
!54 = distinct !{!54, !46, !47, !48}
!55 = distinct !{!55, !46}
!56 = distinct !{!56, !46}
!57 = !{!27, !6, i64 344}
!58 = !{!27, !6, i64 80}
!59 = !{!27, !14, i64 72}
!60 = !{!27, !6, i64 348}
!61 = !{!"short", !5, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!27, !12, i64 40}
!64 = !{!"p1 _ZTS9FramePool", !9, i64 0}
!65 = !{!"p1 _ZTS15AVRefStructPool", !9, i64 0}
!66 = !{!"p1 _ZTS12AVBSFContext", !9, i64 0}
!67 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!68 = !{!"AVCodecInternal", !6, i64 0, !6, i64 4, !6, i64 8, !64, i64 16, !65, i64 24, !9, i64 32, !36, i64 40, !66, i64 48, !36, i64 56, !14, i64 64, !6, i64 72, !9, i64 80, !67, i64 88, !67, i64 96, !6, i64 104, !6, i64 108, !9, i64 112, !6, i64 120, !36, i64 128, !67, i64 136, !6, i64 144, !6, i64 148}
!69 = !{!68, !36, i64 40}
!70 = distinct !{!70, !46}
!71 = distinct !{!71, !46}
!72 = distinct !{!72, !46}
!73 = distinct !{!73, !46}
!74 = distinct !{!74, !46}
!75 = distinct !{null}
!76 = distinct !{!76, !46}
!77 = distinct !{!77, i1 false, !"LVerDomain"}
!78 = distinct !{!78, !77}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !46, !47, !48}
!81 = distinct !{!81, !46, !47}
!82 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!83 = !{!82, !14, i64 24}
!84 = !{!82, !6, i64 32}
!85 = !{!35, !14, i64 0}
!86 = !{!35, !6, i64 12}
!87 = !{!35, !6, i64 16}
!88 = !{!35, !6, i64 8}
!89 = !{!"p2 omnipotent char", !25, i64 0}
!90 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!91 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!92 = !{!"AVFrame", !5, i64 0, !5, i64 64, !89, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !90, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !91, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!93 = !{!92, !6, i64 112}
!94 = !{!92, !13, i64 136}
!95 = !{!92, !89, i64 96}
!96 = !{!38, !9, i64 6712}
!97 = !{!38, !37, i64 6704}
!98 = !{!"p1 float", !9, i64 0}
!99 = !{!98, !98, i64 0}
!100 = !{!78}
!101 = !{!79}
end_hunk_0
