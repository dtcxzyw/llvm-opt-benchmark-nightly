inline.NumInlined: 24
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"escape130\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Escape 130\00", align 1
@ff_escape130_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 168, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 88, ptr null, ptr null, ptr null, ptr @escape130_decode_init, %union.anon { ptr @escape130_decode_frame }, ptr @escape130_decode_close, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Dimensions should be a multiple of two.\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Could not allocate buffer.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Insufficient frame data\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Error decoding skip value\0A\00", align 1
@offset_table = internal unnamed_addr constant [4 x i8] c"\02\04\0A\14", align 1
@luma_adjust = internal unnamed_addr constant [8 x i8] c"\FC\FD\FE\FF\01\02\03\04", align 1
@chroma_adjust = internal unnamed_addr constant [2 x [8 x i8]] [[8 x i8] c"\01\01\00\FF\FF\FF\00\01", [8 x i8] c"\00\01\01\01\00\FF\FF\FF"], align 16
@chroma_vals = internal unnamed_addr constant [32 x i8] c"\14\1C$,4<DLT\\djptx|\80\84\88\8C\90\96\9C\A4\AC\B4\BC\C4\CC\D4\DC\E4", align 16
@sign_table = internal unnamed_addr constant <{ [54 x [4 x i8]], [10 x [4 x i8]] }> <{ [54 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\FF\01\00\00", [4 x i8] c"\01\FF\00\00", [4 x i8] c"\FF\00\01\00", [4 x i8] c"\FF\01\01\00", [4 x i8] c"\00\FF\01\00", [4 x i8] c"\01\FF\01\00", [4 x i8] c"\FF\FF\01\00", [4 x i8] c"\01\00\FF\00", [4 x i8] c"\00\01\FF\00", [4 x i8] c"\01\01\FF\00", [4 x i8] c"\FF\01\FF\00", [4 x i8] c"\01\FF\FF\00", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\01\00\01", [4 x i8] c"\00\FF\00\01", [4 x i8] zeroinitializer, [4 x i8] c"\01\FF\00\01", [4 x i8] c"\FF\FF\00\01", [4 x i8] c"\FF\00\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\00\FF\01\01", [4 x i8] c"\01\FF\01\01", [4 x i8] c"\FF\FF\01\01", [4 x i8] c"\00\00\FF\01", [4 x i8] c"\01\00\FF\01", [4 x i8] c"\FF\00\FF\01", [4 x i8] c"\00\01\FF\01", [4 x i8] c"\01\01\FF\01", [4 x i8] c"\FF\01\FF\01", [4 x i8] c"\00\FF\FF\01", [4 x i8] c"\01\FF\FF\01", [4 x i8] zeroinitializer, [4 x i8] c"\FF\FF\FF\01", [4 x i8] c"\01\00\00\FF", [4 x i8] c"\00\01\00\FF", [4 x i8] c"\01\01\00\FF", [4 x i8] c"\FF\01\00\FF", [4 x i8] c"\01\FF\00\FF", [4 x i8] c"\00\00\01\FF", [4 x i8] c"\01\00\01\FF", [4 x i8] c"\FF\00\01\FF", [4 x i8] c"\00\01\01\FF", [4 x i8] c"\01\01\01\FF", [4 x i8] c"\FF\01\01\FF", [4 x i8] c"\00\FF\01\FF", [4 x i8] c"\01\FF\01\FF", [4 x i8] c"\FF\FF\01\FF", [4 x i8] zeroinitializer, [4 x i8] c"\01\00\FF\FF", [4 x i8] c"\00\01\FF\FF", [4 x i8] c"\01\01\FF\FF", [4 x i8] c"\FF\01\FF\FF", [4 x i8] c"\01\FF\FF\FF"], [10 x [4 x i8]] zeroinitializer }>, align 16

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1094995529, 1) i32 @escape130_decode_init(ptr noundef initializes((136, 140)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %i.f = and i32 %i.e, 1
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31   ; 2 uses
  %i.i = and i32 %i.h, 1
  %.not52 = icmp eq i32 %i.i, 0
  br i1 %.not52, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2) #5
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.j = mul nsw i32 %i.h, %i.e
  %i.k = ashr exact i32 %i.j, 2
  %i.l = sext i32 %i.k to i64
  %i.m = tail call noalias ptr @av_mallocz(i64 noundef %i.l) #5
  store ptr %i.m, ptr %i.b, align 8, !tbaa !32
  %i.n = load i32, ptr %i.d, align 8, !tbaa !30
  %i.o = load i32, ptr %i.g, align 4, !tbaa !31
  %i.p = mul i32 %i.n, 3
  %i.q = mul i32 %i.p, %i.o
  %i.r = sdiv i32 %i.q, 2
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias ptr @av_malloc(i64 noundef %i.s) #5
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !34
  %i.v = load i32, ptr %i.d, align 8, !tbaa !30
  %i.w = load i32, ptr %i.g, align 4, !tbaa !31
  %i.x = mul i32 %i.v, 3
  %i.y = mul i32 %i.x, %i.w
  %i.z = sdiv i32 %i.y, 2
  %i.aa = sext i32 %i.z to i64
  %i.ab = tail call noalias ptr @av_malloc(i64 noundef %i.aa) #5 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !35
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !32
  %.not53 = icmp eq ptr %i.ad, null
  br i1 %.not53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !34  ; 3 uses
  %.not54 = icmp eq ptr %i.ae, null
  %.not55 = icmp eq ptr %i.ab, null
  %or.cond = select i1 %.not54, i1 true, i1 %.not55
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3) #5
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.af = load i32, ptr %i.d, align 8, !tbaa !30  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !36
  %i.ah = sdiv i32 %i.af, 2                       ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ae, ptr %i.ak, align 8, !tbaa !37
  %i.al = load i32, ptr %i.d, align 8, !tbaa !30
  %i.am = load i32, ptr %i.g, align 4, !tbaa !31
  %i.an = mul nsw i32 %i.am, %i.al                ; 2 uses
  %i.ao = sext i32 %i.an to i64                   ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ae, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !38
  %i.ar = sdiv i32 %i.an, 4
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.at, ptr %i.au, align 8, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ab, ptr %i.av, align 8, !tbaa !40
  %i.aw = getelementptr inbounds i8, ptr %i.ab, i64 %i.ao ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !41
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %i.as ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ab, i8 0, i64 %i.ao, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aw, i8 16, i64 %i.as, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ay, i8 16, i64 %i.as, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c
  %.0 = phi i32 [ -1094995529, %bb.c ], [ 0, %bb.g ], [ -12, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 17, 0) i32 @escape130_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = sdiv i32 %i.i, 4
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.l = icmp slt i32 %i.b, 17
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4) #5
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45   ; 15 uses
  %or.cond.i = icmp samesign ugt i32 %i.b, 268435455
  %i.o = shl nuw nsw i32 %i.b, 3
  %i.p = select i1 %or.cond.i, i32 -8, i32 %i.o   ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.p, 2147483135
  %i.q = icmp ne ptr %i.n, null
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.q       ; 2 uses
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.p, i32 0 ; 2 uses
  %i.r = add nuw nsw i32 %.013.i.i, 8             ; 17 uses
  br i1 %or.cond3.i.i, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.w = load i32, ptr %i.v, align 8, !tbaa !36   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.y = load i32, ptr %i.x, align 4, !tbaa !36   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %.off = add i32 %i.i, 3
  %.not = icmp ult i32 %.off, 7
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !41
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !39
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.ak = tail call i32 @llvm.umin.i32(i32 %i.r, i32 128)
  %i.al = zext i32 %i.w to i64                    ; 2 uses
  %i.am = add i32 %i.w, 1
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.j, i32 1)
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.u
  %.sroa.0.0 = phi i32 [ 0, %.lr.ph ], [ %.sroa.0.2, %bb.u ]
  %.sroa.7.0 = phi i32 [ 0, %.lr.ph ], [ %.sroa.7.2, %bb.u ]
  %.sroa.11.0 = phi i32 [ 0, %.lr.ph ], [ %.sroa.11.2, %bb.u ]
  %.sroa.15.0 = phi i32 [ 0, %.lr.ph ], [ %.sroa.15.2, %bb.u ]
  %.0157278 = phi ptr [ %i.ag, %.lr.ph ], [ %.1, %bb.u ] ; 5 uses
  %.0158276 = phi ptr [ %i.k, %.lr.ph ], [ %i.iu, %bb.u ] ; 3 uses
  %.0163275 = phi i32 [ 0, %.lr.ph ], [ %.3166, %bb.u ] ; 2 uses
  %.0167274 = phi i32 [ -1, %.lr.ph ], [ %.1168255, %bb.u ] ; 2 uses
  %.0169273 = phi i32 [ 16, %.lr.ph ], [ %.1170, %bb.u ] ; 2 uses
  %.0171272 = phi i32 [ 16, %.lr.ph ], [ %.1172, %bb.u ] ; 2 uses
  %.0173271 = phi i32 [ 0, %.lr.ph ], [ %.1174, %bb.u ]
  %.0175270 = phi i32 [ 0, %.lr.ph ], [ %i.kc, %bb.u ]
  %.0179269 = phi ptr [ %i.ah, %.lr.ph ], [ %.1180, %bb.u ] ; 2 uses
  %.0182268 = phi ptr [ %i.ai, %.lr.ph ], [ %.1183, %bb.u ] ; 2 uses
  %.0185267 = phi ptr [ %i.aj, %.lr.ph ], [ %.1186, %bb.u ] ; 5 uses
  %.0188265 = phi ptr [ %i.ae, %.lr.ph ], [ %.1189, %bb.u ] ; 2 uses
  %.0190263 = phi ptr [ %i.af, %.lr.ph ], [ %.1191, %bb.u ] ; 2 uses
  %.sroa.17.0262 = phi i32 [ %i.ak, %.lr.ph ], [ %.sroa.17.4, %bb.u ] ; 7 uses
  switch i32 %.0167274, label %decode_skip_count.exit.thread322 [
    i32 -1, label %bb.f
    i32 0, label %decode_skip_count.exit.thread251
  ]

bb.f:                                             ; preds = %bb.e
  %i.ao = sub nsw i32 %.013.i.i, %.sroa.17.0262
  %i.ap = icmp slt i32 %i.ao, 4
  br i1 %i.ap, label %decode_skip_count.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = lshr i32 %.sroa.17.0262, 3
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !46
  %spec.select.i.i = add i32 %.sroa.17.0262, 1    ; 3 uses
  %i.au = zext i8 %i.at to i32
  %i.av = and i32 %.sroa.17.0262, 7
  %i.aw = shl nuw nsw i32 1, %i.av
  %i.ax = and i32 %i.aw, %i.au
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %bb.h, label %decode_skip_count.exit.thread251

bb.h:                                             ; preds = %bb.g
  %i.ay = lshr i32 %spec.select.i.i, 3
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 1, !tbaa !46
  %i.bc = and i32 %spec.select.i.i, 7
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = and i32 %i.bd, 7                        ; 2 uses
  %i.bf = add i32 %.sroa.17.0262, 4
  %i.bg = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.bf) ; 4 uses
  %.not15.i = icmp eq i32 %i.be, 0
  br i1 %.not15.i, label %bb.i, label %decode_skip_count.exit.thread322

bb.i:                                             ; preds = %bb.h
  %i.bh = lshr i32 %i.bg, 3
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 1, !tbaa !46
  %i.bl = and i32 %i.bg, 7
  %i.bm = lshr i32 %i.bk, %i.bl
  %i.bn = and i32 %i.bm, 255                      ; 2 uses
  %i.bo = add nuw i32 %i.bg, 8
  %i.bp = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.bo) ; 4 uses
  %.not16.i = icmp eq i32 %i.bn, 0
  br i1 %.not16.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = add nuw nsw i32 %i.bn, 7
  br label %decode_skip_count.exit.thread322

bb.k:                                             ; preds = %bb.i
  %i.br = lshr i32 %i.bp, 3
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 1, !tbaa !46
  %i.bv = and i32 %i.bp, 7
  %i.bw = lshr i32 %i.bu, %i.bv
  %i.bx = and i32 %i.bw, 32767                    ; 2 uses
  %i.by = add nuw i32 %i.bp, 15
  %i.bz = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.by)
  %.not17.i = icmp eq i32 %i.bx, 0
  %i.ca = add nuw nsw i32 %i.bx, 262
  br i1 %.not17.i, label %decode_skip_count.exit.thread, label %decode_skip_count.exit.thread322

decode_skip_count.exit.thread:                    ; preds = %bb.k, %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5) #5
  br label %bb.w

decode_skip_count.exit.thread322:                 ; preds = %bb.e, %bb.j, %bb.k, %bb.h
  %.1168327 = phi i32 [ %.0167274, %bb.e ], [ %i.bq, %bb.j ], [ %i.ca, %bb.k ], [ %i.be, %bb.h ]
  %.sroa.17.1326 = phi i32 [ %.sroa.17.0262, %bb.e ], [ %i.bp, %bb.j ], [ %i.bz, %bb.k ], [ %i.bg, %bb.h ]
  %i.cb = load i8, ptr %.0157278, align 1, !tbaa !46
  %i.cc = zext i8 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %.0157278, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !46
  %i.cf = zext i8 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %.0157278, i64 %i.al
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !46
  %i.ci = zext i8 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %.0157278, i64 %i.an
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !46
  %i.cl = zext i8 %i.ck to i32
  %i.cm = load i8, ptr %.0158276, align 1, !tbaa !46
  %i.cn = zext i8 %i.cm to i32
  %i.co = load i8, ptr %.0190263, align 1, !tbaa !46
  %i.cp = zext i8 %i.co to i32
  %i.cq = load i8, ptr %.0188265, align 1, !tbaa !46
  %i.cr = zext i8 %i.cq to i32
  %i.cs = add nsw i32 %.1168327, -1
  br label %bb.s

decode_skip_count.exit.thread251:                 ; preds = %bb.e, %bb.g
  %.sroa.17.1254 = phi i32 [ %.sroa.17.0262, %bb.e ], [ %spec.select.i.i, %bb.g ] ; 4 uses
  %i.ct = lshr i32 %.sroa.17.1254, 3
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !46
  %i.cx = icmp slt i32 %.sroa.17.1254, %i.r
  %i.cy = zext i1 %i.cx to i32
  %spec.select.i203 = add i32 %.sroa.17.1254, %i.cy ; 6 uses
  %i.cz = zext i8 %i.cw to i32
  %i.da = and i32 %.sroa.17.1254, 7
  %i.db = shl nuw nsw i32 1, %i.da
  %i.dc = and i32 %i.db, %i.cz
  %.not196 = icmp eq i32 %i.dc, 0
  %i.dd = lshr i32 %spec.select.i203, 3
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.de ; 2 uses
  br i1 %.not196, label %bb.l, label %.loopexit.loopexit296

.loopexit.loopexit296:                            ; preds = %decode_skip_count.exit.thread251
  %i.dg = load i32, ptr %i.df, align 1, !tbaa !46
  %i.dh = and i32 %spec.select.i203, 7
  %i.di = lshr i32 %i.dg, %i.dh
  %i.dj = and i32 %i.di, 63
  %i.dk = add i32 %spec.select.i203, 6
  %i.dl = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.dk) ; 3 uses
  %i.dm = lshr i32 %i.dl, 3
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 1, !tbaa !46
  %i.dq = and i32 %i.dl, 7
  %i.dr = lshr i32 %i.dp, %i.dq
  %i.ds = and i32 %i.dr, 3
  %i.dt = add nuw i32 %i.dl, 2
  %i.du = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.dt) ; 3 uses
  %i.dv = lshr i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 1, !tbaa !46
  %i.dz = and i32 %i.du, 7
  %i.ea = lshr i32 %i.dy, %i.dz
  %i.eb = shl i32 %i.ea, 1
  %i.ec = and i32 %i.eb, 62                       ; 5 uses
  %i.ed = zext nneg i32 %i.ds to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @offset_table, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !46
  %i.eg = zext i8 %i.ef to i32                    ; 4 uses
  %i.eh = zext nneg i32 %i.dj to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @sign_table, i64 %i.eh ; 4 uses
  %i.ej = load i8, ptr %i.ei, align 4, !tbaa !46
  %i.ek = sext i8 %i.ej to i32
  %i.el = mul nsw i32 %i.ek, %i.eg
  %i.em = add nsw i32 %i.el, %i.ec
  %i.en = tail call i32 @llvm.smax.i32(i32 %i.em, i32 0)
  %i.eo = tail call i32 @llvm.umin.i32(i32 %i.en, i32 63)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !46
  %i.er = sext i8 %i.eq to i32
  %i.es = mul nsw i32 %i.er, %i.eg
  %i.et = add nsw i32 %i.es, %i.ec
  %i.eu = tail call i32 @llvm.smax.i32(i32 %i.et, i32 0)
  %i.ev = tail call i32 @llvm.umin.i32(i32 %i.eu, i32 63)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  %i.ex = load i8, ptr %i.ew, align 2, !tbaa !46
  %i.ey = sext i8 %i.ex to i32
  %i.ez = mul nsw i32 %i.ey, %i.eg
  %i.fa = add nsw i32 %i.ez, %i.ec
  %i.fb = tail call i32 @llvm.smax.i32(i32 %i.fa, i32 0)
  %i.fc = tail call i32 @llvm.umin.i32(i32 %i.fb, i32 63)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ei, i64 3
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !46
  %i.ff = sext i8 %i.fe to i32
  %i.fg = mul nsw i32 %i.ff, %i.eg
  %i.fh = add nsw i32 %i.fg, %i.ec
  %i.fi = tail call i32 @llvm.smax.i32(i32 %i.fh, i32 0)
  %i.fj = tail call i32 @llvm.umin.i32(i32 %i.fi, i32 63)
  %i.fk = add nuw i32 %i.du, 5
  %i.fl = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.fk)
  br label %.loopexit

bb.l:                                             ; preds = %decode_skip_count.exit.thread251
  %i.fm = load i8, ptr %i.df, align 1, !tbaa !46
  %i.fn = icmp slt i32 %spec.select.i203, %i.r
  %i.fo = zext i1 %i.fn to i32
  %spec.select.i204 = add i32 %spec.select.i203, %i.fo ; 5 uses
  %i.fp = zext i8 %i.fm to i32
  %i.fq = and i32 %spec.select.i203, 7
  %i.fr = shl nuw nsw i32 1, %i.fq
  %i.fs = and i32 %i.fr, %i.fp
  %.not197 = icmp eq i32 %i.fs, 0
  br i1 %.not197, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ft = lshr i32 %spec.select.i204, 3
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !46
  %i.fx = icmp slt i32 %spec.select.i204, %i.r
  %i.fy = zext i1 %i.fx to i32
  %spec.select.i205 = add i32 %spec.select.i204, %i.fy ; 4 uses
  %i.fz = zext i8 %i.fw to i32
  %i.ga = and i32 %spec.select.i204, 7
  %i.gb = shl nuw nsw i32 1, %i.ga
  %i.gc = and i32 %i.gb, %i.fz
  %.not198 = icmp eq i32 %i.gc, 0
  %i.gd = lshr i32 %spec.select.i205, 3
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 1, !tbaa !46
  %i.gh = and i32 %spec.select.i205, 7
  %i.gi = lshr i32 %i.gg, %i.gh                   ; 2 uses
  br i1 %.not198, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gj = add i32 %spec.select.i205, 6
  %i.gk = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.gj)
  br label %.loopexit.loopexit

bb.o:                                             ; preds = %bb.m
  %i.gl = and i32 %i.gi, 7
  %i.gm = add i32 %spec.select.i205, 3
  %i.gn = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.gm)
  %i.go = zext nneg i32 %i.gl to i64
  %i.gp = getelementptr inbounds nuw i8, ptr @luma_adjust, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !46
  %i.gr = zext i8 %i.gq to i32
  %i.gs = add nuw nsw i32 %.0163275, %i.gr
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.o, %bb.n
  %.sroa.17.2 = phi i32 [ %i.gn, %bb.o ], [ %i.gk, %bb.n ]
  %.1164.in = phi i32 [ %i.gs, %bb.o ], [ %i.gi, %bb.n ]
  %.1164 = and i32 %.1164.in, 63                  ; 5 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit296, %.loopexit.loopexit, %bb.l
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.l ], [ %.1164, %.loopexit.loopexit ], [ %i.eo, %.loopexit.loopexit296 ] ; 3 uses
  %.sroa.7.1 = phi i32 [ %.sroa.7.0, %bb.l ], [ %.1164, %.loopexit.loopexit ], [ %i.ev, %.loopexit.loopexit296 ] ; 3 uses
  %.sroa.11.1 = phi i32 [ %.sroa.11.0, %bb.l ], [ %.1164, %.loopexit.loopexit ], [ %i.fc, %.loopexit.loopexit296 ] ; 3 uses
  %.sroa.15.1 = phi i32 [ %.sroa.15.0, %bb.l ], [ %.1164, %.loopexit.loopexit ], [ %i.fj, %.loopexit.loopexit296 ] ; 3 uses
  %.sroa.17.3 = phi i32 [ %spec.select.i204, %bb.l ], [ %.sroa.17.2, %.loopexit.loopexit ], [ %i.fl, %.loopexit.loopexit296 ] ; 4 uses
  %.2165 = phi i32 [ %.0163275, %bb.l ], [ %.1164, %.loopexit.loopexit ], [ %i.ec, %.loopexit.loopexit296 ] ; 3 uses
  %i.gt = lshr i32 %.sroa.17.3, 3
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !46
  %i.gx = icmp slt i32 %.sroa.17.3, %i.r
  %i.gy = zext i1 %i.gx to i32
  %spec.select.i206 = add i32 %.sroa.17.3, %i.gy  ; 5 uses
  %i.gz = zext i8 %i.gw to i32
  %i.ha = and i32 %.sroa.17.3, 7
  %i.hb = shl nuw nsw i32 1, %i.ha
  %i.hc = and i32 %i.hb, %i.gz
  %.not199 = icmp eq i32 %i.hc, 0
  br i1 %.not199, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.hd = lshr i32 %spec.select.i206, 3
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !46
  %i.hh = icmp slt i32 %spec.select.i206, %i.r
  %i.hi = zext i1 %i.hh to i32
  %spec.select.i207 = add i32 %spec.select.i206, %i.hi ; 4 uses
  %i.hj = zext i8 %i.hg to i32
  %i.hk = and i32 %spec.select.i206, 7
  %i.hl = shl nuw nsw i32 1, %i.hk
  %i.hm = and i32 %i.hl, %i.hj
  %.not200 = icmp eq i32 %i.hm, 0
  %i.hn = lshr i32 %spec.select.i207, 3
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 1, !tbaa !46
  %i.hr = and i32 %spec.select.i207, 7
  %i.hs = lshr i32 %i.hq, %i.hr                   ; 2 uses
  br i1 %.not200, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ht = and i32 %i.hs, 31
  %i.hu = add i32 %spec.select.i207, 5
  %i.hv = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.hu) ; 3 uses
  %i.hw = lshr i32 %i.hv, 3
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 1, !tbaa !46
  %i.ia = and i32 %i.hv, 7
  %i.ib = lshr i32 %i.hz, %i.ia
  %i.ic = and i32 %i.ib, 31
  %i.id = add nuw i32 %i.hv, 5
  %i.ie = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.id)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.if = and i32 %i.hs, 7
  %i.ig = add i32 %spec.select.i207, 3
  %i.ih = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.ig)
  %i.ii = zext nneg i32 %i.if to i64              ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr @chroma_adjust, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !46
  %i.il = zext i8 %i.ik to i32
  %i.im = add nuw nsw i32 %.0171272, %i.il
  %i.in = and i32 %i.im, 31
  %i.io = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @chroma_adjust, i64 8), i64 %i.ii
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !46
  %i.iq = zext i8 %i.ip to i32
  %i.ir = add nuw nsw i32 %.0169273, %i.iq
  %i.is = and i32 %i.ir, 31
  br label %bb.s

bb.s:                                             ; preds = %.loopexit, %bb.r, %bb.q, %decode_skip_count.exit.thread322
  %.sroa.0.2 = phi i32 [ %.sroa.0.1, %.loopexit ], [ %.sroa.0.1, %bb.r ], [ %.sroa.0.1, %bb.q ], [ %i.cc, %decode_skip_count.exit.thread322 ] ; 2 uses
  %.sroa.7.2 = phi i32 [ %.sroa.7.1, %.loopexit ], [ %.sroa.7.1, %bb.r ], [ %.sroa.7.1, %bb.q ], [ %i.cf, %decode_skip_count.exit.thread322 ] ; 2 uses
  %.sroa.11.2 = phi i32 [ %.sroa.11.1, %.loopexit ], [ %.sroa.11.1, %bb.r ], [ %.sroa.11.1, %bb.q ], [ %i.ci, %decode_skip_count.exit.thread322 ] ; 2 uses
  %.sroa.15.2 = phi i32 [ %.sroa.15.1, %.loopexit ], [ %.sroa.15.1, %bb.r ], [ %.sroa.15.1, %bb.q ], [ %i.cl, %decode_skip_count.exit.thread322 ] ; 2 uses
  %.1168255 = phi i32 [ -1, %.loopexit ], [ -1, %bb.r ], [ -1, %bb.q ], [ %i.cs, %decode_skip_count.exit.thread322 ]
  %.sroa.17.4 = phi i32 [ %spec.select.i206, %.loopexit ], [ %i.ih, %bb.r ], [ %i.ie, %bb.q ], [ %.sroa.17.1326, %decode_skip_count.exit.thread322 ]
  %.1172 = phi i32 [ %.0171272, %.loopexit ], [ %i.in, %bb.r ], [ %i.ht, %bb.q ], [ %i.cp, %decode_skip_count.exit.thread322 ] ; 2 uses
  %.1170 = phi i32 [ %.0169273, %.loopexit ], [ %i.is, %bb.r ], [ %i.ic, %bb.q ], [ %i.cr, %decode_skip_count.exit.thread322 ] ; 2 uses
  %.3166 = phi i32 [ %.2165, %.loopexit ], [ %.2165, %bb.r ], [ %.2165, %bb.q ], [ %i.cn, %decode_skip_count.exit.thread322 ] ; 2 uses
  %i.it = trunc nuw i32 %.3166 to i8
  %i.iu = getelementptr inbounds nuw i8, ptr %.0158276, i64 1
  store i8 %i.it, ptr %.0158276, align 1, !tbaa !46
  %i.iv = trunc nuw i32 %.sroa.0.2 to i8
  store i8 %i.iv, ptr %.0185267, align 1, !tbaa !46
  %i.iw = trunc nuw i32 %.sroa.7.2 to i8
  %i.ix = getelementptr inbounds nuw i8, ptr %.0185267, i64 1
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !46
  %i.iy = trunc nuw i32 %.sroa.11.2 to i8
  %i.iz = getelementptr inbounds nuw i8, ptr %.0185267, i64 %i.al
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !46
  %i.ja = trunc nuw i32 %.sroa.15.2 to i8
  %i.jb = getelementptr inbounds nuw i8, ptr %.0185267, i64 %i.an
  store i8 %i.ja, ptr %i.jb, align 1, !tbaa !46
  %i.jc = trunc nuw i32 %.1172 to i8
  store i8 %i.jc, ptr %.0182268, align 1, !tbaa !46
  %i.jd = trunc nuw i32 %.1170 to i8
  store i8 %i.jd, ptr %.0179269, align 1, !tbaa !46
  %i.je = getelementptr inbounds nuw i8, ptr %.0157278, i64 2 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.0190263, i64 1 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.0188265, i64 1 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.0185267, i64 2 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.0182268, i64 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.0179269, i64 1 ; 2 uses
  %i.jk = add i32 %.0173271, 1                    ; 3 uses
  %i.jl = shl i32 %i.jk, 1                        ; 2 uses
  %i.jm = load i32, ptr %i.e, align 8, !tbaa !30
  %i.jn = icmp eq i32 %i.jl, %i.jm
  br i1 %i.jn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.jo = sub i32 %i.w, %i.jk
  %i.jp = shl i32 %i.jo, 1
  %i.jq = zext i32 %i.jp to i64                   ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jq
  %i.js = ashr exact i32 %i.jl, 1                 ; 2 uses
  %i.jt = sub i32 %i.y, %i.js
  %i.ju = zext i32 %i.jt to i64                   ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.ju
  %i.jw = sub i32 %i.aa, %i.js
  %i.jx = zext i32 %i.jw to i64                   ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jq
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.ju
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jx
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1191 = phi ptr [ %i.jv, %bb.t ], [ %i.jf, %bb.s ]
  %.1189 = phi ptr [ %i.jy, %bb.t ], [ %i.jg, %bb.s ]
  %.1186 = phi ptr [ %i.jz, %bb.t ], [ %i.jh, %bb.s ]
  %.1183 = phi ptr [ %i.ka, %bb.t ], [ %i.ji, %bb.s ]
  %.1180 = phi ptr [ %i.kb, %bb.t ], [ %i.jj, %bb.s ]
  %.1174 = phi i32 [ 0, %bb.t ], [ %i.jk, %bb.s ]
  %.1 = phi ptr [ %i.jr, %bb.t ], [ %i.je, %bb.s ]
  %i.kc = add nuw i32 %.0175270, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.kc, %umax
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !47

._crit_edge:                                      ; preds = %bb.u, %bb.d
  %i.kd = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #5 ; 2 uses
  %i.ke = icmp slt i32 %i.kd, 0
  br i1 %i.ke, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.kf = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.kg = load ptr, ptr %i.u, align 8, !tbaa !39
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !49
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !49
  %i.kl = load i32, ptr %i.g, align 4, !tbaa !31  ; 3 uses
  %i.km = icmp sgt i32 %i.kl, 0
  br i1 %i.km, label %.preheader258.lr.ph, label %._crit_edge294

.preheader258.lr.ph:                              ; preds = %bb.v
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ko = zext i32 %i.w to i64
  %i.kp = load i32, ptr %i.e, align 8, !tbaa !30  ; 2 uses
  %i.kq = icmp sgt i32 %i.kp, 0
  br i1 %i.kq, label %.preheader258.preheader, label %.preheader257

.preheader258.preheader:                          ; preds = %.preheader258.lr.ph
  %i.kr = load ptr, ptr %1, align 8, !tbaa !49
  %i.ks = load ptr, ptr %i.s, align 8, !tbaa !37
  br label %.preheader258

.preheader258:                                    ; preds = %.preheader258.preheader, %._crit_edge282
  %i.kt = phi i32 [ %i.lj, %._crit_edge282 ], [ %i.kl, %.preheader258.preheader ]
  %i.ku = phi i32 [ %i.lk, %._crit_edge282 ], [ %i.kp, %.preheader258.preheader ] ; 2 uses
  %.0159285 = phi i32 [ %i.lp, %._crit_edge282 ], [ 0, %.preheader258.preheader ]
  %.0178284 = phi ptr [ %i.ln, %._crit_edge282 ], [ %i.kr, %.preheader258.preheader ] ; 2 uses
  %.2187283 = phi ptr [ %i.lo, %._crit_edge282 ], [ %i.ks, %.preheader258.preheader ] ; 2 uses
  %i.kv = icmp sgt i32 %i.ku, 0
  br i1 %i.kv, label %.lr.ph281, label %._crit_edge282

.preheader257:                                    ; preds = %._crit_edge282, %.preheader258.lr.ph
  %i.kw = phi i32 [ %i.kl, %.preheader258.lr.ph ], [ %i.lj, %._crit_edge282 ] ; 2 uses
  %i.kx = icmp sgt i32 %i.kw, 1
  br i1 %i.kx, label %.preheader.lr.ph, label %._crit_edge294

.preheader.lr.ph:                                 ; preds = %.preheader257
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.la = zext i32 %i.y to i64
  %i.lb = zext i32 %i.aa to i64
  %.pre303 = load i32, ptr %i.e, align 8, !tbaa !30
  br label %.preheader

.lr.ph281:                                        ; preds = %.preheader258, %.lr.ph281
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph281 ], [ 0, %.preheader258 ] ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.2187283, i64 %indvars.iv
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !46
  %i.le = shl i8 %i.ld, 2
  %i.lf = getelementptr inbounds nuw i8, ptr %.0178284, i64 %indvars.iv
  store i8 %i.le, ptr %i.lf, align 1, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lg = load i32, ptr %i.e, align 8, !tbaa !30  ; 2 uses
  %i.lh = sext i32 %i.lg to i64
  %i.li = icmp slt i64 %indvars.iv.next, %i.lh
  br i1 %i.li, label %.lr.ph281, label %._crit_edge282.loopexit, !llvm.loop !50

._crit_edge282.loopexit:                          ; preds = %.lr.ph281
  %.pre = load i32, ptr %i.g, align 4, !tbaa !31
  br label %._crit_edge282

._crit_edge282:                                   ; preds = %._crit_edge282.loopexit, %.preheader258
  %i.lj = phi i32 [ %.pre, %._crit_edge282.loopexit ], [ %i.kt, %.preheader258 ] ; 3 uses
  %i.lk = phi i32 [ %i.lg, %._crit_edge282.loopexit ], [ %i.ku, %.preheader258 ]
  %i.ll = load i32, ptr %i.kn, align 8, !tbaa !36
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds i8, ptr %.0178284, i64 %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %.2187283, i64 %i.ko
  %i.lp = add nuw nsw i32 %.0159285, 1            ; 2 uses
  %i.lq = icmp slt i32 %i.lp, %i.lj
  br i1 %i.lq, label %.preheader258, label %.preheader257, !llvm.loop !51

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge288
  %i.lr = phi i32 [ %i.kw, %.preheader.lr.ph ], [ %i.mk, %._crit_edge288 ]
  %i.ls = phi i32 [ %.pre303, %.preheader.lr.ph ], [ %i.ml, %._crit_edge288 ] ; 2 uses
  %.1160293 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.mu, %._crit_edge288 ]
  %.0176292 = phi ptr [ %i.kk, %.preheader.lr.ph ], [ %i.mr, %._crit_edge288 ] ; 2 uses
  %.0177291 = phi ptr [ %i.ki, %.preheader.lr.ph ], [ %i.mo, %._crit_edge288 ] ; 2 uses
  %.2181290 = phi ptr [ %i.kg, %.preheader.lr.ph ], [ %i.mt, %._crit_edge288 ] ; 2 uses
  %.2184289 = phi ptr [ %i.kf, %.preheader.lr.ph ], [ %i.ms, %._crit_edge288 ] ; 2 uses
  %i.lt = icmp sgt i32 %i.ls, 1
  br i1 %i.lt, label %.lr.ph287, label %._crit_edge288

.lr.ph287:                                        ; preds = %.preheader, %.lr.ph287
  %indvars.iv300 = phi i64 [ %indvars.iv.next301, %.lr.ph287 ], [ 0, %.preheader ] ; 5 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.2184289, i64 %indvars.iv300
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !46
  %i.lw = zext i8 %i.lv to i64
  %i.lx = getelementptr inbounds nuw i8, ptr @chroma_vals, i64 %i.lw
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !46
  %i.lz = getelementptr inbounds nuw i8, ptr %.0177291, i64 %indvars.iv300
  store i8 %i.ly, ptr %i.lz, align 1, !tbaa !46
  %i.ma = getelementptr inbounds nuw i8, ptr %.2181290, i64 %indvars.iv300
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !46
  %i.mc = zext i8 %i.mb to i64
  %i.md = getelementptr inbounds nuw i8, ptr @chroma_vals, i64 %i.mc
  %i.me = load i8, ptr %i.md, align 1, !tbaa !46
  %i.mf = getelementptr inbounds nuw i8, ptr %.0176292, i64 %indvars.iv300
  store i8 %i.me, ptr %i.mf, align 1, !tbaa !46
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1 ; 2 uses
  %i.mg = load i32, ptr %i.e, align 8, !tbaa !30  ; 2 uses
  %i.mh = sdiv i32 %i.mg, 2
  %i.mi = sext i32 %i.mh to i64
  %i.mj = icmp slt i64 %indvars.iv.next301, %i.mi
  br i1 %i.mj, label %.lr.ph287, label %._crit_edge288.loopexit, !llvm.loop !53

._crit_edge288.loopexit:                          ; preds = %.lr.ph287
  %.pre304 = load i32, ptr %i.g, align 4, !tbaa !31
  br label %._crit_edge288

._crit_edge288:                                   ; preds = %._crit_edge288.loopexit, %.preheader
  %i.mk = phi i32 [ %.pre304, %._crit_edge288.loopexit ], [ %i.lr, %.preheader ] ; 2 uses
  %i.ml = phi i32 [ %i.mg, %._crit_edge288.loopexit ], [ %i.ls, %.preheader ]
  %i.mm = load i32, ptr %i.ky, align 4, !tbaa !36
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds i8, ptr %.0177291, i64 %i.mn
  %i.mp = load i32, ptr %i.kz, align 8, !tbaa !36
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds i8, ptr %.0176292, i64 %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %.2184289, i64 %i.la
  %i.mt = getelementptr inbounds nuw i8, ptr %.2181290, i64 %i.lb
  %i.mu = add nuw nsw i32 %.1160293, 1            ; 2 uses
  %i.mv = sdiv i32 %i.mk, 2
  %i.mw = icmp slt i32 %i.mu, %i.mv
  br i1 %i.mw, label %.preheader, label %._crit_edge294, !llvm.loop !54

._crit_edge294:                                   ; preds = %._crit_edge288, %bb.v, %.preheader257
  %i.mx = load <2 x ptr>, ptr %i.s, align 8, !tbaa !49
  %i.my = shufflevector <2 x ptr> %i.mx, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.my, ptr %i.s, align 8, !tbaa !49
  %i.mz = load <2 x ptr>, ptr %i.t, align 8, !tbaa !49
  %i.na = shufflevector <2 x ptr> %i.mz, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.na, ptr %i.t, align 8, !tbaa !49
  %i.nb = load <2 x ptr>, ptr %i.u, align 8, !tbaa !49
  %i.nc = shufflevector <2 x ptr> %i.nb, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.nc, ptr %i.u, align 8, !tbaa !49
  store i32 1, ptr %2, align 4, !tbaa !36
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %bb.c, %._crit_edge294, %decode_skip_count.exit.thread, %bb.b
  %.0 = phi i32 [ -1094995529, %bb.b ], [ %i.b, %._crit_edge294 ], [ -1094995529, %decode_skip_count.exit.thread ], [ -1094995529, %bb.c ], [ %i.kd, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @escape130_decode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  tail call void @av_freep(ptr noundef %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @av_freep(ptr noundef nonnull %i.c) #5
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @av_freep(ptr noundef nonnull %i.d) #5
  ret i32 0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!29 = !{!10, !6, i64 136}
!30 = !{!10, !6, i64 112}
!31 = !{!10, !6, i64 116}
!32 = !{!33, !16, i64 0}
!33 = !{!"Escape130Context", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !7, i64 72}
!34 = !{!33, !16, i64 56}
!35 = !{!33, !16, i64 64}
!36 = !{!6, !6, i64 0}
!37 = !{!33, !16, i64 8}
!38 = !{!33, !16, i64 24}
!39 = !{!33, !16, i64 40}
!40 = !{!33, !16, i64 16}
!41 = !{!33, !16, i64 32}
!42 = !{!33, !16, i64 48}
!43 = !{!44, !6, i64 32}
!44 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!45 = !{!44, !16, i64 24}
!46 = !{!7, !7, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!16, !16, i64 0}
!50 = distinct !{!50, !48}
!51 = distinct !{!51, !48, !52}
!52 = !{!"llvm.loop.unswitch.partial.disable"}
!53 = distinct !{!53, !48}
!54 = distinct !{!54, !48}
end_hunk_0
