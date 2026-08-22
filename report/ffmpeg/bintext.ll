Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/bintext?download=true
inline.NumInlined: 7
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"bintext\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Binary text\00", align 1
@ff_bintext_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 98307, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 96, ptr null, ptr null, ptr null, ptr @decode_init, %union.anon { ptr @decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"xbin\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"eXtended BINary text\00", align 1
@ff_xbin_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.2, ptr @.str.3, i32 0, i32 98308, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 96, ptr null, ptr null, ptr null, ptr @decode_init, %union.anon { ptr @decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"idf\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"iCEDraw text\00", align 1
@ff_idf_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.4, ptr @.str.5, i32 0, i32 98309, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 96, ptr null, ptr null, ptr null, ptr @decode_init, %union.anon { ptr @decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"not enough extradata\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"invalid font height\0A\00", align 1
@ff_cga_palette = external local_unnamed_addr constant [16 x i32], align 16
@.str.8 = private unnamed_addr constant [30 x i8] c"font height %i not supported\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Resolution too small for font.\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1094995529, 1) i32 @decode_init(ptr noundef initializes((136, 140)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 11, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30   ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.e, align 1, !tbaa !31    ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %i.g, ptr %i.h, align 4, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !31    ; 2 uses
  %i.k = zext i8 %i.j to i32                      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %i.k, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i32, ptr %i.m, align 8, !tbaa !36
  %i.o = trunc i8 %i.j to i1
  %i.p = select i1 %i.o, i32 50, i32 2
  %i.q = and i32 %i.k, 2
  %.not53 = icmp eq i32 %i.q, 0
  %i.r = shl nuw nsw i32 %i.g, 8
  %i.s = select i1 %.not53, i32 0, i32 %i.r
  %i.t = or disjoint i32 %i.s, %i.p
  %i.u = icmp slt i32 %i.n, %i.t
  br i1 %i.u, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %.not54 = icmp eq i8 %i.f, 0
  br i1 %.not54, label %.sink.split, label %bb.d

.thread:                                          ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store <2 x i32> <i32 0, i32 8>, ptr %i.w, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  br label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.z = and i32 %i.k, 1
  %.not55 = icmp eq i32 %i.z, 0
  br i1 %.not55, label %.preheader, label %.preheader57

.preheader57:                                     ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.e

.preheader:                                       ; preds = %.thread, %bb.d
  %i.ab = phi ptr [ %i.x, %.thread ], [ %i.y, %bb.d ]
  %.04870 = phi ptr [ null, %.thread ], [ %i.v, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.f

bb.e:                                             ; preds = %.preheader57, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader57 ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.14959 = phi ptr [ %i.v, %.preheader57 ], [ %i.av, %bb.e ] ; 4 uses
  %i.ad = load i8, ptr %.14959, align 1, !tbaa !31
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.14959, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !31
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = or disjoint i32 %i.aj, %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %.14959, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !31
  %i.an = zext i8 %i.am to i32
  %i.ao = or disjoint i32 %i.ak, %i.an            ; 2 uses
  %i.ap = shl nuw nsw i32 %i.ao, 2
  %i.aq = lshr i32 %i.ao, 4
  %i.ar = and i32 %i.aq, 197379
  %i.as = or i32 %i.ap, %i.ar
  %i.at = or i32 %i.as, -16777216
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  store i32 %i.at, ptr %i.au, align 4, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %.14959, i64 3 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !38

bb.f:                                             ; preds = %.preheader, %bb.f
  %indvars.iv64 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next65, %bb.f ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @ff_cga_palette, i64 %indvars.iv64
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !37
  %i.ay = or i32 %i.ax, -16777216
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv64
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !37
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next65, 16
  br i1 %exitcond67.not, label %.loopexit, label %bb.f, !llvm.loop !40

.loopexit:                                        ; preds = %bb.e, %bb.f
  %i.ba = phi ptr [ %i.ab, %bb.f ], [ %i.y, %bb.e ]
  %.2 = phi ptr [ %.04870, %bb.f ], [ %i.av, %bb.e ]
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !35
  %i.bc = and i32 %i.bb, 2
  %.not56 = icmp eq i32 %i.bc, 0
  br i1 %.not56, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.loopexit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !32 ; 2 uses
  switch i32 %i.be, label %bb.h [
    i32 8, label %bb.i
    i32 16, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.8, i32 noundef %i.be) #4
  store i32 8, ptr %i.bd, align 4, !tbaa !32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = tail call ptr @avpriv_cga_font_get() #4
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.bg = tail call ptr @avpriv_vga16_font_get() #4
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.i, %bb.j
  %.sink = phi ptr [ %i.bf, %bb.i ], [ %i.bg, %bb.j ], [ %.2, %.loopexit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %.sink, ptr %i.bh, align 8, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !42
  %i.bk = icmp slt i32 %i.bj, 8
  br i1 %i.bk, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !43
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !32
  %i.bp = icmp slt i32 %i.bm, %i.bo
  br i1 %i.bp, label %.sink.split, label %bb.m

.sink.split:                                      ; preds = %bb.k, %bb.l, %bb.c, %bb.b
  %.str.9.sink = phi ptr [ @.str.7, %bb.c ], [ @.str.6, %bb.b ], [ @.str.9, %bb.l ], [ @.str.9, %bb.k ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull %.str.9.sink) #4
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l
  %.050 = phi i32 [ 0, %bb.l ], [ -1094995529, %.sink.split ]
  ret i32 %.050
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !46   ; 6 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42
  %i.k = sdiv i32 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 8 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.o = load i32, ptr %i.n, align 4, !tbaa !32
  %i.p = sdiv i32 %i.m, %i.o
  %i.q = mul nsw i32 %i.p, %i.k
  %i.r = sdiv i32 %i.q, 256
  %i.s = icmp sgt i32 %i.r, %i.f
  br i1 %i.s, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.b, align 8, !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store i32 0, ptr %i.t, align 4, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 0, ptr %i.u, align 8, !tbaa !49
  %i.v = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #4 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  store i32 1, ptr %i.y, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.aa, ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i64 64, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !56
  switch i32 %i.ad, label %.preheader [
    i32 98308, label %.preheader118
    i32 98309, label %.preheader121
  ]

.preheader121:                                    ; preds = %bb.c
  %i.ae = icmp sgt i32 %i.f, 2
  br i1 %i.ae, label %.lr.ph125.preheader, label %.loopexit

.lr.ph125.preheader:                              ; preds = %.preheader121
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  br label %.lr.ph125

.preheader118:                                    ; preds = %bb.c
  %i.ag = icmp sgt i32 %i.f, 2
  br i1 %i.ag, label %.lr.ph141.preheader, label %.loopexit

.lr.ph141.preheader:                              ; preds = %.preheader118
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  br label %.lr.ph141

.preheader:                                       ; preds = %bb.c
  %i.ai = icmp sgt i32 %i.f, 1
  br i1 %i.ai, label %.lr.ph143.preheader, label %.loopexit

.lr.ph143.preheader:                              ; preds = %.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %.lr.ph143

.lr.ph141:                                        ; preds = %.lr.ph141.preheader, %.loopexit114
  %i.ak = phi ptr [ %i.gy, %.loopexit114 ], [ %i.ah, %.lr.ph141.preheader ] ; 7 uses
  %.091140 = phi ptr [ %.4, %.loopexit114 ], [ %i.d, %.lr.ph141.preheader ] ; 4 uses
  %i.al = load i8, ptr %.091140, align 1, !tbaa !31
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = lshr i32 %i.am, 6
  %i.ao = and i32 %i.am, 63                       ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.091140, i64 1 ; 5 uses
  switch i32 %i.an, label %default.unreachable176 [
    i32 0, label %.preheader113
    i32 1, label %bb.f
    i32 2, label %bb.i
    i32 3, label %bb.m
  ]
end_hunk_0
