inline.NumInlined: 144
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN6LibRaw19canon_sraw_load_rawEv:bb.a
  %i.qp = load i64, ptr %i.lq, align 8, !tbaa !185 ; 2 uses
  switch i64 %i.qp, label %bb.bc [
    i64 2147484184, label %bb.bb
    i64 2147484240, label %bb.bb
    i64 2147484257, label %bb.bb
    i64 2147484289, label %bb.bb
    i64 2147484295, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba
  %i.qq = getelementptr inbounds nuw i8, ptr %.4311, i64 2 ; 2 uses
  %i.qr = load i16, ptr %i.qq, align 2, !tbaa !96
  %i.qs = sext i16 %i.qr to i32
  %i.qt = shl nsw i32 %i.qs, 2
  %i.qu = add nsw i32 %i.qt, %.0184               ; 2 uses
  %i.qv = trunc i32 %i.qu to i16
  store i16 %i.qv, ptr %i.qq, align 2, !tbaa !96
  %i.qw = getelementptr inbounds nuw i8, ptr %.4311, i64 4 ; 2 uses
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !96
  %i.qy = sext i16 %i.qx to i32
  %i.qz = shl nsw i32 %i.qy, 2
  %i.ra = add nsw i32 %i.qz, %.0184               ; 2 uses
  %i.rb = trunc i32 %i.ra to i16
  store i16 %i.rb, ptr %i.qw, align 2, !tbaa !96
  %i.rc = load i16, ptr %.4311, align 2, !tbaa !96
  %i.rd = sext i16 %i.rc to i32                   ; 3 uses
  %sext234 = shl i32 %i.qu, 16
  %i.re = ashr exact i32 %sext234, 16             ; 3 uses
  %i.rf = mul nsw i32 %i.re, 50
  %sext = shl i32 %i.ra, 16
  %i.rg = ashr exact i32 %sext, 16                ; 3 uses
  %i.rh = mul nsw i32 %i.rg, 22929
  %i.ri = add nsw i32 %i.rh, %i.rf
  %i.rj = ashr i32 %i.ri, 14
  %i.rk = add nsw i32 %i.rj, %i.rd
  %i.rl = mul nsw i32 %i.re, -5640
  %.neg = mul nsw i32 %i.rg, -11751
  %i.rm = add nsw i32 %.neg, %i.rl
  %i.rn = ashr i32 %i.rm, 14
  %i.ro = add nsw i32 %i.rn, %i.rd
  %i.rp = mul nsw i32 %i.re, 29040
  %.neg218 = mul nsw i32 %i.rg, -101
  %i.rq = add nsw i32 %.neg218, %i.rp
  %i.rr = ashr i32 %i.rq, 14
  %i.rs = add nsw i32 %i.rr, %i.rd
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  %i.rt = icmp ult i64 %i.qp, 2147484184
  %.pre357 = load i16, ptr %.4311, align 2, !tbaa !96 ; 2 uses
  br i1 %i.rt, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ru = add i16 %.pre357, -512                  ; 2 uses
  store i16 %i.ru, ptr %.4311, align 2, !tbaa !96
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.rv = phi i16 [ %i.ru, %bb.bd ], [ %.pre357, %bb.bc ]
  %i.rw = sext i16 %i.rv to i32                   ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.4311, i64 4
  %i.ry = load i16, ptr %i.rx, align 2, !tbaa !96
  %i.rz = sext i16 %i.ry to i32                   ; 2 uses
  %i.sa = add nsw i32 %i.rz, %i.rw
  %i.sb = getelementptr inbounds nuw i8, ptr %.4311, i64 2
  %i.sc = load i16, ptr %i.sb, align 2, !tbaa !96
  %i.sd = sext i16 %i.sc to i32                   ; 2 uses
  %i.se = add nsw i32 %i.sd, %i.rw
  %i.sf = mul nsw i32 %i.sd, -778
  %i.sg = shl nsw i32 %i.rz, 11
  %i.sh = sub nsw i32 %i.sf, %i.sg
  %i.si = ashr i32 %i.sh, 12
  %i.sj = add nsw i32 %i.si, %i.rw
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bb
  %.sroa.9.0 = phi i32 [ %i.se, %bb.be ], [ %i.rs, %bb.bb ]
  %.sroa.6.0 = phi i32 [ %i.sj, %bb.be ], [ %i.ro, %bb.bb ]
  %.sroa.0.0 = phi i32 [ %i.sa, %bb.be ], [ %i.rk, %bb.bb ]
  %i.sk = load i16, ptr %i.qm, align 2, !tbaa !96
  %i.sl = zext i16 %i.sk to i32
  %i.sm = mul nsw i32 %.sroa.0.0, %i.sl
  %i.sn = ashr i32 %i.sm, 10
  %i.so = call i32 @llvm.smax.i32(i32 %i.sn, i32 0)
  %i.sp = call i32 @llvm.umin.i32(i32 %i.so, i32 32767)
  %i.sq = trunc nuw nsw i32 %i.sp to i16
  store i16 %i.sq, ptr %.4311, align 2, !tbaa !96
  %i.sr = load i16, ptr %i.qn, align 4, !tbaa !96
  %i.ss = zext i16 %i.sr to i32
  %i.st = mul nsw i32 %.sroa.6.0, %i.ss
  %i.su = ashr i32 %i.st, 10
  %i.sv = call i32 @llvm.smax.i32(i32 %i.su, i32 0)
  %i.sw = call i32 @llvm.umin.i32(i32 %i.sv, i32 32767)
  %i.sx = trunc nuw nsw i32 %i.sw to i16
  %i.sy = getelementptr inbounds nuw i8, ptr %.4311, i64 2
  store i16 %i.sx, ptr %i.sy, align 2, !tbaa !96
  %i.sz = load i16, ptr %i.qo, align 2, !tbaa !96
  %i.ta = zext i16 %i.sz to i32
  %i.tb = mul nsw i32 %.sroa.9.0, %i.ta
  %i.tc = ashr i32 %i.tb, 10
  %i.td = call i32 @llvm.smax.i32(i32 %i.tc, i32 0)
  %i.te = call i32 @llvm.umin.i32(i32 %i.td, i32 32767)
  %i.tf = trunc nuw nsw i32 %i.te to i16
  %i.tg = getelementptr inbounds nuw i8, ptr %.4311, i64 4
  store i16 %i.tf, ptr %i.tg, align 2, !tbaa !96
  %i.th = getelementptr inbounds nuw i8, ptr %.4311, i64 8 ; 2 uses
  %i.ti = icmp ult ptr %i.th, %i.qf
  br i1 %i.ti, label %bb.az, label %.loopexit, !llvm.loop !189

bb.bg:                                            ; preds = %bb.ap, %bb.ao
  %i.tj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bp unwind label %bb.bq

.loopexit:                                        ; preds = %bb.bf, %bb.ak, %._crit_edge308
  store i16 %i.g, ptr %i.f, align 4, !tbaa !170
  store i16 %i.e, ptr %i.d, align 2, !tbaa !173
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !104 ; 2 uses
  %.not.i229 = icmp eq ptr %i.tl, null
  br i1 %.not.i229, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.loopexit
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.tl)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.loopexit
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !104 ; 2 uses
  %.not.1.i230 = icmp eq ptr %i.tn, null
  br i1 %.not.1.i230, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.tn)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !104 ; 2 uses
  %.not.2.i231 = icmp eq ptr %i.tp, null
  br i1 %.not.2.i231, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.tp)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !104 ; 2 uses
  %.not.3.i232 = icmp eq ptr %i.tr, null
  br i1 %.not.3.i232, label %_ZN6LibRaw9ljpeg_endEP5jhead.exit233, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.tr)
  br label %_ZN6LibRaw9ljpeg_endEP5jhead.exit233

_ZN6LibRaw9ljpeg_endEP5jhead.exit233:             ; preds = %bb.bm, %bb.bn
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !154
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.tt)
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 16383, ptr %i.tu, align 8, !tbaa !121
  br label %bb.bo

bb.bo:                                            ; preds = %bb.c, %_ZN6LibRaw9ljpeg_endEP5jhead.exit233, %_ZN6LibRaw9ljpeg_endEP5jhead.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void

bb.bp:                                            ; preds = %bb.bg, %bb.w
  %.pn = phi { ptr, i32 } [ %i.kt, %bb.w ], [ %i.tj, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  resume { ptr, i32 } %.pn

bb.bq:                                            ; preds = %bb.bg, %bb.w
  %i.tv = landingpad { ptr, i32 }
          catch ptr null
  %i.tw = extractvalue { ptr, i32 } %i.tv, 0
  call void @__clang_call_terminate(ptr %i.tw) #17
  unreachable

bb.br:                                            ; preds = %bb.ap, %bb.v
  unreachable
}

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw10ljpeg_idctEP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x [8 x [8 x float]]], align 16 ; 87 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = load float, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, align 512, !tbaa !190
  %i.c = fcmp reassoc nsz arcp contract afn une float %i.b, 0.000000e+00
  br i1 %i.c, label %.loopexit, label %vector.body

vector.body:                                      ; preds = %bb.a, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %bb.a ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %bb.a ] ; 2 uses
  %2 = and <8 x i32> %vec.ind, splat (i32 31)
  %3 = uitofp nneg <8 x i32> %2 to <8 x double>
  %4 = fmul reassoc nnan nsz arcp contract afn <8 x double> %3, splat (double f0x3FC921FB54442D18)
  %5 = tail call reassoc nsz arcp contract afn <8 x double> @llvm.cos.v8f64(<8 x double> %4)
  %6 = fmul reassoc nnan nsz arcp contract afn <8 x double> %5, splat (double 5.000000e-01)
  %7 = fptrunc reassoc nsz arcp contract afn <8 x double> %6 to <8 x float>
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 %index
  store <8 x float> %7, ptr %i.d, align 32, !tbaa !190
  %index.next.1 = add nuw i64 %index, 8           ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.e = icmp eq i64 %index.next.1, 104
  br i1 %i.e, label %.preheader80, label %vector.body, !llvm.loop !191

.preheader80:                                     ; preds = %vector.body
  store float f0x240D3132, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 416), align 32, !tbaa !190
  store float f0xBDC7C5C2, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 420), align 4, !tbaa !190
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader80, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(768) %i.a, i8 0, i64 768, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !104  ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.h = tail call ptr @__cxa_allocate_exception(i64 4) #15 ; 2 uses
  store i32 5, ptr %i.h, align 16, !tbaa !155
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #16
  unreachable

bb.c:                                             ; preds = %.loopexit
  %i.i = load i16, ptr %i.g, align 2, !tbaa !96
  %i.j = zext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.l = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.j, ptr noundef nonnull readonly %i.k) ; 4 uses
  %i.m = icmp eq i32 %i.l, 16
  br i1 %i.m, label %bb.d, label %.split.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.o = load i32, ptr %i.n, align 4, !tbaa !142
  %i.p = add i32 %i.o, -16842752
  %or.cond.i = icmp ult i32 %i.p, -16842751
  br i1 %or.cond.i, label %_ZN6LibRaw10ljpeg_diffEPt.exit, label %.split.i

.split.i:                                         ; preds = %bb.d, %bb.c
  %i.q = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.l, ptr noundef null) ; 2 uses
  %i.r = add nsw i32 %i.l, -1
  %i.s = shl nuw i32 1, %i.r
  %i.t = and i32 %i.q, %i.s
  %i.u = icmp eq i32 %i.t, 0
  %notmask.i = shl nsw i32 -1, %i.l
  %.neg.i = add nsw i32 %notmask.i, 1
  %i.v = select i1 %i.u, i32 %.neg.i, i32 0
  %.0.i = add nsw i32 %i.v, %i.q
  br label %_ZN6LibRaw10ljpeg_diffEPt.exit

_ZN6LibRaw10ljpeg_diffEPt.exit:                   ; preds = %bb.d, %.split.i
  %.011.i = phi i32 [ %.0.i, %.split.i ], [ -32768, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.x = load i16, ptr %i.w, align 8, !tbaa !96
  %i.y = zext i16 %i.x to i32
  %i.z = mul nsw i32 %.011.i, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !126
  %i.ac = add nsw i32 %i.z, %i.ab                 ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !126
  %i.ad = sitofp reassoc nsz arcp contract afn i32 %i.ac to float
  store float %i.ad, ptr %i.a, align 16, !tbaa !190
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 440
  br label %bb.e

bb.e:                                             ; preds = %_ZN6LibRaw10ljpeg_diffEPt.exit, %bb.f
  %.06682 = phi i32 [ 1, %_ZN6LibRaw10ljpeg_diffEPt.exit ], [ %i.bf, %bb.f ]
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !104 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !96
  %i.ah = zext i16 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.aj = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ah, ptr noundef nonnull %i.ai) ; 3 uses
  %i.ak = and i32 %i.aj, 15                       ; 4 uses
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = icmp samesign ult i32 %i.aj, 240
  %or.cond = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond, label %.preheader79.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = lshr i32 %i.aj, 4
  %i.ao = add nsw i32 %i.an, %.06682              ; 3 uses
  %i.ap = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ak, ptr noundef null) ; 2 uses
  %i.aq = add nsw i32 %i.ak, -1
  %i.ar = shl nuw nsw i32 1, %i.aq
  %i.as = and i32 %i.ap, %i.ar
  %i.at = icmp eq i32 %i.as, 0
  %notmask = shl nsw i32 -1, %i.ak
  %.neg = add nsw i32 %notmask, 1
  %i.au = select i1 %i.at, i32 %.neg, i32 0
  %.0 = add nsw i32 %i.au, %i.ap
  %i.av = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !96
  %i.ay = zext i16 %i.ax to i32
  %i.az = mul nsw i32 %.0, %i.ay
  %i.ba = sitofp reassoc nsz arcp contract afn i32 %i.az to float
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE6zigzag, i64 %i.av
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !98
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bd
  store float %i.ba, ptr %i.be, align 4, !tbaa !190
  %i.bf = add nuw nsw i32 %i.ao, 1
  %i.bg = icmp slt i32 %i.ao, 63
  br i1 %i.bg, label %bb.e, label %.preheader79.preheader, !llvm.loop !192

.preheader79.preheader:                           ; preds = %bb.e, %bb.f
  %i.bh = load <8 x float>, ptr %i.a, align 16, !tbaa !190
  %i.bi = fmul reassoc nsz arcp contract afn <8 x float> %i.bh, <float f0x3EFFFFFF, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3>
  store <8 x float> %i.bi, ptr %i.a, align 16, !tbaa !190
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 16, !tbaa !190
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, f0x3F3504F3
  store float %i.bl, ptr %i.bj, align 16, !tbaa !190
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 16, !tbaa !190
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, f0x3F3504F3
  store float %i.bo, ptr %i.bm, align 16, !tbaa !190
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.bq = load float, ptr %i.bp, align 16, !tbaa !190
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, f0x3F3504F3
  store float %i.br, ptr %i.bp, align 16, !tbaa !190
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 16, !tbaa !190
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, f0x3F3504F3
  store float %i.bu, ptr %i.bs, align 16, !tbaa !190
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 16, !tbaa !190
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, f0x3F3504F3
  store float %i.bx, ptr %i.bv, align 16, !tbaa !190
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.bz = load float, ptr %i.by, align 16, !tbaa !190
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, f0x3F3504F3
  store float %i.ca, ptr %i.by, align 16, !tbaa !190
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 16, !tbaa !190
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, f0x3F3504F3
  store float %i.cd, ptr %i.cb, align 16, !tbaa !190
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 9 uses
  %.pre = load float, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, align 512, !tbaa !190 ; 9 uses
  %.pre130 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 60), align 4, !tbaa !190
  %i.cf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 364), align 4, !tbaa !190
  %i.cg = load <7 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 4), align 4, !tbaa !190 ; 2 uses
  %i.ch = load <13 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 8), align 8, !tbaa !190
  %i.ci = load <13 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 72), align 8, !tbaa !190
  %i.cj = load <91 x float>, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, align 512, !tbaa !190 ; 7 uses
  %i.ck = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 420), align 4, !tbaa !190
  %i.cl = shufflevector <91 x float> %i.cj, <91 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 9, i32 11, i32 13, i32 15>
  %i.cm = shufflevector <7 x float> %i.cg, <7 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cn = shufflevector <8 x float> %i.cm, <8 x float> %i.cl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 3 uses
  %i.co = shufflevector <13 x float> %i.ch, <13 x float> %i.ci, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 13, i32 17, i32 21, i32 25> ; 2 uses
  %i.cp = shufflevector <8 x float> %i.cn, <8 x float> poison, <91 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cq = shufflevector <91 x float> %i.cp, <91 x float> %i.cj, <8 x i32> <i32 1, i32 4, i32 poison, i32 112, i32 118, i32 124, i32 130, i32 136>
  %i.cr = shufflevector <91 x float> %i.cj, <91 x float> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %i.cs = shufflevector <8 x float> %i.co, <8 x float> poison, <91 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ct = shufflevector <91 x float> %i.cs, <91 x float> %i.cj, <8 x i32> <i32 1, i32 4, i32 121, i32 133, i32 145, i32 157, i32 169, i32 181>
  %i.cu = insertelement <8 x float> poison, float %i.cf, i64 6
  %i.cv = insertelement <8 x float> %i.cu, float %i.ck, i64 7
  %i.cw = shufflevector <91 x float> %i.cj, <91 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 25, i32 35, i32 poison, i32 55, i32 65, i32 75>
  %i.cx = shufflevector <7 x float> %i.cg, <7 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 poison>
  %i.cy = shufflevector <8 x float> %i.cv, <8 x float> %i.cx, <8 x i32> <i32 14, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 7>
  %i.cz = shufflevector <91 x float> %i.cj, <91 x float> poison, <8 x i32> <i32 poison, i32 21, i32 35, i32 49, i32 63, i32 77, i32 poison, i32 poison>
  %i.da = shufflevector <8 x float> %i.cy, <8 x float> %i.cz, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 6, i32 7>
  %i.db = insertelement <3 x float> poison, float %.pre, i64 0
  %i.dc = shufflevector <3 x float> %i.db, <3 x float> poison, <91 x i32> <i32 0, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dd = shufflevector <91 x float> %i.dc, <91 x float> %i.cj, <3 x i32> <i32 0, i32 91, i32 2>
  %i.de = insertelement <8 x float> %i.cq, float %.pre130, i64 2 ; 2 uses
  %i.df = shufflevector <8 x float> %i.cn, <8 x float> %i.de, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 15, i32 poison, i32 poison, i32 poison>
  %i.dg = shufflevector <8 x float> %i.df, <8 x float> %i.cw, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 13, i32 14, i32 15>
  br label %.preheader77

.preheader77:                                     ; preds = %.preheader79.preheader, %.preheader77
  %indvars.iv110 = phi i64 [ 0, %.preheader79.preheader ], [ %indvars.iv.next111, %.preheader77 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv110 ; 9 uses
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %indvars.iv110 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.dq = load float, ptr %i.dh, align 16, !tbaa !190 ; 2 uses
  %i.dr = load <8 x float>, ptr %i.dh, align 16, !tbaa !190 ; 8 uses
  %i.ds = shufflevector <8 x float> %i.dr, <8 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.dt = insertelement <3 x float> %i.ds, float %i.dq, i64 1
  %i.du = insertelement <3 x float> %i.dt, float %i.dq, i64 2
  %i.dv = fmul reassoc nsz arcp contract afn <3 x float> %i.dd, %i.du
  %i.dw = shufflevector <3 x float> %i.dv, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.dx = load float, ptr %i.dj, align 4, !tbaa !190 ; 2 uses
  %i.dy = load float, ptr %i.dk, align 8, !tbaa !190 ; 2 uses
  %i.dz = load float, ptr %i.dl, align 4, !tbaa !190 ; 2 uses
  %i.ea = load float, ptr %i.dm, align 16, !tbaa !190 ; 2 uses
  %i.eb = load float, ptr %i.dn, align 4, !tbaa !190 ; 2 uses
  %i.ec = load <8 x float>, ptr %i.di, align 16, !tbaa !190
  %i.ed = fadd reassoc nsz arcp contract afn <8 x float> %i.ec, %i.dw
  %i.ee = shufflevector <8 x float> %i.dr, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ef = insertelement <8 x float> %i.ee, float %i.dx, i64 3
  %i.eg = insertelement <8 x float> %i.ef, float %i.dx, i64 6
  %i.eh = shufflevector <8 x float> %i.eg, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 3, i32 3, i32 6, i32 6>
  %i.ei = fmul reassoc nsz arcp contract afn <8 x float> %i.cn, %i.eh
  %i.ej = fadd reassoc nsz arcp contract afn <8 x float> %i.ed, %i.ei
  %i.ek = shufflevector <8 x float> %i.dr, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
end_hunk_0
begin_hunk_1_@_ZN6LibRaw17samsung2_load_rawEv:.lr.ph.preheader
  br i1 %.not21.i, label %..critedge.loopexit_crit_edge.i, label %bb.i

..critedge.loopexit_crit_edge.i:                  ; preds = %.lr.ph69
  %.pre.pre.i = load ptr, ptr %i.bp, align 8, !tbaa !11
  br label %.critedge.loopexit.i

bb.i:                                             ; preds = %.lr.ph69
  %i.ew = load i32, ptr %i.by, align 8, !tbaa !93
  %i.ex = icmp ne i32 %i.ew, 0
  %i.ey = icmp eq i32 %i.ev, 255
  %or.cond.i28 = and i1 %i.ey, %i.ex
  br i1 %or.cond.i28, label %bb.j, label %.critedge24.i

bb.j:                                             ; preds = %bb.i
  %i.ez = load ptr, ptr %i.bx, align 8, !tbaa !83 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !84
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = tail call noundef i32 %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %i.ez), !call_target !86, !inline_history !125
  %i.fe = icmp ne i32 %i.fd, 0                    ; 2 uses
  %i.ff = zext i1 %i.fe to i32
  %i.fg = load ptr, ptr %i.bp, align 8, !tbaa !11 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i32 %i.ff, ptr %i.fh, align 8, !tbaa !74
  br i1 %i.fe, label %.critedge.loopexit.i, label %bb.k

.critedge24.i:                                    ; preds = %bb.i
  %i.fi = load ptr, ptr %i.bp, align 8, !tbaa !11 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i32 0, ptr %i.fj, align 8, !tbaa !74
  br label %bb.k

bb.k:                                             ; preds = %.critedge24.i, %bb.j
  %i.fk = phi ptr [ %i.fi, %.critedge24.i ], [ %i.fg, %bb.j ] ; 4 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !82
  %i.fm = shl i32 %i.fl, 8
  %i.fn = and i32 %i.ev, 255
  %i.fo = or disjoint i32 %i.fm, %i.fn
  store i32 %i.fo, ptr %i.fk, align 8, !tbaa !82
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 4 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !81
  %i.fr = add nsw i32 %i.fq, 8                    ; 2 uses
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !81
  %i.fs = icmp slt i32 %i.fr, %.016.i34475059
  br i1 %i.fs, label %.lr.ph69, label %.critedge.loopexit.i, !llvm.loop !94

.critedge.loopexit.i:                             ; preds = %bb.k, %bb.j, %.lr.ph.i, %..critedge.loopexit_crit_edge.i
  %.pre.i = phi ptr [ %.pre.pre.i, %..critedge.loopexit_crit_edge.i ], [ %i.ek, %.lr.ph.i ], [ %i.fk, %bb.k ], [ %i.fg, %bb.j ] ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 4
  %.pre29.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !81
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.ft = phi i32 [ %.pre29.i, %.critedge.loopexit.i ], [ %i.em, %.preheader.i ] ; 3 uses
  %i.fu = phi ptr [ %.pre.i, %.critedge.loopexit.i ], [ %i.ek, %.preheader.i ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fw = icmp eq i32 %i.ft, 0
  br i1 %i.fw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge.i
  %i.fx = load i32, ptr %i.fu, align 8, !tbaa !82
  %i.fy = sub nsw i32 32, %i.ft
  %i.fz = shl i32 %i.fx, %i.fy
  %i.ga = sub nuw nsw i32 32, %.016.i34475059
  %i.gb = lshr i32 %i.fz, %i.ga
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge.i
  %i.gc = phi i32 [ %i.gb, %bb.l ], [ 0, %.critedge.i ] ; 2 uses
  %.sink.i27 = sub nsw i32 %i.ft, %.016.i34475059 ; 2 uses
  store i32 %.sink.i27, ptr %i.fv, align 4, !tbaa !81
  %i.gd = icmp slt i32 %.sink.i27, 0
  br i1 %i.gd, label %bb.n, label %_ZN6LibRaw10getbithuffEiPt.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %_ZN6LibRaw10getbithuffEiPt.exit

_ZN6LibRaw10getbithuffEiPt.exit:                  ; preds = %bb.a, %.split.i, %.split.i.thread.thread55, %bb.m, %bb.n
  %.016.i344751 = phi i32 [ 0, %bb.a ], [ %.016.i34475059, %bb.m ], [ %i.ee, %.split.i ], [ %.016.i34475059, %.split.i.thread.thread55 ], [ %.016.i34475059, %bb.n ] ; 2 uses
  %.016.i = phi i32 [ 0, %bb.a ], [ %i.gc, %bb.m ], [ 0, %.split.i ], [ 0, %.split.i.thread.thread55 ], [ %i.gc, %bb.n ] ; 2 uses
  %i.ge = add nsw i32 %.016.i344751, -1
  %i.gf = shl nuw i32 1, %i.ge
  %i.gg = and i32 %i.gf, %.016.i
  %i.gh = icmp eq i32 %i.gg, 0
  %notmask.i = shl nsw i32 -1, %.016.i344751
  %.neg.i = add nsw i32 %notmask.i, 1
  %i.gi = select i1 %i.gh, i32 %.neg.i, i32 0
  %.0.i = add nsw i32 %i.gi, %.016.i
  %i.gj = trunc i32 %.0.i to i16
  br label %_ZN6LibRaw10ljpeg_diffEPt.exit

_ZN6LibRaw10ljpeg_diffEPt.exit:                   ; preds = %bb.h, %_ZN6LibRaw10getbithuffEiPt.exit
  %.011.i = phi i16 [ %i.gj, %_ZN6LibRaw10getbithuffEiPt.exit ], [ -32768, %bb.h ] ; 2 uses
  %i.gk = icmp samesign ult i64 %indvars.iv95, 2
  br i1 %i.gk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6LibRaw10ljpeg_diffEPt.exit
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %indvars.iv95 ; 2 uses
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !96
  %i.gn = add i16 %i.gm, %.011.i                  ; 2 uses
  store i16 %i.gn, ptr %i.gl, align 2, !tbaa !96
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv95
  store i16 %i.gn, ptr %i.go, align 2, !tbaa !96
  br label %bb.q

bb.p:                                             ; preds = %_ZN6LibRaw10ljpeg_diffEPt.exit
  %i.gp = and i64 %indvars.iv95, 1                ; 2 uses
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.gp ; 2 uses
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !96
  %i.gs = add i16 %i.gr, %.011.i
  store i16 %i.gs, ptr %i.gq, align 2, !tbaa !96
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre-phi105 = phi i64 [ %i.gp, %bb.p ], [ %indvars.iv95, %bb.o ]
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %.pre-phi105
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !96 ; 2 uses
  %i.gv = load ptr, ptr %i.ca, align 8, !tbaa !124
  %i.gw = load i16, ptr %i.bv, align 2, !tbaa !123
  %i.gx = zext i16 %i.gw to i32
  %i.gy = mul nuw nsw i32 %.02377, %i.gx
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %indvars.iv95
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %i.gz
  store i16 %i.gu, ptr %i.hb, align 2, !tbaa !96
  %i.hc = zext i16 %i.gu to i32
  %i.hd = load i32, ptr %i.cb, align 4, !tbaa !203
  %i.he = lshr i32 %i.hc, %i.hd
  %.not = icmp eq i32 %i.he, 0
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.hf = load i16, ptr %i.bv, align 2, !tbaa !123
  %i.hg = zext i16 %i.hf to i64
  %i.hh = icmp samesign ult i64 %indvars.iv.next96, %i.hg
  br i1 %i.hh, label %bb.a, label %._crit_edge76.split, !llvm.loop !264

._crit_edge76.split:                              ; preds = %bb.s, %.lr.ph80.split
  %i.hi = add nuw nsw i32 %.02377, 1              ; 2 uses
  %i.hj = load i16, ptr %i.bt, align 8, !tbaa !122
  %i.hk = zext i16 %i.hj to i32
  %i.hl = icmp samesign ult i32 %i.hi, %i.hk
  br i1 %i.hl, label %.lr.ph80.split, label %._crit_edge81, !llvm.loop !265

._crit_edge81:                                    ; preds = %._crit_edge76.split, %.lr.ph.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.bswap.v16i16(<16 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.bswap.v2i16(<2 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.cos.v8f64(<8 x double>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <7 x i32> @llvm.masked.gather.v7i32.v7p0(<7 x ptr>, <7 x i1>, <7 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.umax.v16i16(<16 x i16>, <16 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.umin.v16i16(<16 x i16>, <16 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umin.v8i16(<8 x i16>, <8 x i16>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v15i8.p0(<15 x i8>, ptr captures(none), <15 x i1>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v31i8.p0(<31 x i8>, ptr captures(none), <31 x i1>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { cold noreturn }
attributes #7 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !60, i64 381584}
!12 = !{!"_ZTS6LibRaw", !13, i64 8, !60, i64 381584, !61, i64 381592, !9, i64 384344, !71, i64 433496, !71, i64 433504, !9, i64 433512, !72, i64 768232, !73, i64 768248, !9, i64 768400, !9, i64 768416, !9, i64 768432, !15, i64 768448, !15, i64 768456, !15, i64 768464, !52, i64 768472, !15, i64 768480, !15, i64 768488, !15, i64 768496, !15, i64 768504}
!13 = !{!"_ZTS13libraw_data_t", !14, i64 0, !16, i64 8, !19, i64 192, !21, i64 632, !27, i64 1928, !43, i64 5088, !44, i64 5232, !45, i64 5536, !8, i64 5584, !8, i64 5588, !48, i64 5592, !51, i64 192680, !54, i64 193480, !56, i64 193504, !57, i64 193768, !15, i64 381568}
!14 = !{!"p1 short", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"_ZTS20libraw_image_sizes_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !17, i64 14, !8, i64 16, !18, i64 24, !8, i64 32, !9, i64 36, !17, i64 164, !9, i64 166}
!17 = !{!"short", !9, i64 0}
!18 = !{!"double", !9, i64 0}
!19 = !{!"_ZTS16libraw_iparams_t", !9, i64 0, !9, i64 4, !9, i64 68, !9, i64 132, !9, i64 196, !9, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !9, i64 348, !9, i64 384, !9, i64 420, !8, i64 428, !20, i64 432}
!20 = !{!"p1 omnipotent char", !15, i64 0}
!21 = !{!"_ZTS17libraw_lensinfo_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !9, i64 20, !9, i64 148, !9, i64 276, !9, i64 404, !17, i64 532, !23, i64 536, !24, i64 544, !25, i64 560}
!22 = !{!"float", !9, i64 0}
!23 = !{!"_ZTS18libraw_nikonlens_t", !22, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7}
!24 = !{!"_ZTS16libraw_dnglens_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!25 = !{!"_ZTS24libraw_makernotes_lens_t", !26, i64 0, !9, i64 8, !17, i64 136, !17, i64 138, !26, i64 144, !17, i64 152, !17, i64 154, !9, i64 156, !17, i64 220, !9, i64 222, !9, i64 238, !22, i64 256, !22, i64 260, !22, i64 264, !22, i64 268, !22, i64 272, !22, i64 276, !22, i64 280, !22, i64 284, !22, i64 288, !22, i64 292, !22, i64 296, !22, i64 300, !22, i64 304, !22, i64 308, !22, i64 312, !26, i64 320, !9, i64 328, !26, i64 456, !9, i64 464, !26, i64 592, !9, i64 600, !17, i64 728, !22, i64 732}
!26 = !{!"long long", !9, i64 0}
!27 = !{!"_ZTS19libraw_makernotes_t", !28, i64 0, !30, i64 168, !32, i64 464, !33, i64 848, !34, i64 1200, !35, i64 1664, !36, i64 1848, !37, i64 2092, !38, i64 2160, !39, i64 2196, !40, i64 2648, !41, i64 2720, !42, i64 2856}
!28 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16, !8, i64 32, !9, i64 36, !17, i64 52, !17, i64 54, !9, i64 56, !17, i64 58, !17, i64 60, !17, i64 62, !17, i64 64, !17, i64 66, !17, i64 68, !17, i64 70, !17, i64 72, !17, i64 74, !17, i64 76, !17, i64 78, !17, i64 80, !17, i64 82, !8, i64 84, !22, i64 88, !17, i64 92, !17, i64 94, !17, i64 96, !17, i64 98, !8, i64 100, !17, i64 104, !8, i64 108, !8, i64 112, !17, i64 116, !8, i64 120, !29, i64 124, !29, i64 132, !29, i64 140, !29, i64 148, !29, i64 156, !9, i64 164}
!29 = !{!"_ZTS13libraw_area_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6}
!30 = !{!"_ZTS25libraw_nikon_makernotes_t", !18, i64 0, !17, i64 8, !17, i64 10, !9, i64 12, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 34, !9, i64 54, !9, i64 58, !9, i64 62, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 69, !9, i64 70, !9, i64 71, !9, i64 73, !9, i64 74, !9, i64 75, !9, i64 76, !9, i64 77, !9, i64 78, !9, i64 82, !9, i64 86, !17, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !9, i64 112, !9, i64 144, !9, i64 145, !9, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !9, i64 160, !9, i64 162, !17, i64 170, !31, i64 172, !17, i64 180, !17, i64 182, !17, i64 184, !8, i64 188, !9, i64 192, !9, i64 212, !8, i64 232, !9, i64 236, !8, i64 248, !20, i64 256, !17, i64 264, !17, i64 266, !9, i64 268, !17, i64 270, !18, i64 272, !18, i64 280, !18, i64 288}
!31 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6}
!32 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !18, i64 8, !9, i64 16, !9, i64 24, !9, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !9, i64 168, !9, i64 200, !8, i64 264, !9, i64 268, !9, i64 276, !9, i64 288}
!33 = !{!"_ZTS18libraw_fuji_info_t", !22, i64 0, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !17, i64 14, !17, i64 16, !17, i64 18, !9, i64 20, !9, i64 53, !22, i64 88, !17, i64 92, !17, i64 94, !9, i64 96, !17, i64 100, !8, i64 104, !8, i64 108, !17, i64 112, !9, i64 114, !17, i64 120, !17, i64 122, !17, i64 124, !17, i64 126, !17, i64 128, !8, i64 132, !17, i64 136, !9, i64 138, !9, i64 151, !9, i64 156, !8, i64 164, !17, i64 168, !8, i64 172, !17, i64 176, !9, i64 178, !9, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !9, i64 336, !8, i64 344}
!34 = !{!"_ZTS27libraw_olympus_makernotes_t", !9, i64 0, !17, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !9, i64 64, !9, i64 72, !17, i64 82, !9, i64 84, !17, i64 88, !17, i64 90, !9, i64 92, !9, i64 352, !17, i64 392, !9, i64 394, !9, i64 396, !9, i64 404, !17, i64 416, !17, i64 418, !17, i64 420, !17, i64 422, !18, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !8, i64 452, !17, i64 456, !17, i64 458}
!35 = !{!"_ZTS18libraw_sony_info_t", !17, i64 0, !9, i64 2, !9, i64 3, !8, i64 4, !9, i64 8, !8, i64 12, !9, i64 16, !9, i64 17, !17, i64 18, !9, i64 20, !9, i64 24, !9, i64 25, !17, i64 26, !9, i64 28, !9, i64 38, !9, i64 39, !9, i64 40, !17, i64 48, !9, i64 50, !9, i64 51, !9, i64 52, !17, i64 54, !8, i64 56, !17, i64 60, !9, i64 62, !17, i64 66, !17, i64 68, !17, i64 70, !17, i64 72, !17, i64 74, !17, i64 76, !17, i64 78, !8, i64 80, !22, i64 84, !17, i64 88, !8, i64 92, !8, i64 96, !17, i64 100, !9, i64 102, !8, i64 124, !17, i64 128, !8, i64 132, !9, i64 136, !9, i64 137, !17, i64 138, !17, i64 140, !17, i64 142, !17, i64 144, !17, i64 146, !17, i64 148, !17, i64 150, !17, i64 152, !17, i64 154, !8, i64 156, !17, i64 160, !9, i64 162, !22, i64 180}
!36 = !{!"_ZTS25libraw_kodak_makernotes_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !9, i64 12, !9, i64 48, !9, i64 84, !9, i64 120, !9, i64 156, !9, i64 192, !17, i64 228, !17, i64 230, !17, i64 232, !17, i64 234, !22, i64 236, !22, i64 240}
!37 = !{!"_ZTS29libraw_panasonic_makernotes_t", !17, i64 0, !17, i64 2, !9, i64 4, !8, i64 36, !22, i64 40, !9, i64 44, !17, i64 56, !17, i64 58, !8, i64 60, !8, i64 64}
!38 = !{!"_ZTS26libraw_pentax_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !17, i64 12, !8, i64 16, !8, i64 20, !17, i64 24, !9, i64 26, !17, i64 30, !9, i64 32, !9, i64 33, !17, i64 34}
!39 = !{!"_ZTS22libraw_p1_makernotes_t", !9, i64 0, !9, i64 64, !9, i64 128, !9, i64 384}
!40 = !{!"_ZTS25libraw_ricoh_makernotes_t", !17, i64 0, !9, i64 4, !9, i64 12, !17, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !17, i64 40, !17, i64 42, !17, i64 44, !17, i64 46, !17, i64 48, !17, i64 50, !18, i64 56, !18, i64 64}
!41 = !{!"_ZTS27libraw_samsung_makernotes_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 40, !18, i64 88, !8, i64 96, !9, i64 100}
!42 = !{!"_ZTS24libraw_metadata_common_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !22, i64 36, !22, i64 40, !22, i64 44, !22, i64 48, !22, i64 52, !22, i64 56, !22, i64 60, !17, i64 64, !9, i64 66, !22, i64 196, !9, i64 200, !8, i64 296}
!43 = !{!"_ZTS21libraw_shootinginfo_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !9, i64 14, !9, i64 78}
!44 = !{!"_ZTS22libraw_output_params_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 64, !9, i64 112, !22, i64 128, !22, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !20, i64 168, !20, i64 176, !20, i64 184, !20, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !9, i64 224, !8, i64 240, !8, i64 244, !22, i64 248, !22, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !22, i64 288, !22, i64 292, !8, i64 296, !8, i64 300}
!45 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !22, i64 28, !9, i64 32, !46, i64 40}
!46 = !{!"p2 omnipotent char", !47, i64 0}
!47 = !{!"any p2 pointer", !15, i64 0}
!48 = !{!"_ZTS18libraw_colordata_t", !9, i64 0, !9, i64 131072, !8, i64 147488, !8, i64 147492, !8, i64 147496, !9, i64 147500, !22, i64 147516, !22, i64 147520, !9, i64 147524, !9, i64 147652, !9, i64 147668, !9, i64 147684, !9, i64 147732, !9, i64 147780, !9, i64 147828, !49, i64 147876, !22, i64 147912, !22, i64 147916, !9, i64 147920, !9, i64 147984, !9, i64 148048, !9, i64 148112, !9, i64 148176, !9, i64 148193, !15, i64 148264, !8, i64 148272, !9, i64 148276, !9, i64 148308, !50, i64 148648, !9, i64 181624, !9, i64 185720, !8, i64 187000, !9, i64 187004, !8, i64 187076, !8, i64 187080}
!49 = !{!"_ZTS5ph1_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !22, i64 32}
!50 = !{!"_ZTS19libraw_dng_levels_t", !8, i64 0, !9, i64 4, !8, i64 16420, !9, i64 16424, !22, i64 32840, !9, i64 32844, !9, i64 32860, !9, i64 32868, !8, i64 32884, !9, i64 32888, !9, i64 32904, !22, i64 32920, !22, i64 32924, !9, i64 32928}
!51 = !{!"_ZTS17libraw_imgother_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !52, i64 16, !8, i64 24, !9, i64 28, !53, i64 156, !9, i64 204, !9, i64 716, !9, i64 780}
!52 = !{!"long", !9, i64 0}
!53 = !{!"_ZTS17libraw_gps_info_t", !9, i64 0, !9, i64 12, !9, i64 24, !22, i64 36, !9, i64 40, !9, i64 41, !9, i64 42, !9, i64 43, !9, i64 44}
!54 = !{!"_ZTS18libraw_thumbnail_t", !55, i64 0, !17, i64 4, !17, i64 6, !8, i64 8, !8, i64 12, !20, i64 16}
!55 = !{!"_ZTS24LibRaw_thumbnail_formats", !9, i64 0}
!56 = !{!"_ZTS23libraw_thumbnail_list_t", !8, i64 0, !9, i64 8}
!57 = !{!"_ZTS16libraw_rawdata_t", !15, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !14, i64 56, !14, i64 64, !19, i64 72, !16, i64 512, !59, i64 696, !48, i64 712}
!58 = !{!"p1 float", !15, i64 0}
!59 = !{!"_ZTS31libraw_internal_output_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !17, i64 12, !17, i64 14}
!60 = !{!"p1 _ZTS10LibRaw_TLS", !15, i64 0}
!61 = !{!"_ZTS22libraw_internal_data_t", !62, i64 0, !59, i64 64, !65, i64 80, !67, i64 96, !68, i64 136}
!62 = !{!"_ZTS15internal_data_t", !63, i64 0, !64, i64 8, !8, i64 16, !20, i64 24, !26, i64 32, !26, i64 40, !9, i64 48}
!63 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !15, i64 0}
!64 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!65 = !{!"_ZTS13output_data_t", !66, i64 0, !66, i64 8}
!66 = !{!"p1 int", !15, i64 0}
!67 = !{!"_ZTS15identify_data_t", !8, i64 0, !26, i64 8, !26, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!68 = !{!"_ZTS15unpacker_data_t", !17, i64 0, !9, i64 2, !9, i64 10, !8, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !26, i64 56, !26, i64 64, !26, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !69, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !26, i64 144, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !70, i64 192, !9, i64 440, !8, i64 2488, !8, i64 2492, !17, i64 2496, !17, i64 2498, !8, i64 2500, !8, i64 2504, !8, i64 2508, !8, i64 2512, !8, i64 2516, !8, i64 2520, !8, i64 2524, !9, i64 2528, !17, i64 2608}
!69 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !9, i64 0}
!70 = !{!"_ZTS12pana8_tags_t", !9, i64 0, !9, i64 24, !17, i64 36, !9, i64 38, !9, i64 46, !9, i64 80, !9, i64 114, !17, i64 148, !17, i64 150, !9, i64 152, !9, i64 192, !9, i64 204, !9, i64 224, !9, i64 234}
!71 = !{!"p1 _ZTS6decode", !15, i64 0}
!72 = !{!"_ZTS13libraw_memmgr", !47, i64 0, !8, i64 8}
!73 = !{!"_ZTS18libraw_callbacks_t", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144}
!74 = !{!75, !8, i64 8}
!75 = !{!"_ZTS10LibRaw_TLS", !76, i64 0, !77, i64 16, !78, i64 32, !79, i64 548, !9, i64 16944, !80, i64 21040}
!76 = !{!"_ZTSN10LibRaw_TLSUt_E", !8, i64 0, !8, i64 4, !8, i64 8}
!77 = !{!"_ZTSN10LibRaw_TLSUt0_E", !26, i64 0, !8, i64 8}
!78 = !{!"_ZTSN10LibRaw_TLSUt1_E", !9, i64 0, !8, i64 512}
!79 = !{!"_ZTSN10LibRaw_TLSUt2_E", !9, i64 0, !8, i64 16388, !8, i64 16392}
!80 = !{!"_ZTSN10LibRaw_TLSUt3_E", !9, i64 0, !9, i64 262144}
!81 = !{!75, !8, i64 4}
!82 = !{!75, !8, i64 0}
!83 = !{!12, !63, i64 381592}
!84 = !{!85, !85, i64 0}
!85 = !{!"vtable pointer", !10, i64 0}
!86 = !DISubprogram(name: "get_char", linkageName: "_ZN26LibRaw_abstract_datastream8get_charEv", scope: !88, file: !87, line: 105, type: !89, scopeLine: 105, containingType: !88, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!87 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!88 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !87, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!89 = !DISubroutineType(types: !90)
!90 = !{!91, !92}
!91 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!93 = !{!12, !8, i64 381848}
!94 = distinct !{!94, !95}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!17, !17, i64 0}
!97 = !{!20, !20, i64 0}
!98 = !{!9, !9, i64 0}
!99 = distinct !{!99, !95}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = distinct !{!102, !95}
!103 = distinct !{!103, !95}
!104 = !{!14, !14, i64 0}
!105 = !DISubprogram(name: "seek", linkageName: "_ZN26LibRaw_abstract_datastream4seekExi", scope: !88, file: !87, line: 102, type: !106, scopeLine: 102, containingType: !88, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!106 = !DISubroutineType(types: !107)
!107 = !{!91, !92, !108, !91}
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !109, line: 109, baseType: !110)
!109 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_types.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "b83e9769365a38f23d349f0ab8a63a99")
!110 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!111 = !DISubprogram(name: "read", linkageName: "_ZN26LibRaw_abstract_datastream4readEPvmm", scope: !88, file: !87, line: 101, type: !112, scopeLine: 101, containingType: !88, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!112 = !DISubroutineType(types: !113)
!113 = !{!91, !92, !114, !115, !115}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !116, line: 18, baseType: !117)
!116 = !DIFile(filename: "/usr/lib/llvm-24/lib/clang/24/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!117 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!118 = distinct !{!118, !95}
!119 = !{!12, !8, i64 381840}
!120 = !{ptr @_ZN6LibRaw17canon_has_lowbitsEv}
!121 = !{!12, !8, i64 153096}
!122 = !{!12, !17, i64 16}
!123 = !{!12, !17, i64 18}
!124 = !{!12, !14, i64 193784}
!125 = !{ptr @_ZN6LibRaw10getbithuffEiPt}
!126 = !{!8, !8, i64 0}
!127 = distinct !{!127, !95}
!128 = distinct !{!128, !95}
!129 = distinct !{!129, !95}
!130 = !DISubprogram(name: "tell", linkageName: "_ZN26LibRaw_abstract_datastream4tellEv", scope: !88, file: !87, line: 103, type: !131, scopeLine: 103, containingType: !88, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!131 = !DISubroutineType(types: !132)
!132 = !{!108, !92}
!133 = distinct !{!133, !95}
!134 = distinct !{!134, !95}
!135 = !{!136, !8, i64 28}
!136 = !{!"_ZTS5jhead", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !9, i64 32, !9, i64 56, !9, i64 184, !9, i64 312, !9, i64 472, !14, i64 632}
!137 = !DISubprogram(name: "eof", linkageName: "_ZN26LibRaw_abstract_datastream3eofEv", scope: !88, file: !87, line: 108, type: !89, scopeLine: 108, containingType: !88, virtualIndex: 10, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!138 = !{!136, !8, i64 20}
!139 = !{!136, !8, i64 0}
!140 = !{!136, !8, i64 4}
!141 = !{!136, !8, i64 16}
!142 = !{!12, !8, i64 532}
end_hunk_1
