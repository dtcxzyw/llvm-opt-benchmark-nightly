inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@ap_php_conv_p2.low_digits = internal unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@ap_php_conv_p2.upper_digits = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@.str = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"printf \22p\22 modifier is no longer supported, use ZEND_LONG_FMT\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"-INF\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"Illegal length modifier specified '%c' in s[np]printf call\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local noundef nonnull ptr @ap_php_conv_10(i64 noundef %0, i1 noundef zeroext %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %.lobit = lshr i64 %0, 63
  %i.a = trunc nuw nsw i64 %.lobit to i8
  %spec.select = tail call i64 @llvm.abs.i64(i64 %0, i1 false)
  %.sink = select i1 %1, i8 0, i8 %i.a
  %.019 = select i1 %1, i64 %0, i64 %spec.select
  store i8 %.sink, ptr %2, align 1, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i64 [ %.019, %bb.a ], [ %i.b, %bb.b ] ; 3 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.f, %bb.b ]
  %i.b = udiv i64 %.1, 10                         ; 2 uses
  %.neg = mul i64 %i.b, 246
  %i.c = add i64 %.neg, %.1
  %i.d = trunc i64 %i.c to i8
  %i.e = add i8 %i.d, 48
  %i.f = getelementptr inbounds i8, ptr %.0, i64 -1 ; 4 uses
  store i8 %i.e, ptr %i.f, align 1, !tbaa !14
  %.not = icmp ult i64 %.1, 10
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !15

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %3 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  store i64 %i.i, ptr %4, align 8, !tbaa !17
  ret ptr %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @php_conv_fp(i8 noundef signext %0, double noundef %1, i1 noundef zeroext %2, i32 noundef %3, i8 noundef signext %4, ptr noundef %5, ptr noundef returned %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 18 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %3, i32 318) ; 2 uses
  %i.d = icmp eq i8 %0, 70                        ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = call fastcc noundef ptr @__cvt(double noundef %1, i32 noundef %spec.store.select, ptr noundef nonnull %i.a, ptr noundef %5, i32 noundef 1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %spec.store.select, 1
  %i.g = call fastcc noundef ptr @__cvt(double noundef %1, i32 noundef range(i32 -2147483647, -2147483648) %i.f, ptr noundef nonnull %i.a, ptr noundef %5, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.064 = phi ptr [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 17 uses
  %i.h = tail call ptr @__ctype_b_loc() #18
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = load i8, ptr %.064, align 1, !tbaa !14   ; 2 uses
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !22
  %i.n = and i16 %i.m, 1024
  %.not = icmp eq i16 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.064) #19 ; 2 uses
  store i64 %i.o, ptr %7, align 8, !tbaa !17
  %i.p = add i64 %i.o, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr nonnull align 1 %.064, i64 %i.p, i1 false)
  store i8 0, ptr %5, align 1, !tbaa !12
  br label %bb.w

bb.f:                                             ; preds = %bb.d
  br i1 %i.d, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %i.a, align 4, !tbaa !24   ; 9 uses
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.s = fcmp une double %1, 0.000000e+00
  %i.t = icmp sgt i32 %3, 0                       ; 2 uses
  %or.cond = or i1 %i.s, %i.t
  br i1 %or.cond, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 3 uses
  store i8 48, ptr %6, align 1, !tbaa !14
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %6, i64 2          ; 2 uses
  store i8 %4, ptr %i.u, align 1, !tbaa !14
  %i.w = icmp slt i32 %i.q, 0
  br i1 %i.w, label %.lr.ph93.preheader, label %.loopexit82

.lr.ph93.preheader:                               ; preds = %bb.j
  %i.x = xor i32 %i.q, -1
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = add nuw nsw i64 %i.y, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.v, i8 48, i64 %i.z, i1 false), !tbaa !14
  %i.aa = getelementptr i8, ptr %6, i64 %i.y
  %scevgep116 = getelementptr i8, ptr %i.aa, i64 3
  br label %.loopexit82

bb.k:                                             ; preds = %bb.i
  br i1 %2, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %4, ptr %i.u, align 1, !tbaa !14
  br label %bb.q

bb.m:                                             ; preds = %bb.g
  %i.ac = call i32 @llvm.usub.sat.i32(i32 %i.q, i32 319) ; 2 uses
  %i.ad = sub nsw i32 %i.q, %i.ac                 ; 5 uses
  %i.ae = add nsw i32 %i.ad, -1                   ; 4 uses
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !24
  %8 = icmp sgt i32 %i.ad, 0
  br i1 %8, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %9 = call i32 @llvm.umin.i32(i32 %i.q, i32 319)
  %i.af = zext nneg i32 %9 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.q, 24
  br i1 %min.iters.check, label %.lr.ph.preheader177, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ag = zext nneg i32 %i.ad to i64              ; 2 uses
  %scevgep132 = getelementptr i8, ptr %6, i64 %i.ag ; 2 uses
  %scevgep133 = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %scevgep134 = getelementptr i8, ptr %.064, i64 %i.ag ; 2 uses
  %bound0 = icmp ult ptr %6, %scevgep133
  %bound1 = icmp ult ptr %i.a, %scevgep132
  %found.conflict = and i1 %bound0, %bound1
  %bound0135 = icmp ult ptr %6, %scevgep134
  %bound1136 = icmp ult ptr %.064, %scevgep132
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx = or i1 %found.conflict, %found.conflict137
  %bound0138 = icmp ult ptr %i.a, %scevgep134
  %bound1139 = icmp ult ptr %.064, %scevgep133
  %found.conflict140 = and i1 %bound0138, %bound1139
  %conflict.rdx141 = or i1 %conflict.rdx, %found.conflict140
  br i1 %conflict.rdx141, label %.lr.ph.preheader177, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 504                     ; 5 uses
  %i.ah = trunc nuw nsw i64 %n.vec to i32
  %i.ai = sub i32 %i.ae, %i.ah
  %i.aj = getelementptr i8, ptr %.064, i64 %n.vec ; 2 uses
  %i.ak = getelementptr i8, ptr %6, i64 %n.vec    ; 2 uses
  %i.al = add nsw i32 %i.ad, -4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = phi i32 [ %i.al, %vector.ph ], [ %i.ap, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.064, i64 %index ; 2 uses
  %next.gep142 = getelementptr i8, ptr %6, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !14, !alias.scope !25
  %wide.load143 = load <4 x i8>, ptr %i.an, align 1, !tbaa !14, !alias.scope !25
  %i.ao = getelementptr i8, ptr %next.gep142, i64 4
  store <4 x i8> %wide.load, ptr %next.gep142, align 1, !tbaa !14, !alias.scope !28, !noalias !30
  store <4 x i8> %wide.load143, ptr %i.ao, align 1, !tbaa !14, !alias.scope !28, !noalias !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = add nsw i32 %i.am, -8
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %i.ar = add nsw i32 %i.am, -5
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !24, !alias.scope !35, !noalias !25
  %cmp.n = icmp eq i64 %n.vec, %i.af
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader177

.lr.ph.preheader177:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.preheader ], [ %i.ai, %middle.block ] ; 4 uses
  %.184.ph = phi ptr [ %.064, %vector.memcheck ], [ %.064, %.lr.ph.preheader ], [ %i.aj, %middle.block ] ; 2 uses
  %.16783.ph = phi ptr [ %6, %vector.memcheck ], [ %6, %.lr.ph.preheader ], [ %i.ak, %middle.block ] ; 2 uses
  %i.as = add i32 %.ph, 1
  %xtraiter = and i32 %i.as, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader177, %.lr.ph.prol
  %i.at = phi i32 [ %i.ax, %.lr.ph.prol ], [ %.ph, %.lr.ph.preheader177 ]
  %.184.prol = phi ptr [ %i.au, %.lr.ph.prol ], [ %.184.ph, %.lr.ph.preheader177 ] ; 2 uses
  %.16783.prol = phi ptr [ %i.aw, %.lr.ph.prol ], [ %.16783.ph, %.lr.ph.preheader177 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader177 ]
  %i.au = getelementptr inbounds nuw i8, ptr %.184.prol, i64 1 ; 3 uses
  %i.av = load i8, ptr %.184.prol, align 1, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %.16783.prol, i64 1 ; 3 uses
  store i8 %i.av, ptr %.16783.prol, align 1, !tbaa !14
  %i.ax = add nsw i32 %i.at, -1                   ; 3 uses
  store i32 %i.ax, ptr %i.a, align 4, !tbaa !24
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !36

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader177
  %.lcssa179.unr.a = phi ptr [ poison, %.lr.ph.preheader177 ], [ %i.au, %.lr.ph.prol ]
  %.lcssa178.unr = phi ptr [ poison, %.lr.ph.preheader177 ], [ %i.aw, %.lr.ph.prol ]
  %.unr = phi i32 [ %.ph, %.lr.ph.preheader177 ], [ %i.ax, %.lr.ph.prol ]
  %.184.unr = phi ptr [ %.184.ph, %.lr.ph.preheader177 ], [ %i.au, %.lr.ph.prol ]
  %.16783.unr = phi ptr [ %.16783.ph, %.lr.ph.preheader177 ], [ %i.aw, %.lr.ph.prol ]
  %i.ay = icmp ult i32 %.ph, 3
  br i1 %i.ay, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.m
  %.167.lcssa = phi ptr [ %6, %bb.m ], [ %i.ak, %middle.block ], [ %.lcssa178.unr, %.lr.ph.prol.loopexit ], [ %i.bt, %.lr.ph ] ; 3 uses
  %.1.lcssa = phi ptr [ %.064, %bb.m ], [ %i.aj, %middle.block ], [ %.lcssa179.unr.a, %.lr.ph.prol.loopexit ], [ %i.br, %.lr.ph ] ; 2 uses
  %.not127 = icmp ult i32 %i.q, 320
  br i1 %.not127, label %._crit_edge, label %.lr.ph88.preheader

.lr.ph88.preheader:                               ; preds = %.preheader
  %i.az = zext nneg i32 %i.ac to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.167.lcssa, i8 48, i64 %i.az, i1 false), !tbaa !14
  %i.ba = xor i32 %i.ad, -1
  %i.bb = add i32 %i.q, %i.ba
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr i8, ptr %.167.lcssa, i64 %i.bc
  %scevgep = getelementptr i8, ptr %i.bd, i64 1
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.be = phi i32 [ %i.bu, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.184 = phi ptr [ %i.br, %.lr.ph ], [ %.184.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.16783 = phi ptr [ %i.bt, %.lr.ph ], [ %.16783.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.184, i64 1
  %i.bg = load i8, ptr %.184, align 1, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %.16783, i64 1
  store i8 %i.bg, ptr %.16783, align 1, !tbaa !14
  %i.bi = add nsw i32 %i.be, -1
  store i32 %i.bi, ptr %i.a, align 4, !tbaa !24
  %i.bj = getelementptr inbounds nuw i8, ptr %.184, i64 2
  %i.bk = load i8, ptr %i.bf, align 1, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %.16783, i64 2
  store i8 %i.bk, ptr %i.bh, align 1, !tbaa !14
  %i.bm = add nsw i32 %i.be, -2
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %.184, i64 3
  %i.bo = load i8, ptr %i.bj, align 1, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %.16783, i64 3
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !14
  %i.bq = add nsw i32 %i.be, -3                   ; 2 uses
  store i32 %i.bq, ptr %i.a, align 4, !tbaa !24
  %i.br = getelementptr inbounds nuw i8, ptr %.184, i64 4 ; 2 uses
  %i.bs = load i8, ptr %i.bn, align 1, !tbaa !14
  %i.bt = getelementptr inbounds nuw i8, ptr %.16783, i64 4 ; 2 uses
  store i8 %i.bs, ptr %i.bp, align 1, !tbaa !14
  %i.bu = add nsw i32 %i.be, -4                   ; 2 uses
  store i32 %i.bu, ptr %i.a, align 4, !tbaa !24
  %.not126.3 = icmp eq i32 %i.bq, 0
  br i1 %.not126.3, label %.preheader, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph88.preheader, %.preheader
  %.268.lcssa = phi ptr [ %.167.lcssa, %.preheader ], [ %scevgep, %.lr.ph88.preheader ] ; 3 uses
  %i.bv = icmp sgt i32 %3, 0
  %or.cond3 = or i1 %2, %i.bv
  br i1 %or.cond3, label %bb.n, label %bb.q

bb.n:                                             ; preds = %._crit_edge
  %i.bw = getelementptr inbounds nuw i8, ptr %.268.lcssa, i64 1
  store i8 %4, ptr %.268.lcssa, align 1, !tbaa !14
  br label %bb.q

bb.o:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %.064, i64 1 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  store i8 %i.j, ptr %6, align 1, !tbaa !14
  %i.bz = icmp sgt i32 %3, 0
  %or.cond5 = or i1 %2, %i.bz
  br i1 %or.cond5, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 46, ptr %i.by, align 1, !tbaa !14
  br label %bb.q

.loopexit82:                                      ; preds = %.lr.ph93.preheader, %bb.j
  %.066.lcssa = phi ptr [ %i.v, %bb.j ], [ %scevgep116, %.lr.ph93.preheader ]
  store i32 1, ptr %i.a, align 4, !tbaa !24
  br label %bb.q

bb.q:                                             ; preds = %.loopexit82, %bb.n, %._crit_edge, %bb.p, %bb.o, %bb.l, %bb.k, %bb.h
  %.470 = phi ptr [ %.268.lcssa, %._crit_edge ], [ %i.ab, %bb.l ], [ %i.u, %bb.k ], [ %6, %bb.h ], [ %i.by, %bb.o ], [ %i.ca, %bb.p ], [ %i.bw, %bb.n ], [ %.066.lcssa, %.loopexit82 ] ; 2 uses
  %.2 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %.064, %bb.l ], [ %.064, %bb.k ], [ %.064, %bb.h ], [ %i.bx, %bb.o ], [ %i.bx, %bb.p ], [ %.1.lcssa, %bb.n ], [ %.064, %.loopexit82 ] ; 2 uses
  %i.cb = load i8, ptr %.2, align 1, !tbaa !14    ; 2 uses
  %.not7596 = icmp eq i8 %i.cb, 0
  br i1 %.not7596, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.q, %.lr.ph100
  %i.cc = phi i8 [ %i.cf, %.lr.ph100 ], [ %i.cb, %bb.q ]
  %.398 = phi ptr [ %i.cd, %.lr.ph100 ], [ %.2, %bb.q ]
  %.597 = phi ptr [ %i.ce, %.lr.ph100 ], [ %.470, %bb.q ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.398, i64 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.597, i64 1 ; 2 uses
  store i8 %i.cc, ptr %.597, align 1, !tbaa !14
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !14  ; 2 uses
  %.not75 = icmp eq i8 %i.cf, 0
  br i1 %.not75, label %._crit_edge101, label %.lr.ph100, !llvm.loop !39

._crit_edge101:                                   ; preds = %.lr.ph100, %bb.q
  %.5.lcssa = phi ptr [ %.470, %bb.q ], [ %i.ce, %.lr.ph100 ] ; 7 uses
  %.5.lcssa147 = ptrtoaddr ptr %.5.lcssa to i64
  br i1 %i.d, label %bb.v, label %bb.r

bb.r:                                             ; preds = %._crit_edge101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.cg = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 1 ; 2 uses
  store i8 %0, ptr %.5.lcssa, align 1, !tbaa !14
  %i.ch = load i32, ptr %i.a, align 4, !tbaa !24  ; 2 uses
  %i.ci = add nsw i32 %i.ch, -1                   ; 3 uses
  store i32 %i.ci, ptr %i.a, align 4, !tbaa !24
  %.not77 = icmp eq i32 %i.ci, 0
  br i1 %.not77, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 10 ; 2 uses
  %i.ck = call i32 @llvm.abs.i32(i32 %i.ci, i1 false)
  %spec.select.i = zext i32 %i.ck to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %indvar = phi i64 [ %indvar.next, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %.1.i = phi i64 [ %i.cl, %bb.t ], [ %spec.select.i, %bb.s ] ; 3 uses
  %.0.i = phi ptr [ %i.cp, %bb.t ], [ %i.cj, %bb.s ]
  %i.cl = udiv i64 %.1.i, 10                      ; 2 uses
  %.neg.i = mul nuw nsw i64 %i.cl, 246
  %i.cm = add nuw nsw i64 %.neg.i, %.1.i
  %i.cn = trunc i64 %i.cm to i8
  %i.co = add i8 %i.cn, 48
  %i.cp = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 9 uses
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !14
  %.not.i = icmp samesign ult i64 %.1.i, 10
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %iter.check, label %bb.t, !llvm.loop !15

iter.check:                                       ; preds = %bb.t
  %i.cq = icmp slt i32 %i.ch, 1
  %i.cr = select i1 %i.cq, i8 45, i8 43
  store i8 %i.cr, ptr %i.cg, align 1, !tbaa !14
  %i.cs = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 2 ; 6 uses
  %i.ct = ptrtoint ptr %i.cj to i64
  %i.cu = ptrtoint ptr %i.cp to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 11 uses
  %min.iters.check149 = icmp ult i64 %i.cv, 4
  br i1 %min.iters.check149, label %.lr.ph107.preheader, label %vector.memcheck146

vector.memcheck146:                               ; preds = %iter.check
  %i.cw = add i64 %.5.lcssa147, -7
  %i.cx = sub i64 %i.cw, %i.c
  %i.cy = add i64 %i.cx, %indvar
  %i.cz = add i64 %i.cy, -1
  %diff.check = icmp ult i64 %i.cz, 31
  br i1 %diff.check, label %.lr.ph107.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck146
  %min.iters.check150 = icmp ult i64 %i.cv, 32
  br i1 %min.iters.check150, label %vec.epilog.ph, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check
  %i.da = and i64 %i.cv, 28
  %n.vec152 = and i64 %i.cv, -32                  ; 5 uses
  %i.db = getelementptr i8, ptr %i.cp, i64 %n.vec152
  %i.dc = getelementptr i8, ptr %i.cs, i64 %n.vec152 ; 2 uses
  %i.dd = and i64 %i.cv, 31
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body153 ] ; 3 uses
  %next.gep155 = getelementptr i8, ptr %i.cp, i64 %index154 ; 2 uses
  %next.gep156 = getelementptr i8, ptr %i.cs, i64 %index154 ; 2 uses
  %i.de = getelementptr i8, ptr %next.gep155, i64 16
  %wide.load157 = load <16 x i8>, ptr %next.gep155, align 1, !tbaa !14
  %wide.load158 = load <16 x i8>, ptr %i.de, align 1, !tbaa !14
  %i.df = getelementptr i8, ptr %next.gep156, i64 16
  store <16 x i8> %wide.load157, ptr %next.gep156, align 1, !tbaa !14
  store <16 x i8> %wide.load158, ptr %i.df, align 1, !tbaa !14
  %index.next159 = add nuw i64 %index154, 32      ; 2 uses
  %i.dg = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.dg, label %middle.block160, label %vector.body153, !llvm.loop !40

middle.block160:                                  ; preds = %vector.body153
  %cmp.n161 = icmp eq i64 %i.cv, %n.vec152
  br i1 %cmp.n161, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block160
  %min.epilog.iters.check = icmp eq i64 %i.da, 0
  br i1 %min.epilog.iters.check, label %.lr.ph107.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec152, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec165 = and i64 %i.cv, -4                   ; 4 uses
  %i.dh = getelementptr i8, ptr %i.cp, i64 %n.vec165
  %i.di = getelementptr i8, ptr %i.cs, i64 %n.vec165 ; 2 uses
  %i.dj = and i64 %i.cv, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index166 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next170, %vec.epilog.vector.body ] ; 3 uses
  %next.gep167 = getelementptr i8, ptr %i.cp, i64 %index166
  %next.gep168 = getelementptr i8, ptr %i.cs, i64 %index166
  %wide.load169 = load <4 x i8>, ptr %next.gep167, align 1, !tbaa !14
  store <4 x i8> %wide.load169, ptr %next.gep168, align 1, !tbaa !14
  %index.next170 = add nuw i64 %index166, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next170, %n.vec165
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !42

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n171 = icmp eq i64 %i.cv, %n.vec165
  br i1 %cmp.n171, label %.loopexit, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %vector.memcheck146, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.4106.ph = phi ptr [ %i.cp, %iter.check ], [ %i.cp, %vector.memcheck146 ], [ %i.db, %vec.epilog.iter.check ], [ %i.dh, %vec.epilog.middle.block ] ; 2 uses
  %.6105.ph = phi ptr [ %i.cs, %iter.check ], [ %i.cs, %vector.memcheck146 ], [ %i.dc, %vec.epilog.iter.check ], [ %i.di, %vec.epilog.middle.block ] ; 2 uses
  %.080104.ph = phi i64 [ %i.cv, %iter.check ], [ %i.cv, %vector.memcheck146 ], [ %i.dd, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ] ; 4 uses
  %i.dl = add i64 %.080104.ph, -1
  %xtraiter181 = and i64 %.080104.ph, 7           ; 2 uses
end_hunk_0
begin_hunk_1_@__cvt
define internal fastcc noundef ptr @__cvt(double noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.0.in.p = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %.0.in = add nuw i32 %.0.in.p, 1
  %.0 = zext i32 %.0.in to i64                    ; 3 uses
  %i.b = fcmp oeq double %0, 0.000000e+00
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = xor i32 %4, 1
  store i32 %i.c, ptr %2, align 4, !tbaa !24
  store i8 0, ptr %3, align 1, !tbaa !12
  %.not48 = icmp eq i32 %1, 0                     ; 2 uses
  %i.d = select i1 %.not48, i64 2, i64 %.0
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #22 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !57
  store i8 48, ptr %i.e, align 1, !tbaa !14
  store i8 0, ptr %i.g, align 1, !tbaa !14
  br i1 %.not48, label %bb.j, label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.h = or disjoint i32 %4, 2
  %i.i = call ptr @zend_dtoa(double noundef %0, i32 noundef %i.h, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %i.a) #17 ; 6 uses
  %i.j = load i32, ptr %2, align 4, !tbaa !24     ; 2 uses
  %i.k = icmp eq i32 %i.j, 9999
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %2, align 4, !tbaa !24
  %i.l = load i8, ptr %i.i, align 1, !tbaa !14
  call void @zend_freedtoa(ptr noundef nonnull %i.i) #17
  %i.m = icmp eq i8 %i.l, 73
  %i.n = select i1 %i.m, ptr @.str, ptr @.str.1
  %i.o = call noalias dereferenceable_or_null(4) ptr @strdup(ptr noundef nonnull %i.n) #17
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq i32 %4, 0
  %narrow = select i1 %.not, i32 0, i32 %i.j
  %i.p = sext i32 %narrow to i64
  %.1 = add nsw i64 %i.p, %.0                     ; 3 uses
  %i.q = add nsw i64 %.1, 1
  %i.r = call noalias ptr @malloc(i64 noundef %i.q) #22 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @zend_freedtoa(ptr noundef %i.i) #17
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.t = call i64 @strlcpy(ptr noundef nonnull %i.r, ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef %.1) #17 ; 0 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.i to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.r, i64 %i.x
  store ptr %i.y, ptr %i.a, align 8, !tbaa !57
  call void @zend_freedtoa(ptr noundef nonnull %i.i) #17
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %i.z = phi ptr [ %i.g, %bb.c ], [ %.pre, %bb.h ] ; 2 uses
  %.040 = phi ptr [ %i.e, %bb.c ], [ %i.r, %bb.h ] ; 2 uses
  %.2 = phi i64 [ %.0, %bb.c ], [ %.1, %bb.h ]    ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = ptrtoint ptr %.040 to i64               ; 2 uses
  %.neg = add i64 %.2, %i.ab
  %i.ac = xor i64 %i.aa, -1
  %i.ad = add i64 %.neg, %i.ac                    ; 4 uses
  %.not4951 = icmp eq i64 %i.ad, 0
  br i1 %.not4951, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ae = add i64 %.2, %i.ab
  %i.af = add i64 %i.ae, -2
  %i.ag = sub i64 %i.af, %i.aa
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %i.ah = phi i64 [ %i.ak, %.lr.ph.prol ], [ %i.ad, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !57
  store i8 48, ptr %i.ai, align 1, !tbaa !14
  %i.ak = add i64 %i.ah, -1                       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !74

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.unr = phi i64 [ %i.ad, %.lr.ph.preheader ], [ %i.ak, %.lr.ph.prol ]
  %i.al = icmp ult i64 %i.ag, 3
  br i1 %i.al, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.am = phi i64 [ %i.av, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !57
  store i8 48, ptr %i.an, align 1, !tbaa !14
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !57
  store i8 48, ptr %i.ap, align 1, !tbaa !14
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.as, ptr %i.a, align 8, !tbaa !57
  store i8 48, ptr %i.ar, align 1, !tbaa !14
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.au, ptr %i.a, align 8, !tbaa !57
  store i8 48, ptr %i.at, align 1, !tbaa !14
  %i.av = add i64 %i.am, -4                       ; 2 uses
  %.not49.3 = icmp eq i64 %i.av, 0
  br i1 %.not49.3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !75

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.pre52 = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %i.aw = phi ptr [ %.pre52, %._crit_edge.loopexit ], [ %i.z, %bb.i ]
  store i8 0, ptr %i.aw, align 1, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.b, %._crit_edge, %bb.g, %bb.e
  %.039 = phi ptr [ null, %bb.g ], [ %.040, %._crit_edge ], [ null, %bb.b ], [ %i.o, %bb.e ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.039
}

declare ptr @zend_dtoa(double noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @zend_freedtoa(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @zend_error_noreturn(i32 noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare ptr @llvm.ptrmask.p0.i64(ptr, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #13

; Function Attrs: nounwind
declare ptr @localeconv() local_unnamed_addr #8

declare ptr @zend_gcvt(double noundef, i32 noundef, i8 noundef signext, i8 noundef signext, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @zend_error(i32 noundef, ptr noundef, ...) local_unnamed_addr #9

declare ptr @zval_get_string_func(ptr noundef) local_unnamed_addr #9

declare void @_efree(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { noreturn nounwind }
attributes #21 = { memory(none) }
attributes #22 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"_Bool", !10, i64 0}
!14 = !{!10, !10, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !10, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 short", !21, i64 0}
!21 = !{!"any pointer", !10, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"short", !10, i64 0}
!24 = !{!9, !9, i64 0}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = !{!31, !26}
!31 = distinct !{!31, !27}
!32 = distinct !{!32, !16, !33, !34}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = !{!31}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = distinct !{!38, !16, !33}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16, !33, !34}
!41 = !{!"branch_weights", i32 4, i32 28}
!42 = distinct !{!42, !16, !33, !34}
!43 = distinct !{!43, !37}
!44 = distinct !{!44, !16, !33}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = !{!50, !50, i64 0}
!50 = !{!"p1 _ZTS12_zval_struct", !21, i64 0}
!51 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!52 = !{!53, !18, i64 16}
!53 = !{!"_zend_string", !54, i64 0, !18, i64 8, !18, i64 16, !10, i64 24}
!54 = !{!"_zend_refcounted_h", !9, i64 0, !10, i64 4}
!55 = !{!56, !56, i64 0}
!56 = !{!"long long", !10, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"p1 omnipotent char", !21, i64 0}
!59 = !{!60, !60, i64 0}
!60 = !{!"long double", !10, i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"double", !10, i64 0}
!63 = !{!64, !58, i64 0}
!64 = !{!"lconv", !58, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !58, i64 56, !58, i64 64, !58, i64 72, !10, i64 80, !10, i64 81, !10, i64 82, !10, i64 83, !10, i64 84, !10, i64 85, !10, i64 86, !10, i64 87, !10, i64 88, !10, i64 89, !10, i64 90, !10, i64 91, !10, i64 92, !10, i64 93}
!65 = !{i8 0, i8 2}
!66 = !{}
!67 = !{!68, !68, i64 0}
!68 = !{!"p1 int", !21, i64 0}
!69 = distinct !{!69, !16}
!70 = distinct !{!70, !37}
!71 = distinct !{!71, !16}
!72 = distinct !{!72, !16}
!73 = !{!54, !9, i64 0}
!74 = distinct !{!74, !37}
!75 = distinct !{!75, !16}
end_hunk_1
