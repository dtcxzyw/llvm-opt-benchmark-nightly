Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlarft?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@c__3 = internal global i32 3, align 4
@.str = private unnamed_addr constant [7 x i8] c"DLARFT\00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Unit\00", align 1
@c_b13 = internal global double 1.000000e+00, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Non-unit\00", align 1
@c_b22 = internal global double -1.000000e+00, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"No tranpose\00", align 1

; Function Attrs: nounwind uwtable
define noundef i32 @dlarft_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %7 to i64
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = alloca i32, align 4                      ; 44 uses
  %i.d = alloca i32, align 4                      ; 18 uses
  %i.e = alloca [2 x i8], align 1                 ; 5 uses
  %i.f = alloca i32, align 4                      ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #3
  %i.g = load i32, ptr %5, align 4, !tbaa !21     ; 22 uses
  %narrow = xor i32 %i.g, -1
  %i.h = sext i32 %narrow to i64                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %4, i64 %i.h ; 24 uses
  %i.j = getelementptr inbounds i8, ptr %6, i64 -8 ; 4 uses
  %i.k = load i32, ptr %8, align 4, !tbaa !21     ; 25 uses
  %narrow373 = xor i32 %i.k, -1
  %i.l = sext i32 %narrow373 to i64               ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %7, i64 %i.l ; 34 uses
  %i.n = load i32, ptr %2, align 4, !tbaa !21     ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %3, align 4, !tbaa !21     ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = icmp eq i32 %i.n, 1
  %i.s = icmp eq i32 %i.p, 1
  %or.cond = or i1 %i.r, %i.s
  br i1 %or.cond, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.t = load double, ptr %6, align 8, !tbaa !23
  store double %i.t, ptr %7, align 8, !tbaa !23
  br label %bb.m

.lr.ph:                                           ; preds = %bb.c
  %i.u = load i8, ptr %0, align 1, !tbaa !24
  store i8 %i.u, ptr %i.e, align 1, !tbaa !24
  %.1380.1.ptr = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.v = load i8, ptr %1, align 1, !tbaa !24
  store i8 %i.v, ptr %.1380.1.ptr, align 1, !tbaa !24
  %i.w = call i32 @ilaenv_(ptr noundef nonnull @c__3, ptr noundef nonnull @.str, ptr noundef nonnull %i.e, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 2) #3
  %i.x = load i32, ptr %3, align 4, !tbaa !21     ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.w
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.z = call i32 @dlarft_lvl2__(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8) #3 ; 0 uses
  br label %bb.m

bb.f:                                             ; preds = %.lr.ph
  %i.aa = sdiv i32 %i.x, 2                        ; 3 uses
  store i32 %i.aa, ptr %i.f, align 4, !tbaa !21
  %i.ab = call i32 @lsame_(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #3
  %i.ac = call i32 @lsame_(ptr noundef nonnull %1, ptr noundef nonnull @.str.2) #3
  %i.ad = icmp ne i32 %i.ab, 0                    ; 2 uses
  %i.ae = icmp ne i32 %i.ac, 0                    ; 3 uses
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false
  %not. = xor i1 %i.ad, true                      ; 2 uses
  %i.ag = select i1 %not., i1 %i.ae, i1 false
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = call i32 @dlarft_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.f, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8) ; 0 uses
  %i.ai = load i32, ptr %2, align 4, !tbaa !21
  %i.aj = load i32, ptr %i.f, align 4, !tbaa !21  ; 3 uses
  %i.ak = sub nsw i32 %i.ai, %i.aj
  store i32 %i.ak, ptr %i.c, align 4, !tbaa !21
  %i.al = load i32, ptr %3, align 4, !tbaa !21
  %i.am = sub nsw i32 %i.al, %i.aj
  store i32 %i.am, ptr %i.d, align 4, !tbaa !21
  %i.an = add nsw i32 %i.aj, 1                    ; 3 uses
  %i.ao = add i32 %i.g, 1                         ; 2 uses
  %i.ap = mul i32 %i.an, %i.ao
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.aq
  %i.as = sext i32 %i.an to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.as
  %i.au = add i32 %i.k, 1
  %i.av = mul i32 %i.an, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.aw
  %i.ay = call i32 @dlarft_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.ar, ptr noundef nonnull %5, ptr noundef nonnull %i.at, ptr noundef %i.ax, ptr noundef nonnull %8) ; 0 uses
  %i.az = load i32, ptr %i.f, align 4, !tbaa !21  ; 6 uses
  %.not371404 = icmp slt i32 %i.az, 1
  %.pre428 = load i32, ptr %3, align 4, !tbaa !21 ; 2 uses
  %.pre429 = sub nsw i32 %.pre428, %i.az          ; 3 uses
  br i1 %.not371404, label %._crit_edge408.split, label %.lr.ph407

.lr.ph407:                                        ; preds = %bb.g
  store i32 %.pre429, ptr %i.d, align 4, !tbaa !21
  %.not372399 = icmp slt i32 %.pre429, 1
  br i1 %.not372399, label %._crit_edge408.split, label %.lr.ph402.preheader

.lr.ph402.preheader:                              ; preds = %.lr.ph407
  %i.ba = zext nneg i32 %i.az to i64              ; 12 uses
  %i.bb = sext i32 %i.k to i64                    ; 9 uses
  %i.bc = add i32 %.pre428, 1
  %i.bd = sub i32 %i.bc, %i.az
  %i.be = sext i32 %i.g to i64                    ; 3 uses
  %i.bf = add nuw i32 %i.az, 1
  %wide.trip.count423 = zext i32 %i.bf to i64     ; 2 uses
  %wide.trip.count418 = zext i32 %i.bd to i64     ; 5 uses
  %i.bg = shl nsw i64 %i.be, 3
  %i.bh = shl nuw nsw i64 %wide.trip.count423, 3  ; 2 uses
  %i.bi = add nsw i64 %i.bh, -8
  %i.bj = mul i64 %i.bi, %i.be
  %i.bk = shl nsw i64 %i.h, 3                     ; 2 uses
  %i.bl = shl nuw nsw i64 %i.ba, 3                ; 4 uses
  %i.bm = shl nuw nsw i64 %wide.trip.count418, 3  ; 2 uses
  %i.bn = getelementptr i8, ptr %4, i64 %i.bj
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.bk
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.bl
  %scevgep = getelementptr i8, ptr %i.bp, i64 %i.bm
  %i.bq = getelementptr i8, ptr %4, i64 %i.bg
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bk
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bl
  %scevgep456 = getelementptr i8, ptr %i.bs, i64 8
  %i.bt = getelementptr i8, ptr %7, i64 %i.bl
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bm
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bh
  %scevgep457 = getelementptr i8, ptr %i.bv, i64 -24
  %scevgep458 = getelementptr i8, ptr %7, i64 %i.bl
  %i.bw = add nsw i64 %wide.trip.count418, -1     ; 7 uses
  %min.iters.check459 = icmp ugt i64 %i.bw, 3
  %ident.check451.not = icmp eq i32 %i.k, 1
  %or.cond488 = select i1 %min.iters.check459, i1 %ident.check451.not, i1 false
  %bound0 = icmp ult ptr %scevgep458, %scevgep
  %bound1 = icmp ult ptr %scevgep456, %scevgep457
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.g, 0
  %i.bx = or i1 %found.conflict, %stride.check
  %min.iters.check462 = icmp ult i64 %i.bw, 16
  %i.by = and i64 %i.bw, 12
  %n.vec464 = and i64 %i.bw, -16                  ; 4 uses
  %i.bz = or disjoint i64 %n.vec464, 1
  %cmp.n473 = icmp eq i64 %i.bw, %n.vec464
  %min.epilog.iters.check477 = icmp eq i64 %i.by, 0
  %n.vec480 = and i64 %i.bw, -4                   ; 3 uses
  %i.ca = or disjoint i64 %n.vec480, 1
  %cmp.n486 = icmp eq i64 %i.bw, %n.vec480
  %invariant.op499.a = add nuw nsw i64 1, %i.ba
  %invariant.op501 = add nuw nsw i64 2, %i.ba
  %invariant.op503 = add nuw nsw i64 3, %i.ba
  %invariant.op505 = add nuw nsw i64 4, %i.ba
  %invariant.op507 = add nuw nsw i64 5, %i.ba
  %invariant.op509 = add nuw nsw i64 6, %i.ba
  %invariant.op511 = add nuw nsw i64 7, %i.ba
  br label %iter.check474

iter.check474:                                    ; preds = %.lr.ph402.preheader, %._crit_edge403
  %indvars.iv420 = phi i64 [ 1, %.lr.ph402.preheader ], [ %indvars.iv.next421, %._crit_edge403 ] ; 3 uses
  %i.cb = mul nsw i64 %indvars.iv420, %i.be
  %invariant.gep = getelementptr [8 x i8], ptr %i.i, i64 %i.cb ; 11 uses
  %invariant.gep439 = getelementptr [8 x i8], ptr %i.m, i64 %indvars.iv420 ; 11 uses
  %or.cond488.not = xor i1 %or.cond488, true
  %brmerge = select i1 %or.cond488.not, i1 true, i1 %i.bx
  br i1 %brmerge, label %vec.epilog.scalar.ph476.preheader, label %vector.main.loop.iter.check461

vector.main.loop.iter.check461:                   ; preds = %iter.check474
  br i1 %min.iters.check462, label %vec.epilog.ph478, label %vector.body465

vector.body465:                                   ; preds = %vector.main.loop.iter.check461, %vector.body465
  %index466 = phi i64 [ %index.next471, %vector.body465 ], [ 0, %vector.main.loop.iter.check461 ] ; 2 uses
  %i.cc = or disjoint i64 %index466, 1
  %i.cd = add nuw nsw i64 %i.cc, %i.ba            ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cd ; 4 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 32
  %i.cg = getelementptr i8, ptr %i.ce, i64 64
  %i.ch = getelementptr i8, ptr %i.ce, i64 96
  %wide.load467 = load <4 x double>, ptr %i.ce, align 8, !tbaa !23, !alias.scope !25
  %wide.load468 = load <4 x double>, ptr %i.cf, align 8, !tbaa !23, !alias.scope !25
  %wide.load469 = load <4 x double>, ptr %i.cg, align 8, !tbaa !23, !alias.scope !25
  %wide.load470 = load <4 x double>, ptr %i.ch, align 8, !tbaa !23, !alias.scope !25
  %i.ci = getelementptr [8 x i8], ptr %invariant.gep439, i64 %i.cd ; 4 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 32
  %i.ck = getelementptr i8, ptr %i.ci, i64 64
  %i.cl = getelementptr i8, ptr %i.ci, i64 96
  store <4 x double> %wide.load467, ptr %i.ci, align 8, !tbaa !23, !alias.scope !26, !noalias !25
  store <4 x double> %wide.load468, ptr %i.cj, align 8, !tbaa !23, !alias.scope !26, !noalias !25
  store <4 x double> %wide.load469, ptr %i.ck, align 8, !tbaa !23, !alias.scope !26, !noalias !25
  store <4 x double> %wide.load470, ptr %i.cl, align 8, !tbaa !23, !alias.scope !26, !noalias !25
  %index.next471 = add nuw i64 %index466, 16      ; 2 uses
  %i.cm = icmp eq i64 %index.next471, %n.vec464
  br i1 %i.cm, label %middle.block472, label %vector.body465, !llvm.loop !11

middle.block472:                                  ; preds = %vector.body465
  br i1 %cmp.n473, label %._crit_edge403, label %vec.epilog.iter.check475

vec.epilog.iter.check475:                         ; preds = %middle.block472
  br i1 %min.epilog.iters.check477, label %vec.epilog.scalar.ph476.preheader, label %vec.epilog.ph478, !prof !30

vec.epilog.ph478:                                 ; preds = %vector.main.loop.iter.check461, %vec.epilog.iter.check475
  %vec.epilog.resume.val479 = phi i64 [ %n.vec464, %vec.epilog.iter.check475 ], [ 0, %vector.main.loop.iter.check461 ]
  br label %vec.epilog.vector.body481

vec.epilog.vector.body481:                        ; preds = %vec.epilog.vector.body481, %vec.epilog.ph478
  %index482 = phi i64 [ %vec.epilog.resume.val479, %vec.epilog.ph478 ], [ %index.next484, %vec.epilog.vector.body481 ] ; 2 uses
end_hunk_0
begin_hunk_1_@dlarft_:bb.a
  %i.dw = getelementptr i8, ptr %i.dv, i64 8
  %i.dx = call i32 @dtrmm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b13, ptr noundef %i.ds, ptr noundef nonnull %5, ptr noundef %i.dw, ptr noundef nonnull %8) #3 ; 0 uses
  %i.dy = load i32, ptr %3, align 4, !tbaa !21    ; 3 uses
  %i.dz = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.ea = sub nsw i32 %i.dy, %i.dz
  store i32 %i.ea, ptr %i.c, align 4, !tbaa !21
  %i.eb = load i32, ptr %2, align 4, !tbaa !21
  %i.ec = sub nsw i32 %i.eb, %i.dy
  store i32 %i.ec, ptr %i.d, align 4, !tbaa !21
  %i.ed = add nsw i32 %i.dy, 1                    ; 2 uses
  %i.ee = add nsw i32 %i.ed, %i.g
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ef
  %i.eh = add nsw i32 %i.dz, 1                    ; 2 uses
  %i.ei = mul nsw i32 %i.eh, %i.g
  %i.ej = add nsw i32 %i.ei, %i.ed
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ek
  %i.em = mul nsw i32 %i.eh, %i.k
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr [8 x i8], ptr %i.m, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 8
  %i.eq = call i32 @dgemm_(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b13, ptr noundef %i.eg, ptr noundef nonnull %5, ptr noundef %i.el, ptr noundef nonnull %5, ptr noundef nonnull @c_b13, ptr noundef %i.ep, ptr noundef nonnull %8) #3 ; 0 uses
  %i.er = load i32, ptr %3, align 4, !tbaa !21
  %i.es = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.et = sub nsw i32 %i.er, %i.es
  store i32 %i.et, ptr %i.c, align 4, !tbaa !21
  %i.eu = add nsw i32 %i.es, 1
  %i.ev = mul nsw i32 %i.eu, %i.k
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr [8 x i8], ptr %i.m, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ex, i64 8
  %i.ez = call i32 @dtrmm_(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b22, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %i.ey, ptr noundef nonnull %8) #3 ; 0 uses
  %i.fa = load i32, ptr %3, align 4, !tbaa !21
  %i.fb = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.fc = sub nsw i32 %i.fa, %i.fb
  store i32 %i.fc, ptr %i.c, align 4, !tbaa !21
  %i.fd = add nsw i32 %i.fb, 1                    ; 2 uses
  %i.fe = mul nsw i32 %i.fd, %i.k                 ; 2 uses
  %i.ff = add nsw i32 %i.fe, %i.fd
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fg
  %i.fi = sext i32 %i.fe to i64
  %i.fj = getelementptr [8 x i8], ptr %i.m, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.fj, i64 8
  %i.fl = call i32 @dtrmm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b13, ptr noundef %i.fh, ptr noundef nonnull %8, ptr noundef %i.fk, ptr noundef nonnull %8) #3 ; 0 uses
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.fm = select i1 %not., i1 true, i1 %i.ae
  br i1 %i.fm, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fn = call i32 @dlarft_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.f, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8) ; 0 uses
  %i.fo = load i32, ptr %2, align 4, !tbaa !21
  %i.fp = load i32, ptr %i.f, align 4, !tbaa !21  ; 3 uses
  %i.fq = sub nsw i32 %i.fo, %i.fp
  store i32 %i.fq, ptr %i.c, align 4, !tbaa !21
  %i.fr = load i32, ptr %3, align 4, !tbaa !21
  %i.fs = sub nsw i32 %i.fr, %i.fp
  store i32 %i.fs, ptr %i.d, align 4, !tbaa !21
  %i.ft = add nsw i32 %i.fp, 1                    ; 3 uses
  %i.fu = add i32 %i.g, 1                         ; 2 uses
  %i.fv = mul i32 %i.ft, %i.fu
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fw
  %i.fy = sext i32 %i.ft to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.fy
  %i.ga = add i32 %i.k, 1
  %i.gb = mul i32 %i.ft, %i.ga
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.gc
  %i.ge = call i32 @dlarft_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.fx, ptr noundef nonnull %5, ptr noundef nonnull %i.fz, ptr noundef %i.gd, ptr noundef nonnull %8) ; 0 uses
  %i.gf = load i32, ptr %3, align 4, !tbaa !21
  %i.gg = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.gh = sub nsw i32 %i.gf, %i.gg
  store i32 %i.gh, ptr %i.c, align 4, !tbaa !21
  %i.gi = add nsw i32 %i.gg, 1                    ; 2 uses
  %i.gj = mul nsw i32 %i.gi, %i.g
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr [8 x i8], ptr %i.i, i64 %i.gk
  %i.gm = getelementptr i8, ptr %i.gl, i64 8
  %i.gn = mul nsw i32 %i.gi, %i.k
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr [8 x i8], ptr %i.m, i64 %i.go
  %i.gq = getelementptr i8, ptr %i.gp, i64 8
  %i.gr = call i32 @dlacpy_(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef %i.gm, ptr noundef nonnull %5, ptr noundef %i.gq, ptr noundef nonnull %8) #3 ; 0 uses
  %i.gs = load i32, ptr %3, align 4, !tbaa !21
  %i.gt = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.gu = sub nsw i32 %i.gs, %i.gt
  store i32 %i.gu, ptr %i.c, align 4, !tbaa !21
  %i.gv = add nsw i32 %i.gt, 1                    ; 2 uses
  %i.gw = mul i32 %i.gv, %i.fu
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.gx
  %i.gz = mul nsw i32 %i.gv, %i.k
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr [8 x i8], ptr %i.m, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.hb, i64 8
  %i.hd = call i32 @dtrmm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b13, ptr noundef %i.gy, ptr noundef nonnull %5, ptr noundef %i.hc, ptr noundef nonnull %8) #3 ; 0 uses
  %i.he = load i32, ptr %3, align 4, !tbaa !21    ; 3 uses
  %i.hf = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.hg = sub nsw i32 %i.he, %i.hf
  store i32 %i.hg, ptr %i.c, align 4, !tbaa !21
  %i.hh = load i32, ptr %2, align 4, !tbaa !21
  %i.hi = sub nsw i32 %i.hh, %i.he
  store i32 %i.hi, ptr %i.d, align 4, !tbaa !21
  %i.hj = add nsw i32 %i.he, 1
  %i.hk = mul nsw i32 %i.hj, %i.g                 ; 2 uses
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr [8 x i8], ptr %i.i, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 8
  %i.ho = add nsw i32 %i.hf, 1                    ; 2 uses
  %i.hp = add nsw i32 %i.ho, %i.hk
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.hq
  %i.hs = mul nsw i32 %i.ho, %i.k
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr [8 x i8], ptr %i.m, i64 %i.ht
  %i.hv = getelementptr i8, ptr %i.hu, i64 8
  %i.hw = call i32 @dgemm_(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b13, ptr noundef %i.hn, ptr noundef nonnull %5, ptr noundef %i.hr, ptr noundef nonnull %5, ptr noundef nonnull @c_b13, ptr noundef %i.hv, ptr noundef nonnull %8) #3 ; 0 uses
  %i.hx = load i32, ptr %3, align 4, !tbaa !21
  %i.hy = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.hz = sub nsw i32 %i.hx, %i.hy
  store i32 %i.hz, ptr %i.c, align 4, !tbaa !21
  %i.ia = add nsw i32 %i.hy, 1
  %i.ib = mul nsw i32 %i.ia, %i.k
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr [8 x i8], ptr %i.m, i64 %i.ic
  %i.ie = getelementptr i8, ptr %i.id, i64 8
  %i.if = call i32 @dtrmm_(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b22, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %i.ie, ptr noundef nonnull %8) #3 ; 0 uses
  %i.ig = load i32, ptr %3, align 4, !tbaa !21
  %i.ih = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.ii = sub nsw i32 %i.ig, %i.ih
  store i32 %i.ii, ptr %i.c, align 4, !tbaa !21
  %i.ij = add nsw i32 %i.ih, 1                    ; 2 uses
  %i.ik = mul nsw i32 %i.ij, %i.k                 ; 2 uses
  %i.il = add nsw i32 %i.ik, %i.ij
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.im
  %i.io = sext i32 %i.ik to i64
  %i.ip = getelementptr [8 x i8], ptr %i.m, i64 %i.io
  %i.iq = getelementptr i8, ptr %i.ip, i64 8
  %i.ir = call i32 @dtrmm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b13, ptr noundef %i.in, ptr noundef nonnull %8, ptr noundef %i.iq, ptr noundef nonnull %8) #3 ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.is = load i32, ptr %2, align 4, !tbaa !21
  %i.it = sub nsw i32 %i.is, %i.aa
  store i32 %i.it, ptr %i.c, align 4, !tbaa !21
  %i.iu = load i32, ptr %3, align 4, !tbaa !21
  %i.iv = sub nsw i32 %i.iu, %i.aa
  store i32 %i.iv, ptr %i.d, align 4, !tbaa !21
  %i.iw = call i32 @dlarft_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8) ; 0 uses
  %i.ix = load i32, ptr %3, align 4, !tbaa !21
  %i.iy = load i32, ptr %i.f, align 4, !tbaa !21
  %i.iz = sub nsw i32 %i.ix, %i.iy
  %i.ja = add nsw i32 %i.iz, 1                    ; 6 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.jb = mul nsw i32 %i.ja, %i.g
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr [8 x i8], ptr %i.i, i64 %i.jc
  %i.je = getelementptr i8, ptr %i.jd, i64 8
  %i.jf = sext i32 %i.ja to i64
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.jf
  %i.jh = add i32 %i.k, 1                         ; 4 uses
  %i.ji = mul i32 %i.ja, %i.jh
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.jj
  %i.jl = call i32 @dlarft_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.f, ptr noundef %i.je, ptr noundef nonnull %5, ptr noundef nonnull %i.jg, ptr noundef %i.jk, ptr noundef nonnull %8) ; 0 uses
  %i.jm = load i32, ptr %3, align 4, !tbaa !21    ; 5 uses
  %i.jn = load i32, ptr %i.f, align 4, !tbaa !21  ; 11 uses
  %i.jo = sub nsw i32 %i.jm, %i.jn                ; 10 uses
  %.not393 = icmp slt i32 %i.jo, 1
  br i1 %.not393, label %.._crit_edge397.split_crit_edge, label %.lr.ph396

.._crit_edge397.split_crit_edge:                  ; preds = %bb.k
  %.pre = load i32, ptr %2, align 4, !tbaa !21
  br label %._crit_edge397.split

.lr.ph396:                                        ; preds = %bb.k
  store i32 %i.jn, ptr %i.d, align 4, !tbaa !21
  %.not370388 = icmp slt i32 %i.jn, 1
  %.pre427 = load i32, ptr %2, align 4, !tbaa !21 ; 4 uses
  br i1 %.not370388, label %._crit_edge397.split, label %.lr.ph396.split

.lr.ph396.split:                                  ; preds = %.lr.ph396
  %invariant.op398 = sub i32 %.pre427, %i.jm
  %i.jp = add nuw i32 %i.jn, 1
  %i.jq = add i32 %i.jm, 1
  %i.jr = sub i32 %i.jq, %i.jn
  %wide.trip.count = zext i32 %i.jp to i64        ; 3 uses
  %i.js = add nsw i64 %wide.trip.count, -2        ; 2 uses
  %i.jt = add i32 %i.k, %i.jm
  %i.ju = add i32 %i.jt, 1
  %i.jv = sub i32 %i.ju, %i.jn                    ; 2 uses
  %i.jw = add i32 %.pre427, 2
  %i.jx = sub i32 %i.jw, %i.jn                    ; 2 uses
  %i.jy = zext nneg i32 %i.jn to i64              ; 5 uses
  %i.jz = zext nneg i32 %i.jn to i64
  %min.iters.check = icmp ult i32 %i.jn, 4
  %ident.check = icmp ne i32 %i.g, 1
  %i.ka = trunc i64 %i.js to i32                  ; 2 uses
  %i.kb = icmp ugt i64 %i.js, 4294967295
  %invariant.op497 = or i1 %i.kb, %ident.check
  %min.iters.check441 = icmp ult i32 %i.jn, 16
  %i.kc = and i64 %i.jy, 12
  %n.vec = and i64 %i.jy, 2147483632              ; 4 uses
  %i.kd = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.jy
  %min.epilog.iters.check = icmp eq i64 %i.kc, 0
  %n.vec445 = and i64 %i.jy, 2147483644           ; 3 uses
  %i.ke = or disjoint i64 %n.vec445, 1
  %cmp.n449 = icmp eq i64 %n.vec445, %i.jy
  %invariant.op = add i32 1, %i.jo
  %invariant.op493 = add i32 2, %i.jo
  %invariant.op495 = add i32 3, %i.jo
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph396.split, %._crit_edge392
  %indvar = phi i32 [ 0, %.lr.ph396.split ], [ %indvar.next, %._crit_edge392 ] ; 5 uses
  %.1360394 = phi i32 [ 1, %.lr.ph396.split ], [ %i.no, %._crit_edge392 ] ; 3 uses
  %invariant.op.reass = add i32 %.1360394, %invariant.op398 ; 7 uses
  %i.kf = mul nsw i32 %.1360394, %i.k             ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.kg = add i32 %i.jx, %indvar                  ; 2 uses
  %i.kh = mul i32 %i.k, %indvar
  %i.ki = add i32 %i.jv, %i.kh                    ; 2 uses
  %i.kj = add i32 %i.ki, %i.ka
  %i.kk = icmp slt i32 %i.kj, %i.ki
  %i.kl = add i32 %i.kg, %i.ka
  %i.km = icmp slt i32 %i.kl, %i.kg
  %.reass498 = or i1 %i.kk, %invariant.op497
  %i.kn = or i1 %i.km, %.reass498
  br i1 %i.kn, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ko = mul i32 %indvar, %i.k
  %i.kp = add i32 %i.jv, %i.ko
  %i.kq = sext i32 %i.kp to i64
  %i.kr = add i32 %i.jx, %indvar
  %i.ks = sext i32 %i.kr to i64
  %9 = shl nsw i64 %i.ks, 3
  %10 = add nsw i64 %i.kq, %i.l
  %i.kt = shl nsw i64 %10, 3
  %11 = add i64 %i.kt, %i.a
  %12 = add i64 %9, %i.b
  %13 = sub i64 %11, %12
  %i.ku = add i64 %13, 15
  %diff.check = icmp ult i64 %i.ku, 127
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check441, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.kv = trunc i64 %index to i32
  %i.kw = or disjoint i32 %i.kv, 1
  %i.kx = add nuw nsw i32 %i.jo, %i.kw            ; 2 uses
  %i.ky = add i32 %i.kx, %invariant.op.reass
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.kz ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 32
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 96
  %wide.load = load <4 x double>, ptr %i.la, align 8, !tbaa !23
  %wide.load442 = load <4 x double>, ptr %i.lb, align 8, !tbaa !23
  %wide.load443 = load <4 x double>, ptr %i.lc, align 8, !tbaa !23
  %wide.load444 = load <4 x double>, ptr %i.ld, align 8, !tbaa !23
  %i.le = add nsw i32 %i.kx, %i.kf
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.lf ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 96
  store <4 x double> %wide.load, ptr %i.lg, align 8, !tbaa !23
  store <4 x double> %wide.load442, ptr %i.lh, align 8, !tbaa !23
  store <4 x double> %wide.load443, ptr %i.li, align 8, !tbaa !23
  store <4 x double> %wide.load444, ptr %i.lj, align 8, !tbaa !23
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.lk = icmp eq i64 %index.next, %n.vec
  br i1 %i.lk, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge392, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index446 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next448, %vec.epilog.vector.body ] ; 2 uses
  %i.ll = trunc i64 %index446 to i32
  %i.lm = or disjoint i32 %i.ll, 1
  %i.ln = add nuw nsw i32 %i.jo, %i.lm            ; 2 uses
  %i.lo = add i32 %i.ln, %invariant.op.reass
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.lp
  %wide.load447 = load <4 x double>, ptr %i.lq, align 8, !tbaa !23
  %i.lr = add nsw i32 %i.ln, %i.kf
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ls
  store <4 x double> %wide.load447, ptr %i.lt, align 8, !tbaa !23
  %index.next448 = add nuw i64 %index446, 4       ; 2 uses
  %i.lu = icmp eq i64 %index.next448, %n.vec445
  br i1 %i.lu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n449, label %._crit_edge392, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.scevcheck ], [ 1, %vector.memcheck ], [ %i.kd, %vec.epilog.iter.check ], [ %i.ke, %vec.epilog.middle.block ] ; 4 uses
  %i.lv = sub i64 %wide.trip.count, %indvars.iv.ph
  %i.lw = sub i64 %i.jz, %indvars.iv.ph
  %xtraiter = and i64 %i.lv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.lx = trunc nuw nsw i64 %indvars.iv.prol to i32
  %i.ly = add nuw nsw i32 %i.jo, %i.lx            ; 2 uses
  %i.lz = mul nsw i32 %i.ly, %i.g
  %.reass.prol = add i32 %i.lz, %invariant.op.reass
  %i.ma = sext i32 %.reass.prol to i64
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ma
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !23
  %i.md = add nsw i32 %i.ly, %i.kf
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.me
  store double %i.mc, ptr %i.mf, align 8, !tbaa !23
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !18

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.mg = icmp ult i64 %i.lw, 3
  br i1 %i.mg, label %._crit_edge392, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.mh = trunc nuw nsw i64 %indvars.iv to i32
  %i.mi = add nuw nsw i32 %i.jo, %i.mh            ; 2 uses
  %i.mj = mul nsw i32 %i.mi, %i.g
  %.reass = add i32 %i.mj, %invariant.op.reass
  %i.mk = sext i32 %.reass to i64
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.mk
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !23
  %i.mn = add nsw i32 %i.mi, %i.kf
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.mo
  store double %i.mm, ptr %i.mp, align 8, !tbaa !23
  %i.mq = trunc i64 %indvars.iv to i32
  %.reass492 = add i32 %i.mq, %invariant.op       ; 2 uses
  %i.mr = mul nsw i32 %.reass492, %i.g
  %.reass.1 = add i32 %i.mr, %invariant.op.reass
  %i.ms = sext i32 %.reass.1 to i64
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ms
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !23
  %i.mv = add nsw i32 %.reass492, %i.kf
  %i.mw = sext i32 %i.mv to i64
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.mw
  store double %i.mu, ptr %i.mx, align 8, !tbaa !23
  %i.my = trunc i64 %indvars.iv to i32
  %.reass494 = add i32 %i.my, %invariant.op493    ; 2 uses
  %i.mz = mul nsw i32 %.reass494, %i.g
  %.reass.2 = add i32 %i.mz, %invariant.op.reass
  %i.na = sext i32 %.reass.2 to i64
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.na
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !23
  %i.nd = add nsw i32 %.reass494, %i.kf
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ne
  store double %i.nc, ptr %i.nf, align 8, !tbaa !23
  %i.ng = trunc i64 %indvars.iv to i32
  %.reass496 = add i32 %i.ng, %invariant.op495    ; 2 uses
  %i.nh = mul nsw i32 %.reass496, %i.g
  %.reass.3 = add i32 %i.nh, %invariant.op.reass
  %i.ni = sext i32 %.reass.3 to i64
  %i.nj = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ni
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !23
  %i.nl = add nsw i32 %.reass496, %i.kf
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.nm
  store double %i.nk, ptr %i.nn, align 8, !tbaa !23
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond413.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond413.not.3, label %._crit_edge392, label %vec.epilog.scalar.ph, !llvm.loop !19

._crit_edge392:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.no = add nuw i32 %.1360394, 1                ; 2 uses
  %exitcond414.not = icmp eq i32 %i.no, %i.jr
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond414.not, label %._crit_edge397.split, label %iter.check, !llvm.loop !20

._crit_edge397.split:                             ; preds = %._crit_edge392, %.._crit_edge397.split_crit_edge, %.lr.ph396
  %i.np = phi i32 [ %.pre, %.._crit_edge397.split_crit_edge ], [ %.pre427, %.lr.ph396 ], [ %.pre427, %._crit_edge392 ]
  store i32 %i.jo, ptr %i.c, align 4, !tbaa !21
  %i.nq = add i32 %i.g, 1
  %i.nr = sub i32 %i.nq, %i.jm
  %i.ns = add i32 %i.nr, %i.np
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.nt
  %i.nv = add i32 %i.jh, %i.jo
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.nw
  %i.ny = call i32 @dtrmm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b13, ptr noundef %i.nu, ptr noundef nonnull %5, ptr noundef %i.nx, ptr noundef nonnull %8) #3 ; 0 uses
  %i.nz = load i32, ptr %3, align 4, !tbaa !21    ; 2 uses
  %i.oa = load i32, ptr %i.f, align 4, !tbaa !21
  %i.ob = sub nsw i32 %i.nz, %i.oa                ; 2 uses
  store i32 %i.ob, ptr %i.c, align 4, !tbaa !21
  %i.oc = load i32, ptr %2, align 4, !tbaa !21
  %i.od = sub nsw i32 %i.oc, %i.nz
  store i32 %i.od, ptr %i.d, align 4, !tbaa !21
  %i.oe = add nsw i32 %i.ob, 1                    ; 2 uses
  %i.of = mul nsw i32 %i.oe, %i.g
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr [8 x i8], ptr %i.i, i64 %i.og
  %i.oi = getelementptr i8, ptr %i.oh, i64 8
  %i.oj = add nsw i32 %i.oe, %i.k
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ok
  %i.om = call i32 @dgemm_(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b13, ptr noundef %i.oi, ptr noundef nonnull %5, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull @c_b13, ptr noundef %i.ol, ptr noundef nonnull %8) #3 ; 0 uses
  %i.on = load i32, ptr %3, align 4, !tbaa !21
  %i.oo = load i32, ptr %i.f, align 4, !tbaa !21
  %i.op = sub nsw i32 %i.on, %i.oo                ; 2 uses
  store i32 %i.op, ptr %i.c, align 4, !tbaa !21
  %i.oq = add nsw i32 %i.op, 1                    ; 2 uses
  %i.or = mul i32 %i.oq, %i.jh
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.os
  %i.ou = add nsw i32 %i.oq, %i.k
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ov
  %i.ox = call i32 @dtrmm_(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b22, ptr noundef %i.ot, ptr noundef nonnull %8, ptr noundef %i.ow, ptr noundef nonnull %8) #3 ; 0 uses
  %i.oy = load i32, ptr %3, align 4, !tbaa !21
  %i.oz = load i32, ptr %i.f, align 4, !tbaa !21
  %i.pa = sub nsw i32 %i.oy, %i.oz                ; 2 uses
  store i32 %i.pa, ptr %i.c, align 4, !tbaa !21
  %i.pb = add i32 %i.jh, %i.pa
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.pc
end_hunk_1
