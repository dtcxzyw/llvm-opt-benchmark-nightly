inline.NumInlined: 2089
inline.NumDeleted: 222
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 184
loop-unroll.NumUnrolled: 297
begin_hunk_0_@helper_sme2_sel_b:bb.a
  store <16 x i8> %wide.load458, ptr %i.pj, align 1
  %index.next459 = add nuw i64 %index456, 32      ; 2 uses
  %i.pk = icmp eq i64 %index.next459, %n.vec454
  br i1 %i.pk, label %middle.block460, label %vector.body455, !llvm.loop !969

middle.block460:                                  ; preds = %vector.body455
  %cmp.n461 = icmp eq i64 %i.pc, %n.vec454
  br i1 %cmp.n461, label %._crit_edge, label %vec.epilog.iter.check466

vec.epilog.iter.check466:                         ; preds = %middle.block460
  %min.epilog.iters.check467 = icmp eq i64 %i.pd, 0
  br i1 %min.epilog.iters.check467, label %.lr.ph.preheader, label %vec.epilog.ph468, !prof !935

vec.epilog.ph468:                                 ; preds = %vector.main.loop.iter.check451, %vec.epilog.iter.check466
  %vec.epilog.resume.val462 = phi i64 [ %n.vec454, %vec.epilog.iter.check466 ], [ 0, %vector.main.loop.iter.check451 ]
  %n.vec469 = and i64 %i.pc, -8                   ; 3 uses
  %i.pl = add nsw i64 %n.vec469, %i.pb
  br label %vec.epilog.vector.body470

vec.epilog.vector.body470:                        ; preds = %vec.epilog.vector.body470, %vec.epilog.ph468
  %index471 = phi i64 [ %vec.epilog.resume.val462, %vec.epilog.ph468 ], [ %index.next473, %vec.epilog.vector.body470 ] ; 2 uses
  %i.pm = add i64 %index471, %i.pb                ; 2 uses
  %i.pn = getelementptr inbounds i8, ptr %i.ou, i64 %i.pm
  %wide.load472 = load <8 x i8>, ptr %i.pn, align 1
  %i.po = getelementptr inbounds i8, ptr %i.os, i64 %i.pm
  store <8 x i8> %wide.load472, ptr %i.po, align 1
  %index.next473 = add nuw i64 %index471, 8       ; 2 uses
  %i.pp = icmp eq i64 %index.next473, %n.vec469
  br i1 %i.pp, label %vec.epilog.middle.block474, label %vec.epilog.vector.body470, !llvm.loop !970

vec.epilog.middle.block474:                       ; preds = %vec.epilog.vector.body470
  %cmp.n475 = icmp eq i64 %i.pc, %n.vec469
  br i1 %cmp.n475, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check464, %vec.epilog.iter.check466, %vec.epilog.middle.block474
  %indvars.iv.ph = phi i64 [ %i.pb, %iter.check464 ], [ %i.pe, %vec.epilog.iter.check466 ], [ %i.pl, %vec.epilog.middle.block474 ] ; 4 uses
  %i.pq = sub nsw i64 0, %indvars.iv.ph
  %i.pr = sub nsw i64 %i.ff, %indvars.iv.ph
  %xtraiter670 = and i64 %i.pq, 3                 ; 2 uses
  %lcmp.mod671.not = icmp eq i64 %xtraiter670, 0
  br i1 %lcmp.mod671.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter672 = phi i64 [ %prol.iter672.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ps = getelementptr inbounds i8, ptr %i.ou, i64 %indvars.iv.prol
  %i.pt = load i8, ptr %i.ps, align 1
  %i.pu = getelementptr inbounds i8, ptr %i.os, i64 %indvars.iv.prol
  store i8 %i.pt, ptr %i.pu, align 1
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter672.next = add i64 %prol.iter672, 1   ; 2 uses
  %prol.iter672.cmp.not = icmp eq i64 %prol.iter672.next, %xtraiter670
  br i1 %prol.iter672.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !971

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.pv = icmp ult i64 %i.pr, 3
  br i1 %i.pv, label %._crit_edge, label %.lr.ph

.lr.ph212:                                        ; preds = %.lr.ph215.split, %.lr.ph212
  %.0168210 = phi i32 [ %i.qa, %.lr.ph212 ], [ 0, %.lr.ph215.split ] ; 2 uses
  %i.pw = sext i32 %.0168210 to i64               ; 2 uses
  %i.px = getelementptr inbounds i8, ptr %i.ot, i64 %i.pw
  %i.py = load i8, ptr %i.px, align 1
  %i.pz = getelementptr inbounds i8, ptr %i.os, i64 %i.pw
  store i8 %i.py, ptr %i.pz, align 1
  %i.qa = add i32 %.0168210, %.fr244              ; 4 uses
  %i.qb = icmp slt i32 %i.qa, %i.oy
  br i1 %i.qb, label %.lr.ph212, label %.preheader206, !llvm.loop !956

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.qc = getelementptr inbounds i8, ptr %i.ou, i64 %indvars.iv
  %i.qd = load i8, ptr %i.qc, align 1
  %i.qe = getelementptr inbounds i8, ptr %i.os, i64 %indvars.iv
  store i8 %i.qd, ptr %i.qe, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.qf = getelementptr inbounds i8, ptr %i.ou, i64 %indvars.iv.next
  %i.qg = load i8, ptr %i.qf, align 1
  %i.qh = getelementptr inbounds i8, ptr %i.os, i64 %indvars.iv.next
  store i8 %i.qg, ptr %i.qh, align 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.qi = getelementptr inbounds i8, ptr %i.ou, i64 %indvars.iv.next.1
  %i.qj = load i8, ptr %i.qi, align 1
  %i.qk = getelementptr inbounds i8, ptr %i.os, i64 %indvars.iv.next.1
  store i8 %i.qj, ptr %i.qk, align 1
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ql = getelementptr inbounds i8, ptr %i.ou, i64 %indvars.iv.next.2
  %i.qm = load i8, ptr %i.ql, align 1
  %i.qn = getelementptr inbounds i8, ptr %i.os, i64 %indvars.iv.next.2
  store i8 %i.qm, ptr %i.qn, align 1
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !972

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block460, %vec.epilog.middle.block474, %.preheader206
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count278
  br i1 %exitcond261.not, label %.loopexit197, label %.lr.ph215.split, !llvm.loop !948

.loopexit197:                                     ; preds = %._crit_edge228.split, %._crit_edge228.split.us.us, %._crit_edge, %._crit_edge.us217, %.loopexit, %.loopexit199, %.preheader207, %.preheader204, %.preheader201, %.preheader196
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sel_h(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
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
  %i.l = lshr exact i32 %.v.i, 1                  ; 20 uses
  %i.m = and i32 %3, 15
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %.preheader201, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.n = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 false) ; 3 uses
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
  %.not343 = icmp eq i32 %i.z, 0                  ; 2 uses
  switch i32 %i.n, label %decode_counter.exit [
    i32 1, label %decode_counter.exit.thread326
    i32 0, label %bb.c
  ], !prof !973

bb.c:                                             ; preds = %bb.b
  %i.aa = lshr i32 %i.w, 2                        ; 2 uses
  %i.ab = shl nuw nsw i32 %i.aa, 1
  %i.ac = icmp ne i32 %i.y, %i.ab
  %i.ad = zext i1 %i.ac to i32
  %i.ae = add nuw nsw i32 %i.aa, %i.ad
  br label %decode_counter.exit.thread326

decode_counter.exit.thread326:                    ; preds = %bb.c, %bb.b
  %.sroa.020.sroa.0.0.i.ph = phi i32 [ %i.y, %bb.b ], [ %i.ae, %bb.c ] ; 4 uses
  br i1 %.not343, label %.preheader201, label %.preheader196

decode_counter.exit:                              ; preds = %bb.b
  %i.af = add nsw i32 %i.n, -1                    ; 7 uses
  %i.ag = shl i32 %i.y, %i.af                     ; 3 uses
  %i.ah = shl nuw nsw i32 1, %i.af                ; 4 uses
  %i.ai = icmp sgt i32 %i.k, 0                    ; 2 uses
  br i1 %.not343, label %.preheader207, label %.preheader204

.preheader201:                                    ; preds = %bb.a, %decode_counter.exit.thread326
  %.sroa.0119.sroa.0.0.extract.trunc194331 = phi i32 [ %.sroa.020.sroa.0.0.i.ph, %decode_counter.exit.thread326 ], [ 0, %bb.a ] ; 3 uses
  %i.aj = icmp sgt i32 %i.k, 0
  br i1 %i.aj, label %.lr.ph237.preheader, label %.loopexit197

.lr.ph237.preheader:                              ; preds = %.preheader201
  %wide.trip.count296 = zext nneg i32 %i.k to i64
  %i.ak = xor i32 %.sroa.0119.sroa.0.0.extract.trunc194331, -1
  %i.al = add i32 %i.l, %i.ak
  %i.am = lshr exact i64 %i.j, 1
  %i.an = sub i64 %i.b, %i.c
  %diff.check528 = icmp ugt i64 %i.an, -32
  %i.ao = sub i64 %i.a, %i.c
  %diff.check499 = icmp ugt i64 %i.ao, -32
  br label %.lr.ph237

.preheader196:                                    ; preds = %decode_counter.exit.thread326
  %i.ap = icmp sgt i32 %i.k, 0
  br i1 %i.ap, label %.lr.ph243.preheader, label %.loopexit197

.lr.ph243.preheader:                              ; preds = %.preheader196
  %wide.trip.count315 = zext nneg i32 %i.k to i64
  %i.aq = xor i32 %.sroa.020.sroa.0.0.i.ph, -1
  %i.ar = add i32 %i.l, %i.aq
  %i.as = lshr exact i64 %i.j, 1
  %i.at = sub i64 %i.a, %i.c
  %diff.check356 = icmp ugt i64 %i.at, -32
  %i.au = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.au, -32
  br label %.lr.ph243

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %.loopexit
  %indvars.iv312 = phi i64 [ 0, %.lr.ph243.preheader ], [ %indvars.iv.next313, %.loopexit ] ; 4 uses
  %indvars.iv302 = phi i32 [ %.sroa.020.sroa.0.0.i.ph, %.lr.ph243.preheader ], [ %indvars.iv.next303, %.loopexit ] ; 6 uses
  %i.av = zext i32 %indvars.iv302 to i64          ; 2 uses
  %i.aw = zext i32 %indvars.iv302 to i64          ; 5 uses
  %i.ax = mul nuw nsw i64 %i.as, %indvars.iv312
  %i.ay = trunc i64 %i.ax to i32
  %i.az = add i32 %i.ar, %i.ay                    ; 3 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 5 uses
  %i.bc = zext i32 %indvars.iv302 to i64          ; 6 uses
  %i.bd = shl nuw nsw i64 %indvars.iv312, 8       ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd ; 11 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.bd ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %i.bd ; 8 uses
  %i.bh = trunc i64 %indvars.iv312 to i32
  %i.bi = mul i32 %i.l, %i.bh
  %i.bj = sub i32 %.sroa.020.sroa.0.0.i.ph, %i.bi ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 1
  br i1 %i.bk, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %.lr.ph243
  %.not186 = icmp slt i32 %i.bj, %i.l
  br i1 %.not186, label %iter.check370, label %.loopexit.sink.split

iter.check370:                                    ; preds = %bb.d
  %min.iters.check357 = icmp ult i32 %indvars.iv302, 4
  %or.cond = or i1 %min.iters.check357, %diff.check356
  br i1 %or.cond, label %.lr.ph239.preheader, label %vector.main.loop.iter.check358

vector.main.loop.iter.check358:                   ; preds = %iter.check370
  %min.iters.check359 = icmp ult i32 %indvars.iv302, 16
  br i1 %min.iters.check359, label %vec.epilog.ph374, label %vector.ph360

vector.ph360:                                     ; preds = %vector.main.loop.iter.check358
  %i.bl = and i64 %i.aw, 12
  %n.vec361 = and i64 %i.aw, 4294967280           ; 4 uses
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph360
  %index363 = phi i64 [ 0, %vector.ph360 ], [ %index.next366, %vector.body362 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %index363 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load364 = load <8 x i16>, ptr %i.bm, align 2
  %wide.load365 = load <8 x i16>, ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %index363 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <8 x i16> %wide.load364, ptr %i.bo, align 2
  store <8 x i16> %wide.load365, ptr %i.bp, align 2
  %index.next366 = add nuw i64 %index363, 16      ; 2 uses
  %i.bq = icmp eq i64 %index.next366, %n.vec361
  br i1 %i.bq, label %middle.block367, label %vector.body362, !llvm.loop !974

middle.block367:                                  ; preds = %vector.body362
  %cmp.n368 = icmp eq i64 %n.vec361, %i.aw
  br i1 %cmp.n368, label %iter.check, label %vec.epilog.iter.check372

vec.epilog.iter.check372:                         ; preds = %middle.block367
  %min.epilog.iters.check373 = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check373, label %.lr.ph239.preheader, label %vec.epilog.ph374, !prof !299

vec.epilog.ph374:                                 ; preds = %vector.main.loop.iter.check358, %vec.epilog.iter.check372
  %vec.epilog.resume.val369 = phi i64 [ %n.vec361, %vec.epilog.iter.check372 ], [ 0, %vector.main.loop.iter.check358 ]
  %n.vec375 = and i64 %i.aw, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body376

vec.epilog.vector.body376:                        ; preds = %vec.epilog.vector.body376, %vec.epilog.ph374
  %index377 = phi i64 [ %vec.epilog.resume.val369, %vec.epilog.ph374 ], [ %index.next379, %vec.epilog.vector.body376 ] ; 3 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %index377
  %wide.load378 = load <4 x i16>, ptr %i.br, align 2
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %index377
  store <4 x i16> %wide.load378, ptr %i.bs, align 2
  %index.next379 = add nuw i64 %index377, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next379, %n.vec375
  br i1 %i.bt, label %vec.epilog.middle.block380, label %vec.epilog.vector.body376, !llvm.loop !975

vec.epilog.middle.block380:                       ; preds = %vec.epilog.vector.body376
  %cmp.n381 = icmp eq i64 %n.vec375, %i.aw
  br i1 %cmp.n381, label %iter.check, label %.lr.ph239.preheader

.lr.ph239.preheader:                              ; preds = %iter.check370, %vec.epilog.iter.check372, %vec.epilog.middle.block380
  %indvars.iv299.ph = phi i64 [ 0, %iter.check370 ], [ %n.vec361, %vec.epilog.iter.check372 ], [ %n.vec375, %vec.epilog.middle.block380 ] ; 3 uses
  %xtraiter = and i64 %i.av, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph239.prol.loopexit, label %.lr.ph239.prol

.lr.ph239.prol:                                   ; preds = %.lr.ph239.preheader, %.lr.ph239.prol
  %indvars.iv299.prol = phi i64 [ %indvars.iv.next300.prol, %.lr.ph239.prol ], [ %indvars.iv299.ph, %.lr.ph239.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph239.prol ], [ 0, %.lr.ph239.preheader ]
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %indvars.iv299.prol
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv299.prol
  store i16 %i.bv, ptr %i.bw, align 2
  %indvars.iv.next300.prol = add nuw nsw i64 %indvars.iv299.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph239.prol.loopexit, label %.lr.ph239.prol, !llvm.loop !976

.lr.ph239.prol.loopexit:                          ; preds = %.lr.ph239.prol, %.lr.ph239.preheader
  %indvars.iv299.unr = phi i64 [ %indvars.iv299.ph, %.lr.ph239.preheader ], [ %indvars.iv.next300.prol, %.lr.ph239.prol ]
  %i.bx = sub nsw i64 %indvars.iv299.ph, %i.av
  %i.by = icmp ugt i64 %i.bx, -4
  br i1 %i.by, label %iter.check, label %.lr.ph239

.lr.ph239:                                        ; preds = %.lr.ph239.prol.loopexit, %.lr.ph239
  %indvars.iv299 = phi i64 [ %indvars.iv.next300.3, %.lr.ph239 ], [ %indvars.iv299.unr, %.lr.ph239.prol.loopexit ] ; 6 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %indvars.iv299
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv299
  store i16 %i.ca, ptr %i.cb, align 2
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %indvars.iv.next300
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv.next300
  store i16 %i.cd, ptr %i.ce, align 2
  %indvars.iv.next300.1 = add nuw nsw i64 %indvars.iv299, 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %indvars.iv.next300.1
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv.next300.1
  store i16 %i.cg, ptr %i.ch, align 2
  %indvars.iv.next300.2 = add nuw nsw i64 %indvars.iv299, 3 ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %indvars.iv.next300.2
  %i.cj = load i16, ptr %i.ci, align 2
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv.next300.2
  store i16 %i.cj, ptr %i.ck, align 2
  %indvars.iv.next300.3 = add nuw nsw i64 %indvars.iv299, 4 ; 2 uses
  %exitcond305.not.3 = icmp eq i64 %indvars.iv.next300.3, %i.bc
  br i1 %exitcond305.not.3, label %iter.check, label %.lr.ph239, !llvm.loop !977

iter.check:                                       ; preds = %.lr.ph239.prol.loopexit, %.lr.ph239, %vec.epilog.middle.block380, %middle.block367
  %min.iters.check = icmp ult i32 %i.az, 3
  %or.cond555 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond555, label %.lr.ph241.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check347 = icmp ult i32 %i.az, 15
  br i1 %min.iters.check347, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cl = and i64 %i.bb, 12
  %n.vec = and i64 %i.bb, 8589934576              ; 4 uses
  %i.cm = add nuw nsw i64 %n.vec, %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = add nuw i64 %index, %i.bc               ; 2 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load = load <8 x i16>, ptr %i.co, align 2
  %wide.load348 = load <8 x i16>, ptr %i.cp, align 2
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.cn ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <8 x i16> %wide.load, ptr %i.cq, align 2
  store <8 x i16> %wide.load348, ptr %i.cr, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !978

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph241.preheader, label %vec.epilog.ph, !prof !299

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec349 = and i64 %i.bb, 8589934588           ; 3 uses
  %i.ct = add nuw nsw i64 %n.vec349, %i.bc
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index350 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next352, %vec.epilog.vector.body ] ; 2 uses
  %i.cu = add nuw i64 %index350, %i.bc            ; 2 uses
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.cu
  %wide.load351 = load <4 x i16>, ptr %i.cv, align 2
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.cu
  store <4 x i16> %wide.load351, ptr %i.cw, align 2
  %index.next352 = add nuw i64 %index350, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next352, %n.vec349
  br i1 %i.cx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !979

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n353 = icmp eq i64 %i.bb, %n.vec349
  br i1 %cmp.n353, label %.loopexit, label %.lr.ph241.preheader

.lr.ph241.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv309.ph = phi i64 [ %i.bc, %iter.check ], [ %i.cm, %vec.epilog.iter.check ], [ %i.ct, %vec.epilog.middle.block ]
  br label %.lr.ph241

.lr.ph241:                                        ; preds = %.lr.ph241.preheader, %.lr.ph241
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %.lr.ph241 ], [ %indvars.iv309.ph, %.lr.ph241.preheader ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv309
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv309
  store i16 %i.cz, ptr %i.da, align 2
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1 ; 2 uses
  %i.db = trunc nuw i64 %indvars.iv.next310 to i32
  %i.dc = icmp sgt i32 %i.l, %i.db
  br i1 %i.dc, label %.lr.ph241, label %.loopexit, !llvm.loop !980

.loopexit.sink.split:                             ; preds = %bb.d, %.lr.ph243
  %.sink = phi ptr [ %i.bf, %.lr.ph243 ], [ %i.bg, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.be, ptr noundef nonnull align 1 dereferenceable(1) %.sink, i64 noundef %i.j, i1 noundef false) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph241, %middle.block, %vec.epilog.middle.block, %.loopexit.sink.split
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %indvars.iv.next303 = sub i32 %indvars.iv302, %i.l
  %exitcond316.not = icmp eq i64 %indvars.iv.next313, %wide.trip.count315
  br i1 %exitcond316.not, label %.loopexit197, label %.lr.ph243, !llvm.loop !981

.lr.ph237:                                        ; preds = %.lr.ph237.preheader, %.loopexit199
  %indvars.iv293 = phi i64 [ 0, %.lr.ph237.preheader ], [ %indvars.iv.next294, %.loopexit199 ] ; 4 uses
  %indvars.iv283 = phi i32 [ %.sroa.0119.sroa.0.0.extract.trunc194331, %.lr.ph237.preheader ], [ %indvars.iv.next284, %.loopexit199 ] ; 6 uses
  %i.dd = zext i32 %indvars.iv283 to i64          ; 2 uses
  %i.de = zext i32 %indvars.iv283 to i64          ; 5 uses
  %i.df = mul nuw nsw i64 %i.am, %indvars.iv293
  %i.dg = trunc i64 %i.df to i32
  %i.dh = add i32 %i.al, %i.dg                    ; 3 uses
  %i.di = zext i32 %i.dh to i64
  %i.dj = add nuw nsw i64 %i.di, 1                ; 5 uses
  %i.dk = zext i32 %indvars.iv283 to i64          ; 6 uses
  %i.dl = shl nuw nsw i64 %indvars.iv293, 8       ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 %i.dl ; 11 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 %i.dl ; 8 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 %i.dl ; 4 uses
  %i.dp = trunc i64 %indvars.iv293 to i32
  %i.dq = mul i32 %i.l, %i.dp
  %i.dr = sub i32 %.sroa.0119.sroa.0.0.extract.trunc194331, %i.dq ; 2 uses
  %i.ds = icmp slt i32 %i.dr, 1
  br i1 %i.ds, label %.loopexit199.sink.split, label %bb.e

bb.e:                                             ; preds = %.lr.ph237
  %.not = icmp slt i32 %i.dr, %i.l
  br i1 %.not, label %iter.check542, label %.loopexit199.sink.split

iter.check542:                                    ; preds = %bb.e
  %min.iters.check529 = icmp ult i32 %indvars.iv283, 4
  %or.cond556 = or i1 %min.iters.check529, %diff.check528
  br i1 %or.cond556, label %.lr.ph233.preheader, label %vector.main.loop.iter.check530

vector.main.loop.iter.check530:                   ; preds = %iter.check542
  %min.iters.check531 = icmp ult i32 %indvars.iv283, 16
  br i1 %min.iters.check531, label %vec.epilog.ph546, label %vector.ph532

vector.ph532:                                     ; preds = %vector.main.loop.iter.check530
  %i.dt = and i64 %i.de, 12
  %n.vec533 = and i64 %i.de, 4294967280           ; 4 uses
  br label %vector.body534

vector.body534:                                   ; preds = %vector.body534, %vector.ph532
  %index535 = phi i64 [ 0, %vector.ph532 ], [ %index.next538, %vector.body534 ] ; 3 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %index535 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %wide.load536 = load <8 x i16>, ptr %i.du, align 2
  %wide.load537 = load <8 x i16>, ptr %i.dv, align 2
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %index535 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <8 x i16> %wide.load536, ptr %i.dw, align 2
  store <8 x i16> %wide.load537, ptr %i.dx, align 2
  %index.next538 = add nuw i64 %index535, 16      ; 2 uses
  %i.dy = icmp eq i64 %index.next538, %n.vec533
  br i1 %i.dy, label %middle.block539, label %vector.body534, !llvm.loop !982

middle.block539:                                  ; preds = %vector.body534
  %cmp.n540 = icmp eq i64 %n.vec533, %i.de
  br i1 %cmp.n540, label %iter.check514, label %vec.epilog.iter.check544

vec.epilog.iter.check544:                         ; preds = %middle.block539
  %min.epilog.iters.check545 = icmp eq i64 %i.dt, 0
  br i1 %min.epilog.iters.check545, label %.lr.ph233.preheader, label %vec.epilog.ph546, !prof !299

vec.epilog.ph546:                                 ; preds = %vector.main.loop.iter.check530, %vec.epilog.iter.check544
  %vec.epilog.resume.val541 = phi i64 [ %n.vec533, %vec.epilog.iter.check544 ], [ 0, %vector.main.loop.iter.check530 ]
  %n.vec547 = and i64 %i.de, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body548

vec.epilog.vector.body548:                        ; preds = %vec.epilog.vector.body548, %vec.epilog.ph546
  %index549 = phi i64 [ %vec.epilog.resume.val541, %vec.epilog.ph546 ], [ %index.next551, %vec.epilog.vector.body548 ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %index549
  %wide.load550 = load <4 x i16>, ptr %i.dz, align 2
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %index549
  store <4 x i16> %wide.load550, ptr %i.ea, align 2
  %index.next551 = add nuw i64 %index549, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next551, %n.vec547
  br i1 %i.eb, label %vec.epilog.middle.block552, label %vec.epilog.vector.body548, !llvm.loop !983

vec.epilog.middle.block552:                       ; preds = %vec.epilog.vector.body548
  %cmp.n553 = icmp eq i64 %n.vec547, %i.de
  br i1 %cmp.n553, label %iter.check514, label %.lr.ph233.preheader

.lr.ph233.preheader:                              ; preds = %iter.check542, %vec.epilog.iter.check544, %vec.epilog.middle.block552
  %indvars.iv280.ph = phi i64 [ 0, %iter.check542 ], [ %n.vec533, %vec.epilog.iter.check544 ], [ %n.vec547, %vec.epilog.middle.block552 ] ; 3 uses
  %xtraiter575 = and i64 %i.dd, 3                 ; 2 uses
  %lcmp.mod576.not = icmp eq i64 %xtraiter575, 0
  br i1 %lcmp.mod576.not, label %.lr.ph233.prol.loopexit, label %.lr.ph233.prol

.lr.ph233.prol:                                   ; preds = %.lr.ph233.preheader, %.lr.ph233.prol
  %indvars.iv280.prol = phi i64 [ %indvars.iv.next281.prol, %.lr.ph233.prol ], [ %indvars.iv280.ph, %.lr.ph233.preheader ] ; 3 uses
  %prol.iter577 = phi i64 [ %prol.iter577.next, %.lr.ph233.prol ], [ 0, %.lr.ph233.preheader ]
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %indvars.iv280.prol
  %i.ed = load i16, ptr %i.ec, align 2
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %indvars.iv280.prol
  store i16 %i.ed, ptr %i.ee, align 2
  %indvars.iv.next281.prol = add nuw nsw i64 %indvars.iv280.prol, 1 ; 2 uses
  %prol.iter577.next = add i64 %prol.iter577, 1   ; 2 uses
  %prol.iter577.cmp.not = icmp eq i64 %prol.iter577.next, %xtraiter575
  br i1 %prol.iter577.cmp.not, label %.lr.ph233.prol.loopexit, label %.lr.ph233.prol, !llvm.loop !984

.lr.ph233.prol.loopexit:                          ; preds = %.lr.ph233.prol, %.lr.ph233.preheader
  %indvars.iv280.unr = phi i64 [ %indvars.iv280.ph, %.lr.ph233.preheader ], [ %indvars.iv.next281.prol, %.lr.ph233.prol ]
  %i.ef = sub nsw i64 %indvars.iv280.ph, %i.dd
  %i.eg = icmp ugt i64 %i.ef, -4
  br i1 %i.eg, label %iter.check514, label %.lr.ph233

.lr.ph233:                                        ; preds = %.lr.ph233.prol.loopexit, %.lr.ph233
  %indvars.iv280 = phi i64 [ %indvars.iv.next281.3, %.lr.ph233 ], [ %indvars.iv280.unr, %.lr.ph233.prol.loopexit ] ; 6 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %indvars.iv280
  %i.ei = load i16, ptr %i.eh, align 2
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %indvars.iv280
  store i16 %i.ei, ptr %i.ej, align 2
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %indvars.iv.next281
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %indvars.iv.next281
  store i16 %i.el, ptr %i.em, align 2
  %indvars.iv.next281.1 = add nuw nsw i64 %indvars.iv280, 2 ; 2 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %indvars.iv.next281.1
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %indvars.iv.next281.1
  store i16 %i.eo, ptr %i.ep, align 2
  %indvars.iv.next281.2 = add nuw nsw i64 %indvars.iv280, 3 ; 2 uses
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %indvars.iv.next281.2
  %i.er = load i16, ptr %i.eq, align 2
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %indvars.iv.next281.2
  store i16 %i.er, ptr %i.es, align 2
  %indvars.iv.next281.3 = add nuw nsw i64 %indvars.iv280, 4 ; 2 uses
  %exitcond286.not.3 = icmp eq i64 %indvars.iv.next281.3, %i.dk
  br i1 %exitcond286.not.3, label %iter.check514, label %.lr.ph233, !llvm.loop !985

iter.check514:                                    ; preds = %.lr.ph233.prol.loopexit, %.lr.ph233, %vec.epilog.middle.block552, %middle.block539
  %min.iters.check500 = icmp ult i32 %i.dh, 3
  %or.cond557 = or i1 %min.iters.check500, %diff.check499
  br i1 %or.cond557, label %.lr.ph235.preheader, label %vector.main.loop.iter.check501

vector.main.loop.iter.check501:                   ; preds = %iter.check514
  %min.iters.check502 = icmp ult i32 %i.dh, 15
  br i1 %min.iters.check502, label %vec.epilog.ph518, label %vector.ph503

vector.ph503:                                     ; preds = %vector.main.loop.iter.check501
  %i.et = and i64 %i.dj, 12
  %n.vec504 = and i64 %i.dj, 8589934576           ; 4 uses
  %i.eu = add nuw nsw i64 %n.vec504, %i.dk
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph503
  %index506 = phi i64 [ 0, %vector.ph503 ], [ %index.next509, %vector.body505 ] ; 2 uses
  %i.ev = add nuw i64 %index506, %i.dk            ; 2 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load507 = load <8 x i16>, ptr %i.ew, align 2
  %wide.load508 = load <8 x i16>, ptr %i.ex, align 2
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.ev ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <8 x i16> %wide.load507, ptr %i.ey, align 2
  store <8 x i16> %wide.load508, ptr %i.ez, align 2
  %index.next509 = add nuw i64 %index506, 16      ; 2 uses
  %i.fa = icmp eq i64 %index.next509, %n.vec504
  br i1 %i.fa, label %middle.block510, label %vector.body505, !llvm.loop !986

middle.block510:                                  ; preds = %vector.body505
  %cmp.n511 = icmp eq i64 %i.dj, %n.vec504
  br i1 %cmp.n511, label %.loopexit199, label %vec.epilog.iter.check516

vec.epilog.iter.check516:                         ; preds = %middle.block510
  %min.epilog.iters.check517 = icmp eq i64 %i.et, 0
  br i1 %min.epilog.iters.check517, label %.lr.ph235.preheader, label %vec.epilog.ph518, !prof !299

vec.epilog.ph518:                                 ; preds = %vector.main.loop.iter.check501, %vec.epilog.iter.check516
  %vec.epilog.resume.val512 = phi i64 [ %n.vec504, %vec.epilog.iter.check516 ], [ 0, %vector.main.loop.iter.check501 ]
  %n.vec519 = and i64 %i.dj, 8589934588           ; 3 uses
  %i.fb = add nuw nsw i64 %n.vec519, %i.dk
  br label %vec.epilog.vector.body520

vec.epilog.vector.body520:                        ; preds = %vec.epilog.vector.body520, %vec.epilog.ph518
  %index521 = phi i64 [ %vec.epilog.resume.val512, %vec.epilog.ph518 ], [ %index.next523, %vec.epilog.vector.body520 ] ; 2 uses
  %i.fc = add nuw i64 %index521, %i.dk            ; 2 uses
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.fc
  %wide.load522 = load <4 x i16>, ptr %i.fd, align 2
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.fc
  store <4 x i16> %wide.load522, ptr %i.fe, align 2
  %index.next523 = add nuw i64 %index521, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next523, %n.vec519
  br i1 %i.ff, label %vec.epilog.middle.block524, label %vec.epilog.vector.body520, !llvm.loop !987

vec.epilog.middle.block524:                       ; preds = %vec.epilog.vector.body520
  %cmp.n525 = icmp eq i64 %i.dj, %n.vec519
  br i1 %cmp.n525, label %.loopexit199, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %iter.check514, %vec.epilog.iter.check516, %vec.epilog.middle.block524
  %indvars.iv290.ph = phi i64 [ %i.dk, %iter.check514 ], [ %i.eu, %vec.epilog.iter.check516 ], [ %i.fb, %vec.epilog.middle.block524 ]
  br label %.lr.ph235

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %.lr.ph235
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %.lr.ph235 ], [ %indvars.iv290.ph, %.lr.ph235.preheader ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv290
  %i.fh = load i16, ptr %i.fg, align 2
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %indvars.iv290
  store i16 %i.fh, ptr %i.fi, align 2
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %i.fj = trunc nuw i64 %indvars.iv.next291 to i32
  %i.fk = icmp sgt i32 %i.l, %i.fj
  br i1 %i.fk, label %.lr.ph235, label %.loopexit199, !llvm.loop !988

.loopexit199.sink.split:                          ; preds = %bb.e, %.lr.ph237
  %.sink341 = phi ptr [ %i.do, %.lr.ph237 ], [ %i.dn, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dm, ptr noundef nonnull align 1 dereferenceable(1) %.sink341, i64 noundef %i.j, i1 noundef false) #15
end_hunk_0
begin_hunk_1_@helper_sme2_sel_h:bb.a
vec.epilog.ph402:                                 ; preds = %vector.main.loop.iter.check385, %vec.epilog.iter.check400
  %vec.epilog.resume.val396 = phi i64 [ %n.vec388, %vec.epilog.iter.check400 ], [ 0, %vector.main.loop.iter.check385 ]
  br label %vec.epilog.vector.body404

vec.epilog.vector.body404:                        ; preds = %vec.epilog.vector.body404, %vec.epilog.ph402
  %index405 = phi i64 [ %vec.epilog.resume.val396, %vec.epilog.ph402 ], [ %index.next407, %vec.epilog.vector.body404 ] ; 2 uses
  %i.lu = trunc i64 %index405 to i32
  %i.lv = or disjoint i32 %i.lu, 1
  %i.lw = add i32 %.1172226.us.us, %i.lv
  %i.lx = sext i32 %i.lw to i64                   ; 2 uses
  %i.ly = getelementptr inbounds [2 x i8], ptr %i.kg, i64 %i.lx
  %wide.load406 = load <4 x i16>, ptr %i.ly, align 2
  %i.lz = getelementptr inbounds [2 x i8], ptr %i.ke, i64 %i.lx
  store <4 x i16> %wide.load406, ptr %i.lz, align 2
  %index.next407 = add nuw i64 %index405, 4       ; 2 uses
  %i.ma = icmp eq i64 %index.next407, %n.vec403
  br i1 %i.ma, label %vec.epilog.middle.block408, label %vec.epilog.vector.body404, !llvm.loop !1005

vec.epilog.middle.block408:                       ; preds = %vec.epilog.vector.body404
  br i1 %cmp.n409, label %._crit_edge225.us.us, label %vec.epilog.scalar.ph399.preheader

vec.epilog.scalar.ph399.preheader:                ; preds = %vector.scevcheck, %iter.check398, %vec.epilog.iter.check400, %vec.epilog.middle.block408
  %indvars.iv268.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %iter.check398 ], [ %i.jx, %vec.epilog.iter.check400 ], [ %i.jy, %vec.epilog.middle.block408 ] ; 4 uses
  %i.mb = sub nsw i64 %wide.trip.count272, %indvars.iv268.ph
  %xtraiter566 = and i64 %i.mb, 3                 ; 2 uses
  %lcmp.mod567.not = icmp eq i64 %xtraiter566, 0
  br i1 %lcmp.mod567.not, label %vec.epilog.scalar.ph399.prol.loopexit, label %vec.epilog.scalar.ph399.prol

vec.epilog.scalar.ph399.prol:                     ; preds = %vec.epilog.scalar.ph399.preheader, %vec.epilog.scalar.ph399.prol
  %indvars.iv268.prol = phi i64 [ %indvars.iv.next269.prol, %vec.epilog.scalar.ph399.prol ], [ %indvars.iv268.ph, %vec.epilog.scalar.ph399.preheader ] ; 2 uses
  %prol.iter568 = phi i64 [ %prol.iter568.next, %vec.epilog.scalar.ph399.prol ], [ 0, %vec.epilog.scalar.ph399.preheader ]
  %i.mc = trunc nuw nsw i64 %indvars.iv268.prol to i32
  %i.md = add i32 %.1172226.us.us, %i.mc
  %i.me = sext i32 %i.md to i64                   ; 2 uses
  %i.mf = getelementptr inbounds [2 x i8], ptr %i.kg, i64 %i.me
  %i.mg = load i16, ptr %i.mf, align 2
  %i.mh = getelementptr inbounds [2 x i8], ptr %i.ke, i64 %i.me
  store i16 %i.mg, ptr %i.mh, align 2
  %indvars.iv.next269.prol = add nuw nsw i64 %indvars.iv268.prol, 1 ; 2 uses
  %prol.iter568.next = add i64 %prol.iter568, 1   ; 2 uses
  %prol.iter568.cmp.not = icmp eq i64 %prol.iter568.next, %xtraiter566
  br i1 %prol.iter568.cmp.not, label %vec.epilog.scalar.ph399.prol.loopexit, label %vec.epilog.scalar.ph399.prol, !llvm.loop !1006

vec.epilog.scalar.ph399.prol.loopexit:            ; preds = %vec.epilog.scalar.ph399.prol, %vec.epilog.scalar.ph399.preheader
  %indvars.iv268.unr = phi i64 [ %indvars.iv268.ph, %vec.epilog.scalar.ph399.preheader ], [ %indvars.iv.next269.prol, %vec.epilog.scalar.ph399.prol ]
  %i.mi = sub nsw i64 %indvars.iv268.ph, %wide.trip.count272
  %i.mj = icmp ugt i64 %i.mi, -4
  br i1 %i.mj, label %._crit_edge225.us.us, label %vec.epilog.scalar.ph399.preheader.new

vec.epilog.scalar.ph399.preheader.new:            ; preds = %vec.epilog.scalar.ph399.prol.loopexit
  %invariant.op = add i32 1, %.1172226.us.us
  %invariant.op579 = add i32 2, %.1172226.us.us
  %invariant.op581 = add i32 3, %.1172226.us.us
  br label %vec.epilog.scalar.ph399

vec.epilog.scalar.ph399:                          ; preds = %vec.epilog.scalar.ph399, %vec.epilog.scalar.ph399.preheader.new
  %indvars.iv268 = phi i64 [ %indvars.iv268.unr, %vec.epilog.scalar.ph399.preheader.new ], [ %indvars.iv.next269.3, %vec.epilog.scalar.ph399 ] ; 5 uses
  %i.mk = trunc nuw nsw i64 %indvars.iv268 to i32
  %i.ml = add i32 %.1172226.us.us, %i.mk
  %i.mm = sext i32 %i.ml to i64                   ; 2 uses
  %i.mn = getelementptr inbounds [2 x i8], ptr %i.kg, i64 %i.mm
  %i.mo = load i16, ptr %i.mn, align 2
  %i.mp = getelementptr inbounds [2 x i8], ptr %i.ke, i64 %i.mm
  store i16 %i.mo, ptr %i.mp, align 2
  %i.mq = trunc i64 %indvars.iv268 to i32
  %.reass = add i32 %i.mq, %invariant.op
  %i.mr = sext i32 %.reass to i64                 ; 2 uses
  %i.ms = getelementptr inbounds [2 x i8], ptr %i.kg, i64 %i.mr
  %i.mt = load i16, ptr %i.ms, align 2
  %i.mu = getelementptr inbounds [2 x i8], ptr %i.ke, i64 %i.mr
  store i16 %i.mt, ptr %i.mu, align 2
  %i.mv = trunc i64 %indvars.iv268 to i32
  %.reass580 = add i32 %i.mv, %invariant.op579
  %i.mw = sext i32 %.reass580 to i64              ; 2 uses
  %i.mx = getelementptr inbounds [2 x i8], ptr %i.kg, i64 %i.mw
  %i.my = load i16, ptr %i.mx, align 2
  %i.mz = getelementptr inbounds [2 x i8], ptr %i.ke, i64 %i.mw
  store i16 %i.my, ptr %i.mz, align 2
  %i.na = trunc i64 %indvars.iv268 to i32
  %.reass582 = add i32 %i.na, %invariant.op581
  %i.nb = sext i32 %.reass582 to i64              ; 2 uses
  %i.nc = getelementptr inbounds [2 x i8], ptr %i.kg, i64 %i.nb
  %i.nd = load i16, ptr %i.nc, align 2
  %i.ne = getelementptr inbounds [2 x i8], ptr %i.ke, i64 %i.nb
  store i16 %i.nd, ptr %i.ne, align 2
  %indvars.iv.next269.3 = add nuw nsw i64 %indvars.iv268, 4 ; 2 uses
  %exitcond273.not.3 = icmp eq i64 %indvars.iv.next269.3, %wide.trip.count272
  br i1 %exitcond273.not.3, label %._crit_edge225.us.us, label %vec.epilog.scalar.ph399, !llvm.loop !1007

._crit_edge225.us.us:                             ; preds = %vec.epilog.scalar.ph399.prol.loopexit, %vec.epilog.scalar.ph399, %vec.epilog.middle.block408, %middle.block394
  %i.nf = add nsw i32 %.1172226.us.us, %i.ah      ; 2 uses
  %i.ng = icmp slt i32 %i.nf, %i.l
  %indvar.next = add i32 %indvar, 1
  br i1 %i.ng, label %iter.check398, label %._crit_edge228.split.us.us, !llvm.loop !1008

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
  %.not303 = icmp eq i32 %i.z, 0                  ; 3 uses
  %.not29.i = icmp eq i32 %i.n, 2
  br i1 %.not29.i, label %decode_counter.exit.thread286, label %bb.c, !prof !62

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
  br label %decode_counter.exit.thread286

decode_counter.exit.thread286:                    ; preds = %bb.d, %bb.b
  %.sroa.020.sroa.0.0.i.ph = phi i32 [ %i.y, %bb.b ], [ %i.ag, %bb.d ] ; 2 uses
  br i1 %.not303, label %.preheader181, label %.preheader176

decode_counter.exit:                              ; preds = %bb.c
  %i.ah = add nsw i32 %i.n, -2                    ; 2 uses
  %i.ai = shl i32 %i.y, %i.ah                     ; 5 uses
  %i.aj = icmp eq i32 %i.ah, 0
  br i1 %i.aj, label %decode_counter.exit.thread, label %bb.g

decode_counter.exit.thread:                       ; preds = %decode_counter.exit
  br i1 %.not303, label %.preheader181, label %.preheader176

.preheader181:                                    ; preds = %bb.a, %decode_counter.exit.thread286, %decode_counter.exit.thread
  %.sroa.0107.sroa.0.0.extract.trunc174291 = phi i32 [ %.sroa.020.sroa.0.0.i.ph, %decode_counter.exit.thread286 ], [ %i.ai, %decode_counter.exit.thread ], [ 0, %bb.a ] ; 3 uses
  %i.ak = icmp sgt i32 %i.k, 0
  br i1 %i.ak, label %.lr.ph208.preheader, label %.loopexit177

.lr.ph208.preheader:                              ; preds = %.preheader181
  %wide.trip.count260 = zext nneg i32 %i.k to i64
  %i.al = xor i32 %.sroa.0107.sroa.0.0.extract.trunc174291, -1
  %i.am = add i32 %i.l, %i.al
  %i.an = lshr exact i64 %i.j, 2
  %i.ao = sub i64 %i.a, %i.c
  %diff.check428 = icmp ugt i64 %i.ao, -32
  %i.ap = sub i64 %i.b, %i.c
  %diff.check414 = icmp ugt i64 %i.ap, -32
  br label %.lr.ph208

.preheader176:                                    ; preds = %decode_counter.exit.thread286, %decode_counter.exit.thread
  %.sroa.0107.sroa.0.0.extract.trunc174292 = phi i32 [ %.sroa.020.sroa.0.0.i.ph, %decode_counter.exit.thread286 ], [ %i.ai, %decode_counter.exit.thread ] ; 3 uses
  %i.aq = icmp sgt i32 %i.k, 0
  br i1 %i.aq, label %.lr.ph214.preheader, label %.loopexit177

.lr.ph214.preheader:                              ; preds = %.preheader176
  %wide.trip.count279 = zext nneg i32 %i.k to i64
  %i.ar = xor i32 %.sroa.0107.sroa.0.0.extract.trunc174292, -1
  %i.as = add i32 %i.l, %i.ar
  %i.at = lshr exact i64 %i.j, 2
  %i.au = sub i64 %i.b, %i.c
  %diff.check400 = icmp ugt i64 %i.au, -32
  %i.av = sub i64 %i.a, %i.c
  %diff.check386 = icmp ugt i64 %i.av, -32
  br label %.lr.ph214

.lr.ph214:                                        ; preds = %.lr.ph214.preheader, %.loopexit
  %indvars.iv276 = phi i64 [ 0, %.lr.ph214.preheader ], [ %indvars.iv.next277, %.loopexit ] ; 4 uses
  %indvars.iv266 = phi i32 [ %.sroa.0107.sroa.0.0.extract.trunc174292, %.lr.ph214.preheader ], [ %indvars.iv.next267, %.loopexit ] ; 4 uses
  %i.aw = zext i32 %indvars.iv266 to i64          ; 2 uses
  %i.ax = mul nuw nsw i64 %i.at, %indvars.iv276
  %i.ay = trunc i64 %i.ax to i32
  %i.az = add i32 %i.as, %i.ay                    ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = zext i32 %indvars.iv266 to i64          ; 6 uses
  %i.bd = shl nuw nsw i64 %indvars.iv276, 8       ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd ; 9 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.bd ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %i.bd ; 7 uses
  %i.bh = trunc i64 %indvars.iv276 to i32
  %i.bi = mul i32 %i.l, %i.bh
  %i.bj = sub i32 %.sroa.0107.sroa.0.0.extract.trunc174292, %i.bi ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 1
  br i1 %i.bk, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %.lr.ph214
  %.not167 = icmp slt i32 %i.bj, %i.l
  br i1 %.not167, label %.lr.ph210.preheader, label %.loopexit.sink.split

.lr.ph210.preheader:                              ; preds = %bb.e
  %min.iters.check402 = icmp ult i32 %indvars.iv266, 8
  %or.cond = or i1 %min.iters.check402, %diff.check400
  br i1 %or.cond, label %.lr.ph210.preheader450, label %vector.ph403

vector.ph403:                                     ; preds = %.lr.ph210.preheader
  %n.vec404 = and i64 %i.bc, 4294967288           ; 3 uses
  br label %vector.body405

vector.body405:                                   ; preds = %vector.body405, %vector.ph403
  %index406 = phi i64 [ 0, %vector.ph403 ], [ %index.next409, %vector.body405 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index406 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load407 = load <4 x i32>, ptr %i.bl, align 4
  %wide.load408 = load <4 x i32>, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index406 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <4 x i32> %wide.load407, ptr %i.bn, align 4
  store <4 x i32> %wide.load408, ptr %i.bo, align 4
  %index.next409 = add nuw i64 %index406, 8       ; 2 uses
  %i.bp = icmp eq i64 %index.next409, %n.vec404
  br i1 %i.bp, label %middle.block410, label %vector.body405, !llvm.loop !1009

middle.block410:                                  ; preds = %vector.body405
  %cmp.n411 = icmp eq i64 %n.vec404, %i.bc
  br i1 %cmp.n411, label %.lr.ph212.preheader, label %.lr.ph210.preheader450

.lr.ph210.preheader450:                           ; preds = %.lr.ph210.preheader, %middle.block410
  %indvars.iv263.ph = phi i64 [ 0, %.lr.ph210.preheader ], [ %n.vec404, %middle.block410 ] ; 3 uses
  %xtraiter459 = and i64 %i.aw, 3                 ; 2 uses
  %lcmp.mod460.not = icmp eq i64 %xtraiter459, 0
  br i1 %lcmp.mod460.not, label %.lr.ph210.prol.loopexit, label %.lr.ph210.prol

.lr.ph210.prol:                                   ; preds = %.lr.ph210.preheader450, %.lr.ph210.prol
  %indvars.iv263.prol = phi i64 [ %indvars.iv.next264.prol, %.lr.ph210.prol ], [ %indvars.iv263.ph, %.lr.ph210.preheader450 ] ; 3 uses
  %prol.iter461 = phi i64 [ %prol.iter461.next, %.lr.ph210.prol ], [ 0, %.lr.ph210.preheader450 ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv263.prol
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv263.prol
  store i32 %i.br, ptr %i.bs, align 4
  %indvars.iv.next264.prol = add nuw nsw i64 %indvars.iv263.prol, 1 ; 2 uses
  %prol.iter461.next = add i64 %prol.iter461, 1   ; 2 uses
  %prol.iter461.cmp.not = icmp eq i64 %prol.iter461.next, %xtraiter459
  br i1 %prol.iter461.cmp.not, label %.lr.ph210.prol.loopexit, label %.lr.ph210.prol, !llvm.loop !1010

.lr.ph210.prol.loopexit:                          ; preds = %.lr.ph210.prol, %.lr.ph210.preheader450
  %indvars.iv263.unr = phi i64 [ %indvars.iv263.ph, %.lr.ph210.preheader450 ], [ %indvars.iv.next264.prol, %.lr.ph210.prol ]
  %i.bt = sub nsw i64 %indvars.iv263.ph, %i.aw
  %i.bu = icmp ugt i64 %i.bt, -4
  br i1 %i.bu, label %.lr.ph212.preheader, label %.lr.ph210

.lr.ph210:                                        ; preds = %.lr.ph210.prol.loopexit, %.lr.ph210
  %indvars.iv263 = phi i64 [ %indvars.iv.next264.3, %.lr.ph210 ], [ %indvars.iv263.unr, %.lr.ph210.prol.loopexit ] ; 6 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv263
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv263
  store i32 %i.bw, ptr %i.bx, align 4
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next264
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next264
  store i32 %i.bz, ptr %i.ca, align 4
  %indvars.iv.next264.1 = add nuw nsw i64 %indvars.iv263, 2 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next264.1
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next264.1
  store i32 %i.cc, ptr %i.cd, align 4
  %indvars.iv.next264.2 = add nuw nsw i64 %indvars.iv263, 3 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next264.2
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next264.2
  store i32 %i.cf, ptr %i.cg, align 4
  %indvars.iv.next264.3 = add nuw nsw i64 %indvars.iv263, 4 ; 2 uses
  %exitcond269.not.3 = icmp eq i64 %indvars.iv.next264.3, %i.bc
  br i1 %exitcond269.not.3, label %.lr.ph212.preheader, label %.lr.ph210, !llvm.loop !1011

.lr.ph212.preheader:                              ; preds = %.lr.ph210.prol.loopexit, %.lr.ph210, %middle.block410
  %min.iters.check388 = icmp ult i32 %i.az, 7
  %or.cond442 = or i1 %min.iters.check388, %diff.check386
  br i1 %or.cond442, label %.lr.ph212.preheader449, label %vector.ph389

vector.ph389:                                     ; preds = %.lr.ph212.preheader
  %n.vec390 = and i64 %i.bb, 8589934584           ; 3 uses
  %i.ch = add nuw nsw i64 %n.vec390, %i.bc
  br label %vector.body391

vector.body391:                                   ; preds = %vector.body391, %vector.ph389
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next395, %vector.body391 ] ; 2 uses
  %i.ci = add nuw i64 %index392, %i.bc            ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load393 = load <4 x i32>, ptr %i.cj, align 4
  %wide.load394 = load <4 x i32>, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ci ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <4 x i32> %wide.load393, ptr %i.cl, align 4
  store <4 x i32> %wide.load394, ptr %i.cm, align 4
  %index.next395 = add nuw i64 %index392, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next395, %n.vec390
  br i1 %i.cn, label %middle.block396, label %vector.body391, !llvm.loop !1012

middle.block396:                                  ; preds = %vector.body391
  %cmp.n397 = icmp eq i64 %i.bb, %n.vec390
  br i1 %cmp.n397, label %.loopexit, label %.lr.ph212.preheader449

.lr.ph212.preheader449:                           ; preds = %.lr.ph212.preheader, %middle.block396
  %indvars.iv273.ph = phi i64 [ %i.bc, %.lr.ph212.preheader ], [ %i.ch, %middle.block396 ]
  br label %.lr.ph212

.lr.ph212:                                        ; preds = %.lr.ph212.preheader449, %.lr.ph212
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %.lr.ph212 ], [ %indvars.iv273.ph, %.lr.ph212.preheader449 ] ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv273
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv273
  store i32 %i.cp, ptr %i.cq, align 4
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %i.cr = trunc nuw i64 %indvars.iv.next274 to i32
  %i.cs = icmp sgt i32 %i.l, %i.cr
  br i1 %i.cs, label %.lr.ph212, label %.loopexit, !llvm.loop !1013

.loopexit.sink.split:                             ; preds = %bb.e, %.lr.ph214
  %.sink = phi ptr [ %i.bf, %.lr.ph214 ], [ %i.bg, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.be, ptr noundef nonnull align 1 dereferenceable(1) %.sink, i64 noundef %i.j, i1 noundef false) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph212, %middle.block396, %.loopexit.sink.split
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %indvars.iv.next267 = sub i32 %indvars.iv266, %i.l
  %exitcond280.not = icmp eq i64 %indvars.iv.next277, %wide.trip.count279
  br i1 %exitcond280.not, label %.loopexit177, label %.lr.ph214, !llvm.loop !1014

.lr.ph208:                                        ; preds = %.lr.ph208.preheader, %.loopexit179
  %indvars.iv257 = phi i64 [ 0, %.lr.ph208.preheader ], [ %indvars.iv.next258, %.loopexit179 ] ; 4 uses
  %indvars.iv247 = phi i32 [ %.sroa.0107.sroa.0.0.extract.trunc174291, %.lr.ph208.preheader ], [ %indvars.iv.next248, %.loopexit179 ] ; 4 uses
  %i.ct = zext i32 %indvars.iv247 to i64          ; 2 uses
  %i.cu = mul nuw nsw i64 %i.an, %indvars.iv257
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = add i32 %i.am, %i.cv                    ; 2 uses
  %i.cx = zext i32 %i.cw to i64
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %i.cz = zext i32 %indvars.iv247 to i64          ; 6 uses
  %i.da = shl nuw nsw i64 %indvars.iv257, 8       ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %i.da ; 9 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %i.da ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %i.da ; 3 uses
  %i.de = trunc i64 %indvars.iv257 to i32
  %i.df = mul i32 %i.l, %i.de
  %i.dg = sub i32 %.sroa.0107.sroa.0.0.extract.trunc174291, %i.df ; 2 uses
  %i.dh = icmp slt i32 %i.dg, 1
  br i1 %i.dh, label %.loopexit179.sink.split, label %bb.f

bb.f:                                             ; preds = %.lr.ph208
  %.not = icmp slt i32 %i.dg, %i.l
  br i1 %.not, label %.lr.ph204.preheader, label %.loopexit179.sink.split

.lr.ph204.preheader:                              ; preds = %bb.f
  %min.iters.check430 = icmp ult i32 %indvars.iv247, 8
  %or.cond443 = or i1 %min.iters.check430, %diff.check428
  br i1 %or.cond443, label %.lr.ph204.preheader448, label %vector.ph431

vector.ph431:                                     ; preds = %.lr.ph204.preheader
  %n.vec432 = and i64 %i.cz, 4294967288           ; 3 uses
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %vector.ph431
  %index434 = phi i64 [ 0, %vector.ph431 ], [ %index.next437, %vector.body433 ] ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %index434 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load435 = load <4 x i32>, ptr %i.di, align 4
  %wide.load436 = load <4 x i32>, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %index434 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store <4 x i32> %wide.load435, ptr %i.dk, align 4
  store <4 x i32> %wide.load436, ptr %i.dl, align 4
  %index.next437 = add nuw i64 %index434, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next437, %n.vec432
  br i1 %i.dm, label %middle.block438, label %vector.body433, !llvm.loop !1015

middle.block438:                                  ; preds = %vector.body433
  %cmp.n439 = icmp eq i64 %n.vec432, %i.cz
  br i1 %cmp.n439, label %.lr.ph206.preheader, label %.lr.ph204.preheader448

.lr.ph204.preheader448:                           ; preds = %.lr.ph204.preheader, %middle.block438
  %indvars.iv244.ph = phi i64 [ 0, %.lr.ph204.preheader ], [ %n.vec432, %middle.block438 ] ; 3 uses
  %xtraiter462 = and i64 %i.ct, 3                 ; 2 uses
  %lcmp.mod463.not = icmp eq i64 %xtraiter462, 0
  br i1 %lcmp.mod463.not, label %.lr.ph204.prol.loopexit, label %.lr.ph204.prol

.lr.ph204.prol:                                   ; preds = %.lr.ph204.preheader448, %.lr.ph204.prol
  %indvars.iv244.prol = phi i64 [ %indvars.iv.next245.prol, %.lr.ph204.prol ], [ %indvars.iv244.ph, %.lr.ph204.preheader448 ] ; 3 uses
  %prol.iter464 = phi i64 [ %prol.iter464.next, %.lr.ph204.prol ], [ 0, %.lr.ph204.preheader448 ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv244.prol
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv244.prol
  store i32 %i.do, ptr %i.dp, align 4
  %indvars.iv.next245.prol = add nuw nsw i64 %indvars.iv244.prol, 1 ; 2 uses
  %prol.iter464.next = add i64 %prol.iter464, 1   ; 2 uses
  %prol.iter464.cmp.not = icmp eq i64 %prol.iter464.next, %xtraiter462
  br i1 %prol.iter464.cmp.not, label %.lr.ph204.prol.loopexit, label %.lr.ph204.prol, !llvm.loop !1016

.lr.ph204.prol.loopexit:                          ; preds = %.lr.ph204.prol, %.lr.ph204.preheader448
  %indvars.iv244.unr = phi i64 [ %indvars.iv244.ph, %.lr.ph204.preheader448 ], [ %indvars.iv.next245.prol, %.lr.ph204.prol ]
  %i.dq = sub nsw i64 %indvars.iv244.ph, %i.ct
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %.lr.ph206.preheader, label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.prol.loopexit, %.lr.ph204
  %indvars.iv244 = phi i64 [ %indvars.iv.next245.3, %.lr.ph204 ], [ %indvars.iv244.unr, %.lr.ph204.prol.loopexit ] ; 6 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv244
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv244
  store i32 %i.dt, ptr %i.du, align 4
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next245
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next245
  store i32 %i.dw, ptr %i.dx, align 4
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next245.1
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next245.1
  store i32 %i.dz, ptr %i.ea, align 4
  %indvars.iv.next245.2 = add nuw nsw i64 %indvars.iv244, 3 ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next245.2
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next245.2
  store i32 %i.ec, ptr %i.ed, align 4
  %indvars.iv.next245.3 = add nuw nsw i64 %indvars.iv244, 4 ; 2 uses
  %exitcond250.not.3 = icmp eq i64 %indvars.iv.next245.3, %i.cz
  br i1 %exitcond250.not.3, label %.lr.ph206.preheader, label %.lr.ph204, !llvm.loop !1017

.lr.ph206.preheader:                              ; preds = %.lr.ph204.prol.loopexit, %.lr.ph204, %middle.block438
  %min.iters.check416 = icmp ult i32 %i.cw, 7
  %or.cond444 = or i1 %min.iters.check416, %diff.check414
  br i1 %or.cond444, label %.lr.ph206.preheader447, label %vector.ph417

vector.ph417:                                     ; preds = %.lr.ph206.preheader
  %n.vec418 = and i64 %i.cy, 8589934584           ; 3 uses
  %i.ee = add nuw nsw i64 %n.vec418, %i.cz
  br label %vector.body419

vector.body419:                                   ; preds = %vector.body419, %vector.ph417
  %index420 = phi i64 [ 0, %vector.ph417 ], [ %index.next423, %vector.body419 ] ; 2 uses
  %i.ef = add nuw i64 %index420, %i.cz            ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %wide.load421 = load <4 x i32>, ptr %i.eg, align 4
  %wide.load422 = load <4 x i32>, ptr %i.eh, align 4
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.ef ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store <4 x i32> %wide.load421, ptr %i.ei, align 4
  store <4 x i32> %wide.load422, ptr %i.ej, align 4
  %index.next423 = add nuw i64 %index420, 8       ; 2 uses
  %i.ek = icmp eq i64 %index.next423, %n.vec418
  br i1 %i.ek, label %middle.block424, label %vector.body419, !llvm.loop !1018

middle.block424:                                  ; preds = %vector.body419
  %cmp.n425 = icmp eq i64 %i.cy, %n.vec418
  br i1 %cmp.n425, label %.loopexit179, label %.lr.ph206.preheader447

.lr.ph206.preheader447:                           ; preds = %.lr.ph206.preheader, %middle.block424
  %indvars.iv254.ph = phi i64 [ %i.cz, %.lr.ph206.preheader ], [ %i.ee, %middle.block424 ]
  br label %.lr.ph206

.lr.ph206:                                        ; preds = %.lr.ph206.preheader447, %.lr.ph206
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %.lr.ph206 ], [ %indvars.iv254.ph, %.lr.ph206.preheader447 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv254
  %i.em = load i32, ptr %i.el, align 4
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv254
  store i32 %i.em, ptr %i.en, align 4
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %i.eo = trunc nuw i64 %indvars.iv.next255 to i32
  %i.ep = icmp sgt i32 %i.l, %i.eo
  br i1 %i.ep, label %.lr.ph206, label %.loopexit179, !llvm.loop !1019

.loopexit179.sink.split:                          ; preds = %bb.f, %.lr.ph208
  %.sink301 = phi ptr [ %i.dd, %.lr.ph208 ], [ %i.dc, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.db, ptr noundef nonnull align 1 dereferenceable(1) %.sink301, i64 noundef %i.j, i1 noundef false) #15
  br label %.loopexit179

.loopexit179:                                     ; preds = %.lr.ph206, %middle.block424, %.loopexit179.sink.split
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %indvars.iv.next248 = sub i32 %indvars.iv247, %i.l
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count260
  br i1 %exitcond261.not, label %.loopexit177, label %.lr.ph208, !llvm.loop !1020

bb.g:                                             ; preds = %decode_counter.exit
  %i.eq = icmp sgt i32 %i.k, 0                    ; 2 uses
  br i1 %.not303, label %.preheader187, label %.preheader184

.preheader187:                                    ; preds = %bb.g
  br i1 %i.eq, label %.lr.ph193.preheader, label %.loopexit177

.lr.ph193.preheader:                              ; preds = %.preheader187
  %i.er = zext nneg i32 %i.l to i64               ; 4 uses
  %wide.trip.count229 = zext nneg i32 %i.k to i64
  %i.es = sub i64 %i.b, %i.c
  %diff.check335 = icmp ugt i64 %i.es, -32
  br label %.lr.ph193

.preheader184:                                    ; preds = %bb.g
  br i1 %i.eq, label %.lr.ph202.preheader, label %.loopexit177

.lr.ph202.preheader:                              ; preds = %.preheader184
  %i.et = zext nneg i32 %i.l to i64               ; 3 uses
  %wide.trip.count241 = zext nneg i32 %i.k to i64
  %i.eu = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.eu, -32
  br label %.lr.ph202

.lr.ph202:                                        ; preds = %.lr.ph202.preheader, %._crit_edge200
  %indvars.iv238 = phi i64 [ 0, %.lr.ph202.preheader ], [ %indvars.iv.next239, %._crit_edge200 ] ; 4 uses
  %i.ev = shl nuw nsw i64 %indvars.iv238, 8       ; 4 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.ev
  %i.ew = or disjoint i64 %i.ev, 8                ; 2 uses
  %scevgep308 = getelementptr i8, ptr %0, i64 %i.ew
  %scevgep310 = getelementptr i8, ptr %1, i64 %i.ev
  %i.ex = or disjoint i64 %i.ev, 4                ; 2 uses
  %scevgep312 = getelementptr i8, ptr %1, i64 %i.ex
  %scevgep314 = getelementptr i8, ptr %2, i64 %i.ex
  %scevgep316 = getelementptr i8, ptr %2, i64 %i.ew
  %i.ey = shl nuw nsw i64 %indvars.iv238, 8       ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 %i.ey ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 %i.ey ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ey ; 4 uses
  %i.fc = trunc i64 %indvars.iv238 to i32
  %i.fd = mul i32 %i.l, %i.fc
  %i.fe = sub i32 %i.ai, %i.fd                    ; 2 uses
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %.lr.ph196.preheader, label %.lr.ph199.preheader

.lr.ph196.preheader:                              ; preds = %.lr.ph202
  %i.fg = tail call i32 @llvm.smin.i32(i32 %i.fe, i32 %i.l) ; 2 uses
  %i.fh = zext nneg i32 %i.fg to i64              ; 3 uses
  %min.iters.check325 = icmp ult i32 %i.fg, 8
  %or.cond445 = or i1 %min.iters.check325, %diff.check
end_hunk_1
begin_hunk_2_@helper_sme2_sel_s:bb.a
.lr.ph196.preheader456:                           ; preds = %.lr.ph196.preheader, %middle.block332
  %indvars.iv232.ph = phi i64 [ 0, %.lr.ph196.preheader ], [ %n.vec327, %middle.block332 ]
  br label %.lr.ph196

.preheader183:                                    ; preds = %.lr.ph196, %middle.block332
  %indvars.iv.next233.lcssa = phi i64 [ %n.vec327, %middle.block332 ], [ %indvars.iv.next233, %.lr.ph196 ] ; 2 uses
  %i.fn = trunc nuw nsw i64 %indvars.iv.next233.lcssa to i32
  %i.fo = icmp samesign ugt i32 %i.l, %i.fn
  br i1 %i.fo, label %.lr.ph199.preheader, label %._crit_edge200

.lr.ph199.preheader:                              ; preds = %.lr.ph202, %.preheader183
  %.0154.lcssa294 = phi i64 [ %indvars.iv.next233.lcssa, %.preheader183 ], [ 0, %.lr.ph202 ] ; 9 uses
  %i.fp = add nuw nsw i64 %.0154.lcssa294, 2
  %i.fq = tail call i64 @llvm.umax.i64(i64 %i.et, i64 %i.fp)
  %i.fr = xor i64 %.0154.lcssa294, -1
  %i.fs = add i64 %i.fq, %i.fr                    ; 3 uses
  %i.ft = lshr i64 %i.fs, 1
  %i.fu = add nuw i64 %i.ft, 1
  %min.iters.check = icmp ult i64 %i.fs, 20
  br i1 %min.iters.check, label %.lr.ph199.preheader455, label %vector.memcheck

.lr.ph199.preheader455:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph199.preheader
  %indvars.iv235.ph = phi i64 [ %.0154.lcssa294, %vector.memcheck ], [ %.0154.lcssa294, %.lr.ph199.preheader ], [ %i.ge, %vector.body ]
  br label %.lr.ph199

vector.memcheck:                                  ; preds = %.lr.ph199.preheader
  %i.fv = shl nuw nsw i64 %.0154.lcssa294, 2      ; 4 uses
  %scevgep307 = getelementptr nuw i8, ptr %scevgep, i64 %i.fv ; 2 uses
  %i.fw = add nuw nsw i64 %.0154.lcssa294, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.et, i64 %i.fw)
  %i.fx = xor i64 %.0154.lcssa294, -1
  %i.fy = add i64 %umax, %i.fx
  %i.fz = shl i64 %i.fy, 2
  %i.ga = and i64 %i.fz, -8
  %i.gb = add i64 %i.ga, %i.fv                    ; 3 uses
  %scevgep309 = getelementptr i8, ptr %scevgep308, i64 %i.gb ; 2 uses
  %scevgep311 = getelementptr nuw i8, ptr %scevgep310, i64 %i.fv
  %scevgep313 = getelementptr i8, ptr %scevgep312, i64 %i.gb
  %scevgep315 = getelementptr i8, ptr %scevgep314, i64 %i.fv
  %scevgep317 = getelementptr i8, ptr %scevgep316, i64 %i.gb
  %bound0 = icmp ult ptr %scevgep307, %scevgep313
  %bound1 = icmp ult ptr %scevgep311, %scevgep309
  %found.conflict = and i1 %bound0, %bound1
  %bound0318 = icmp ult ptr %scevgep307, %scevgep317
  %bound1319 = icmp ult ptr %scevgep315, %scevgep309
  %found.conflict320 = and i1 %bound0318, %bound1319
  %conflict.rdx = or i1 %found.conflict, %found.conflict320
  br i1 %conflict.rdx, label %.lr.ph199.preheader455, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.gc = and i64 %i.fs, 2
  %.not441 = icmp eq i64 %i.gc, 0
  %.neg = select i1 %.not441, i64 -1, i64 -2
  %n.vec = add i64 %.neg, %i.fu                   ; 2 uses
  %i.gd = shl i64 %n.vec, 1
  %i.ge = add i64 %.0154.lcssa294, %i.gd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gf = shl nuw i64 %index, 1
  %i.gg = add nuw i64 %.0154.lcssa294, %i.gf      ; 3 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.gg
  %wide.vec = load <4 x i32>, ptr %i.gh, align 4, !alias.scope !1022
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.gg
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.gg
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %wide.vec321 = load <4 x i32>, ptr %i.gk, align 4, !alias.scope !1025
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> %wide.vec321, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  store <4 x i32> %interleaved.vec, ptr %i.gi, align 4, !alias.scope !1027, !noalias !1029
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gl = icmp eq i64 %index.next, %n.vec
  br i1 %i.gl, label %.lr.ph199.preheader455, label %vector.body, !llvm.loop !1030

.lr.ph196:                                        ; preds = %.lr.ph196.preheader456, %.lr.ph196
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %.lr.ph196 ], [ %indvars.iv232.ph, %.lr.ph196.preheader456 ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv232
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv232
  store i32 %i.gn, ptr %i.go, align 4
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 3 uses
  %i.gp = icmp samesign ult i64 %indvars.iv.next233, %i.fh
  br i1 %i.gp, label %.lr.ph196, label %.preheader183, !llvm.loop !1031

.lr.ph199:                                        ; preds = %.lr.ph199.preheader455, %.lr.ph199
  %indvars.iv235 = phi i64 [ %indvars.iv.next236, %.lr.ph199 ], [ %indvars.iv235.ph, %.lr.ph199.preheader455 ] ; 4 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv235
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv235
  store i32 %i.gr, ptr %i.gs, align 4
  %i.gt = add nuw nsw i64 %indvars.iv235, 1       ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.gt
  store i32 %i.gv, ptr %i.gw, align 4
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 2 ; 2 uses
  %i.gx = icmp samesign ult i64 %indvars.iv.next236, %i.et
  br i1 %i.gx, label %.lr.ph199, label %._crit_edge200, !llvm.loop !1032

._crit_edge200:                                   ; preds = %.lr.ph199, %.preheader183
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next239, %wide.trip.count241
  br i1 %exitcond242.not, label %.loopexit177, label %.lr.ph202, !llvm.loop !1033

.lr.ph193:                                        ; preds = %.lr.ph193.preheader, %._crit_edge
  %indvars.iv226 = phi i64 [ 0, %.lr.ph193.preheader ], [ %indvars.iv.next227, %._crit_edge ] ; 5 uses
  %i.gy = shl nuw nsw i64 %indvars.iv226, 8       ; 4 uses
  %scevgep349 = getelementptr i8, ptr %0, i64 %i.gy ; 2 uses
  %i.gz = or disjoint i64 %i.gy, 8                ; 2 uses
  %scevgep350 = getelementptr i8, ptr %0, i64 %i.gz
  %i.ha = trunc i64 %indvars.iv226 to i32
  %i.hb = mul i32 %i.l, %i.ha
  %i.hc = sub i32 %i.ai, %i.hb
  %smin = tail call i32 @llvm.smin.i32(i32 %i.hc, i32 %i.l)
  %i.hd = tail call i32 @llvm.umax.i32(i32 %smin, i32 2)
  %umax351 = zext i32 %i.hd to i64
  %i.he = shl nuw nsw i64 %umax351, 2
  %i.hf = add nsw i64 %i.he, -4
  %i.hg = and i64 %i.hf, -8                       ; 3 uses
  %scevgep352 = getelementptr i8, ptr %scevgep350, i64 %i.hg ; 2 uses
  %scevgep353 = getelementptr i8, ptr %1, i64 %i.gy
  %i.hh = or disjoint i64 %i.gy, 4                ; 2 uses
  %scevgep354 = getelementptr i8, ptr %1, i64 %i.hh
  %scevgep355 = getelementptr i8, ptr %scevgep354, i64 %i.hg
  %scevgep356 = getelementptr i8, ptr %2, i64 %i.hh
  %scevgep357 = getelementptr i8, ptr %2, i64 %i.gz
  %scevgep358 = getelementptr i8, ptr %scevgep357, i64 %i.hg
  %i.hi = shl nuw nsw i64 %indvars.iv226, 8       ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 %i.hi ; 10 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 %i.hi ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 %i.hi ; 9 uses
  %i.hm = trunc i64 %indvars.iv226 to i32
  %i.hn = mul i32 %i.l, %i.hm
  %i.ho = sub i32 %i.ai, %i.hn                    ; 2 uses
  %i.hp = icmp sgt i32 %i.ho, 0
  br i1 %i.hp, label %.lr.ph.preheader, label %.lr.ph191.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph193
  %i.hq = tail call i32 @llvm.smin.i32(i32 %i.ho, i32 %i.l) ; 2 uses
  %i.hr = zext nneg i32 %i.hq to i64              ; 2 uses
  %i.hs = tail call i64 @llvm.umax.i64(i64 %i.hr, i64 2)
  %i.ht = add nsw i64 %i.hs, -1
  %i.hu = lshr i64 %i.ht, 1
  %i.hv = add nuw nsw i64 %i.hu, 1                ; 2 uses
  %min.iters.check367 = icmp ult i32 %i.hq, 13
  br i1 %min.iters.check367, label %.lr.ph.preheader453, label %vector.memcheck348

.lr.ph.preheader453:                              ; preds = %vector.body370, %vector.memcheck348, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck348 ], [ 0, %.lr.ph.preheader ], [ %i.hz, %vector.body370 ]
  br label %.lr.ph

vector.memcheck348:                               ; preds = %.lr.ph.preheader
  %bound0359 = icmp ult ptr %scevgep349, %scevgep355
  %bound1360 = icmp ult ptr %scevgep353, %scevgep352
  %found.conflict361 = and i1 %bound0359, %bound1360
  %bound0362 = icmp ult ptr %scevgep349, %scevgep358
  %bound1363 = icmp ult ptr %scevgep356, %scevgep352
  %found.conflict364 = and i1 %bound0362, %bound1363
  %conflict.rdx365 = or i1 %found.conflict361, %found.conflict364
  br i1 %conflict.rdx365, label %.lr.ph.preheader453, label %vector.ph368

vector.ph368:                                     ; preds = %vector.memcheck348
  %i.hw = and i64 %i.hv, 3                        ; 2 uses
  %i.hx = icmp eq i64 %i.hw, 0
  %i.hy = select i1 %i.hx, i64 4, i64 %i.hw
  %n.vec369 = sub nsw i64 %i.hv, %i.hy            ; 2 uses
  %i.hz = shl i64 %n.vec369, 1
  br label %vector.body370

vector.body370:                                   ; preds = %vector.body370, %vector.ph368
  %index371 = phi i64 [ 0, %vector.ph368 ], [ %index.next382, %vector.body370 ] ; 2 uses
  %i.ia = shl nuw i64 %index371, 1                ; 5 uses
  %i.ib = or disjoint i64 %i.ia, 4                ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.ia
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.ib
  %wide.vec372 = load <4 x i32>, ptr %i.ic, align 4, !alias.scope !1034
  %wide.vec374 = load <4 x i32>, ptr %i.id, align 4, !alias.scope !1034
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.ia
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.ib
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.ia
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.ia
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 20
  %wide.vec376 = load <4 x i32>, ptr %i.ih, align 4, !alias.scope !1037
  %wide.vec378 = load <4 x i32>, ptr %i.ij, align 4, !alias.scope !1037
  %interleaved.vec380 = shufflevector <4 x i32> %wide.vec372, <4 x i32> %wide.vec376, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  store <4 x i32> %interleaved.vec380, ptr %i.ie, align 4, !alias.scope !1039, !noalias !1041
  %interleaved.vec381 = shufflevector <4 x i32> %wide.vec374, <4 x i32> %wide.vec378, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  store <4 x i32> %interleaved.vec381, ptr %i.if, align 4, !alias.scope !1039, !noalias !1041
  %index.next382 = add nuw i64 %index371, 4       ; 2 uses
  %i.ik = icmp eq i64 %index.next382, %n.vec369
  br i1 %i.ik, label %.lr.ph.preheader453, label %vector.body370, !llvm.loop !1042

.preheader186:                                    ; preds = %.lr.ph
  %i.il = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.im = icmp sgt i32 %i.l, %i.il
  br i1 %i.im, label %.lr.ph191.preheader, label %._crit_edge

.lr.ph191.preheader:                              ; preds = %.lr.ph193, %.preheader186
  %.0.lcssa296 = phi i64 [ %indvars.iv.next, %.preheader186 ], [ 0, %.lr.ph193 ] ; 4 uses
  %i.in = sub nsw i64 %i.er, %.0.lcssa296         ; 3 uses
  %min.iters.check337 = icmp ult i64 %i.in, 8
  %or.cond446 = or i1 %min.iters.check337, %diff.check335
  br i1 %or.cond446, label %.lr.ph191.preheader452, label %vector.ph338

vector.ph338:                                     ; preds = %.lr.ph191.preheader
  %n.vec339 = and i64 %i.in, -8                   ; 3 uses
  %i.io = add i64 %.0.lcssa296, %n.vec339
  br label %vector.body340

vector.body340:                                   ; preds = %vector.body340, %vector.ph338
  %index341 = phi i64 [ 0, %vector.ph338 ], [ %index.next344, %vector.body340 ] ; 2 uses
  %i.ip = add nuw i64 %.0.lcssa296, %index341     ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.ip ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %wide.load342 = load <4 x i32>, ptr %i.iq, align 4
  %wide.load343 = load <4 x i32>, ptr %i.ir, align 4
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.ip ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  store <4 x i32> %wide.load342, ptr %i.is, align 4
  store <4 x i32> %wide.load343, ptr %i.it, align 4
  %index.next344 = add nuw i64 %index341, 8       ; 2 uses
  %i.iu = icmp eq i64 %index.next344, %n.vec339
  br i1 %i.iu, label %middle.block345, label %vector.body340, !llvm.loop !1043

middle.block345:                                  ; preds = %vector.body340
  %cmp.n346 = icmp eq i64 %i.in, %n.vec339
  br i1 %cmp.n346, label %._crit_edge, label %.lr.ph191.preheader452

.lr.ph191.preheader452:                           ; preds = %.lr.ph191.preheader, %middle.block345
  %indvars.iv223.ph = phi i64 [ %.0.lcssa296, %.lr.ph191.preheader ], [ %i.io, %middle.block345 ] ; 4 uses
  %i.iv = sub i64 %i.er, %indvars.iv223.ph
  %xtraiter = and i64 %i.iv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph191.prol.loopexit, label %.lr.ph191.prol

.lr.ph191.prol:                                   ; preds = %.lr.ph191.preheader452, %.lr.ph191.prol
  %indvars.iv223.prol = phi i64 [ %indvars.iv.next224.prol, %.lr.ph191.prol ], [ %indvars.iv223.ph, %.lr.ph191.preheader452 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph191.prol ], [ 0, %.lr.ph191.preheader452 ]
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv223.prol
  %i.ix = load i32, ptr %i.iw, align 4
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv223.prol
  store i32 %i.ix, ptr %i.iy, align 4
  %indvars.iv.next224.prol = add nuw nsw i64 %indvars.iv223.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph191.prol.loopexit, label %.lr.ph191.prol, !llvm.loop !1044

.lr.ph191.prol.loopexit:                          ; preds = %.lr.ph191.prol, %.lr.ph191.preheader452
  %indvars.iv223.unr = phi i64 [ %indvars.iv223.ph, %.lr.ph191.preheader452 ], [ %indvars.iv.next224.prol, %.lr.ph191.prol ]
  %i.iz = sub i64 %indvars.iv223.ph, %i.er
  %i.ja = icmp ugt i64 %i.iz, -4
  br i1 %i.ja, label %._crit_edge, label %.lr.ph191

.lr.ph:                                           ; preds = %.lr.ph.preheader453, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader453 ] ; 4 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv
  %i.jc = load i32, ptr %i.jb, align 4
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv
  store i32 %i.jc, ptr %i.jd, align 4
  %i.je = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.je
  store i32 %i.jg, ptr %i.jh, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.ji = icmp samesign ult i64 %indvars.iv.next, %i.hr
  br i1 %i.ji, label %.lr.ph, label %.preheader186, !llvm.loop !1045

.lr.ph191:                                        ; preds = %.lr.ph191.prol.loopexit, %.lr.ph191
  %indvars.iv223 = phi i64 [ %indvars.iv.next224.3, %.lr.ph191 ], [ %indvars.iv223.unr, %.lr.ph191.prol.loopexit ] ; 6 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv223
  %i.jk = load i32, ptr %i.jj, align 4
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv223
  store i32 %i.jk, ptr %i.jl, align 4
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.next224
  %i.jn = load i32, ptr %i.jm, align 4
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next224
  store i32 %i.jn, ptr %i.jo, align 4
  %indvars.iv.next224.1 = add nuw nsw i64 %indvars.iv223, 2 ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.next224.1
  %i.jq = load i32, ptr %i.jp, align 4
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next224.1
  store i32 %i.jq, ptr %i.jr, align 4
  %indvars.iv.next224.2 = add nuw nsw i64 %indvars.iv223, 3 ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.next224.2
  %i.jt = load i32, ptr %i.js, align 4
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next224.2
  store i32 %i.jt, ptr %i.ju, align 4
  %indvars.iv.next224.3 = add nuw nsw i64 %indvars.iv223, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next224.3, %i.er
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph191, !llvm.loop !1046

._crit_edge:                                      ; preds = %.lr.ph191.prol.loopexit, %.lr.ph191, %middle.block345, %.preheader186
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count229
  br i1 %exitcond230.not, label %.loopexit177, label %.lr.ph193, !llvm.loop !1047

.loopexit177:                                     ; preds = %._crit_edge200, %._crit_edge, %.loopexit, %.loopexit179, %.preheader187, %.preheader184, %.preheader181, %.preheader176
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_sel_d(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.g = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.h = ashr i32 %4, 10                          ; 4 uses
  %i.i = lshr exact i32 %.v.i, 3                  ; 6 uses
  %i.j = and i32 %3, 15
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %.preheader70, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.k = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 false) ; 5 uses
  %i.l = add nsw i64 %i.g, -1
  %i.m = tail call range(i64 53, 65) i64 @llvm.ctlz.i64(i64 range(i64 7, 2048) %i.l, i1 true)
  %i.n = add nuw nsw i64 %i.m, 4294967295
  %i.o = and i64 %i.n, 4294967295
  %i.p = lshr exact i64 -9223372036854775808, %i.o
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 3
  %i.s = add nsw i32 %i.r, -1
  %i.t = and i32 %i.s, %3                         ; 2 uses
  %i.u = add nuw nsw i32 %i.k, 1
  %i.v = lshr i32 %i.t, %i.u                      ; 4 uses
  %i.w = and i32 %3, 32768
  %.not93 = icmp eq i32 %i.w, 0                   ; 3 uses
  %.not29.i = icmp eq i32 %i.k, 3
  br i1 %.not29.i, label %decode_counter.exit, label %bb.c, !prof !62

bb.c:                                             ; preds = %bb.b
  %i.x = icmp samesign ult i32 %i.k, 3
  br i1 %i.x, label %.split91, label %.split

.split91:                                         ; preds = %bb.c
  %i.y = sub nuw nsw i32 3, %i.k
  %i.z = lshr i32 %i.t, 4                         ; 2 uses
  %i.aa = shl nuw nsw i32 %i.z, %i.y
  %i.ab = icmp ne i32 %i.v, %i.aa
  %i.ac = zext i1 %i.ab to i32
  %i.ad = add nuw nsw i32 %i.z, %i.ac             ; 2 uses
  br i1 %.not93, label %.preheader70, label %.preheader

.split:                                           ; preds = %bb.c
  %i.ae = add nsw i32 %i.k, -3
  %i.af = shl i32 %i.v, %i.ae                     ; 2 uses
  br i1 %.not93, label %.preheader70, label %.preheader

decode_counter.exit:                              ; preds = %bb.b
  br i1 %.not93, label %.preheader70, label %.preheader

.preheader70:                                     ; preds = %bb.a, %.split91, %.split, %decode_counter.exit
  %.sroa.020.sroa.0.0.insert.insert.i89 = phi i32 [ %i.ad, %.split91 ], [ %i.v, %decode_counter.exit ], [ %i.af, %.split ], [ 0, %bb.a ]
  %i.ag = icmp sgt i32 %i.h, 0
  br i1 %i.ag, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader70
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

.preheader:                                       ; preds = %.split91, %.split, %decode_counter.exit
  %.sroa.020.sroa.0.0.insert.insert.i90 = phi i32 [ %i.af, %.split ], [ %i.v, %decode_counter.exit ], [ %i.ad, %.split91 ]
  %i.ah = icmp sgt i32 %i.h, 0
  br i1 %i.ah, label %.lr.ph74.preheader, label %.loopexit

.lr.ph74.preheader:                               ; preds = %.preheader
  %wide.trip.count80 = zext nneg i32 %i.h to i64
  br label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %bb.h
  %indvars.iv77 = phi i64 [ 0, %.lr.ph74.preheader ], [ %indvars.iv.next78, %bb.h ] ; 3 uses
  %i.ai = shl nuw nsw i64 %indvars.iv77, 8        ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %i.ai ; 2 uses
  %i.am = trunc i64 %indvars.iv77 to i32
  %i.an = mul i32 %i.i, %i.am
  %i.ao = sub i32 %.sroa.020.sroa.0.0.insert.insert.i90, %i.an ; 4 uses
  %i.ap = icmp slt i32 %i.ao, 1
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 1 dereferenceable(1) %i.ak, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph74
  %.not69 = icmp slt i32 %i.ao, %i.i
  br i1 %.not69, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 1 dereferenceable(1) %i.al, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.h
end_hunk_2
