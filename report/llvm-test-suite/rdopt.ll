inline.NumInlined: 29
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 172
loop-unroll.NumUnrolled: 172
begin_hunk_0_@RDCost_for_8x8blocks:bb.a
.loopexit:                                        ; preds = %bb.n, %._crit_edge
  %i.lz = phi ptr [ %i.hq, %._crit_edge ], [ %i.hs, %bb.n ]
  %.5168 = phi i64 [ %i.hr, %._crit_edge ], [ %i.lx, %bb.n ]
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4008
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !99
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.loopexit
  call void @ue_linfo(i32 noundef %i.q, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #14
  %i.md = load i32, ptr %i.b, align 4, !tbaa !4
  br label %bb.q

bb.p:                                             ; preds = %.loopexit
  %i.me = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.q, ptr %i.me, align 4, !tbaa !91
  store i32 2, ptr %8, align 8, !tbaa !94
  %i.mf = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !95
  %i.mh = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !4
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds [104 x i8], ptr %i.mg, i64 %i.mj
  %i.ml = load ptr, ptr @writeB8_typeInfo, align 8, !tbaa !16
  call void %i.ml(ptr noundef nonnull %8, ptr noundef %i.mk) #14
  %i.mm = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !98
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0161 = phi i32 [ %i.md, %bb.o ], [ %i.mn, %bb.p ] ; 3 uses
  br i1 %i.o, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mo = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 14456
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !131
  %i.mr = icmp sgt i32 %i.mq, 1
  %i.ms = and i16 %5, -3
  %or.cond10 = icmp eq i16 %i.ms, 0               ; 2 uses
  %or.cond171 = and i1 %or.cond10, %i.mr
  br i1 %or.cond171, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.mt = sext i16 %6 to i32
  %i.mu = call i32 @writeReferenceFrame(i32 noundef %4, i32 noundef %i.h, i32 noundef %i.i, i32 noundef 1, i32 noundef %i.mt) #14
  %i.mv = add nsw i32 %i.mu, %.0161
  %.pre203 = load ptr, ptr @img, align 8, !tbaa !16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.mw = phi ptr [ %.pre203, %bb.s ], [ %i.mo, %bb.r ] ; 2 uses
  %.1162 = phi i32 [ %i.mv, %bb.s ], [ %.0161, %bb.r ] ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 14460
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !132
  %i.mz = icmp sgt i32 %i.my, 1
  br i1 %i.mz, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.na = getelementptr inbounds nuw i8, ptr %i.mw, i64 20
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !41
  %i.nc = icmp eq i32 %i.nb, 1
  %i.nd = add i16 %5, -1
  %or.cond13 = icmp ult i16 %i.nd, 2
  %or.cond172 = and i1 %or.cond13, %i.nc
  br i1 %or.cond172, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ne = sext i16 %7 to i32
  %i.nf = call i32 @writeReferenceFrame(i32 noundef %4, i32 noundef %i.h, i32 noundef %i.i, i32 noundef 0, i32 noundef %i.ne) #14
  %i.ng = add nsw i32 %i.nf, %.1162
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.2 = phi i32 [ %i.ng, %bb.v ], [ %.1162, %bb.t ], [ %.1162, %bb.u ] ; 2 uses
  br i1 %or.cond10, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.nh = add nuw nsw i32 %i.h, 2
  %i.ni = add nsw i32 %i.i, 2
  %i.nj = sext i16 %6 to i32
  %i.nk = call i32 @writeMotionVector8x8(i32 noundef %i.h, i32 noundef %i.i, i32 noundef %i.nh, i32 noundef %i.ni, i32 noundef %i.nj, i32 noundef 0, i32 noundef %4) #14
  %i.nl = add nsw i32 %i.nk, %.2
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.3 = phi i32 [ %i.nl, %bb.x ], [ %.2, %bb.w ]  ; 2 uses
  %i.nm = add i16 %5, -1
  %or.cond19 = icmp ult i16 %i.nm, 2
  br i1 %or.cond19, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.nn = add nuw nsw i32 %i.h, 2
  %i.no = add nsw i32 %i.i, 2
  %i.np = sext i16 %7 to i32
  %i.nq = call i32 @writeMotionVector8x8(i32 noundef %i.h, i32 noundef %i.i, i32 noundef %i.nn, i32 noundef %i.no, i32 noundef %i.np, i32 noundef 1, i32 noundef %4) #14
  %i.nr = add nsw i32 %i.nq, %.3
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.q
  %.4 = phi i32 [ %.0161, %bb.q ], [ %i.nr, %bb.z ], [ %.3, %bb.y ] ; 2 uses
  %i.ns = load ptr, ptr @input, align 8, !tbaa !16
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 4008
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !99
  %i.nv = icmp eq i32 %i.nu, 1
  br i1 %i.nv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.nw = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !95
  %i.ny = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !4
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds [104 x i8], ptr %i.nx, i64 %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8 ; 3 uses
  %i.od = call i32 @arienco_bits_written(ptr noundef nonnull %i.oc) #14
  store i32 %i.od, ptr %i.b, align 4, !tbaa !4
  %i.oe = load i32, ptr %0, align 4, !tbaa !4
  %i.of = icmp sgt i32 %i.oe, 0
  %i.og = zext i1 %i.of to i32
  %i.oh = load i32, ptr @cbp8x8, align 4, !tbaa !4
  call void @writeCBP_BIT_CABAC(i32 noundef %3, i32 noundef %i.og, i32 noundef %i.oh, ptr noundef %i.x, i32 noundef 1, ptr noundef nonnull %i.oc) #14
  %i.oi = call i32 @arienco_bits_written(ptr noundef nonnull %i.oc) #14
  %i.oj = load i32, ptr %i.b, align 4, !tbaa !4
  %i.ok = sub nsw i32 %i.oi, %i.oj                ; 2 uses
  store i32 %i.ok, ptr %i.b, align 4, !tbaa !4
  %i.ol = add nsw i32 %i.ok, %.4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.5 = phi i32 [ %i.ol, %bb.ab ], [ %.4, %bb.aa ] ; 2 uses
  %i.om = load i32, ptr %0, align 4, !tbaa !4
  %.not170 = icmp eq i32 %i.om, 0
  br i1 %.not170, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.on = getelementptr inbounds nuw i8, ptr %i.x, i64 472
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !133
  %i.op = call i32 @writeLumaCoeff8x8(i32 noundef %3, i32 noundef %4, i32 noundef %i.oo) #14
  %i.oq = add nsw i32 %i.op, %.5
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.6 = phi i32 [ %i.oq, %bb.ad ], [ %.5, %bb.ac ]
  %i.or = sitofp i64 %.5168 to double
  %i.os = sitofp i32 %.6 to double
  %i.ot = call double @llvm.fmuladd.f64(double %2, double %i.os, double %i.or)
  br label %bb.af

bb.af:                                            ; preds = %bb.b, %bb.f, %bb.ae
  %.1 = phi double [ 1.000000e+20, %bb.f ], [ %i.ot, %bb.ae ], [ 1.000000e+20, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret double %.1
}

declare i32 @B8Mode2Value(i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @LumaResidualCoding8x8(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @compute_residue_b8block(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @decode_one_b8block(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @ue_linfo(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @writeReferenceFrame(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @writeMotionVector8x8(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @arienco_bits_written(ptr noundef) local_unnamed_addr #1

declare void @writeCBP_BIT_CABAC(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @writeLumaCoeff8x8(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @I16Offset(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = and i32 %0, 15
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, i32 1, i32 13
  %i.c = lshr i32 %0, 2
  %i.d = and i32 %i.c, 12
  %i.e = add i32 %i.d, %1
  %i.f = add i32 %i.e, %i.b
  ret i32 %i.f
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @SetModesAndRefframeForBlocks(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !16   ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 14224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !101
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [536 x i8], ptr %i.c, i64 %i.f ; 40 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !41
  %i.j = icmp eq i32 %i.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i32 %0, ptr %i.k, align 8, !tbaa !134
  %i.l = icmp eq i32 %0, 1                        ; 5 uses
  br i1 %i.l, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 14410
  %i.n = load i16, ptr %i.m, align 2, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 480 ; 2 uses
  store i16 %i.n, ptr %i.o, align 8, !tbaa !119
  br label %.loopexit240

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 480 ; 5 uses
  store i16 0, ptr %i.p, align 8, !tbaa !119
  switch i32 %0, label %bb.c [
    i32 0, label %.preheader241
    i32 14, label %.preheader243
    i32 2, label %.loopexit240
    i32 3, label %.loopexit240
    i32 8, label %.preheader244
    i32 9, label %.preheader246
    i32 10, label %.preheader248
    i32 13, label %.preheader250
  ]

.preheader250:                                    ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  store <4 x i32> splat (i32 13), ptr %i.q, align 8, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.r, align 8, !tbaa !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  store i32 1, ptr %i.s, align 8, !tbaa !133
  br label %.loopexit240.thread

.preheader248:                                    ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 -1, i64 16, i1 false), !tbaa !4
  br label %.loopexit240.thread

.preheader246:                                    ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  store <4 x i32> splat (i32 11), ptr %i.v, align 8, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.w, align 8, !tbaa !4
  br label %.loopexit240.thread

.preheader244:                                    ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  %i.z = load i16, ptr @best8x8mode, align 2, !tbaa !68
  %i.aa = sext i16 %i.z to i32
  store i32 %i.aa, ptr %i.x, align 8, !tbaa !4
  %i.ab = load i8, ptr getelementptr inbounds nuw (i8, ptr @best8x8pdir, i64 32), align 16, !tbaa !46
  %i.ac = sext i8 %i.ab to i32
  store i32 %i.ac, ptr %i.y, align 8, !tbaa !4
  %i.ad = load i16, ptr getelementptr inbounds nuw (i8, ptr @best8x8mode, i64 2), align 2, !tbaa !68
  %i.ae = sext i16 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 380
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !4
  %i.ag = load i8, ptr getelementptr inbounds nuw (i8, ptr @best8x8pdir, i64 33), align 1, !tbaa !46
  %i.ah = sext i8 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 396
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !4
  %i.aj = load i16, ptr getelementptr inbounds nuw (i8, ptr @best8x8mode, i64 4), align 2, !tbaa !68
  %i.ak = sext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !4
  %i.am = load i8, ptr getelementptr inbounds nuw (i8, ptr @best8x8pdir, i64 34), align 2, !tbaa !46
  %i.an = sext i8 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !4
  %i.ap = load i16, ptr getelementptr inbounds nuw (i8, ptr @best8x8mode, i64 6), align 2, !tbaa !68
  %i.aq = sext i16 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 388
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !4
  %i.as = load i8, ptr getelementptr inbounds nuw (i8, ptr @best8x8pdir, i64 35), align 1, !tbaa !46
  %i.at = sext i8 %i.as to i32
  %1 = getelementptr inbounds nuw i8, ptr %i.g, i64 404
  store i32 %i.at, ptr %1, align 4, !tbaa !4
  br label %.loopexit240.thread353

.preheader243:                                    ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  store <4 x i32> splat (i32 14), ptr %i.au, align 8, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.av, align 8, !tbaa !4
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  store i32 0, ptr %2, align 8, !tbaa !133
  br label %.loopexit240.thread353

.preheader241:                                    ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.ax = load ptr, ptr @direct_pdir, align 8     ; 4 uses
  store i32 0, ptr %i.aw, align 8, !tbaa !4
  br i1 %i.j, label %.thread356, label %.thread358

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

.loopexit240:                                     ; preds = %bb.b, %bb.b, %.thread
  %i.ay = phi ptr [ %i.o, %.thread ], [ %i.p, %bb.b ], [ %i.p, %bb.b ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.ba = zext nneg i32 %0 to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @best8x8pdir, i64 %i.ba ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  store i32 %0, ptr %i.az, align 8, !tbaa !4
  %i.bd = load i8, ptr %i.bb, align 4, !tbaa !46
  %i.be = sext i8 %i.bd to i32
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 380
  store i32 %0, ptr %i.bf, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !46
  %i.bi = sext i8 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 396
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  store i32 %0, ptr %i.bk, align 8, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !46
  %i.bn = sext i8 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 388
  store i32 %0, ptr %i.bp, align 4, !tbaa !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !46
  %i.bs = sext i8 %i.br to i32
  %3 = getelementptr inbounds nuw i8, ptr %i.g, i64 404
  store i32 %i.bs, ptr %3, align 4, !tbaa !4
  br label %.loopexit240.thread353

.loopexit240.thread:                              ; preds = %.preheader250, %.preheader246, %.preheader248
  %.not228 = icmp eq i32 %0, 0                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

.thread358:                                       ; preds = %.preheader241
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 380
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bt, i8 0, i64 28, i1 false)
  br label %.lr.ph260.preheader

.thread356:                                       ; preds = %.preheader241
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 172 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !56
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !45
  %i.cb = load i32, ptr %i.bu, align 8, !tbaa !57
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %i.ca, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !46
  %i.cf = sext i8 %i.ce to i32
  store i32 %i.cf, ptr %i.bw, align 8, !tbaa !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 380
  store i32 0, ptr %i.cg, align 4, !tbaa !4
  %i.ch = load i32, ptr %i.bv, align 4, !tbaa !56
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !45
  %i.cl = load i32, ptr %i.bu, align 8, !tbaa !57
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr i8, ptr %i.ck, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 2
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !46
  %i.cq = sext i8 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 396
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  store i32 0, ptr %i.cs, align 8, !tbaa !4
  %i.ct = load i32, ptr %i.bv, align 4, !tbaa !56
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr [8 x i8], ptr %i.ax, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !45
  %i.cy = load i32, ptr %i.bu, align 8, !tbaa !57
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr %i.cx, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !46
  %i.dc = sext i8 %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  store i32 %i.dc, ptr %i.dd, align 8, !tbaa !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 388
  store i32 0, ptr %i.de, align 4, !tbaa !4
  %i.df = load i32, ptr %i.bv, align 4, !tbaa !56
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [8 x i8], ptr %i.ax, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !45
  %i.dk = load i32, ptr %i.bu, align 8, !tbaa !57
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr i8, ptr %i.dj, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 2
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !46
  %i.dp = sext i8 %i.do to i32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 404
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !4
  br label %.lr.ph264.preheader

bb.d:                                             ; preds = %.loopexit240.thread
  br i1 %.not228, label %.lr.ph264.preheader, label %.lr.ph262.preheader

.lr.ph264.preheader:                              ; preds = %.thread356, %bb.d
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !56
  %i.dt = sext i32 %i.ds to i64
  br label %.lr.ph264

.lr.ph264:                                        ; preds = %.lr.ph264.preheader, %.lr.ph264
  %indvars.iv300 = phi i64 [ %i.dt, %.lr.ph264.preheader ], [ %indvars.iv.next301, %.lr.ph264 ] ; 6 uses
  %i.du = phi ptr [ %i.a, %.lr.ph264.preheader ], [ %i.fe, %.lr.ph264 ]
  %i.dv = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 6488
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !135
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !44
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %indvars.iv300
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !45
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 168
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !57
  %i.ed = sext i32 %i.ec to i64                   ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %i.ea, i64 %i.ed
  %i.ef = load ptr, ptr @direct_ref_idx, align 8, !tbaa !122
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !44
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %indvars.iv300
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !45
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 %i.ed
  %i.ek = load i32, ptr %i.ej, align 1
  store i32 %i.ek, ptr %i.ee, align 1
  %i.el = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 6488
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !135
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !44
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %indvars.iv300
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !45
  %i.es = load ptr, ptr @img, align 8, !tbaa !16
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 168
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !57
  %i.ev = sext i32 %i.eu to i64                   ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %i.er, i64 %i.ev
  %i.ex = load ptr, ptr @direct_ref_idx, align 8, !tbaa !122
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !44
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %indvars.iv300
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !45
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 %i.ev
  %i.fd = load i32, ptr %i.fc, align 1
  store i32 %i.fd, ptr %i.ew, align 1
  %indvars.iv.next301 = add nsw i64 %indvars.iv300, 1
  %i.fe = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 172
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !56
  %i.fh = add nsw i32 %i.fg, 3
  %i.fi = sext i32 %i.fh to i64
  %i.fj = icmp slt i64 %indvars.iv300, %i.fi
  br i1 %i.fj, label %.lr.ph264, label %.loopexit233.thread355, !llvm.loop !136

.lr.ph262.preheader:                              ; preds = %bb.d
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !56
  %i.fm = sext i32 %i.fl to i64
  br label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %.lr.ph262
  %indvars.iv297 = phi i64 [ %i.fm, %.lr.ph262.preheader ], [ %indvars.iv.next298, %.lr.ph262 ] ; 4 uses
  %i.fn = phi ptr [ %i.a, %.lr.ph262.preheader ], [ %i.gk, %.lr.ph262 ]
  %i.fo = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 6488
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !135
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !44
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %indvars.iv297
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !45
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 168
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !57
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds i8, ptr %i.ft, i64 %i.fw
  store i32 -1, ptr %i.fx, align 1
  %i.fy = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 6488
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !135
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !44
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %indvars.iv297
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !45
  %i.gf = load ptr, ptr @img, align 8, !tbaa !16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 168
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !57
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds i8, ptr %i.ge, i64 %i.gi
  store i32 -1, ptr %i.gj, align 1
  %indvars.iv.next298 = add nsw i64 %indvars.iv297, 1
  %i.gk = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 172
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !56
  %i.gn = add nsw i32 %i.gm, 3
  %i.go = sext i32 %i.gn to i64
  %i.gp = icmp slt i64 %indvars.iv297, %i.go
  br i1 %i.gp, label %.lr.ph262, label %.loopexit233.thread355, !llvm.loop !137

bb.e:                                             ; preds = %.loopexit240.thread
  br i1 %.not228, label %.lr.ph260.preheader, label %.lr.ph.preheader

.lr.ph260.preheader:                              ; preds = %.thread358, %bb.e
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !56
  %i.gs = sext i32 %i.gr to i64
  br label %.lr.ph260

.lr.ph260:                                        ; preds = %.lr.ph260.preheader, %.lr.ph260
  %indvars.iv294 = phi i64 [ %i.gs, %.lr.ph260.preheader ], [ %indvars.iv.next295, %.lr.ph260 ] ; 3 uses
  %i.gt = phi ptr [ %i.a, %.lr.ph260.preheader ], [ %i.he, %.lr.ph260 ]
  %i.gu = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 6488
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !135
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !44
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %indvars.iv294
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !45
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 168
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !57
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds i8, ptr %i.gz, i64 %i.hc
  store i32 0, ptr %i.hd, align 1
  %indvars.iv.next295 = add nsw i64 %indvars.iv294, 1
  %i.he = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 172
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !56
  %i.hh = add nsw i32 %i.hg, 3
  %i.hi = sext i32 %i.hh to i64
  %i.hj = icmp slt i64 %indvars.iv294, %i.hi
  br i1 %i.hj, label %.lr.ph260, label %.loopexit233.thread, !llvm.loop !138

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.hk = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !56
  %i.hm = sext i32 %i.hl to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.hm, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.hn = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.hy, %.lr.ph ]
  %i.ho = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 6488
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !135
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !44
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %indvars.iv
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !45
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 168
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !57
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds i8, ptr %i.ht, i64 %i.hw
  store i32 -1, ptr %i.hx, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.hy = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 172
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !56
  %i.ib = add nsw i32 %i.ia, 3
  %i.ic = sext i32 %i.ib to i64
  %i.id = icmp slt i64 %indvars.iv, %i.ic
  br i1 %i.id, label %.lr.ph, label %.loopexit233.thread, !llvm.loop !139

.loopexit240.thread353:                           ; preds = %.loopexit240, %.preheader243, %.preheader244
  %i.ie = phi ptr [ %i.ay, %.loopexit240 ], [ %i.p, %.preheader244 ], [ %i.p, %.preheader243 ] ; 4 uses
  br i1 %i.j, label %.preheader, label %.preheader234

.preheader234:                                    ; preds = %.loopexit240.thread353
  %i.if = zext nneg i32 %0 to i64                 ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr @best8x8pdir, i64 %i.if ; 7 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr @best8x8fwref, i64 %i.if ; 16 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !56
  %i.ik = sext i32 %i.ij to i64                   ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.im = load i32, ptr %i.il, align 8, !tbaa !57
  %i.in = load i8, ptr %i.ig, align 4, !tbaa !46
  switch i8 %i.in, label %bb.ba [
    i8 0, label %bb.az
    i8 2, label %bb.az
  ]

.preheader:                                       ; preds = %.loopexit240.thread353
  %i.io = icmp eq i32 %0, 8
  %i.ip = zext nneg i32 %0 to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr @best8x8pdir, i64 %i.ip ; 4 uses
  %i.ir = zext nneg i32 %0 to i64                 ; 3 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr @best8x8pdir, i64 %i.ir ; 8 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr @best8x8fwref, i64 %i.ir ; 8 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr @best8x8bwref, i64 %i.ir ; 8 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %.split269.us
  %.4206270 = phi i32 [ 0, %.preheader ], [ %i.yz, %.split269.us ] ; 3 uses
  %i.iv = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 172
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !56
  %i.iy = add nsw i32 %i.ix, %.4206270
  %i.iz = and i32 %.4206270, 2                    ; 8 uses
  %i.ja = sext i32 %i.iy to i64                   ; 34 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 168
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !57 ; 4 uses
  br i1 %i.io, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.f
  br i1 %i.l, label %bb.aa, label %.thread231

.split.us.preheader:                              ; preds = %bb.f
  %i.jd = zext nneg i32 %i.iz to i64              ; 7 uses
  %i.je = getelementptr inbounds nuw [2 x i8], ptr @best8x8mode, i64 %i.jd ; 4 uses
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !68
  %i.jg = icmp eq i16 %i.jf, 0
  br i1 %i.jg, label %bb.k, label %.thread231.us

.thread231.us:                                    ; preds = %.split.us.preheader
  %i.jh = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.jd ; 2 uses
  %i.ji = load i8, ptr %i.jh, align 2, !tbaa !46
  switch i8 %i.ji, label %bb.h [
    i8 0, label %bb.g
    i8 2, label %bb.g
  ]

bb.g:                                             ; preds = %.thread231.us, %.thread231.us
  %i.jj = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.jd
  %i.jk = load i8, ptr %i.jj, align 2, !tbaa !46
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread231.us
  %i.jl = phi i8 [ %i.jk, %bb.g ], [ -1, %.thread231.us ]
  %i.jm = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 6488
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !135
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !44
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %i.ja
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !45
  %i.js = sext i32 %i.jc to i64                   ; 4 uses
  %i.jt = getelementptr inbounds i8, ptr %i.jr, i64 %i.js
  store i8 %i.jl, ptr %i.jt, align 1, !tbaa !46
  %i.ju = load i8, ptr %i.jh, align 2, !tbaa !46
  %.off229.us = add i8 %i.ju, -1
  %switch230.us = icmp ult i8 %.off229.us, 2
  br i1 %switch230.us, label %bb.i, label %.split.us.1

bb.i:                                             ; preds = %bb.h
  %i.jv = load i16, ptr %i.je, align 2, !tbaa !68
  %.not226.us = icmp eq i16 %i.jv, 0
  br i1 %.not226.us, label %.split.us.1, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.jd
  %i.jx = load i8, ptr %i.jw, align 2, !tbaa !46
  br label %.split.us.1

bb.k:                                             ; preds = %.split.us.preheader
  %i.jy = load ptr, ptr @direct_ref_idx, align 8, !tbaa !122
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !44
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.ja
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !45
  %i.kc = sext i32 %i.jc to i64                   ; 4 uses
  %i.kd = getelementptr inbounds i8, ptr %i.kb, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !46
  %i.kf = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 6488
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !135
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !44
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.ki, i64 %i.ja
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !45
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 %i.kc
  store i8 %i.ke, ptr %i.kl, align 1, !tbaa !46
  %i.km = load ptr, ptr @direct_ref_idx, align 8, !tbaa !122
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !44
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.ko, i64 %i.ja
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !45
  %i.kr = getelementptr inbounds i8, ptr %i.kq, i64 %i.kc
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !46
  br label %.split.us.1

.split.us.1:                                      ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %.sink364.a = phi i64 [ %i.kc, %bb.k ], [ %i.js, %bb.j ], [ %i.js, %bb.i ], [ %i.js, %bb.h ]
  %.sink.a = phi i8 [ %i.ks, %bb.k ], [ %i.jx, %bb.j ], [ -1, %bb.i ], [ -1, %bb.h ]
  %i.kt = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 6488
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !135
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !44
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.ja
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !45
  %i.la = getelementptr inbounds i8, ptr %i.kz, i64 %.sink364.a
  store i8 %.sink.a, ptr %i.la, align 1, !tbaa !46
  %i.lb = load ptr, ptr @img, align 8, !tbaa !16
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 168
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !57
  %i.le = add nsw i32 %i.ld, 1                    ; 2 uses
  %i.lf = load i16, ptr %i.je, align 2, !tbaa !68
  %i.lg = icmp eq i16 %i.lf, 0
  br i1 %i.lg, label %bb.p, label %.thread231.us.1

.thread231.us.1:                                  ; preds = %.split.us.1
  %i.lh = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.jd ; 2 uses
  %i.li = load i8, ptr %i.lh, align 2, !tbaa !46
  switch i8 %i.li, label %bb.m [
    i8 0, label %bb.l
    i8 2, label %bb.l
  ]

bb.l:                                             ; preds = %.thread231.us.1, %.thread231.us.1
  %i.lj = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.jd
  %i.lk = load i8, ptr %i.lj, align 2, !tbaa !46
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread231.us.1
  %i.ll = phi i8 [ %i.lk, %bb.l ], [ -1, %.thread231.us.1 ]
  %i.lm = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 6488
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !135
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !44
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %i.ja
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !45
  %i.ls = sext i32 %i.le to i64                   ; 4 uses
  %i.lt = getelementptr inbounds i8, ptr %i.lr, i64 %i.ls
  store i8 %i.ll, ptr %i.lt, align 1, !tbaa !46
  %i.lu = load i8, ptr %i.lh, align 2, !tbaa !46
  %.off229.us.1 = add i8 %i.lu, -1
  %switch230.us.1 = icmp ult i8 %.off229.us.1, 2
  br i1 %switch230.us.1, label %bb.n, label %.split.us.2

bb.n:                                             ; preds = %bb.m
  %i.lv = load i16, ptr %i.je, align 2, !tbaa !68
  %.not226.us.1 = icmp eq i16 %i.lv, 0
  br i1 %.not226.us.1, label %.split.us.2, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.lw = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.jd
  %i.lx = load i8, ptr %i.lw, align 2, !tbaa !46
  br label %.split.us.2

bb.p:                                             ; preds = %.split.us.1
  %i.ly = load ptr, ptr @direct_ref_idx, align 8, !tbaa !122
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !44
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.lz, i64 %i.ja
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !45
  %i.mc = sext i32 %i.le to i64                   ; 4 uses
  %i.md = getelementptr inbounds i8, ptr %i.mb, i64 %i.mc
  %i.me = load i8, ptr %i.md, align 1, !tbaa !46
  %i.mf = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 6488
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !135
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !44
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.mi, i64 %i.ja
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !45
  %i.ml = getelementptr inbounds i8, ptr %i.mk, i64 %i.mc
  store i8 %i.me, ptr %i.ml, align 1, !tbaa !46
  %i.mm = load ptr, ptr @direct_ref_idx, align 8, !tbaa !122
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !44
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %i.ja
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !45
  %i.mr = getelementptr inbounds i8, ptr %i.mq, i64 %i.mc
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !46
  br label %.split.us.2

.split.us.2:                                      ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %.sink374.a = phi i64 [ %i.mc, %bb.p ], [ %i.ls, %bb.o ], [ %i.ls, %bb.n ], [ %i.ls, %bb.m ]
  %.sink371 = phi i8 [ %i.ms, %bb.p ], [ %i.lx, %bb.o ], [ -1, %bb.n ], [ -1, %bb.m ]
end_hunk_0
