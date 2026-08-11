loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"fmvc\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"FM Screen Capture Codec\00", align 1
@ff_fmvc_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 218, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 128, ptr null, ptr null, ptr null, ptr @decode_init, %union.anon { ptr @decode_frame }, ptr @decode_close, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Unsupported bitdepth %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Compression type %d\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1094995529, 1) i32 @decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29   ; 3 uses
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
  br label %bb.w

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i32 [ 28, %bb.c ], [ 3, %bb.b ], [ 39, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink, ptr %i.e, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !31
  %i.h = mul nsw i32 %i.g, %i.d
  %i.i = add nsw i32 %i.h, 31                     ; 2 uses
  %i.j = sdiv i32 %i.i, 32                        ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 %i.k, ptr %i.l, align 8, !tbaa !32
  %i.m = sdiv i32 %i.i, 2688                      ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  store i32 %i.m, ptr %i.n, align 8, !tbaa !37
  %i.o = srem i32 %i.j, 84                        ; 4 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp slt i32 %i.o, 37
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = add nsw i32 %i.o, 84
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.r = add nsw i32 %i.m, 1                      ; 2 uses
  store i32 %i.r, ptr %i.n, align 8, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %i.s = phi i32 [ %i.m, %bb.g ], [ %i.r, %bb.h ], [ %i.m, %bb.e ]
  %.0 = phi i32 [ %i.q, %bb.g ], [ %i.o, %bb.h ], [ 84, %bb.e ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !38   ; 2 uses
  %i.v = udiv i32 %i.u, 112                       ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 3 uses
  store i32 %i.v, ptr %i.w, align 4, !tbaa !39
  %i.x = urem i32 %i.u, 112                       ; 4 uses
  %.not103 = icmp eq i32 %i.x, 0
  br i1 %.not103, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = icmp samesign ult i32 %i.x, 49
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = add nuw nsw i32 %i.x, 112
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.aa = add nuw nsw i32 %i.v, 1                 ; 2 uses
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !39
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %i.ab = phi i32 [ %i.v, %bb.k ], [ %i.aa, %bb.l ], [ %i.v, %bb.i ]
  %.094 = phi i32 [ %i.z, %bb.k ], [ %i.x, %bb.l ], [ 112, %bb.i ] ; 4 uses
  %i.ac = mul nsw i32 %i.ab, %i.s                 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !40
  %.not104 = icmp eq i32 %i.ac, 0
  br i1 %.not104, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = zext i32 %i.ac to i64
  %i.af = tail call noalias ptr @av_calloc(i64 noundef %i.ae, i64 noundef 16) #7 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !41
  %.not105 = icmp eq ptr %i.af, null
  br i1 %.not105, label %bb.w, label %.preheader113

.preheader113:                                    ; preds = %bb.n
  %i.ah = load i32, ptr %i.w, align 4, !tbaa !39  ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.preheader.lr.ph, label %._crit_edge118.split

.preheader.lr.ph:                                 ; preds = %.preheader113
  %i.aj = load i32, ptr %i.n, align 8, !tbaa !37  ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  %i.al = add nsw i32 %i.ah, -1
  %i.am = add nsw i32 %i.aj, -1
  %i.an = mul nuw nsw i32 %.0, 112
  %i.ao = mul nuw nsw i32 %.094, 84
  %i.ap = mul nuw nsw i32 %.094, %.0
  br i1 %i.ak, label %.preheader, label %._crit_edge118.split

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.095117 = phi i64 [ %indvars.iv.next.a, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  %.097116 = phi i32 [ %i.ay, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.not108 = icmp eq i32 %.097116, %i.al          ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.preheader, %bb.v
  %indvars.iv.a = phi i64 [ %.095117, %.preheader ], [ %indvars.iv.next.a, %bb.v ] ; 2 uses
  %.096114 = phi i32 [ 0, %.preheader ], [ %i.ax, %bb.v ] ; 2 uses
  %.not109 = icmp eq i32 %.096114, %i.am          ; 2 uses
  %or.cond = select i1 %.not108, i1 %.not109, i1 false
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.af, i64 %indvars.iv.a ; 10 uses
  br i1 %or.cond, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not108, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 84, ptr %i.aq, align 4, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %.094, ptr %i.ar, align 4, !tbaa !44
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 %i.ao, ptr %i.as, align 4, !tbaa !45
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  br i1 %.not109, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %.0, ptr %i.aq, align 4, !tbaa !42
  store i32 112, ptr %i.at, align 4, !tbaa !44
  store i32 %i.an, ptr %i.au, align 4, !tbaa !45
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  store i32 84, ptr %i.aq, align 4, !tbaa !42
  store i32 112, ptr %i.at, align 4, !tbaa !44
  store i32 9408, ptr %i.au, align 4, !tbaa !45
  br label %bb.v

bb.u:                                             ; preds = %bb.o
  store i32 %.0, ptr %i.aq, align 4, !tbaa !42
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %.094, ptr %i.av, align 4, !tbaa !44
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 %i.ap, ptr %i.aw, align 4, !tbaa !45
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.t, %bb.s, %bb.u
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, 1 ; 2 uses
  %i.ax = add nuw nsw i32 %.096114, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ax, %i.aj
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.v
  %i.ay = add nuw nsw i32 %.097116, 1             ; 2 uses
  %exitcond120.not = icmp eq i32 %i.ay, %i.ah
  br i1 %exitcond120.not, label %._crit_edge118.split, label %.preheader, !llvm.loop !48

._crit_edge118.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader113
  %i.az = load i32, ptr %i.c, align 8, !tbaa !29
  %i.ba = ashr i32 %i.az, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !49
  %i.bc = load i32, ptr %i.f, align 8, !tbaa !31
  %i.bd = load i32, ptr %i.t, align 4, !tbaa !38
  %i.be = shl i32 %i.bc, 2
  %i.bf = mul i32 %i.be, %i.bd
  %i.bg = sext i32 %i.bf to i64                   ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !51
  %i.bj = tail call noalias ptr @av_mallocz(i64 noundef %i.bg) #7
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !52
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !51
  %i.bm = tail call noalias ptr @av_mallocz(i64 noundef %i.bl) #7 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !53
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !52
  %.not106 = icmp eq ptr %i.bo, null
  %.not107 = icmp eq ptr %i.bm, null
  %or.cond110 = select i1 %.not106, i1 true, i1 %.not107
  %spec.select = select i1 %or.cond110, i32 -12, i32 0
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge118.split, %bb.n, %bb.m, %bb.d
  %.098 = phi i32 [ -1094995529, %bb.d ], [ %spec.select, %._crit_edge118.split ], [ -12, %bb.n ], [ -1094995529, %bb.m ]
  ret i32 %.098
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 39 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !54   ; 3 uses
  %i.f = icmp slt i32 %i.e, 8
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56   ; 9 uses
  %.not212 = icmp eq ptr %i.h, null
  br i1 %.not212, label %bb.c, label %bytestream2_init.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 141) #7
  tail call void @abort() #8
  unreachable

bytestream2_init.exit:                            ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !57
  %i.j = zext nneg i32 %i.e to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 3 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !59
  %i.o = load i16, ptr %i.m, align 1, !tbaa !60
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %.preheader217, label %bytestream2_get_le16.exit192

.preheader217:                                    ; preds = %bytestream2_init.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !40   ; 4 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bytestream2_get_le16.exit188, label %.lr.ph225

.lr.ph225:                                        ; preds = %.preheader217
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41   ; 9 uses
  %wide.trip.count = zext i32 %i.r to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.u = icmp ult i32 %i.r, 8
  br i1 %i.u, label %.epil.preheader, label %.lr.ph225.new

.lr.ph225.new:                                    ; preds = %.lr.ph225
  %unroll_iter = and i64 %wide.trip.count, 4294967288
  br label %bb.m

bytestream2_get_le16.exit192:                     ; preds = %bytestream2_init.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 6 ; 2 uses
  store ptr %i.v, ptr %i.b, align 8, !tbaa !59
  %i.w = load i16, ptr %i.n, align 1, !tbaa !60   ; 2 uses
  %i.x = zext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.y, ptr %i.b, align 8, !tbaa !59
  %i.z = load i16, ptr %i.v, align 1, !tbaa !60
  %i.aa = zext i16 %i.z to i32
  %gepdiff = add nsw i32 %i.e, -8
  %i.ab = icmp ult i32 %gepdiff, %i.aa
  br i1 %i.ab, label %.thread, label %bb.d

bb.d:                                             ; preds = %bytestream2_get_le16.exit192
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !50 ; 2 uses
  %i.ag = icmp ne ptr %i.ad, null
  %i.ah = and i64 %i.af, 2147483648
  %i.ai = icmp eq i64 %i.ah, 0
  %or.cond.i196 = and i1 %i.ag, %i.ai
  br i1 %or.cond.i196, label %bytestream2_init_writer.exit197, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 151) #7
  tail call void @abort() #8
  unreachable

bytestream2_init_writer.exit197:                  ; preds = %bb.d
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !61
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !62
  %i.ak = and i64 %i.af, 2147483647
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.al, ptr %i.am, align 8, !tbaa !63
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 0, ptr %i.an, align 8, !tbaa !64
  switch i16 %i.w, label %bb.h [
    i16 1, label %bb.f
    i16 2, label %bb.g
  ]

bb.f:                                             ; preds = %bytestream2_init_writer.exit197
  tail call fastcc void @decode_type1(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  br label %bb.i

bb.g:                                             ; preds = %bytestream2_init_writer.exit197
  tail call fastcc void @decode_type2(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  br label %bb.i

bb.h:                                             ; preds = %bytestream2_init_writer.exit197
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i32 noundef %i.x) #7
  br label %.thread

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ao = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #7 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !65
  %i.as = or i32 %i.ar, 2
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !65
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 1, ptr %i.at, align 8, !tbaa !70
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !38 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j
  %i.az = load ptr, ptr %1, align 8, !tbaa !59
  %i.ba = add nsw i32 %i.ax, -1
  %i.bb = load i32, ptr %i.av, align 8, !tbaa !71
  %i.bc = mul nsw i32 %i.ba, %i.bb
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %i.az, i64 %i.bd
  %i.bf = load ptr, ptr %i.ac, align 8, !tbaa !52
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.0154221 = phi ptr [ %i.bf, %.lr.ph ], [ %i.by, %bb.l ] ; 2 uses
  %.0168220 = phi ptr [ %i.be, %.lr.ph ], [ %i.cb, %bb.l ] ; 2 uses
  %i.bi = load i32, ptr %i.aw, align 8, !tbaa !31
  %i.bj = load i32, ptr %i.bg, align 8, !tbaa !49
  %i.bk = mul nsw i32 %i.bj, %i.bi
  %i.bl = sext i32 %i.bk to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0168220, ptr align 1 %.0154221, i64 %i.bl, i1 false)
  %i.bm = load i64, ptr %i.bh, align 8, !tbaa !32 ; 2 uses
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.bo = load ptr, ptr %i.aj, align 8, !tbaa !62
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %sext = shl i64 %i.br, 32
  %i.bs = ashr exact i64 %sext, 32
  %i.bt = shl nuw nsw i64 %indvars.iv, 2
  %i.bu = mul i64 %i.bt, %i.bm
  %i.bv = icmp sgt i64 %i.bu, %i.bs
  br i1 %i.bv, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
end_hunk_0
