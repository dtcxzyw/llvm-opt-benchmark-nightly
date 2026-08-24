Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sme_helper?download=true
inline.NumInlined: 2089
inline.NumDeleted: 222
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 184
loop-unroll.NumUnrolled: 297
begin_hunk_0_@helper_sme2_sel_h:bb.a
  br label %vec.epilog.vector.body399

vec.epilog.vector.body399:                        ; preds = %vec.epilog.vector.body399, %vec.epilog.ph397
  %index400 = phi i64 [ %vec.epilog.resume.val391, %vec.epilog.ph397 ], [ %index.next402, %vec.epilog.vector.body399 ] ; 2 uses
  %i.lq = trunc i64 %index400 to i32
  %i.lr = or disjoint i32 %i.lq, 1
  %i.ls = add i32 %.1172226.us.us, %i.lr
  %i.lt = sext i32 %i.ls to i64                   ; 2 uses
  %i.lu = getelementptr inbounds [2 x i8], ptr %i.kc, i64 %i.lt
  %wide.load401 = load <4 x i16>, ptr %i.lu, align 2
  %i.lv = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.lt
  store <4 x i16> %wide.load401, ptr %i.lv, align 2
  %index.next402 = add nuw i64 %index400, 4       ; 2 uses
  %i.lw = icmp eq i64 %index.next402, %n.vec398
  br i1 %i.lw, label %vec.epilog.middle.block403, label %vec.epilog.vector.body399, !llvm.loop !1005

vec.epilog.middle.block403:                       ; preds = %vec.epilog.vector.body399
  br i1 %cmp.n404, label %._crit_edge225.us.us, label %vec.epilog.scalar.ph394.preheader

vec.epilog.scalar.ph394.preheader:                ; preds = %vector.scevcheck, %iter.check393, %vec.epilog.iter.check395, %vec.epilog.middle.block403
  %indvars.iv265.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %iter.check393 ], [ %i.jt, %vec.epilog.iter.check395 ], [ %i.ju, %vec.epilog.middle.block403 ] ; 4 uses
  %i.lx = sub nsw i64 %wide.trip.count269, %indvars.iv265.ph
  %xtraiter561 = and i64 %i.lx, 3                 ; 2 uses
  %lcmp.mod562.not = icmp eq i64 %xtraiter561, 0
  br i1 %lcmp.mod562.not, label %vec.epilog.scalar.ph394.prol.loopexit, label %vec.epilog.scalar.ph394.prol

vec.epilog.scalar.ph394.prol:                     ; preds = %vec.epilog.scalar.ph394.preheader, %vec.epilog.scalar.ph394.prol
  %indvars.iv265.prol = phi i64 [ %indvars.iv.next266.prol, %vec.epilog.scalar.ph394.prol ], [ %indvars.iv265.ph, %vec.epilog.scalar.ph394.preheader ] ; 2 uses
  %prol.iter563 = phi i64 [ %prol.iter563.next, %vec.epilog.scalar.ph394.prol ], [ 0, %vec.epilog.scalar.ph394.preheader ]
  %i.ly = trunc nuw nsw i64 %indvars.iv265.prol to i32
  %i.lz = add i32 %.1172226.us.us, %i.ly
  %i.ma = sext i32 %i.lz to i64                   ; 2 uses
  %i.mb = getelementptr inbounds [2 x i8], ptr %i.kc, i64 %i.ma
  %i.mc = load i16, ptr %i.mb, align 2
  %i.md = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.ma
  store i16 %i.mc, ptr %i.md, align 2
  %indvars.iv.next266.prol = add nuw nsw i64 %indvars.iv265.prol, 1 ; 2 uses
  %prol.iter563.next = add i64 %prol.iter563, 1   ; 2 uses
  %prol.iter563.cmp.not = icmp eq i64 %prol.iter563.next, %xtraiter561
  br i1 %prol.iter563.cmp.not, label %vec.epilog.scalar.ph394.prol.loopexit, label %vec.epilog.scalar.ph394.prol, !llvm.loop !1006

vec.epilog.scalar.ph394.prol.loopexit:            ; preds = %vec.epilog.scalar.ph394.prol, %vec.epilog.scalar.ph394.preheader
  %indvars.iv265.unr = phi i64 [ %indvars.iv265.ph, %vec.epilog.scalar.ph394.preheader ], [ %indvars.iv.next266.prol, %vec.epilog.scalar.ph394.prol ]
  %i.me = sub nsw i64 %indvars.iv265.ph, %wide.trip.count269
  %i.mf = icmp ugt i64 %i.me, -4
  br i1 %i.mf, label %._crit_edge225.us.us, label %vec.epilog.scalar.ph394.preheader.new

vec.epilog.scalar.ph394.preheader.new:            ; preds = %vec.epilog.scalar.ph394.prol.loopexit
  %invariant.op = add i32 1, %.1172226.us.us
  %invariant.op574 = add i32 2, %.1172226.us.us
  %invariant.op576 = add i32 3, %.1172226.us.us
  br label %vec.epilog.scalar.ph394

vec.epilog.scalar.ph394:                          ; preds = %vec.epilog.scalar.ph394, %vec.epilog.scalar.ph394.preheader.new
  %indvars.iv265 = phi i64 [ %indvars.iv265.unr, %vec.epilog.scalar.ph394.preheader.new ], [ %indvars.iv.next266.3, %vec.epilog.scalar.ph394 ] ; 5 uses
  %i.mg = trunc nuw nsw i64 %indvars.iv265 to i32
  %i.mh = add i32 %.1172226.us.us, %i.mg
  %i.mi = sext i32 %i.mh to i64                   ; 2 uses
  %i.mj = getelementptr inbounds [2 x i8], ptr %i.kc, i64 %i.mi
  %i.mk = load i16, ptr %i.mj, align 2
  %i.ml = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.mi
  store i16 %i.mk, ptr %i.ml, align 2
  %i.mm = trunc i64 %indvars.iv265 to i32
  %.reass = add i32 %i.mm, %invariant.op
  %i.mn = sext i32 %.reass to i64                 ; 2 uses
  %i.mo = getelementptr inbounds [2 x i8], ptr %i.kc, i64 %i.mn
  %i.mp = load i16, ptr %i.mo, align 2
  %i.mq = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.mn
  store i16 %i.mp, ptr %i.mq, align 2
  %i.mr = trunc i64 %indvars.iv265 to i32
  %.reass575 = add i32 %i.mr, %invariant.op574
  %i.ms = sext i32 %.reass575 to i64              ; 2 uses
  %i.mt = getelementptr inbounds [2 x i8], ptr %i.kc, i64 %i.ms
  %i.mu = load i16, ptr %i.mt, align 2
  %i.mv = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.ms
  store i16 %i.mu, ptr %i.mv, align 2
  %i.mw = trunc i64 %indvars.iv265 to i32
  %.reass577 = add i32 %i.mw, %invariant.op576
  %i.mx = sext i32 %.reass577 to i64              ; 2 uses
  %i.my = getelementptr inbounds [2 x i8], ptr %i.kc, i64 %i.mx
  %i.mz = load i16, ptr %i.my, align 2
  %i.na = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.mx
  store i16 %i.mz, ptr %i.na, align 2
  %indvars.iv.next266.3 = add nuw nsw i64 %indvars.iv265, 4 ; 2 uses
  %exitcond270.not.3 = icmp eq i64 %indvars.iv.next266.3, %wide.trip.count269
  br i1 %exitcond270.not.3, label %._crit_edge225.us.us, label %vec.epilog.scalar.ph394, !llvm.loop !1007

._crit_edge225.us.us:                             ; preds = %vec.epilog.scalar.ph394.prol.loopexit, %vec.epilog.scalar.ph394, %vec.epilog.middle.block403, %middle.block389
  %i.nb = add nsw i32 %.1172226.us.us, %i.ah      ; 2 uses
  %i.nc = icmp slt i32 %i.nb, %i.l
  %indvar.next = add i32 %indvar, 1
  br i1 %i.nc, label %iter.check393, label %._crit_edge228.split.us.us, !llvm.loop !1008

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
  br i1 %.not.i, label %.preheader181, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.n = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 false) ; 5 uses
  %i.o = add nsw i64 %i.j, -1
  %i.p = tail call range(i64 53, 65) i64 @llvm.ctlz.i64(i64 range(i64 7, 2048) %i.o, i1 true)
  %i.q = add nuw nsw i64 %i.p, 4294967295
  %i.r = and i64 %i.q, 4294967295
  %i.s = lshr exact i64 -9223372036854775808, %i.r
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 3
  %i.v = add nsw i32 %i.u, -1
  %i.w = and i32 %i.v, %3                         ; 2 uses
  %i.x = add nuw nsw i32 %i.n, 1
  %i.y = lshr i32 %i.w, %i.x                      ; 3 uses
  %i.z = and i32 %3, 32768
  %.not298 = icmp eq i32 %i.z, 0                  ; 3 uses
  %.not29.i = icmp eq i32 %i.n, 2
  br i1 %.not29.i, label %decode_counter.exit.thread281, label %bb.c, !prof !62

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp samesign ult i32 %i.n, 2
  br i1 %i.aa, label %bb.d, label %decode_counter.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = sub nuw nsw i32 2, %i.n
  %i.ac = lshr i32 %i.w, 3                        ; 2 uses
  %i.ad = shl nuw nsw i32 %i.ac, %i.ab
  %i.ae = icmp ne i32 %i.y, %i.ad
  %i.af = zext i1 %i.ae to i32
  %i.ag = add nuw nsw i32 %i.ac, %i.af
  br label %decode_counter.exit.thread281

decode_counter.exit.thread281:                    ; preds = %bb.d, %bb.b
  %.sroa.020.sroa.0.0.i.ph = phi i32 [ %i.y, %bb.b ], [ %i.ag, %bb.d ] ; 2 uses
  br i1 %.not298, label %.preheader181, label %.preheader176

decode_counter.exit:                              ; preds = %bb.c
  %i.ah = add nsw i32 %i.n, -2                    ; 2 uses
  %i.ai = shl i32 %i.y, %i.ah                     ; 5 uses
  %i.aj = icmp eq i32 %i.ah, 0
  br i1 %i.aj, label %decode_counter.exit.thread, label %bb.g

decode_counter.exit.thread:                       ; preds = %decode_counter.exit
  br i1 %.not298, label %.preheader181, label %.preheader176

.preheader181:                                    ; preds = %bb.a, %decode_counter.exit.thread281, %decode_counter.exit.thread
  %.sroa.0107.sroa.0.0.extract.trunc174286 = phi i32 [ %.sroa.020.sroa.0.0.i.ph, %decode_counter.exit.thread281 ], [ %i.ai, %decode_counter.exit.thread ], [ 0, %bb.a ] ; 3 uses
  %i.ak = icmp sgt i32 %i.k, 0
  br i1 %i.ak, label %.lr.ph208.preheader, label %.loopexit177

.lr.ph208.preheader:                              ; preds = %.preheader181
  %wide.trip.count256 = zext nneg i32 %i.k to i64
  %i.al = xor i32 %.sroa.0107.sroa.0.0.extract.trunc174286, -1
  %i.am = add i32 %i.l, %i.al
  %i.an = lshr exact i64 %i.j, 2
  %i.ao = sub i64 %i.a, %i.c
  %diff.check419 = icmp ugt i64 %i.ao, -32
  %i.ap = sub i64 %i.b, %i.c
  %diff.check405 = icmp ugt i64 %i.ap, -32
  br label %.lr.ph208

.preheader176:                                    ; preds = %decode_counter.exit.thread281, %decode_counter.exit.thread
  %.sroa.0107.sroa.0.0.extract.trunc174287 = phi i32 [ %.sroa.020.sroa.0.0.i.ph, %decode_counter.exit.thread281 ], [ %i.ai, %decode_counter.exit.thread ] ; 3 uses
  %i.aq = icmp sgt i32 %i.k, 0
  br i1 %i.aq, label %.lr.ph214.preheader, label %.loopexit177

.lr.ph214.preheader:                              ; preds = %.preheader176
  %wide.trip.count274 = zext nneg i32 %i.k to i64
  %i.ar = xor i32 %.sroa.0107.sroa.0.0.extract.trunc174287, -1
  %i.as = add i32 %i.l, %i.ar
  %i.at = lshr exact i64 %i.j, 2
  %i.au = sub i64 %i.b, %i.c
  %diff.check391 = icmp ugt i64 %i.au, -32
  %i.av = sub i64 %i.a, %i.c
  %diff.check377 = icmp ugt i64 %i.av, -32
  br label %.lr.ph214

.lr.ph214:                                        ; preds = %.lr.ph214.preheader, %.loopexit
  %indvars.iv271 = phi i64 [ 0, %.lr.ph214.preheader ], [ %indvars.iv.next272, %.loopexit ] ; 4 uses
  %indvars.iv261 = phi i32 [ %.sroa.0107.sroa.0.0.extract.trunc174287, %.lr.ph214.preheader ], [ %indvars.iv.next262, %.loopexit ] ; 3 uses
  %i.aw = mul i64 %i.at, %indvars.iv271
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = add i32 %i.as, %i.ax                    ; 2 uses
  %5 = zext i32 %i.ay to i64
  %6 = add nuw nsw i64 %5, 1                      ; 2 uses
  %i.az = zext i32 %indvars.iv261 to i64          ; 8 uses
  %i.ba = shl nuw nsw i64 %indvars.iv271, 8       ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ba ; 9 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.ba ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %i.ba ; 7 uses
  %i.be = trunc i64 %indvars.iv271 to i32
  %i.bf = mul i32 %i.l, %i.be
  %i.bg = sub i32 %.sroa.0107.sroa.0.0.extract.trunc174287, %i.bf ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 1
  br i1 %i.bh, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %.lr.ph214
  %.not167 = icmp slt i32 %i.bg, %i.l
  br i1 %.not167, label %.lr.ph210.preheader, label %.loopexit.sink.split

.lr.ph210.preheader:                              ; preds = %bb.e
  %min.iters.check393 = icmp ult i32 %indvars.iv261, 8
  %or.cond = or i1 %min.iters.check393, %diff.check391
  br i1 %or.cond, label %.lr.ph210.preheader441, label %vector.ph394

vector.ph394:                                     ; preds = %.lr.ph210.preheader
  %n.vec395 = and i64 %i.az, 4294967288           ; 3 uses
  br label %vector.body396

vector.body396:                                   ; preds = %vector.body396, %vector.ph394
  %index397 = phi i64 [ 0, %vector.ph394 ], [ %index.next400, %vector.body396 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %index397 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load398 = load <4 x i32>, ptr %i.bi, align 4
  %wide.load399 = load <4 x i32>, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index397 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <4 x i32> %wide.load398, ptr %i.bk, align 4
  store <4 x i32> %wide.load399, ptr %i.bl, align 4
  %index.next400 = add nuw i64 %index397, 8       ; 2 uses
  %i.bm = icmp eq i64 %index.next400, %n.vec395
  br i1 %i.bm, label %middle.block401, label %vector.body396, !llvm.loop !1009

middle.block401:                                  ; preds = %vector.body396
  %cmp.n402 = icmp eq i64 %n.vec395, %i.az
  br i1 %cmp.n402, label %.lr.ph212.preheader, label %.lr.ph210.preheader441

.lr.ph210.preheader441:                           ; preds = %.lr.ph210.preheader, %middle.block401
  %indvars.iv258.ph = phi i64 [ 0, %.lr.ph210.preheader ], [ %n.vec395, %middle.block401 ] ; 3 uses
  %xtraiter450 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod451.not = icmp eq i64 %xtraiter450, 0
  br i1 %lcmp.mod451.not, label %.lr.ph210.prol.loopexit, label %.lr.ph210.prol

.lr.ph210.prol:                                   ; preds = %.lr.ph210.preheader441, %.lr.ph210.prol
  %indvars.iv258.prol = phi i64 [ %indvars.iv.next259.prol, %.lr.ph210.prol ], [ %indvars.iv258.ph, %.lr.ph210.preheader441 ] ; 3 uses
  %prol.iter452 = phi i64 [ %prol.iter452.next, %.lr.ph210.prol ], [ 0, %.lr.ph210.preheader441 ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv258.prol
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv258.prol
  store i32 %i.bo, ptr %i.bp, align 4
  %indvars.iv.next259.prol = add nuw nsw i64 %indvars.iv258.prol, 1 ; 2 uses
  %prol.iter452.next = add i64 %prol.iter452, 1   ; 2 uses
  %prol.iter452.cmp.not = icmp eq i64 %prol.iter452.next, %xtraiter450
  br i1 %prol.iter452.cmp.not, label %.lr.ph210.prol.loopexit, label %.lr.ph210.prol, !llvm.loop !1010

.lr.ph210.prol.loopexit:                          ; preds = %.lr.ph210.prol, %.lr.ph210.preheader441
  %indvars.iv258.unr = phi i64 [ %indvars.iv258.ph, %.lr.ph210.preheader441 ], [ %indvars.iv.next259.prol, %.lr.ph210.prol ]
  %i.bq = sub nsw i64 %indvars.iv258.ph, %i.az
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %.lr.ph212.preheader, label %.lr.ph210

.lr.ph210:                                        ; preds = %.lr.ph210.prol.loopexit, %.lr.ph210
  %indvars.iv258 = phi i64 [ %indvars.iv.next259.3, %.lr.ph210 ], [ %indvars.iv258.unr, %.lr.ph210.prol.loopexit ] ; 6 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv258
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv258
  store i32 %i.bt, ptr %i.bu, align 4
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next259
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next259
  store i32 %i.bw, ptr %i.bx, align 4
  %indvars.iv.next259.1 = add nuw nsw i64 %indvars.iv258, 2 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next259.1
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next259.1
  store i32 %i.bz, ptr %i.ca, align 4
  %indvars.iv.next259.2 = add nuw nsw i64 %indvars.iv258, 3 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next259.2
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next259.2
  store i32 %i.cc, ptr %i.cd, align 4
  %indvars.iv.next259.3 = add nuw nsw i64 %indvars.iv258, 4 ; 2 uses
  %exitcond264.not.3 = icmp eq i64 %indvars.iv.next259.3, %i.az
  br i1 %exitcond264.not.3, label %.lr.ph212.preheader, label %.lr.ph210, !llvm.loop !1011

.lr.ph212.preheader:                              ; preds = %.lr.ph210.prol.loopexit, %.lr.ph210, %middle.block401
  %min.iters.check379 = icmp ult i32 %i.ay, 7
  %or.cond433 = or i1 %min.iters.check379, %diff.check377
  br i1 %or.cond433, label %.lr.ph212.preheader440, label %vector.ph380

vector.ph380:                                     ; preds = %.lr.ph212.preheader
  %n.vec381 = and i64 %6, 8589934584              ; 3 uses
  %i.ce = add nuw nsw i64 %n.vec381, %i.az
  br label %vector.body382

vector.body382:                                   ; preds = %vector.body382, %vector.ph380
  %index383 = phi i64 [ 0, %vector.ph380 ], [ %index.next386, %vector.body382 ] ; 2 uses
  %i.cf = add nuw i64 %index383, %i.az            ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load384 = load <4 x i32>, ptr %i.cg, align 4
  %wide.load385 = load <4 x i32>, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.cf ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <4 x i32> %wide.load384, ptr %i.ci, align 4
  store <4 x i32> %wide.load385, ptr %i.cj, align 4
  %index.next386 = add nuw i64 %index383, 8       ; 2 uses
  %i.ck = icmp eq i64 %index.next386, %n.vec381
  br i1 %i.ck, label %middle.block387, label %vector.body382, !llvm.loop !1012

middle.block387:                                  ; preds = %vector.body382
  %cmp.n388 = icmp eq i64 %6, %n.vec381
  br i1 %cmp.n388, label %.loopexit, label %.lr.ph212.preheader440

.lr.ph212.preheader440:                           ; preds = %.lr.ph212.preheader, %middle.block387
  %indvars.iv268.ph = phi i64 [ %i.az, %.lr.ph212.preheader ], [ %i.ce, %middle.block387 ]
  br label %.lr.ph212

.lr.ph212:                                        ; preds = %.lr.ph212.preheader440, %.lr.ph212
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %.lr.ph212 ], [ %indvars.iv268.ph, %.lr.ph212.preheader440 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv268
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv268
  store i32 %i.cm, ptr %i.cn, align 4
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %i.co = trunc nuw i64 %indvars.iv.next269 to i32
  %i.cp = icmp sgt i32 %i.l, %i.co
  br i1 %i.cp, label %.lr.ph212, label %.loopexit, !llvm.loop !1013

.loopexit.sink.split:                             ; preds = %bb.e, %.lr.ph214
  %.sink = phi ptr [ %i.bc, %.lr.ph214 ], [ %i.bd, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %.sink, i64 noundef %i.j, i1 noundef false) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph212, %middle.block387, %.loopexit.sink.split
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %indvars.iv.next262 = sub i32 %indvars.iv261, %i.l
  %exitcond275.not = icmp eq i64 %indvars.iv.next272, %wide.trip.count274
  br i1 %exitcond275.not, label %.loopexit177, label %.lr.ph214, !llvm.loop !1014

.lr.ph208:                                        ; preds = %.lr.ph208.preheader, %.loopexit179
  %indvars.iv253 = phi i64 [ 0, %.lr.ph208.preheader ], [ %indvars.iv.next254, %.loopexit179 ] ; 4 uses
  %indvars.iv243 = phi i32 [ %.sroa.0107.sroa.0.0.extract.trunc174286, %.lr.ph208.preheader ], [ %indvars.iv.next244, %.loopexit179 ] ; 3 uses
  %i.cq = mul i64 %i.an, %indvars.iv253
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = add i32 %i.am, %i.cr                    ; 2 uses
  %7 = zext i32 %i.cs to i64
  %8 = add nuw nsw i64 %7, 1                      ; 2 uses
  %i.ct = zext i32 %indvars.iv243 to i64          ; 8 uses
  %i.cu = shl nuw nsw i64 %indvars.iv253, 8       ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 %i.cu ; 9 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %i.cu ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 %i.cu ; 3 uses
  %i.cy = trunc i64 %indvars.iv253 to i32
  %i.cz = mul i32 %i.l, %i.cy
  %i.da = sub i32 %.sroa.0107.sroa.0.0.extract.trunc174286, %i.cz ; 2 uses
  %i.db = icmp slt i32 %i.da, 1
  br i1 %i.db, label %.loopexit179.sink.split, label %bb.f

bb.f:                                             ; preds = %.lr.ph208
  %.not = icmp slt i32 %i.da, %i.l
  br i1 %.not, label %.lr.ph204.preheader, label %.loopexit179.sink.split

.lr.ph204.preheader:                              ; preds = %bb.f
  %min.iters.check421 = icmp ult i32 %indvars.iv243, 8
  %or.cond434 = or i1 %min.iters.check421, %diff.check419
  br i1 %or.cond434, label %.lr.ph204.preheader439, label %vector.ph422

vector.ph422:                                     ; preds = %.lr.ph204.preheader
  %n.vec423 = and i64 %i.ct, 4294967288           ; 3 uses
  br label %vector.body424

vector.body424:                                   ; preds = %vector.body424, %vector.ph422
  %index425 = phi i64 [ 0, %vector.ph422 ], [ %index.next428, %vector.body424 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %index425 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load426 = load <4 x i32>, ptr %i.dc, align 4
  %wide.load427 = load <4 x i32>, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index425 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <4 x i32> %wide.load426, ptr %i.de, align 4
  store <4 x i32> %wide.load427, ptr %i.df, align 4
  %index.next428 = add nuw i64 %index425, 8       ; 2 uses
  %i.dg = icmp eq i64 %index.next428, %n.vec423
  br i1 %i.dg, label %middle.block429, label %vector.body424, !llvm.loop !1015

middle.block429:                                  ; preds = %vector.body424
  %cmp.n430 = icmp eq i64 %n.vec423, %i.ct
  br i1 %cmp.n430, label %.lr.ph206.preheader, label %.lr.ph204.preheader439

.lr.ph204.preheader439:                           ; preds = %.lr.ph204.preheader, %middle.block429
  %indvars.iv240.ph = phi i64 [ 0, %.lr.ph204.preheader ], [ %n.vec423, %middle.block429 ] ; 3 uses
  %xtraiter453 = and i64 %i.ct, 3                 ; 2 uses
  %lcmp.mod454.not = icmp eq i64 %xtraiter453, 0
  br i1 %lcmp.mod454.not, label %.lr.ph204.prol.loopexit, label %.lr.ph204.prol

.lr.ph204.prol:                                   ; preds = %.lr.ph204.preheader439, %.lr.ph204.prol
  %indvars.iv240.prol = phi i64 [ %indvars.iv.next241.prol, %.lr.ph204.prol ], [ %indvars.iv240.ph, %.lr.ph204.preheader439 ] ; 3 uses
  %prol.iter455 = phi i64 [ %prol.iter455.next, %.lr.ph204.prol ], [ 0, %.lr.ph204.preheader439 ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv240.prol
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv240.prol
  store i32 %i.di, ptr %i.dj, align 4
  %indvars.iv.next241.prol = add nuw nsw i64 %indvars.iv240.prol, 1 ; 2 uses
  %prol.iter455.next = add i64 %prol.iter455, 1   ; 2 uses
  %prol.iter455.cmp.not = icmp eq i64 %prol.iter455.next, %xtraiter453
  br i1 %prol.iter455.cmp.not, label %.lr.ph204.prol.loopexit, label %.lr.ph204.prol, !llvm.loop !1016

.lr.ph204.prol.loopexit:                          ; preds = %.lr.ph204.prol, %.lr.ph204.preheader439
  %indvars.iv240.unr = phi i64 [ %indvars.iv240.ph, %.lr.ph204.preheader439 ], [ %indvars.iv.next241.prol, %.lr.ph204.prol ]
  %i.dk = sub nsw i64 %indvars.iv240.ph, %i.ct
  %i.dl = icmp ugt i64 %i.dk, -4
  br i1 %i.dl, label %.lr.ph206.preheader, label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.prol.loopexit, %.lr.ph204
  %indvars.iv240 = phi i64 [ %indvars.iv.next241.3, %.lr.ph204 ], [ %indvars.iv240.unr, %.lr.ph204.prol.loopexit ] ; 6 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv240
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv240
  store i32 %i.dn, ptr %i.do, align 4
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next241
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next241
  store i32 %i.dq, ptr %i.dr, align 4
  %indvars.iv.next241.1 = add nuw nsw i64 %indvars.iv240, 2 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next241.1
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next241.1
  store i32 %i.dt, ptr %i.du, align 4
  %indvars.iv.next241.2 = add nuw nsw i64 %indvars.iv240, 3 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next241.2
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next241.2
  store i32 %i.dw, ptr %i.dx, align 4
  %indvars.iv.next241.3 = add nuw nsw i64 %indvars.iv240, 4 ; 2 uses
  %exitcond246.not.3 = icmp eq i64 %indvars.iv.next241.3, %i.ct
  br i1 %exitcond246.not.3, label %.lr.ph206.preheader, label %.lr.ph204, !llvm.loop !1017

.lr.ph206.preheader:                              ; preds = %.lr.ph204.prol.loopexit, %.lr.ph204, %middle.block429
  %min.iters.check407 = icmp ult i32 %i.cs, 7
  %or.cond435 = or i1 %min.iters.check407, %diff.check405
  br i1 %or.cond435, label %.lr.ph206.preheader438, label %vector.ph408

vector.ph408:                                     ; preds = %.lr.ph206.preheader
  %n.vec409 = and i64 %8, 8589934584              ; 3 uses
  %i.dy = add nuw nsw i64 %n.vec409, %i.ct
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph408
  %index411 = phi i64 [ 0, %vector.ph408 ], [ %index.next414, %vector.body410 ] ; 2 uses
  %i.dz = add nuw i64 %index411, %i.ct            ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load412 = load <4 x i32>, ptr %i.ea, align 4
  %wide.load413 = load <4 x i32>, ptr %i.eb, align 4
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.dz ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <4 x i32> %wide.load412, ptr %i.ec, align 4
  store <4 x i32> %wide.load413, ptr %i.ed, align 4
  %index.next414 = add nuw i64 %index411, 8       ; 2 uses
  %i.ee = icmp eq i64 %index.next414, %n.vec409
  br i1 %i.ee, label %middle.block415, label %vector.body410, !llvm.loop !1018

middle.block415:                                  ; preds = %vector.body410
  %cmp.n416 = icmp eq i64 %8, %n.vec409
  br i1 %cmp.n416, label %.loopexit179, label %.lr.ph206.preheader438

.lr.ph206.preheader438:                           ; preds = %.lr.ph206.preheader, %middle.block415
  %indvars.iv250.ph = phi i64 [ %i.ct, %.lr.ph206.preheader ], [ %i.dy, %middle.block415 ]
  br label %.lr.ph206

.lr.ph206:                                        ; preds = %.lr.ph206.preheader438, %.lr.ph206
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %.lr.ph206 ], [ %indvars.iv250.ph, %.lr.ph206.preheader438 ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv250
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv250
  store i32 %i.eg, ptr %i.eh, align 4
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %i.ei = trunc nuw i64 %indvars.iv.next251 to i32
  %i.ej = icmp sgt i32 %i.l, %i.ei
  br i1 %i.ej, label %.lr.ph206, label %.loopexit179, !llvm.loop !1019

.loopexit179.sink.split:                          ; preds = %bb.f, %.lr.ph208
  %.sink296 = phi ptr [ %i.cx, %.lr.ph208 ], [ %i.cw, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cv, ptr noundef nonnull align 1 dereferenceable(1) %.sink296, i64 noundef %i.j, i1 noundef false) #15
  br label %.loopexit179

.loopexit179:                                     ; preds = %.lr.ph206, %middle.block415, %.loopexit179.sink.split
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %indvars.iv.next244 = sub i32 %indvars.iv243, %i.l
  %exitcond257.not = icmp eq i64 %indvars.iv.next254, %wide.trip.count256
  br i1 %exitcond257.not, label %.loopexit177, label %.lr.ph208, !llvm.loop !1020

bb.g:                                             ; preds = %decode_counter.exit
  %i.ek = icmp sgt i32 %i.k, 0                    ; 2 uses
  br i1 %.not298, label %.preheader187, label %.preheader184

.preheader187:                                    ; preds = %bb.g
  br i1 %i.ek, label %.lr.ph193.preheader, label %.loopexit177

.lr.ph193.preheader:                              ; preds = %.preheader187
  %i.el = zext nneg i32 %i.l to i64               ; 4 uses
  %wide.trip.count227 = zext nneg i32 %i.k to i64
  %i.em = sub i64 %i.b, %i.c
  %diff.check328 = icmp ugt i64 %i.em, -32
  br label %.lr.ph193

.preheader184:                                    ; preds = %bb.g
  br i1 %i.ek, label %.lr.ph202.preheader, label %.loopexit177

.lr.ph202.preheader:                              ; preds = %.preheader184
  %i.en = zext nneg i32 %i.l to i64               ; 3 uses
  %wide.trip.count238 = zext nneg i32 %i.k to i64
  %i.eo = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.eo, -32
  br label %.lr.ph202

.lr.ph202:                                        ; preds = %.lr.ph202.preheader, %._crit_edge200
  %indvars.iv235 = phi i64 [ 0, %.lr.ph202.preheader ], [ %indvars.iv.next236, %._crit_edge200 ] ; 4 uses
  %i.ep = shl nuw nsw i64 %indvars.iv235, 8       ; 2 uses
  %i.eq = or disjoint i64 %i.ep, 8                ; 2 uses
  %scevgep302 = getelementptr i8, ptr %0, i64 %i.eq
  %i.er = or disjoint i64 %i.ep, 4                ; 2 uses
  %scevgep305 = getelementptr i8, ptr %1, i64 %i.er
  %scevgep307 = getelementptr i8, ptr %2, i64 %i.er
  %scevgep309 = getelementptr i8, ptr %2, i64 %i.eq
  %i.es = shl nuw nsw i64 %indvars.iv235, 8       ; 3 uses
  %i.et = getelementptr i8, ptr %0, i64 %i.es     ; 6 uses
  %i.eu = getelementptr i8, ptr %1, i64 %i.es     ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 %i.es ; 4 uses
  %i.ew = trunc i64 %indvars.iv235 to i32
  %i.ex = mul i32 %i.l, %i.ew
  %i.ey = sub i32 %i.ai, %i.ex                    ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %.lr.ph196.preheader, label %.lr.ph199.preheader

.lr.ph196.preheader:                              ; preds = %.lr.ph202
  %i.fa = tail call i32 @llvm.smin.i32(i32 %i.ey, i32 %i.l) ; 2 uses
  %i.fb = zext nneg i32 %i.fa to i64              ; 3 uses
  %min.iters.check318 = icmp ult i32 %i.fa, 8
  %or.cond436 = or i1 %min.iters.check318, %diff.check
  br i1 %or.cond436, label %.lr.ph196.preheader447, label %vector.ph319

vector.ph319:                                     ; preds = %.lr.ph196.preheader
  %n.vec320 = and i64 %i.fb, 1073741816           ; 4 uses
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph319
  %index322 = phi i64 [ 0, %vector.ph319 ], [ %index.next324, %vector.body321 ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index322 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load = load <4 x i32>, ptr %i.fc, align 4
  %wide.load323 = load <4 x i32>, ptr %i.fd, align 4
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %index322 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store <4 x i32> %wide.load, ptr %i.fe, align 4
  store <4 x i32> %wide.load323, ptr %i.ff, align 4
  %index.next324 = add nuw i64 %index322, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next324, %n.vec320
  br i1 %i.fg, label %middle.block325, label %vector.body321, !llvm.loop !1021

middle.block325:                                  ; preds = %vector.body321
  %cmp.n = icmp eq i64 %n.vec320, %i.fb
  br i1 %cmp.n, label %.preheader183, label %.lr.ph196.preheader447

.lr.ph196.preheader447:                           ; preds = %.lr.ph196.preheader, %middle.block325
  %indvars.iv229.ph = phi i64 [ 0, %.lr.ph196.preheader ], [ %n.vec320, %middle.block325 ]
  br label %.lr.ph196

.preheader183:                                    ; preds = %.lr.ph196, %middle.block325
  %indvars.iv.next230.lcssa = phi i64 [ %n.vec320, %middle.block325 ], [ %indvars.iv.next230, %.lr.ph196 ] ; 2 uses
  %i.fh = trunc nuw nsw i64 %indvars.iv.next230.lcssa to i32
  %i.fi = icmp samesign ugt i32 %i.l, %i.fh
  br i1 %i.fi, label %.lr.ph199.preheader, label %._crit_edge200

.lr.ph199.preheader:                              ; preds = %.lr.ph202, %.preheader183
  %.0154.lcssa289 = phi i64 [ %indvars.iv.next230.lcssa, %.preheader183 ], [ 0, %.lr.ph202 ] ; 9 uses
  %i.fj = add nuw nsw i64 %.0154.lcssa289, 2
  %i.fk = tail call i64 @llvm.umax.i64(i64 %i.en, i64 %i.fj)
  %i.fl = xor i64 %.0154.lcssa289, -1
  %i.fm = add i64 %i.fk, %i.fl                    ; 3 uses
  %i.fn = lshr i64 %i.fm, 1
  %i.fo = add nuw i64 %i.fn, 1
  %min.iters.check = icmp ult i64 %i.fm, 20
  br i1 %min.iters.check, label %.lr.ph199.preheader446, label %vector.memcheck

.lr.ph199.preheader446:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph199.preheader
  %indvars.iv232.ph = phi i64 [ %.0154.lcssa289, %vector.memcheck ], [ %.0154.lcssa289, %.lr.ph199.preheader ], [ %i.fy, %vector.body ]
  br label %.lr.ph199

vector.memcheck:                                  ; preds = %.lr.ph199.preheader
  %i.fp = shl nuw nsw i64 %.0154.lcssa289, 2      ; 4 uses
  %scevgep = getelementptr nuw i8, ptr %i.et, i64 %i.fp ; 2 uses
  %i.fq = add nuw nsw i64 %.0154.lcssa289, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.en, i64 %i.fq)
  %i.fr = xor i64 %.0154.lcssa289, -1
  %i.fs = add i64 %umax, %i.fr
  %i.ft = shl i64 %i.fs, 2
  %i.fu = and i64 %i.ft, -8
  %i.fv = add i64 %i.fu, %i.fp                    ; 3 uses
  %scevgep303 = getelementptr i8, ptr %scevgep302, i64 %i.fv ; 2 uses
  %scevgep304 = getelementptr nuw i8, ptr %i.eu, i64 %i.fp
  %scevgep306 = getelementptr i8, ptr %scevgep305, i64 %i.fv
  %scevgep308 = getelementptr i8, ptr %scevgep307, i64 %i.fp
  %scevgep310 = getelementptr i8, ptr %scevgep309, i64 %i.fv
  %bound0 = icmp ult ptr %scevgep, %scevgep306
  %bound1 = icmp ult ptr %scevgep304, %scevgep303
  %found.conflict = and i1 %bound0, %bound1
  %bound0311 = icmp ult ptr %scevgep, %scevgep310
  %bound1312 = icmp ult ptr %scevgep308, %scevgep303
  %found.conflict313 = and i1 %bound0311, %bound1312
  %conflict.rdx = or i1 %found.conflict, %found.conflict313
  br i1 %conflict.rdx, label %.lr.ph199.preheader446, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fw = and i64 %i.fm, 2
  %.not432 = icmp eq i64 %i.fw, 0
  %.neg = select i1 %.not432, i64 -1, i64 -2
  %n.vec = add i64 %.neg, %i.fo                   ; 2 uses
  %i.fx = shl i64 %n.vec, 1
  %i.fy = add i64 %.0154.lcssa289, %i.fx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fz = shl nuw i64 %index, 1
  %i.ga = add nuw i64 %.0154.lcssa289, %i.fz      ; 3 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ga
  %wide.vec = load <4 x i32>, ptr %i.gb, align 4, !alias.scope !1022
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.ga
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.ga
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %wide.vec314 = load <4 x i32>, ptr %i.ge, align 4, !alias.scope !1025
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> %wide.vec314, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  store <4 x i32> %interleaved.vec, ptr %i.gc, align 4, !alias.scope !1027, !noalias !1029
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gf = icmp eq i64 %index.next, %n.vec
  br i1 %i.gf, label %.lr.ph199.preheader446, label %vector.body, !llvm.loop !1030

end_hunk_0
