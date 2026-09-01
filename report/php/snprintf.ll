Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/snprintf?download=true
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
  %.064 = phi ptr [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 16 uses
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
  %i.q = load i32, ptr %i.a, align 4, !tbaa !24   ; 7 uses
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
  %i.ad = sub nsw i32 %i.q, %i.ac                 ; 3 uses
  %i.ae = add nsw i32 %i.ad, -1                   ; 7 uses
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !24
  %8 = zext i32 %i.ae to i64
  %9 = add nuw nsw i64 %8, 1                      ; 2 uses
  %min.iters.check = icmp ult i32 %i.ae, 23
  br i1 %min.iters.check, label %.lr.ph.preheader178, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.m
  %i.af = zext i32 %i.ae to i64
  %10 = add nuw nsw i64 %i.af, 1                  ; 2 uses
  %scevgep133 = getelementptr i8, ptr %6, i64 %10 ; 2 uses
  %scevgep134 = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %scevgep135 = getelementptr i8, ptr %.064, i64 %10 ; 2 uses
  %bound0 = icmp ult ptr %6, %scevgep134
  %bound1 = icmp ult ptr %i.a, %scevgep133
  %found.conflict = and i1 %bound0, %bound1
  %bound0136 = icmp ult ptr %6, %scevgep135
  %bound1137 = icmp ult ptr %.064, %scevgep133
  %found.conflict138 = and i1 %bound0136, %bound1137
  %conflict.rdx = or i1 %found.conflict, %found.conflict138
  %bound0139 = icmp ult ptr %i.a, %scevgep135
  %bound1140 = icmp ult ptr %.064, %scevgep134
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx142 = or i1 %conflict.rdx, %found.conflict141
  br i1 %conflict.rdx142, label %.lr.ph.preheader178, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %9, 8589934584                 ; 5 uses
  %i.ag = trunc i64 %n.vec to i32
  %i.ah = sub i32 %i.ae, %i.ag
  %i.ai = getelementptr i8, ptr %.064, i64 %n.vec ; 2 uses
  %i.aj = getelementptr i8, ptr %6, i64 %n.vec    ; 2 uses
  %i.ak = add nsw i32 %i.ad, -4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = phi i32 [ %i.ak, %vector.ph ], [ %i.ao, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.064, i64 %index ; 2 uses
  %next.gep143 = getelementptr i8, ptr %6, i64 %index ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !14, !alias.scope !25
  %wide.load144 = load <4 x i8>, ptr %i.am, align 1, !tbaa !14, !alias.scope !25
  %i.an = getelementptr i8, ptr %next.gep143, i64 4
  store <4 x i8> %wide.load, ptr %next.gep143, align 1, !tbaa !14, !alias.scope !28, !noalias !30
  store <4 x i8> %wide.load144, ptr %i.an, align 1, !tbaa !14, !alias.scope !28, !noalias !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = add nsw i32 %i.al, -8
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %i.aq = add nsw i32 %i.al, -5
  store i32 %i.aq, ptr %i.a, align 4, !tbaa !24, !alias.scope !35, !noalias !25
  %cmp.n = icmp eq i64 %9, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader178

.lr.ph.preheader178:                              ; preds = %vector.memcheck, %bb.m, %middle.block
  %.ph = phi i32 [ %i.ae, %vector.memcheck ], [ %i.ae, %bb.m ], [ %i.ah, %middle.block ] ; 4 uses
  %.184.ph = phi ptr [ %.064, %vector.memcheck ], [ %.064, %bb.m ], [ %i.ai, %middle.block ] ; 2 uses
  %.16783.ph = phi ptr [ %6, %vector.memcheck ], [ %6, %bb.m ], [ %i.aj, %middle.block ] ; 2 uses
  %i.ar = add i32 %.ph, 1
  %xtraiter = and i32 %i.ar, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader178, %.lr.ph.prol
  %i.as = phi i32 [ %i.aw, %.lr.ph.prol ], [ %.ph, %.lr.ph.preheader178 ]
  %.184.prol = phi ptr [ %i.at, %.lr.ph.prol ], [ %.184.ph, %.lr.ph.preheader178 ] ; 2 uses
  %.16783.prol = phi ptr [ %i.av, %.lr.ph.prol ], [ %.16783.ph, %.lr.ph.preheader178 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader178 ]
  %i.at = getelementptr inbounds nuw i8, ptr %.184.prol, i64 1 ; 3 uses
  %i.au = load i8, ptr %.184.prol, align 1, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %.16783.prol, i64 1 ; 3 uses
  store i8 %i.au, ptr %.16783.prol, align 1, !tbaa !14
  %i.aw = add nsw i32 %i.as, -1                   ; 3 uses
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !24
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !36

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader178
  %.lcssa180.unr = phi ptr [ poison, %.lr.ph.preheader178 ], [ %i.at, %.lr.ph.prol ]
  %.lcssa179.unr = phi ptr [ poison, %.lr.ph.preheader178 ], [ %i.av, %.lr.ph.prol ]
  %.unr = phi i32 [ %.ph, %.lr.ph.preheader178 ], [ %i.aw, %.lr.ph.prol ]
  %.184.unr = phi ptr [ %.184.ph, %.lr.ph.preheader178 ], [ %i.at, %.lr.ph.prol ]
  %.16783.unr = phi ptr [ %.16783.ph, %.lr.ph.preheader178 ], [ %i.av, %.lr.ph.prol ]
  %i.ax = icmp ult i32 %.ph, 3
  br i1 %i.ax, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %.lcssa132 = phi ptr [ %i.ai, %middle.block ], [ %.lcssa180.unr, %.lr.ph.prol.loopexit ], [ %i.bq, %.lr.ph ] ; 2 uses
  %.lcssa131 = phi ptr [ %i.aj, %middle.block ], [ %.lcssa179.unr, %.lr.ph.prol.loopexit ], [ %i.bs, %.lr.ph ] ; 3 uses
  %.not128 = icmp ult i32 %i.q, 320
  br i1 %.not128, label %._crit_edge, label %.lr.ph88.preheader

.lr.ph88.preheader:                               ; preds = %.preheader
  %i.ay = zext nneg i32 %i.ac to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa131, i8 48, i64 %i.ay, i1 false), !tbaa !14
  %i.az = xor i32 %i.ad, -1
  %i.ba = add nsw i32 %i.q, %i.az
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr %.lcssa131, i64 %i.bb
  %scevgep = getelementptr i8, ptr %i.bc, i64 1
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.bd = phi i32 [ %i.bt, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.184 = phi ptr [ %i.bq, %.lr.ph ], [ %.184.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.16783 = phi ptr [ %i.bs, %.lr.ph ], [ %.16783.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.184, i64 1
  %i.bf = load i8, ptr %.184, align 1, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %.16783, i64 1
  store i8 %i.bf, ptr %.16783, align 1, !tbaa !14
  %i.bh = add nsw i32 %i.bd, -1
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %.184, i64 2
  %i.bj = load i8, ptr %i.be, align 1, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %.16783, i64 2
  store i8 %i.bj, ptr %i.bg, align 1, !tbaa !14
  %i.bl = add nsw i32 %i.bd, -2
  store i32 %i.bl, ptr %i.a, align 4, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %.184, i64 3
  %i.bn = load i8, ptr %i.bi, align 1, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %.16783, i64 3
  store i8 %i.bn, ptr %i.bk, align 1, !tbaa !14
  %i.bp = add nsw i32 %i.bd, -3                   ; 2 uses
  store i32 %i.bp, ptr %i.a, align 4, !tbaa !24
  %i.bq = getelementptr inbounds nuw i8, ptr %.184, i64 4 ; 2 uses
  %i.br = load i8, ptr %i.bm, align 1, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %.16783, i64 4 ; 2 uses
  store i8 %i.br, ptr %i.bo, align 1, !tbaa !14
  %i.bt = add nsw i32 %i.bd, -4                   ; 2 uses
  store i32 %i.bt, ptr %i.a, align 4, !tbaa !24
  %.not127.3 = icmp eq i32 %i.bp, 0
  br i1 %.not127.3, label %.preheader, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph88.preheader, %.preheader
  %.268.lcssa = phi ptr [ %.lcssa131, %.preheader ], [ %scevgep, %.lr.ph88.preheader ] ; 3 uses
  %i.bu = icmp sgt i32 %3, 0
  %or.cond3 = or i1 %2, %i.bu
  br i1 %or.cond3, label %bb.n, label %bb.q

bb.n:                                             ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %.268.lcssa, i64 1
  store i8 %4, ptr %.268.lcssa, align 1, !tbaa !14
  br label %bb.q

bb.o:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %.064, i64 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  store i8 %i.j, ptr %6, align 1, !tbaa !14
  %i.by = icmp sgt i32 %3, 0
  %or.cond5 = or i1 %2, %i.by
  br i1 %or.cond5, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 46, ptr %i.bx, align 1, !tbaa !14
  br label %bb.q

.loopexit82:                                      ; preds = %.lr.ph93.preheader, %bb.j
  %.066.lcssa = phi ptr [ %i.v, %bb.j ], [ %scevgep116, %.lr.ph93.preheader ]
  store i32 1, ptr %i.a, align 4, !tbaa !24
  br label %bb.q

bb.q:                                             ; preds = %.loopexit82, %bb.n, %._crit_edge, %bb.p, %bb.o, %bb.l, %bb.k, %bb.h
  %.470 = phi ptr [ %.268.lcssa, %._crit_edge ], [ %i.ab, %bb.l ], [ %i.u, %bb.k ], [ %6, %bb.h ], [ %i.bx, %bb.o ], [ %i.bz, %bb.p ], [ %i.bv, %bb.n ], [ %.066.lcssa, %.loopexit82 ] ; 2 uses
  %.2 = phi ptr [ %.lcssa132, %._crit_edge ], [ %.064, %bb.l ], [ %.064, %bb.k ], [ %.064, %bb.h ], [ %i.bw, %bb.o ], [ %i.bw, %bb.p ], [ %.lcssa132, %bb.n ], [ %.064, %.loopexit82 ] ; 2 uses
  %i.ca = load i8, ptr %.2, align 1, !tbaa !14    ; 2 uses
  %.not7596 = icmp eq i8 %i.ca, 0
  br i1 %.not7596, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.q, %.lr.ph100
  %i.cb = phi i8 [ %i.ce, %.lr.ph100 ], [ %i.ca, %bb.q ]
  %.398 = phi ptr [ %i.cc, %.lr.ph100 ], [ %.2, %bb.q ]
  %.597 = phi ptr [ %i.cd, %.lr.ph100 ], [ %.470, %bb.q ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.398, i64 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.597, i64 1 ; 2 uses
  store i8 %i.cb, ptr %.597, align 1, !tbaa !14
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !14  ; 2 uses
  %.not75 = icmp eq i8 %i.ce, 0
  br i1 %.not75, label %._crit_edge101, label %.lr.ph100, !llvm.loop !39

._crit_edge101:                                   ; preds = %.lr.ph100, %bb.q
  %.5.lcssa = phi ptr [ %.470, %bb.q ], [ %i.cd, %.lr.ph100 ] ; 7 uses
  %.5.lcssa148 = ptrtoaddr ptr %.5.lcssa to i64
  br i1 %i.d, label %bb.v, label %bb.r

bb.r:                                             ; preds = %._crit_edge101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.cf = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 1 ; 2 uses
  store i8 %0, ptr %.5.lcssa, align 1, !tbaa !14
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !24  ; 2 uses
  %i.ch = add nsw i32 %i.cg, -1                   ; 3 uses
  store i32 %i.ch, ptr %i.a, align 4, !tbaa !24
  %.not77 = icmp eq i32 %i.ch, 0
  br i1 %.not77, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 10 ; 2 uses
  %i.cj = call i32 @llvm.abs.i32(i32 %i.ch, i1 false)
  %spec.select.i = zext i32 %i.cj to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %indvar = phi i64 [ %indvar.next, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %.1.i = phi i64 [ %i.ck, %bb.t ], [ %spec.select.i, %bb.s ] ; 3 uses
  %.0.i = phi ptr [ %i.co, %bb.t ], [ %i.ci, %bb.s ]
  %i.ck = udiv i64 %.1.i, 10                      ; 2 uses
  %.neg.i = mul nuw nsw i64 %i.ck, 246
  %i.cl = add nuw nsw i64 %.neg.i, %.1.i
  %i.cm = trunc i64 %i.cl to i8
  %i.cn = add i8 %i.cm, 48
  %i.co = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 9 uses
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !14
  %.not.i = icmp samesign ult i64 %.1.i, 10
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %iter.check, label %bb.t, !llvm.loop !15

iter.check:                                       ; preds = %bb.t
  %i.cp = icmp slt i32 %i.cg, 1
  %i.cq = select i1 %i.cp, i8 45, i8 43
  store i8 %i.cq, ptr %i.cf, align 1, !tbaa !14
  %i.cr = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 2 ; 6 uses
  %i.cs = ptrtoint ptr %i.ci to i64
  %i.ct = ptrtoint ptr %i.co to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 11 uses
  %min.iters.check150 = icmp ult i64 %i.cu, 4
  br i1 %min.iters.check150, label %.lr.ph107.preheader, label %vector.memcheck147

vector.memcheck147:                               ; preds = %iter.check
  %i.cv = add i64 %.5.lcssa148, -7
  %i.cw = sub i64 %i.cv, %i.c
  %i.cx = add i64 %i.cw, %indvar
  %i.cy = add i64 %i.cx, -1
  %diff.check = icmp ult i64 %i.cy, 31
  br i1 %diff.check, label %.lr.ph107.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck147
  %min.iters.check151 = icmp ult i64 %i.cu, 32
  br i1 %min.iters.check151, label %vec.epilog.ph, label %vector.ph152

vector.ph152:                                     ; preds = %vector.main.loop.iter.check
  %i.cz = and i64 %i.cu, 28
  %n.vec153 = and i64 %i.cu, -32                  ; 5 uses
  %i.da = getelementptr i8, ptr %i.co, i64 %n.vec153
  %i.db = getelementptr i8, ptr %i.cr, i64 %n.vec153 ; 2 uses
  %i.dc = and i64 %i.cu, 31
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph152
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next160, %vector.body154 ] ; 3 uses
  %next.gep156 = getelementptr i8, ptr %i.co, i64 %index155 ; 2 uses
  %next.gep157 = getelementptr i8, ptr %i.cr, i64 %index155 ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep156, i64 16
  %wide.load158 = load <16 x i8>, ptr %next.gep156, align 1, !tbaa !14
  %wide.load159 = load <16 x i8>, ptr %i.dd, align 1, !tbaa !14
  %i.de = getelementptr i8, ptr %next.gep157, i64 16
  store <16 x i8> %wide.load158, ptr %next.gep157, align 1, !tbaa !14
  store <16 x i8> %wide.load159, ptr %i.de, align 1, !tbaa !14
  %index.next160 = add nuw i64 %index155, 32      ; 2 uses
  %i.df = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.df, label %middle.block161, label %vector.body154, !llvm.loop !40

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %i.cu, %n.vec153
  br i1 %cmp.n162, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block161
  %min.epilog.iters.check = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph107.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec153, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec166 = and i64 %i.cu, -4                   ; 4 uses
  %i.dg = getelementptr i8, ptr %i.co, i64 %n.vec166
  %i.dh = getelementptr i8, ptr %i.cr, i64 %n.vec166 ; 2 uses
  %i.di = and i64 %i.cu, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index167 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next171, %vec.epilog.vector.body ] ; 3 uses
  %next.gep168 = getelementptr i8, ptr %i.co, i64 %index167
  %next.gep169 = getelementptr i8, ptr %i.cr, i64 %index167
  %wide.load170 = load <4 x i8>, ptr %next.gep168, align 1, !tbaa !14
  store <4 x i8> %wide.load170, ptr %next.gep169, align 1, !tbaa !14
  %index.next171 = add nuw i64 %index167, 4       ; 2 uses
  %i.dj = icmp eq i64 %index.next171, %n.vec166
  br i1 %i.dj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !42

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n172 = icmp eq i64 %i.cu, %n.vec166
  br i1 %cmp.n172, label %.loopexit, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %vector.memcheck147, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.4106.ph = phi ptr [ %i.co, %iter.check ], [ %i.co, %vector.memcheck147 ], [ %i.da, %vec.epilog.iter.check ], [ %i.dg, %vec.epilog.middle.block ] ; 2 uses
  %.6105.ph = phi ptr [ %i.cr, %iter.check ], [ %i.cr, %vector.memcheck147 ], [ %i.db, %vec.epilog.iter.check ], [ %i.dh, %vec.epilog.middle.block ] ; 2 uses
  %.080104.ph = phi i64 [ %i.cu, %iter.check ], [ %i.cu, %vector.memcheck147 ], [ %i.dc, %vec.epilog.iter.check ], [ %i.di, %vec.epilog.middle.block ] ; 4 uses
  %i.dk = add i64 %.080104.ph, -1
  %xtraiter182 = and i64 %.080104.ph, 7           ; 2 uses
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol

.lr.ph107.prol:                                   ; preds = %.lr.ph107.preheader, %.lr.ph107.prol
  %.4106.prol = phi ptr [ %i.dm, %.lr.ph107.prol ], [ %.4106.ph, %.lr.ph107.preheader ] ; 2 uses
  %.6105.prol = phi ptr [ %i.do, %.lr.ph107.prol ], [ %.6105.ph, %.lr.ph107.preheader ] ; 2 uses
  %.080104.prol = phi i64 [ %i.dl, %.lr.ph107.prol ], [ %.080104.ph, %.lr.ph107.preheader ]
  %prol.iter184 = phi i64 [ %prol.iter184.next, %.lr.ph107.prol ], [ 0, %.lr.ph107.preheader ]
  %i.dl = add i64 %.080104.prol, -1               ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.4106.prol, i64 1 ; 2 uses
  %i.dn = load i8, ptr %.4106.prol, align 1, !tbaa !14
  %i.do = getelementptr inbounds nuw i8, ptr %.6105.prol, i64 1 ; 3 uses
  store i8 %i.dn, ptr %.6105.prol, align 1, !tbaa !14
  %prol.iter184.next = add i64 %prol.iter184, 1   ; 2 uses
  %prol.iter184.cmp.not = icmp eq i64 %prol.iter184.next, %xtraiter182
  br i1 %prol.iter184.cmp.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol, !llvm.loop !43

.lr.ph107.prol.loopexit:                          ; preds = %.lr.ph107.prol, %.lr.ph107.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph107.preheader ], [ %i.do, %.lr.ph107.prol ]
  %.4106.unr = phi ptr [ %.4106.ph, %.lr.ph107.preheader ], [ %i.dm, %.lr.ph107.prol ]
  %.6105.unr = phi ptr [ %.6105.ph, %.lr.ph107.preheader ], [ %i.do, %.lr.ph107.prol ]
  %.080104.unr = phi i64 [ %.080104.ph, %.lr.ph107.preheader ], [ %i.dl, %.lr.ph107.prol ]
  %i.dp = icmp ult i64 %i.dk, 7
  br i1 %i.dp, label %.loopexit, label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.prol.loopexit, %.lr.ph107
  %.4106 = phi ptr [ %i.em, %.lr.ph107 ], [ %.4106.unr, %.lr.ph107.prol.loopexit ] ; 9 uses
  %.6105 = phi ptr [ %i.eo, %.lr.ph107 ], [ %.6105.unr, %.lr.ph107.prol.loopexit ] ; 9 uses
  %.080104 = phi i64 [ %i.el, %.lr.ph107 ], [ %.080104.unr, %.lr.ph107.prol.loopexit ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.4106, i64 1
  %i.dr = load i8, ptr %.4106, align 1, !tbaa !14
  %i.ds = getelementptr inbounds nuw i8, ptr %.6105, i64 1
  store i8 %i.dr, ptr %.6105, align 1, !tbaa !14
  %i.dt = getelementptr inbounds nuw i8, ptr %.4106, i64 2
  %i.du = load i8, ptr %i.dq, align 1, !tbaa !14
  %i.dv = getelementptr inbounds nuw i8, ptr %.6105, i64 2
  store i8 %i.du, ptr %i.ds, align 1, !tbaa !14
  %i.dw = getelementptr inbounds nuw i8, ptr %.4106, i64 3
  %i.dx = load i8, ptr %i.dt, align 1, !tbaa !14
  %i.dy = getelementptr inbounds nuw i8, ptr %.6105, i64 3
  store i8 %i.dx, ptr %i.dv, align 1, !tbaa !14
  %i.dz = getelementptr inbounds nuw i8, ptr %.4106, i64 4
  %i.ea = load i8, ptr %i.dw, align 1, !tbaa !14
  %i.eb = getelementptr inbounds nuw i8, ptr %.6105, i64 4
  store i8 %i.ea, ptr %i.dy, align 1, !tbaa !14
  %i.ec = getelementptr inbounds nuw i8, ptr %.4106, i64 5
  %i.ed = load i8, ptr %i.dz, align 1, !tbaa !14
  %i.ee = getelementptr inbounds nuw i8, ptr %.6105, i64 5
  store i8 %i.ed, ptr %i.eb, align 1, !tbaa !14
  %i.ef = getelementptr inbounds nuw i8, ptr %.4106, i64 6
  %i.eg = load i8, ptr %i.ec, align 1, !tbaa !14
  %i.eh = getelementptr inbounds nuw i8, ptr %.6105, i64 6
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !14
  %i.ei = getelementptr inbounds nuw i8, ptr %.4106, i64 7
  %i.ej = load i8, ptr %i.ef, align 1, !tbaa !14
  %i.ek = getelementptr inbounds nuw i8, ptr %.6105, i64 7
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !14
  %i.el = add i64 %.080104, -8                    ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.4106, i64 8
  %i.en = load i8, ptr %i.ei, align 1, !tbaa !14
  %i.eo = getelementptr inbounds nuw i8, ptr %.6105, i64 8 ; 2 uses
  store i8 %i.en, ptr %i.ek, align 1, !tbaa !14
  %.not78.7 = icmp eq i64 %i.el, 0
  br i1 %.not78.7, label %.loopexit, label %.lr.ph107, !llvm.loop !44

bb.u:                                             ; preds = %bb.r
  %i.ep = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 2
  store i8 43, ptr %i.cf, align 1, !tbaa !14
end_hunk_0
