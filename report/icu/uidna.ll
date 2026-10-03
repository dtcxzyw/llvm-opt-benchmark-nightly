Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uidna?download=true
inline.NumInlined: 32
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UParseError = type { i32, i32, [16 x i16], [16 x i16] }

@_ZL10ACE_PREFIX = internal constant [4 x i16] [i16 120, i16 110, i16 45, i16 45], align 2

; Function Attrs: mustprogress uwtable
define noundef i32 @uidna_toASCII_78(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %6, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %6, align 4, !tbaa !12
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp slt i32 %1, -1
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %3, 0
  %or.cond3 = or i1 %or.cond, %i.f
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq ptr %2, null
  %i.h = icmp ne i32 %3, 0
  %or.cond5 = and i1 %i.g, %i.h
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %6, align 4, !tbaa !12
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.i = tail call ptr @usprep_openByType_78(i32 noundef 0, ptr noundef nonnull %6) ; 2 uses
  %i.j = load i32, ptr %6, align 4, !tbaa !12
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = tail call fastcc noundef i32 @_ZL17_internal_toASCIIPKDsiPDsiiP18UStringPrepProfileP11UParseErrorP10UErrorCode(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %i.i, ptr noundef %5, ptr noundef %6)
  tail call void @usprep_close_78(ptr noundef %i.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.a, %bb.b, %bb.e
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ], [ %i.l, %bb.g ], [ -1, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @usprep_openByType_78(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL17_internal_toASCIIPKDsiPDsiiP18UStringPrepProfileP11UParseErrorP10UErrorCode(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [100 x i16], align 16             ; 6 uses
  %i.b = alloca [100 x i16], align 16             ; 15 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.e = and i32 %4, 1                            ; 2 uses
  %i.f = and i32 %4, 2
  %.not = icmp eq i32 %i.f, 0                     ; 2 uses
  %i.g = icmp eq i32 %1, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @u_strlen_78(ptr noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0147 = phi i32 [ %i.h, %bb.b ], [ %1, %bb.a ] ; 10 uses
  %i.i = icmp sgt i32 %.0147, 100
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw nsw i32 %.0147, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.k) #6 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %iter.check

bb.e:                                             ; preds = %bb.d
  store i32 7, ptr %7, align 4, !tbaa !12
  br label %.thread182

bb.f:                                             ; preds = %bb.c
  %i.n = icmp sgt i32 %.0147, 0
  br i1 %i.n, label %iter.check, label %.thread234

iter.check:                                       ; preds = %bb.d, %bb.f
  %.0132229 = phi i32 [ 100, %bb.f ], [ %.0147, %bb.d ]
  %.0142227 = phi ptr [ %i.a, %bb.f ], [ %i.l, %bb.d ] ; 6 uses
  %i.o = zext nneg i32 %.0147 to i64              ; 7 uses
  %i.p = shl nuw nsw i64 %i.o, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.0142227, ptr align 2 %0, i64 %i.p, i1 false), !tbaa !14
  %min.iters.check = icmp ult i32 %.0147, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check280 = icmp ult i32 %.0147, 16
  br i1 %min.iters.check280, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.o, 12
  %n.vec = and i64 %i.o, 2147483632               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi281 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !14
  %wide.load282 = load <8 x i16>, ptr %i.s, align 2, !tbaa !14
  %i.t = icmp ugt <8 x i16> %wide.load, splat (i16 127)
  %i.u = icmp ugt <8 x i16> %wide.load282, splat (i16 127)
  %i.v = or <8 x i1> %vec.phi, %i.t               ; 2 uses
  %i.w = or <8 x i1> %vec.phi281, %i.u            ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.w, %i.v
  %bin.rdx.fr = freeze <8 x i1> %bin.rdx
  %i.y = bitcast <8 x i1> %bin.rdx.fr to i8
  %.not291 = icmp eq i8 %i.y, 0
  %rdx.select = zext i1 %.not291 to i8            ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.o
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %rdx.select, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %8 = icmp eq i8 %bc.merge.rdx, 0
  %n.vec283 = and i64 %i.o, 2147483644            ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %8, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index284 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next287, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi285 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr292, %vec.epilog.vector.body ]
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index284
  %wide.load286 = load <4 x i16>, ptr %i.z, align 2, !tbaa !14
  %i.aa = icmp ugt <4 x i16> %wide.load286, splat (i16 127)
  %i.ab = or <4 x i1> %vec.phi285, %i.aa
  %.fr292 = freeze <4 x i1> %i.ab                 ; 2 uses
  %index.next287 = add nuw i64 %index284, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next287, %n.vec283
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ad = bitcast <4 x i1> %.fr292 to i4
  %.not293 = icmp eq i4 %i.ad, 0
  %rdx.select288 = zext i1 %.not293 to i8         ; 2 uses
  %cmp.n289 = icmp eq i64 %n.vec283, %i.o
  br i1 %cmp.n289, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec283, %vec.epilog.middle.block ]
  %.0127197.ph = phi i8 [ 1, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select288, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.0127197 = phi i8 [ %spec.select, %.lr.ph ], [ %.0127197.ph, %.lr.ph.preheader ]
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !14
  %i.ag = icmp ugt i16 %i.af, 127
  %spec.select = select i1 %i.ag, i8 0, i8 %.0127197 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %spec.select.lcssa = phi i8 [ %rdx.select288, %vec.epilog.middle.block ], [ %rdx.select, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.ah = icmp eq i8 %spec.select.lcssa, 0
  br i1 %i.ah, label %bb.g, label %bb.o

bb.g:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 0, ptr %i.c, align 4, !tbaa !12
  %i.ai = call i32 @usprep_prepare_78(ptr noundef %5, ptr noundef nonnull %0, i32 noundef %.0147, ptr noundef nonnull %.0142227, i32 noundef %.0132229, i32 noundef %i.e, ptr noundef %6, ptr noundef nonnull %i.c) ; 3 uses
  %i.aj = load i32, ptr %i.c, align 4, !tbaa !12  ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 15
  br i1 %i.ak, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not157 = icmp eq ptr %.0142227, %i.a
  br i1 %.not157, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @uprv_free_78(ptr noundef nonnull %.0142227)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = shl nsw i32 %i.ai, 1
  %i.am = sext i32 %i.al to i64
  %i.an = call noalias ptr @uprv_malloc_78(i64 noundef %i.am) #6 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.c, align 4, !tbaa !12
  %i.ap = call i32 @usprep_prepare_78(ptr noundef %5, ptr noundef nonnull %0, i32 noundef %.0147, ptr noundef nonnull %i.an, i32 noundef %i.ai, i32 noundef %i.e, ptr noundef %6, ptr noundef nonnull %i.c)
  %.pre = load i32, ptr %i.c, align 4, !tbaa !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %i.aq = phi i32 [ %.pre, %bb.k ], [ %i.aj, %bb.g ] ; 2 uses
  %.1143 = phi ptr [ %i.an, %bb.k ], [ %.0142227, %bb.g ]
  %.1135 = phi i32 [ %i.ap, %bb.k ], [ %i.ai, %bb.g ]
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.aq, ptr %7, align 4, !tbaa !12
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  store i32 7, ptr %7, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  br label %.thread182

bb.o:                                             ; preds = %.thread, %._crit_edge
  %.3145 = phi ptr [ %.1143, %.thread ], [ %.0142227, %._crit_edge ] ; 24 uses
  %.3137 = phi i32 [ %.1135, %.thread ], [ %.0147, %._crit_edge ] ; 16 uses
  %i.as = load i32, ptr %7, align 4, !tbaa !12
  %i.at = icmp slt i32 %i.as, 1
  br i1 %i.at, label %bb.p, label %bb.ah

.thread234:                                       ; preds = %bb.f
  %i.au = load i32, ptr %7, align 4, !tbaa !12
  %i.av = icmp slt i32 %i.au, 1
  br i1 %i.av, label %.thread242, label %.thread274

bb.p:                                             ; preds = %bb.o
  %i.aw = icmp eq i32 %.3137, 0
  br i1 %i.aw, label %.thread242, label %.preheader

.preheader:                                       ; preds = %bb.p
  %i.ax = icmp sgt i32 %.3137, 0                  ; 2 uses
  br i1 %i.ax, label %.lr.ph204.preheader, label %._crit_edge205.thread

.lr.ph204.preheader:                              ; preds = %.preheader
  %wide.trip.count211 = zext nneg i32 %.3137 to i64
  br label %.lr.ph204

.thread242:                                       ; preds = %.thread234, %bb.p
  %.3145237245 = phi ptr [ %.3145, %bb.p ], [ %i.a, %.thread234 ]
  store i32 66567, ptr %7, align 4, !tbaa !12
  br label %bb.ah

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %.split
  %indvars.iv209 = phi i64 [ 0, %.lr.ph204.preheader ], [ %indvars.iv.next210, %.split ] ; 4 uses
  %.0121203 = phi i32 [ -1, %.lr.ph204.preheader ], [ %.1122, %.split ] ; 2 uses
  %.0125201 = phi i8 [ 1, %.lr.ph204.preheader ], [ %.1126, %.split ] ; 2 uses
  %.2200 = phi i8 [ 1, %.lr.ph204.preheader ], [ %.3, %.split ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.3145, i64 %indvars.iv209
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !14 ; 6 uses
  %i.ba = icmp ugt i16 %i.az, 127
  br i1 %i.ba, label %.split, label %bb.q

bb.q:                                             ; preds = %.lr.ph204
  %i.bb = icmp samesign ugt i16 %i.az, 122
  br i1 %i.bb, label %.thread251, label %_ZL9isLDHCharDs.exit

.thread251:                                       ; preds = %bb.q
  %i.bc = trunc nuw nsw i64 %indvars.iv209 to i32
  br label %.split

_ZL9isLDHCharDs.exit:                             ; preds = %bb.q
  %i.bd = icmp ne i16 %i.az, 45
  %i.be = add nsw i16 %i.az, -58
  %or.cond.i = icmp ult i16 %i.be, -10
  %or.cond18.i.not195 = select i1 %i.bd, i1 %or.cond.i, i1 false
  %i.bf = add nsw i16 %i.az, -91
  %or.cond5.i = icmp ult i16 %i.bf, -26
  %or.cond19.i.not193 = select i1 %or.cond18.i.not195, i1 %or.cond5.i, i1 false
  %i.bg = icmp samesign ult i16 %i.az, 97
  %or.cond20.i.not = and i1 %i.bg, %or.cond19.i.not193
  %cond.fr = freeze i1 %or.cond20.i.not           ; 2 uses
  %i.bh = trunc nuw nsw i64 %indvars.iv209 to i32
  %spec.select294 = select i1 %cond.fr, i8 0, i8 %.0125201
  %spec.select295 = select i1 %cond.fr, i32 %i.bh, i32 %.0121203
  br label %.split

.split:                                           ; preds = %_ZL9isLDHCharDs.exit, %.thread251, %.lr.ph204
  %.3 = phi i8 [ 0, %.lr.ph204 ], [ %.2200, %.thread251 ], [ %.2200, %_ZL9isLDHCharDs.exit ] ; 2 uses
  %.1126 = phi i8 [ %.0125201, %.lr.ph204 ], [ 0, %.thread251 ], [ %spec.select294, %_ZL9isLDHCharDs.exit ] ; 2 uses
  %.1122 = phi i32 [ %.0121203, %.lr.ph204 ], [ %i.bc, %.thread251 ], [ %spec.select295, %_ZL9isLDHCharDs.exit ] ; 2 uses
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %exitcond212.not = icmp eq i64 %indvars.iv.next210, %wide.trip.count211
  br i1 %exitcond212.not, label %._crit_edge205, label %.lr.ph204, !llvm.loop !19

._crit_edge205:                                   ; preds = %.split
  %i.bi = icmp eq i8 %.3, 0                       ; 2 uses
  br i1 %.not, label %bb.w, label %bb.r

._crit_edge205.thread:                            ; preds = %.preheader
  br i1 %.not, label %.thread267, label %.thread262

bb.r:                                             ; preds = %._crit_edge205
  %i.bj = icmp eq i8 %.1126, 0
  br i1 %i.bj, label %bb.t, label %.thread262

.thread262:                                       ; preds = %._crit_edge205.thread, %bb.r
  %.2.lcssa258266 = phi i1 [ %i.bi, %bb.r ], [ false, %._crit_edge205.thread ]
  %i.bk = load i16, ptr %.3145, align 2, !tbaa !14
  %i.bl = icmp eq i16 %i.bk, 45
  br i1 %i.bl, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.thread262
  %i.bm = sext i32 %.3137 to i64
  %i.bn = getelementptr [2 x i8], ptr %.3145, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -2
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !14
  %i.bq = icmp eq i16 %i.bp, 45
  br i1 %i.bq, label %bb.v, label %bb.w

bb.t:                                             ; preds = %bb.r
  store i32 66563, ptr %7, align 4, !tbaa !12
  call void @uprv_syntaxError_78(ptr noundef nonnull %.3145, i32 noundef %.1122, i32 noundef %.3137, ptr noundef %6)
  br label %bb.ah

bb.u:                                             ; preds = %.thread262
  store i32 66563, ptr %7, align 4, !tbaa !12
  call void @uprv_syntaxError_78(ptr noundef nonnull %.3145, i32 noundef 0, i32 noundef %.3137, ptr noundef %6)
  br label %bb.ah

bb.v:                                             ; preds = %bb.s
end_hunk_0
