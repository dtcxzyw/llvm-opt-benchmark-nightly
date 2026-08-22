Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hapdec?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%struct.TextureDSPContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.GetByteContext = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"hap\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Vidvox Hap\00", align 1
@.compoundliteral = internal constant [6 x i32] [i32 829448520, i32 896557384, i32 1500537160, i32 1097883976, i32 1299210568, i32 -1], align 4
@ff_hap_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 186, i32 12290, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 264, ptr null, ptr null, ptr null, ptr @hap_init, %union.anon { ptr @hap_decode }, ptr @hap_close, ptr null, ptr null, ptr null, ptr @.compoundliteral, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid video size %dx%d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"DXT1\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"DXT5\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"DXT5-YCoCg-scaled\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"RGTC1\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"DXT5-YCoCg-scaled / RGTC1\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%s texture\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Invalid section type in 2 textures mode %#04x.\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"uncompressed size mismatches\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Insufficient data\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Invalid texture format %#04x.\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"snappy\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"complex\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"%s compressor\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"Snappy uncompress error\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @hap_init(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.TextureDSPContext, align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !30
  %i.g = tail call i32 @av_image_check_size(i32 noundef %i.d, i32 noundef %i.f, i32 noundef 0, ptr noundef %0) #9 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  %i.i = load i32, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.e, align 4, !tbaa !30
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %i.i, i32 noundef %i.j) #9
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.k = add nsw i32 %i.i, 3
  %i.l = and i32 %i.k, -4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.l, ptr %i.m, align 8, !tbaa !31
  %i.n = load i32, ptr %i.e, align 4, !tbaa !30
  %i.o = add nsw i32 %i.n, 3
  %i.p = and i32 %i.o, -4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  store i32 %i.p, ptr %i.q, align 4, !tbaa !32
  call void @ff_texturedsp_init(ptr noundef nonnull %1) #9
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  store i32 1, ptr %i.r, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 188 ; 2 uses
  store i32 16, ptr %i.s, align 4, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.u = load i32, ptr %i.t, align 8, !tbaa !39   ; 2 uses
  %i.v = load i32, ptr %i.q, align 4, !tbaa !32
  %i.w = sdiv i32 %i.v, 4
  %i.x = icmp slt i32 %i.u, 1
  %..i = call i32 @llvm.smin.i32(i32 %i.u, i32 %i.w)
  %.0.i = select i1 %i.x, i32 1, i32 %..i         ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store i32 %.0.i, ptr %i.y, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !41
  %i.ab = add i32 %i.aa, -829448520               ; 2 uses
  %i.ac = call i32 @llvm.fshl.i32(i32 %i.ab, i32 %i.ab, i32 6)
  switch i32 %i.ac, label %bb.j [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 10, label %bb.f
    i32 4, label %bb.g
    i32 7, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i32 8, ptr %i.ad, align 8, !tbaa !42
  %i.ae = load ptr, ptr %1, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 119, ptr %i.ag, align 8, !tbaa !46
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i32 16, ptr %i.ah, align 8, !tbaa !42
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !45
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 26, ptr %i.al, align 8, !tbaa !46
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i32 16, ptr %i.am, align 8, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 119, ptr %i.aq, align 8, !tbaa !46
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i32 8, ptr %i.ar, align 8, !tbaa !42
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !49
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr %i.at, ptr %i.au, align 8, !tbaa !45
  store i32 4, ptr %i.s, align 4, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 8, ptr %i.av, align 8, !tbaa !46
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i32 16, ptr %i.aw, align 8, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store i32 8, ptr %i.ax, align 8, !tbaa !42
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !45
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !45
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 244
  store i32 16, ptr %2, align 4, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store i32 %.0.i, ptr %i.be, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 26, ptr %i.bf, align 8, !tbaa !46
  store i32 2, ptr %i.r, align 8, !tbaa !33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0 = phi ptr [ @.str.3, %bb.d ], [ @.str.4, %bb.e ], [ @.str.5, %bb.f ], [ @.str.6, %bb.g ], [ @.str.7, %bb.h ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.8, ptr noundef nonnull %.0) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i, %bb.b
  %.043 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.i ], [ -1128613112, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i32 %.043
}

; Function Attrs: nounwind uwtable
define internal i32 @hap_decode(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %4 = alloca %struct.GetByteContext, align 8     ; 7 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !53   ; 2 uses
  %i.n = icmp ne ptr %i.k, null
  %i.o = icmp sgt i32 %i.m, -1
  %or.cond.i = and i1 %i.n, %i.o
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 141) #9
  tail call void @abort() #10
  unreachable

bytestream2_init.exit:                            ; preds = %bb.a
  store ptr %i.k, ptr %i.i, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.p, align 8, !tbaa !55
  %i.q = zext nneg i32 %i.m to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !33
  %i.v = icmp eq i32 %i.u, 2
  br i1 %i.v, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bytestream2_init.exit
  %i.w = call i32 @ff_hap_parse_section_header(ptr noundef nonnull %i.i, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #9 ; 2 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.x = load i32, ptr %i.f, align 4, !tbaa !57   ; 2 uses
  %i.y = and i32 %i.x, 15
  %.not91 = icmp eq i32 %i.y, 13
  br i1 %.not91, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %i.x) #9
  br label %.loopexit

bb.f:                                             ; preds = %bb.d, %bytestream2_init.exit
  %.081 = phi i32 [ 0, %bytestream2_init.exit ], [ 4, %bb.d ]
  %i.z = call i32 @ff_thread_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #9 ; 2 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.ab = load i32, ptr %i.t, align 8, !tbaa !33
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph126, label %._crit_edge127

.lr.ph126:                                        ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 44 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph126, %.critedge
  %indvars.iv139 = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next140, %.critedge ] ; 2 uses
  %.1125 = phi i32 [ %.081, %.lr.ph126 ], [ %i.iq, %.critedge ] ; 3 uses
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !56
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !55  ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = icmp slt i32 %.1125, 0
  %..i.i = call i32 @llvm.smin.i32(i32 %.1125, i32 %i.av)
  %.0.i.i = select i1 %i.aw, i32 0, i32 %..i.i
  %i.ax = sext i32 %.0.i.i to i64
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.ax
  store ptr %i.ay, ptr %i.i, align 8, !tbaa !54
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !9   ; 15 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 92 ; 2 uses
  %i.bc = call i32 @ff_hap_parse_section_header(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.d) #9 ; 2 uses
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %bb.h, label %hap_parse_frame_header.exit

bb.h:                                             ; preds = %bb.g
  %i.bd = load i32, ptr %i.ad, align 4, !tbaa !41
  %i.be = add i32 %i.bd, -829448520               ; 2 uses
  %i.bf = call i32 @llvm.fshl.i32(i32 %i.be, i32 %i.be, i32 6)
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !57 ; 6 uses
  switch i32 %i.bf, label %.thread77.i [
    i32 0, label %bb.i
    i32 1, label %bb.j
    i32 10, label %bb.k
    i32 4, label %bb.l
    i32 7, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.bg = and i32 %.pre.i, 15                     ; 2 uses
  %.not67.i = icmp eq i32 %i.bg, 11
  br i1 %.not67.i, label %.thread77.i, label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.bh = and i32 %.pre.i, 15                     ; 2 uses
  %.not68.i = icmp eq i32 %i.bh, 14
  br i1 %.not68.i, label %.thread77.i, label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.bi = and i32 %.pre.i, 15                     ; 2 uses
  %.not69.i = icmp eq i32 %i.bi, 15
  br i1 %.not69.i, label %.thread77.i, label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.bj = and i32 %.pre.i, 15                     ; 2 uses
  %.not70.i = icmp eq i32 %i.bj, 1
  br i1 %.not70.i, label %.thread77.i, label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.bk = and i32 %.pre.i, 15                     ; 2 uses
  switch i32 %i.bk, label %bb.n [
    i32 1, label %.thread77.i
    i32 15, label %.thread77.i
  ]

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.pre-phi.i = phi i32 [ %i.bk, %bb.m ], [ %i.bj, %bb.l ], [ %i.bi, %bb.k ], [ %i.bh, %bb.j ], [ %i.bg, %bb.i ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %.pre-phi.i) #9
  br label %hap_parse_frame_header.exit.thread

.thread77.i:                                      ; preds = %bb.m, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.bl = trunc i32 %.pre.i to i8
  %trunc.i = and i8 %i.bl, -16
  switch i8 %trunc.i, label %hap_parse_frame_header.exit.thread [
    i8 -96, label %bb.o
    i8 -80, label %bb.o
    i8 -64, label %bb.r
  ]

bb.o:                                             ; preds = %.thread77.i, %.thread77.i
  %i.bm = call i32 @ff_hap_set_chunk_count(ptr noundef nonnull %i.az, i32 noundef 1, i32 noundef 1) #9 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.p, label %._crit_edge91.i

._crit_edge91.i:                                  ; preds = %bb.o
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %.pre92.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !58
  %.pre93.i = load i32, ptr %.pre92.i, align 8, !tbaa !59
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bo = load i32, ptr %i.d, align 4, !tbaa !57
  %i.bp = and i32 %i.bo, 240                      ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !58 ; 3 uses
  store i32 %i.bp, ptr %i.br, align 8, !tbaa !59
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 0, ptr %i.bs, align 4, !tbaa !61
  %i.bt = load i32, ptr %i.bb, align 4, !tbaa !62
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !63
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge91.i
  %i.bw = phi i32 [ %.pre93.i, %._crit_edge91.i ], [ %i.bp, %bb.p ]
  %i.bx = icmp eq i32 %i.bw, 160
  %.str.16..str.17.i = select i1 %i.bx, ptr @.str.16, ptr @.str.17
  br label %bb.an

bb.r:                                             ; preds = %.thread77.i
  %i.by = call i32 @ff_hap_parse_section_header(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #9 ; 2 uses
  %i.bz = icmp eq i32 %i.by, 0
  %i.ca = load i32, ptr %i.d, align 4
  %i.cb = icmp ne i32 %i.ca, 1
  %or.cond.i95 = select i1 %i.bz, i1 %i.cb, i1 false
  %spec.store.select.i = select i1 %or.cond.i95, i32 -1094995529, i32 %i.by ; 2 uses
  %i.cc = icmp eq i32 %spec.store.select.i, 0
  br i1 %i.cc, label %bb.s, label %hap_parse_frame_header.exit

bb.s:                                             ; preds = %bb.r
  %i.cd = load i32, ptr %i.c, align 4, !tbaa !57  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph124.i, label %hap_parse_decode_instructions.exit

.lr.ph124.i:                                      ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.i, %.lr.ph124.i
  %.059123.i = phi i32 [ 0, %.lr.ph124.i ], [ %.160.i, %.loopexit.i ] ; 5 uses
  %.062122.i = phi i32 [ 0, %.lr.ph124.i ], [ %.163.i, %.loopexit.i ] ; 6 uses
  %.065121.i = phi i32 [ 0, %.lr.ph124.i ], [ %.166.i, %.loopexit.i ] ; 6 uses
  %.068120.i = phi i32 [ 1, %.lr.ph124.i ], [ %.169.i, %.loopexit.i ] ; 4 uses
  %.071119.i = phi i32 [ %i.cd, %.lr.ph124.i ], [ %i.fs, %.loopexit.i ]
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !56
  %i.ci = load ptr, ptr %i.ba, align 8, !tbaa !54
  %i.cj = call i32 @ff_hap_parse_section_header(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9 ; 2 uses
  %.not83.i = icmp eq i32 %i.cj, 0
  br i1 %.not83.i, label %bb.u, label %hap_parse_decode_instructions.exit

bb.u:                                             ; preds = %bb.t
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %.neg99.i = sub i64 %i.cl, %i.ck
  %.neg100.i = trunc i64 %.neg99.i to i32
  %i.cm = load ptr, ptr %i.cf, align 8, !tbaa !56
  %i.cn = load ptr, ptr %i.ba, align 8, !tbaa !54
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = load i32, ptr %i.b, align 4, !tbaa !57
  %.pre.i101 = load i32, ptr %i.a, align 4, !tbaa !57 ; 4 uses
  switch i32 %i.cs, label %.loopexit.i [
    i32 2, label %bb.v
    i32 3, label %bb.z
    i32 4, label %bb.af
  ]

bb.v:                                             ; preds = %bb.u
  %i.ct = call i32 @ff_hap_set_chunk_count(ptr noundef nonnull %i.az, i32 noundef %.pre.i101, i32 noundef %.068120.i) #9 ; 2 uses
  %.not86.i = icmp eq i32 %i.ct, 0
  br i1 %.not86.i, label %.preheader102.i, label %hap_parse_decode_instructions.exit

.preheader102.i:                                  ; preds = %bb.v
  %i.cu = load i32, ptr %i.a, align 4, !tbaa !57  ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.lr.ph117.i, label %.loopexit.i

.lr.ph117.i:                                      ; preds = %.preheader102.i
  %i.cw = load ptr, ptr %i.cf, align 8, !tbaa !56 ; 3 uses
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = load ptr, ptr %i.cg, align 8, !tbaa !58
  %.promoted118.i = load ptr, ptr %i.ba, align 8, !tbaa !64
  br label %bb.w

bb.w:                                             ; preds = %bytestream2_get_byte.exit.i, %.lr.ph117.i
  %indvars.iv142.i = phi i64 [ 0, %.lr.ph117.i ], [ %indvars.iv.next143.i, %bytestream2_get_byte.exit.i ] ; 2 uses
  %i.cz = phi ptr [ %.promoted118.i, %.lr.ph117.i ], [ %i.dh, %bytestream2_get_byte.exit.i ] ; 3 uses
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.cx, %i.da
  %i.dc = icmp slt i64 %i.db, 1
  br i1 %i.dc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store ptr %i.cw, ptr %i.ba, align 8, !tbaa !54
  br label %bytestream2_get_byte.exit.i

bb.y:                                             ; preds = %bb.w
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 1 ; 2 uses
  store ptr %i.dd, ptr %i.ba, align 8, !tbaa !64
  %i.de = load i8, ptr %i.cz, align 1, !tbaa !65
  %i.df = zext i8 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 4
  br label %bytestream2_get_byte.exit.i

bytestream2_get_byte.exit.i:                      ; preds = %bb.y, %bb.x
  %i.dh = phi ptr [ %i.cw, %bb.x ], [ %i.dd, %bb.y ]
  %.0.i.i108 = phi i32 [ 0, %bb.x ], [ %i.dg, %bb.y ]
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %i.cy, i64 %indvars.iv142.i
  store i32 %.0.i.i108, ptr %i.di, align 8, !tbaa !59
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %i.dj = load i32, ptr %i.a, align 4, !tbaa !57  ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next143.i, %i.dk
  br i1 %i.dl, label %bb.w, label %.loopexit.i, !llvm.loop !66

bb.z:                                             ; preds = %bb.u
  %i.dm = sdiv i32 %.pre.i101, 4
  %i.dn = call i32 @ff_hap_set_chunk_count(ptr noundef nonnull %i.az, i32 noundef %i.dm, i32 noundef %.068120.i) #9 ; 2 uses
  %.not85.i = icmp eq i32 %i.dn, 0
  br i1 %.not85.i, label %.preheader103.i, label %hap_parse_decode_instructions.exit

.preheader103.i:                                  ; preds = %bb.z
  %i.do = load i32, ptr %i.a, align 4, !tbaa !57  ; 5 uses
  %i.dp = icmp sgt i32 %i.do, 3
  br i1 %i.dp, label %.lr.ph114.i, label %.loopexit.i

.lr.ph114.i:                                      ; preds = %.preheader103.i
  %i.dq = lshr i32 %i.do, 2                       ; 3 uses
  %i.dr = load ptr, ptr %i.cf, align 8, !tbaa !56 ; 6 uses
  %i.ds = ptrtoint ptr %i.dr to i64               ; 3 uses
  %i.dt = load ptr, ptr %i.cg, align 8, !tbaa !58 ; 3 uses
  %.promoted115.i = load ptr, ptr %i.ba, align 8, !tbaa !64 ; 2 uses
  %wide.trip.count.i106 = zext nneg i32 %i.dq to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i106, 1
  %i.du = icmp eq i32 %i.dq, 1
  br i1 %i.du, label %.epil.preheader, label %.lr.ph114.i.new

.lr.ph114.i.new:                                  ; preds = %.lr.ph114.i
  %unroll_iter = and i64 %wide.trip.count.i106, 536870910
  br label %bb.aa

bb.aa:                                            ; preds = %bytestream2_get_le32.exit89.i.1, %.lr.ph114.i.new
  %indvars.iv139.i = phi i64 [ 0, %.lr.ph114.i.new ], [ %indvars.iv.next140.i.1, %bytestream2_get_le32.exit89.i.1 ] ; 3 uses
  %i.dv = phi ptr [ %.promoted115.i, %.lr.ph114.i.new ], [ %i.el, %bytestream2_get_le32.exit89.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph114.i.new ], [ %niter.next.1, %bytestream2_get_le32.exit89.i.1 ]
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.ds, %i.dw
  %i.dy = icmp slt i64 %i.dx, 4
  br i1 %i.dy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.dr, ptr %i.ba, align 8, !tbaa !54
  br label %bytestream2_get_le32.exit89.i

bb.ac:                                            ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  store ptr %i.dz, ptr %i.ba, align 8, !tbaa !64
  %i.ea = load i32, ptr %i.dv, align 1, !tbaa !65
  %i.eb = zext i32 %i.ea to i64
  br label %bytestream2_get_le32.exit89.i

bytestream2_get_le32.exit89.i:                    ; preds = %bb.ac, %bb.ab
  %i.ec = phi ptr [ %i.dr, %bb.ab ], [ %i.dz, %bb.ac ] ; 3 uses
  %.0.i88.i = phi i64 [ 0, %bb.ab ], [ %i.eb, %bb.ac ]
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %indvars.iv139.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %.0.i88.i, ptr %i.ee, align 8, !tbaa !63
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = sub i64 %i.ds, %i.ef
  %i.eh = icmp slt i64 %i.eg, 4
  br i1 %i.eh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bytestream2_get_le32.exit89.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 4 ; 2 uses
  store ptr %i.ei, ptr %i.ba, align 8, !tbaa !64
  %i.ej = load i32, ptr %i.ec, align 1, !tbaa !65
  %i.ek = zext i32 %i.ej to i64
  br label %bytestream2_get_le32.exit89.i.1

bb.ae:                                            ; preds = %bytestream2_get_le32.exit89.i
  store ptr %i.dr, ptr %i.ba, align 8, !tbaa !54
  br label %bytestream2_get_le32.exit89.i.1

bytestream2_get_le32.exit89.i.1:                  ; preds = %bb.ae, %bb.ad
  %i.el = phi ptr [ %i.dr, %bb.ae ], [ %i.ei, %bb.ad ] ; 2 uses
  %.0.i88.i.1 = phi i64 [ 0, %bb.ae ], [ %i.ek, %bb.ad ]
  %i.em = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %indvars.iv139.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  store i64 %.0.i88.i.1, ptr %i.en, align 8, !tbaa !63
  %indvars.iv.next140.i.1 = add nuw nsw i64 %indvars.iv139.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit190.unr-lcssa, label %bb.aa, !llvm.loop !68

bb.af:                                            ; preds = %bb.u
  %i.eo = sdiv i32 %.pre.i101, 4
  %i.ep = call i32 @ff_hap_set_chunk_count(ptr noundef nonnull %i.az, i32 noundef %i.eo, i32 noundef %.068120.i) #9 ; 2 uses
  %.not84.i = icmp eq i32 %i.ep, 0
  br i1 %.not84.i, label %.preheader105.i, label %hap_parse_decode_instructions.exit

.preheader105.i:                                  ; preds = %bb.af
  %i.eq = load i32, ptr %i.a, align 4, !tbaa !57  ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 3
  br i1 %i.er, label %.lr.ph.i103, label %.loopexit.i

.lr.ph.i103:                                      ; preds = %.preheader105.i
  %i.es = load ptr, ptr %i.cf, align 8, !tbaa !56 ; 3 uses
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = load ptr, ptr %i.cg, align 8, !tbaa !58
  %.promoted.i = load ptr, ptr %i.ba, align 8, !tbaa !64
  br label %bb.ag

bb.ag:                                            ; preds = %bytestream2_get_le32.exit.i, %.lr.ph.i103
  %indvars.iv.i104 = phi i64 [ 0, %.lr.ph.i103 ], [ %indvars.iv.next.i105, %bytestream2_get_le32.exit.i ] ; 2 uses
  %i.ev = phi ptr [ %.promoted.i, %.lr.ph.i103 ], [ %i.fb, %bytestream2_get_le32.exit.i ] ; 3 uses
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = sub i64 %i.et, %i.ew
  %i.ey = icmp slt i64 %i.ex, 4
  br i1 %i.ey, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.es, ptr %i.ba, align 8, !tbaa !54
  br label %bytestream2_get_le32.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 4 ; 2 uses
  store ptr %i.ez, ptr %i.ba, align 8, !tbaa !64
  %i.fa = load i32, ptr %i.ev, align 1, !tbaa !65
  br label %bytestream2_get_le32.exit.i

bytestream2_get_le32.exit.i:                      ; preds = %bb.ai, %bb.ah
  %i.fb = phi ptr [ %i.es, %bb.ah ], [ %i.ez, %bb.ai ]
  %.0.i87.i = phi i32 [ 0, %bb.ah ], [ %i.fa, %bb.ai ]
  %i.fc = getelementptr inbounds nuw [32 x i8], ptr %i.eu, i64 %indvars.iv.i104
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store i32 %.0.i87.i, ptr %i.fd, align 4, !tbaa !61
  %indvars.iv.next.i105 = add nuw nsw i64 %indvars.iv.i104, 1 ; 2 uses
  %i.fe = load i32, ptr %i.a, align 4, !tbaa !57  ; 2 uses
  %i.ff = sdiv i32 %i.fe, 4
  %i.fg = sext i32 %i.ff to i64
  %i.fh = icmp slt i64 %indvars.iv.next.i105, %i.fg
  br i1 %i.fh, label %bb.ag, label %.loopexit.i, !llvm.loop !69

.loopexit.i.loopexit190.unr-lcssa:                ; preds = %bytestream2_get_le32.exit89.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit190.unr-lcssa, %.lr.ph114.i
  %indvars.iv139.i.epil.init = phi i64 [ 0, %.lr.ph114.i ], [ %indvars.iv.next140.i.1, %.loopexit.i.loopexit190.unr-lcssa ]
  %.epil.init = phi ptr [ %.promoted115.i, %.lr.ph114.i ], [ %i.el, %.loopexit.i.loopexit190.unr-lcssa ] ; 3 uses
  %lcmp.mod200 = trunc i32 %i.dq to i1
  call void @llvm.assume(i1 %lcmp.mod200)
  %i.fi = ptrtoint ptr %.epil.init to i64
  %i.fj = sub i64 %i.ds, %i.fi
  %i.fk = icmp slt i64 %i.fj, 4
  br i1 %i.fk, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.epil.preheader
  %i.fl = getelementptr inbounds nuw i8, ptr %.epil.init, i64 4
  store ptr %i.fl, ptr %i.ba, align 8, !tbaa !64
  %i.fm = load i32, ptr %.epil.init, align 1, !tbaa !65
  %i.fn = zext i32 %i.fm to i64
  br label %bytestream2_get_le32.exit89.i.epil

bb.ak:                                            ; preds = %.epil.preheader
  store ptr %i.dr, ptr %i.ba, align 8, !tbaa !54
  br label %bytestream2_get_le32.exit89.i.epil

bytestream2_get_le32.exit89.i.epil:               ; preds = %bb.ak, %bb.aj
  %.0.i88.i.epil = phi i64 [ 0, %bb.ak ], [ %i.fn, %bb.aj ]
  %i.fo = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %indvars.iv139.i.epil.init
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i64 %.0.i88.i.epil, ptr %i.fp, align 8, !tbaa !63
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bytestream2_get_le32.exit.i, %bytestream2_get_le32.exit89.i.epil, %.loopexit.i.loopexit190.unr-lcssa, %bytestream2_get_byte.exit.i, %.preheader105.i, %.preheader103.i, %.preheader102.i, %bb.u
  %i.fq = phi i32 [ %i.do, %bytestream2_get_le32.exit89.i.epil ], [ %i.do, %.preheader103.i ], [ %i.cu, %.preheader102.i ], [ %i.eq, %.preheader105.i ], [ %.pre.i101, %bb.u ], [ %i.dj, %bytestream2_get_byte.exit.i ], [ %i.do, %.loopexit.i.loopexit190.unr-lcssa ], [ %i.fe, %bytestream2_get_le32.exit.i ]
  %.169.i = phi i32 [ 0, %bytestream2_get_le32.exit89.i.epil ], [ 0, %.preheader103.i ], [ 0, %.preheader102.i ], [ 0, %.preheader105.i ], [ %.068120.i, %bb.u ], [ 0, %bytestream2_get_byte.exit.i ], [ 0, %.loopexit.i.loopexit190.unr-lcssa ], [ 0, %bytestream2_get_le32.exit.i ]
  %.166.i = phi i32 [ %.065121.i, %bytestream2_get_le32.exit89.i.epil ], [ %.065121.i, %.preheader103.i ], [ %.065121.i, %.preheader102.i ], [ 1, %.preheader105.i ], [ %.065121.i, %bb.u ], [ %.065121.i, %bytestream2_get_byte.exit.i ], [ %.065121.i, %.loopexit.i.loopexit190.unr-lcssa ], [ 1, %bytestream2_get_le32.exit.i ] ; 2 uses
  %.163.i = phi i32 [ %.062122.i, %bytestream2_get_le32.exit89.i.epil ], [ %.062122.i, %.preheader103.i ], [ 1, %.preheader102.i ], [ %.062122.i, %.preheader105.i ], [ %.062122.i, %bb.u ], [ 1, %bytestream2_get_byte.exit.i ], [ %.062122.i, %.loopexit.i.loopexit190.unr-lcssa ], [ %.062122.i, %bytestream2_get_le32.exit.i ] ; 2 uses
  %.160.i = phi i32 [ 1, %bytestream2_get_le32.exit89.i.epil ], [ 1, %.preheader103.i ], [ %.059123.i, %.preheader102.i ], [ %.059123.i, %.preheader105.i ], [ %.059123.i, %bb.u ], [ %.059123.i, %bytestream2_get_byte.exit.i ], [ 1, %.loopexit.i.loopexit190.unr-lcssa ], [ %.059123.i, %bytestream2_get_le32.exit.i ] ; 2 uses
  %.neg.i = add i32 %.071119.i, %.neg100.i
  %i.fr = add i32 %.neg.i, %i.cr
  %i.fs = sub i32 %i.fr, %i.fq                    ; 2 uses
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %bb.t, label %._crit_edge.i102, !llvm.loop !70

._crit_edge.i102:                                 ; preds = %.loopexit.i
  %i.fu = icmp eq i32 %.160.i, 0
  %i.fv = icmp eq i32 %.163.i, 0
  %.not170.i = select i1 %i.fu, i1 true, i1 %i.fv ; 2 uses
  %i.fw = icmp ne i32 %.166.i, 0
  %brmerge.i = select i1 %.not170.i, i1 true, i1 %i.fw
  %.mux.i = select i1 %.not170.i, i32 -1094995529, i32 0
  br i1 %brmerge.i, label %hap_parse_decode_instructions.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i102
  %i.fx = getelementptr inbounds nuw i8, ptr %i.az, i64 44
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !71 ; 2 uses
  %.not82127.i = icmp sgt i32 %i.fy, 0
  br i1 %.not82127.i, label %.lr.ph130.i, label %hap_parse_decode_instructions.exit

.lr.ph130.i:                                      ; preds = %.preheader.i
  %i.fz = load ptr, ptr %i.cg, align 8, !tbaa !58
  %wide.trip.count148.i = zext nneg i32 %i.fy to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.lr.ph130.i
  %indvars.iv145.i = phi i64 [ 0, %.lr.ph130.i ], [ %indvars.iv.next146.i, %bb.am ] ; 2 uses
  %.0129.i = phi i64 [ 0, %.lr.ph130.i ], [ %i.gh, %bb.am ] ; 3 uses
  %i.ga = trunc i64 %.0129.i to i32
  %i.gb = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %indvars.iv145.i ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  store i32 %i.ga, ptr %i.gc, align 4, !tbaa !61
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !63 ; 2 uses
  %i.gf = sub i64 4294967295, %.0129.i
  %i.gg = icmp ugt i64 %i.ge, %i.gf
  br i1 %i.gg, label %hap_parse_decode_instructions.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gh = add i64 %i.ge, %.0129.i
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1 ; 2 uses
  %exitcond149.not.i = icmp eq i64 %indvars.iv.next146.i, %wide.trip.count148.i
  br i1 %exitcond149.not.i, label %hap_parse_decode_instructions.exit, label %bb.al, !llvm.loop !72

hap_parse_decode_instructions.exit:               ; preds = %bb.t, %bb.v, %bb.z, %bb.af, %bb.al, %bb.am, %bb.s, %._crit_edge.i102, %.preheader.i
  %.376.i = phi i32 [ -1094995529, %bb.al ], [ %.mux.i, %._crit_edge.i102 ], [ 0, %.preheader.i ], [ -1094995529, %bb.s ], [ 0, %bb.am ], [ %i.ep, %bb.af ], [ %i.ct, %bb.v ], [ %i.cj, %bb.t ], [ %i.dn, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.an

bb.an:                                            ; preds = %hap_parse_decode_instructions.exit, %bb.q
  %.059.i = phi ptr [ @.str.18, %hap_parse_decode_instructions.exit ], [ %.str.16..str.17.i, %bb.q ]
  %.157.i = phi i32 [ %.376.i, %hap_parse_decode_instructions.exit ], [ %i.bm, %bb.q ] ; 2 uses
  %.not73.i = icmp eq i32 %.157.i, 0
  br i1 %.not73.i, label %bb.ao, label %hap_parse_frame_header.exit

bb.ao:                                            ; preds = %bb.an
  %i.gi = getelementptr inbounds nuw i8, ptr %i.az, i64 72 ; 3 uses
  store i64 0, ptr %i.gi, align 8, !tbaa !73
  %i.gj = getelementptr inbounds nuw i8, ptr %i.az, i64 44 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !71 ; 2 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %.lr.ph.i, label %hap_parse_frame_header.exit.thread110

.lr.ph.i:                                         ; preds = %bb.ao
  %i.gm = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.gn = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  br label %bb.ap

bb.ap:                                            ; preds = %bb.av, %.lr.ph.i
  %i.go = phi i32 [ %i.gk, %.lr.ph.i ], [ %i.hw, %bb.av ]
  %i.gp = phi i64 [ 0, %.lr.ph.i ], [ %i.hz, %bb.av ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.av ] ; 2 uses
  %i.gq = load ptr, ptr %i.gm, align 8, !tbaa !58
  %i.gr = getelementptr inbounds nuw [32 x i8], ptr %i.gq, i64 %indvars.iv.i ; 6 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !61
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !63 ; 3 uses
  %i.gx = add i64 %i.gw, %i.gu
  %i.gy = load ptr, ptr %i.gn, align 8, !tbaa !56
  %i.gz = load ptr, ptr %i.ba, align 8, !tbaa !54 ; 3 uses
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb
  %sext.i = shl i64 %i.hc, 32
  %i.hd = ashr exact i64 %sext.i, 32
  %i.he = icmp ugt i64 %i.gx, %i.hd
  br i1 %i.he, label %hap_parse_frame_header.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hf = trunc i64 %i.gp to i32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store i32 %i.hf, ptr %i.hg, align 8, !tbaa !74
  %i.hh = load i32, ptr %i.gr, align 8, !tbaa !59
  switch i32 %i.hh, label %hap_parse_frame_header.exit.thread [
    i32 176, label %bb.ar
    i32 160, label %bb.au
  ]

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.hi = load i64, ptr %i.gv, align 8, !tbaa !63 ; 2 uses
  %i.hj = icmp ne ptr %i.gz, null
  %i.hk = and i64 %i.hi, 2147483648
  %i.hl = icmp eq i64 %i.hk, 0
  %or.cond.i.i = and i1 %i.hj, %i.hl
  br i1 %or.cond.i.i, label %bytestream2_init.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 141) #9
  call void @abort() #10
  unreachable

bytestream2_init.exit.i:                          ; preds = %bb.ar
  %i.hm = load i32, ptr %i.gs, align 4, !tbaa !61
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.hn ; 3 uses
  store ptr %i.ho, ptr %4, align 8, !tbaa !54
  store ptr %i.ho, ptr %i.ae, align 8, !tbaa !55
  %i.hp = and i64 %i.hi, 2147483647
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hp
  store ptr %i.hq, ptr %i.af, align 8, !tbaa !56
  %i.hr = call i64 @ff_snappy_peek_uncompressed_length(ptr noundef nonnull %4) #9 ; 3 uses
  %i.hs = icmp sgt i64 %i.hr, -1
  br i1 %i.hs, label %.thread83.i, label %bb.at

.thread83.i:                                      ; preds = %bytestream2_init.exit.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gr, i64 24 ; 2 uses
  store i64 %i.hr, ptr %i.ht, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %.pre95.i = load i64, ptr %i.ht, align 8, !tbaa !75
  %.pre96.i = load i64, ptr %i.gi, align 8, !tbaa !73
  %.pre97.i = load i32, ptr %i.gj, align 4, !tbaa !71
  br label %bb.av

bb.at:                                            ; preds = %bytestream2_init.exit.i
  %i.hu = trunc i64 %i.hr to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %hap_parse_frame_header.exit

bb.au:                                            ; preds = %bb.aq
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  store i64 %i.gw, ptr %i.hv, align 8, !tbaa !75
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.thread83.i
  %i.hw = phi i32 [ %.pre97.i, %.thread83.i ], [ %i.go, %bb.au ] ; 2 uses
  %i.hx = phi i64 [ %.pre96.i, %.thread83.i ], [ %i.gp, %bb.au ]
  %i.hy = phi i64 [ %.pre95.i, %.thread83.i ], [ %i.gw, %bb.au ]
  %i.hz = add i64 %i.hy, %i.hx                    ; 2 uses
  store i64 %i.hz, ptr %i.gi, align 8, !tbaa !73
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ia = sext i32 %i.hw to i64
  %i.ib = icmp slt i64 %indvars.iv.next.i, %i.ia
  br i1 %i.ib, label %bb.ap, label %hap_parse_frame_header.exit.thread110, !llvm.loop !76

hap_parse_frame_header.exit.thread110:            ; preds = %bb.av, %bb.ao
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.19, ptr noundef nonnull %.059.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.aw

hap_parse_frame_header.exit.thread:               ; preds = %.thread77.i, %bb.ap, %bb.aq, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %.loopexit

hap_parse_frame_header.exit:                      ; preds = %bb.g, %bb.r, %bb.an, %bb.at
  %.4.i = phi i32 [ %.157.i, %bb.an ], [ %i.hu, %bb.at ], [ %i.bc, %bb.g ], [ %spec.store.select.i, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.ic = icmp slt i32 %.4.i, 0
  br i1 %i.ic, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %hap_parse_frame_header.exit.thread110, %hap_parse_frame_header.exit
  %i.id = load i64, ptr %i.ag, align 8, !tbaa !73 ; 2 uses
  %i.ie = load <2 x i32>, ptr %i.ah, align 8, !tbaa !57
  %i.if = sdiv <2 x i32> %i.ie, splat (i32 4)     ; 2 uses
  %i.ig = extractelement <2 x i32> %i.if, i64 0
  %i.ih = extractelement <2 x i32> %i.if, i64 1
  %i.ii = mul nsw i32 %i.ih, %i.ig
  %i.ij = getelementptr inbounds nuw [56 x i8], ptr %i.ai, i64 %indvars.iv139 ; 7 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !42 ; 2 uses
  %i.im = mul nsw i32 %i.ii, %i.il
  %i.in = sext i32 %i.im to i64
  %.not92 = icmp eq i64 %i.id, %i.in
  br i1 %.not92, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.10) #9
  br label %.loopexit

bb.ay:                                            ; preds = %bb.aw
  %i.io = load i32, ptr %i.aj, align 4, !tbaa !62 ; 2 uses
  %i.ip = add i32 %.1125, 4
  %i.iq = add i32 %i.ip, %i.io
  %i.ir = load i32, ptr %i.ak, align 4, !tbaa !71 ; 2 uses
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %.lr.ph.i97, label %hap_can_use_tex_in_place.exit

.lr.ph.i97:                                       ; preds = %bb.ay
  %i.it = load ptr, ptr %i.al, align 8, !tbaa !58
  %wide.trip.count.i = zext nneg i32 %i.ir to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.bb, %.lr.ph.i97
  %indvars.iv.i98 = phi i64 [ 0, %.lr.ph.i97 ], [ %indvars.iv.next.i100, %bb.bb ] ; 2 uses
  %.015.i = phi i64 [ 0, %.lr.ph.i97 ], [ %i.jb, %bb.bb ] ; 2 uses
  %i.iu = getelementptr inbounds nuw [32 x i8], ptr %i.it, i64 %indvars.iv.i98 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !61
  %i.ix = zext i32 %i.iw to i64
  %.not.i99 = icmp eq i64 %.015.i, %i.ix
  br i1 %.not.i99, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.iy = load i32, ptr %i.iu, align 8, !tbaa !59
  %.not13.i = icmp eq i32 %i.iy, 160
  br i1 %.not13.i, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !63
  %i.jb = add i64 %i.ja, %.015.i
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i98, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i100, %wide.trip.count.i
  br i1 %exitcond.not.i, label %hap_can_use_tex_in_place.exit, label %bb.az, !llvm.loop !77

hap_can_use_tex_in_place.exit:                    ; preds = %bb.bb, %bb.ay
  %i.jc = load ptr, ptr %i.i, align 8, !tbaa !78  ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  store ptr %i.jc, ptr %i.jd, align 8, !tbaa !65
  %i.je = load ptr, ptr %i.s, align 8, !tbaa !56
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.jc to i64
  %i.jh = sub i64 %i.jf, %i.jg
  %i.ji = trunc i64 %i.jh to i32
  %spec.select = call i32 @llvm.smin.i32(i32 %i.io, i32 %i.ji)
  %i.jj = load <2 x i32>, ptr %i.ah, align 8, !tbaa !57
  %i.jk = sdiv <2 x i32> %i.jj, splat (i32 4)     ; 2 uses
  %i.jl = extractelement <2 x i32> %i.jk, i64 0
  %i.jm = mul i32 %i.jl, %i.il
  %i.jn = extractelement <2 x i32> %i.jk, i64 1
  %i.jo = mul i32 %i.jm, %i.jn
  %.not94 = icmp slt i32 %spec.select, %i.jo
  br i1 %.not94, label %bb.bc, label %.critedge

bb.bc:                                            ; preds = %hap_can_use_tex_in_place.exit
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.11) #9
  br label %.loopexit

bb.bd:                                            ; preds = %bb.az, %bb.ba
  %i.jp = call i32 @av_reallocp(ptr noundef nonnull %i.am, i64 noundef %i.id) #9 ; 2 uses
  %i.jq = icmp slt i32 %i.jp, 0
  br i1 %i.jq, label %.loopexit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jr = load ptr, ptr %i.am, align 8, !tbaa !79
  %i.js = load i64, ptr %i.ag, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr align 1 %i.jr, i8 0, i64 %i.js, i1 false)
  %i.jt = load ptr, ptr %i.an, align 8, !tbaa !80
  %i.ju = load ptr, ptr %i.ao, align 8, !tbaa !81
  %i.jv = load i32, ptr %i.ak, align 4, !tbaa !71
  %i.jw = call i32 %i.jt(ptr noundef nonnull %0, ptr noundef nonnull @decompress_chunks_thread, ptr noundef null, ptr noundef %i.ju, i32 noundef %i.jv) #9 ; 0 uses
  %i.jx = load i32, ptr %i.ak, align 4, !tbaa !71 ; 2 uses
  %i.jy = icmp sgt i32 %i.jx, 0
  br i1 %i.jy, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.be
  %i.jz = load ptr, ptr %i.ao, align 8, !tbaa !81
  %wide.trip.count = zext nneg i32 %i.jx to i64
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bg
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bg, !llvm.loop !82

bb.bg:                                            ; preds = %.lr.ph, %bb.bf
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bf ] ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %indvars.iv
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !57 ; 2 uses
  %i.kc = icmp slt i32 %i.kb, 0
  br i1 %i.kc, label %.loopexit, label %bb.bf

._crit_edge:                                      ; preds = %bb.bf, %bb.be
  %i.kd = load ptr, ptr %i.am, align 8, !tbaa !79
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  store ptr %i.kd, ptr %i.ke, align 8, !tbaa !65
  br label %.critedge

.critedge:                                        ; preds = %hap_can_use_tex_in_place.exit, %._crit_edge
  %i.kf = load ptr, ptr %1, align 8, !tbaa !64
  store ptr %i.kf, ptr %i.ij, align 8, !tbaa !65
  %i.kg = load i32, ptr %i.ap, align 8, !tbaa !57
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store i64 %i.kh, ptr %i.ki, align 8, !tbaa !83
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.kk = load <2 x i32>, ptr %i.ah, align 8, !tbaa !57
  store <2 x i32> %i.kk, ptr %i.kj, align 8, !tbaa !57
  %i.kl = call i32 @ff_texturedsp_exec_decompress_threads(ptr noundef nonnull %0, ptr noundef nonnull %i.ij) #9 ; 0 uses
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %i.km = load i32, ptr %i.t, align 8, !tbaa !33
  %i.kn = sext i32 %i.km to i64
  %i.ko = icmp slt i64 %indvars.iv.next140, %i.kn
  br i1 %i.ko, label %bb.g, label %._crit_edge127, !llvm.loop !84

._crit_edge127:                                   ; preds = %.critedge, %.preheader
  store i32 1, ptr %2, align 4, !tbaa !57
  %i.kp = load i32, ptr %i.l, align 8, !tbaa !53
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bd, %hap_parse_frame_header.exit, %bb.bg, %hap_parse_frame_header.exit.thread, %bb.bc, %bb.f, %bb.c, %._crit_edge127, %bb.ax, %bb.e
  %.3 = phi i32 [ %i.kp, %._crit_edge127 ], [ -1094995529, %bb.e ], [ %i.w, %bb.c ], [ %i.z, %bb.f ], [ -1094995529, %bb.ax ], [ -1094995529, %bb.bc ], [ -1094995529, %hap_parse_frame_header.exit.thread ], [ %i.kb, %bb.bg ], [ %i.jp, %bb.bd ], [ %.4.i, %hap_parse_frame_header.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  ret i32 %.3
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @hap_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  tail call void @ff_hap_free_context(ptr noundef %i.b) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @av_image_check_size(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @ff_texturedsp_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_hap_parse_section_header(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_reallocp(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @decompress_chunks_thread(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 %3) #1 {
bb.a:
  %4 = alloca %struct.GetByteContext, align 8     ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds [32 x i8], ptr %i.e, i64 %i.f ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !74
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !61
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !63   ; 2 uses
  %i.v = icmp ne ptr %i.o, null
  %i.w = and i64 %i.u, 2147483648
  %i.x = icmp eq i64 %i.w, 0
  %or.cond.i = and i1 %i.v, %i.x
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 141) #9
  tail call void @abort() #10
  unreachable

bytestream2_init.exit:                            ; preds = %bb.a
  store ptr %i.s, ptr %4, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.s, ptr %i.y, align 8, !tbaa !55
  %i.z = and i64 %i.u, 2147483647                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !56
  %i.ac = load i32, ptr %i.g, align 8, !tbaa !59
  switch i32 %i.ac, label %bb.f [
    i32 176, label %bb.c
    i32 160, label %bb.e
  ]

bb.c:                                             ; preds = %bytestream2_init.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !73
  store i64 %i.ae, ptr %i.a, align 8, !tbaa !85
  %i.af = call i32 @ff_snappy_uncompress(ptr noundef nonnull %4, ptr noundef %i.m, ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.20) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.f

bb.e:                                             ; preds = %bytestream2_init.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.s, i64 %i.z, i1 false)
  br label %bb.f

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge, %bytestream2_init.exit, %bb.d
  %.1 = phi i32 [ %i.af, %bb.d ], [ 0, %bytestream2_init.exit ], [ 0, %.critedge ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %.1
}

declare i32 @ff_texturedsp_exec_decompress_threads(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare i32 @ff_hap_set_chunk_count(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @ff_snappy_peek_uncompressed_length(ptr noundef) local_unnamed_addr #3

declare i32 @ff_snappy_uncompress(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: cold
declare void @ff_hap_free_context(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 112}
!30 = !{!10, !6, i64 116}
!31 = !{!10, !6, i64 120}
!32 = !{!10, !6, i64 124}
!33 = !{!34, !6, i64 88}
!34 = !{!"HapContext", !11, i64 0, !35, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !36, i64 48, !26, i64 56, !16, i64 64, !15, i64 72, !15, i64 80, !6, i64 88, !6, i64 92, !37, i64 96, !7, i64 152}
!35 = !{!"GetByteContext", !16, i64 0, !16, i64 8, !16, i64 16}
!36 = !{!"p1 _ZTS8HapChunk", !12, i64 0}
!37 = !{!"TextureDSPThreadContext", !7, i64 0, !15, i64 8, !6, i64 16, !6, i64 20, !7, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !12, i64 48}
!38 = !{!37, !6, i64 36}
!39 = !{!10, !6, i64 656}
!40 = !{!37, !6, i64 40}
!41 = !{!10, !6, i64 28}
!42 = !{!37, !6, i64 32}
!43 = !{!44, !12, i64 0}
!44 = !{!"TextureDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112}
!45 = !{!37, !12, i64 48}
!46 = !{!10, !6, i64 136}
!47 = !{!44, !12, i64 40}
!48 = !{!44, !12, i64 56}
!49 = !{!44, !12, i64 80}
!50 = !{!44, !12, i64 88}
!51 = !{!52, !16, i64 24}
!52 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!53 = !{!52, !6, i64 32}
!54 = !{!35, !16, i64 0}
!55 = !{!35, !16, i64 16}
!56 = !{!35, !16, i64 8}
!57 = !{!6, !6, i64 0}
!58 = !{!34, !36, i64 48}
!59 = !{!60, !6, i64 0}
!60 = !{!"HapChunk", !6, i64 0, !6, i64 4, !15, i64 8, !6, i64 16, !15, i64 24}
!61 = !{!60, !6, i64 4}
!62 = !{!34, !6, i64 92}
!63 = !{!60, !15, i64 8}
!64 = !{!16, !16, i64 0}
!65 = !{!7, !7, i64 0}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = distinct !{!68, !67}
!69 = distinct !{!69, !67}
!70 = distinct !{!70, !67}
!71 = !{!34, !6, i64 44}
!72 = distinct !{!72, !67}
!73 = !{!34, !15, i64 72}
!74 = !{!60, !6, i64 16}
!75 = !{!60, !15, i64 24}
!76 = distinct !{!76, !67}
!77 = distinct !{!77, !67}
!78 = !{!34, !16, i64 8}
!79 = !{!34, !16, i64 64}
!80 = !{!10, !12, i64 680}
!81 = !{!34, !26, i64 56}
!82 = distinct !{!82, !67}
!83 = !{!37, !15, i64 8}
!84 = distinct !{!84, !67}
!85 = !{!15, !15, i64 0}
end_hunk_0
