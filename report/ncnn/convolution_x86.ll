Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86?download=true
inline.NumInlined: 404
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined:bb.a
  %i.pz = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.qa = load i64, ptr %i.pz, align 1, !tbaa !108
  %i.qb = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.qa, i64 0
  %i.qc = bitcast <2 x i64> %i.qb to <16 x i8>    ; 2 uses
  %.lobit.i164.3 = ashr <16 x i8> %i.qc, splat (i8 7)
  %i.qd = shufflevector <16 x i8> %i.qc, <16 x i8> %.lobit.i164.3, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.qe = bitcast <16 x i8> %i.qd to <2 x i64>
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0156.3 = phi <2 x i64> [ %i.qe, %bb.az ], [ zeroinitializer, %bb.ay ] ; 2 uses
  %i.qf = icmp slt i32 %i.bf, %i.ba
  br i1 %i.qf, label %bb.bb, label %.thread.3

bb.bb:                                            ; preds = %bb.ba
  %i.qg = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  %i.qh = load i64, ptr %i.qg, align 1, !tbaa !108
  %i.qi = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.qh, i64 0
  %i.qj = bitcast <2 x i64> %i.qi to <16 x i8>    ; 2 uses
  %.lobit.i163.3 = ashr <16 x i8> %i.qj, splat (i8 7)
  %i.qk = shufflevector <16 x i8> %i.qj, <16 x i8> %.lobit.i163.3, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ql = bitcast <16 x i8> %i.qk to <2 x i64>
  br label %.thread.3

.thread.3:                                        ; preds = %bb.bb, %bb.ba, %bb.av, %bb.au, %bb.ap, %.thread.2
  %.3159.3 = phi <2 x i64> [ zeroinitializer, %.thread.2 ], [ zeroinitializer, %bb.ap ], [ %.2158.3, %bb.av ], [ %.2158.3, %bb.au ], [ %.0156.3, %bb.ba ], [ %.0156.3, %bb.bb ]
  %.2155.3 = phi <2 x i64> [ zeroinitializer, %.thread.2 ], [ zeroinitializer, %bb.ap ], [ %i.pl, %bb.av ], [ zeroinitializer, %bb.au ], [ zeroinitializer, %bb.ba ], [ %i.ql, %bb.bb ]
  %.3.3 = phi <2 x i64> [ zeroinitializer, %.thread.2 ], [ zeroinitializer, %bb.ap ], [ %.2.3, %bb.av ], [ %.2.3, %bb.au ], [ %.0151.3, %bb.ba ], [ %.0151.3, %bb.bb ]
  %.1.3 = phi <2 x i64> [ zeroinitializer, %.thread.2 ], [ zeroinitializer, %bb.ap ], [ %i.pc, %bb.av ], [ %i.pc, %bb.au ], [ %i.pq, %bb.ba ], [ %i.pq, %bb.bb ]
  %i.qm = bitcast <2 x i64> %.1.3 to <8 x i16>
  %i.qn = bitcast <2 x i64> %.3159.3 to <8 x i16> ; 3 uses
  %i.qo = bitcast <2 x i64> %.3.3 to <8 x i16>    ; 3 uses
  %i.qp = add <8 x i16> %i.qo, %i.qn
  %i.qq = bitcast <2 x i64> %.2155.3 to <8 x i16>
  %i.qr = load ptr, ptr %13, align 8, !tbaa !34
  %i.qs = mul i32 %i.v, %i.w
  %i.qt = sext i32 %i.qs to i64
  %i.qu = getelementptr inbounds [2 x i8], ptr %i.qr, i64 %i.qt
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 %.idx ; 5 uses
  %i.qw = shl nsw i32 %i.w, 3
  %i.qx = sext i32 %i.qw to i64
  %i.qy = getelementptr inbounds [2 x i8], ptr %i.qv, i64 %i.qx ; 2 uses
  %i.qz = shl nsw i32 %i.w, 4
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds [2 x i8], ptr %i.qv, i64 %i.ra ; 2 uses
  %i.rc = mul nsw i32 %i.w, 24
  %i.rd = sext i32 %i.rc to i64
  %i.re = getelementptr inbounds [2 x i8], ptr %i.qv, i64 %i.rd ; 2 uses
  %i.rf = add <8 x i16> %i.mq, %i.ew
  %i.rg = sub <8 x i16> %i.ev, %i.rf
  %i.rh = add <8 x i16> %i.mq, %i.is
  %i.ri = sub <8 x i16> %i.mq, %i.is
  %i.rj = add <8 x i16> %i.is, %i.qn
  %i.rk = sub <8 x i16> %i.qm, %i.rj
  store <8 x i16> %i.rg, ptr %i.qv, align 16, !tbaa !108
  store <8 x i16> %i.rh, ptr %i.qy, align 16, !tbaa !108
  store <8 x i16> %i.ri, ptr %i.rb, align 16, !tbaa !108
  store <8 x i16> %i.rk, ptr %i.re, align 16, !tbaa !108
  %i.rl = load i32, ptr %4, align 4, !tbaa !78
  %i.rm = shl nsw i32 %i.rl, 5
  %i.rn = sext i32 %i.rm to i64                   ; 4 uses
  %i.ro = getelementptr inbounds [2 x i8], ptr %i.qv, i64 %i.rn ; 2 uses
  %i.rp = getelementptr inbounds [2 x i8], ptr %i.qy, i64 %i.rn ; 2 uses
  %i.rq = getelementptr inbounds [2 x i8], ptr %i.rb, i64 %i.rn ; 2 uses
  %i.rr = getelementptr inbounds [2 x i8], ptr %i.re, i64 %i.rn ; 2 uses
  %i.rs = sub <8 x i16> %i.ey, %i.ms
  %i.rt = add <8 x i16> %i.ms, %i.iu
  %i.ru = sub <8 x i16> %i.ms, %i.iu
  %i.rv = sub <8 x i16> %i.qp, %i.iu
  store <8 x i16> %i.rs, ptr %i.ro, align 16, !tbaa !108
  store <8 x i16> %i.rt, ptr %i.rp, align 16, !tbaa !108
  store <8 x i16> %i.ru, ptr %i.rq, align 16, !tbaa !108
  store <8 x i16> %i.rv, ptr %i.rr, align 16, !tbaa !108
  %i.rw = load i32, ptr %4, align 4, !tbaa !78
  %i.rx = shl nsw i32 %i.rw, 5
  %i.ry = sext i32 %i.rx to i64                   ; 4 uses
  %i.rz = getelementptr inbounds [2 x i8], ptr %i.ro, i64 %i.ry ; 2 uses
  %i.sa = getelementptr inbounds [2 x i8], ptr %i.rp, i64 %i.ry ; 2 uses
  %i.sb = getelementptr inbounds [2 x i8], ptr %i.rq, i64 %i.ry ; 2 uses
  %i.sc = getelementptr inbounds [2 x i8], ptr %i.rr, i64 %i.ry ; 2 uses
  %i.sd = add <8 x i16> %i.mt, %i.ex
  %i.se = sub <8 x i16> %i.ew, %i.sd
  %i.sf = add <8 x i16> %i.mt, %i.iv
  %i.sg = sub <8 x i16> %i.mt, %i.iv
  %i.sh = add <8 x i16> %i.iv, %i.qo
  %i.si = sub <8 x i16> %i.qn, %i.sh
  store <8 x i16> %i.se, ptr %i.rz, align 16, !tbaa !108
  store <8 x i16> %i.sf, ptr %i.sa, align 16, !tbaa !108
  store <8 x i16> %i.sg, ptr %i.sb, align 16, !tbaa !108
  store <8 x i16> %i.si, ptr %i.sc, align 16, !tbaa !108
  %i.sj = load i32, ptr %4, align 4, !tbaa !78
  %i.sk = shl nsw i32 %i.sj, 5
  %i.sl = sext i32 %i.sk to i64                   ; 4 uses
  %i.sm = getelementptr inbounds [2 x i8], ptr %i.rz, i64 %i.sl
  %i.sn = getelementptr inbounds [2 x i8], ptr %i.sa, i64 %i.sl
  %i.so = getelementptr inbounds [2 x i8], ptr %i.sb, i64 %i.sl
  %i.sp = getelementptr inbounds [2 x i8], ptr %i.sc, i64 %i.sl
  %i.sq = add <8 x i16> %i.mv, %i.ex
  %i.sr = sub <8 x i16> %i.ez, %i.sq
  %i.ss = add <8 x i16> %i.mv, %i.ix
  %i.st = sub <8 x i16> %i.mv, %i.ix
  %i.su = add <8 x i16> %i.ix, %i.qo
  %i.sv = sub <8 x i16> %i.qq, %i.su
  store <8 x i16> %i.sr, ptr %i.sm, align 16, !tbaa !108
  store <8 x i16> %i.ss, ptr %i.sn, align 16, !tbaa !108
  store <8 x i16> %i.st, ptr %i.so, align 16, !tbaa !108
  store <8 x i16> %i.sv, ptr %i.sp, align 16, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.sw = load i32, ptr %4, align 4, !tbaa !78    ; 3 uses
  %i.sx = sext i32 %i.sw to i64
  %i.sy = icmp slt i64 %indvars.iv.next, %i.sx
  br i1 %i.sy, label %.noexc, label %._crit_edge, !llvm.loop !1427

._crit_edge:                                      ; preds = %.thread.3, %.lr.ph.split
  %i.sz = phi i32 [ %i.q, %.lr.ph.split ], [ %i.sw, %.thread.3 ]
  %i.ta = add i32 %.0187, 1
  %exitcond.not = icmp eq i32 %.0187, %i.j
  br i1 %exitcond.not, label %._crit_edge189, label %.lr.ph.split, !llvm.loop !1428

._crit_edge189:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge189, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !78     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !78
  %i.h = load i32, ptr %0, align 4, !tbaa !78     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !78
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !78
  %i.k = load i32, ptr %i.a, align 4, !tbaa !78   ; 2 uses
  %.not126 = icmp sgt i32 %i.k, %i.j
  br i1 %.not126, label %._crit_edge, label %_ZN4ncnn3MatD2Ev.exit36.lr.ph

_ZN4ncnn3MatD2Ev.exit36.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  br label %_ZN4ncnn3MatD2Ev.exit36

_ZN4ncnn3MatD2Ev.exit36:                          ; preds = %_ZN4ncnn3MatD2Ev.exit36.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.0127 = phi i32 [ %i.k, %_ZN4ncnn3MatD2Ev.exit36.lr.ph ], [ %i.bnu, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.s = load i32, ptr %3, align 4, !tbaa !78     ; 2 uses
  %i.t = sdiv i32 %.0127, %i.s                    ; 2 uses
  %i.u = srem i32 %.0127, %i.s                    ; 2 uses
  %i.v = load i32, ptr %4, align 4, !tbaa !78     ; 2 uses
  %i.w = mul nsw i32 %i.v, %i.t                   ; 10 uses
  %i.x = load i32, ptr %5, align 4, !tbaa !78     ; 2 uses
  %i.y = mul i32 %i.x, %i.u                       ; 27 uses
  %i.z = load i32, ptr %6, align 4, !tbaa !78
  %i.aa = sub nsw i32 %i.z, %i.w
  %.sroa.speculated64 = call i32 @llvm.smin.i32(i32 %i.v, i32 %i.aa) ; 17 uses
  %i.ab = load i32, ptr %7, align 4, !tbaa !78
  %i.ac = sub i32 %i.ab, %i.y
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.x, i32 %i.ac) ; 68 uses
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !86, !noalias !1492
  %i.ae = load ptr, ptr %8, align 8, !tbaa !34, !noalias !1492
  %i.af = load i64, ptr %i.m, align 8, !tbaa !35, !noalias !1492
  %i.ag = sext i32 %i.t to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !76, !noalias !1492 ; 2 uses
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %i.al = sext i32 %i.ad to i64
  %i.am = sext i32 %i.u to i64
  %i.an = mul nsw i64 %i.al, %i.am
  %i.ao = mul i64 %i.an, %i.ai
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ao ; 7 uses
  %i.aq = load i32, ptr %10, align 4, !tbaa !78   ; 52 uses
  %i.ar = load i32, ptr %11, align 4, !tbaa !78   ; 2 uses
  %i.as = load i32, ptr %12, align 4, !tbaa !78   ; 30 uses
  %i.at = load i32, ptr %13, align 4, !tbaa !78   ; 5 uses
  %i.au = load i32, ptr %14, align 4, !tbaa !78   ; 7 uses
  %i.av = load i32, ptr %15, align 4, !tbaa !78   ; 5 uses
  %i.aw = icmp eq i32 %i.aq, 1
  %i.ax = icmp eq i32 %i.ar, 1
  %or.cond.i = and i1 %i.aw, %i.ax
  %i.ay = icmp eq i32 %i.as, 1
  %or.cond3.i = and i1 %or.cond.i, %i.ay
  %i.az = icmp eq i32 %i.at, 1
  %or.cond5.i = and i1 %or.cond3.i, %i.az
  %i.ba = icmp eq i32 %i.au, 1                    ; 4 uses
  %i.bb = icmp eq i32 %i.av, 1
  %i.bc = and i1 %or.cond5.i, %i.bb
  %or.cond9.i = and i1 %i.ba, %i.bc
  %i.bd = load i64, ptr %i.o, align 8, !tbaa !35  ; 59 uses
  br i1 %or.cond9.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit36
  %i.be = load i32, ptr %i.q, align 8, !tbaa !77  ; 4 uses
  %i.bf = icmp sgt i32 %.sroa.speculated64, 7
  br i1 %i.bf, label %.lr.ph147.i.i, label %.preheader126.i.i

.lr.ph147.i.i:                                    ; preds = %bb.c
  %i.bg = sdiv i32 %i.y, 8
  %i.bh = sext i32 %i.bg to i64
  %i.bi = lshr i32 %.sroa.speculated, 3
  %i.bj = shl i64 %i.bd, 3
  %i.bk = sext i32 %i.y to i64
  %i.bl = icmp sgt i32 %.sroa.speculated, 1
  %i.bm = shl i64 %i.bd, 1
  %i.bn = and i32 %.sroa.speculated, -2
  %i.bo = zext nneg i32 %.sroa.speculated64 to i64 ; 4 uses
  %i.bp = sext i32 %i.w to i64                    ; 2 uses
  switch i32 %i.be, label %.loopexit128.i.preheader.i [
    i32 8, label %.lr.ph147.i.split.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit270.i.us.i
  ]

.loopexit128.i.preheader.i:                       ; preds = %.lr.ph147.i.i
  %umax150.i = call i64 @llvm.umax.i64(i64 %i.bo, i64 15)
  %i.bq = and i64 %umax150.i, 2147483640
  br label %.preheader126.loopexit.i.i

.lr.ph147.i.split.us.i:                           ; preds = %.lr.ph147.i.i
  %i.br = icmp sgt i32 %.sroa.speculated, 7
  br i1 %i.br, label %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i, label %_ZN4ncnn3MatD2Ev.exit271.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit271.i.us.preheader.i:        ; preds = %.lr.ph147.i.split.us.i
  %umax.i = call i64 @llvm.umax.i64(i64 %i.bo, i64 15)
  %i.bs = and i64 %umax.i, 2147483640
  br label %.preheader126.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit271.i.us.us.i:               ; preds = %.lr.ph147.i.split.us.i, %.loopexit128.i.loopexit.us.us.i
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit128.i.loopexit.us.us.i ], [ 0, %.lr.ph147.i.split.us.i ] ; 2 uses
  %.0238146.i.us.us.i = phi ptr [ %i.cy, %.loopexit128.i.loopexit.us.us.i ], [ %i.ap, %.lr.ph147.i.split.us.i ]
  %i.bt = load ptr, ptr %9, align 8, !tbaa !34, !noalias !1493
  %i.bu = load i64, ptr %i.o, align 8, !tbaa !35, !noalias !1493
  %i.bv = mul i64 %i.bu, %i.bh
  %i.bw = load i64, ptr %i.r, align 8, !tbaa !76, !noalias !1493
  %i.bx = mul i64 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bx
  %i.bz = add nsw i64 %indvars.iv.i.us.us.i, %i.bp
  %i.ca = shl nsw i64 %i.bz, 3
  %i.cb = getelementptr inbounds i8, ptr %i.by, i64 %i.ca
  br label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.lr.ph.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i
  %.1239132.i.us.us.i = phi ptr [ %i.cy, %.lr.ph.i.us.us.i ], [ %.0238146.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i ] ; 5 uses
  %.0250131.i.us.us.i = phi ptr [ %i.cz, %.lr.ph.i.us.us.i ], [ %i.cb, %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i ] ; 5 uses
  %.0251130.i.us.us.i = phi i32 [ %i.da, %.lr.ph.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i ]
  %i.cc = load <8 x i16>, ptr %.0250131.i.us.us.i, align 1, !tbaa !108 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0250131.i.us.us.i, i64 16
  %i.ce = load <8 x i16>, ptr %i.cd, align 1, !tbaa !108 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0250131.i.us.us.i, i64 32
  %i.cg = load <8 x i16>, ptr %i.cf, align 1, !tbaa !108 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0250131.i.us.us.i, i64 48
  %i.ci = load <8 x i16>, ptr %i.ch, align 1, !tbaa !108 ; 2 uses
  %i.cj = shufflevector <8 x i16> %i.cc, <8 x i16> %i.ce, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.ck = bitcast <8 x i16> %i.cj to <2 x i64>    ; 2 uses
  %i.cl = shufflevector <8 x i16> %i.cc, <8 x i16> %i.ce, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.cm = bitcast <8 x i16> %i.cl to <2 x i64>    ; 2 uses
  %i.cn = shufflevector <8 x i16> %i.cg, <8 x i16> %i.ci, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.co = bitcast <8 x i16> %i.cn to <2 x i64>    ; 2 uses
  %i.cp = shufflevector <8 x i16> %i.cg, <8 x i16> %i.ci, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.cq = bitcast <8 x i16> %i.cp to <2 x i64>    ; 2 uses
  %i.cr = shufflevector <2 x i64> %i.ck, <2 x i64> %i.co, <2 x i32> <i32 0, i32 2>
  %i.cs = shufflevector <2 x i64> %i.ck, <2 x i64> %i.co, <2 x i32> <i32 1, i32 3>
  %i.ct = shufflevector <2 x i64> %i.cm, <2 x i64> %i.cq, <2 x i32> <i32 0, i32 2>
  %i.cu = shufflevector <2 x i64> %i.cm, <2 x i64> %i.cq, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.cr, ptr %.1239132.i.us.us.i, align 16, !tbaa !108
  %i.cv = getelementptr inbounds nuw i8, ptr %.1239132.i.us.us.i, i64 16
  store <2 x i64> %i.cs, ptr %i.cv, align 16, !tbaa !108
  %i.cw = getelementptr inbounds nuw i8, ptr %.1239132.i.us.us.i, i64 32
  store <2 x i64> %i.ct, ptr %i.cw, align 16, !tbaa !108
  %i.cx = getelementptr inbounds nuw i8, ptr %.1239132.i.us.us.i, i64 48
  store <2 x i64> %i.cu, ptr %i.cx, align 16, !tbaa !108
  %i.cy = getelementptr inbounds nuw i8, ptr %.1239132.i.us.us.i, i64 64 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0250131.i.us.us.i, i64 %i.bj
  %i.da = add nuw nsw i32 %.0251130.i.us.us.i, 1  ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i32 %i.da, %i.bi
  br i1 %exitcond.not.i.us.us.i, label %.loopexit128.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !1434

.loopexit128.i.loopexit.us.us.i:                  ; preds = %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 8 ; 3 uses
  %i.db = or disjoint i64 %indvars.iv.next.i.us.us.i, 7
  %i.dc = icmp samesign ult i64 %i.db, %i.bo
  br i1 %i.dc, label %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i, label %.preheader126.loopexit.i.i, !llvm.loop !1435

_ZN4ncnn3MatD2Ev.exit270.i.us.i:                  ; preds = %.lr.ph147.i.i, %.loopexit128.i.us64.i
  %indvars.iv.i.us62.i = phi i64 [ %indvars.iv.next.i.us66.i, %.loopexit128.i.us64.i ], [ 0, %.lr.ph147.i.i ] ; 2 uses
  %.0238146.i.us63.i = phi ptr [ %.5.i.us65.i, %.loopexit128.i.us64.i ], [ %i.ap, %.lr.ph147.i.i ] ; 2 uses
  %i.dd = load ptr, ptr %9, align 8, !tbaa !34, !noalias !1494
  %i.de = load i64, ptr %i.o, align 8, !tbaa !35, !noalias !1494
  %i.df = mul i64 %i.de, %i.bk
  %i.dg = load i64, ptr %i.r, align 8, !tbaa !76, !noalias !1494
  %i.dh = mul i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 %indvars.iv.i.us62.i
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.bp  ; 2 uses
  br i1 %i.bl, label %.lr.ph136.i.us.i, label %.preheader127.i.us.i

.lr.ph136.i.us.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit270.i.us.i, %.lr.ph136.i.us.i
  %.3135.i.us.i = phi ptr [ %i.dt, %.lr.ph136.i.us.i ], [ %.0238146.i.us63.i, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ] ; 2 uses
  %.0252134.i.us.i = phi ptr [ %i.du, %.lr.ph136.i.us.i ], [ %i.dk, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ] ; 3 uses
  %.0254133.i.us.i = phi i32 [ %i.dv, %.lr.ph136.i.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ]
  %i.dl = load i64, ptr %.0252134.i.us.i, align 1, !tbaa !108
  %i.dm = insertelement <2 x i64> poison, i64 %i.dl, i64 0
  %i.dn = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i, i64 %i.bd
  %i.do = load i64, ptr %i.dn, align 1, !tbaa !108
  %i.dp = insertelement <2 x i64> poison, i64 %i.do, i64 0
  %i.dq = bitcast <2 x i64> %i.dm to <16 x i8>
  %i.dr = bitcast <2 x i64> %i.dp to <16 x i8>
  %i.ds = shufflevector <16 x i8> %i.dq, <16 x i8> %i.dr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.ds, ptr %.3135.i.us.i, align 1, !tbaa !108
  %i.dt = getelementptr inbounds nuw i8, ptr %.3135.i.us.i, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i, i64 %i.bm ; 2 uses
  %i.dv = add nuw nsw i32 %.0254133.i.us.i, 2     ; 2 uses
  %i.dw = or disjoint i32 %i.dv, 1
  %i.dx = icmp slt i32 %i.dw, %.sroa.speculated
  br i1 %i.dx, label %.lr.ph136.i.us.i, label %.preheader127.i.us.i, !llvm.loop !1438

.preheader127.i.us.i:                             ; preds = %.lr.ph136.i.us.i, %_ZN4ncnn3MatD2Ev.exit270.i.us.i
  %.0254.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ], [ %i.bn, %.lr.ph136.i.us.i ] ; 5 uses
  %.0252.lcssa.i.us.i = phi ptr [ %i.dk, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ], [ %i.du, %.lr.ph136.i.us.i ] ; 2 uses
  %.3.lcssa.i.us.i = phi ptr [ %.0238146.i.us63.i, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ], [ %i.dt, %.lr.ph136.i.us.i ] ; 3 uses
  %i.dy = icmp slt i32 %.0254.lcssa.i.us.i, %.sroa.speculated
  br i1 %i.dy, label %.lr.ph143.i.us.i.preheader, label %.loopexit128.i.us64.i

.lr.ph143.i.us.i.preheader:                       ; preds = %.preheader127.i.us.i
  %i.dz = sub i32 %.sroa.speculated, %.0254.lcssa.i.us.i
  %xtraiter = and i32 %i.dz, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph143.i.us.i.prol.loopexit, label %.lr.ph143.i.us.i.prol

.lr.ph143.i.us.i.prol:                            ; preds = %.lr.ph143.i.us.i.preheader, %.lr.ph143.i.us.i.prol
  %.4142.i.us.i.prol = phi ptr [ %i.eb, %.lr.ph143.i.us.i.prol ], [ %.3.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ] ; 2 uses
  %.1253141.i.us.i.prol = phi ptr [ %i.ec, %.lr.ph143.i.us.i.prol ], [ %.0252.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ] ; 2 uses
  %.1255140.i.us.i.prol = phi i32 [ %i.ed, %.lr.ph143.i.us.i.prol ], [ %.0254.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph143.i.us.i.prol ], [ 0, %.lr.ph143.i.us.i.preheader ]
  %i.ea = load i64, ptr %.1253141.i.us.i.prol, align 1, !tbaa !108
  store i64 %i.ea, ptr %.4142.i.us.i.prol, align 1, !tbaa !108
  %i.eb = getelementptr inbounds nuw i8, ptr %.4142.i.us.i.prol, i64 8 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.1253141.i.us.i.prol, i64 %i.bd ; 2 uses
  %i.ed = add nuw nsw i32 %.1255140.i.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph143.i.us.i.prol.loopexit, label %.lr.ph143.i.us.i.prol, !llvm.loop !1439

.lr.ph143.i.us.i.prol.loopexit:                   ; preds = %.lr.ph143.i.us.i.prol, %.lr.ph143.i.us.i.preheader
  %.lcssa394.unr = phi ptr [ poison, %.lr.ph143.i.us.i.preheader ], [ %i.eb, %.lr.ph143.i.us.i.prol ]
  %.4142.i.us.i.unr = phi ptr [ %.3.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.eb, %.lr.ph143.i.us.i.prol ]
  %.1253141.i.us.i.unr = phi ptr [ %.0252.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.ec, %.lr.ph143.i.us.i.prol ]
  %.1255140.i.us.i.unr = phi i32 [ %.0254.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.ed, %.lr.ph143.i.us.i.prol ]
  %i.ee = sub i32 %.0254.lcssa.i.us.i, %.sroa.speculated
  %i.ef = icmp ugt i32 %i.ee, -8
  br i1 %i.ef, label %.loopexit128.i.us64.i, label %.lr.ph143.i.us.i

.lr.ph143.i.us.i:                                 ; preds = %.lr.ph143.i.us.i.prol.loopexit, %.lr.ph143.i.us.i
  %.4142.i.us.i = phi ptr [ %i.fc, %.lr.ph143.i.us.i ], [ %.4142.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ] ; 9 uses
  %.1253141.i.us.i = phi ptr [ %i.fd, %.lr.ph143.i.us.i ], [ %.1253141.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ] ; 2 uses
  %.1255140.i.us.i = phi i32 [ %i.fe, %.lr.ph143.i.us.i ], [ %.1255140.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ]
  %i.eg = load i64, ptr %.1253141.i.us.i, align 1, !tbaa !108
  store i64 %i.eg, ptr %.4142.i.us.i, align 1, !tbaa !108
  %i.eh = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.1253141.i.us.i, i64 %i.bd ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 1, !tbaa !108
  store i64 %i.ej, ptr %i.eh, align 1, !tbaa !108
  %i.ek = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.bd ; 2 uses
  %i.em = load i64, ptr %i.el, align 1, !tbaa !108
  store i64 %i.em, ptr %i.ek, align 1, !tbaa !108
  %i.en = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.bd ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 1, !tbaa !108
  store i64 %i.ep, ptr %i.en, align 1, !tbaa !108
  %i.eq = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.bd ; 2 uses
  %i.es = load i64, ptr %i.er, align 1, !tbaa !108
end_hunk_0
begin_hunk_1_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %.1237185.i.i.unr = phi ptr [ %.0236.lcssa.i.i, %.lr.ph187.i.i.preheader ], [ %i.oy, %.lr.ph187.i.i.prol ]
  %.16184.i.i.unr = phi ptr [ %.15.lcssa.i.i, %.lr.ph187.i.i.preheader ], [ %i.ox, %.lr.ph187.i.i.prol ]
  %i.pa = sub i32 %.0235.lcssa.i.i, %.sroa.speculated
  %i.pb = icmp ugt i32 %i.pa, -4
  br i1 %i.pb, label %.loopexit120.i.i, label %.lr.ph187.i.i

.lr.ph180.i.i:                                    ; preds = %.lr.ph180.i.i.preheader, %.lr.ph180.i.i
  %.0236178.i.i = phi ptr [ %i.pz, %.lr.ph180.i.i ], [ %i.oe, %.lr.ph180.i.i.preheader ] ; 4 uses
  %.15177.i.i = phi ptr [ %i.py, %.lr.ph180.i.i ], [ %.12190.i.i, %.lr.ph180.i.i.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph180.i.i ], [ 0, %.lr.ph180.i.i.preheader ]
  %i.pc = load i8, ptr %.0236178.i.i, align 1, !tbaa !108
  store i8 %i.pc, ptr %.15177.i.i, align 1, !tbaa !108
  %i.pd = getelementptr inbounds nuw i8, ptr %.0236178.i.i, i64 %i.bd ; 2 uses
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !108
  %i.pf = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 1
  store i8 %i.pe, ptr %i.pf, align 1, !tbaa !108
  %i.pg = getelementptr inbounds nuw i8, ptr %.0236178.i.i, i64 1
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !108
  %i.pi = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 2
  store i8 %i.ph, ptr %i.pi, align 1, !tbaa !108
  %i.pj = getelementptr i8, ptr %i.pd, i64 1
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !108
  %i.pl = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 3
  store i8 %i.pk, ptr %i.pl, align 1, !tbaa !108
  %i.pm = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 4
  %i.pn = getelementptr inbounds nuw i8, ptr %.0236178.i.i, i64 %i.kh ; 4 uses
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !108
  store i8 %i.po, ptr %i.pm, align 1, !tbaa !108
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.bd ; 2 uses
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !108
  %i.pr = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 5
  store i8 %i.pq, ptr %i.pr, align 1, !tbaa !108
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 1
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !108
  %i.pu = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 6
  store i8 %i.pt, ptr %i.pu, align 1, !tbaa !108
  %i.pv = getelementptr i8, ptr %i.pp, i64 1
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !108
  %i.px = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 7
  store i8 %i.pw, ptr %i.px, align 1, !tbaa !108
  %i.py = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 8 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.kh ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader119.i.i.loopexit.unr-lcssa, label %.lr.ph180.i.i, !llvm.loop !1460

.lr.ph187.i.i:                                    ; preds = %.lr.ph187.i.i.prol.loopexit, %.lr.ph187.i.i
  %.1186.i.i = phi i32 [ %i.qy, %.lr.ph187.i.i ], [ %.1186.i.i.unr, %.lr.ph187.i.i.prol.loopexit ]
  %.1237185.i.i = phi ptr [ %i.qx, %.lr.ph187.i.i ], [ %.1237185.i.i.unr, %.lr.ph187.i.i.prol.loopexit ] ; 3 uses
  %.16184.i.i = phi ptr [ %i.qw, %.lr.ph187.i.i ], [ %.16184.i.i.unr, %.lr.ph187.i.i.prol.loopexit ] ; 9 uses
  %i.qa = load i8, ptr %.1237185.i.i, align 1, !tbaa !108
  store i8 %i.qa, ptr %.16184.i.i, align 1, !tbaa !108
  %i.qb = getelementptr inbounds nuw i8, ptr %.1237185.i.i, i64 1
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !108
  %i.qd = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 1
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !108
  %i.qe = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 2
  %i.qf = getelementptr inbounds nuw i8, ptr %.1237185.i.i, i64 %i.bd ; 3 uses
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !108
  store i8 %i.qg, ptr %i.qe, align 1, !tbaa !108
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 1
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !108
  %i.qj = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 3
  store i8 %i.qi, ptr %i.qj, align 1, !tbaa !108
  %i.qk = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 4
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.bd ; 3 uses
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !108
  store i8 %i.qm, ptr %i.qk, align 1, !tbaa !108
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 1
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !108
  %i.qp = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 5
  store i8 %i.qo, ptr %i.qp, align 1, !tbaa !108
  %i.qq = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 6
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.bd ; 3 uses
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !108
  store i8 %i.qs, ptr %i.qq, align 1, !tbaa !108
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 1
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !108
  %i.qv = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 7
  store i8 %i.qu, ptr %i.qv, align 1, !tbaa !108
  %i.qw = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 8 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.bd
  %i.qy = add nuw nsw i32 %.1186.i.i, 4           ; 2 uses
  %exitcond236.not.i.i.3 = icmp eq i32 %i.qy, %.sroa.speculated
  br i1 %exitcond236.not.i.i.3, label %.loopexit120.i.i, label %.lr.ph187.i.i, !llvm.loop !1461

.loopexit120.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph175.i.i
  br i1 %lcmp.mod418.not, label %.loopexit120.i.i, label %.lr.ph175.i.i.epil.preheader

.lr.ph175.i.i.epil.preheader:                     ; preds = %.loopexit120.i.i.loopexit.unr-lcssa, %.lr.ph175.preheader.i.i
  %.13174.i.i.epil.init = phi ptr [ %.12190.i.i, %.lr.ph175.preheader.i.i ], [ %i.nv, %.loopexit120.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0245172.i.i.epil.init = phi ptr [ %i.nc, %.lr.ph175.preheader.i.i ], [ %i.nw, %.loopexit120.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod420)
  %i.qz = load i64, ptr %.0245172.i.i.epil.init, align 1, !tbaa !108
  %i.ra = insertelement <2 x i64> poison, i64 %i.qz, i64 0
  %i.rb = getelementptr inbounds nuw i8, ptr %.0245172.i.i.epil.init, i64 8
  %i.rc = load i64, ptr %i.rb, align 1, !tbaa !108
  %i.rd = insertelement <2 x i64> poison, i64 %i.rc, i64 0
  %i.re = bitcast <2 x i64> %i.ra to <8 x i16>
  %i.rf = bitcast <2 x i64> %i.rd to <8 x i16>
  %i.rg = shufflevector <8 x i16> %i.re, <8 x i16> %i.rf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.rg, ptr %.13174.i.i.epil.init, align 1, !tbaa !108
  %i.rh = getelementptr inbounds nuw i8, ptr %.13174.i.i.epil.init, i64 16
  br label %.loopexit120.i.i

.loopexit120.i.i:                                 ; preds = %.lr.ph187.i.i.prol.loopexit, %.lr.ph187.i.i, %.lr.ph175.i.i.epil.preheader, %.loopexit120.i.i.loopexit.unr-lcssa, %.preheader119.i.i, %_ZN4ncnn3MatD2Ev.exit267.i.i, %bb.e
  %.17.i.i = phi ptr [ %.12190.i.i, %bb.e ], [ %.15.lcssa.i.i, %.preheader119.i.i ], [ %i.rh, %.lr.ph175.i.i.epil.preheader ], [ %.12190.i.i, %_ZN4ncnn3MatD2Ev.exit267.i.i ], [ %i.nv, %.loopexit120.i.i.loopexit.unr-lcssa ], [ %.lcssa402.unr, %.lr.ph187.i.i.prol.loopexit ], [ %i.qw, %.lr.ph187.i.i ] ; 2 uses
  %indvars.iv.next238.i.i = add nuw nsw i64 %indvars.iv237.i.i, 2 ; 3 uses
  %i.ri = icmp slt i64 %indvars.iv.next238.i.i, %invariant.op277.i.i
  br i1 %i.ri, label %bb.e, label %.preheader.loopexit.i.i, !llvm.loop !1462

_ZN4ncnn3MatD2Ev.exit.i.i:                        ; preds = %..loopexit_crit_edge.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i
  %indvars.iv241.i.i = phi i64 [ %i.mq, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %indvars.iv.next242.i.i, %..loopexit_crit_edge.i.i ] ; 2 uses
  %.18205.i.i = phi ptr [ %.12.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %.lcssa404, %..loopexit_crit_edge.i.i ] ; 2 uses
  %i.rj = load ptr, ptr %9, align 8, !tbaa !34, !noalias !1500
  %i.rk = load i64, ptr %i.o, align 8, !tbaa !35, !noalias !1500
  %i.rl = mul i64 %i.rk, %i.kz
  %i.rm = load i64, ptr %i.r, align 8, !tbaa !76, !noalias !1500
  %i.rn = mul i64 %i.rl, %i.rm
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rn
  %i.rp = getelementptr i8, ptr %i.ro, i64 %indvars.iv241.i.i
  %i.rq = getelementptr i8, ptr %i.rp, i64 %i.mr  ; 2 uses
  br i1 %i.mt, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit.i.i.new

_ZN4ncnn3MatD2Ev.exit.i.i.new:                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i.new
  %.0232200.i.i = phi ptr [ %i.so, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %i.rq, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 2 uses
  %.21199.i.i = phi ptr [ %i.sn, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %.18205.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 9 uses
  %niter428 = phi i32 [ %niter428.next.7, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit.i.i ]
  %i.rr = load i8, ptr %.0232200.i.i, align 1, !tbaa !108
  store i8 %i.rr, ptr %.21199.i.i, align 1, !tbaa !108
  %i.rs = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 1
  %i.rt = getelementptr inbounds nuw i8, ptr %.0232200.i.i, i64 %i.bd ; 2 uses
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !108
  store i8 %i.ru, ptr %i.rs, align 1, !tbaa !108
  %i.rv = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 2
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.bd ; 2 uses
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !108
  store i8 %i.rx, ptr %i.rv, align 1, !tbaa !108
  %i.ry = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 3
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.bd ; 2 uses
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !108
  store i8 %i.sa, ptr %i.ry, align 1, !tbaa !108
  %i.sb = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 4
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.bd ; 2 uses
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !108
  store i8 %i.sd, ptr %i.sb, align 1, !tbaa !108
  %i.se = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 5
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 %i.bd ; 2 uses
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !108
  store i8 %i.sg, ptr %i.se, align 1, !tbaa !108
  %i.sh = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 6
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.bd ; 2 uses
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !108
  store i8 %i.sj, ptr %i.sh, align 1, !tbaa !108
  %i.sk = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 7
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.bd ; 2 uses
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !108
  store i8 %i.sm, ptr %i.sk, align 1, !tbaa !108
  %i.sn = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 8 ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.bd ; 2 uses
  %niter428.next.7 = add i32 %niter428, 8         ; 2 uses
  %niter428.ncmp.7 = icmp eq i32 %niter428.next.7, %unroll_iter427
  br i1 %niter428.ncmp.7, label %..loopexit_crit_edge.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit.i.i.new, !llvm.loop !1465

..loopexit_crit_edge.i.i.unr-lcssa:               ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i.new
  br i1 %lcmp.mod424.not, label %..loopexit_crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit.i.i
  %.0232200.i.i.epil.init = phi ptr [ %i.rq, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.so, %..loopexit_crit_edge.i.i.unr-lcssa ]
  %.21199.i.i.epil.init = phi ptr [ %.18205.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.sn, %..loopexit_crit_edge.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod426)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.0232200.i.i.epil = phi ptr [ %.0232200.i.i.epil.init, %.epil.preheader ], [ %i.sr, %bb.f ] ; 2 uses
  %.21199.i.i.epil = phi ptr [ %.21199.i.i.epil.init, %.epil.preheader ], [ %i.sq, %bb.f ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.sp = load i8, ptr %.0232200.i.i.epil, align 1, !tbaa !108
  store i8 %i.sp, ptr %.21199.i.i.epil, align 1, !tbaa !108
  %i.sq = getelementptr inbounds nuw i8, ptr %.21199.i.i.epil, i64 1 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.0232200.i.i.epil, i64 %i.bd
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter423
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge.i.i, label %bb.f, !llvm.loop !1466

..loopexit_crit_edge.i.i:                         ; preds = %bb.f, %..loopexit_crit_edge.i.i.unr-lcssa
  %.lcssa404 = phi ptr [ %i.sn, %..loopexit_crit_edge.i.i.unr-lcssa ], [ %i.sq, %bb.f ]
  %indvars.iv.next242.i.i = add nuw nsw i64 %indvars.iv241.i.i, 1 ; 2 uses
  %exitcond244.not.i.i = icmp eq i64 %indvars.iv.next242.i.i, %wide.trip.count.i.i
  br i1 %exitcond244.not.i.i, label %_ZN4ncnn3MatD2Ev.exit, label %_ZN4ncnn3MatD2Ev.exit.i.i, !llvm.loop !1453

bb.g:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit36
  %i.ss = load i32, ptr %i.p, align 4, !tbaa !86  ; 9 uses
  %i.st = load i32, ptr %i.q, align 8, !tbaa !77  ; 9 uses
  %i.su = add nsw i32 %i.aq, -1
  %i.sv = mul nsw i32 %i.as, %i.su
  %.neg.i.i = xor i32 %i.sv, -1
  %i.sw = add i32 %i.ss, %.neg.i.i
  %i.sx = sdiv i32 %i.sw, %i.au                   ; 3 uses
  %i.sy = add nsw i32 %i.sx, 1                    ; 10 uses
  %i.sz = mul nsw i32 %i.ar, %i.aq                ; 49 uses
  %i.ta = icmp eq i32 %i.sx, 0
  br i1 %i.ta, label %_ZN17FastDivider_epu32C2Ej.exit1130.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.tb = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.sx, i1 true) ; 3 uses
  %i.tc = sub nuw nsw i32 32, %i.tb
  %i.td = icmp eq i32 %i.tb, 0
  %i.te = shl nuw i32 1, %i.tc
  %i.tf = select i1 %i.td, i32 0, i32 %i.te
  %i.tg = sub i32 %i.tf, %i.sy
  %i.th = zext i32 %i.tg to i64
  %i.ti = shl nuw i64 %i.th, 32
  %i.tj = zext i32 %i.sy to i64
  %i.tk = udiv i64 %i.ti, %i.tj
  %i.tl = trunc i64 %i.tk to i32
  %i.tm = add i32 %i.tl, 1
  %i.tn = xor i32 %i.tb, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit1130.i.i

_ZN17FastDivider_epu32C2Ej.exit1130.i.i:          ; preds = %bb.h, %bb.g
  %.012.i1127.i.i = phi i32 [ %i.tn, %bb.h ], [ 0, %bb.g ]
  %.011.i1128.i.i = phi i32 [ 1, %bb.h ], [ 0, %bb.g ]
  %.0.i1129.i.i = phi i32 [ %i.tm, %bb.h ], [ 1, %bb.g ]
  %i.to = insertelement <4 x i32> poison, i32 %.0.i1129.i.i, i64 0
  %i.tp = shufflevector <4 x i32> %i.to, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.tq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i1128.i.i, i64 0 ; 2 uses
  %i.tr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i1127.i.i, i64 0 ; 3 uses
  %i.ts = icmp sgt i32 %.sroa.speculated64, 7
  br i1 %i.ts, label %.lr.ph181.i.i, label %.preheader144.i.i

.lr.ph181.i.i:                                    ; preds = %_ZN17FastDivider_epu32C2Ej.exit1130.i.i
  %i.tt = bitcast <4 x i32> %i.tp to <2 x i64>
  %i.tu = and <2 x i64> %i.tt, splat (i64 4294967295) ; 4 uses
  %i.tv = shufflevector <4 x i32> %i.tq, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.tw = insertelement <4 x i32> poison, i32 %i.sy, i64 0
  %i.tx = shufflevector <4 x i32> %i.tw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ty = bitcast <4 x i32> %i.tx to <2 x i64>
  %i.tz = and <2 x i64> %i.ty, splat (i64 4294967295) ; 4 uses
  %i.ua = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %i.ub = shufflevector <4 x i32> %i.ua, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.uc = bitcast <4 x i32> %i.ub to <2 x i64>
  %i.ud = and <2 x i64> %i.uc, splat (i64 4294967295) ; 4 uses
  %i.ue = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.uf = shufflevector <4 x i32> %i.ue, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ug = bitcast <4 x i32> %i.uf to <2 x i64>
  %i.uh = and <2 x i64> %i.ug, splat (i64 4294967295) ; 4 uses
  %i.ui = insertelement <4 x i32> poison, i32 %i.ss, i64 0
  %i.uj = shufflevector <4 x i32> %i.ui, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.uk = bitcast <4 x i32> %i.uj to <2 x i64>
  %i.ul = and <2 x i64> %i.uk, splat (i64 4294967295) ; 4 uses
  %i.um = icmp eq i32 %i.st, 1                    ; 2 uses
  %i.un = icmp sgt i32 %.sroa.speculated, 1       ; 2 uses
  %i.uo = mul i32 %i.ss, %i.at                    ; 8 uses
  %i.up = trunc i64 %i.bd to i32                  ; 4 uses
  %i.uq = icmp ne i32 %i.st, 8
  %i.ur = sdiv i32 %.sroa.speculated, 8           ; 2 uses
  %i.us = icmp slt i32 %.sroa.speculated, 8
  %i.ut = sdiv i32 %i.y, 8                        ; 2 uses
  %brmerge266.i.i = or i1 %i.us, %i.uq            ; 2 uses
  %16 = insertelement <2 x i32> poison, i32 %i.sz, i64 0
  %17 = shufflevector <2 x i32> %16, <2 x i32> poison, <2 x i32> zeroinitializer
  %18 = insertelement <2 x i32> poison, i32 %i.aq, i64 0
  %19 = shufflevector <2 x i32> %18, <2 x i32> poison, <2 x i32> zeroinitializer
  %20 = insertelement <2 x i32> poison, i32 %i.sz, i64 0
  %21 = shufflevector <2 x i32> %20, <2 x i32> poison, <2 x i32> zeroinitializer
  %22 = insertelement <2 x i32> poison, i32 %i.aq, i64 0
  %23 = shufflevector <2 x i32> %22, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.i

.preheader144.i.i:                                ; preds = %.loopexit146.i.i, %_ZN17FastDivider_epu32C2Ej.exit1130.i.i
  %.01096.lcssa.i.i = phi i32 [ 0, %_ZN17FastDivider_epu32C2Ej.exit1130.i.i ], [ %i.apo, %.loopexit146.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %i.ap, %_ZN17FastDivider_epu32C2Ej.exit1130.i.i ], [ %.10.i.i, %.loopexit146.i.i ] ; 2 uses
  %i.uu = or disjoint i32 %.01096.lcssa.i.i, 3
  %i.uv = icmp slt i32 %i.uu, %.sroa.speculated64
  br i1 %i.uv, label %.lr.ph212.i.i, label %.preheader133.i.i

.lr.ph212.i.i:                                    ; preds = %.preheader144.i.i
  %i.uw = bitcast <4 x i32> %i.tp to <2 x i64>
  %i.ux = and <2 x i64> %i.uw, splat (i64 4294967295) ; 2 uses
  %i.uy = shufflevector <4 x i32> %i.tq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.uz = insertelement <4 x i32> poison, i32 %i.sy, i64 0
  %i.va = shufflevector <4 x i32> %i.uz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vb = bitcast <4 x i32> %i.va to <2 x i64>
  %i.vc = and <2 x i64> %i.vb, splat (i64 4294967295) ; 2 uses
  %i.vd = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %i.ve = shufflevector <4 x i32> %i.vd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vf = bitcast <4 x i32> %i.ve to <2 x i64>
  %i.vg = and <2 x i64> %i.vf, splat (i64 4294967295) ; 2 uses
  %i.vh = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.vi = shufflevector <4 x i32> %i.vh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vj = bitcast <4 x i32> %i.vi to <2 x i64>
  %i.vk = and <2 x i64> %i.vj, splat (i64 4294967295) ; 2 uses
  %i.vl = insertelement <4 x i32> poison, i32 %i.ss, i64 0
  %i.vm = shufflevector <4 x i32> %i.vl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vn = bitcast <4 x i32> %i.vm to <2 x i64>
  %i.vo = and <2 x i64> %i.vn, splat (i64 4294967295) ; 2 uses
  %i.vp = icmp eq i32 %i.st, 1                    ; 2 uses
  %i.vq = icmp sgt i32 %.sroa.speculated, 1       ; 2 uses
  %i.vr = mul i32 %i.ss, %i.at                    ; 8 uses
  %i.vs = trunc i64 %i.bd to i32                  ; 4 uses
  %i.vt = icmp ne i32 %i.st, 8
  %i.vu = sdiv i32 %.sroa.speculated, 8           ; 2 uses
  %i.vv = icmp slt i32 %.sroa.speculated, 8
  %i.vw = sdiv i32 %i.y, 8                        ; 2 uses
  %brmerge272.i.i = or i1 %i.vv, %i.vt            ; 2 uses
  %24 = insertelement <2 x i32> poison, i32 %i.sz, i64 0
  %25 = shufflevector <2 x i32> %24, <2 x i32> poison, <2 x i32> zeroinitializer
  %26 = insertelement <2 x i32> poison, i32 %i.aq, i64 0
  %27 = shufflevector <2 x i32> %26, <2 x i32> poison, <2 x i32> zeroinitializer
  %28 = insertelement <2 x i32> poison, i32 %i.sz, i64 0
  %29 = shufflevector <2 x i32> %28, <2 x i32> poison, <2 x i32> zeroinitializer
  %30 = insertelement <2 x i32> poison, i32 %i.aq, i64 0
  %31 = shufflevector <2 x i32> %30, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.o

bb.i:                                             ; preds = %.loopexit146.i.i, %.lr.ph181.i.i
  %.0180.i.i = phi ptr [ %i.ap, %.lr.ph181.i.i ], [ %.10.i.i, %.loopexit146.i.i ] ; 8 uses
  %.01096179.i.i = phi i32 [ 0, %.lr.ph181.i.i ], [ %i.apo, %.loopexit146.i.i ] ; 2 uses
  %i.vx = add nsw i32 %.01096179.i.i, %i.w
  %i.vy = insertelement <4 x i32> poison, i32 %i.vx, i64 0
  %i.vz = shufflevector <4 x i32> %i.vy, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wa = add <4 x i32> %i.vz, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.wb = bitcast <4 x i32> %i.wa to <2 x i64>
  %i.wc = add <4 x i32> %i.vz, <i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.wd = bitcast <4 x i32> %i.wc to <2 x i64>
  %i.we = bitcast <4 x i32> %i.wa to <2 x i64>
  %i.wf = and <2 x i64> %i.we, splat (i64 4294967295)
  %i.wg = mul nuw <2 x i64> %i.wf, %i.tu
  %i.wh = lshr <2 x i64> %i.wg, splat (i64 32)
  %i.wi = lshr <2 x i64> %i.wb, splat (i64 32)
  %i.wj = mul nuw <2 x i64> %i.wi, %i.tu
  %i.wk = and <2 x i64> %i.wj, splat (i64 -4294967296)
  %i.wl = or disjoint <2 x i64> %i.wh, %i.wk
  %i.wm = bitcast <2 x i64> %i.wl to <4 x i32>    ; 2 uses
  %i.wn = sub <4 x i32> %i.wa, %i.wm
  %i.wo = lshr <4 x i32> %i.wn, %i.tv
  %i.wp = add <4 x i32> %i.wo, %i.wm
  %i.wq = call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.wp, <4 x i32> %i.tr) ; 2 uses
  %i.wr = bitcast <4 x i32> %i.wc to <2 x i64>
  %i.ws = and <2 x i64> %i.wr, splat (i64 4294967295)
  %i.wt = mul nuw <2 x i64> %i.ws, %i.tu
  %i.wu = lshr <2 x i64> %i.wt, splat (i64 32)
  %i.wv = lshr <2 x i64> %i.wd, splat (i64 32)
  %i.ww = mul nuw <2 x i64> %i.wv, %i.tu
  %i.wx = and <2 x i64> %i.ww, splat (i64 -4294967296)
  %i.wy = or disjoint <2 x i64> %i.wu, %i.wx
  %i.wz = bitcast <2 x i64> %i.wy to <4 x i32>    ; 2 uses
  %i.xa = sub <4 x i32> %i.wc, %i.wz
  %i.xb = lshr <4 x i32> %i.xa, %i.tv
  %i.xc = add <4 x i32> %i.xb, %i.wz
  %i.xd = call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.xc, <4 x i32> %i.tr) ; 2 uses
  %i.xe = bitcast <4 x i32> %i.wq to <2 x i64>
  %i.xf = and <2 x i64> %i.xe, splat (i64 4294967295) ; 2 uses
  %i.xg = mul nuw <2 x i64> %i.xf, %i.tz
  %i.xh = and <4 x i32> %i.wq, <i32 0, i32 -1, i32 0, i32 -1>
  %.inner322 = shufflevector <4 x i32> %i.xh, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.xi = bitcast <4 x i32> %.inner322 to <2 x i64> ; 2 uses
  %i.xj = mul nuw <2 x i64> %i.tz, %i.xi
  %i.xk = bitcast <2 x i64> %i.xg to <4 x i32>    ; 2 uses
  %i.xl = bitcast <2 x i64> %i.xj to <4 x i32>    ; 2 uses
  %i.xm = shufflevector <4 x i32> %i.xk, <4 x i32> %i.xl, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.xn = bitcast <4 x i32> %i.xm to <2 x i64>
  %i.xo = shufflevector <4 x i32> %i.xk, <4 x i32> %i.xl, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.xp = bitcast <4 x i32> %i.xo to <2 x i64>
  %i.xq = shufflevector <2 x i64> %i.xn, <2 x i64> %i.xp, <2 x i32> <i32 0, i32 2>
  %i.xr = bitcast <2 x i64> %i.xq to <4 x i32>
  %i.xs = sub <4 x i32> %i.wa, %i.xr              ; 2 uses
  %i.xt = bitcast <4 x i32> %i.xd to <2 x i64>
  %i.xu = and <2 x i64> %i.xt, splat (i64 4294967295) ; 2 uses
  %i.xv = mul nuw <2 x i64> %i.xu, %i.tz
  %i.xw = and <4 x i32> %i.xd, <i32 0, i32 -1, i32 0, i32 -1>
  %.inner324 = shufflevector <4 x i32> %i.xw, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.xx = bitcast <4 x i32> %.inner324 to <2 x i64> ; 2 uses
  %i.xy = mul nuw <2 x i64> %i.tz, %i.xx
  %i.xz = bitcast <2 x i64> %i.xv to <4 x i32>    ; 2 uses
  %i.ya = bitcast <2 x i64> %i.xy to <4 x i32>    ; 2 uses
  %i.yb = shufflevector <4 x i32> %i.xz, <4 x i32> %i.ya, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.yc = bitcast <4 x i32> %i.yb to <2 x i64>
  %i.yd = shufflevector <4 x i32> %i.xz, <4 x i32> %i.ya, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ye = bitcast <4 x i32> %i.yd to <2 x i64>
  %i.yf = shufflevector <2 x i64> %i.yc, <2 x i64> %i.ye, <2 x i32> <i32 0, i32 2>
  %i.yg = bitcast <2 x i64> %i.yf to <4 x i32>
  %i.yh = sub <4 x i32> %i.wc, %i.yg              ; 2 uses
  %i.yi = mul nuw <2 x i64> %i.xf, %i.ud
  %i.yj = mul nuw <2 x i64> %i.ud, %i.xi
  %i.yk = bitcast <2 x i64> %i.yi to <4 x i32>    ; 2 uses
  %i.yl = bitcast <2 x i64> %i.yj to <4 x i32>    ; 2 uses
  %i.ym = shufflevector <4 x i32> %i.yk, <4 x i32> %i.yl, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.yn = bitcast <4 x i32> %i.ym to <2 x i64>
  %i.yo = shufflevector <4 x i32> %i.yk, <4 x i32> %i.yl, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.yp = bitcast <4 x i32> %i.yo to <2 x i64>
  %i.yq = shufflevector <2 x i64> %i.yn, <2 x i64> %i.yp, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.yr = mul nuw <2 x i64> %i.xu, %i.ud
  %i.ys = mul nuw <2 x i64> %i.ud, %i.xx
  %i.yt = bitcast <2 x i64> %i.yr to <4 x i32>    ; 2 uses
  %i.yu = bitcast <2 x i64> %i.ys to <4 x i32>    ; 2 uses
  %i.yv = shufflevector <4 x i32> %i.yt, <4 x i32> %i.yu, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.yw = bitcast <4 x i32> %i.yv to <2 x i64>
  %i.yx = shufflevector <4 x i32> %i.yt, <4 x i32> %i.yu, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.yy = bitcast <4 x i32> %i.yx to <2 x i64>
  %i.yz = shufflevector <2 x i64> %i.yw, <2 x i64> %i.yy, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.za = bitcast <4 x i32> %i.xs to <2 x i64>
  %i.zb = and <2 x i64> %i.za, splat (i64 4294967295)
  %i.zc = mul nuw <2 x i64> %i.zb, %i.uh
  %i.zd = and <4 x i32> %i.xs, <i32 0, i32 -1, i32 0, i32 -1>
  %.inner326 = shufflevector <4 x i32> %i.zd, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ze = bitcast <4 x i32> %.inner326 to <2 x i64>
  %i.zf = mul nuw <2 x i64> %i.uh, %i.ze
  %i.zg = bitcast <2 x i64> %i.zc to <4 x i32>    ; 2 uses
  %i.zh = bitcast <2 x i64> %i.zf to <4 x i32>    ; 2 uses
  %i.zi = shufflevector <4 x i32> %i.zg, <4 x i32> %i.zh, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.zj = bitcast <4 x i32> %i.zi to <2 x i64>
  %i.zk = shufflevector <4 x i32> %i.zg, <4 x i32> %i.zh, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.zl = bitcast <4 x i32> %i.zk to <2 x i64>
  %i.zm = shufflevector <2 x i64> %i.zj, <2 x i64> %i.zl, <2 x i32> <i32 0, i32 2>
  %i.zn = bitcast <4 x i32> %i.yh to <2 x i64>
  %i.zo = and <2 x i64> %i.zn, splat (i64 4294967295)
  %i.zp = mul nuw <2 x i64> %i.zo, %i.uh
  %i.zq = and <4 x i32> %i.yh, <i32 0, i32 -1, i32 0, i32 -1>
  %.inner328 = shufflevector <4 x i32> %i.zq, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.zr = bitcast <4 x i32> %.inner328 to <2 x i64>
  %i.zs = mul nuw <2 x i64> %i.uh, %i.zr
  %i.zt = bitcast <2 x i64> %i.zp to <4 x i32>    ; 2 uses
  %i.zu = bitcast <2 x i64> %i.zs to <4 x i32>    ; 2 uses
  %i.zv = shufflevector <4 x i32> %i.zt, <4 x i32> %i.zu, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.zw = bitcast <4 x i32> %i.zv to <2 x i64>
  %i.zx = shufflevector <4 x i32> %i.zt, <4 x i32> %i.zu, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.zy = bitcast <4 x i32> %i.zx to <2 x i64>
  %i.zz = shufflevector <2 x i64> %i.zw, <2 x i64> %i.zy, <2 x i32> <i32 0, i32 2>
  %i.aaa = and <2 x i64> %i.yq, splat (i64 4294967295)
  %i.aab = mul nuw <2 x i64> %i.aaa, %i.ul
  %i.aac = bitcast <2 x i64> %i.yq to <4 x i32>
  %i.aad = and <4 x i32> %i.aac, <i32 0, i32 -1, i32 0, i32 -1>
  %.inner329 = shufflevector <4 x i32> %i.aad, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.aae = bitcast <4 x i32> %.inner329 to <2 x i64>
  %i.aaf = mul nuw <2 x i64> %i.ul, %i.aae
  %i.aag = bitcast <2 x i64> %i.aab to <4 x i32>  ; 2 uses
  %i.aah = bitcast <2 x i64> %i.aaf to <4 x i32>  ; 2 uses
  %i.aai = shufflevector <4 x i32> %i.aag, <4 x i32> %i.aah, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aaj = bitcast <4 x i32> %i.aai to <2 x i64>
  %i.aak = shufflevector <4 x i32> %i.aag, <4 x i32> %i.aah, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aal = bitcast <4 x i32> %i.aak to <2 x i64>
  %i.aam = shufflevector <2 x i64> %i.aaj, <2 x i64> %i.aal, <2 x i32> <i32 0, i32 2>
  %i.aan = and <2 x i64> %i.yz, splat (i64 4294967295)
  %i.aao = mul nuw <2 x i64> %i.aan, %i.ul
  %i.aap = bitcast <2 x i64> %i.yz to <4 x i32>
  %i.aaq = and <4 x i32> %i.aap, <i32 0, i32 -1, i32 0, i32 -1>
  %.inner330 = shufflevector <4 x i32> %i.aaq, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.aar = bitcast <4 x i32> %.inner330 to <2 x i64>
  %i.aas = mul nuw <2 x i64> %i.ul, %i.aar
  %i.aat = bitcast <2 x i64> %i.aao to <4 x i32>  ; 2 uses
  %i.aau = bitcast <2 x i64> %i.aas to <4 x i32>  ; 2 uses
  %i.aav = shufflevector <4 x i32> %i.aat, <4 x i32> %i.aau, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aaw = bitcast <4 x i32> %i.aav to <2 x i64>
  %i.aax = shufflevector <4 x i32> %i.aat, <4 x i32> %i.aau, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aay = bitcast <4 x i32> %i.aax to <2 x i64>
  %i.aaz = shufflevector <2 x i64> %i.aaw, <2 x i64> %i.aay, <2 x i32> <i32 0, i32 2>
  %i.aba = bitcast <2 x i64> %i.zm to <4 x i32>   ; 2 uses
  %i.abb = bitcast <2 x i64> %i.aam to <4 x i32>  ; 3 uses
  %i.abc = add <4 x i32> %i.aba, %i.abb           ; 4 uses
  %i.abd = bitcast <2 x i64> %i.zz to <4 x i32>
  %i.abe = bitcast <2 x i64> %i.aaz to <4 x i32>  ; 2 uses
  %i.abf = add <4 x i32> %i.abd, %i.abe           ; 4 uses
  %shift = shufflevector <4 x i32> %i.abe, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.abg = icmp eq <4 x i32> %shift, %i.abb
  %i.abh = extractelement <4 x i1> %i.abg, i64 0
  %or.cond.i.i = and i1 %i.ba, %i.abh
  br i1 %or.cond.i.i, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %foldExtExtBinop = add nsw <4 x i32> %i.aba, %i.abb
  %i.abi = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 3 uses
  br i1 %i.um, label %.preheader149.i.i, label %.loopexit148.i.i

.preheader149.i.i:                                ; preds = %bb.j
  br i1 %i.un, label %.lr.ph168.i.i, label %.preheader147.i.i

.lr.ph168.i.i:                                    ; preds = %.preheader149.i.i
  %i.abj = sext i32 %i.abi to i64                 ; 2 uses
  br label %bb.k

.preheader147.i.i:                                ; preds = %bb.k, %.preheader149.i.i
  %.01100.lcssa.i.i = phi i32 [ 0, %.preheader149.i.i ], [ %i.acs, %bb.k ] ; 2 uses
  %.1.lcssa.i.i = phi ptr [ %.0180.i.i, %.preheader149.i.i ], [ %i.acr, %bb.k ] ; 2 uses
  %i.abk = icmp slt i32 %.01100.lcssa.i.i, %.sroa.speculated
  br i1 %i.abk, label %.lr.ph173.i.i, label %.loopexit146.i.i

.lr.ph173.i.i:                                    ; preds = %.preheader147.i.i
  %i.abl = sext i32 %i.abi to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph168.i.i
  %.1167.i.i = phi ptr [ %.0180.i.i, %.lr.ph168.i.i ], [ %i.acr, %bb.k ] ; 2 uses
  %.01100166.i.i = phi i32 [ 0, %.lr.ph168.i.i ], [ %i.acs, %bb.k ] ; 2 uses
  %i.abm = add nsw i32 %.01100166.i.i, %i.y       ; 3 uses
  %i.abn = sdiv i32 %i.abm, %i.sz
  %i.abo = add nsw i32 %i.abm, 1                  ; 2 uses
  %i.abp = sdiv i32 %i.abo, %i.sz
  %32 = insertelement <2 x i32> poison, i32 %i.abm, i64 0
  %33 = insertelement <2 x i32> %32, i32 %i.abo, i64 1
  %34 = srem <2 x i32> %33, %21                   ; 3 uses
  %35 = extractelement <2 x i32> %34, i64 0
  %i.abq = sdiv i32 %35, %i.aq
  %36 = extractelement <2 x i32> %34, i64 1
  %37 = sdiv i32 %36, %i.aq
  %38 = srem <2 x i32> %34, %23                   ; 2 uses
  %i.abr = sext i32 %i.abn to i64
  %i.abs = mul i64 %i.bd, %i.abr
  %i.abt = mul i32 %i.abq, %i.uo
  %39 = extractelement <2 x i32> %38, i64 0
  %i.abu = mul nsw i32 %39, %i.as
  %i.abv = add nsw i32 %i.abu, %i.abt
  %i.abw = sext i32 %i.abv to i64
  %i.abx = sext i32 %i.abp to i64
  %i.aby = mul i64 %i.bd, %i.abx
  %i.abz = mul i32 %37, %i.uo
  %40 = extractelement <2 x i32> %38, i64 1
  %i.aca = mul nsw i32 %40, %i.as
  %i.acb = add nsw i32 %i.aca, %i.abz
  %i.acc = sext i32 %i.acb to i64
  %i.acd = load ptr, ptr %9, align 8, !tbaa !34   ; 2 uses
  %i.ace = getelementptr i8, ptr %i.acd, i64 %i.abs
  %i.acf = getelementptr i8, ptr %i.ace, i64 %i.abj
  %i.acg = getelementptr i8, ptr %i.acf, i64 %i.abw
  %i.ach = load i64, ptr %i.acg, align 1, !tbaa !108
  %i.aci = insertelement <2 x i64> poison, i64 %i.ach, i64 0
  %i.acj = getelementptr i8, ptr %i.acd, i64 %i.aby
  %i.ack = getelementptr i8, ptr %i.acj, i64 %i.abj
  %i.acl = getelementptr i8, ptr %i.ack, i64 %i.acc
  %i.acm = load i64, ptr %i.acl, align 1, !tbaa !108
  %i.acn = insertelement <2 x i64> poison, i64 %i.acm, i64 0
  %i.aco = bitcast <2 x i64> %i.aci to <16 x i8>
  %i.acp = bitcast <2 x i64> %i.acn to <16 x i8>
  %i.acq = shufflevector <16 x i8> %i.aco, <16 x i8> %i.acp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.acq, ptr %.1167.i.i, align 1, !tbaa !108
  %i.acr = getelementptr inbounds nuw i8, ptr %.1167.i.i, i64 16 ; 2 uses
  %i.acs = add nuw nsw i32 %.01100166.i.i, 2      ; 3 uses
  %i.act = or disjoint i32 %i.acs, 1
  %i.acu = icmp slt i32 %i.act, %.sroa.speculated
  br i1 %i.acu, label %bb.k, label %.preheader147.i.i, !llvm.loop !1467

bb.l:                                             ; preds = %bb.l, %.lr.ph173.i.i
  %.2172.i.i = phi ptr [ %.1.lcssa.i.i, %.lr.ph173.i.i ], [ %i.adl, %bb.l ] ; 2 uses
  %.11101171.i.i = phi i32 [ %.01100.lcssa.i.i, %.lr.ph173.i.i ], [ %i.adm, %bb.l ] ; 2 uses
  %i.acv = add nsw i32 %.11101171.i.i, %i.y       ; 2 uses
  %i.acw = sdiv i32 %i.acv, %i.sz
  %i.acx = srem i32 %i.acv, %i.sz                 ; 2 uses
  %i.acy = sdiv i32 %i.acx, %i.aq
  %i.acz = srem i32 %i.acx, %i.aq
  %i.ada = sext i32 %i.acw to i64
  %i.adb = mul i64 %i.bd, %i.ada
  %i.adc = mul i32 %i.acy, %i.uo
  %i.add = mul nsw i32 %i.acz, %i.as
  %i.ade = add nsw i32 %i.add, %i.adc
  %i.adf = sext i32 %i.ade to i64
  %i.adg = load ptr, ptr %9, align 8, !tbaa !34
  %i.adh = getelementptr i8, ptr %i.adg, i64 %i.adb
  %i.adi = getelementptr i8, ptr %i.adh, i64 %i.abl
  %i.adj = getelementptr i8, ptr %i.adi, i64 %i.adf
  %i.adk = load i64, ptr %i.adj, align 1, !tbaa !108
  store i64 %i.adk, ptr %.2172.i.i, align 1, !tbaa !108
  %i.adl = getelementptr inbounds nuw i8, ptr %.2172.i.i, i64 8 ; 2 uses
  %i.adm = add nuw nsw i32 %.11101171.i.i, 1      ; 2 uses
  %exitcond315.not.i.i = icmp eq i32 %i.adm, %.sroa.speculated
  br i1 %exitcond315.not.i.i, label %.loopexit146.i.i, label %bb.l, !llvm.loop !1468

.loopexit148.i.i:                                 ; preds = %bb.j
  br i1 %brmerge266.i.i, label %.loopexit146.i.i, label %.lr.ph177.i.i

.lr.ph177.i.i:                                    ; preds = %.loopexit148.i.i
  %i.adn = sext i32 %i.abi to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph177.i.i
  %.4176.i.i = phi ptr [ %.0180.i.i, %.lr.ph177.i.i ], [ %i.afa, %bb.m ] ; 5 uses
  %.01102175.i.i = phi i32 [ 0, %.lr.ph177.i.i ], [ %i.afb, %bb.m ] ; 2 uses
  %i.ado = add nsw i32 %.01102175.i.i, %i.ut      ; 2 uses
  %i.adp = sdiv i32 %i.ado, %i.sz
  %i.adq = srem i32 %i.ado, %i.sz                 ; 2 uses
  %i.adr = sdiv i32 %i.adq, %i.aq
  %i.ads = srem i32 %i.adq, %i.aq
  %i.adt = sext i32 %i.adp to i64
  %i.adu = mul i64 %i.bd, %i.adt
  %i.adv = add i64 %i.adu, %i.adn
  %i.adw = mul i32 %i.adr, %i.uo
  %i.adx = mul nsw i32 %i.ads, %i.as
  %i.ady = add nsw i32 %i.adx, %i.adw
  %i.adz = sext i32 %i.ady to i64
  %i.aea = add i64 %i.adv, %i.adz
  %i.aeb = shl i64 %i.aea, 3
  %i.aec = load ptr, ptr %9, align 8, !tbaa !34
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 %i.aeb ; 4 uses
  %i.aee = load <8 x i16>, ptr %i.aed, align 1, !tbaa !108 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aed, i64 16
  %i.aeg = load <8 x i16>, ptr %i.aef, align 1, !tbaa !108 ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aed, i64 32
  %i.aei = load <8 x i16>, ptr %i.aeh, align 1, !tbaa !108 ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aed, i64 48
  %i.aek = load <8 x i16>, ptr %i.aej, align 1, !tbaa !108 ; 2 uses
  %i.ael = shufflevector <8 x i16> %i.aee, <8 x i16> %i.aeg, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.aem = bitcast <8 x i16> %i.ael to <2 x i64>  ; 2 uses
  %i.aen = shufflevector <8 x i16> %i.aei, <8 x i16> %i.aek, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.aeo = bitcast <8 x i16> %i.aen to <2 x i64>  ; 2 uses
  %i.aep = shufflevector <8 x i16> %i.aee, <8 x i16> %i.aeg, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.aeq = bitcast <8 x i16> %i.aep to <2 x i64>  ; 2 uses
  %i.aer = shufflevector <8 x i16> %i.aei, <8 x i16> %i.aek, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.aes = bitcast <8 x i16> %i.aer to <2 x i64>  ; 2 uses
  %i.aet = shufflevector <2 x i64> %i.aem, <2 x i64> %i.aeo, <2 x i32> <i32 0, i32 2>
  %i.aeu = shufflevector <2 x i64> %i.aem, <2 x i64> %i.aeo, <2 x i32> <i32 1, i32 3>
  %i.aev = shufflevector <2 x i64> %i.aeq, <2 x i64> %i.aes, <2 x i32> <i32 0, i32 2>
  %i.aew = shufflevector <2 x i64> %i.aeq, <2 x i64> %i.aes, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.aet, ptr %.4176.i.i, align 1, !tbaa !108
  %i.aex = getelementptr inbounds nuw i8, ptr %.4176.i.i, i64 16
  store <2 x i64> %i.aeu, ptr %i.aex, align 1, !tbaa !108
  %i.aey = getelementptr inbounds nuw i8, ptr %.4176.i.i, i64 32
  store <2 x i64> %i.aev, ptr %i.aey, align 1, !tbaa !108
  %i.aez = getelementptr inbounds nuw i8, ptr %.4176.i.i, i64 48
  store <2 x i64> %i.aew, ptr %i.aez, align 1, !tbaa !108
  %i.afa = getelementptr inbounds nuw i8, ptr %.4176.i.i, i64 64 ; 2 uses
  %i.afb = add nuw nsw i32 %.01102175.i.i, 1      ; 2 uses
  %exitcond316.not.i.i = icmp eq i32 %i.afb, %i.ur
  br i1 %exitcond316.not.i.i, label %.loopexit146.i.i, label %bb.m, !llvm.loop !1469

bb.n:                                             ; preds = %bb.i
  br i1 %i.um, label %.preheader154.i.i, label %.loopexit153.i.i

.preheader154.i.i:                                ; preds = %bb.n
  br i1 %i.un, label %.lr.ph.i42.i, label %.preheader152.i.i

.preheader152.i.i:                                ; preds = %.lr.ph.i42.i, %.preheader154.i.i
  %.01103.lcssa.i.i = phi i32 [ 0, %.preheader154.i.i ], [ %i.ajc, %.lr.ph.i42.i ] ; 2 uses
  %.6.lcssa.i40.i = phi ptr [ %.0180.i.i, %.preheader154.i.i ], [ %i.ajb, %.lr.ph.i42.i ] ; 2 uses
  %i.afc = icmp slt i32 %.01103.lcssa.i.i, %.sroa.speculated
  br i1 %i.afc, label %.lr.ph160.i.i, label %.loopexit146.i.i

.lr.ph.i42.i:                                     ; preds = %.preheader154.i.i, %.lr.ph.i42.i
  %.6156.i.i = phi ptr [ %i.ajb, %.lr.ph.i42.i ], [ %.0180.i.i, %.preheader154.i.i ] ; 17 uses
  %.01103155.i.i = phi i32 [ %i.ajc, %.lr.ph.i42.i ], [ 0, %.preheader154.i.i ] ; 2 uses
  %i.afd = add nsw i32 %.01103155.i.i, %i.y       ; 3 uses
  %i.afe = sdiv i32 %i.afd, %i.sz
  %i.aff = add nsw i32 %i.afd, 1                  ; 2 uses
  %i.afg = sdiv i32 %i.aff, %i.sz
  %41 = insertelement <2 x i32> poison, i32 %i.afd, i64 0
  %42 = insertelement <2 x i32> %41, i32 %i.aff, i64 1
  %43 = srem <2 x i32> %42, %17                   ; 3 uses
  %44 = extractelement <2 x i32> %43, i64 0
  %i.afh = sdiv i32 %44, %i.aq
  %45 = extractelement <2 x i32> %43, i64 1
  %i.afi = sdiv i32 %45, %i.aq
  %46 = srem <2 x i32> %43, %19                   ; 2 uses
  %47 = mul i32 %i.afh, %i.uo
  %48 = extractelement <2 x i32> %46, i64 0
  %i.afj = mul nsw i32 %48, %i.as
  %i.afk = mul i32 %i.afi, %i.uo
  %49 = extractelement <2 x i32> %46, i64 1
  %i.afl = mul nsw i32 %49, %i.as
  %i.afm = mul i32 %i.afe, %i.up
  %i.afn = add i32 %47, %i.afm
  %i.afo = add i32 %i.afn, %i.afj
  %i.afp = insertelement <4 x i32> poison, i32 %i.afo, i64 0
  %i.afq = shufflevector <4 x i32> %i.afp, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afr = add <4 x i32> %i.afq, %i.abc           ; 4 uses
  %i.afs = add <4 x i32> %i.afq, %i.abf           ; 4 uses
  %i.aft = mul i32 %i.afg, %i.up
  %i.afu = add i32 %i.afk, %i.aft
  %i.afv = add i32 %i.afu, %i.afl
  %i.afw = insertelement <4 x i32> poison, i32 %i.afv, i64 0
  %i.afx = shufflevector <4 x i32> %i.afw, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afy = add <4 x i32> %i.afx, %i.abc           ; 4 uses
  %i.afz = add <4 x i32> %i.afx, %i.abf           ; 4 uses
  %i.aga = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.052.0.vec.extract.i.i = extractelement <4 x i32> %i.afr, i64 0
  %i.agb = sext i32 %.sroa.052.0.vec.extract.i.i to i64
  %i.agc = getelementptr inbounds i8, ptr %i.aga, i64 %i.agb
  %i.agd = load i8, ptr %i.agc, align 1, !tbaa !108
  store i8 %i.agd, ptr %.6156.i.i, align 1, !tbaa !108
  %i.age = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.12.32.vec.extract.i.i = extractelement <4 x i32> %i.afy, i64 0
  %i.agf = sext i32 %.sroa.12.32.vec.extract.i.i to i64
  %i.agg = getelementptr inbounds i8, ptr %i.age, i64 %i.agf
  %i.agh = load i8, ptr %i.agg, align 1, !tbaa !108
  %i.agi = getelementptr inbounds nuw i8, ptr %.6156.i.i, i64 1
  store i8 %i.agh, ptr %i.agi, align 1, !tbaa !108
  %i.agj = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.052.4.vec.extract.i.i = extractelement <4 x i32> %i.afr, i64 1
  %i.agk = sext i32 %.sroa.052.4.vec.extract.i.i to i64
  %i.agl = getelementptr inbounds i8, ptr %i.agj, i64 %i.agk
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !108
  %i.agn = getelementptr inbounds nuw i8, ptr %.6156.i.i, i64 2
  store i8 %i.agm, ptr %i.agn, align 1, !tbaa !108
  %i.ago = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.12.36.vec.extract.i.i = extractelement <4 x i32> %i.afy, i64 1
  %i.agp = sext i32 %.sroa.12.36.vec.extract.i.i to i64
  %i.agq = getelementptr inbounds i8, ptr %i.ago, i64 %i.agp
  %i.agr = load i8, ptr %i.agq, align 1, !tbaa !108
  %i.ags = getelementptr inbounds nuw i8, ptr %.6156.i.i, i64 3
  store i8 %i.agr, ptr %i.ags, align 1, !tbaa !108
  %i.agt = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.052.8.vec.extract.i.i = extractelement <4 x i32> %i.afr, i64 2
  %i.agu = sext i32 %.sroa.052.8.vec.extract.i.i to i64
  %i.agv = getelementptr inbounds i8, ptr %i.agt, i64 %i.agu
  %i.agw = load i8, ptr %i.agv, align 1, !tbaa !108
  %i.agx = getelementptr inbounds nuw i8, ptr %.6156.i.i, i64 4
  store i8 %i.agw, ptr %i.agx, align 1, !tbaa !108
  %i.agy = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.12.40.vec.extract.i.i = extractelement <4 x i32> %i.afy, i64 2
  %i.agz = sext i32 %.sroa.12.40.vec.extract.i.i to i64
  %i.aha = getelementptr inbounds i8, ptr %i.agy, i64 %i.agz
  %i.ahb = load i8, ptr %i.aha, align 1, !tbaa !108
  %i.ahc = getelementptr inbounds nuw i8, ptr %.6156.i.i, i64 5
  store i8 %i.ahb, ptr %i.ahc, align 1, !tbaa !108
  %i.ahd = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.052.12.vec.extract.i.i = extractelement <4 x i32> %i.afr, i64 3
  %i.ahe = sext i32 %.sroa.052.12.vec.extract.i.i to i64
  %i.ahf = getelementptr inbounds i8, ptr %i.ahd, i64 %i.ahe
  %i.ahg = load i8, ptr %i.ahf, align 1, !tbaa !108
  %i.ahh = getelementptr inbounds nuw i8, ptr %.6156.i.i, i64 6
  store i8 %i.ahg, ptr %i.ahh, align 1, !tbaa !108
  %i.ahi = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.12.44.vec.extract.i.i = extractelement <4 x i32> %i.afy, i64 3
  %i.ahj = sext i32 %.sroa.12.44.vec.extract.i.i to i64
  %i.ahk = getelementptr inbounds i8, ptr %i.ahi, i64 %i.ahj
  %i.ahl = load i8, ptr %i.ahk, align 1, !tbaa !108
  %i.ahm = getelementptr inbounds nuw i8, ptr %.6156.i.i, i64 7
  store i8 %i.ahl, ptr %i.ahm, align 1, !tbaa !108
  %i.ahn = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.754.16.vec.extract.i.i = extractelement <4 x i32> %i.afs, i64 0
  %i.aho = sext i32 %.sroa.754.16.vec.extract.i.i to i64
  %i.ahp = getelementptr inbounds i8, ptr %i.ahn, i64 %i.aho
  %i.ahq = load i8, ptr %i.ahp, align 1, !tbaa !108
  %i.ahr = getelementptr inbounds nuw i8, ptr %.6156.i.i, i64 8
  store i8 %i.ahq, ptr %i.ahr, align 1, !tbaa !108
  %i.ahs = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.17.48.vec.extract.i.i = extractelement <4 x i32> %i.afz, i64 0
  %i.aht = sext i32 %.sroa.17.48.vec.extract.i.i to i64
  %i.ahu = getelementptr inbounds i8, ptr %i.ahs, i64 %i.aht
  %i.ahv = load i8, ptr %i.ahu, align 1, !tbaa !108
  %i.ahw = getelementptr inbounds nuw i8, ptr %.6156.i.i, i64 9
  store i8 %i.ahv, ptr %i.ahw, align 1, !tbaa !108
  %i.ahx = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.754.20.vec.extract.i.i = extractelement <4 x i32> %i.afs, i64 1
  %i.ahy = sext i32 %.sroa.754.20.vec.extract.i.i to i64
  %i.ahz = getelementptr inbounds i8, ptr %i.ahx, i64 %i.ahy
  %i.aia = load i8, ptr %i.ahz, align 1, !tbaa !108
  %i.aib = getelementptr inbounds nuw i8, ptr %.6156.i.i, i64 10
  store i8 %i.aia, ptr %i.aib, align 1, !tbaa !108
  %i.aic = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.17.52.vec.extract.i.i = extractelement <4 x i32> %i.afz, i64 1
  %i.aid = sext i32 %.sroa.17.52.vec.extract.i.i to i64
  %i.aie = getelementptr inbounds i8, ptr %i.aic, i64 %i.aid
  %i.aif = load i8, ptr %i.aie, align 1, !tbaa !108
  %i.aig = getelementptr inbounds nuw i8, ptr %.6156.i.i, i64 11
  store i8 %i.aif, ptr %i.aig, align 1, !tbaa !108
  %i.aih = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.754.24.vec.extract.i.i = extractelement <4 x i32> %i.afs, i64 2
  %i.aii = sext i32 %.sroa.754.24.vec.extract.i.i to i64
  %i.aij = getelementptr inbounds i8, ptr %i.aih, i64 %i.aii
  %i.aik = load i8, ptr %i.aij, align 1, !tbaa !108
  %i.ail = getelementptr inbounds nuw i8, ptr %.6156.i.i, i64 12
  store i8 %i.aik, ptr %i.ail, align 1, !tbaa !108
  %i.aim = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.17.56.vec.extract.i.i = extractelement <4 x i32> %i.afz, i64 2
  %i.ain = sext i32 %.sroa.17.56.vec.extract.i.i to i64
  %i.aio = getelementptr inbounds i8, ptr %i.aim, i64 %i.ain
  %i.aip = load i8, ptr %i.aio, align 1, !tbaa !108
  %i.aiq = getelementptr inbounds nuw i8, ptr %.6156.i.i, i64 13
  store i8 %i.aip, ptr %i.aiq, align 1, !tbaa !108
  %i.air = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.754.28.vec.extract.i.i = extractelement <4 x i32> %i.afs, i64 3
  %i.ais = sext i32 %.sroa.754.28.vec.extract.i.i to i64
  %i.ait = getelementptr inbounds i8, ptr %i.air, i64 %i.ais
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !108
  %i.aiv = getelementptr inbounds nuw i8, ptr %.6156.i.i, i64 14
  store i8 %i.aiu, ptr %i.aiv, align 1, !tbaa !108
  %i.aiw = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.17.60.vec.extract.i.i = extractelement <4 x i32> %i.afz, i64 3
  %i.aix = sext i32 %.sroa.17.60.vec.extract.i.i to i64
  %i.aiy = getelementptr inbounds i8, ptr %i.aiw, i64 %i.aix
  %i.aiz = load i8, ptr %i.aiy, align 1, !tbaa !108
  %i.aja = getelementptr inbounds nuw i8, ptr %.6156.i.i, i64 15
  store i8 %i.aiz, ptr %i.aja, align 1, !tbaa !108
  %i.ajb = getelementptr inbounds nuw i8, ptr %.6156.i.i, i64 16 ; 2 uses
  %i.ajc = add nuw nsw i32 %.01103155.i.i, 2      ; 3 uses
  %i.ajd = or disjoint i32 %i.ajc, 1
  %i.aje = icmp slt i32 %i.ajd, %.sroa.speculated
  br i1 %i.aje, label %.lr.ph.i42.i, label %.preheader152.i.i, !llvm.loop !1470

.lr.ph160.i.i:                                    ; preds = %.preheader152.i.i, %.lr.ph160.i.i
  %.7159.i.i = phi ptr [ %i.alg, %.lr.ph160.i.i ], [ %.6.lcssa.i40.i, %.preheader152.i.i ] ; 9 uses
  %.11104158.i.i = phi i32 [ %i.alh, %.lr.ph160.i.i ], [ %.01103.lcssa.i.i, %.preheader152.i.i ] ; 2 uses
  %i.ajf = add nsw i32 %.11104158.i.i, %i.y       ; 2 uses
  %i.ajg = sdiv i32 %i.ajf, %i.sz
  %i.ajh = srem i32 %i.ajf, %i.sz                 ; 2 uses
  %i.aji = sdiv i32 %i.ajh, %i.aq
  %i.ajj = srem i32 %i.ajh, %i.aq
  %i.ajk = mul i32 %i.aji, %i.uo
  %i.ajl = mul nsw i32 %i.ajj, %i.as
  %i.ajm = mul i32 %i.ajg, %i.up
  %i.ajn = add i32 %i.ajk, %i.ajm
  %i.ajo = add i32 %i.ajn, %i.ajl
  %i.ajp = insertelement <4 x i32> poison, i32 %i.ajo, i64 0
  %i.ajq = shufflevector <4 x i32> %i.ajp, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ajr = add <4 x i32> %i.ajq, %i.abc           ; 4 uses
  %i.ajs = add <4 x i32> %i.ajq, %i.abf           ; 4 uses
  %i.ajt = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.048.0.vec.extract.i.i = extractelement <4 x i32> %i.ajr, i64 0
  %i.aju = sext i32 %.sroa.048.0.vec.extract.i.i to i64
  %i.ajv = getelementptr inbounds i8, ptr %i.ajt, i64 %i.aju
  %i.ajw = load i8, ptr %i.ajv, align 1, !tbaa !108
  store i8 %i.ajw, ptr %.7159.i.i, align 1, !tbaa !108
  %i.ajx = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.048.4.vec.extract.i.i = extractelement <4 x i32> %i.ajr, i64 1
  %i.ajy = sext i32 %.sroa.048.4.vec.extract.i.i to i64
  %i.ajz = getelementptr inbounds i8, ptr %i.ajx, i64 %i.ajy
  %i.aka = load i8, ptr %i.ajz, align 1, !tbaa !108
  %i.akb = getelementptr inbounds nuw i8, ptr %.7159.i.i, i64 1
  store i8 %i.aka, ptr %i.akb, align 1, !tbaa !108
  %i.akc = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.048.8.vec.extract.i.i = extractelement <4 x i32> %i.ajr, i64 2
  %i.akd = sext i32 %.sroa.048.8.vec.extract.i.i to i64
  %i.ake = getelementptr inbounds i8, ptr %i.akc, i64 %i.akd
  %i.akf = load i8, ptr %i.ake, align 1, !tbaa !108
  %i.akg = getelementptr inbounds nuw i8, ptr %.7159.i.i, i64 2
  store i8 %i.akf, ptr %i.akg, align 1, !tbaa !108
  %i.akh = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.048.12.vec.extract.i.i = extractelement <4 x i32> %i.ajr, i64 3
  %i.aki = sext i32 %.sroa.048.12.vec.extract.i.i to i64
  %i.akj = getelementptr inbounds i8, ptr %i.akh, i64 %i.aki
  %i.akk = load i8, ptr %i.akj, align 1, !tbaa !108
  %i.akl = getelementptr inbounds nuw i8, ptr %.7159.i.i, i64 3
  store i8 %i.akk, ptr %i.akl, align 1, !tbaa !108
  %i.akm = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.750.16.vec.extract.i.i = extractelement <4 x i32> %i.ajs, i64 0
  %i.akn = sext i32 %.sroa.750.16.vec.extract.i.i to i64
  %i.ako = getelementptr inbounds i8, ptr %i.akm, i64 %i.akn
  %i.akp = load i8, ptr %i.ako, align 1, !tbaa !108
  %i.akq = getelementptr inbounds nuw i8, ptr %.7159.i.i, i64 4
  store i8 %i.akp, ptr %i.akq, align 1, !tbaa !108
  %i.akr = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.750.20.vec.extract.i.i = extractelement <4 x i32> %i.ajs, i64 1
  %i.aks = sext i32 %.sroa.750.20.vec.extract.i.i to i64
  %i.akt = getelementptr inbounds i8, ptr %i.akr, i64 %i.aks
  %i.aku = load i8, ptr %i.akt, align 1, !tbaa !108
  %i.akv = getelementptr inbounds nuw i8, ptr %.7159.i.i, i64 5
  store i8 %i.aku, ptr %i.akv, align 1, !tbaa !108
  %i.akw = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.750.24.vec.extract.i.i = extractelement <4 x i32> %i.ajs, i64 2
  %i.akx = sext i32 %.sroa.750.24.vec.extract.i.i to i64
  %i.aky = getelementptr inbounds i8, ptr %i.akw, i64 %i.akx
  %i.akz = load i8, ptr %i.aky, align 1, !tbaa !108
  %i.ala = getelementptr inbounds nuw i8, ptr %.7159.i.i, i64 6
  store i8 %i.akz, ptr %i.ala, align 1, !tbaa !108
  %i.alb = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.750.28.vec.extract.i.i = extractelement <4 x i32> %i.ajs, i64 3
  %i.alc = sext i32 %.sroa.750.28.vec.extract.i.i to i64
  %i.ald = getelementptr inbounds i8, ptr %i.alb, i64 %i.alc
  %i.ale = load i8, ptr %i.ald, align 1, !tbaa !108
  %i.alf = getelementptr inbounds nuw i8, ptr %.7159.i.i, i64 7
  store i8 %i.ale, ptr %i.alf, align 1, !tbaa !108
  %i.alg = getelementptr inbounds nuw i8, ptr %.7159.i.i, i64 8 ; 2 uses
  %i.alh = add nuw nsw i32 %.11104158.i.i, 1      ; 2 uses
  %exitcond.not.i41.i = icmp eq i32 %i.alh, %.sroa.speculated
  br i1 %exitcond.not.i41.i, label %.loopexit146.i.i, label %.lr.ph160.i.i, !llvm.loop !1471

.loopexit153.i.i:                                 ; preds = %bb.n
  br i1 %brmerge266.i.i, label %.loopexit146.i.i, label %.lr.ph164.i.i

.lr.ph164.i.i:                                    ; preds = %.loopexit153.i.i, %.lr.ph164.i.i
  %.9163.i.i = phi ptr [ %i.apm, %.lr.ph164.i.i ], [ %.0180.i.i, %.loopexit153.i.i ] ; 5 uses
  %.01105162.i.i = phi i32 [ %i.apn, %.lr.ph164.i.i ], [ 0, %.loopexit153.i.i ] ; 2 uses
  %i.ali = add nsw i32 %.01105162.i.i, %i.ut      ; 2 uses
  %i.alj = sdiv i32 %i.ali, %i.sz
  %i.alk = srem i32 %i.ali, %i.sz                 ; 2 uses
  %i.all = sdiv i32 %i.alk, %i.aq
  %i.alm = srem i32 %i.alk, %i.aq
  %i.aln = mul i32 %i.all, %i.uo
  %i.alo = mul nsw i32 %i.alm, %i.as
  %i.alp = mul i32 %i.alj, %i.up
  %i.alq = add i32 %i.aln, %i.alp
  %i.alr = add i32 %i.alq, %i.alo
  %i.als = insertelement <4 x i32> poison, i32 %i.alr, i64 0
  %i.alt = shufflevector <4 x i32> %i.als, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.alu = add <4 x i32> %i.alt, %i.abc           ; 2 uses
  %i.alv = bitcast <4 x i32> %i.alu to <2 x i64>
  %i.alw = add <4 x i32> %i.alt, %i.abf           ; 2 uses
  %i.alx = bitcast <4 x i32> %i.alw to <2 x i64>
  %i.aly = shl <2 x i64> %i.alv, splat (i64 3)
  %i.alz = shufflevector <4 x i32> %i.alu, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ama = bitcast <4 x i32> %i.alz to <2 x i64>
  %i.amb = shl <2 x i64> %i.ama, splat (i64 3)
  %i.amc = bitcast <2 x i64> %i.aly to <4 x i32>
  %i.amd = and <4 x i32> %i.amc, <i32 -8, i32 7, i32 -8, i32 7> ; 2 uses
  %i.ame = bitcast <2 x i64> %i.amb to <4 x i32>
  %i.amf = and <4 x i32> %i.ame, <i32 -8, i32 7, i32 -8, i32 7> ; 2 uses
  %i.amg = shufflevector <4 x i32> %i.amd, <4 x i32> %i.amf, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.amh = bitcast <4 x i32> %i.amg to <2 x i64>
  %i.ami = shufflevector <4 x i32> %i.amd, <4 x i32> %i.amf, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.amj = bitcast <4 x i32> %i.ami to <2 x i64>
  %i.amk = shufflevector <2 x i64> %i.amh, <2 x i64> %i.amj, <2 x i32> <i32 0, i32 2>
  %i.aml = shl <2 x i64> %i.alx, splat (i64 3)
  %i.amm = shufflevector <4 x i32> %i.alw, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.amn = bitcast <4 x i32> %i.amm to <2 x i64>
  %i.amo = shl <2 x i64> %i.amn, splat (i64 3)
  %i.amp = bitcast <2 x i64> %i.aml to <4 x i32>
  %i.amq = and <4 x i32> %i.amp, <i32 -8, i32 7, i32 -8, i32 7> ; 2 uses
  %i.amr = bitcast <2 x i64> %i.amo to <4 x i32>
  %i.ams = and <4 x i32> %i.amr, <i32 -8, i32 7, i32 -8, i32 7> ; 2 uses
  %i.amt = shufflevector <4 x i32> %i.amq, <4 x i32> %i.ams, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.amu = bitcast <4 x i32> %i.amt to <2 x i64>
  %i.amv = shufflevector <4 x i32> %i.amq, <4 x i32> %i.ams, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.amw = bitcast <4 x i32> %i.amv to <2 x i64>
  %i.amx = shufflevector <2 x i64> %i.amu, <2 x i64> %i.amw, <2 x i32> <i32 0, i32 2>
  %i.amy = bitcast <2 x i64> %i.amk to <4 x i32>  ; 4 uses
  %i.amz = bitcast <2 x i64> %i.amx to <4 x i32>  ; 4 uses
  %i.ana = load ptr, ptr %9, align 8, !tbaa !34   ; 8 uses
  %.sroa.034.0.vec.extract.i.i = extractelement <4 x i32> %i.amy, i64 0
  %i.anb = sext i32 %.sroa.034.0.vec.extract.i.i to i64
  %i.anc = getelementptr inbounds i8, ptr %i.ana, i64 %i.anb
  %i.and = load i64, ptr %i.anc, align 1, !tbaa !108
  %i.ane = insertelement <2 x i64> poison, i64 %i.and, i64 0
  %.sroa.034.4.vec.extract.i.i = extractelement <4 x i32> %i.amy, i64 1
  %i.anf = sext i32 %.sroa.034.4.vec.extract.i.i to i64
  %i.ang = getelementptr inbounds i8, ptr %i.ana, i64 %i.anf
  %i.anh = load i64, ptr %i.ang, align 1, !tbaa !108
  %i.ani = insertelement <2 x i64> poison, i64 %i.anh, i64 0
  %.sroa.034.8.vec.extract.i.i = extractelement <4 x i32> %i.amy, i64 2
  %i.anj = sext i32 %.sroa.034.8.vec.extract.i.i to i64
  %i.ank = getelementptr inbounds i8, ptr %i.ana, i64 %i.anj
  %i.anl = load i64, ptr %i.ank, align 1, !tbaa !108
  %i.anm = insertelement <2 x i64> poison, i64 %i.anl, i64 0
  %.sroa.034.12.vec.extract.i.i = extractelement <4 x i32> %i.amy, i64 3
  %i.ann = sext i32 %.sroa.034.12.vec.extract.i.i to i64
  %i.ano = getelementptr inbounds i8, ptr %i.ana, i64 %i.ann
  %i.anp = load i64, ptr %i.ano, align 1, !tbaa !108
  %i.anq = insertelement <2 x i64> poison, i64 %i.anp, i64 0
  %.sroa.736.16.vec.extract.i.i = extractelement <4 x i32> %i.amz, i64 0
  %i.anr = sext i32 %.sroa.736.16.vec.extract.i.i to i64
  %i.ans = getelementptr inbounds i8, ptr %i.ana, i64 %i.anr
  %i.ant = load i64, ptr %i.ans, align 1, !tbaa !108
  %i.anu = insertelement <2 x i64> poison, i64 %i.ant, i64 0
  %.sroa.736.20.vec.extract.i.i = extractelement <4 x i32> %i.amz, i64 1
  %i.anv = sext i32 %.sroa.736.20.vec.extract.i.i to i64
  %i.anw = getelementptr inbounds i8, ptr %i.ana, i64 %i.anv
  %i.anx = load i64, ptr %i.anw, align 1, !tbaa !108
  %i.any = insertelement <2 x i64> poison, i64 %i.anx, i64 0
  %.sroa.736.24.vec.extract.i.i = extractelement <4 x i32> %i.amz, i64 2
  %i.anz = sext i32 %.sroa.736.24.vec.extract.i.i to i64
  %i.aoa = getelementptr inbounds i8, ptr %i.ana, i64 %i.anz
  %i.aob = load i64, ptr %i.aoa, align 1, !tbaa !108
  %i.aoc = insertelement <2 x i64> poison, i64 %i.aob, i64 0
  %.sroa.736.28.vec.extract.i.i = extractelement <4 x i32> %i.amz, i64 3
  %i.aod = sext i32 %.sroa.736.28.vec.extract.i.i to i64
  %i.aoe = getelementptr inbounds i8, ptr %i.ana, i64 %i.aod
  %i.aof = load i64, ptr %i.aoe, align 1, !tbaa !108
  %i.aog = insertelement <2 x i64> poison, i64 %i.aof, i64 0
  %i.aoh = bitcast <2 x i64> %i.ane to <8 x i16>
  %i.aoi = bitcast <2 x i64> %i.ani to <8 x i16>
  %i.aoj = shufflevector <8 x i16> %i.aoh, <8 x i16> %i.aoi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aok = bitcast <2 x i64> %i.anm to <8 x i16>
  %i.aol = bitcast <2 x i64> %i.anq to <8 x i16>
  %i.aom = shufflevector <8 x i16> %i.aok, <8 x i16> %i.aol, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aon = bitcast <2 x i64> %i.anu to <8 x i16>
  %i.aoo = bitcast <2 x i64> %i.any to <8 x i16>
  %i.aop = shufflevector <8 x i16> %i.aon, <8 x i16> %i.aoo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aoq = bitcast <2 x i64> %i.aoc to <8 x i16>
  %i.aor = bitcast <2 x i64> %i.aog to <8 x i16>
  %i.aos = shufflevector <8 x i16> %i.aoq, <8 x i16> %i.aor, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aot = bitcast <8 x i16> %i.aoj to <4 x i32>  ; 2 uses
  %i.aou = bitcast <8 x i16> %i.aom to <4 x i32>  ; 2 uses
  %i.aov = shufflevector <4 x i32> %i.aot, <4 x i32> %i.aou, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aow = bitcast <4 x i32> %i.aov to <2 x i64>  ; 2 uses
  %i.aox = shufflevector <4 x i32> %i.aot, <4 x i32> %i.aou, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.aoy = bitcast <4 x i32> %i.aox to <2 x i64>  ; 2 uses
  %i.aoz = bitcast <8 x i16> %i.aop to <4 x i32>  ; 2 uses
  %i.apa = bitcast <8 x i16> %i.aos to <4 x i32>  ; 2 uses
  %i.apb = shufflevector <4 x i32> %i.aoz, <4 x i32> %i.apa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.apc = bitcast <4 x i32> %i.apb to <2 x i64>  ; 2 uses
  %i.apd = shufflevector <4 x i32> %i.aoz, <4 x i32> %i.apa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ape = bitcast <4 x i32> %i.apd to <2 x i64>  ; 2 uses
  %i.apf = shufflevector <2 x i64> %i.aow, <2 x i64> %i.apc, <2 x i32> <i32 0, i32 2>
  %i.apg = shufflevector <2 x i64> %i.aow, <2 x i64> %i.apc, <2 x i32> <i32 1, i32 3>
  %i.aph = shufflevector <2 x i64> %i.aoy, <2 x i64> %i.ape, <2 x i32> <i32 0, i32 2>
  %i.api = shufflevector <2 x i64> %i.aoy, <2 x i64> %i.ape, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.apf, ptr %.9163.i.i, align 1, !tbaa !108
  %i.apj = getelementptr inbounds nuw i8, ptr %.9163.i.i, i64 16
  store <2 x i64> %i.apg, ptr %i.apj, align 1, !tbaa !108
  %i.apk = getelementptr inbounds nuw i8, ptr %.9163.i.i, i64 32
  store <2 x i64> %i.aph, ptr %i.apk, align 1, !tbaa !108
  %i.apl = getelementptr inbounds nuw i8, ptr %.9163.i.i, i64 48
  store <2 x i64> %i.api, ptr %i.apl, align 1, !tbaa !108
  %i.apm = getelementptr inbounds nuw i8, ptr %.9163.i.i, i64 64 ; 2 uses
  %i.apn = add nuw nsw i32 %.01105162.i.i, 1      ; 2 uses
  %exitcond314.not.i.i = icmp eq i32 %i.apn, %i.ur
  br i1 %exitcond314.not.i.i, label %.loopexit146.i.i, label %.lr.ph164.i.i, !llvm.loop !1472

.loopexit146.i.i:                                 ; preds = %.lr.ph164.i.i, %.lr.ph160.i.i, %bb.m, %bb.l, %.loopexit153.i.i, %.preheader152.i.i, %.loopexit148.i.i, %.preheader147.i.i
  %.10.i.i = phi ptr [ %.0180.i.i, %.loopexit153.i.i ], [ %.1.lcssa.i.i, %.preheader147.i.i ], [ %.0180.i.i, %.loopexit148.i.i ], [ %i.afa, %bb.m ], [ %i.adl, %bb.l ], [ %.6.lcssa.i40.i, %.preheader152.i.i ], [ %i.alg, %.lr.ph160.i.i ], [ %i.apm, %.lr.ph164.i.i ] ; 2 uses
  %i.apo = add nuw nsw i32 %.01096179.i.i, 8      ; 3 uses
  %i.app = or disjoint i32 %i.apo, 7
  %i.apq = icmp slt i32 %i.app, %.sroa.speculated64
  br i1 %i.apq, label %bb.i, label %.preheader144.i.i, !llvm.loop !1473

.preheader133.i.i:                                ; preds = %.loopexit135.i.i, %.preheader144.i.i
  %.11097.lcssa.i.i = phi i32 [ %.01096.lcssa.i.i, %.preheader144.i.i ], [ %i.bdd, %.loopexit135.i.i ] ; 3 uses
  %.11.lcssa.i.i = phi ptr [ %.0.lcssa.i.i, %.preheader144.i.i ], [ %.21.i.i, %.loopexit135.i.i ] ; 2 uses
  %i.apr = or disjoint i32 %.11097.lcssa.i.i, 1
  %i.aps = icmp slt i32 %i.apr, %.sroa.speculated64
  br i1 %i.aps, label %.lr.ph244.i.i, label %.preheader122.i33.i

.lr.ph244.i.i:                                    ; preds = %.preheader133.i.i
  %i.apt = mul i32 %i.ss, %i.av                   ; 2 uses
  %i.apu = icmp eq i32 %i.st, 1                   ; 2 uses
  %i.apv = icmp sgt i32 %.sroa.speculated, 1      ; 2 uses
  %i.apw = mul i32 %i.ss, %i.at                   ; 8 uses
  %i.apx = trunc i64 %i.bd to i32                 ; 2 uses
  %i.apy = icmp eq i32 %i.st, 8
  %i.apz = sdiv i32 %.sroa.speculated, 8          ; 2 uses
  %i.aqa = sdiv i32 %i.y, 8                       ; 2 uses
  %i.aqb = icmp ne i32 %i.st, 8
  %i.aqc = icmp slt i32 %.sroa.speculated, 8
  %i.aqd = icmp sgt i32 %.sroa.speculated, 7
  %or.cond276.i.i = and i1 %i.aqd, %i.apy
  %brmerge275.i.i = or i1 %i.aqc, %i.aqb
  %i.aqe = insertelement <2 x i32> poison, i32 %i.sz, i64 0
  %i.aqf = shufflevector <2 x i32> %i.aqe, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aqg = insertelement <2 x i32> poison, i32 %i.aq, i64 0
  %i.aqh = shufflevector <2 x i32> %i.aqg, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aqi = insertelement <2 x i32> poison, i32 %i.sz, i64 0
  %i.aqj = shufflevector <2 x i32> %i.aqi, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aqk = insertelement <2 x i32> poison, i32 %i.aq, i64 0
  %i.aql = shufflevector <2 x i32> %i.aqk, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.u

bb.o:                                             ; preds = %.loopexit135.i.i, %.lr.ph212.i.i
  %.11211.i.i = phi ptr [ %.0.lcssa.i.i, %.lr.ph212.i.i ], [ %.21.i.i, %.loopexit135.i.i ] ; 8 uses
  %.11097210.i.i = phi i32 [ %.01096.lcssa.i.i, %.lr.ph212.i.i ], [ %i.bdd, %.loopexit135.i.i ] ; 2 uses
  %i.aqm = add nsw i32 %.11097210.i.i, %i.w
  %i.aqn = insertelement <4 x i32> poison, i32 %i.aqm, i64 0
  %i.aqo = shufflevector <4 x i32> %i.aqn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aqp = add <4 x i32> %i.aqo, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.aqq = bitcast <4 x i32> %i.aqp to <2 x i64>
  %i.aqr = bitcast <4 x i32> %i.aqp to <2 x i64>
  %i.aqs = and <2 x i64> %i.aqr, splat (i64 4294967295)
  %i.aqt = mul nuw <2 x i64> %i.aqs, %i.ux
  %i.aqu = lshr <2 x i64> %i.aqt, splat (i64 32)
  %i.aqv = lshr <2 x i64> %i.aqq, splat (i64 32)
  %i.aqw = mul nuw <2 x i64> %i.aqv, %i.ux
  %i.aqx = and <2 x i64> %i.aqw, splat (i64 -4294967296)
  %i.aqy = or disjoint <2 x i64> %i.aqu, %i.aqx
  %i.aqz = bitcast <2 x i64> %i.aqy to <4 x i32>  ; 2 uses
  %i.ara = sub <4 x i32> %i.aqp, %i.aqz
  %i.arb = lshr <4 x i32> %i.ara, %i.uy
  %i.arc = add <4 x i32> %i.arb, %i.aqz
  %i.ard = call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.arc, <4 x i32> %i.tr) ; 2 uses
  %i.are = bitcast <4 x i32> %i.ard to <2 x i64>
  %i.arf = and <2 x i64> %i.are, splat (i64 4294967295) ; 2 uses
  %i.arg = mul nuw <2 x i64> %i.arf, %i.vc
  %i.arh = and <4 x i32> %i.ard, <i32 0, i32 -1, i32 0, i32 -1>
  %.inner338 = shufflevector <4 x i32> %i.arh, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ari = bitcast <4 x i32> %.inner338 to <2 x i64> ; 2 uses
  %i.arj = mul nuw <2 x i64> %i.vc, %i.ari
  %i.ark = bitcast <2 x i64> %i.arg to <4 x i32>  ; 2 uses
  %i.arl = bitcast <2 x i64> %i.arj to <4 x i32>  ; 2 uses
  %i.arm = shufflevector <4 x i32> %i.ark, <4 x i32> %i.arl, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.arn = bitcast <4 x i32> %i.arm to <2 x i64>
  %i.aro = shufflevector <4 x i32> %i.ark, <4 x i32> %i.arl, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.arp = bitcast <4 x i32> %i.aro to <2 x i64>
  %i.arq = shufflevector <2 x i64> %i.arn, <2 x i64> %i.arp, <2 x i32> <i32 0, i32 2>
  %i.arr = bitcast <2 x i64> %i.arq to <4 x i32>
  %i.ars = sub <4 x i32> %i.aqp, %i.arr           ; 2 uses
  %i.art = mul nuw <2 x i64> %i.arf, %i.vg
  %i.aru = mul nuw <2 x i64> %i.vg, %i.ari
  %i.arv = bitcast <2 x i64> %i.art to <4 x i32>  ; 2 uses
  %i.arw = bitcast <2 x i64> %i.aru to <4 x i32>  ; 2 uses
  %i.arx = shufflevector <4 x i32> %i.arv, <4 x i32> %i.arw, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ary = bitcast <4 x i32> %i.arx to <2 x i64>
  %i.arz = shufflevector <4 x i32> %i.arv, <4 x i32> %i.arw, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.asa = bitcast <4 x i32> %i.arz to <2 x i64>
  %i.asb = shufflevector <2 x i64> %i.ary, <2 x i64> %i.asa, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.asc = bitcast <4 x i32> %i.ars to <2 x i64>
  %i.asd = and <2 x i64> %i.asc, splat (i64 4294967295)
  %i.ase = mul nuw <2 x i64> %i.asd, %i.vk
  %i.asf = and <4 x i32> %i.ars, <i32 0, i32 -1, i32 0, i32 -1>
  %.inner340 = shufflevector <4 x i32> %i.asf, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.asg = bitcast <4 x i32> %.inner340 to <2 x i64>
  %i.ash = mul nuw <2 x i64> %i.vk, %i.asg
  %i.asi = bitcast <2 x i64> %i.ase to <4 x i32>  ; 2 uses
  %i.asj = bitcast <2 x i64> %i.ash to <4 x i32>  ; 2 uses
  %i.ask = shufflevector <4 x i32> %i.asi, <4 x i32> %i.asj, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.asl = bitcast <4 x i32> %i.ask to <2 x i64>
  %i.asm = shufflevector <4 x i32> %i.asi, <4 x i32> %i.asj, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.asn = bitcast <4 x i32> %i.asm to <2 x i64>
  %i.aso = shufflevector <2 x i64> %i.asl, <2 x i64> %i.asn, <2 x i32> <i32 0, i32 2>
  %i.asp = and <2 x i64> %i.asb, splat (i64 4294967295)
  %i.asq = mul nuw <2 x i64> %i.asp, %i.vo
  %i.asr = bitcast <2 x i64> %i.asb to <4 x i32>
  %i.ass = and <4 x i32> %i.asr, <i32 0, i32 -1, i32 0, i32 -1>
  %.inner341 = shufflevector <4 x i32> %i.ass, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ast = bitcast <4 x i32> %.inner341 to <2 x i64>
  %i.asu = mul nuw <2 x i64> %i.vo, %i.ast
  %i.asv = bitcast <2 x i64> %i.asq to <4 x i32>  ; 2 uses
  %i.asw = bitcast <2 x i64> %i.asu to <4 x i32>  ; 2 uses
  %i.asx = shufflevector <4 x i32> %i.asv, <4 x i32> %i.asw, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.asy = bitcast <4 x i32> %i.asx to <2 x i64>
  %i.asz = shufflevector <4 x i32> %i.asv, <4 x i32> %i.asw, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ata = bitcast <4 x i32> %i.asz to <2 x i64>
  %i.atb = shufflevector <2 x i64> %i.asy, <2 x i64> %i.ata, <2 x i32> <i32 0, i32 2>
  %i.atc = bitcast <2 x i64> %i.aso to <4 x i32>  ; 2 uses
  %i.atd = bitcast <2 x i64> %i.atb to <4 x i32>  ; 4 uses
  %i.ate = add <4 x i32> %i.atc, %i.atd           ; 4 uses
  %shift342 = shufflevector <4 x i32> %i.atd, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.atf = icmp eq <4 x i32> %shift342, %i.atd
  %i.atg = extractelement <4 x i1> %i.atf, i64 0
  %or.cond3.i.i = and i1 %i.ba, %i.atg
  br i1 %or.cond3.i.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %foldExtExtBinop343 = add nsw <4 x i32> %i.atc, %i.atd
  %i.ath = extractelement <4 x i32> %foldExtExtBinop343, i64 0 ; 3 uses
  br i1 %i.vp, label %.preheader138.i.i, label %.loopexit137.i.i

.preheader138.i.i:                                ; preds = %bb.p
  br i1 %i.vq, label %.lr.ph199.i.i, label %.preheader136.i.i

.lr.ph199.i.i:                                    ; preds = %.preheader138.i.i
  %i.ati = sext i32 %i.ath to i64                 ; 2 uses
  br label %bb.q

.preheader136.i.i:                                ; preds = %bb.q, %.preheader138.i.i
  %.01106.lcssa.i.i = phi i32 [ 0, %.preheader138.i.i ], [ %i.aut, %bb.q ] ; 2 uses
  %.12.lcssa.i39.i = phi ptr [ %.11211.i.i, %.preheader138.i.i ], [ %i.aus, %bb.q ] ; 2 uses
  %i.atj = icmp slt i32 %.01106.lcssa.i.i, %.sroa.speculated
  br i1 %i.atj, label %.lr.ph204.i.i, label %.loopexit135.i.i

.lr.ph204.i.i:                                    ; preds = %.preheader136.i.i
  %i.atk = sext i32 %i.ath to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph199.i.i
  %.12198.i.i = phi ptr [ %.11211.i.i, %.lr.ph199.i.i ], [ %i.aus, %bb.q ] ; 2 uses
  %.01106197.i.i = phi i32 [ 0, %.lr.ph199.i.i ], [ %i.aut, %bb.q ] ; 2 uses
  %i.atl = add nsw i32 %.01106197.i.i, %i.y       ; 3 uses
  %i.atm = sdiv i32 %i.atl, %i.sz
  %i.atn = add nsw i32 %i.atl, 1                  ; 2 uses
  %i.ato = sdiv i32 %i.atn, %i.sz
  %50 = insertelement <2 x i32> poison, i32 %i.atl, i64 0
  %51 = insertelement <2 x i32> %50, i32 %i.atn, i64 1
  %52 = srem <2 x i32> %51, %29                   ; 3 uses
  %53 = extractelement <2 x i32> %52, i64 0
  %i.atp = sdiv i32 %53, %i.aq
  %54 = extractelement <2 x i32> %52, i64 1
  %55 = sdiv i32 %54, %i.aq
  %56 = srem <2 x i32> %52, %31                   ; 2 uses
  %i.atq = sext i32 %i.atm to i64
  %i.atr = mul i64 %i.bd, %i.atq
  %i.ats = mul i32 %i.atp, %i.vr
  %57 = extractelement <2 x i32> %56, i64 0
  %i.att = mul nsw i32 %57, %i.as
  %i.atu = add nsw i32 %i.att, %i.ats
  %i.atv = sext i32 %i.atu to i64
  %i.atw = sext i32 %i.ato to i64
  %i.atx = mul i64 %i.bd, %i.atw
  %i.aty = mul i32 %55, %i.vr
  %58 = extractelement <2 x i32> %56, i64 1
  %i.atz = mul nsw i32 %58, %i.as
  %i.aua = add nsw i32 %i.atz, %i.aty
  %i.aub = sext i32 %i.aua to i64
  %i.auc = load ptr, ptr %9, align 8, !tbaa !34   ; 2 uses
  %i.aud = getelementptr i8, ptr %i.auc, i64 %i.atr
  %i.aue = getelementptr i8, ptr %i.aud, i64 %i.ati
  %i.auf = getelementptr i8, ptr %i.aue, i64 %i.atv
  %i.aug = load i64, ptr %i.auf, align 1, !tbaa !108
  %i.auh = insertelement <2 x i64> poison, i64 %i.aug, i64 0
  %i.aui = getelementptr i8, ptr %i.auc, i64 %i.atx
  %i.auj = getelementptr i8, ptr %i.aui, i64 %i.ati
  %i.auk = getelementptr i8, ptr %i.auj, i64 %i.aub
  %i.aul = load i64, ptr %i.auk, align 1, !tbaa !108
  %i.aum = insertelement <2 x i64> poison, i64 %i.aul, i64 0
  %i.aun = bitcast <2 x i64> %i.auh to <16 x i8>
  %i.auo = bitcast <2 x i64> %i.aum to <16 x i8>
  %i.aup = shufflevector <16 x i8> %i.aun, <16 x i8> %i.auo, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.auq = bitcast <16 x i8> %i.aup to <2 x i64>
  %i.aur = extractelement <2 x i64> %i.auq, i64 0
  store i64 %i.aur, ptr %.12198.i.i, align 1, !tbaa !108
  %i.aus = getelementptr inbounds nuw i8, ptr %.12198.i.i, i64 8 ; 2 uses
  %i.aut = add nuw nsw i32 %.01106197.i.i, 2      ; 3 uses
  %i.auu = or disjoint i32 %i.aut, 1
  %i.auv = icmp slt i32 %i.auu, %.sroa.speculated
  br i1 %i.auv, label %bb.q, label %.preheader136.i.i, !llvm.loop !1474

bb.r:                                             ; preds = %bb.r, %.lr.ph204.i.i
  %.13203.i.i = phi ptr [ %.12.lcssa.i39.i, %.lr.ph204.i.i ], [ %i.awb, %bb.r ] ; 5 uses
  %.11107202.i.i = phi i32 [ %.01106.lcssa.i.i, %.lr.ph204.i.i ], [ %i.awc, %bb.r ] ; 2 uses
  %i.auw = add nsw i32 %.11107202.i.i, %i.y       ; 2 uses
  %i.aux = sdiv i32 %i.auw, %i.sz
  %i.auy = srem i32 %i.auw, %i.sz                 ; 2 uses
  %i.auz = sdiv i32 %i.auy, %i.aq
  %i.ava = srem i32 %i.auy, %i.aq
  %i.avb = sext i32 %i.aux to i64
  %i.avc = mul i64 %i.bd, %i.avb
  %i.avd = add i64 %i.avc, %i.atk
  %i.ave = mul i32 %i.auz, %i.vr
  %i.avf = mul nsw i32 %i.ava, %i.as
  %i.avg = add nsw i32 %i.avf, %i.ave
  %i.avh = sext i32 %i.avg to i64
  %i.avi = add i64 %i.avd, %i.avh                 ; 4 uses
  %i.avj = load ptr, ptr %9, align 8, !tbaa !34
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avj, i64 %i.avi
  %i.avl = load i8, ptr %i.avk, align 1, !tbaa !108
  store i8 %i.avl, ptr %.13203.i.i, align 1, !tbaa !108
  %i.avm = load ptr, ptr %9, align 8, !tbaa !34
  %i.avn = getelementptr i8, ptr %i.avm, i64 %i.avi
  %i.avo = getelementptr i8, ptr %i.avn, i64 1
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !108
  %i.avq = getelementptr inbounds nuw i8, ptr %.13203.i.i, i64 1
  store i8 %i.avp, ptr %i.avq, align 1, !tbaa !108
  %i.avr = load ptr, ptr %9, align 8, !tbaa !34
  %i.avs = getelementptr i8, ptr %i.avr, i64 %i.avi
  %i.avt = getelementptr i8, ptr %i.avs, i64 2
  %i.avu = load i8, ptr %i.avt, align 1, !tbaa !108
  %i.avv = getelementptr inbounds nuw i8, ptr %.13203.i.i, i64 2
  store i8 %i.avu, ptr %i.avv, align 1, !tbaa !108
  %i.avw = load ptr, ptr %9, align 8, !tbaa !34
  %i.avx = getelementptr i8, ptr %i.avw, i64 %i.avi
  %i.avy = getelementptr i8, ptr %i.avx, i64 3
  %i.avz = load i8, ptr %i.avy, align 1, !tbaa !108
  %i.awa = getelementptr inbounds nuw i8, ptr %.13203.i.i, i64 3
  store i8 %i.avz, ptr %i.awa, align 1, !tbaa !108
  %i.awb = getelementptr inbounds nuw i8, ptr %.13203.i.i, i64 4 ; 2 uses
  %i.awc = add nuw nsw i32 %.11107202.i.i, 1      ; 2 uses
  %exitcond319.not.i.i = icmp eq i32 %i.awc, %.sroa.speculated
  br i1 %exitcond319.not.i.i, label %.loopexit135.i.i, label %bb.r, !llvm.loop !1475

.loopexit137.i.i:                                 ; preds = %bb.p
  br i1 %brmerge272.i.i, label %.loopexit135.i.i, label %.lr.ph208.i.i

.lr.ph208.i.i:                                    ; preds = %.loopexit137.i.i
  %i.awd = sext i32 %i.ath to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph208.i.i
  %.15207.i.i = phi ptr [ %.11211.i.i, %.lr.ph208.i.i ], [ %i.axa, %bb.s ] ; 3 uses
  %.01108206.i.i = phi i32 [ 0, %.lr.ph208.i.i ], [ %i.axb, %bb.s ] ; 2 uses
  %i.awe = add nsw i32 %.01108206.i.i, %i.vw      ; 2 uses
  %i.awf = sdiv i32 %i.awe, %i.sz
  %i.awg = srem i32 %i.awe, %i.sz                 ; 2 uses
  %i.awh = sdiv i32 %i.awg, %i.aq
  %i.awi = srem i32 %i.awg, %i.aq
  %i.awj = sext i32 %i.awf to i64
  %i.awk = mul i64 %i.bd, %i.awj
  %i.awl = add i64 %i.awk, %i.awd
  %i.awm = mul i32 %i.awh, %i.vr
  %i.awn = mul nsw i32 %i.awi, %i.as
  %i.awo = add nsw i32 %i.awn, %i.awm
  %i.awp = sext i32 %i.awo to i64
  %i.awq = add i64 %i.awl, %i.awp
  %i.awr = shl i64 %i.awq, 3
  %i.aws = load ptr, ptr %9, align 8, !tbaa !34
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 %i.awr ; 2 uses
  %i.awu = load <8 x i16>, ptr %i.awt, align 1, !tbaa !108 ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awt, i64 16
  %i.aww = load <8 x i16>, ptr %i.awv, align 1, !tbaa !108 ; 2 uses
  %i.awx = shufflevector <8 x i16> %i.awu, <8 x i16> %i.aww, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.awy = shufflevector <8 x i16> %i.awu, <8 x i16> %i.aww, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.awx, ptr %.15207.i.i, align 1, !tbaa !108
  %i.awz = getelementptr inbounds nuw i8, ptr %.15207.i.i, i64 16
  store <8 x i16> %i.awy, ptr %i.awz, align 1, !tbaa !108
  %i.axa = getelementptr inbounds nuw i8, ptr %.15207.i.i, i64 32 ; 2 uses
  %i.axb = add nuw nsw i32 %.01108206.i.i, 1      ; 2 uses
  %exitcond320.not.i.i = icmp eq i32 %i.axb, %i.vu
  br i1 %exitcond320.not.i.i, label %.loopexit135.i.i, label %bb.s, !llvm.loop !1476

bb.t:                                             ; preds = %bb.o
  br i1 %i.vp, label %.preheader143.i.i, label %.loopexit142.i.i

.preheader143.i.i:                                ; preds = %bb.t
  br i1 %i.vq, label %.lr.ph186.i.i, label %.preheader141.i.i

.preheader141.i.i:                                ; preds = %.lr.ph186.i.i, %.preheader143.i.i
  %.01111.lcssa.i.i = phi i32 [ 0, %.preheader143.i.i ], [ %i.azm, %.lr.ph186.i.i ] ; 2 uses
  %.17.lcssa.i.i = phi ptr [ %.11211.i.i, %.preheader143.i.i ], [ %i.azl, %.lr.ph186.i.i ] ; 2 uses
  %i.axc = icmp slt i32 %.01111.lcssa.i.i, %.sroa.speculated
  br i1 %i.axc, label %.lr.ph191.i38.i, label %.loopexit135.i.i

.lr.ph186.i.i:                                    ; preds = %.preheader143.i.i, %.lr.ph186.i.i
  %.17185.i.i = phi ptr [ %i.azl, %.lr.ph186.i.i ], [ %.11211.i.i, %.preheader143.i.i ] ; 9 uses
  %.01111184.i.i = phi i32 [ %i.azm, %.lr.ph186.i.i ], [ 0, %.preheader143.i.i ] ; 2 uses
  %i.axd = add nsw i32 %.01111184.i.i, %i.y       ; 3 uses
  %i.axe = sdiv i32 %i.axd, %i.sz
  %i.axf = add nsw i32 %i.axd, 1                  ; 2 uses
  %i.axg = sdiv i32 %i.axf, %i.sz
  %59 = insertelement <2 x i32> poison, i32 %i.axd, i64 0
  %60 = insertelement <2 x i32> %59, i32 %i.axf, i64 1
  %61 = srem <2 x i32> %60, %25                   ; 3 uses
  %62 = extractelement <2 x i32> %61, i64 0
  %i.axh = sdiv i32 %62, %i.aq
  %63 = extractelement <2 x i32> %61, i64 1
  %i.axi = sdiv i32 %63, %i.aq
  %64 = srem <2 x i32> %61, %27                   ; 2 uses
  %65 = mul i32 %i.axh, %i.vr
  %66 = extractelement <2 x i32> %64, i64 0
  %i.axj = mul nsw i32 %66, %i.as
  %i.axk = mul i32 %i.axi, %i.vr
  %67 = extractelement <2 x i32> %64, i64 1
  %i.axl = mul nsw i32 %67, %i.as
  %i.axm = mul i32 %i.axe, %i.vs
  %i.axn = add i32 %65, %i.axm
  %i.axo = add i32 %i.axn, %i.axj
  %i.axp = insertelement <4 x i32> poison, i32 %i.axo, i64 0
  %i.axq = shufflevector <4 x i32> %i.axp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.axr = add <4 x i32> %i.axq, %i.ate           ; 4 uses
  %i.axs = mul i32 %i.axg, %i.vs
  %i.axt = add i32 %i.axk, %i.axs
  %i.axu = add i32 %i.axt, %i.axl
  %i.axv = insertelement <4 x i32> poison, i32 %i.axu, i64 0
  %i.axw = shufflevector <4 x i32> %i.axv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.axx = add <4 x i32> %i.axw, %i.ate           ; 4 uses
  %i.axy = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.07.0.vec.extract.i.i = extractelement <4 x i32> %i.axr, i64 0
  %i.axz = sext i32 %.sroa.07.0.vec.extract.i.i to i64
  %i.aya = getelementptr inbounds i8, ptr %i.axy, i64 %i.axz
  %i.ayb = load i8, ptr %i.aya, align 1, !tbaa !108
  store i8 %i.ayb, ptr %.17185.i.i, align 1, !tbaa !108
  %i.ayc = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.7.16.vec.extract.i.i = extractelement <4 x i32> %i.axx, i64 0
  %i.ayd = sext i32 %.sroa.7.16.vec.extract.i.i to i64
  %i.aye = getelementptr inbounds i8, ptr %i.ayc, i64 %i.ayd
  %i.ayf = load i8, ptr %i.aye, align 1, !tbaa !108
  %i.ayg = getelementptr inbounds nuw i8, ptr %.17185.i.i, i64 1
  store i8 %i.ayf, ptr %i.ayg, align 1, !tbaa !108
  %i.ayh = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.07.4.vec.extract.i.i = extractelement <4 x i32> %i.axr, i64 1
  %i.ayi = sext i32 %.sroa.07.4.vec.extract.i.i to i64
  %i.ayj = getelementptr inbounds i8, ptr %i.ayh, i64 %i.ayi
  %i.ayk = load i8, ptr %i.ayj, align 1, !tbaa !108
  %i.ayl = getelementptr inbounds nuw i8, ptr %.17185.i.i, i64 2
  store i8 %i.ayk, ptr %i.ayl, align 1, !tbaa !108
  %i.aym = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.7.20.vec.extract.i.i = extractelement <4 x i32> %i.axx, i64 1
  %i.ayn = sext i32 %.sroa.7.20.vec.extract.i.i to i64
  %i.ayo = getelementptr inbounds i8, ptr %i.aym, i64 %i.ayn
  %i.ayp = load i8, ptr %i.ayo, align 1, !tbaa !108
  %i.ayq = getelementptr inbounds nuw i8, ptr %.17185.i.i, i64 3
  store i8 %i.ayp, ptr %i.ayq, align 1, !tbaa !108
  %i.ayr = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.07.8.vec.extract.i.i = extractelement <4 x i32> %i.axr, i64 2
  %i.ays = sext i32 %.sroa.07.8.vec.extract.i.i to i64
  %i.ayt = getelementptr inbounds i8, ptr %i.ayr, i64 %i.ays
  %i.ayu = load i8, ptr %i.ayt, align 1, !tbaa !108
  %i.ayv = getelementptr inbounds nuw i8, ptr %.17185.i.i, i64 4
  store i8 %i.ayu, ptr %i.ayv, align 1, !tbaa !108
  %i.ayw = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.7.24.vec.extract.i.i = extractelement <4 x i32> %i.axx, i64 2
  %i.ayx = sext i32 %.sroa.7.24.vec.extract.i.i to i64
  %i.ayy = getelementptr inbounds i8, ptr %i.ayw, i64 %i.ayx
  %i.ayz = load i8, ptr %i.ayy, align 1, !tbaa !108
  %i.aza = getelementptr inbounds nuw i8, ptr %.17185.i.i, i64 5
  store i8 %i.ayz, ptr %i.aza, align 1, !tbaa !108
  %i.azb = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.07.12.vec.extract.i.i = extractelement <4 x i32> %i.axr, i64 3
  %i.azc = sext i32 %.sroa.07.12.vec.extract.i.i to i64
  %i.azd = getelementptr inbounds i8, ptr %i.azb, i64 %i.azc
  %i.aze = load i8, ptr %i.azd, align 1, !tbaa !108
  %i.azf = getelementptr inbounds nuw i8, ptr %.17185.i.i, i64 6
  store i8 %i.aze, ptr %i.azf, align 1, !tbaa !108
  %i.azg = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.7.28.vec.extract.i.i = extractelement <4 x i32> %i.axx, i64 3
  %i.azh = sext i32 %.sroa.7.28.vec.extract.i.i to i64
  %i.azi = getelementptr inbounds i8, ptr %i.azg, i64 %i.azh
  %i.azj = load i8, ptr %i.azi, align 1, !tbaa !108
  %i.azk = getelementptr inbounds nuw i8, ptr %.17185.i.i, i64 7
  store i8 %i.azj, ptr %i.azk, align 1, !tbaa !108
  %i.azl = getelementptr inbounds nuw i8, ptr %.17185.i.i, i64 8 ; 2 uses
  %i.azm = add nuw nsw i32 %.01111184.i.i, 2      ; 3 uses
  %i.azn = or disjoint i32 %i.azm, 1
  %i.azo = icmp slt i32 %i.azn, %.sroa.speculated
  br i1 %i.azo, label %.lr.ph186.i.i, label %.preheader141.i.i, !llvm.loop !1477

.lr.ph191.i38.i:                                  ; preds = %.preheader141.i.i, %.lr.ph191.i38.i
  %.18190.i.i = phi ptr [ %i.bav, %.lr.ph191.i38.i ], [ %.17.lcssa.i.i, %.preheader141.i.i ] ; 5 uses
  %.11112189.i.i = phi i32 [ %i.baw, %.lr.ph191.i38.i ], [ %.01111.lcssa.i.i, %.preheader141.i.i ] ; 2 uses
  %i.azp = add nsw i32 %.11112189.i.i, %i.y       ; 2 uses
  %i.azq = sdiv i32 %i.azp, %i.sz
  %i.azr = srem i32 %i.azp, %i.sz                 ; 2 uses
  %i.azs = sdiv i32 %i.azr, %i.aq
  %i.azt = srem i32 %i.azr, %i.aq
  %i.azu = mul i32 %i.azs, %i.vr
  %i.azv = mul nsw i32 %i.azt, %i.as
  %i.azw = mul i32 %i.azq, %i.vs
  %i.azx = add i32 %i.azu, %i.azw
  %i.azy = add i32 %i.azx, %i.azv
  %i.azz = insertelement <4 x i32> poison, i32 %i.azy, i64 0
  %i.baa = shufflevector <4 x i32> %i.azz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bab = add <4 x i32> %i.baa, %i.ate           ; 4 uses
  %i.bac = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.05.0.vec.extract.i.i = extractelement <4 x i32> %i.bab, i64 0
  %i.bad = sext i32 %.sroa.05.0.vec.extract.i.i to i64
  %i.bae = getelementptr inbounds i8, ptr %i.bac, i64 %i.bad
  %i.baf = load i8, ptr %i.bae, align 1, !tbaa !108
  store i8 %i.baf, ptr %.18190.i.i, align 1, !tbaa !108
  %i.bag = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.05.4.vec.extract.i.i = extractelement <4 x i32> %i.bab, i64 1
  %i.bah = sext i32 %.sroa.05.4.vec.extract.i.i to i64
  %i.bai = getelementptr inbounds i8, ptr %i.bag, i64 %i.bah
  %i.baj = load i8, ptr %i.bai, align 1, !tbaa !108
  %i.bak = getelementptr inbounds nuw i8, ptr %.18190.i.i, i64 1
  store i8 %i.baj, ptr %i.bak, align 1, !tbaa !108
  %i.bal = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.05.8.vec.extract.i.i = extractelement <4 x i32> %i.bab, i64 2
  %i.bam = sext i32 %.sroa.05.8.vec.extract.i.i to i64
  %i.ban = getelementptr inbounds i8, ptr %i.bal, i64 %i.bam
  %i.bao = load i8, ptr %i.ban, align 1, !tbaa !108
  %i.bap = getelementptr inbounds nuw i8, ptr %.18190.i.i, i64 2
  store i8 %i.bao, ptr %i.bap, align 1, !tbaa !108
  %i.baq = load ptr, ptr %9, align 8, !tbaa !34
  %.sroa.05.12.vec.extract.i.i = extractelement <4 x i32> %i.bab, i64 3
  %i.bar = sext i32 %.sroa.05.12.vec.extract.i.i to i64
  %i.bas = getelementptr inbounds i8, ptr %i.baq, i64 %i.bar
  %i.bat = load i8, ptr %i.bas, align 1, !tbaa !108
  %i.bau = getelementptr inbounds nuw i8, ptr %.18190.i.i, i64 3
  store i8 %i.bat, ptr %i.bau, align 1, !tbaa !108
  %i.bav = getelementptr inbounds nuw i8, ptr %.18190.i.i, i64 4 ; 2 uses
  %i.baw = add nuw nsw i32 %.11112189.i.i, 1      ; 2 uses
  %exitcond317.not.i.i = icmp eq i32 %i.baw, %.sroa.speculated
  br i1 %exitcond317.not.i.i, label %.loopexit135.i.i, label %.lr.ph191.i38.i, !llvm.loop !1478

.loopexit142.i.i:                                 ; preds = %bb.t
  br i1 %brmerge272.i.i, label %.loopexit135.i.i, label %.lr.ph195.i.i

.lr.ph195.i.i:                                    ; preds = %.loopexit142.i.i, %.lr.ph195.i.i
  %.20194.i.i = phi ptr [ %i.bdb, %.lr.ph195.i.i ], [ %.11211.i.i, %.loopexit142.i.i ] ; 3 uses
  %.01113193.i.i = phi i32 [ %i.bdc, %.lr.ph195.i.i ], [ 0, %.loopexit142.i.i ] ; 2 uses
  %i.bax = add nsw i32 %.01113193.i.i, %i.vw      ; 2 uses
  %i.bay = sdiv i32 %i.bax, %i.sz
  %i.baz = srem i32 %i.bax, %i.sz                 ; 2 uses
  %i.bba = sdiv i32 %i.baz, %i.aq
  %i.bbb = srem i32 %i.baz, %i.aq
  %i.bbc = mul i32 %i.bba, %i.vr
  %i.bbd = mul nsw i32 %i.bbb, %i.as
  %i.bbe = mul i32 %i.bay, %i.vs
  %i.bbf = add i32 %i.bbc, %i.bbe
  %i.bbg = add i32 %i.bbf, %i.bbd
  %i.bbh = insertelement <4 x i32> poison, i32 %i.bbg, i64 0
  %i.bbi = shufflevector <4 x i32> %i.bbh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bbj = add <4 x i32> %i.bbi, %i.ate           ; 2 uses
  %i.bbk = bitcast <4 x i32> %i.bbj to <2 x i64>
  %i.bbl = shl <2 x i64> %i.bbk, splat (i64 3)
  %i.bbm = shufflevector <4 x i32> %i.bbj, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bbn = bitcast <4 x i32> %i.bbm to <2 x i64>
  %i.bbo = shl <2 x i64> %i.bbn, splat (i64 3)
  %i.bbp = bitcast <2 x i64> %i.bbl to <4 x i32>
  %i.bbq = and <4 x i32> %i.bbp, <i32 -8, i32 7, i32 -8, i32 7> ; 2 uses
  %i.bbr = bitcast <2 x i64> %i.bbo to <4 x i32>
  %i.bbs = and <4 x i32> %i.bbr, <i32 -8, i32 7, i32 -8, i32 7> ; 2 uses
  %i.bbt = shufflevector <4 x i32> %i.bbq, <4 x i32> %i.bbs, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bbu = bitcast <4 x i32> %i.bbt to <2 x i64>
  %i.bbv = shufflevector <4 x i32> %i.bbq, <4 x i32> %i.bbs, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.bbw = bitcast <4 x i32> %i.bbv to <2 x i64>
  %i.bbx = shufflevector <2 x i64> %i.bbu, <2 x i64> %i.bbw, <2 x i32> <i32 0, i32 2>
  %i.bby = bitcast <2 x i64> %i.bbx to <4 x i32>  ; 4 uses
  %i.bbz = load ptr, ptr %9, align 8, !tbaa !34   ; 4 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <4 x i32> %i.bby, i64 0
  %i.bca = sext i32 %.sroa.0.0.vec.extract.i.i to i64
  %i.bcb = getelementptr inbounds i8, ptr %i.bbz, i64 %i.bca
  %i.bcc = load i64, ptr %i.bcb, align 1, !tbaa !108
  %i.bcd = insertelement <2 x i64> poison, i64 %i.bcc, i64 0
  %.sroa.0.4.vec.extract.i.i = extractelement <4 x i32> %i.bby, i64 1
  %i.bce = sext i32 %.sroa.0.4.vec.extract.i.i to i64
  %i.bcf = getelementptr inbounds i8, ptr %i.bbz, i64 %i.bce
  %i.bcg = load i64, ptr %i.bcf, align 1, !tbaa !108
  %i.bch = insertelement <2 x i64> poison, i64 %i.bcg, i64 0
  %.sroa.0.8.vec.extract.i.i = extractelement <4 x i32> %i.bby, i64 2
  %i.bci = sext i32 %.sroa.0.8.vec.extract.i.i to i64
  %i.bcj = getelementptr inbounds i8, ptr %i.bbz, i64 %i.bci
  %i.bck = load i64, ptr %i.bcj, align 1, !tbaa !108
  %i.bcl = insertelement <2 x i64> poison, i64 %i.bck, i64 0
  %.sroa.0.12.vec.extract.i.i = extractelement <4 x i32> %i.bby, i64 3
  %i.bcm = sext i32 %.sroa.0.12.vec.extract.i.i to i64
  %i.bcn = getelementptr inbounds i8, ptr %i.bbz, i64 %i.bcm
  %i.bco = load i64, ptr %i.bcn, align 1, !tbaa !108
  %i.bcp = insertelement <2 x i64> poison, i64 %i.bco, i64 0
  %i.bcq = bitcast <2 x i64> %i.bcd to <8 x i16>
  %i.bcr = bitcast <2 x i64> %i.bch to <8 x i16>
  %i.bcs = shufflevector <8 x i16> %i.bcq, <8 x i16> %i.bcr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bct = bitcast <2 x i64> %i.bcl to <8 x i16>
  %i.bcu = bitcast <2 x i64> %i.bcp to <8 x i16>
  %i.bcv = shufflevector <8 x i16> %i.bct, <8 x i16> %i.bcu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bcw = bitcast <8 x i16> %i.bcs to <4 x i32>  ; 2 uses
  %i.bcx = bitcast <8 x i16> %i.bcv to <4 x i32>  ; 2 uses
  %i.bcy = shufflevector <4 x i32> %i.bcw, <4 x i32> %i.bcx, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bcz = shufflevector <4 x i32> %i.bcw, <4 x i32> %i.bcx, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.bcy, ptr %.20194.i.i, align 1, !tbaa !108
  %i.bda = getelementptr inbounds nuw i8, ptr %.20194.i.i, i64 16
  store <4 x i32> %i.bcz, ptr %i.bda, align 1, !tbaa !108
  %i.bdb = getelementptr inbounds nuw i8, ptr %.20194.i.i, i64 32 ; 2 uses
  %i.bdc = add nuw nsw i32 %.01113193.i.i, 1      ; 2 uses
  %exitcond318.not.i.i = icmp eq i32 %i.bdc, %i.vu
  br i1 %exitcond318.not.i.i, label %.loopexit135.i.i, label %.lr.ph195.i.i, !llvm.loop !1479

.loopexit135.i.i:                                 ; preds = %.lr.ph195.i.i, %.lr.ph191.i38.i, %bb.s, %bb.r, %.loopexit142.i.i, %.preheader141.i.i, %.loopexit137.i.i, %.preheader136.i.i
  %.21.i.i = phi ptr [ %.11211.i.i, %.loopexit142.i.i ], [ %.12.lcssa.i39.i, %.preheader136.i.i ], [ %.11211.i.i, %.loopexit137.i.i ], [ %i.axa, %bb.s ], [ %i.awb, %bb.r ], [ %.17.lcssa.i.i, %.preheader141.i.i ], [ %i.bav, %.lr.ph191.i38.i ], [ %i.bdb, %.lr.ph195.i.i ] ; 2 uses
  %i.bdd = add nuw nsw i32 %.11097210.i.i, 4      ; 3 uses
  %i.bde = or disjoint i32 %i.bdd, 3
  %i.bdf = icmp slt i32 %i.bde, %.sroa.speculated64
  br i1 %i.bdf, label %bb.o, label %.preheader133.i.i, !llvm.loop !1480

.preheader122.i33.i:                              ; preds = %.loopexit124.i36.i, %.preheader133.i.i
  %.21098.lcssa.i.i = phi i32 [ %.11097.lcssa.i.i, %.preheader133.i.i ], [ %i.bkq, %.loopexit124.i36.i ] ; 2 uses
  %.22.lcssa.i.i = phi ptr [ %.11.lcssa.i.i, %.preheader133.i.i ], [ %.33.i.i, %.loopexit124.i36.i ]
  %i.bdg = icmp slt i32 %.21098.lcssa.i.i, %.sroa.speculated64
  br i1 %i.bdg, label %.lr.ph262.i.i, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph262.i.i:                                    ; preds = %.preheader122.i33.i
  %i.bdh = mul i32 %i.ss, %i.av
  %i.bdi = icmp eq i32 %i.st, 1
  %i.bdj = icmp sgt i32 %.sroa.speculated, 1
  %i.bdk = mul i32 %i.ss, %i.at                   ; 4 uses
  %i.bdl = icmp ne i32 %i.st, 8
  %i.bdm = lshr i32 %.sroa.speculated, 3
  %i.bdn = icmp slt i32 %.sroa.speculated, 8
  %i.bdo = sdiv i32 %i.y, 8
  %brmerge279.i.i = or i1 %i.bdn, %i.bdl
  %68 = insertelement <2 x i32> poison, i32 %i.sz, i64 0
  %69 = shufflevector <2 x i32> %68, <2 x i32> poison, <2 x i32> zeroinitializer
  %70 = insertelement <2 x i32> poison, i32 %i.aq, i64 0
  %71 = shufflevector <2 x i32> %70, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.ac

bb.u:                                             ; preds = %.loopexit124.i36.i, %.lr.ph244.i.i
  %.22243.i.i = phi ptr [ %.11.lcssa.i.i, %.lr.ph244.i.i ], [ %.33.i.i, %.loopexit124.i36.i ] ; 8 uses
  %.21098242.i.i = phi i32 [ %.11097.lcssa.i.i, %.lr.ph244.i.i ], [ %i.bkq, %.loopexit124.i36.i ] ; 2 uses
  %i.bdp = add nsw i32 %.21098242.i.i, %i.w       ; 3 uses
  %i.bdq = sdiv i32 %i.bdp, %i.sy
  %i.bdr = add nsw i32 %i.bdp, 1                  ; 2 uses
  %i.bds = sdiv i32 %i.bdr, %i.sy
  %i.bdt = srem i32 %i.bdp, %i.sy
  %i.bdu = srem i32 %i.bdr, %i.sy
  %i.bdv = mul nsw i32 %i.bdt, %i.au
  %i.bdw = mul nsw i32 %i.bdu, %i.au
  %i.bdx = mul i32 %i.bdq, %i.apt                 ; 2 uses
  %i.bdy = mul i32 %i.bds, %i.apt                 ; 2 uses
  %i.bdz = add nsw i32 %i.bdv, %i.bdx             ; 7 uses
  %i.bea = add nsw i32 %i.bdw, %i.bdy             ; 4 uses
  %i.beb = icmp eq i32 %i.bdx, %i.bdy
  %or.cond5.i.i = and i1 %i.ba, %i.beb
  br i1 %or.cond5.i.i, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  br i1 %i.apu, label %.preheader127.i37.i, label %.loopexit126.i.i

.preheader127.i37.i:                              ; preds = %bb.v
  br i1 %i.apv, label %.lr.ph231.i.i, label %.preheader125.i.i

.lr.ph231.i.i:                                    ; preds = %.preheader127.i37.i
  %i.bec = sext i32 %i.bdz to i64                 ; 2 uses
  br label %bb.w

.preheader125.i.i:                                ; preds = %bb.w, %.preheader127.i37.i
  %.01114.lcssa.i.i = phi i32 [ 0, %.preheader127.i37.i ], [ %i.bfn, %bb.w ] ; 2 uses
  %.23.lcssa.i.i = phi ptr [ %.22243.i.i, %.preheader127.i37.i ], [ %i.bfm, %bb.w ] ; 2 uses
  %i.bed = icmp slt i32 %.01114.lcssa.i.i, %.sroa.speculated
  br i1 %i.bed, label %.lr.ph236.i.i, label %.loopexit124.i36.i

.lr.ph236.i.i:                                    ; preds = %.preheader125.i.i
  %i.bee = sext i32 %i.bdz to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.w, %.lr.ph231.i.i
  %.23230.i.i = phi ptr [ %.22243.i.i, %.lr.ph231.i.i ], [ %i.bfm, %bb.w ] ; 5 uses
  %.01114229.i.i = phi i32 [ 0, %.lr.ph231.i.i ], [ %i.bfn, %bb.w ] ; 2 uses
  %i.bef = add nsw i32 %.01114229.i.i, %i.y       ; 3 uses
  %i.beg = sdiv i32 %i.bef, %i.sz
  %i.beh = add nsw i32 %i.bef, 1                  ; 2 uses
  %i.bei = sdiv i32 %i.beh, %i.sz
  %72 = insertelement <2 x i32> poison, i32 %i.bef, i64 0
  %73 = insertelement <2 x i32> %72, i32 %i.beh, i64 1
  %74 = srem <2 x i32> %73, %i.aqj                ; 3 uses
  %75 = extractelement <2 x i32> %74, i64 0
  %i.bej = sdiv i32 %75, %i.aq
  %76 = extractelement <2 x i32> %74, i64 1
  %77 = sdiv i32 %76, %i.aq
  %78 = srem <2 x i32> %74, %i.aql                ; 2 uses
  %i.bek = sext i32 %i.beg to i64
  %i.bel = mul i64 %i.bd, %i.bek
  %i.bem = mul i32 %i.bej, %i.apw
  %79 = extractelement <2 x i32> %78, i64 0
  %i.ben = mul nsw i32 %79, %i.as
  %i.beo = add nsw i32 %i.ben, %i.bem
  %i.bep = sext i32 %i.beo to i64
  %i.beq = sext i32 %i.bei to i64
  %i.ber = mul i64 %i.bd, %i.beq
  %i.bes = mul i32 %77, %i.apw
  %80 = extractelement <2 x i32> %78, i64 1
  %i.bet = mul nsw i32 %80, %i.as
  %i.beu = add nsw i32 %i.bet, %i.bes
  %i.bev = sext i32 %i.beu to i64
  %i.bew = load ptr, ptr %9, align 8, !tbaa !34   ; 2 uses
  %i.bex = getelementptr i8, ptr %i.bew, i64 %i.bel
  %i.bey = getelementptr i8, ptr %i.bex, i64 %i.bec
  %i.bez = getelementptr i8, ptr %i.bey, i64 %i.bep ; 2 uses
  %i.bfa = getelementptr i8, ptr %i.bew, i64 %i.ber
  %i.bfb = getelementptr i8, ptr %i.bfa, i64 %i.bec
  %i.bfc = getelementptr i8, ptr %i.bfb, i64 %i.bev ; 2 uses
  %i.bfd = load i8, ptr %i.bez, align 1, !tbaa !108
  store i8 %i.bfd, ptr %.23230.i.i, align 1, !tbaa !108
  %i.bfe = load i8, ptr %i.bfc, align 1, !tbaa !108
  %i.bff = getelementptr inbounds nuw i8, ptr %.23230.i.i, i64 1
  store i8 %i.bfe, ptr %i.bff, align 1, !tbaa !108
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bez, i64 1
  %i.bfh = load i8, ptr %i.bfg, align 1, !tbaa !108
  %i.bfi = getelementptr inbounds nuw i8, ptr %.23230.i.i, i64 2
  store i8 %i.bfh, ptr %i.bfi, align 1, !tbaa !108
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfc, i64 1
  %i.bfk = load i8, ptr %i.bfj, align 1, !tbaa !108
  %i.bfl = getelementptr inbounds nuw i8, ptr %.23230.i.i, i64 3
  store i8 %i.bfk, ptr %i.bfl, align 1, !tbaa !108
  %i.bfm = getelementptr inbounds nuw i8, ptr %.23230.i.i, i64 4 ; 2 uses
  %i.bfn = add nuw nsw i32 %.01114229.i.i, 2      ; 3 uses
  %i.bfo = or disjoint i32 %i.bfn, 1
  %i.bfp = icmp slt i32 %i.bfo, %.sroa.speculated
  br i1 %i.bfp, label %bb.w, label %.preheader125.i.i, !llvm.loop !1481

bb.x:                                             ; preds = %bb.x, %.lr.ph236.i.i
  %.24235.i.i = phi ptr [ %.23.lcssa.i.i, %.lr.ph236.i.i ], [ %i.bgj, %bb.x ] ; 3 uses
  %.11115234.i.i = phi i32 [ %.01114.lcssa.i.i, %.lr.ph236.i.i ], [ %i.bgk, %bb.x ] ; 2 uses
  %i.bfq = add nsw i32 %.11115234.i.i, %i.y       ; 2 uses
  %i.bfr = sdiv i32 %i.bfq, %i.sz
  %i.bfs = srem i32 %i.bfq, %i.sz                 ; 2 uses
  %i.bft = sdiv i32 %i.bfs, %i.aq
  %i.bfu = srem i32 %i.bfs, %i.aq
  %i.bfv = sext i32 %i.bfr to i64
  %i.bfw = mul i64 %i.bd, %i.bfv
  %i.bfx = mul i32 %i.bft, %i.apw
  %i.bfy = mul nsw i32 %i.bfu, %i.as
  %i.bfz = add nsw i32 %i.bfy, %i.bfx
  %i.bga = sext i32 %i.bfz to i64
  %i.bgb = load ptr, ptr %9, align 8, !tbaa !34
  %i.bgc = getelementptr i8, ptr %i.bgb, i64 %i.bfw
  %i.bgd = getelementptr i8, ptr %i.bgc, i64 %i.bee
  %i.bge = getelementptr i8, ptr %i.bgd, i64 %i.bga ; 2 uses
  %i.bgf = load i8, ptr %i.bge, align 1, !tbaa !108
  store i8 %i.bgf, ptr %.24235.i.i, align 1, !tbaa !108
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bge, i64 1
  %i.bgh = load i8, ptr %i.bgg, align 1, !tbaa !108
  %i.bgi = getelementptr inbounds nuw i8, ptr %.24235.i.i, i64 1
  store i8 %i.bgh, ptr %i.bgi, align 1, !tbaa !108
  %i.bgj = getelementptr inbounds nuw i8, ptr %.24235.i.i, i64 2 ; 2 uses
  %i.bgk = add nuw nsw i32 %.11115234.i.i, 1      ; 2 uses
  %exitcond323.not.i.i = icmp eq i32 %i.bgk, %.sroa.speculated
  br i1 %exitcond323.not.i.i, label %.loopexit124.i36.i, label %bb.x, !llvm.loop !1482

.loopexit126.i.i:                                 ; preds = %bb.v
  br i1 %brmerge275.i.i, label %.loopexit124.i36.i, label %.lr.ph240.i.i

.lr.ph240.i.i:                                    ; preds = %.loopexit126.i.i
  %i.bgl = sext i32 %i.bdz to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph240.i.i
  %.26239.i.i = phi ptr [ %.22243.i.i, %.lr.ph240.i.i ], [ %i.bhg, %bb.y ] ; 2 uses
  %.01116238.i.i = phi i32 [ 0, %.lr.ph240.i.i ], [ %i.bhh, %bb.y ] ; 2 uses
  %i.bgm = add nsw i32 %.01116238.i.i, %i.aqa     ; 2 uses
  %i.bgn = sdiv i32 %i.bgm, %i.sz
  %i.bgo = srem i32 %i.bgm, %i.sz                 ; 2 uses
  %i.bgp = sdiv i32 %i.bgo, %i.aq
  %i.bgq = srem i32 %i.bgo, %i.aq
  %i.bgr = sext i32 %i.bgn to i64
  %i.bgs = mul i64 %i.bd, %i.bgr
  %i.bgt = add i64 %i.bgs, %i.bgl
  %i.bgu = mul i32 %i.bgp, %i.apw
  %i.bgv = mul nsw i32 %i.bgq, %i.as
  %i.bgw = add nsw i32 %i.bgv, %i.bgu
  %i.bgx = sext i32 %i.bgw to i64
  %i.bgy = add i64 %i.bgt, %i.bgx
  %i.bgz = shl i64 %i.bgy, 3
  %i.bha = load ptr, ptr %9, align 8, !tbaa !34
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bha, i64 %i.bgz
  %i.bhc = load <4 x i32>, ptr %i.bhb, align 1, !tbaa !108
  %i.bhd = shufflevector <4 x i32> %i.bhc, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bhe = bitcast <4 x i32> %i.bhd to <8 x i16>
  %i.bhf = shufflevector <8 x i16> %i.bhe, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  store <8 x i16> %i.bhf, ptr %.26239.i.i, align 1, !tbaa !108
  %i.bhg = getelementptr inbounds nuw i8, ptr %.26239.i.i, i64 16 ; 2 uses
  %i.bhh = add nuw nsw i32 %.01116238.i.i, 1      ; 2 uses
  %exitcond324.not.i.i = icmp eq i32 %i.bhh, %i.apz
  br i1 %exitcond324.not.i.i, label %.loopexit124.i36.i, label %bb.y, !llvm.loop !1483

bb.z:                                             ; preds = %bb.u
  br i1 %i.apu, label %.preheader132.i.i, label %.loopexit131.i.i

.preheader132.i.i:                                ; preds = %bb.z
  br i1 %i.apv, label %.lr.ph217.i.i, label %.preheader130.i.i

.preheader130.i.i:                                ; preds = %.lr.ph217.i.i, %.preheader132.i.i
  %.01117.lcssa.i.i = phi i32 [ 0, %.preheader132.i.i ], [ %i.bin, %.lr.ph217.i.i ] ; 2 uses
  %.28.lcssa.i.i = phi ptr [ %.22243.i.i, %.preheader132.i.i ], [ %i.bim, %.lr.ph217.i.i ] ; 2 uses
  %i.bhi = icmp slt i32 %.01117.lcssa.i.i, %.sroa.speculated
  br i1 %i.bhi, label %.lr.ph222.i.i, label %.loopexit124.i36.i

.lr.ph222.i.i:                                    ; preds = %.preheader130.i.i
  %i.bhj = sext i32 %i.bdz to i64
  %i.bhk = sext i32 %i.bea to i64
  br label %bb.aa

.lr.ph217.i.i:                                    ; preds = %.preheader132.i.i, %.lr.ph217.i.i
  %.28216.i.i = phi ptr [ %i.bim, %.lr.ph217.i.i ], [ %.22243.i.i, %.preheader132.i.i ] ; 5 uses
  %.01117215.i.i = phi i32 [ %i.bin, %.lr.ph217.i.i ], [ 0, %.preheader132.i.i ] ; 2 uses
  %i.bhl = add nsw i32 %.01117215.i.i, %i.y       ; 3 uses
  %81 = sdiv i32 %i.bhl, %i.sz
  %i.bhm = add nsw i32 %i.bhl, 1                  ; 2 uses
  %82 = sdiv i32 %i.bhm, %i.sz
  %i.bhn = insertelement <2 x i32> poison, i32 %i.bhl, i64 0
  %83 = insertelement <2 x i32> %i.bhn, i32 %i.bhm, i64 1
  %84 = srem <2 x i32> %83, %i.aqf                ; 3 uses
  %85 = extractelement <2 x i32> %84, i64 0
  %86 = sdiv i32 %85, %i.aq
  %87 = extractelement <2 x i32> %84, i64 1
  %88 = sdiv i32 %87, %i.aq
  %89 = srem <2 x i32> %84, %i.aqh                ; 2 uses
  %90 = mul i32 %86, %i.apw
  %i.bho = extractelement <2 x i32> %89, i64 0
  %91 = mul nsw i32 %i.bho, %i.as
  %i.bhp = mul i32 %88, %i.apw
  %92 = extractelement <2 x i32> %89, i64 1
  %i.bhq = mul nsw i32 %92, %i.as
  %93 = mul i32 %81, %i.apx
  %94 = add i32 %90, %93
  %95 = add i32 %94, %91                          ; 2 uses
  %i.bhr = add i32 %95, %i.bdz
  %i.bhs = add i32 %95, %i.bea
  %96 = mul i32 %82, %i.apx
  %97 = add i32 %i.bhp, %96
  %i.bht = add i32 %97, %i.bhq                    ; 2 uses
  %i.bhu = add i32 %i.bht, %i.bdz
  %i.bhv = add i32 %i.bht, %i.bea
  %i.bhw = load ptr, ptr %9, align 8, !tbaa !34   ; 4 uses
  %i.bhx = sext i32 %i.bhr to i64
  %i.bhy = getelementptr inbounds i8, ptr %i.bhw, i64 %i.bhx
  %i.bhz = sext i32 %i.bhs to i64
  %i.bia = getelementptr inbounds i8, ptr %i.bhw, i64 %i.bhz
  %i.bib = sext i32 %i.bhu to i64
  %i.bic = getelementptr inbounds i8, ptr %i.bhw, i64 %i.bib
  %i.bid = sext i32 %i.bhv to i64
  %i.bie = getelementptr inbounds i8, ptr %i.bhw, i64 %i.bid
  %i.bif = load i8, ptr %i.bhy, align 1, !tbaa !108
  store i8 %i.bif, ptr %.28216.i.i, align 1, !tbaa !108
  %i.big = load i8, ptr %i.bic, align 1, !tbaa !108
  %i.bih = getelementptr inbounds nuw i8, ptr %.28216.i.i, i64 1
  store i8 %i.big, ptr %i.bih, align 1, !tbaa !108
  %i.bii = load i8, ptr %i.bia, align 1, !tbaa !108
  %i.bij = getelementptr inbounds nuw i8, ptr %.28216.i.i, i64 2
  store i8 %i.bii, ptr %i.bij, align 1, !tbaa !108
  %i.bik = load i8, ptr %i.bie, align 1, !tbaa !108
  %i.bil = getelementptr inbounds nuw i8, ptr %.28216.i.i, i64 3
  store i8 %i.bik, ptr %i.bil, align 1, !tbaa !108
  %i.bim = getelementptr inbounds nuw i8, ptr %.28216.i.i, i64 4 ; 2 uses
  %i.bin = add nuw nsw i32 %.01117215.i.i, 2      ; 3 uses
  %i.bio = or disjoint i32 %i.bin, 1
  %i.bip = icmp slt i32 %i.bio, %.sroa.speculated
  br i1 %i.bip, label %.lr.ph217.i.i, label %.preheader130.i.i, !llvm.loop !1484

bb.aa:                                            ; preds = %bb.aa, %.lr.ph222.i.i
  %.29221.i.i = phi ptr [ %.28.lcssa.i.i, %.lr.ph222.i.i ], [ %i.bjk, %bb.aa ] ; 3 uses
  %.11118220.i.i = phi i32 [ %.01117.lcssa.i.i, %.lr.ph222.i.i ], [ %i.bjl, %bb.aa ] ; 2 uses
  %i.biq = add nsw i32 %.11118220.i.i, %i.y       ; 2 uses
  %i.bir = sdiv i32 %i.biq, %i.sz
  %i.bis = srem i32 %i.biq, %i.sz                 ; 2 uses
  %i.bit = sdiv i32 %i.bis, %i.aq
  %i.biu = srem i32 %i.bis, %i.aq
  %i.biv = sext i32 %i.bir to i64
  %i.biw = mul i64 %i.bd, %i.biv
  %i.bix = mul i32 %i.bit, %i.apw
  %i.biy = mul nsw i32 %i.biu, %i.as
  %i.biz = add nsw i32 %i.biy, %i.bix
  %i.bja = sext i32 %i.biz to i64                 ; 2 uses
  %i.bjb = load ptr, ptr %9, align 8, !tbaa !34
  %i.bjc = getelementptr i8, ptr %i.bjb, i64 %i.biw ; 2 uses
  %i.bjd = getelementptr i8, ptr %i.bjc, i64 %i.bhj
  %i.bje = getelementptr i8, ptr %i.bjd, i64 %i.bja
  %i.bjf = getelementptr i8, ptr %i.bjc, i64 %i.bhk
  %i.bjg = getelementptr i8, ptr %i.bjf, i64 %i.bja
  %i.bjh = load i8, ptr %i.bje, align 1, !tbaa !108
  store i8 %i.bjh, ptr %.29221.i.i, align 1, !tbaa !108
  %i.bji = load i8, ptr %i.bjg, align 1, !tbaa !108
  %i.bjj = getelementptr inbounds nuw i8, ptr %.29221.i.i, i64 1
  store i8 %i.bji, ptr %i.bjj, align 1, !tbaa !108
  %i.bjk = getelementptr inbounds nuw i8, ptr %.29221.i.i, i64 2 ; 2 uses
  %i.bjl = add nuw nsw i32 %.11118220.i.i, 1      ; 2 uses
  %exitcond321.not.i.i = icmp eq i32 %i.bjl, %.sroa.speculated
  br i1 %exitcond321.not.i.i, label %.loopexit124.i36.i, label %bb.aa, !llvm.loop !1485

.loopexit131.i.i:                                 ; preds = %bb.z
  br i1 %or.cond276.i.i, label %.lr.ph227.i.i, label %.loopexit124.i36.i

.lr.ph227.i.i:                                    ; preds = %.loopexit131.i.i
  %i.bjm = sext i32 %i.bdz to i64
  %i.bjn = sext i32 %i.bea to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph227.i.i
  %.31226.i.i = phi ptr [ %.22243.i.i, %.lr.ph227.i.i ], [ %i.bko, %bb.ab ] ; 2 uses
  %.31120225.i.i = phi i32 [ 0, %.lr.ph227.i.i ], [ %i.bkp, %bb.ab ] ; 2 uses
  %i.bjo = add nsw i32 %.31120225.i.i, %i.aqa     ; 2 uses
  %i.bjp = sdiv i32 %i.bjo, %i.sz
  %i.bjq = srem i32 %i.bjo, %i.sz                 ; 2 uses
  %i.bjr = sdiv i32 %i.bjq, %i.aq
  %i.bjs = srem i32 %i.bjq, %i.aq
  %i.bjt = sext i32 %i.bjp to i64
  %i.bju = mul i64 %i.bd, %i.bjt
  %i.bjv = mul i32 %i.bjr, %i.apw
  %i.bjw = mul nsw i32 %i.bjs, %i.as
  %i.bjx = add nsw i32 %i.bjw, %i.bjv
  %i.bjy = sext i32 %i.bjx to i64
  %i.bjz = add i64 %i.bju, %i.bjy                 ; 2 uses
  %i.bka = add i64 %i.bjz, %i.bjm
  %i.bkb = shl i64 %i.bka, 3
  %i.bkc = add i64 %i.bjz, %i.bjn
  %i.bkd = shl i64 %i.bkc, 3
  %i.bke = load ptr, ptr %9, align 8, !tbaa !34   ; 2 uses
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bke, i64 %i.bkb
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bke, i64 %i.bkd
  %i.bkh = load i64, ptr %i.bkf, align 1, !tbaa !108
  %i.bki = insertelement <2 x i64> poison, i64 %i.bkh, i64 0
  %i.bkj = load i64, ptr %i.bkg, align 1, !tbaa !108
  %i.bkk = insertelement <2 x i64> poison, i64 %i.bkj, i64 0
  %i.bkl = bitcast <2 x i64> %i.bki to <8 x i16>
  %i.bkm = bitcast <2 x i64> %i.bkk to <8 x i16>
  %i.bkn = shufflevector <8 x i16> %i.bkl, <8 x i16> %i.bkm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.bkn, ptr %.31226.i.i, align 1, !tbaa !108
  %i.bko = getelementptr inbounds nuw i8, ptr %.31226.i.i, i64 16 ; 2 uses
  %i.bkp = add nuw nsw i32 %.31120225.i.i, 1      ; 2 uses
  %exitcond322.not.i.i = icmp eq i32 %i.bkp, %i.apz
  br i1 %exitcond322.not.i.i, label %.loopexit124.i36.i, label %bb.ab, !llvm.loop !1486

.loopexit124.i36.i:                               ; preds = %bb.ab, %bb.aa, %bb.y, %bb.x, %.loopexit131.i.i, %.preheader130.i.i, %.loopexit126.i.i, %.preheader125.i.i
  %.33.i.i = phi ptr [ %.22243.i.i, %.loopexit131.i.i ], [ %.22243.i.i, %.loopexit126.i.i ], [ %.23.lcssa.i.i, %.preheader125.i.i ], [ %i.bhg, %bb.y ], [ %i.bgj, %bb.x ], [ %.28.lcssa.i.i, %.preheader130.i.i ], [ %i.bjk, %bb.aa ], [ %i.bko, %bb.ab ] ; 2 uses
  %i.bkq = add nuw nsw i32 %.21098242.i.i, 2      ; 3 uses
  %i.bkr = or disjoint i32 %i.bkq, 1
  %i.bks = icmp slt i32 %i.bkr, %.sroa.speculated64
  br i1 %i.bks, label %bb.u, label %.preheader122.i33.i, !llvm.loop !1487

bb.ac:                                            ; preds = %.loopexit.i.i, %.lr.ph262.i.i
  %.34261.i.i = phi ptr [ %.22.lcssa.i.i, %.lr.ph262.i.i ], [ %.39.i.i, %.loopexit.i.i ] ; 4 uses
  %.31099260.i.i = phi i32 [ %.21098.lcssa.i.i, %.lr.ph262.i.i ], [ %i.bnt, %.loopexit.i.i ] ; 2 uses
  %i.bkt = add nsw i32 %.31099260.i.i, %i.w       ; 2 uses
  %i.bku = sdiv i32 %i.bkt, %i.sy
  %i.bkv = srem i32 %i.bkt, %i.sy
  %i.bkw = mul nsw i32 %i.bkv, %i.au
  %i.bkx = mul i32 %i.bdh, %i.bku
  %i.bky = add nsw i32 %i.bkw, %i.bkx             ; 3 uses
  br i1 %i.bdi, label %.preheader121.i.i, label %.loopexit120.i34.i

.preheader121.i.i:                                ; preds = %bb.ac
  br i1 %i.bdj, label %.lr.ph249.i.i, label %.preheader119.i35.i

.lr.ph249.i.i:                                    ; preds = %.preheader121.i.i
  %i.bkz = sext i32 %i.bky to i64                 ; 2 uses
  br label %bb.ad

.preheader119.i35.i:                              ; preds = %bb.ad, %.preheader121.i.i
  %.01109.lcssa.i.i = phi i32 [ 0, %.preheader121.i.i ], [ %i.bme, %bb.ad ] ; 2 uses
  %.35.lcssa.i.i = phi ptr [ %.34261.i.i, %.preheader121.i.i ], [ %i.bmd, %bb.ad ] ; 2 uses
  %i.bla = icmp slt i32 %.01109.lcssa.i.i, %.sroa.speculated
  br i1 %i.bla, label %.lr.ph254.i.i, label %.loopexit.i.i

.lr.ph254.i.i:                                    ; preds = %.preheader119.i35.i
  %i.blb = sext i32 %i.bky to i64
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ad, %.lr.ph249.i.i
  %.35248.i.i = phi ptr [ %.34261.i.i, %.lr.ph249.i.i ], [ %i.bmd, %bb.ad ] ; 3 uses
  %.01109247.i.i = phi i32 [ 0, %.lr.ph249.i.i ], [ %i.bme, %bb.ad ] ; 2 uses
  %i.blc = add nsw i32 %.01109247.i.i, %i.y       ; 3 uses
  %i.bld = sdiv i32 %i.blc, %i.sz
  %i.ble = add nsw i32 %i.blc, 1                  ; 2 uses
  %i.blf = sdiv i32 %i.ble, %i.sz
  %98 = insertelement <2 x i32> poison, i32 %i.blc, i64 0
  %99 = insertelement <2 x i32> %98, i32 %i.ble, i64 1
  %100 = srem <2 x i32> %99, %69                  ; 3 uses
  %101 = extractelement <2 x i32> %100, i64 0
  %i.blg = sdiv i32 %101, %i.aq
  %102 = extractelement <2 x i32> %100, i64 1
  %103 = sdiv i32 %102, %i.aq
  %104 = srem <2 x i32> %100, %71                 ; 2 uses
  %i.blh = sext i32 %i.bld to i64
  %i.bli = mul i64 %i.bd, %i.blh
  %i.blj = mul i32 %i.blg, %i.bdk
  %105 = extractelement <2 x i32> %104, i64 0
  %i.blk = mul nsw i32 %105, %i.as
  %i.bll = add nsw i32 %i.blk, %i.blj
  %i.blm = sext i32 %i.bll to i64
  %i.bln = sext i32 %i.blf to i64
  %i.blo = mul i64 %i.bd, %i.bln
  %i.blp = mul i32 %103, %i.bdk
  %106 = extractelement <2 x i32> %104, i64 1
  %i.blq = mul nsw i32 %106, %i.as
  %i.blr = add nsw i32 %i.blq, %i.blp
  %i.bls = sext i32 %i.blr to i64
  %i.blt = load ptr, ptr %9, align 8, !tbaa !34   ; 2 uses
  %i.blu = getelementptr i8, ptr %i.blt, i64 %i.bli
  %i.blv = getelementptr i8, ptr %i.blu, i64 %i.bkz
  %i.blw = getelementptr i8, ptr %i.blv, i64 %i.blm
  %i.blx = getelementptr i8, ptr %i.blt, i64 %i.blo
  %i.bly = getelementptr i8, ptr %i.blx, i64 %i.bkz
  %i.blz = getelementptr i8, ptr %i.bly, i64 %i.bls
  %i.bma = load i8, ptr %i.blw, align 1, !tbaa !108
  store i8 %i.bma, ptr %.35248.i.i, align 1, !tbaa !108
  %i.bmb = load i8, ptr %i.blz, align 1, !tbaa !108
  %i.bmc = getelementptr inbounds nuw i8, ptr %.35248.i.i, i64 1
  store i8 %i.bmb, ptr %i.bmc, align 1, !tbaa !108
  %i.bmd = getelementptr inbounds nuw i8, ptr %.35248.i.i, i64 2 ; 2 uses
  %i.bme = add nuw nsw i32 %.01109247.i.i, 2      ; 3 uses
  %i.bmf = or disjoint i32 %i.bme, 1
  %i.bmg = icmp slt i32 %i.bmf, %.sroa.speculated
  br i1 %i.bmg, label %bb.ad, label %.preheader119.i35.i, !llvm.loop !1488

bb.ae:                                            ; preds = %bb.ae, %.lr.ph254.i.i
  %.36253.i.i = phi ptr [ %.35.lcssa.i.i, %.lr.ph254.i.i ], [ %i.bmx, %bb.ae ] ; 2 uses
  %.11110252.i.i = phi i32 [ %.01109.lcssa.i.i, %.lr.ph254.i.i ], [ %i.bmy, %bb.ae ] ; 2 uses
  %i.bmh = add nsw i32 %.11110252.i.i, %i.y       ; 2 uses
  %i.bmi = sdiv i32 %i.bmh, %i.sz
  %i.bmj = srem i32 %i.bmh, %i.sz                 ; 2 uses
  %i.bmk = sdiv i32 %i.bmj, %i.aq
  %i.bml = srem i32 %i.bmj, %i.aq
  %i.bmm = sext i32 %i.bmi to i64
  %i.bmn = mul i64 %i.bd, %i.bmm
  %i.bmo = mul i32 %i.bmk, %i.bdk
  %i.bmp = mul nsw i32 %i.bml, %i.as
  %i.bmq = add nsw i32 %i.bmp, %i.bmo
  %i.bmr = sext i32 %i.bmq to i64
  %i.bms = load ptr, ptr %9, align 8, !tbaa !34
  %i.bmt = getelementptr i8, ptr %i.bms, i64 %i.bmn
  %i.bmu = getelementptr i8, ptr %i.bmt, i64 %i.blb
  %i.bmv = getelementptr i8, ptr %i.bmu, i64 %i.bmr
  %i.bmw = load i8, ptr %i.bmv, align 1, !tbaa !108
  store i8 %i.bmw, ptr %.36253.i.i, align 1, !tbaa !108
  %i.bmx = getelementptr inbounds nuw i8, ptr %.36253.i.i, i64 1 ; 2 uses
  %i.bmy = add nuw nsw i32 %.11110252.i.i, 1      ; 2 uses
  %exitcond325.not.i.i = icmp eq i32 %i.bmy, %.sroa.speculated
  br i1 %exitcond325.not.i.i, label %.loopexit.i.i, label %bb.ae, !llvm.loop !1489

.loopexit120.i34.i:                               ; preds = %bb.ac
  br i1 %brmerge279.i.i, label %.loopexit.i.i, label %.lr.ph258.i.i

.lr.ph258.i.i:                                    ; preds = %.loopexit120.i34.i
  %i.bmz = sext i32 %i.bky to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.lr.ph258.i.i
  %.38257.i.i = phi ptr [ %.34261.i.i, %.lr.ph258.i.i ], [ %i.bnr, %bb.af ] ; 2 uses
  %.01095256.i.i = phi i32 [ 0, %.lr.ph258.i.i ], [ %i.bns, %bb.af ] ; 2 uses
  %i.bna = add nsw i32 %.01095256.i.i, %i.bdo     ; 2 uses
  %i.bnb = sdiv i32 %i.bna, %i.sz
  %i.bnc = srem i32 %i.bna, %i.sz                 ; 2 uses
  %i.bnd = sdiv i32 %i.bnc, %i.aq
  %i.bne = srem i32 %i.bnc, %i.aq
  %i.bnf = sext i32 %i.bnb to i64
  %i.bng = mul i64 %i.bd, %i.bnf
  %i.bnh = add i64 %i.bng, %i.bmz
  %i.bni = mul i32 %i.bnd, %i.bdk
  %i.bnj = mul nsw i32 %i.bne, %i.as
  %i.bnk = add nsw i32 %i.bnj, %i.bni
  %i.bnl = sext i32 %i.bnk to i64
  %i.bnm = add i64 %i.bnh, %i.bnl
  %i.bnn = shl i64 %i.bnm, 3
  %i.bno = load ptr, ptr %9, align 8, !tbaa !34
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bno, i64 %i.bnn
  %i.bnq = load i64, ptr %i.bnp, align 1, !tbaa !108
  store i64 %i.bnq, ptr %.38257.i.i, align 1, !tbaa !108
  %i.bnr = getelementptr inbounds nuw i8, ptr %.38257.i.i, i64 8 ; 2 uses
  %i.bns = add nuw nsw i32 %.01095256.i.i, 1      ; 2 uses
  %exitcond326.not.i.i = icmp eq i32 %i.bns, %i.bdm
  br i1 %exitcond326.not.i.i, label %.loopexit.i.i, label %bb.af, !llvm.loop !1490

.loopexit.i.i:                                    ; preds = %bb.af, %bb.ae, %.loopexit120.i34.i, %.preheader119.i35.i
  %.39.i.i = phi ptr [ %.34261.i.i, %.loopexit120.i34.i ], [ %i.bmx, %bb.ae ], [ %.35.lcssa.i.i, %.preheader119.i35.i ], [ %i.bnr, %bb.af ]
  %i.bnt = add nuw nsw i32 %.31099260.i.i, 1      ; 2 uses
  %exitcond327.not.i.i = icmp eq i32 %i.bnt, %.sroa.speculated64
  br i1 %exitcond327.not.i.i, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ac, !llvm.loop !1491

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.loopexit.i.i, %..loopexit_crit_edge.i.i, %..loopexit118_crit_edge.us.i.i, %.preheader122.i33.i, %.lr.ph206.split.split.i.i, %.lr.ph206.split.us.split.i.i, %.lr.ph206.i.i, %.preheader.i.i
  %i.bnu = add nsw i32 %.0127, 1
  %i.bnv = load i32, ptr %i.b, align 4, !tbaa !78
  %.not.not = icmp slt i32 %.0127, %i.bnv
  br i1 %.not.not, label %_ZN4ncnn3MatD2Ev.exit36, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined.12(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !78     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !78
  %i.h = load i32, ptr %0, align 4, !tbaa !78     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !78
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !78
  %i.k = load i32, ptr %i.a, align 4, !tbaa !78   ; 2 uses
  %.not151 = icmp sgt i32 %i.k, %i.j
  br i1 %.not151, label %._crit_edge155, label %.lr.ph154

.lr.ph154:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 52
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 52
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 52
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph154, %_ZN4ncnn3MatD2Ev.exit
  %.045152 = phi i32 [ %i.k, %.lr.ph154 ], [ %i.cz, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.bj = load i32, ptr %3, align 4, !tbaa !78    ; 2 uses
  %i.bk = mul nsw i32 %i.bj, %.045152             ; 4 uses
  %i.bl = load i32, ptr %4, align 4, !tbaa !78
  %i.bm = sub nsw i32 %i.bl, %i.bk
  %.sroa.speculated115 = call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.bm) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.bn = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
end_hunk_1
