Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sme_helper?download=true
inline.NumInlined: 2089
inline.NumDeleted: 222
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 184
loop-unroll.NumUnrolled: 297
begin_hunk_0_@helper_sme2_sel_h:bb.a
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.kb, i64 %index428
  %wide.load429 = load <4 x i16>, ptr %i.ko, align 2
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.jz, i64 %index428
  store <4 x i16> %wide.load429, ptr %i.kp, align 2
  %index.next430 = add nuw i64 %index428, 4       ; 2 uses
  %i.kq = icmp eq i64 %index.next430, %n.vec426
  br i1 %i.kq, label %vec.epilog.middle.block431, label %vec.epilog.vector.body427, !llvm.loop !1022

vec.epilog.middle.block431:                       ; preds = %vec.epilog.vector.body427
  %cmp.n432 = icmp eq i64 %n.vec426, %umax
  br i1 %cmp.n432, label %.preheader203.us, label %.lr.ph220.us.preheader

.lr.ph220.us.preheader:                           ; preds = %iter.check421, %vec.epilog.iter.check423, %vec.epilog.middle.block431
  %indvars.iv262.ph = phi i64 [ 0, %iter.check421 ], [ %n.vec412, %vec.epilog.iter.check423 ], [ %n.vec426, %vec.epilog.middle.block431 ]
  br label %.lr.ph220.us

.lr.ph220.us:                                     ; preds = %.lr.ph220.us.preheader, %.lr.ph220.us
  %indvars.iv262 = phi i64 [ %indvars.iv.next263, %.lr.ph220.us ], [ %indvars.iv262.ph, %.lr.ph220.us.preheader ] ; 3 uses
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.kb, i64 %indvars.iv262
  %i.ks = load i16, ptr %i.kr, align 2
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.jz, i64 %indvars.iv262
  store i16 %i.ks, ptr %i.kt, align 2
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 3 uses
  %i.ku = icmp samesign ult i64 %indvars.iv.next263, %i.kh
  br i1 %i.ku, label %.lr.ph220.us, label %.preheader203.us, !llvm.loop !1023

.preheader203.us:                                 ; preds = %.lr.ph220.us, %vec.epilog.middle.block431, %middle.block418
  %indvars.iv.next263.lcssa = phi i64 [ %n.vec426, %vec.epilog.middle.block431 ], [ %n.vec412, %middle.block418 ], [ %indvars.iv.next263, %.lr.ph220.us ]
  %i.kv = trunc nuw nsw i64 %indvars.iv.next263.lcssa to i32 ; 2 uses
  %i.kw = icmp sgt i32 %i.l, %i.kv
  br i1 %i.kw, label %.lr.ph224.us.us.preheader, label %._crit_edge228.split.us.us

.lr.ph224.us.us.preheader:                        ; preds = %.lr.ph230.split.us, %.preheader203.us
  %.0171.lcssa.us331 = phi i32 [ %i.kv, %.preheader203.us ], [ 0, %.lr.ph230.split.us ] ; 2 uses
  %i.kx = add i32 %.0171.lcssa.us331, 1
  br label %iter.check393

iter.check393:                                    ; preds = %.lr.ph224.us.us.preheader, %._crit_edge225.us.us
  %indvar = phi i32 [ 0, %.lr.ph224.us.us.preheader ], [ %indvar.next, %._crit_edge225.us.us ] ; 2 uses
  %.1172226.us.us = phi i32 [ %.0171.lcssa.us331, %.lr.ph224.us.us.preheader ], [ %i.na, %._crit_edge225.us.us ] ; 9 uses
  %i.ky = sext i32 %.1172226.us.us to i64         ; 2 uses
  %i.kz = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.ky
  %i.la = load i16, ptr %i.kz, align 2
  %i.lb = getelementptr inbounds [2 x i8], ptr %i.jz, i64 %i.ky
  store i16 %i.la, ptr %i.lb, align 2
  br i1 %min.iters.check379, label %vec.epilog.scalar.ph394.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check393
  %i.lc = shl i32 %indvar, %i.ae
  %i.ld = add i32 %i.kx, %i.lc                    ; 2 uses
  %i.le = add i32 %i.ld, %i.jo
  %i.lf = icmp slt i32 %i.le, %i.ld
  %or.cond556.reass = or i1 %i.lf, %invariant.op578
  br i1 %or.cond556.reass, label %vec.epilog.scalar.ph394.preheader, label %vector.main.loop.iter.check380

vector.main.loop.iter.check380:                   ; preds = %vector.scevcheck
  br i1 %min.iters.check381, label %vec.epilog.ph397, label %vector.body384

vector.body384:                                   ; preds = %vector.main.loop.iter.check380, %vector.body384
  %index385 = phi i64 [ %index.next388, %vector.body384 ], [ 0, %vector.main.loop.iter.check380 ] ; 2 uses
  %i.lg = trunc i64 %index385 to i32
  %i.lh = or disjoint i32 %i.lg, 1
  %i.li = add i32 %.1172226.us.us, %i.lh
  %i.lj = sext i32 %i.li to i64                   ; 2 uses
  %i.lk = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %i.lj ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %wide.load386 = load <8 x i16>, ptr %i.lk, align 2
  %wide.load387 = load <8 x i16>, ptr %i.ll, align 2
  %i.lm = getelementptr inbounds [2 x i8], ptr %i.jz, i64 %i.lj ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  store <8 x i16> %wide.load386, ptr %i.lm, align 2
  store <8 x i16> %wide.load387, ptr %i.ln, align 2
  %index.next388 = add nuw i64 %index385, 16      ; 2 uses
  %i.lo = icmp eq i64 %index.next388, %n.vec383
  br i1 %i.lo, label %middle.block389, label %vector.body384, !llvm.loop !1024

middle.block389:                                  ; preds = %vector.body384
  br i1 %cmp.n390, label %._crit_edge225.us.us, label %vec.epilog.iter.check395

vec.epilog.iter.check395:                         ; preds = %middle.block389
  br i1 %min.epilog.iters.check396, label %vec.epilog.scalar.ph394.preheader, label %vec.epilog.ph397, !prof !56

vec.epilog.ph397:                                 ; preds = %vector.main.loop.iter.check380, %vec.epilog.iter.check395
  %vec.epilog.resume.val391 = phi i64 [ %n.vec383, %vec.epilog.iter.check395 ], [ 0, %vector.main.loop.iter.check380 ]
  br label %vec.epilog.vector.body399

vec.epilog.vector.body399:                        ; preds = %vec.epilog.vector.body399, %vec.epilog.ph397
  %index400 = phi i64 [ %vec.epilog.resume.val391, %vec.epilog.ph397 ], [ %index.next402, %vec.epilog.vector.body399 ] ; 2 uses
  %i.lp = trunc i64 %index400 to i32
  %i.lq = or disjoint i32 %i.lp, 1
  %i.lr = add i32 %.1172226.us.us, %i.lq
  %i.ls = sext i32 %i.lr to i64                   ; 2 uses
  %i.lt = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %i.ls
  %wide.load401 = load <4 x i16>, ptr %i.lt, align 2
  %i.lu = getelementptr inbounds [2 x i8], ptr %i.jz, i64 %i.ls
  store <4 x i16> %wide.load401, ptr %i.lu, align 2
  %index.next402 = add nuw i64 %index400, 4       ; 2 uses
  %i.lv = icmp eq i64 %index.next402, %n.vec398
  br i1 %i.lv, label %vec.epilog.middle.block403, label %vec.epilog.vector.body399, !llvm.loop !1025

vec.epilog.middle.block403:                       ; preds = %vec.epilog.vector.body399
  br i1 %cmp.n404, label %._crit_edge225.us.us, label %vec.epilog.scalar.ph394.preheader

vec.epilog.scalar.ph394.preheader:                ; preds = %iter.check393, %vector.scevcheck, %vec.epilog.iter.check395, %vec.epilog.middle.block403
  %indvars.iv265.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %iter.check393 ], [ %i.js, %vec.epilog.iter.check395 ], [ %i.jt, %vec.epilog.middle.block403 ] ; 4 uses
  %i.lw = sub nsw i64 %wide.trip.count269, %indvars.iv265.ph
  %xtraiter561 = and i64 %i.lw, 3                 ; 2 uses
  %lcmp.mod562.not = icmp eq i64 %xtraiter561, 0
  br i1 %lcmp.mod562.not, label %vec.epilog.scalar.ph394.prol.loopexit, label %vec.epilog.scalar.ph394.prol

vec.epilog.scalar.ph394.prol:                     ; preds = %vec.epilog.scalar.ph394.preheader, %vec.epilog.scalar.ph394.prol
  %indvars.iv265.prol = phi i64 [ %indvars.iv.next266.prol, %vec.epilog.scalar.ph394.prol ], [ %indvars.iv265.ph, %vec.epilog.scalar.ph394.preheader ] ; 2 uses
  %prol.iter563 = phi i64 [ %prol.iter563.next, %vec.epilog.scalar.ph394.prol ], [ 0, %vec.epilog.scalar.ph394.preheader ]
  %i.lx = trunc nuw nsw i64 %indvars.iv265.prol to i32
  %i.ly = add i32 %.1172226.us.us, %i.lx
  %i.lz = sext i32 %i.ly to i64                   ; 2 uses
  %i.ma = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %i.lz
  %i.mb = load i16, ptr %i.ma, align 2
  %i.mc = getelementptr inbounds [2 x i8], ptr %i.jz, i64 %i.lz
  store i16 %i.mb, ptr %i.mc, align 2
  %indvars.iv.next266.prol = add nuw nsw i64 %indvars.iv265.prol, 1 ; 2 uses
  %prol.iter563.next = add i64 %prol.iter563, 1   ; 2 uses
  %prol.iter563.cmp.not = icmp eq i64 %prol.iter563.next, %xtraiter561
  br i1 %prol.iter563.cmp.not, label %vec.epilog.scalar.ph394.prol.loopexit, label %vec.epilog.scalar.ph394.prol, !llvm.loop !1026

vec.epilog.scalar.ph394.prol.loopexit:            ; preds = %vec.epilog.scalar.ph394.prol, %vec.epilog.scalar.ph394.preheader
  %indvars.iv265.unr = phi i64 [ %indvars.iv265.ph, %vec.epilog.scalar.ph394.preheader ], [ %indvars.iv.next266.prol, %vec.epilog.scalar.ph394.prol ]
  %i.md = sub nsw i64 %indvars.iv265.ph, %wide.trip.count269
  %i.me = icmp ugt i64 %i.md, -4
  br i1 %i.me, label %._crit_edge225.us.us, label %vec.epilog.scalar.ph394.preheader.new

vec.epilog.scalar.ph394.preheader.new:            ; preds = %vec.epilog.scalar.ph394.prol.loopexit
  %invariant.op = add i32 1, %.1172226.us.us
  %invariant.op574 = add i32 2, %.1172226.us.us
  %invariant.op576 = add i32 3, %.1172226.us.us
  br label %vec.epilog.scalar.ph394

vec.epilog.scalar.ph394:                          ; preds = %vec.epilog.scalar.ph394, %vec.epilog.scalar.ph394.preheader.new
  %indvars.iv265 = phi i64 [ %indvars.iv265.unr, %vec.epilog.scalar.ph394.preheader.new ], [ %indvars.iv.next266.3, %vec.epilog.scalar.ph394 ] ; 5 uses
  %i.mf = trunc nuw nsw i64 %indvars.iv265 to i32
  %i.mg = add i32 %.1172226.us.us, %i.mf
  %i.mh = sext i32 %i.mg to i64                   ; 2 uses
  %i.mi = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %i.mh
  %i.mj = load i16, ptr %i.mi, align 2
  %i.mk = getelementptr inbounds [2 x i8], ptr %i.jz, i64 %i.mh
  store i16 %i.mj, ptr %i.mk, align 2
  %i.ml = trunc i64 %indvars.iv265 to i32
  %.reass = add i32 %i.ml, %invariant.op
  %i.mm = sext i32 %.reass to i64                 ; 2 uses
  %i.mn = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %i.mm
  %i.mo = load i16, ptr %i.mn, align 2
  %i.mp = getelementptr inbounds [2 x i8], ptr %i.jz, i64 %i.mm
  store i16 %i.mo, ptr %i.mp, align 2
  %i.mq = trunc i64 %indvars.iv265 to i32
  %.reass575 = add i32 %i.mq, %invariant.op574
  %i.mr = sext i32 %.reass575 to i64              ; 2 uses
  %i.ms = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %i.mr
  %i.mt = load i16, ptr %i.ms, align 2
  %i.mu = getelementptr inbounds [2 x i8], ptr %i.jz, i64 %i.mr
  store i16 %i.mt, ptr %i.mu, align 2
  %i.mv = trunc i64 %indvars.iv265 to i32
  %.reass577 = add i32 %i.mv, %invariant.op576
  %i.mw = sext i32 %.reass577 to i64              ; 2 uses
  %i.mx = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %i.mw
  %i.my = load i16, ptr %i.mx, align 2
  %i.mz = getelementptr inbounds [2 x i8], ptr %i.jz, i64 %i.mw
  store i16 %i.my, ptr %i.mz, align 2
  %indvars.iv.next266.3 = add nuw nsw i64 %indvars.iv265, 4 ; 2 uses
  %exitcond270.not.3 = icmp eq i64 %indvars.iv.next266.3, %wide.trip.count269
  br i1 %exitcond270.not.3, label %._crit_edge225.us.us, label %vec.epilog.scalar.ph394, !llvm.loop !1027

._crit_edge225.us.us:                             ; preds = %vec.epilog.scalar.ph394.prol.loopexit, %vec.epilog.scalar.ph394, %vec.epilog.middle.block403, %middle.block389
  %i.na = add nsw i32 %.1172226.us.us, %i.ag      ; 2 uses
  %i.nb = icmp slt i32 %i.na, %i.l
  %indvar.next = add i32 %indvar, 1
  br i1 %i.nb, label %iter.check393, label %._crit_edge228.split.us.us, !llvm.loop !1028

._crit_edge228.split.us.us:                       ; preds = %._crit_edge225.us.us, %.preheader203.us
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond275.not = icmp eq i64 %indvars.iv.next272, %wide.trip.count274
  br i1 %exitcond275.not, label %.loopexit197, label %.lr.ph230.split.us, !llvm.loop !1029

.loopexit197:                                     ; preds = %.loopexit, %._crit_edge228.split.us.us, %._crit_edge.us217, %.loopexit199, %.preheader207, %.preheader204, %.preheader201, %.preheader196
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sel_s(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 4 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.d = lshr i32 %4, 8
  %i.e = and i32 %i.d, 3                          ; 2 uses
  %i.f = shl nuw nsw i32 %i.e, 3
  %i.g = shl i32 %4, 3
  %i.h = and i32 %i.g, 2040
  %i.i = icmp eq i32 %i.e, 2
  %.v.v.i = select i1 %i.i, i32 %i.h, i32 %i.f
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.j = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.k = ashr i32 %4, 10                          ; 7 uses
  %i.l = lshr exact i32 %.v.i, 2                  ; 20 uses
  %i.m = and i32 %3, 15
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %.preheader181, label %bb.b, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.n = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 false) ; 5 uses
  %i.o = add nsw i64 %i.j, -1
  %i.p = tail call range(i64 53, 65) i64 @llvm.ctlz.i64(i64 range(i64 7, 2048) %i.o, i1 true)
  %i.q = add nsw i64 %i.p, -1
  %i.r = lshr exact i64 -9223372036854775808, %i.q
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 3
  %i.u = add nsw i32 %i.t, -1
  %i.v = and i32 %i.u, %3                         ; 2 uses
  %i.w = add nuw nsw i32 %i.n, 1
  %i.x = lshr i32 %i.v, %i.w                      ; 3 uses
  %i.y = and i32 %3, 32768
  %.not298 = icmp eq i32 %i.y, 0                  ; 3 uses
  %.not29.i = icmp eq i32 %i.n, 2
  br i1 %.not29.i, label %decode_counter.exit.thread281, label %bb.c, !prof !54

bb.c:                                             ; preds = %bb.b
  %i.z = icmp samesign ult i32 %i.n, 2
  br i1 %i.z, label %bb.d, label %decode_counter.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = sub nuw nsw i32 2, %i.n
  %i.ab = lshr i32 %i.v, 3                        ; 2 uses
  %i.ac = shl nuw nsw i32 %i.ab, %i.aa
  %i.ad = icmp ne i32 %i.x, %i.ac
  %i.ae = zext i1 %i.ad to i32
  %i.af = add nuw nsw i32 %i.ab, %i.ae
  br label %decode_counter.exit.thread281

decode_counter.exit.thread281:                    ; preds = %bb.d, %bb.b
  %.sroa.020.sroa.0.0.i.ph = phi i32 [ %i.x, %bb.b ], [ %i.af, %bb.d ] ; 2 uses
  br i1 %.not298, label %.preheader181, label %.preheader176

decode_counter.exit:                              ; preds = %bb.c
  %i.ag = add nsw i32 %i.n, -2                    ; 2 uses
  %i.ah = shl i32 %i.x, %i.ag                     ; 5 uses
  %i.ai = icmp eq i32 %i.ag, 0
  br i1 %i.ai, label %decode_counter.exit.thread, label %bb.g

decode_counter.exit.thread:                       ; preds = %decode_counter.exit
  br i1 %.not298, label %.preheader181, label %.preheader176

.preheader181:                                    ; preds = %bb.a, %decode_counter.exit.thread281, %decode_counter.exit.thread
  %.sroa.0107.sroa.0.0.extract.trunc174286 = phi i32 [ %.sroa.020.sroa.0.0.i.ph, %decode_counter.exit.thread281 ], [ %i.ah, %decode_counter.exit.thread ], [ 0, %bb.a ] ; 3 uses
  %i.aj = icmp sgt i32 %i.k, 0
  br i1 %i.aj, label %.lr.ph208.preheader, label %.loopexit177

.lr.ph208.preheader:                              ; preds = %.preheader181
  %wide.trip.count256 = zext nneg i32 %i.k to i64
  %5 = xor i32 %.sroa.0107.sroa.0.0.extract.trunc174286, -1
  %6 = add i32 %i.l, %5
  %7 = lshr exact i64 %i.j, 2
  %8 = sub i64 %i.a, %i.c
  %diff.check419 = icmp ugt i64 %8, -32
  %i.ak = sub i64 %i.b, %i.c
  %diff.check405 = icmp ugt i64 %i.ak, -32
  br label %.lr.ph208

.preheader176:                                    ; preds = %decode_counter.exit.thread281, %decode_counter.exit.thread
  %.sroa.0107.sroa.0.0.extract.trunc174287 = phi i32 [ %.sroa.020.sroa.0.0.i.ph, %decode_counter.exit.thread281 ], [ %i.ah, %decode_counter.exit.thread ] ; 3 uses
  %i.al = icmp sgt i32 %i.k, 0
  br i1 %i.al, label %.lr.ph214.preheader, label %.loopexit177

.lr.ph214.preheader:                              ; preds = %.preheader176
  %wide.trip.count274 = zext nneg i32 %i.k to i64
  %9 = xor i32 %.sroa.0107.sroa.0.0.extract.trunc174287, -1
  %10 = add i32 %i.l, %9
  %11 = lshr exact i64 %i.j, 2
  %12 = sub i64 %i.b, %i.c
  %diff.check391 = icmp ugt i64 %12, -32
  %i.am = sub i64 %i.a, %i.c
  %diff.check377 = icmp ugt i64 %i.am, -32
  br label %.lr.ph214

.lr.ph214:                                        ; preds = %.lr.ph214.preheader, %.loopexit
  %indvars.iv271 = phi i64 [ 0, %.lr.ph214.preheader ], [ %indvars.iv.next272, %.loopexit ] ; 4 uses
  %indvars.iv261 = phi i32 [ %.sroa.0107.sroa.0.0.extract.trunc174287, %.lr.ph214.preheader ], [ %indvars.iv.next262, %.loopexit ] ; 3 uses
  %13 = mul i64 %11, %indvars.iv271
  %14 = trunc i64 %13 to i32
  %15 = add i32 %10, %14                          ; 2 uses
  %i.an = zext i32 %indvars.iv261 to i64          ; 8 uses
  %i.ao = shl nuw nsw i64 %indvars.iv271, 8       ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao ; 9 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %i.ao ; 7 uses
  %i.as = trunc i64 %indvars.iv271 to i32
  %i.at = mul i32 %i.l, %i.as
  %i.au = sub i32 %.sroa.0107.sroa.0.0.extract.trunc174287, %i.at ; 2 uses
  %i.av = icmp slt i32 %i.au, 1
  br i1 %i.av, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %.lr.ph214
  %.not167 = icmp slt i32 %i.au, %i.l
  br i1 %.not167, label %.lr.ph210.preheader, label %.loopexit.sink.split

.lr.ph210.preheader:                              ; preds = %bb.e
  %min.iters.check393 = icmp ult i32 %indvars.iv261, 8
  %or.cond = or i1 %min.iters.check393, %diff.check391
  br i1 %or.cond, label %.lr.ph210.preheader441, label %vector.ph394

vector.ph394:                                     ; preds = %.lr.ph210.preheader
  %n.vec395 = and i64 %i.an, 4294967288           ; 3 uses
  br label %vector.body396

vector.body396:                                   ; preds = %vector.body396, %vector.ph394
  %index397 = phi i64 [ 0, %vector.ph394 ], [ %index.next400, %vector.body396 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index397 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load398 = load <4 x i32>, ptr %i.aw, align 4
  %wide.load399 = load <4 x i32>, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index397 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x i32> %wide.load398, ptr %i.ay, align 4
  store <4 x i32> %wide.load399, ptr %i.az, align 4
  %index.next400 = add nuw i64 %index397, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next400, %n.vec395
  br i1 %i.ba, label %middle.block401, label %vector.body396, !llvm.loop !1031

middle.block401:                                  ; preds = %vector.body396
  %cmp.n402 = icmp eq i64 %n.vec395, %i.an
  br i1 %cmp.n402, label %.lr.ph212.preheader, label %.lr.ph210.preheader441

.lr.ph210.preheader441:                           ; preds = %.lr.ph210.preheader, %middle.block401
  %indvars.iv258.ph = phi i64 [ 0, %.lr.ph210.preheader ], [ %n.vec395, %middle.block401 ] ; 3 uses
  %xtraiter450 = and i64 %i.an, 3                 ; 2 uses
  %lcmp.mod451.not = icmp eq i64 %xtraiter450, 0
  br i1 %lcmp.mod451.not, label %.lr.ph210.prol.loopexit, label %.lr.ph210.prol

.lr.ph210.prol:                                   ; preds = %.lr.ph210.preheader441, %.lr.ph210.prol
  %indvars.iv258.prol = phi i64 [ %indvars.iv.next259.prol, %.lr.ph210.prol ], [ %indvars.iv258.ph, %.lr.ph210.preheader441 ] ; 3 uses
  %prol.iter452 = phi i64 [ %prol.iter452.next, %.lr.ph210.prol ], [ 0, %.lr.ph210.preheader441 ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv258.prol
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv258.prol
  store i32 %i.bc, ptr %i.bd, align 4
  %indvars.iv.next259.prol = add nuw nsw i64 %indvars.iv258.prol, 1 ; 2 uses
  %prol.iter452.next = add i64 %prol.iter452, 1   ; 2 uses
  %prol.iter452.cmp.not = icmp eq i64 %prol.iter452.next, %xtraiter450
  br i1 %prol.iter452.cmp.not, label %.lr.ph210.prol.loopexit, label %.lr.ph210.prol, !llvm.loop !1032

.lr.ph210.prol.loopexit:                          ; preds = %.lr.ph210.prol, %.lr.ph210.preheader441
  %indvars.iv258.unr = phi i64 [ %indvars.iv258.ph, %.lr.ph210.preheader441 ], [ %indvars.iv.next259.prol, %.lr.ph210.prol ]
  %i.be = sub nsw i64 %indvars.iv258.ph, %i.an
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %.lr.ph212.preheader, label %.lr.ph210

.lr.ph210:                                        ; preds = %.lr.ph210.prol.loopexit, %.lr.ph210
  %indvars.iv258 = phi i64 [ %indvars.iv.next259.3, %.lr.ph210 ], [ %indvars.iv258.unr, %.lr.ph210.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv258
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv258
  store i32 %i.bh, ptr %i.bi, align 4
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next259
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next259
  store i32 %i.bk, ptr %i.bl, align 4
  %indvars.iv.next259.1 = add nuw nsw i64 %indvars.iv258, 2 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next259.1
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next259.1
  store i32 %i.bn, ptr %i.bo, align 4
  %indvars.iv.next259.2 = add nuw nsw i64 %indvars.iv258, 3 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next259.2
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next259.2
  store i32 %i.bq, ptr %i.br, align 4
  %indvars.iv.next259.3 = add nuw nsw i64 %indvars.iv258, 4 ; 2 uses
  %exitcond264.not.3 = icmp eq i64 %indvars.iv.next259.3, %i.an
  br i1 %exitcond264.not.3, label %.lr.ph212.preheader, label %.lr.ph210, !llvm.loop !1033

.lr.ph212.preheader:                              ; preds = %.lr.ph210.prol.loopexit, %.lr.ph210, %middle.block401
  %i.bs = zext i32 %15 to i64
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check379 = icmp ult i32 %15, 7
  %or.cond433 = or i1 %min.iters.check379, %diff.check377
  br i1 %or.cond433, label %.lr.ph212.preheader440, label %vector.ph380

vector.ph380:                                     ; preds = %.lr.ph212.preheader
  %n.vec381 = and i64 %i.bt, 8589934584           ; 3 uses
  %i.bu = add nuw nsw i64 %n.vec381, %i.an
  br label %vector.body382

vector.body382:                                   ; preds = %vector.body382, %vector.ph380
  %index383 = phi i64 [ 0, %vector.ph380 ], [ %index.next386, %vector.body382 ] ; 2 uses
  %i.bv = add nuw i64 %index383, %i.an            ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load384 = load <4 x i32>, ptr %i.bw, align 4
  %wide.load385 = load <4 x i32>, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bv ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <4 x i32> %wide.load384, ptr %i.by, align 4
  store <4 x i32> %wide.load385, ptr %i.bz, align 4
  %index.next386 = add nuw i64 %index383, 8       ; 2 uses
  %i.ca = icmp eq i64 %index.next386, %n.vec381
  br i1 %i.ca, label %middle.block387, label %vector.body382, !llvm.loop !1034

middle.block387:                                  ; preds = %vector.body382
  %cmp.n388 = icmp eq i64 %i.bt, %n.vec381
  br i1 %cmp.n388, label %.loopexit, label %.lr.ph212.preheader440

.lr.ph212.preheader440:                           ; preds = %.lr.ph212.preheader, %middle.block387
  %indvars.iv268.ph = phi i64 [ %i.an, %.lr.ph212.preheader ], [ %i.bu, %middle.block387 ]
  br label %.lr.ph212

.lr.ph212:                                        ; preds = %.lr.ph212.preheader440, %.lr.ph212
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %.lr.ph212 ], [ %indvars.iv268.ph, %.lr.ph212.preheader440 ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv268
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv268
  store i32 %i.cc, ptr %i.cd, align 4
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %i.ce = trunc nuw i64 %indvars.iv.next269 to i32
  %i.cf = icmp sgt i32 %i.l, %i.ce
  br i1 %i.cf, label %.lr.ph212, label %.loopexit, !llvm.loop !1035

.loopexit.sink.split:                             ; preds = %bb.e, %.lr.ph214
  %.sink = phi ptr [ %i.aq, %.lr.ph214 ], [ %i.ar, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 1 dereferenceable(1) %.sink, i64 noundef %i.j, i1 noundef false) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph212, %middle.block387, %.loopexit.sink.split
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %indvars.iv.next262 = sub i32 %indvars.iv261, %i.l
  %exitcond275.not = icmp eq i64 %indvars.iv.next272, %wide.trip.count274
  br i1 %exitcond275.not, label %.loopexit177, label %.lr.ph214, !llvm.loop !1036

.lr.ph208:                                        ; preds = %.lr.ph208.preheader, %.loopexit179
  %indvars.iv253 = phi i64 [ 0, %.lr.ph208.preheader ], [ %indvars.iv.next254, %.loopexit179 ] ; 4 uses
  %indvars.iv243 = phi i32 [ %.sroa.0107.sroa.0.0.extract.trunc174286, %.lr.ph208.preheader ], [ %indvars.iv.next244, %.loopexit179 ] ; 3 uses
  %16 = mul i64 %7, %indvars.iv253
  %17 = trunc i64 %16 to i32
  %18 = add i32 %6, %17                           ; 2 uses
  %i.cg = zext i32 %indvars.iv243 to i64          ; 8 uses
  %i.ch = shl nuw nsw i64 %indvars.iv253, 8       ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %i.ch ; 9 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ch ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %i.ch ; 3 uses
  %i.cl = trunc i64 %indvars.iv253 to i32
  %i.cm = mul i32 %i.l, %i.cl
  %i.cn = sub i32 %.sroa.0107.sroa.0.0.extract.trunc174286, %i.cm ; 2 uses
  %i.co = icmp slt i32 %i.cn, 1
  br i1 %i.co, label %.loopexit179.sink.split, label %bb.f

bb.f:                                             ; preds = %.lr.ph208
  %.not = icmp slt i32 %i.cn, %i.l
  br i1 %.not, label %.lr.ph204.preheader, label %.loopexit179.sink.split

.lr.ph204.preheader:                              ; preds = %bb.f
  %min.iters.check421 = icmp ult i32 %indvars.iv243, 8
  %or.cond434 = or i1 %min.iters.check421, %diff.check419
  br i1 %or.cond434, label %.lr.ph204.preheader439, label %vector.ph422

vector.ph422:                                     ; preds = %.lr.ph204.preheader
  %n.vec423 = and i64 %i.cg, 4294967288           ; 3 uses
  br label %vector.body424

vector.body424:                                   ; preds = %vector.body424, %vector.ph422
  %index425 = phi i64 [ 0, %vector.ph422 ], [ %index.next428, %vector.body424 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index425 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load426 = load <4 x i32>, ptr %i.cp, align 4
  %wide.load427 = load <4 x i32>, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %index425 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x i32> %wide.load426, ptr %i.cr, align 4
  store <4 x i32> %wide.load427, ptr %i.cs, align 4
  %index.next428 = add nuw i64 %index425, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next428, %n.vec423
  br i1 %i.ct, label %middle.block429, label %vector.body424, !llvm.loop !1037

middle.block429:                                  ; preds = %vector.body424
  %cmp.n430 = icmp eq i64 %n.vec423, %i.cg
  br i1 %cmp.n430, label %.lr.ph206.preheader, label %.lr.ph204.preheader439

.lr.ph204.preheader439:                           ; preds = %.lr.ph204.preheader, %middle.block429
  %indvars.iv240.ph = phi i64 [ 0, %.lr.ph204.preheader ], [ %n.vec423, %middle.block429 ] ; 3 uses
  %xtraiter453 = and i64 %i.cg, 3                 ; 2 uses
  %lcmp.mod454.not = icmp eq i64 %xtraiter453, 0
  br i1 %lcmp.mod454.not, label %.lr.ph204.prol.loopexit, label %.lr.ph204.prol

.lr.ph204.prol:                                   ; preds = %.lr.ph204.preheader439, %.lr.ph204.prol
  %indvars.iv240.prol = phi i64 [ %indvars.iv.next241.prol, %.lr.ph204.prol ], [ %indvars.iv240.ph, %.lr.ph204.preheader439 ] ; 3 uses
  %prol.iter455 = phi i64 [ %prol.iter455.next, %.lr.ph204.prol ], [ 0, %.lr.ph204.preheader439 ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv240.prol
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv240.prol
  store i32 %i.cv, ptr %i.cw, align 4
  %indvars.iv.next241.prol = add nuw nsw i64 %indvars.iv240.prol, 1 ; 2 uses
  %prol.iter455.next = add i64 %prol.iter455, 1   ; 2 uses
  %prol.iter455.cmp.not = icmp eq i64 %prol.iter455.next, %xtraiter453
  br i1 %prol.iter455.cmp.not, label %.lr.ph204.prol.loopexit, label %.lr.ph204.prol, !llvm.loop !1038

.lr.ph204.prol.loopexit:                          ; preds = %.lr.ph204.prol, %.lr.ph204.preheader439
  %indvars.iv240.unr = phi i64 [ %indvars.iv240.ph, %.lr.ph204.preheader439 ], [ %indvars.iv.next241.prol, %.lr.ph204.prol ]
  %i.cx = sub nsw i64 %indvars.iv240.ph, %i.cg
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %.lr.ph206.preheader, label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.prol.loopexit, %.lr.ph204
  %indvars.iv240 = phi i64 [ %indvars.iv.next241.3, %.lr.ph204 ], [ %indvars.iv240.unr, %.lr.ph204.prol.loopexit ] ; 6 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv240
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv240
  store i32 %i.da, ptr %i.db, align 4
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next241
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next241
  store i32 %i.dd, ptr %i.de, align 4
  %indvars.iv.next241.1 = add nuw nsw i64 %indvars.iv240, 2 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next241.1
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next241.1
  store i32 %i.dg, ptr %i.dh, align 4
  %indvars.iv.next241.2 = add nuw nsw i64 %indvars.iv240, 3 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next241.2
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next241.2
  store i32 %i.dj, ptr %i.dk, align 4
  %indvars.iv.next241.3 = add nuw nsw i64 %indvars.iv240, 4 ; 2 uses
  %exitcond246.not.3 = icmp eq i64 %indvars.iv.next241.3, %i.cg
  br i1 %exitcond246.not.3, label %.lr.ph206.preheader, label %.lr.ph204, !llvm.loop !1039

.lr.ph206.preheader:                              ; preds = %.lr.ph204.prol.loopexit, %.lr.ph204, %middle.block429
  %i.dl = zext i32 %18 to i64
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check407 = icmp ult i32 %18, 7
  %or.cond435 = or i1 %min.iters.check407, %diff.check405
  br i1 %or.cond435, label %.lr.ph206.preheader438, label %vector.ph408

vector.ph408:                                     ; preds = %.lr.ph206.preheader
  %n.vec409 = and i64 %i.dm, 8589934584           ; 3 uses
  %i.dn = add nuw nsw i64 %n.vec409, %i.cg
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph408
  %index411 = phi i64 [ 0, %vector.ph408 ], [ %index.next414, %vector.body410 ] ; 2 uses
  %i.do = add nuw i64 %index411, %i.cg            ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load412 = load <4 x i32>, ptr %i.dp, align 4
  %wide.load413 = load <4 x i32>, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.do ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <4 x i32> %wide.load412, ptr %i.dr, align 4
  store <4 x i32> %wide.load413, ptr %i.ds, align 4
  %index.next414 = add nuw i64 %index411, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next414, %n.vec409
  br i1 %i.dt, label %middle.block415, label %vector.body410, !llvm.loop !1040

middle.block415:                                  ; preds = %vector.body410
  %cmp.n416 = icmp eq i64 %i.dm, %n.vec409
  br i1 %cmp.n416, label %.loopexit179, label %.lr.ph206.preheader438

.lr.ph206.preheader438:                           ; preds = %.lr.ph206.preheader, %middle.block415
  %indvars.iv250.ph = phi i64 [ %i.cg, %.lr.ph206.preheader ], [ %i.dn, %middle.block415 ]
  br label %.lr.ph206

.lr.ph206:                                        ; preds = %.lr.ph206.preheader438, %.lr.ph206
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %.lr.ph206 ], [ %indvars.iv250.ph, %.lr.ph206.preheader438 ] ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv250
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv250
  store i32 %i.dv, ptr %i.dw, align 4
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %i.dx = trunc nuw i64 %indvars.iv.next251 to i32
  %i.dy = icmp sgt i32 %i.l, %i.dx
  br i1 %i.dy, label %.lr.ph206, label %.loopexit179, !llvm.loop !1041

.loopexit179.sink.split:                          ; preds = %bb.f, %.lr.ph208
  %.sink296 = phi ptr [ %i.ck, %.lr.ph208 ], [ %i.cj, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ci, ptr noundef nonnull align 1 dereferenceable(1) %.sink296, i64 noundef %i.j, i1 noundef false) #15
  br label %.loopexit179

.loopexit179:                                     ; preds = %.lr.ph206, %middle.block415, %.loopexit179.sink.split
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %indvars.iv.next244 = sub i32 %indvars.iv243, %i.l
  %exitcond257.not = icmp eq i64 %indvars.iv.next254, %wide.trip.count256
  br i1 %exitcond257.not, label %.loopexit177, label %.lr.ph208, !llvm.loop !1042

bb.g:                                             ; preds = %decode_counter.exit
  %i.dz = icmp sgt i32 %i.k, 0                    ; 2 uses
  br i1 %.not298, label %.preheader187, label %.preheader184

.preheader187:                                    ; preds = %bb.g
  br i1 %i.dz, label %.lr.ph193.preheader, label %.loopexit177

.lr.ph193.preheader:                              ; preds = %.preheader187
  %i.ea = zext nneg i32 %i.l to i64               ; 4 uses
  %wide.trip.count227 = zext nneg i32 %i.k to i64
  %i.eb = sub i64 %i.b, %i.c
  %diff.check328 = icmp ugt i64 %i.eb, -32
  br label %.lr.ph193

.preheader184:                                    ; preds = %bb.g
  br i1 %i.dz, label %.lr.ph202.preheader, label %.loopexit177

.lr.ph202.preheader:                              ; preds = %.preheader184
  %i.ec = zext nneg i32 %i.l to i64               ; 3 uses
  %wide.trip.count238 = zext nneg i32 %i.k to i64
  %i.ed = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.ed, -32
  br label %.lr.ph202

.lr.ph202:                                        ; preds = %.lr.ph202.preheader, %._crit_edge200
  %indvars.iv235 = phi i64 [ 0, %.lr.ph202.preheader ], [ %indvars.iv.next236, %._crit_edge200 ] ; 4 uses
  %i.ee = shl nuw nsw i64 %indvars.iv235, 8       ; 2 uses
  %i.ef = or disjoint i64 %i.ee, 8                ; 2 uses
  %scevgep302 = getelementptr i8, ptr %0, i64 %i.ef
  %i.eg = or disjoint i64 %i.ee, 4                ; 2 uses
  %scevgep305 = getelementptr i8, ptr %1, i64 %i.eg
  %scevgep307 = getelementptr i8, ptr %2, i64 %i.eg
  %scevgep309 = getelementptr i8, ptr %2, i64 %i.ef
  %i.eh = shl nuw nsw i64 %indvars.iv235, 8       ; 3 uses
  %i.ei = getelementptr i8, ptr %0, i64 %i.eh     ; 6 uses
  %i.ej = getelementptr i8, ptr %1, i64 %i.eh     ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 %i.eh ; 4 uses
  %i.el = trunc i64 %indvars.iv235 to i32
  %i.em = mul i32 %i.l, %i.el
  %i.en = sub i32 %i.ah, %i.em                    ; 2 uses
  %i.eo = icmp sgt i32 %i.en, 0
  br i1 %i.eo, label %.lr.ph196.preheader, label %.lr.ph199.preheader

.lr.ph196.preheader:                              ; preds = %.lr.ph202
  %i.ep = tail call i32 @llvm.smin.i32(i32 %i.en, i32 %i.l) ; 2 uses
  %i.eq = zext nneg i32 %i.ep to i64              ; 3 uses
  %min.iters.check318 = icmp ult i32 %i.ep, 8
  %or.cond436 = or i1 %min.iters.check318, %diff.check
  br i1 %or.cond436, label %.lr.ph196.preheader447, label %vector.ph319

vector.ph319:                                     ; preds = %.lr.ph196.preheader
  %n.vec320 = and i64 %i.eq, 1073741816           ; 4 uses
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph319
  %index322 = phi i64 [ 0, %vector.ph319 ], [ %index.next324, %vector.body321 ] ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %index322 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load = load <4 x i32>, ptr %i.er, align 4
  %wide.load323 = load <4 x i32>, ptr %i.es, align 4
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %index322 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store <4 x i32> %wide.load, ptr %i.et, align 4
  store <4 x i32> %wide.load323, ptr %i.eu, align 4
  %index.next324 = add nuw i64 %index322, 8       ; 2 uses
  %i.ev = icmp eq i64 %index.next324, %n.vec320
  br i1 %i.ev, label %middle.block325, label %vector.body321, !llvm.loop !1043

middle.block325:                                  ; preds = %vector.body321
  %cmp.n = icmp eq i64 %n.vec320, %i.eq
  br i1 %cmp.n, label %.preheader183, label %.lr.ph196.preheader447

.lr.ph196.preheader447:                           ; preds = %.lr.ph196.preheader, %middle.block325
  %indvars.iv229.ph = phi i64 [ 0, %.lr.ph196.preheader ], [ %n.vec320, %middle.block325 ]
  br label %.lr.ph196

.preheader183:                                    ; preds = %.lr.ph196, %middle.block325
  %indvars.iv.next230.lcssa = phi i64 [ %n.vec320, %middle.block325 ], [ %indvars.iv.next230, %.lr.ph196 ] ; 2 uses
  %i.ew = trunc nuw nsw i64 %indvars.iv.next230.lcssa to i32
  %i.ex = icmp samesign ugt i32 %i.l, %i.ew
  br i1 %i.ex, label %.lr.ph199.preheader, label %._crit_edge200

.lr.ph199.preheader:                              ; preds = %.lr.ph202, %.preheader183
  %.0154.lcssa289 = phi i64 [ %indvars.iv.next230.lcssa, %.preheader183 ], [ 0, %.lr.ph202 ] ; 9 uses
  %i.ey = add nuw nsw i64 %.0154.lcssa289, 2
  %i.ez = tail call i64 @llvm.umax.i64(i64 %i.ec, i64 %i.ey)
  %i.fa = xor i64 %.0154.lcssa289, -1
  %i.fb = add i64 %i.ez, %i.fa                    ; 3 uses
  %i.fc = lshr i64 %i.fb, 1
  %i.fd = add nuw i64 %i.fc, 1
  %min.iters.check = icmp ult i64 %i.fb, 20
  br i1 %min.iters.check, label %.lr.ph199.preheader446, label %vector.memcheck

.lr.ph199.preheader446:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph199.preheader
  %indvars.iv232.ph = phi i64 [ %.0154.lcssa289, %vector.memcheck ], [ %.0154.lcssa289, %.lr.ph199.preheader ], [ %i.fn, %vector.body ]
  br label %.lr.ph199

vector.memcheck:                                  ; preds = %.lr.ph199.preheader
  %i.fe = shl nuw nsw i64 %.0154.lcssa289, 2      ; 4 uses
  %scevgep = getelementptr nuw i8, ptr %i.ei, i64 %i.fe ; 2 uses
  %i.ff = add nuw nsw i64 %.0154.lcssa289, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ec, i64 %i.ff)
  %i.fg = xor i64 %.0154.lcssa289, -1
  %i.fh = add i64 %umax, %i.fg
  %i.fi = shl i64 %i.fh, 2
  %i.fj = and i64 %i.fi, -8
  %i.fk = add i64 %i.fj, %i.fe                    ; 3 uses
  %scevgep303 = getelementptr i8, ptr %scevgep302, i64 %i.fk ; 2 uses
  %scevgep304 = getelementptr nuw i8, ptr %i.ej, i64 %i.fe
  %scevgep306 = getelementptr i8, ptr %scevgep305, i64 %i.fk
  %scevgep308 = getelementptr i8, ptr %scevgep307, i64 %i.fe
  %scevgep310 = getelementptr i8, ptr %scevgep309, i64 %i.fk
  %bound0 = icmp ult ptr %scevgep, %scevgep306
  %bound1 = icmp ult ptr %scevgep304, %scevgep303
  %found.conflict = and i1 %bound0, %bound1
  %bound0311 = icmp ult ptr %scevgep, %scevgep310
  %bound1312 = icmp ult ptr %scevgep308, %scevgep303
  %found.conflict313 = and i1 %bound0311, %bound1312
  %conflict.rdx = or i1 %found.conflict, %found.conflict313
  br i1 %conflict.rdx, label %.lr.ph199.preheader446, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fl = and i64 %i.fb, 2
  %.not432 = icmp eq i64 %i.fl, 0
  %.neg = select i1 %.not432, i64 -1, i64 -2
  %n.vec = add i64 %.neg, %i.fd                   ; 2 uses
  %i.fm = shl i64 %n.vec, 1
  %i.fn = add i64 %.0154.lcssa289, %i.fm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fo = shl nuw i64 %index, 1
  %i.fp = add nuw i64 %.0154.lcssa289, %i.fo      ; 3 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fp
  %wide.vec = load <4 x i32>, ptr %i.fq, align 4, !alias.scope !1062
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fp
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.fp
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %wide.vec314 = load <4 x i32>, ptr %i.ft, align 4, !alias.scope !1063
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> %wide.vec314, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  store <4 x i32> %interleaved.vec, ptr %i.fr, align 4, !alias.scope !1064, !noalias !1065
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %.lr.ph199.preheader446, label %vector.body, !llvm.loop !1048

.lr.ph196:                                        ; preds = %.lr.ph196.preheader447, %.lr.ph196
end_hunk_0
