Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_fma?download=true
inline.NumInlined: 397
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 143
loop-unroll.NumUnrolled: 268
begin_hunk_0_@_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined:bb.a
.thread.3:                                        ; preds = %bb.al, %bb.ak, %bb.af, %bb.ae, %bb.ad, %.thread.2
  %.3159.3 = phi <2 x i64> [ zeroinitializer, %.thread.2 ], [ zeroinitializer, %bb.ad ], [ %.2158.3, %bb.af ], [ %.2158.3, %bb.ae ], [ %.0156.3, %bb.ak ], [ %.0156.3, %bb.al ]
  %.2155.3 = phi <2 x i64> [ zeroinitializer, %.thread.2 ], [ zeroinitializer, %bb.ad ], [ %i.ov, %bb.af ], [ zeroinitializer, %bb.ae ], [ zeroinitializer, %bb.ak ], [ %i.pv, %bb.al ]
  %.3.3 = phi <2 x i64> [ zeroinitializer, %.thread.2 ], [ zeroinitializer, %bb.ad ], [ %.2.3, %bb.af ], [ %.2.3, %bb.ae ], [ %.0151.3, %bb.ak ], [ %.0151.3, %bb.al ]
  %.1.3 = phi <2 x i64> [ zeroinitializer, %.thread.2 ], [ zeroinitializer, %bb.ad ], [ %i.om, %bb.af ], [ %i.om, %bb.ae ], [ %i.pa, %bb.ak ], [ %i.pa, %bb.al ]
  %i.pw = bitcast <2 x i64> %.1.3 to <8 x i16>
  %i.px = bitcast <2 x i64> %.3159.3 to <8 x i16> ; 3 uses
  %i.py = bitcast <2 x i64> %.3.3 to <8 x i16>    ; 3 uses
  %i.pz = add <8 x i16> %i.py, %i.px
  %i.qa = bitcast <2 x i64> %.2155.3 to <8 x i16>
  %i.qb = load ptr, ptr %13, align 8, !tbaa !37
  %i.qc = mul i32 %i.v, %i.w
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr inbounds [2 x i8], ptr %i.qb, i64 %i.qd
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 %.idx ; 5 uses
  %i.qg = shl nsw i32 %i.w, 3
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds [2 x i8], ptr %i.qf, i64 %i.qh ; 2 uses
  %i.qj = shl nsw i32 %i.w, 4
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds [2 x i8], ptr %i.qf, i64 %i.qk ; 2 uses
  %i.qm = mul nsw i32 %i.w, 24
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr inbounds [2 x i8], ptr %i.qf, i64 %i.qn ; 2 uses
  %i.qp = add <8 x i16> %i.me, %i.es
  %i.qq = sub <8 x i16> %i.er, %i.qp
  %i.qr = add <8 x i16> %i.me, %i.ik
  %i.qs = sub <8 x i16> %i.me, %i.ik
  %i.qt = add <8 x i16> %i.ik, %i.px
  %i.qu = sub <8 x i16> %i.pw, %i.qt
  store <8 x i16> %i.qq, ptr %i.qf, align 16, !tbaa !114
  store <8 x i16> %i.qr, ptr %i.qi, align 16, !tbaa !114
  store <8 x i16> %i.qs, ptr %i.ql, align 16, !tbaa !114
  store <8 x i16> %i.qu, ptr %i.qo, align 16, !tbaa !114
  %i.qv = load i32, ptr %4, align 4, !tbaa !81
  %i.qw = shl nsw i32 %i.qv, 5
  %i.qx = sext i32 %i.qw to i64                   ; 4 uses
  %i.qy = getelementptr inbounds [2 x i8], ptr %i.qf, i64 %i.qx ; 2 uses
  %i.qz = getelementptr inbounds [2 x i8], ptr %i.qi, i64 %i.qx ; 2 uses
  %i.ra = getelementptr inbounds [2 x i8], ptr %i.ql, i64 %i.qx ; 2 uses
  %i.rb = getelementptr inbounds [2 x i8], ptr %i.qo, i64 %i.qx ; 2 uses
  %i.rc = sub <8 x i16> %i.eu, %i.mg
  %i.rd = add <8 x i16> %i.mg, %i.im
  %i.re = sub <8 x i16> %i.mg, %i.im
  %i.rf = sub <8 x i16> %i.pz, %i.im
  store <8 x i16> %i.rc, ptr %i.qy, align 16, !tbaa !114
  store <8 x i16> %i.rd, ptr %i.qz, align 16, !tbaa !114
  store <8 x i16> %i.re, ptr %i.ra, align 16, !tbaa !114
  store <8 x i16> %i.rf, ptr %i.rb, align 16, !tbaa !114
  %i.rg = load i32, ptr %4, align 4, !tbaa !81
  %i.rh = shl nsw i32 %i.rg, 5
  %i.ri = sext i32 %i.rh to i64                   ; 4 uses
  %i.rj = getelementptr inbounds [2 x i8], ptr %i.qy, i64 %i.ri ; 2 uses
  %i.rk = getelementptr inbounds [2 x i8], ptr %i.qz, i64 %i.ri ; 2 uses
  %i.rl = getelementptr inbounds [2 x i8], ptr %i.ra, i64 %i.ri ; 2 uses
  %i.rm = getelementptr inbounds [2 x i8], ptr %i.rb, i64 %i.ri ; 2 uses
  %i.rn = add <8 x i16> %i.mh, %i.et
  %i.ro = sub <8 x i16> %i.es, %i.rn
  %i.rp = add <8 x i16> %i.mh, %i.in
  %i.rq = sub <8 x i16> %i.mh, %i.in
  %i.rr = add <8 x i16> %i.in, %i.py
  %i.rs = sub <8 x i16> %i.px, %i.rr
  store <8 x i16> %i.ro, ptr %i.rj, align 16, !tbaa !114
  store <8 x i16> %i.rp, ptr %i.rk, align 16, !tbaa !114
  store <8 x i16> %i.rq, ptr %i.rl, align 16, !tbaa !114
  store <8 x i16> %i.rs, ptr %i.rm, align 16, !tbaa !114
  %i.rt = load i32, ptr %4, align 4, !tbaa !81
  %i.ru = shl nsw i32 %i.rt, 5
  %i.rv = sext i32 %i.ru to i64                   ; 4 uses
  %i.rw = getelementptr inbounds [2 x i8], ptr %i.rj, i64 %i.rv
  %i.rx = getelementptr inbounds [2 x i8], ptr %i.rk, i64 %i.rv
  %i.ry = getelementptr inbounds [2 x i8], ptr %i.rl, i64 %i.rv
  %i.rz = getelementptr inbounds [2 x i8], ptr %i.rm, i64 %i.rv
  %i.sa = add <8 x i16> %i.mj, %i.et
  %i.sb = sub <8 x i16> %i.ev, %i.sa
  %i.sc = add <8 x i16> %i.mj, %i.ip
  %i.sd = sub <8 x i16> %i.mj, %i.ip
  %i.se = add <8 x i16> %i.ip, %i.py
  %i.sf = sub <8 x i16> %i.qa, %i.se
  store <8 x i16> %i.sb, ptr %i.rw, align 16, !tbaa !114
  store <8 x i16> %i.sc, ptr %i.rx, align 16, !tbaa !114
  store <8 x i16> %i.sd, ptr %i.ry, align 16, !tbaa !114
  store <8 x i16> %i.sf, ptr %i.rz, align 16, !tbaa !114
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.sg = load i32, ptr %4, align 4, !tbaa !81    ; 3 uses
  %i.sh = sext i32 %i.sg to i64
  %i.si = icmp slt i64 %indvars.iv.next, %i.sh
  br i1 %i.si, label %.noexc, label %._crit_edge, !llvm.loop !1918

._crit_edge:                                      ; preds = %.thread.3, %.lr.ph.split
  %i.sj = phi i32 [ %i.q, %.lr.ph.split ], [ %i.sg, %.thread.3 ]
  %i.sk = add i32 %.0187, 1
  %exitcond.not = icmp eq i32 %.0187, %i.j
  br i1 %exitcond.not, label %._crit_edge189, label %.lr.ph.split, !llvm.loop !1919

._crit_edge189:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge189, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !81     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.as

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !81
  %i.h = load i32, ptr %0, align 4, !tbaa !81     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !81
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !81
  %i.k = load i32, ptr %i.a, align 4, !tbaa !81   ; 2 uses
  %.not125 = icmp sgt i32 %i.k, %i.j
  br i1 %.not125, label %._crit_edge, label %_ZN4ncnn3MatD2Ev.exit36.lr.ph

_ZN4ncnn3MatD2Ev.exit36.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  br label %_ZN4ncnn3MatD2Ev.exit36

_ZN4ncnn3MatD2Ev.exit36:                          ; preds = %_ZN4ncnn3MatD2Ev.exit36.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.0126 = phi i32 [ %i.k, %_ZN4ncnn3MatD2Ev.exit36.lr.ph ], [ %i.bkz, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.ab = load i32, ptr %3, align 4, !tbaa !81    ; 2 uses
  %i.ac = sdiv i32 %.0126, %i.ab                  ; 2 uses
  %i.ad = srem i32 %.0126, %i.ab                  ; 2 uses
  %i.ae = load i32, ptr %4, align 4, !tbaa !81    ; 2 uses
  %i.af = mul nsw i32 %i.ae, %i.ac                ; 13 uses
  %i.ag = load i32, ptr %5, align 4, !tbaa !81    ; 2 uses
  %i.ah = mul i32 %i.ag, %i.ad                    ; 30 uses
  %i.ai = load i32, ptr %6, align 4, !tbaa !81
  %i.aj = sub nsw i32 %i.ai, %i.af
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.aj) ; 20 uses
  %i.ak = load i32, ptr %7, align 4, !tbaa !81
  %i.al = sub i32 %i.ak, %i.ah
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.al) ; 72 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  %i.am = load i32, ptr %i.l, align 4, !tbaa !89, !noalias !1985 ; 2 uses
  %i.an = load ptr, ptr %8, align 8, !tbaa !37, !noalias !1985
  %i.ao = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !1985
  %i.ap = sext i32 %i.ac to i64
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = load i64, ptr %i.n, align 8, !tbaa !79, !noalias !1985 ; 3 uses
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %i.au = load i32, ptr %i.o, align 8, !tbaa !80, !noalias !1985
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !36, !noalias !1985
  %i.aw = sext i32 %i.am to i64                   ; 2 uses
  %i.ax = sext i32 %i.ad to i64
  %i.ay = mul nsw i64 %i.aw, %i.ax
  %i.az = mul i64 %i.ay, %i.ar
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.az
  store ptr %i.ba, ptr %16, align 8, !tbaa !37, !alias.scope !1986
  store ptr null, ptr %i.q, align 8, !tbaa !35, !alias.scope !1986
  store i64 %i.ar, ptr %i.r, align 8, !tbaa !79, !alias.scope !1986
  store i32 %i.au, ptr %i.s, align 8, !tbaa !80, !alias.scope !1986
  store ptr %i.av, ptr %i.t, align 8, !tbaa !36, !alias.scope !1986
  %i.bb = insertelement <4 x i32> <i32 2, i32 poison, i32 1, i32 1>, i32 %i.am, i64 1
  store <4 x i32> %i.bb, ptr %i.u, align 8, !tbaa !81, !alias.scope !1986
  store i32 1, ptr %i.v, align 8, !tbaa !82, !alias.scope !1986
  store i64 %i.aw, ptr %i.w, align 8, !tbaa !38, !alias.scope !1986
  %i.bc = load i32, ptr %10, align 4, !tbaa !81   ; 49 uses
  %i.bd = load i32, ptr %11, align 4, !tbaa !81   ; 5 uses
  %i.be = load i32, ptr %12, align 4, !tbaa !81   ; 32 uses
  %i.bf = load i32, ptr %13, align 4, !tbaa !81   ; 8 uses
  %i.bg = load i32, ptr %14, align 4, !tbaa !81   ; 9 uses
  %i.bh = load i32, ptr %15, align 4, !tbaa !81   ; 8 uses
  %i.bi = invoke noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
          to label %.noexc46 unwind label %bb.at

.noexc46:                                         ; preds = %_ZN4ncnn3MatD2Ev.exit36
  %.not.i45 = icmp eq i32 %i.bi, 0
  br i1 %.not.i45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc46
  invoke void @_ZN4ncnn46convolution_im2col_input_tile_int8_avxvnniint8ERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.af, i32 noundef %.sroa.speculated63, i32 noundef %i.ah, i32 noundef %.sroa.speculated, i32 noundef %i.bc, i32 noundef %i.bd, i32 noundef %i.be, i32 noundef %i.bf, i32 noundef %i.bg, i32 noundef %i.bh)
          to label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit unwind label %bb.at

bb.d:                                             ; preds = %.noexc46
  %i.bj = invoke noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
          to label %.noexc48 unwind label %bb.at

.noexc48:                                         ; preds = %bb.d
  %.not68.i = icmp eq i32 %i.bj, 0
  br i1 %.not68.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc48
  invoke void @_ZN4ncnn42convolution_im2col_input_tile_int8_avxvnniERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.af, i32 noundef %.sroa.speculated63, i32 noundef %i.ah, i32 noundef %.sroa.speculated, i32 noundef %i.bc, i32 noundef %i.bd, i32 noundef %i.be, i32 noundef %i.bf, i32 noundef %i.bg, i32 noundef %i.bh)
          to label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit unwind label %bb.at

bb.f:                                             ; preds = %.noexc48
  %i.bk = invoke noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev()
          to label %.noexc50 unwind label %bb.at

.noexc50:                                         ; preds = %bb.f
  %.not69.i = icmp eq i32 %i.bk, 0
  br i1 %.not69.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc50
  invoke void @_ZN4ncnn39convolution_im2col_input_tile_int8_avx2ERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.af, i32 noundef %.sroa.speculated63, i32 noundef %i.ah, i32 noundef %.sroa.speculated, i32 noundef %i.bc, i32 noundef %i.bd, i32 noundef %i.be, i32 noundef %i.bf, i32 noundef %i.bg, i32 noundef %i.bh)
          to label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit unwind label %bb.at

bb.h:                                             ; preds = %.noexc50
  %i.bl = icmp eq i32 %i.bc, 1
  %i.bm = icmp eq i32 %i.bd, 1
  %or.cond.i = and i1 %i.bl, %i.bm
  %i.bn = icmp eq i32 %i.be, 1
  %or.cond3.i = and i1 %or.cond.i, %i.bn
  %i.bo = icmp eq i32 %i.bf, 1
  %or.cond5.i = and i1 %or.cond3.i, %i.bo
  %i.bp = icmp eq i32 %i.bg, 1                    ; 4 uses
  %i.bq = icmp eq i32 %i.bh, 1
  %i.br = and i1 %or.cond5.i, %i.bq
  %or.cond9.i = and i1 %i.bp, %i.br
  %.val.i = load ptr, ptr %16, align 8, !tbaa !37 ; 7 uses
  %i.bs = load i64, ptr %i.x, align 8, !tbaa !38  ; 57 uses
  br i1 %or.cond9.i, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bt = load i32, ptr %i.z, align 8, !tbaa !80  ; 4 uses
  %i.bu = icmp sgt i32 %.sroa.speculated63, 7
  br i1 %i.bu, label %.lr.ph147.i.i, label %.preheader126.i.i

.lr.ph147.i.i:                                    ; preds = %bb.i
  %i.bv = sdiv i32 %i.ah, 8
  %i.bw = sext i32 %i.bv to i64
  %i.bx = lshr i32 %.sroa.speculated, 3
  %i.by = shl i64 %i.bs, 3
  %i.bz = sext i32 %i.ah to i64
  %i.ca = icmp sgt i32 %.sroa.speculated, 1
  %i.cb = shl i64 %i.bs, 1                        ; 3 uses
  %i.cc = and i32 %.sroa.speculated, -2           ; 2 uses
  %i.cd = zext nneg i32 %.sroa.speculated63 to i64 ; 4 uses
  %i.ce = sext i32 %i.af to i64                   ; 2 uses
  switch i32 %i.bt, label %.loopexit128.i.preheader.i [
    i32 8, label %.lr.ph147.i.split.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit270.i.us.i.preheader
  ]

_ZN4ncnn3MatD2Ev.exit270.i.us.i.preheader:        ; preds = %.lr.ph147.i.i
  %i.cf = add i32 %.sroa.speculated, -2           ; 2 uses
  %i.cg = lshr i32 %i.cf, 1                       ; 2 uses
  %i.ch = add nuw i32 %i.cg, 1                    ; 2 uses
  %i.ci = icmp eq i32 %i.cg, 0
  %unroll_iter = and i32 %i.ch, -2
  %i.cj = and i32 %i.cf, 2
  %lcmp.mod.not.not = icmp eq i32 %i.cj, 0
  %lcmp.mod416 = trunc i32 %i.ch to i1
  br label %_ZN4ncnn3MatD2Ev.exit270.i.us.i

.loopexit128.i.preheader.i:                       ; preds = %.lr.ph147.i.i
  %umax233.i = call i64 @llvm.umax.i64(i64 %i.cd, i64 15)
  %i.ck = and i64 %umax233.i, 2147483640
  br label %.preheader126.loopexit.i.i

.lr.ph147.i.split.us.i:                           ; preds = %.lr.ph147.i.i
  %i.cl = icmp sgt i32 %.sroa.speculated, 7
  br i1 %i.cl, label %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i, label %_ZN4ncnn3MatD2Ev.exit271.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit271.i.us.preheader.i:        ; preds = %.lr.ph147.i.split.us.i
  %umax.i = call i64 @llvm.umax.i64(i64 %i.cd, i64 15)
  %i.cm = and i64 %umax.i, 2147483640
  br label %.preheader126.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit271.i.us.us.i:               ; preds = %.lr.ph147.i.split.us.i, %.loopexit128.i.loopexit.us.us.i
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit128.i.loopexit.us.us.i ], [ 0, %.lr.ph147.i.split.us.i ] ; 2 uses
  %.0238146.i.us.us.i = phi ptr [ %i.ds, %.loopexit128.i.loopexit.us.us.i ], [ %.val.i, %.lr.ph147.i.split.us.i ]
  %i.cn = load ptr, ptr %9, align 8, !tbaa !37, !noalias !1987
  %i.co = load i64, ptr %i.x, align 8, !tbaa !38, !noalias !1987
  %i.cp = mul i64 %i.co, %i.bw
  %i.cq = load i64, ptr %i.aa, align 8, !tbaa !79, !noalias !1987
  %i.cr = mul i64 %i.cp, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cr
  %i.ct = add nsw i64 %indvars.iv.i.us.us.i, %i.ce
  %i.cu = shl nsw i64 %i.ct, 3
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 %i.cu
  br label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.lr.ph.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i
  %.1239132.i.us.us.i = phi ptr [ %i.ds, %.lr.ph.i.us.us.i ], [ %.0238146.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i ] ; 5 uses
  %.0250131.i.us.us.i = phi ptr [ %i.dt, %.lr.ph.i.us.us.i ], [ %i.cv, %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i ] ; 5 uses
  %.0251130.i.us.us.i = phi i32 [ %i.du, %.lr.ph.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i ]
  %i.cw = load <8 x i16>, ptr %.0250131.i.us.us.i, align 1, !tbaa !114 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0250131.i.us.us.i, i64 16
  %i.cy = load <8 x i16>, ptr %i.cx, align 1, !tbaa !114 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0250131.i.us.us.i, i64 32
  %i.da = load <8 x i16>, ptr %i.cz, align 1, !tbaa !114 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0250131.i.us.us.i, i64 48
  %i.dc = load <8 x i16>, ptr %i.db, align 1, !tbaa !114 ; 2 uses
  %i.dd = shufflevector <8 x i16> %i.cw, <8 x i16> %i.cy, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.de = bitcast <8 x i16> %i.dd to <2 x i64>    ; 2 uses
  %i.df = shufflevector <8 x i16> %i.cw, <8 x i16> %i.cy, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.dg = bitcast <8 x i16> %i.df to <2 x i64>    ; 2 uses
  %i.dh = shufflevector <8 x i16> %i.da, <8 x i16> %i.dc, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.di = bitcast <8 x i16> %i.dh to <2 x i64>    ; 2 uses
  %i.dj = shufflevector <8 x i16> %i.da, <8 x i16> %i.dc, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.dk = bitcast <8 x i16> %i.dj to <2 x i64>    ; 2 uses
  %i.dl = shufflevector <2 x i64> %i.de, <2 x i64> %i.di, <2 x i32> <i32 0, i32 2>
  %i.dm = shufflevector <2 x i64> %i.de, <2 x i64> %i.di, <2 x i32> <i32 1, i32 3>
  %i.dn = shufflevector <2 x i64> %i.dg, <2 x i64> %i.dk, <2 x i32> <i32 0, i32 2>
  %i.do = shufflevector <2 x i64> %i.dg, <2 x i64> %i.dk, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.dl, ptr %.1239132.i.us.us.i, align 16, !tbaa !114
  %i.dp = getelementptr inbounds nuw i8, ptr %.1239132.i.us.us.i, i64 16
  store <2 x i64> %i.dm, ptr %i.dp, align 16, !tbaa !114
  %i.dq = getelementptr inbounds nuw i8, ptr %.1239132.i.us.us.i, i64 32
  store <2 x i64> %i.dn, ptr %i.dq, align 16, !tbaa !114
  %i.dr = getelementptr inbounds nuw i8, ptr %.1239132.i.us.us.i, i64 48
  store <2 x i64> %i.do, ptr %i.dr, align 16, !tbaa !114
  %i.ds = getelementptr inbounds nuw i8, ptr %.1239132.i.us.us.i, i64 64 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0250131.i.us.us.i, i64 %i.by
  %i.du = add nuw nsw i32 %.0251130.i.us.us.i, 1  ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i32 %i.du, %i.bx
  br i1 %exitcond.not.i.us.us.i, label %.loopexit128.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !1927

.loopexit128.i.loopexit.us.us.i:                  ; preds = %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 8 ; 3 uses
  %i.dv = or disjoint i64 %indvars.iv.next.i.us.us.i, 7
  %i.dw = icmp samesign ult i64 %i.dv, %i.cd
  br i1 %i.dw, label %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i, label %.preheader126.loopexit.i.i, !llvm.loop !1928

_ZN4ncnn3MatD2Ev.exit270.i.us.i:                  ; preds = %_ZN4ncnn3MatD2Ev.exit270.i.us.i.preheader, %.loopexit128.i.us147.i
  %indvars.iv.i.us145.i = phi i64 [ %indvars.iv.next.i.us149.i, %.loopexit128.i.us147.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit270.i.us.i.preheader ] ; 2 uses
  %.0238146.i.us146.i = phi ptr [ %.5.i.us148.i, %.loopexit128.i.us147.i ], [ %.val.i, %_ZN4ncnn3MatD2Ev.exit270.i.us.i.preheader ] ; 3 uses
  %i.dx = load ptr, ptr %9, align 8, !tbaa !37, !noalias !1988
  %i.dy = load i64, ptr %i.x, align 8, !tbaa !38, !noalias !1988
  %i.dz = mul i64 %i.dy, %i.bz
  %i.ea = load i64, ptr %i.aa, align 8, !tbaa !79, !noalias !1988
  %i.eb = mul i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 %indvars.iv.i.us145.i
  %i.ee = getelementptr i8, ptr %i.ed, i64 %i.ce  ; 3 uses
  br i1 %i.ca, label %.lr.ph136.i.us.i.preheader, label %.preheader127.i.us.i

.lr.ph136.i.us.i.preheader:                       ; preds = %_ZN4ncnn3MatD2Ev.exit270.i.us.i
  br i1 %i.ci, label %.lr.ph136.i.us.i.epil.preheader, label %.lr.ph136.i.us.i

.lr.ph136.i.us.i:                                 ; preds = %.lr.ph136.i.us.i.preheader, %.lr.ph136.i.us.i
  %.3135.i.us.i = phi ptr [ %i.ex, %.lr.ph136.i.us.i ], [ %.0238146.i.us146.i, %.lr.ph136.i.us.i.preheader ] ; 3 uses
  %.0252134.i.us.i = phi ptr [ %i.ey, %.lr.ph136.i.us.i ], [ %i.ee, %.lr.ph136.i.us.i.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph136.i.us.i ], [ 0, %.lr.ph136.i.us.i.preheader ]
  %i.ef = load i64, ptr %.0252134.i.us.i, align 1, !tbaa !114
  %i.eg = insertelement <2 x i64> poison, i64 %i.ef, i64 0
  %i.eh = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i, i64 %i.bs
  %i.ei = load i64, ptr %i.eh, align 1, !tbaa !114
  %i.ej = insertelement <2 x i64> poison, i64 %i.ei, i64 0
  %i.ek = bitcast <2 x i64> %i.eg to <16 x i8>
  %i.el = bitcast <2 x i64> %i.ej to <16 x i8>
  %i.em = shufflevector <16 x i8> %i.ek, <16 x i8> %i.el, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.em, ptr %.3135.i.us.i, align 1, !tbaa !114
  %i.en = getelementptr inbounds nuw i8, ptr %.3135.i.us.i, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i, i64 %i.cb ; 3 uses
  %i.ep = load i64, ptr %i.eo, align 1, !tbaa !114
  %i.eq = insertelement <2 x i64> poison, i64 %i.ep, i64 0
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.bs
  %i.es = load i64, ptr %i.er, align 1, !tbaa !114
  %i.et = insertelement <2 x i64> poison, i64 %i.es, i64 0
  %i.eu = bitcast <2 x i64> %i.eq to <16 x i8>
  %i.ev = bitcast <2 x i64> %i.et to <16 x i8>
  %i.ew = shufflevector <16 x i8> %i.eu, <16 x i8> %i.ev, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.ew, ptr %i.en, align 1, !tbaa !114
  %i.ex = getelementptr inbounds nuw i8, ptr %.3135.i.us.i, i64 32 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.cb ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
end_hunk_0
begin_hunk_1_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !114
  store i8 %i.sh, ptr %i.sf, align 1, !tbaa !114
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 1
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !114
  %i.sk = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 3
  store i8 %i.sj, ptr %i.sk, align 1, !tbaa !114
  %i.sl = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 4
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sg, i64 %i.bs ; 3 uses
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !114
  store i8 %i.sn, ptr %i.sl, align 1, !tbaa !114
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 1
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !114
  %i.sq = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 5
  store i8 %i.sp, ptr %i.sq, align 1, !tbaa !114
  %i.sr = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 6
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.bs ; 3 uses
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !114
  store i8 %i.st, ptr %i.sr, align 1, !tbaa !114
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 1
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !114
  %i.sw = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 7
  store i8 %i.sv, ptr %i.sw, align 1, !tbaa !114
  %i.sx = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 8 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.bs
  %i.sz = add nuw nsw i32 %.1186.i.i, 4           ; 2 uses
  %exitcond236.not.i.i.3 = icmp eq i32 %i.sz, %.sroa.speculated
  br i1 %exitcond236.not.i.i.3, label %.loopexit120.i.i, label %.lr.ph187.i.i, !llvm.loop !1954

.loopexit120.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph175.i.i
  br i1 %lcmp.mod439.not, label %.loopexit120.i.i, label %.lr.ph175.i.i.epil.preheader

.lr.ph175.i.i.epil.preheader:                     ; preds = %.loopexit120.i.i.loopexit.unr-lcssa, %.lr.ph175.preheader.i.i
  %.13174.i.i.epil.init = phi ptr [ %.12190.i.i, %.lr.ph175.preheader.i.i ], [ %i.pw, %.loopexit120.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0245172.i.i.epil.init = phi ptr [ %i.pd, %.lr.ph175.preheader.i.i ], [ %i.px, %.loopexit120.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod441)
  %i.ta = load i64, ptr %.0245172.i.i.epil.init, align 1, !tbaa !114
  %i.tb = insertelement <2 x i64> poison, i64 %i.ta, i64 0
  %i.tc = getelementptr inbounds nuw i8, ptr %.0245172.i.i.epil.init, i64 8
  %i.td = load i64, ptr %i.tc, align 1, !tbaa !114
  %i.te = insertelement <2 x i64> poison, i64 %i.td, i64 0
  %i.tf = bitcast <2 x i64> %i.tb to <8 x i16>
  %i.tg = bitcast <2 x i64> %i.te to <8 x i16>
  %i.th = shufflevector <8 x i16> %i.tf, <8 x i16> %i.tg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.th, ptr %.13174.i.i.epil.init, align 1, !tbaa !114
  %i.ti = getelementptr inbounds nuw i8, ptr %.13174.i.i.epil.init, i64 16
  br label %.loopexit120.i.i

.loopexit120.i.i:                                 ; preds = %.lr.ph187.i.i.prol.loopexit, %.lr.ph187.i.i, %.lr.ph175.i.i.epil.preheader, %.loopexit120.i.i.loopexit.unr-lcssa, %.preheader119.i.i, %_ZN4ncnn3MatD2Ev.exit267.i.i, %bb.k
  %.17.i.i = phi ptr [ %.12190.i.i, %bb.k ], [ %.15.lcssa.i.i, %.preheader119.i.i ], [ %i.ti, %.lr.ph175.i.i.epil.preheader ], [ %.12190.i.i, %_ZN4ncnn3MatD2Ev.exit267.i.i ], [ %i.pw, %.loopexit120.i.i.loopexit.unr-lcssa ], [ %.lcssa410.unr, %.lr.ph187.i.i.prol.loopexit ], [ %i.sx, %.lr.ph187.i.i ] ; 2 uses
  %indvars.iv.next238.i.i = add nuw nsw i64 %indvars.iv237.i.i, 2 ; 3 uses
  %i.tj = icmp slt i64 %indvars.iv.next238.i.i, %invariant.op277.i.i
  br i1 %i.tj, label %bb.k, label %.preheader.loopexit.i.i, !llvm.loop !1955

_ZN4ncnn3MatD2Ev.exit.i.i:                        ; preds = %..loopexit_crit_edge.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i
  %indvars.iv241.i.i = phi i64 [ %i.or, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %indvars.iv.next242.i.i, %..loopexit_crit_edge.i.i ] ; 2 uses
  %.18205.i.i = phi ptr [ %.12.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %.lcssa412, %..loopexit_crit_edge.i.i ] ; 2 uses
  %i.tk = load ptr, ptr %9, align 8, !tbaa !37, !noalias !1994
  %i.tl = load i64, ptr %i.x, align 8, !tbaa !38, !noalias !1994
  %i.tm = mul i64 %i.tl, %i.na
  %i.tn = load i64, ptr %i.aa, align 8, !tbaa !79, !noalias !1994
  %i.to = mul i64 %i.tm, %i.tn
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.to
  %i.tq = getelementptr i8, ptr %i.tp, i64 %indvars.iv241.i.i
  %i.tr = getelementptr i8, ptr %i.tq, i64 %i.os  ; 2 uses
  br i1 %i.ou, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit.i.i.new

_ZN4ncnn3MatD2Ev.exit.i.i.new:                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i.new
  %.0232200.i.i = phi ptr [ %i.up, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %i.tr, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 2 uses
  %.21199.i.i = phi ptr [ %i.uo, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %.18205.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 9 uses
  %niter449 = phi i32 [ %niter449.next.7, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit.i.i ]
  %i.ts = load i8, ptr %.0232200.i.i, align 1, !tbaa !114
  store i8 %i.ts, ptr %.21199.i.i, align 1, !tbaa !114
  %i.tt = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 1
  %i.tu = getelementptr inbounds nuw i8, ptr %.0232200.i.i, i64 %i.bs ; 2 uses
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !114
  store i8 %i.tv, ptr %i.tt, align 1, !tbaa !114
  %i.tw = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 2
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.bs ; 2 uses
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !114
  store i8 %i.ty, ptr %i.tw, align 1, !tbaa !114
  %i.tz = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 3
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.bs ; 2 uses
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !114
  store i8 %i.ub, ptr %i.tz, align 1, !tbaa !114
  %i.uc = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 4
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 %i.bs ; 2 uses
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !114
  store i8 %i.ue, ptr %i.uc, align 1, !tbaa !114
  %i.uf = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 5
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 %i.bs ; 2 uses
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !114
  store i8 %i.uh, ptr %i.uf, align 1, !tbaa !114
  %i.ui = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 6
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.bs ; 2 uses
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !114
  store i8 %i.uk, ptr %i.ui, align 1, !tbaa !114
  %i.ul = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 7
  %i.um = getelementptr inbounds nuw i8, ptr %i.uj, i64 %i.bs ; 2 uses
  %i.un = load i8, ptr %i.um, align 1, !tbaa !114
  store i8 %i.un, ptr %i.ul, align 1, !tbaa !114
  %i.uo = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 8 ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.um, i64 %i.bs ; 2 uses
  %niter449.next.7 = add i32 %niter449, 8         ; 2 uses
  %niter449.ncmp.7 = icmp eq i32 %niter449.next.7, %unroll_iter448
  br i1 %niter449.ncmp.7, label %..loopexit_crit_edge.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit.i.i.new, !llvm.loop !1958

..loopexit_crit_edge.i.i.unr-lcssa:               ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i.new
  br i1 %lcmp.mod445.not, label %..loopexit_crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit.i.i
  %.0232200.i.i.epil.init = phi ptr [ %i.tr, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.up, %..loopexit_crit_edge.i.i.unr-lcssa ]
  %.21199.i.i.epil.init = phi ptr [ %.18205.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.uo, %..loopexit_crit_edge.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod447)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.0232200.i.i.epil = phi ptr [ %.0232200.i.i.epil.init, %.epil.preheader ], [ %i.us, %bb.l ] ; 2 uses
  %.21199.i.i.epil = phi ptr [ %.21199.i.i.epil.init, %.epil.preheader ], [ %i.ur, %bb.l ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.uq = load i8, ptr %.0232200.i.i.epil, align 1, !tbaa !114
  store i8 %i.uq, ptr %.21199.i.i.epil, align 1, !tbaa !114
  %i.ur = getelementptr inbounds nuw i8, ptr %.21199.i.i.epil, i64 1 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.0232200.i.i.epil, i64 %i.bs
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter444
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge.i.i, label %bb.l, !llvm.loop !1959

..loopexit_crit_edge.i.i:                         ; preds = %bb.l, %..loopexit_crit_edge.i.i.unr-lcssa
  %.lcssa412 = phi ptr [ %i.uo, %..loopexit_crit_edge.i.i.unr-lcssa ], [ %i.ur, %bb.l ]
  %indvars.iv.next242.i.i = add nuw nsw i64 %indvars.iv241.i.i, 1 ; 2 uses
  %exitcond244.not.i.i = icmp eq i64 %indvars.iv.next242.i.i, %wide.trip.count.i.i
  br i1 %exitcond244.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit.i.i, !llvm.loop !1946

bb.m:                                             ; preds = %bb.h
  %i.ut = load i32, ptr %i.y, align 4, !tbaa !89  ; 9 uses
  %i.uu = load i32, ptr %i.z, align 8, !tbaa !80  ; 9 uses
  %i.uv = add nsw i32 %i.bc, -1
  %i.uw = mul nsw i32 %i.be, %i.uv
  %.neg.i.i = xor i32 %i.uw, -1
  %i.ux = add i32 %i.ut, %.neg.i.i
  %i.uy = sdiv i32 %i.ux, %i.bg                   ; 3 uses
  %i.uz = add nsw i32 %i.uy, 1                    ; 7 uses
  %i.va = mul nsw i32 %i.bd, %i.bc                ; 37 uses
  %i.vb = icmp eq i32 %i.uy, 0
  br i1 %i.vb, label %_ZN17FastDivider_epu32C2Ej.exit1130.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.vc = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.uy, i1 true) ; 3 uses
  %i.vd = sub nuw nsw i32 32, %i.vc
  %i.ve = icmp eq i32 %i.vc, 0
  %i.vf = shl nuw i32 1, %i.vd
  %i.vg = select i1 %i.ve, i32 0, i32 %i.vf
  %i.vh = sub i32 %i.vg, %i.uz
  %i.vi = zext i32 %i.vh to i64
  %i.vj = shl nuw i64 %i.vi, 32
  %i.vk = zext i32 %i.uz to i64
  %i.vl = udiv i64 %i.vj, %i.vk
  %i.vm = trunc i64 %i.vl to i32
  %i.vn = add i32 %i.vm, 1
  %i.vo = xor i32 %i.vc, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit1130.i.i

_ZN17FastDivider_epu32C2Ej.exit1130.i.i:          ; preds = %bb.n, %bb.m
  %.012.i1127.i.i = phi i32 [ %i.vo, %bb.n ], [ 0, %bb.m ]
  %.011.i1128.i.i = phi i32 [ 1, %bb.n ], [ 0, %bb.m ]
  %.0.i1129.i.i = phi i32 [ %i.vn, %bb.n ], [ 1, %bb.m ]
  %i.vp = insertelement <4 x i32> poison, i32 %.0.i1129.i.i, i64 0
  %i.vq = shufflevector <4 x i32> %i.vp, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i1128.i.i, i64 0 ; 2 uses
  %i.vs = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i1127.i.i, i64 0 ; 3 uses
  %i.vt = icmp sgt i32 %.sroa.speculated63, 7
  br i1 %i.vt, label %.lr.ph151.i.i, label %.preheader114.i.i

.lr.ph151.i.i:                                    ; preds = %_ZN17FastDivider_epu32C2Ej.exit1130.i.i
  %i.vu = bitcast <4 x i32> %i.vq to <2 x i64>
  %i.vv = and <2 x i64> %i.vu, splat (i64 4294967295) ; 4 uses
  %i.vw = shufflevector <4 x i32> %i.vr, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vx = insertelement <4 x i32> poison, i32 %i.uz, i64 0
  %i.vy = shufflevector <4 x i32> %i.vx, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vz = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %i.wa = shufflevector <4 x i32> %i.vz, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar.i = mul i32 %i.ut, %i.bh
  %i.wb = insertelement <4 x i32> poison, i32 %.scalar.i, i64 0
  %i.wc = shufflevector <4 x i32> %i.wb, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wd = icmp eq i32 %i.uu, 1                    ; 2 uses
  %i.we = icmp sgt i32 %.sroa.speculated, 1       ; 2 uses
  %i.wf = mul i32 %i.ut, %i.bf                    ; 7 uses
  %i.wg = trunc i64 %i.bs to i32                  ; 3 uses
  %i.wh = icmp ne i32 %i.uu, 8
  %i.wi = sdiv i32 %.sroa.speculated, 8           ; 2 uses
  %i.wj = icmp slt i32 %.sroa.speculated, 8
  %i.wk = sdiv i32 %i.ah, 8                       ; 2 uses
  %brmerge236.i.i = or i1 %i.wj, %i.wh            ; 2 uses
  %i.wl = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.wm = insertelement <2 x i32> %i.wl, i32 %i.va, i64 1
  %i.wn = insertelement <2 x i32> poison, i32 %i.wf, i64 0
  %i.wo = insertelement <2 x i32> %i.wn, i32 %i.wg, i64 1
  %i.wp = insertelement <2 x i32> poison, i32 %i.va, i64 0
  %i.wq = shufflevector <2 x i32> %i.wp, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.wr = insertelement <2 x i32> poison, i32 %i.bc, i64 0 ; 2 uses
  %i.ws = shufflevector <2 x i32> %i.wr, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.wt = insertelement <2 x i32> %i.wr, i32 %i.va, i64 1 ; 2 uses
  %i.wu = insertelement <2 x i32> poison, i32 %i.wf, i64 0
  %i.wv = insertelement <2 x i32> %i.wu, i32 %i.wg, i64 1 ; 2 uses
  %i.ww = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.wx = insertelement <2 x i32> %i.ww, i32 %i.va, i64 1
  %i.wy = insertelement <2 x i32> poison, i32 %i.wf, i64 0
  %i.wz = insertelement <2 x i32> %i.wy, i32 %i.wg, i64 1
  %i.xa = insertelement <2 x i32> poison, i32 %i.va, i64 0
  %i.xb = shufflevector <2 x i32> %i.xa, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.xc = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.xd = shufflevector <2 x i32> %i.xc, <2 x i32> poison, <2 x i32> zeroinitializer
  %17 = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %18 = shufflevector <2 x i64> %17, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.o

.preheader114.i.i:                                ; preds = %.loopexit116.i.i, %_ZN17FastDivider_epu32C2Ej.exit1130.i.i
  %.01096.lcssa.i.i = phi i32 [ 0, %_ZN17FastDivider_epu32C2Ej.exit1130.i.i ], [ %i.ann, %.loopexit116.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.val.i, %_ZN17FastDivider_epu32C2Ej.exit1130.i.i ], [ %.10.i.i, %.loopexit116.i.i ] ; 2 uses
  %i.xe = or disjoint i32 %.01096.lcssa.i.i, 3
  %i.xf = icmp slt i32 %i.xe, %.sroa.speculated63
  br i1 %i.xf, label %.lr.ph182.i.i, label %.preheader103.i.i

.lr.ph182.i.i:                                    ; preds = %.preheader114.i.i
  %i.xg = bitcast <4 x i32> %i.vq to <2 x i64>
  %i.xh = and <2 x i64> %i.xg, splat (i64 4294967295) ; 2 uses
  %i.xi = shufflevector <4 x i32> %i.vr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.xj = insertelement <4 x i32> poison, i32 %i.uz, i64 0
  %i.xk = shufflevector <4 x i32> %i.xj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.xl = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %i.xm = shufflevector <4 x i32> %i.xl, <4 x i32> poison, <4 x i32> zeroinitializer
  %.scalar.i.i = mul i32 %i.ut, %i.bh
  %i.xn = insertelement <4 x i32> poison, i32 %.scalar.i.i, i64 0
  %i.xo = shufflevector <4 x i32> %i.xn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.xp = icmp eq i32 %i.uu, 1                    ; 2 uses
  %i.xq = icmp sgt i32 %.sroa.speculated, 1       ; 2 uses
  %i.xr = mul i32 %i.ut, %i.bf                    ; 7 uses
  %i.xs = trunc i64 %i.bs to i32                  ; 3 uses
  %i.xt = icmp ne i32 %i.uu, 8
  %i.xu = sdiv i32 %.sroa.speculated, 8           ; 2 uses
  %i.xv = icmp slt i32 %.sroa.speculated, 8
  %i.xw = sdiv i32 %i.ah, 8                       ; 2 uses
  %brmerge242.i.i = or i1 %i.xv, %i.xt            ; 2 uses
  %i.xx = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.xy = insertelement <2 x i32> %i.xx, i32 %i.va, i64 1
  %i.xz = insertelement <2 x i32> poison, i32 %i.xr, i64 0
  %i.ya = insertelement <2 x i32> %i.xz, i32 %i.xs, i64 1
  %i.yb = insertelement <2 x i32> poison, i32 %i.va, i64 0
  %i.yc = shufflevector <2 x i32> %i.yb, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.yd = insertelement <2 x i32> poison, i32 %i.bc, i64 0 ; 2 uses
  %i.ye = shufflevector <2 x i32> %i.yd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.yf = insertelement <2 x i32> %i.yd, i32 %i.va, i64 1 ; 2 uses
  %i.yg = insertelement <2 x i32> poison, i32 %i.xr, i64 0
  %i.yh = insertelement <2 x i32> %i.yg, i32 %i.xs, i64 1 ; 2 uses
  %i.yi = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.yj = insertelement <2 x i32> %i.yi, i32 %i.va, i64 1
  %i.yk = insertelement <2 x i32> poison, i32 %i.xr, i64 0
  %i.yl = insertelement <2 x i32> %i.yk, i32 %i.xs, i64 1
  %i.ym = insertelement <2 x i32> poison, i32 %i.va, i64 0
  %i.yn = shufflevector <2 x i32> %i.ym, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.yo = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.yp = shufflevector <2 x i32> %i.yo, <2 x i32> poison, <2 x i32> zeroinitializer
  %19 = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %20 = shufflevector <2 x i64> %19, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.u

bb.o:                                             ; preds = %.loopexit116.i.i, %.lr.ph151.i.i
  %.0150.i.i = phi ptr [ %.val.i, %.lr.ph151.i.i ], [ %.10.i.i, %.loopexit116.i.i ] ; 8 uses
  %.01096149.i.i = phi i32 [ 0, %.lr.ph151.i.i ], [ %i.ann, %.loopexit116.i.i ] ; 2 uses
  %i.yq = add nsw i32 %.01096149.i.i, %i.af
  %i.yr = insertelement <4 x i32> poison, i32 %i.yq, i64 0
  %i.ys = shufflevector <4 x i32> %i.yr, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.yt = add <4 x i32> %i.ys, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.yu = bitcast <4 x i32> %i.yt to <2 x i64>
  %i.yv = add <4 x i32> %i.ys, <i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.yw = bitcast <4 x i32> %i.yv to <2 x i64>
  %i.yx = bitcast <4 x i32> %i.yt to <2 x i64>
  %i.yy = and <2 x i64> %i.yx, splat (i64 4294967295)
  %i.yz = mul nuw <2 x i64> %i.yy, %i.vv
  %i.za = lshr <2 x i64> %i.yz, splat (i64 32)
  %i.zb = lshr <2 x i64> %i.yu, splat (i64 32)
  %i.zc = mul nuw <2 x i64> %i.zb, %i.vv
  %i.zd = bitcast <2 x i64> %i.za to <8 x i16>
  %i.ze = bitcast <2 x i64> %i.zc to <8 x i16>
  %i.zf = shufflevector <8 x i16> %i.zd, <8 x i16> %i.ze, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.zg = bitcast <8 x i16> %i.zf to <4 x i32>    ; 2 uses
  %i.zh = sub <4 x i32> %i.yt, %i.zg
  %i.zi = lshr <4 x i32> %i.zh, %i.vw
  %i.zj = add <4 x i32> %i.zi, %i.zg
  %i.zk = call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.zj, <4 x i32> %i.vs) ; 2 uses
  %i.zl = bitcast <4 x i32> %i.yv to <2 x i64>
  %i.zm = and <2 x i64> %i.zl, splat (i64 4294967295)
  %i.zn = mul nuw <2 x i64> %i.zm, %i.vv
  %i.zo = lshr <2 x i64> %i.zn, splat (i64 32)
  %i.zp = lshr <2 x i64> %i.yw, splat (i64 32)
  %i.zq = mul nuw <2 x i64> %i.zp, %i.vv
  %i.zr = bitcast <2 x i64> %i.zo to <8 x i16>
  %i.zs = bitcast <2 x i64> %i.zq to <8 x i16>
  %i.zt = shufflevector <8 x i16> %i.zr, <8 x i16> %i.zs, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.zu = bitcast <8 x i16> %i.zt to <4 x i32>    ; 2 uses
  %i.zv = sub <4 x i32> %i.yv, %i.zu
  %i.zw = lshr <4 x i32> %i.zv, %i.vw
  %i.zx = add <4 x i32> %i.zw, %i.zu
  %i.zy = call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.zx, <4 x i32> %i.vs) ; 2 uses
  %i.zz = mul <4 x i32> %i.zk, %i.vy
  %i.aaa = sub <4 x i32> %i.yt, %i.zz
  %i.aab = mul <4 x i32> %i.zy, %i.vy
  %i.aac = sub <4 x i32> %i.yv, %i.aab
  %i.aad = mul <4 x i32> %i.aaa, %i.wa            ; 2 uses
  %i.aae = mul <4 x i32> %i.aac, %i.wa
  %i.aaf = mul <4 x i32> %i.zk, %i.wc             ; 3 uses
  %i.aag = mul <4 x i32> %i.zy, %i.wc             ; 2 uses
  %i.aah = add <4 x i32> %i.aad, %i.aaf           ; 4 uses
  %i.aai = add <4 x i32> %i.aae, %i.aag           ; 4 uses
  %shift354 = shufflevector <4 x i32> %i.aag, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.aaj = icmp eq <4 x i32> %i.aaf, %shift354
  %i.aak = extractelement <4 x i1> %i.aaj, i64 0
  %or.cond.i.i = and i1 %i.bp, %i.aak
  br i1 %or.cond.i.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %foldExtExtBinop = add nsw <4 x i32> %i.aad, %i.aaf
  %i.aal = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 3 uses
  br i1 %i.wd, label %.preheader119.i82.i, label %.loopexit118.i.i

.preheader119.i82.i:                              ; preds = %bb.p
  br i1 %i.we, label %.lr.ph138.i.i, label %.preheader117.i.i

.lr.ph138.i.i:                                    ; preds = %.preheader119.i82.i
  %i.aam = sext i32 %i.aal to i64                 ; 2 uses
  br label %bb.q

.preheader117.i.i:                                ; preds = %bb.q, %.preheader119.i82.i
  %.01100.lcssa.i.i = phi i32 [ 0, %.preheader119.i82.i ], [ %i.aby, %bb.q ] ; 2 uses
  %.1.lcssa.i.i = phi ptr [ %.0150.i.i, %.preheader119.i82.i ], [ %i.abx, %bb.q ] ; 2 uses
  %i.aan = icmp slt i32 %.01100.lcssa.i.i, %.sroa.speculated
  br i1 %i.aan, label %.lr.ph143.i83.i, label %.loopexit116.i.i

.lr.ph143.i83.i:                                  ; preds = %.preheader117.i.i
  %i.aao = sext i32 %i.aal to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph138.i.i
  %.1137.i.i = phi ptr [ %.0150.i.i, %.lr.ph138.i.i ], [ %i.abx, %bb.q ] ; 2 uses
  %.01100136.i.i = phi i32 [ 0, %.lr.ph138.i.i ], [ %i.aby, %bb.q ] ; 2 uses
  %i.aap = add nsw i32 %.01100136.i.i, %i.ah      ; 2 uses
  %i.aaq = add nsw i32 %i.aap, 1
  %i.aar = insertelement <2 x i32> poison, i32 %i.aap, i64 0
  %i.aas = insertelement <2 x i32> %i.aar, i32 %i.aaq, i64 1
  %.frozen = freeze <2 x i32> %i.aas              ; 2 uses
  %.frozen514.a = freeze <2 x i32> %i.xb          ; 2 uses
  %i.aat = sdiv <2 x i32> %.frozen, %.frozen514.a ; 2 uses
  %i.aau = mul <2 x i32> %i.aat, %.frozen514.a
  %.decomposed = sub <2 x i32> %.frozen, %i.aau   ; 3 uses
  %i.aav = extractelement <2 x i32> %.decomposed, i64 0
  %i.aaw = sdiv i32 %i.aav, %i.bc
  %i.aax = extractelement <2 x i32> %.decomposed, i64 1
  %i.aay = sdiv i32 %i.aax, %i.bc
  %i.aaz = srem <2 x i32> %.decomposed, %i.xd     ; 2 uses
  %i.aba = mul i32 %i.aaw, %i.wf
  %21 = extractelement <2 x i32> %i.aaz, i64 0
  %22 = mul nsw i32 %21, %i.be
  %i.abb = add nsw i32 %22, %i.aba
  %i.abc = sext i32 %i.abb to i64
  %23 = sext <2 x i32> %i.aat to <2 x i64>
  %24 = mul <2 x i64> %18, %23                    ; 2 uses
  %i.abd = mul i32 %i.aay, %i.wf
  %i.abe = extractelement <2 x i32> %i.aaz, i64 1
  %25 = mul nsw i32 %i.abe, %i.be
  %i.abf = add nsw i32 %25, %i.abd
  %i.abg = sext i32 %i.abf to i64
  %i.abh = load ptr, ptr %9, align 8, !tbaa !37   ; 2 uses
  %i.abi = extractelement <2 x i64> %24, i64 0
  %i.abj = getelementptr i8, ptr %i.abh, i64 %i.abi
  %i.abk = getelementptr i8, ptr %i.abj, i64 %i.aam
  %i.abl = getelementptr i8, ptr %i.abk, i64 %i.abc
  %i.abm = load i64, ptr %i.abl, align 1, !tbaa !114
  %i.abn = insertelement <2 x i64> poison, i64 %i.abm, i64 0
  %i.abo = extractelement <2 x i64> %24, i64 1
  %i.abp = getelementptr i8, ptr %i.abh, i64 %i.abo
  %i.abq = getelementptr i8, ptr %i.abp, i64 %i.aam
  %i.abr = getelementptr i8, ptr %i.abq, i64 %i.abg
  %i.abs = load i64, ptr %i.abr, align 1, !tbaa !114
  %i.abt = insertelement <2 x i64> poison, i64 %i.abs, i64 0
  %i.abu = bitcast <2 x i64> %i.abn to <16 x i8>
  %i.abv = bitcast <2 x i64> %i.abt to <16 x i8>
  %i.abw = shufflevector <16 x i8> %i.abu, <16 x i8> %i.abv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.abw, ptr %.1137.i.i, align 1, !tbaa !114
  %i.abx = getelementptr inbounds nuw i8, ptr %.1137.i.i, i64 16 ; 2 uses
  %i.aby = add nuw nsw i32 %.01100136.i.i, 2      ; 3 uses
  %i.abz = or disjoint i32 %i.aby, 1
  %i.aca = icmp slt i32 %i.abz, %.sroa.speculated
  br i1 %i.aca, label %bb.q, label %.preheader117.i.i, !llvm.loop !1960

bb.r:                                             ; preds = %bb.r, %.lr.ph143.i83.i
  %.2142.i.i = phi ptr [ %.1.lcssa.i.i, %.lr.ph143.i83.i ], [ %i.acr, %bb.r ] ; 2 uses
  %.11101141.i.i = phi i32 [ %.01100.lcssa.i.i, %.lr.ph143.i83.i ], [ %i.acs, %bb.r ] ; 2 uses
  %i.acb = add nsw i32 %.11101141.i.i, %i.ah      ; 2 uses
  %i.acc = sdiv i32 %i.acb, %i.va
  %i.acd = srem i32 %i.acb, %i.va                 ; 2 uses
  %i.ace = sdiv i32 %i.acd, %i.bc
  %i.acf = srem i32 %i.acd, %i.bc
  %i.acg = sext i32 %i.acc to i64
  %i.ach = mul i64 %i.bs, %i.acg
  %i.aci = mul i32 %i.ace, %i.wf
  %i.acj = mul nsw i32 %i.acf, %i.be
  %i.ack = add nsw i32 %i.acj, %i.aci
  %i.acl = sext i32 %i.ack to i64
  %i.acm = load ptr, ptr %9, align 8, !tbaa !37
  %i.acn = getelementptr i8, ptr %i.acm, i64 %i.ach
  %i.aco = getelementptr i8, ptr %i.acn, i64 %i.aao
  %i.acp = getelementptr i8, ptr %i.aco, i64 %i.acl
  %i.acq = load i64, ptr %i.acp, align 1, !tbaa !114
  store i64 %i.acq, ptr %.2142.i.i, align 1, !tbaa !114
  %i.acr = getelementptr inbounds nuw i8, ptr %.2142.i.i, i64 8 ; 2 uses
  %i.acs = add nuw nsw i32 %.11101141.i.i, 1      ; 2 uses
  %exitcond285.not.i.i = icmp eq i32 %i.acs, %.sroa.speculated
  br i1 %exitcond285.not.i.i, label %.loopexit116.i.i, label %bb.r, !llvm.loop !1961

.loopexit118.i.i:                                 ; preds = %bb.p
  br i1 %brmerge236.i.i, label %.loopexit116.i.i, label %.lr.ph147.i81.i

.lr.ph147.i81.i:                                  ; preds = %.loopexit118.i.i
  %i.act = sext i32 %i.aal to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph147.i81.i
  %.4146.i.i = phi ptr [ %.0150.i.i, %.lr.ph147.i81.i ], [ %i.aeg, %bb.s ] ; 5 uses
  %.01102145.i.i = phi i32 [ 0, %.lr.ph147.i81.i ], [ %i.aeh, %bb.s ] ; 2 uses
  %i.acu = add nsw i32 %.01102145.i.i, %i.wk      ; 2 uses
  %i.acv = sdiv i32 %i.acu, %i.va
  %i.acw = srem i32 %i.acu, %i.va                 ; 2 uses
  %i.acx = sdiv i32 %i.acw, %i.bc
  %i.acy = srem i32 %i.acw, %i.bc
  %i.acz = sext i32 %i.acv to i64
  %i.ada = mul i64 %i.bs, %i.acz
  %i.adb = add i64 %i.ada, %i.act
  %i.adc = mul i32 %i.acx, %i.wf
  %i.add = mul nsw i32 %i.acy, %i.be
  %i.ade = add nsw i32 %i.add, %i.adc
  %i.adf = sext i32 %i.ade to i64
  %i.adg = add i64 %i.adb, %i.adf
  %i.adh = shl i64 %i.adg, 3
  %i.adi = load ptr, ptr %9, align 8, !tbaa !37
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 %i.adh ; 4 uses
  %i.adk = load <8 x i16>, ptr %i.adj, align 1, !tbaa !114 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adj, i64 16
  %i.adm = load <8 x i16>, ptr %i.adl, align 1, !tbaa !114 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adj, i64 32
  %i.ado = load <8 x i16>, ptr %i.adn, align 1, !tbaa !114 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adj, i64 48
  %i.adq = load <8 x i16>, ptr %i.adp, align 1, !tbaa !114 ; 2 uses
  %i.adr = shufflevector <8 x i16> %i.adk, <8 x i16> %i.adm, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.ads = bitcast <8 x i16> %i.adr to <2 x i64>  ; 2 uses
  %i.adt = shufflevector <8 x i16> %i.ado, <8 x i16> %i.adq, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.adu = bitcast <8 x i16> %i.adt to <2 x i64>  ; 2 uses
  %i.adv = shufflevector <8 x i16> %i.adk, <8 x i16> %i.adm, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.adw = bitcast <8 x i16> %i.adv to <2 x i64>  ; 2 uses
  %i.adx = shufflevector <8 x i16> %i.ado, <8 x i16> %i.adq, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.ady = bitcast <8 x i16> %i.adx to <2 x i64>  ; 2 uses
  %i.adz = shufflevector <2 x i64> %i.ads, <2 x i64> %i.adu, <2 x i32> <i32 0, i32 2>
  %i.aea = shufflevector <2 x i64> %i.ads, <2 x i64> %i.adu, <2 x i32> <i32 1, i32 3>
  %i.aeb = shufflevector <2 x i64> %i.adw, <2 x i64> %i.ady, <2 x i32> <i32 0, i32 2>
  %i.aec = shufflevector <2 x i64> %i.adw, <2 x i64> %i.ady, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.adz, ptr %.4146.i.i, align 1, !tbaa !114
  %i.aed = getelementptr inbounds nuw i8, ptr %.4146.i.i, i64 16
  store <2 x i64> %i.aea, ptr %i.aed, align 1, !tbaa !114
  %i.aee = getelementptr inbounds nuw i8, ptr %.4146.i.i, i64 32
  store <2 x i64> %i.aeb, ptr %i.aee, align 1, !tbaa !114
  %i.aef = getelementptr inbounds nuw i8, ptr %.4146.i.i, i64 48
  store <2 x i64> %i.aec, ptr %i.aef, align 1, !tbaa !114
  %i.aeg = getelementptr inbounds nuw i8, ptr %.4146.i.i, i64 64 ; 2 uses
  %i.aeh = add nuw nsw i32 %.01102145.i.i, 1      ; 2 uses
  %exitcond286.not.i.i = icmp eq i32 %i.aeh, %i.wi
  br i1 %exitcond286.not.i.i, label %.loopexit116.i.i, label %bb.s, !llvm.loop !1962

bb.t:                                             ; preds = %bb.o
  br i1 %i.wd, label %.preheader124.i.i, label %.loopexit123.i.i

.preheader124.i.i:                                ; preds = %bb.t
  br i1 %i.we, label %.lr.ph.i80.i, label %.preheader122.i77.i

.preheader122.i77.i:                              ; preds = %.lr.ph.i80.i, %.preheader124.i.i
  %.01103.lcssa.i.i = phi i32 [ 0, %.preheader124.i.i ], [ %i.aid, %.lr.ph.i80.i ] ; 2 uses
  %.6.lcssa.i78.i = phi ptr [ %.0150.i.i, %.preheader124.i.i ], [ %i.aic, %.lr.ph.i80.i ] ; 2 uses
  %i.aei = icmp slt i32 %.01103.lcssa.i.i, %.sroa.speculated
  br i1 %i.aei, label %.lr.ph130.i.i, label %.loopexit116.i.i

.lr.ph.i80.i:                                     ; preds = %.preheader124.i.i, %.lr.ph.i80.i
  %.6126.i.i = phi ptr [ %i.aic, %.lr.ph.i80.i ], [ %.0150.i.i, %.preheader124.i.i ] ; 17 uses
  %.01103125.i.i = phi i32 [ %i.aid, %.lr.ph.i80.i ], [ 0, %.preheader124.i.i ] ; 2 uses
  %i.aej = add nsw i32 %.01103125.i.i, %i.ah      ; 3 uses
  %i.aek = add nsw i32 %i.aej, 1                  ; 2 uses
  %i.ael = insertelement <2 x i32> poison, i32 %i.aej, i64 0
  %i.aem = insertelement <2 x i32> %i.ael, i32 %i.aek, i64 1
  %i.aen = srem <2 x i32> %i.aem, %i.wq           ; 3 uses
  %i.aeo = srem <2 x i32> %i.aen, %i.ws           ; 2 uses
  %26 = extractelement <2 x i32> %i.aeo, i64 0
  %27 = mul nsw i32 %26, %i.be
  %28 = extractelement <2 x i32> %i.aeo, i64 1
  %29 = mul nsw i32 %28, %i.be
  %i.aep = insertelement <2 x i32> %i.aen, i32 %i.aej, i64 1
  %i.aeq = sdiv <2 x i32> %i.aep, %i.wt
  %i.aer = mul <2 x i32> %i.aeq, %i.wv
  %30 = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.aer)
  %31 = add i32 %30, %27
  %32 = insertelement <4 x i32> poison, i32 %31, i64 0
  %i.aes = shufflevector <4 x i32> %32, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aet = add <4 x i32> %i.aes, %i.aah           ; 4 uses
  %i.aeu = add <4 x i32> %i.aes, %i.aai           ; 4 uses
  %i.aev = shufflevector <2 x i32> %i.aen, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.aew = insertelement <2 x i32> %i.aev, i32 %i.aek, i64 1
  %i.aex = sdiv <2 x i32> %i.aew, %i.wt
  %i.aey = mul <2 x i32> %i.aex, %i.wv
  %33 = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.aey)
  %34 = add i32 %33, %29
  %35 = insertelement <4 x i32> poison, i32 %34, i64 0
  %36 = shufflevector <4 x i32> %35, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aez = add <4 x i32> %36, %i.aah              ; 4 uses
  %i.afa = add <4 x i32> %36, %i.aai              ; 4 uses
  %i.afb = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.038.0.vec.extract.i.i = extractelement <4 x i32> %i.aet, i64 0
  %i.afc = sext i32 %.sroa.038.0.vec.extract.i.i to i64
  %i.afd = getelementptr inbounds i8, ptr %i.afb, i64 %i.afc
  %i.afe = load i8, ptr %i.afd, align 1, !tbaa !114
  store i8 %i.afe, ptr %.6126.i.i, align 1, !tbaa !114
  %i.aff = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.12.32.vec.extract.i.i = extractelement <4 x i32> %i.aez, i64 0
  %i.afg = sext i32 %.sroa.12.32.vec.extract.i.i to i64
  %i.afh = getelementptr inbounds i8, ptr %i.aff, i64 %i.afg
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !114
  %i.afj = getelementptr inbounds nuw i8, ptr %.6126.i.i, i64 1
  store i8 %i.afi, ptr %i.afj, align 1, !tbaa !114
  %i.afk = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.038.4.vec.extract.i.i = extractelement <4 x i32> %i.aet, i64 1
  %i.afl = sext i32 %.sroa.038.4.vec.extract.i.i to i64
  %i.afm = getelementptr inbounds i8, ptr %i.afk, i64 %i.afl
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !114
  %i.afo = getelementptr inbounds nuw i8, ptr %.6126.i.i, i64 2
  store i8 %i.afn, ptr %i.afo, align 1, !tbaa !114
  %i.afp = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.12.36.vec.extract.i.i = extractelement <4 x i32> %i.aez, i64 1
  %i.afq = sext i32 %.sroa.12.36.vec.extract.i.i to i64
  %i.afr = getelementptr inbounds i8, ptr %i.afp, i64 %i.afq
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !114
  %i.aft = getelementptr inbounds nuw i8, ptr %.6126.i.i, i64 3
  store i8 %i.afs, ptr %i.aft, align 1, !tbaa !114
  %i.afu = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.038.8.vec.extract.i.i = extractelement <4 x i32> %i.aet, i64 2
  %i.afv = sext i32 %.sroa.038.8.vec.extract.i.i to i64
  %i.afw = getelementptr inbounds i8, ptr %i.afu, i64 %i.afv
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !114
  %i.afy = getelementptr inbounds nuw i8, ptr %.6126.i.i, i64 4
  store i8 %i.afx, ptr %i.afy, align 1, !tbaa !114
  %i.afz = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.12.40.vec.extract.i.i = extractelement <4 x i32> %i.aez, i64 2
  %i.aga = sext i32 %.sroa.12.40.vec.extract.i.i to i64
  %i.agb = getelementptr inbounds i8, ptr %i.afz, i64 %i.aga
  %i.agc = load i8, ptr %i.agb, align 1, !tbaa !114
  %i.agd = getelementptr inbounds nuw i8, ptr %.6126.i.i, i64 5
  store i8 %i.agc, ptr %i.agd, align 1, !tbaa !114
  %i.age = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.038.12.vec.extract.i.i = extractelement <4 x i32> %i.aet, i64 3
  %i.agf = sext i32 %.sroa.038.12.vec.extract.i.i to i64
  %i.agg = getelementptr inbounds i8, ptr %i.age, i64 %i.agf
  %i.agh = load i8, ptr %i.agg, align 1, !tbaa !114
  %i.agi = getelementptr inbounds nuw i8, ptr %.6126.i.i, i64 6
  store i8 %i.agh, ptr %i.agi, align 1, !tbaa !114
  %i.agj = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.12.44.vec.extract.i.i = extractelement <4 x i32> %i.aez, i64 3
  %i.agk = sext i32 %.sroa.12.44.vec.extract.i.i to i64
  %i.agl = getelementptr inbounds i8, ptr %i.agj, i64 %i.agk
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !114
  %i.agn = getelementptr inbounds nuw i8, ptr %.6126.i.i, i64 7
  store i8 %i.agm, ptr %i.agn, align 1, !tbaa !114
  %i.ago = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.740.16.vec.extract.i.i = extractelement <4 x i32> %i.aeu, i64 0
  %i.agp = sext i32 %.sroa.740.16.vec.extract.i.i to i64
  %i.agq = getelementptr inbounds i8, ptr %i.ago, i64 %i.agp
  %i.agr = load i8, ptr %i.agq, align 1, !tbaa !114
  %i.ags = getelementptr inbounds nuw i8, ptr %.6126.i.i, i64 8
  store i8 %i.agr, ptr %i.ags, align 1, !tbaa !114
  %i.agt = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.17.48.vec.extract.i.i = extractelement <4 x i32> %i.afa, i64 0
  %i.agu = sext i32 %.sroa.17.48.vec.extract.i.i to i64
  %i.agv = getelementptr inbounds i8, ptr %i.agt, i64 %i.agu
  %i.agw = load i8, ptr %i.agv, align 1, !tbaa !114
  %i.agx = getelementptr inbounds nuw i8, ptr %.6126.i.i, i64 9
  store i8 %i.agw, ptr %i.agx, align 1, !tbaa !114
  %i.agy = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.740.20.vec.extract.i.i = extractelement <4 x i32> %i.aeu, i64 1
  %i.agz = sext i32 %.sroa.740.20.vec.extract.i.i to i64
  %i.aha = getelementptr inbounds i8, ptr %i.agy, i64 %i.agz
  %i.ahb = load i8, ptr %i.aha, align 1, !tbaa !114
  %i.ahc = getelementptr inbounds nuw i8, ptr %.6126.i.i, i64 10
  store i8 %i.ahb, ptr %i.ahc, align 1, !tbaa !114
  %i.ahd = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.17.52.vec.extract.i.i = extractelement <4 x i32> %i.afa, i64 1
  %i.ahe = sext i32 %.sroa.17.52.vec.extract.i.i to i64
  %i.ahf = getelementptr inbounds i8, ptr %i.ahd, i64 %i.ahe
  %i.ahg = load i8, ptr %i.ahf, align 1, !tbaa !114
  %i.ahh = getelementptr inbounds nuw i8, ptr %.6126.i.i, i64 11
  store i8 %i.ahg, ptr %i.ahh, align 1, !tbaa !114
  %i.ahi = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.740.24.vec.extract.i.i = extractelement <4 x i32> %i.aeu, i64 2
  %i.ahj = sext i32 %.sroa.740.24.vec.extract.i.i to i64
  %i.ahk = getelementptr inbounds i8, ptr %i.ahi, i64 %i.ahj
  %i.ahl = load i8, ptr %i.ahk, align 1, !tbaa !114
  %i.ahm = getelementptr inbounds nuw i8, ptr %.6126.i.i, i64 12
  store i8 %i.ahl, ptr %i.ahm, align 1, !tbaa !114
  %i.ahn = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.17.56.vec.extract.i.i = extractelement <4 x i32> %i.afa, i64 2
  %i.aho = sext i32 %.sroa.17.56.vec.extract.i.i to i64
  %i.ahp = getelementptr inbounds i8, ptr %i.ahn, i64 %i.aho
  %i.ahq = load i8, ptr %i.ahp, align 1, !tbaa !114
  %i.ahr = getelementptr inbounds nuw i8, ptr %.6126.i.i, i64 13
  store i8 %i.ahq, ptr %i.ahr, align 1, !tbaa !114
  %i.ahs = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.740.28.vec.extract.i.i = extractelement <4 x i32> %i.aeu, i64 3
  %i.aht = sext i32 %.sroa.740.28.vec.extract.i.i to i64
  %i.ahu = getelementptr inbounds i8, ptr %i.ahs, i64 %i.aht
  %i.ahv = load i8, ptr %i.ahu, align 1, !tbaa !114
  %i.ahw = getelementptr inbounds nuw i8, ptr %.6126.i.i, i64 14
  store i8 %i.ahv, ptr %i.ahw, align 1, !tbaa !114
  %i.ahx = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.17.60.vec.extract.i.i = extractelement <4 x i32> %i.afa, i64 3
  %i.ahy = sext i32 %.sroa.17.60.vec.extract.i.i to i64
  %i.ahz = getelementptr inbounds i8, ptr %i.ahx, i64 %i.ahy
  %i.aia = load i8, ptr %i.ahz, align 1, !tbaa !114
  %i.aib = getelementptr inbounds nuw i8, ptr %.6126.i.i, i64 15
  store i8 %i.aia, ptr %i.aib, align 1, !tbaa !114
  %i.aic = getelementptr inbounds nuw i8, ptr %.6126.i.i, i64 16 ; 2 uses
  %i.aid = add nuw nsw i32 %.01103125.i.i, 2      ; 3 uses
  %i.aie = or disjoint i32 %i.aid, 1
  %i.aif = icmp slt i32 %i.aie, %.sroa.speculated
  br i1 %i.aif, label %.lr.ph.i80.i, label %.preheader122.i77.i, !llvm.loop !1963

.lr.ph130.i.i:                                    ; preds = %.preheader122.i77.i, %.lr.ph130.i.i
  %.7129.i.i = phi ptr [ %i.akh, %.lr.ph130.i.i ], [ %.6.lcssa.i78.i, %.preheader122.i77.i ] ; 9 uses
  %.11104128.i.i = phi i32 [ %i.aki, %.lr.ph130.i.i ], [ %.01103.lcssa.i.i, %.preheader122.i77.i ] ; 2 uses
  %i.aig = add nsw i32 %.11104128.i.i, %i.ah      ; 2 uses
  %i.aih = srem i32 %i.aig, %i.va                 ; 2 uses
  %i.aii = srem i32 %i.aih, %i.bc
  %i.aij = mul nsw i32 %i.aii, %i.be
  %i.aik = insertelement <2 x i32> poison, i32 %i.aih, i64 0
  %i.ail = insertelement <2 x i32> %i.aik, i32 %i.aig, i64 1
  %i.aim = sdiv <2 x i32> %i.ail, %i.wx
  %i.ain = mul <2 x i32> %i.aim, %i.wz
  %i.aio = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.ain)
  %i.aip = add i32 %i.aio, %i.aij
  %i.aiq = insertelement <4 x i32> poison, i32 %i.aip, i64 0
  %i.air = shufflevector <4 x i32> %i.aiq, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ais = add <4 x i32> %i.air, %i.aah           ; 4 uses
  %i.ait = add <4 x i32> %i.air, %i.aai           ; 4 uses
  %i.aiu = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.034.0.vec.extract.i.i = extractelement <4 x i32> %i.ais, i64 0
  %i.aiv = sext i32 %.sroa.034.0.vec.extract.i.i to i64
  %i.aiw = getelementptr inbounds i8, ptr %i.aiu, i64 %i.aiv
  %i.aix = load i8, ptr %i.aiw, align 1, !tbaa !114
  store i8 %i.aix, ptr %.7129.i.i, align 1, !tbaa !114
  %i.aiy = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.034.4.vec.extract.i.i = extractelement <4 x i32> %i.ais, i64 1
  %i.aiz = sext i32 %.sroa.034.4.vec.extract.i.i to i64
  %i.aja = getelementptr inbounds i8, ptr %i.aiy, i64 %i.aiz
  %i.ajb = load i8, ptr %i.aja, align 1, !tbaa !114
  %i.ajc = getelementptr inbounds nuw i8, ptr %.7129.i.i, i64 1
  store i8 %i.ajb, ptr %i.ajc, align 1, !tbaa !114
  %i.ajd = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.034.8.vec.extract.i.i = extractelement <4 x i32> %i.ais, i64 2
  %i.aje = sext i32 %.sroa.034.8.vec.extract.i.i to i64
  %i.ajf = getelementptr inbounds i8, ptr %i.ajd, i64 %i.aje
  %i.ajg = load i8, ptr %i.ajf, align 1, !tbaa !114
  %i.ajh = getelementptr inbounds nuw i8, ptr %.7129.i.i, i64 2
  store i8 %i.ajg, ptr %i.ajh, align 1, !tbaa !114
  %i.aji = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.034.12.vec.extract.i.i = extractelement <4 x i32> %i.ais, i64 3
  %i.ajj = sext i32 %.sroa.034.12.vec.extract.i.i to i64
  %i.ajk = getelementptr inbounds i8, ptr %i.aji, i64 %i.ajj
  %i.ajl = load i8, ptr %i.ajk, align 1, !tbaa !114
  %i.ajm = getelementptr inbounds nuw i8, ptr %.7129.i.i, i64 3
  store i8 %i.ajl, ptr %i.ajm, align 1, !tbaa !114
  %i.ajn = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.736.16.vec.extract.i.i = extractelement <4 x i32> %i.ait, i64 0
  %i.ajo = sext i32 %.sroa.736.16.vec.extract.i.i to i64
  %i.ajp = getelementptr inbounds i8, ptr %i.ajn, i64 %i.ajo
  %i.ajq = load i8, ptr %i.ajp, align 1, !tbaa !114
  %i.ajr = getelementptr inbounds nuw i8, ptr %.7129.i.i, i64 4
  store i8 %i.ajq, ptr %i.ajr, align 1, !tbaa !114
  %i.ajs = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.736.20.vec.extract.i.i = extractelement <4 x i32> %i.ait, i64 1
  %i.ajt = sext i32 %.sroa.736.20.vec.extract.i.i to i64
  %i.aju = getelementptr inbounds i8, ptr %i.ajs, i64 %i.ajt
  %i.ajv = load i8, ptr %i.aju, align 1, !tbaa !114
  %i.ajw = getelementptr inbounds nuw i8, ptr %.7129.i.i, i64 5
  store i8 %i.ajv, ptr %i.ajw, align 1, !tbaa !114
  %i.ajx = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.736.24.vec.extract.i.i = extractelement <4 x i32> %i.ait, i64 2
  %i.ajy = sext i32 %.sroa.736.24.vec.extract.i.i to i64
  %i.ajz = getelementptr inbounds i8, ptr %i.ajx, i64 %i.ajy
  %i.aka = load i8, ptr %i.ajz, align 1, !tbaa !114
  %i.akb = getelementptr inbounds nuw i8, ptr %.7129.i.i, i64 6
  store i8 %i.aka, ptr %i.akb, align 1, !tbaa !114
  %i.akc = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.736.28.vec.extract.i.i = extractelement <4 x i32> %i.ait, i64 3
  %i.akd = sext i32 %.sroa.736.28.vec.extract.i.i to i64
  %i.ake = getelementptr inbounds i8, ptr %i.akc, i64 %i.akd
  %i.akf = load i8, ptr %i.ake, align 1, !tbaa !114
  %i.akg = getelementptr inbounds nuw i8, ptr %.7129.i.i, i64 7
  store i8 %i.akf, ptr %i.akg, align 1, !tbaa !114
  %i.akh = getelementptr inbounds nuw i8, ptr %.7129.i.i, i64 8 ; 2 uses
  %i.aki = add nuw nsw i32 %.11104128.i.i, 1      ; 2 uses
  %exitcond.not.i79.i = icmp eq i32 %i.aki, %.sroa.speculated
  br i1 %exitcond.not.i79.i, label %.loopexit116.i.i, label %.lr.ph130.i.i, !llvm.loop !1964

.loopexit123.i.i:                                 ; preds = %bb.t
  br i1 %brmerge236.i.i, label %.loopexit116.i.i, label %.lr.ph134.i.i

.lr.ph134.i.i:                                    ; preds = %.loopexit123.i.i, %.lr.ph134.i.i
  %.9133.i.i = phi ptr [ %i.anl, %.lr.ph134.i.i ], [ %.0150.i.i, %.loopexit123.i.i ] ; 5 uses
  %.01105132.i.i = phi i32 [ %i.anm, %.lr.ph134.i.i ], [ 0, %.loopexit123.i.i ] ; 2 uses
  %i.akj = add nsw i32 %.01105132.i.i, %i.wk      ; 2 uses
  %i.akk = srem i32 %i.akj, %i.va                 ; 2 uses
  %i.akl = srem i32 %i.akk, %i.bc
  %i.akm = mul nsw i32 %i.akl, %i.be
  %i.akn = insertelement <2 x i32> poison, i32 %i.akk, i64 0
  %i.ako = insertelement <2 x i32> %i.akn, i32 %i.akj, i64 1
  %i.akp = sdiv <2 x i32> %i.ako, %i.wm
  %i.akq = mul <2 x i32> %i.akp, %i.wo
  %i.akr = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.akq)
  %i.aks = add i32 %i.akr, %i.akm
  %i.akt = insertelement <4 x i32> poison, i32 %i.aks, i64 0
  %i.aku = shufflevector <4 x i32> %i.akt, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.akv = add <4 x i32> %i.aku, %i.aah
  %i.akw = add <4 x i32> %i.aku, %i.aai
  %i.akx = shl <4 x i32> %i.akv, splat (i32 3)    ; 4 uses
  %i.aky = shl <4 x i32> %i.akw, splat (i32 3)    ; 4 uses
  %i.akz = load ptr, ptr %9, align 8, !tbaa !37   ; 8 uses
  %.sroa.024.0.vec.extract.i.i = extractelement <4 x i32> %i.akx, i64 0
  %i.ala = sext i32 %.sroa.024.0.vec.extract.i.i to i64
  %i.alb = getelementptr inbounds i8, ptr %i.akz, i64 %i.ala
  %i.alc = load i64, ptr %i.alb, align 1, !tbaa !114
  %i.ald = insertelement <2 x i64> poison, i64 %i.alc, i64 0
  %.sroa.024.4.vec.extract.i.i = extractelement <4 x i32> %i.akx, i64 1
  %i.ale = sext i32 %.sroa.024.4.vec.extract.i.i to i64
  %i.alf = getelementptr inbounds i8, ptr %i.akz, i64 %i.ale
  %i.alg = load i64, ptr %i.alf, align 1, !tbaa !114
  %i.alh = insertelement <2 x i64> poison, i64 %i.alg, i64 0
  %.sroa.024.8.vec.extract.i.i = extractelement <4 x i32> %i.akx, i64 2
  %i.ali = sext i32 %.sroa.024.8.vec.extract.i.i to i64
  %i.alj = getelementptr inbounds i8, ptr %i.akz, i64 %i.ali
  %i.alk = load i64, ptr %i.alj, align 1, !tbaa !114
  %i.all = insertelement <2 x i64> poison, i64 %i.alk, i64 0
  %.sroa.024.12.vec.extract.i.i = extractelement <4 x i32> %i.akx, i64 3
  %i.alm = sext i32 %.sroa.024.12.vec.extract.i.i to i64
  %i.aln = getelementptr inbounds i8, ptr %i.akz, i64 %i.alm
  %i.alo = load i64, ptr %i.aln, align 1, !tbaa !114
  %i.alp = insertelement <2 x i64> poison, i64 %i.alo, i64 0
  %.sroa.726.16.vec.extract.i.i = extractelement <4 x i32> %i.aky, i64 0
  %i.alq = sext i32 %.sroa.726.16.vec.extract.i.i to i64
  %i.alr = getelementptr inbounds i8, ptr %i.akz, i64 %i.alq
  %i.als = load i64, ptr %i.alr, align 1, !tbaa !114
  %i.alt = insertelement <2 x i64> poison, i64 %i.als, i64 0
  %.sroa.726.20.vec.extract.i.i = extractelement <4 x i32> %i.aky, i64 1
  %i.alu = sext i32 %.sroa.726.20.vec.extract.i.i to i64
  %i.alv = getelementptr inbounds i8, ptr %i.akz, i64 %i.alu
  %i.alw = load i64, ptr %i.alv, align 1, !tbaa !114
  %i.alx = insertelement <2 x i64> poison, i64 %i.alw, i64 0
  %.sroa.726.24.vec.extract.i.i = extractelement <4 x i32> %i.aky, i64 2
  %i.aly = sext i32 %.sroa.726.24.vec.extract.i.i to i64
  %i.alz = getelementptr inbounds i8, ptr %i.akz, i64 %i.aly
  %i.ama = load i64, ptr %i.alz, align 1, !tbaa !114
  %i.amb = insertelement <2 x i64> poison, i64 %i.ama, i64 0
  %.sroa.726.28.vec.extract.i.i = extractelement <4 x i32> %i.aky, i64 3
  %i.amc = sext i32 %.sroa.726.28.vec.extract.i.i to i64
  %i.amd = getelementptr inbounds i8, ptr %i.akz, i64 %i.amc
  %i.ame = load i64, ptr %i.amd, align 1, !tbaa !114
  %i.amf = insertelement <2 x i64> poison, i64 %i.ame, i64 0
  %i.amg = bitcast <2 x i64> %i.ald to <8 x i16>
  %i.amh = bitcast <2 x i64> %i.alh to <8 x i16>
  %i.ami = shufflevector <8 x i16> %i.amg, <8 x i16> %i.amh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.amj = bitcast <2 x i64> %i.all to <8 x i16>
  %i.amk = bitcast <2 x i64> %i.alp to <8 x i16>
  %i.aml = shufflevector <8 x i16> %i.amj, <8 x i16> %i.amk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.amm = bitcast <2 x i64> %i.alt to <8 x i16>
  %i.amn = bitcast <2 x i64> %i.alx to <8 x i16>
  %i.amo = shufflevector <8 x i16> %i.amm, <8 x i16> %i.amn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.amp = bitcast <2 x i64> %i.amb to <8 x i16>
  %i.amq = bitcast <2 x i64> %i.amf to <8 x i16>
  %i.amr = shufflevector <8 x i16> %i.amp, <8 x i16> %i.amq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ams = bitcast <8 x i16> %i.ami to <4 x i32>  ; 2 uses
  %i.amt = bitcast <8 x i16> %i.aml to <4 x i32>  ; 2 uses
  %i.amu = shufflevector <4 x i32> %i.ams, <4 x i32> %i.amt, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.amv = bitcast <4 x i32> %i.amu to <2 x i64>  ; 2 uses
  %i.amw = shufflevector <4 x i32> %i.ams, <4 x i32> %i.amt, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.amx = bitcast <4 x i32> %i.amw to <2 x i64>  ; 2 uses
  %i.amy = bitcast <8 x i16> %i.amo to <4 x i32>  ; 2 uses
  %i.amz = bitcast <8 x i16> %i.amr to <4 x i32>  ; 2 uses
  %i.ana = shufflevector <4 x i32> %i.amy, <4 x i32> %i.amz, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.anb = bitcast <4 x i32> %i.ana to <2 x i64>  ; 2 uses
  %i.anc = shufflevector <4 x i32> %i.amy, <4 x i32> %i.amz, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.and = bitcast <4 x i32> %i.anc to <2 x i64>  ; 2 uses
  %i.ane = shufflevector <2 x i64> %i.amv, <2 x i64> %i.anb, <2 x i32> <i32 0, i32 2>
  %i.anf = shufflevector <2 x i64> %i.amv, <2 x i64> %i.anb, <2 x i32> <i32 1, i32 3>
  %i.ang = shufflevector <2 x i64> %i.amx, <2 x i64> %i.and, <2 x i32> <i32 0, i32 2>
  %i.anh = shufflevector <2 x i64> %i.amx, <2 x i64> %i.and, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.ane, ptr %.9133.i.i, align 1, !tbaa !114
  %i.ani = getelementptr inbounds nuw i8, ptr %.9133.i.i, i64 16
  store <2 x i64> %i.anf, ptr %i.ani, align 1, !tbaa !114
  %i.anj = getelementptr inbounds nuw i8, ptr %.9133.i.i, i64 32
  store <2 x i64> %i.ang, ptr %i.anj, align 1, !tbaa !114
  %i.ank = getelementptr inbounds nuw i8, ptr %.9133.i.i, i64 48
  store <2 x i64> %i.anh, ptr %i.ank, align 1, !tbaa !114
  %i.anl = getelementptr inbounds nuw i8, ptr %.9133.i.i, i64 64 ; 2 uses
  %i.anm = add nuw nsw i32 %.01105132.i.i, 1      ; 2 uses
  %exitcond284.not.i.i = icmp eq i32 %i.anm, %i.wi
  br i1 %exitcond284.not.i.i, label %.loopexit116.i.i, label %.lr.ph134.i.i, !llvm.loop !1965

.loopexit116.i.i:                                 ; preds = %.lr.ph134.i.i, %.lr.ph130.i.i, %bb.s, %bb.r, %.loopexit123.i.i, %.preheader122.i77.i, %.loopexit118.i.i, %.preheader117.i.i
  %.10.i.i = phi ptr [ %.0150.i.i, %.loopexit123.i.i ], [ %.1.lcssa.i.i, %.preheader117.i.i ], [ %.0150.i.i, %.loopexit118.i.i ], [ %i.aeg, %bb.s ], [ %i.acr, %bb.r ], [ %.6.lcssa.i78.i, %.preheader122.i77.i ], [ %i.akh, %.lr.ph130.i.i ], [ %i.anl, %.lr.ph134.i.i ] ; 2 uses
  %i.ann = add nuw nsw i32 %.01096149.i.i, 8      ; 3 uses
  %i.ano = or disjoint i32 %i.ann, 7
  %i.anp = icmp slt i32 %i.ano, %.sroa.speculated63
  br i1 %i.anp, label %bb.o, label %.preheader114.i.i, !llvm.loop !1966

.preheader103.i.i:                                ; preds = %.loopexit105.i.i, %.preheader114.i.i
  %.11097.lcssa.i.i = phi i32 [ %.01096.lcssa.i.i, %.preheader114.i.i ], [ %i.azd, %.loopexit105.i.i ] ; 3 uses
  %.11.lcssa.i.i = phi ptr [ %.0.lcssa.i.i, %.preheader114.i.i ], [ %.21.i.i, %.loopexit105.i.i ] ; 2 uses
  %i.anq = or disjoint i32 %.11097.lcssa.i.i, 1
  %i.anr = icmp slt i32 %i.anq, %.sroa.speculated63
  br i1 %i.anr, label %.lr.ph214.i.i, label %.preheader92.i.i

.lr.ph214.i.i:                                    ; preds = %.preheader103.i.i
  %i.ans = mul i32 %i.ut, %i.bh
  %i.ant = icmp eq i32 %i.uu, 1                   ; 2 uses
  %i.anu = icmp sgt i32 %.sroa.speculated, 1      ; 2 uses
  %i.anv = mul i32 %i.ut, %i.bf                   ; 7 uses
  %i.anw = trunc i64 %i.bs to i32
  %i.anx = icmp eq i32 %i.uu, 8
  %i.any = sdiv i32 %.sroa.speculated, 8          ; 2 uses
  %i.anz = sdiv i32 %i.ah, 8                      ; 2 uses
  %i.aoa = icmp ne i32 %i.uu, 8
  %i.aob = icmp slt i32 %.sroa.speculated, 8
  %i.aoc = icmp sgt i32 %.sroa.speculated, 7
  %or.cond246.i.i = and i1 %i.aoc, %i.anx
  %brmerge245.i.i = or i1 %i.aob, %i.aoa
  %i.aod = insertelement <2 x i32> poison, i32 %i.bg, i64 0
  %i.aoe = shufflevector <2 x i32> %i.aod, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aof = insertelement <2 x i32> poison, i32 %i.uz, i64 0
  %i.aog = shufflevector <2 x i32> %i.aof, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aoh = insertelement <2 x i32> poison, i32 %i.ans, i64 0
  %i.aoi = shufflevector <2 x i32> %i.aoh, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aoj = insertelement <2 x i32> poison, i32 %i.va, i64 0
  %i.aok = shufflevector <2 x i32> %i.aoj, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aol = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.aom = shufflevector <2 x i32> %i.aol, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aon = insertelement <2 x i32> poison, i32 %i.anv, i64 0
  %i.aoo = shufflevector <2 x i32> %i.aon, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aop = insertelement <2 x i32> poison, i32 %i.be, i64 0
  %i.aoq = shufflevector <2 x i32> %i.aop, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aor = insertelement <2 x i32> poison, i32 %i.anw, i64 0
  %i.aos = shufflevector <2 x i32> %i.aor, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aot = insertelement <2 x i32> poison, i32 %i.va, i64 0
  %i.aou = shufflevector <2 x i32> %i.aot, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aov = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.aow = shufflevector <2 x i32> %i.aov, <2 x i32> poison, <2 x i32> zeroinitializer
  %37 = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %38 = shufflevector <2 x i64> %37, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.aa

bb.u:                                             ; preds = %.loopexit105.i.i, %.lr.ph182.i.i
  %.11181.i.i = phi ptr [ %.0.lcssa.i.i, %.lr.ph182.i.i ], [ %.21.i.i, %.loopexit105.i.i ] ; 8 uses
  %.11097180.i.i = phi i32 [ %.01096.lcssa.i.i, %.lr.ph182.i.i ], [ %i.azd, %.loopexit105.i.i ] ; 2 uses
  %i.aox = add nsw i32 %.11097180.i.i, %i.af
  %i.aoy = insertelement <4 x i32> poison, i32 %i.aox, i64 0
  %i.aoz = shufflevector <4 x i32> %i.aoy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.apa = add <4 x i32> %i.aoz, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.apb = bitcast <4 x i32> %i.apa to <2 x i64>
  %i.apc = bitcast <4 x i32> %i.apa to <2 x i64>
  %i.apd = and <2 x i64> %i.apc, splat (i64 4294967295)
  %i.ape = mul nuw <2 x i64> %i.apd, %i.xh
  %i.apf = lshr <2 x i64> %i.ape, splat (i64 32)
  %i.apg = lshr <2 x i64> %i.apb, splat (i64 32)
  %i.aph = mul nuw <2 x i64> %i.apg, %i.xh
  %i.api = bitcast <2 x i64> %i.apf to <8 x i16>
  %i.apj = bitcast <2 x i64> %i.aph to <8 x i16>
  %i.apk = shufflevector <8 x i16> %i.api, <8 x i16> %i.apj, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.apl = bitcast <8 x i16> %i.apk to <4 x i32>  ; 2 uses
  %i.apm = sub <4 x i32> %i.apa, %i.apl
  %i.apn = lshr <4 x i32> %i.apm, %i.xi
  %i.apo = add <4 x i32> %i.apn, %i.apl
  %i.app = call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.apo, <4 x i32> %i.vs) ; 2 uses
  %i.apq = mul <4 x i32> %i.app, %i.xk
  %i.apr = sub <4 x i32> %i.apa, %i.apq
  %i.aps = mul <4 x i32> %i.apr, %i.xm            ; 2 uses
  %i.apt = mul <4 x i32> %i.app, %i.xo            ; 4 uses
  %i.apu = add <4 x i32> %i.aps, %i.apt           ; 4 uses
  %shift353 = shufflevector <4 x i32> %i.apt, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.apv = icmp eq <4 x i32> %i.apt, %shift353
  %i.apw = extractelement <4 x i1> %i.apv, i64 0
  %or.cond3.i.i = and i1 %i.bp, %i.apw
  br i1 %or.cond3.i.i, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %foldExtExtBinop333 = add nsw <4 x i32> %i.aps, %i.apt
  %i.apx = extractelement <4 x i32> %foldExtExtBinop333, i64 0 ; 3 uses
  br i1 %i.xp, label %.preheader108.i.i, label %.loopexit107.i.i

.preheader108.i.i:                                ; preds = %bb.v
  br i1 %i.xq, label %.lr.ph169.i76.i, label %.preheader106.i.i

.lr.ph169.i76.i:                                  ; preds = %.preheader108.i.i
  %i.apy = sext i32 %i.apx to i64                 ; 2 uses
  br label %bb.w

.preheader106.i.i:                                ; preds = %bb.w, %.preheader108.i.i
  %.01106.lcssa.i.i = phi i32 [ 0, %.preheader108.i.i ], [ %i.arm, %bb.w ] ; 2 uses
  %.12.lcssa.i75.i = phi ptr [ %.11181.i.i, %.preheader108.i.i ], [ %i.arl, %bb.w ] ; 2 uses
  %i.apz = icmp slt i32 %.01106.lcssa.i.i, %.sroa.speculated
  br i1 %i.apz, label %.lr.ph174.i.i, label %.loopexit105.i.i

.lr.ph174.i.i:                                    ; preds = %.preheader106.i.i
  %i.aqa = sext i32 %i.apx to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.w, %.lr.ph169.i76.i
  %.12168.i.i = phi ptr [ %.11181.i.i, %.lr.ph169.i76.i ], [ %i.arl, %bb.w ] ; 2 uses
  %.01106167.i.i = phi i32 [ 0, %.lr.ph169.i76.i ], [ %i.arm, %bb.w ] ; 2 uses
  %i.aqb = add nsw i32 %.01106167.i.i, %i.ah      ; 2 uses
  %i.aqc = add nsw i32 %i.aqb, 1
  %i.aqd = insertelement <2 x i32> poison, i32 %i.aqb, i64 0
  %i.aqe = insertelement <2 x i32> %i.aqd, i32 %i.aqc, i64 1
  %.frozen515 = freeze <2 x i32> %i.aqe           ; 2 uses
  %.frozen516.a = freeze <2 x i32> %i.yn          ; 2 uses
  %i.aqf = sdiv <2 x i32> %.frozen515, %.frozen516.a ; 2 uses
  %i.aqg = mul <2 x i32> %i.aqf, %.frozen516.a
  %.decomposed517.a = sub <2 x i32> %.frozen515, %i.aqg ; 3 uses
  %i.aqh = extractelement <2 x i32> %.decomposed517.a, i64 0
  %i.aqi = sdiv i32 %i.aqh, %i.bc
  %i.aqj = extractelement <2 x i32> %.decomposed517.a, i64 1
  %i.aqk = sdiv i32 %i.aqj, %i.bc
  %i.aql = srem <2 x i32> %.decomposed517.a, %i.yp ; 2 uses
  %i.aqm = mul i32 %i.aqi, %i.xr
  %39 = extractelement <2 x i32> %i.aql, i64 0
  %40 = mul nsw i32 %39, %i.be
  %i.aqn = add nsw i32 %40, %i.aqm
  %i.aqo = sext i32 %i.aqn to i64
  %41 = sext <2 x i32> %i.aqf to <2 x i64>
  %42 = mul <2 x i64> %20, %41                    ; 2 uses
  %i.aqp = mul i32 %i.aqk, %i.xr
  %i.aqq = extractelement <2 x i32> %i.aql, i64 1
  %43 = mul nsw i32 %i.aqq, %i.be
  %i.aqr = add nsw i32 %43, %i.aqp
  %i.aqs = sext i32 %i.aqr to i64
  %i.aqt = load ptr, ptr %9, align 8, !tbaa !37   ; 2 uses
  %i.aqu = extractelement <2 x i64> %42, i64 0
  %i.aqv = getelementptr i8, ptr %i.aqt, i64 %i.aqu
  %i.aqw = getelementptr i8, ptr %i.aqv, i64 %i.apy
  %i.aqx = getelementptr i8, ptr %i.aqw, i64 %i.aqo
  %i.aqy = load i64, ptr %i.aqx, align 1, !tbaa !114
  %i.aqz = insertelement <2 x i64> poison, i64 %i.aqy, i64 0
  %i.ara = extractelement <2 x i64> %42, i64 1
  %i.arb = getelementptr i8, ptr %i.aqt, i64 %i.ara
  %i.arc = getelementptr i8, ptr %i.arb, i64 %i.apy
  %i.ard = getelementptr i8, ptr %i.arc, i64 %i.aqs
  %i.are = load i64, ptr %i.ard, align 1, !tbaa !114
  %i.arf = insertelement <2 x i64> poison, i64 %i.are, i64 0
  %i.arg = bitcast <2 x i64> %i.aqz to <16 x i8>
  %i.arh = bitcast <2 x i64> %i.arf to <16 x i8>
  %i.ari = shufflevector <16 x i8> %i.arg, <16 x i8> %i.arh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.arj = bitcast <16 x i8> %i.ari to <2 x i64>
  %i.ark = extractelement <2 x i64> %i.arj, i64 0
  store i64 %i.ark, ptr %.12168.i.i, align 1, !tbaa !114
  %i.arl = getelementptr inbounds nuw i8, ptr %.12168.i.i, i64 8 ; 2 uses
  %i.arm = add nuw nsw i32 %.01106167.i.i, 2      ; 3 uses
  %i.arn = or disjoint i32 %i.arm, 1
  %i.aro = icmp slt i32 %i.arn, %.sroa.speculated
  br i1 %i.aro, label %bb.w, label %.preheader106.i.i, !llvm.loop !1967

bb.x:                                             ; preds = %bb.x, %.lr.ph174.i.i
  %.13173.i.i = phi ptr [ %.12.lcssa.i75.i, %.lr.ph174.i.i ], [ %i.asu, %bb.x ] ; 5 uses
  %.11107172.i.i = phi i32 [ %.01106.lcssa.i.i, %.lr.ph174.i.i ], [ %i.asv, %bb.x ] ; 2 uses
  %i.arp = add nsw i32 %.11107172.i.i, %i.ah      ; 2 uses
  %i.arq = sdiv i32 %i.arp, %i.va
  %i.arr = srem i32 %i.arp, %i.va                 ; 2 uses
  %i.ars = sdiv i32 %i.arr, %i.bc
  %i.art = srem i32 %i.arr, %i.bc
  %i.aru = sext i32 %i.arq to i64
  %i.arv = mul i64 %i.bs, %i.aru
  %i.arw = add i64 %i.arv, %i.aqa
  %i.arx = mul i32 %i.ars, %i.xr
  %i.ary = mul nsw i32 %i.art, %i.be
  %i.arz = add nsw i32 %i.ary, %i.arx
  %i.asa = sext i32 %i.arz to i64
  %i.asb = add i64 %i.arw, %i.asa                 ; 4 uses
  %i.asc = load ptr, ptr %9, align 8, !tbaa !37
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asc, i64 %i.asb
  %i.ase = load i8, ptr %i.asd, align 1, !tbaa !114
  store i8 %i.ase, ptr %.13173.i.i, align 1, !tbaa !114
  %i.asf = load ptr, ptr %9, align 8, !tbaa !37
  %i.asg = getelementptr i8, ptr %i.asf, i64 %i.asb
  %i.ash = getelementptr i8, ptr %i.asg, i64 1
  %i.asi = load i8, ptr %i.ash, align 1, !tbaa !114
  %i.asj = getelementptr inbounds nuw i8, ptr %.13173.i.i, i64 1
  store i8 %i.asi, ptr %i.asj, align 1, !tbaa !114
  %i.ask = load ptr, ptr %9, align 8, !tbaa !37
  %i.asl = getelementptr i8, ptr %i.ask, i64 %i.asb
  %i.asm = getelementptr i8, ptr %i.asl, i64 2
  %i.asn = load i8, ptr %i.asm, align 1, !tbaa !114
  %i.aso = getelementptr inbounds nuw i8, ptr %.13173.i.i, i64 2
  store i8 %i.asn, ptr %i.aso, align 1, !tbaa !114
  %i.asp = load ptr, ptr %9, align 8, !tbaa !37
  %i.asq = getelementptr i8, ptr %i.asp, i64 %i.asb
  %i.asr = getelementptr i8, ptr %i.asq, i64 3
  %i.ass = load i8, ptr %i.asr, align 1, !tbaa !114
  %i.ast = getelementptr inbounds nuw i8, ptr %.13173.i.i, i64 3
  store i8 %i.ass, ptr %i.ast, align 1, !tbaa !114
  %i.asu = getelementptr inbounds nuw i8, ptr %.13173.i.i, i64 4 ; 2 uses
  %i.asv = add nuw nsw i32 %.11107172.i.i, 1      ; 2 uses
  %exitcond289.not.i.i = icmp eq i32 %i.asv, %.sroa.speculated
  br i1 %exitcond289.not.i.i, label %.loopexit105.i.i, label %bb.x, !llvm.loop !1968

.loopexit107.i.i:                                 ; preds = %bb.v
  br i1 %brmerge242.i.i, label %.loopexit105.i.i, label %.lr.ph178.i.i

.lr.ph178.i.i:                                    ; preds = %.loopexit107.i.i
  %i.asw = sext i32 %i.apx to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph178.i.i
  %.15177.i74.i = phi ptr [ %.11181.i.i, %.lr.ph178.i.i ], [ %i.att, %bb.y ] ; 3 uses
  %.01108176.i.i = phi i32 [ 0, %.lr.ph178.i.i ], [ %i.atu, %bb.y ] ; 2 uses
  %i.asx = add nsw i32 %.01108176.i.i, %i.xw      ; 2 uses
  %i.asy = sdiv i32 %i.asx, %i.va
  %i.asz = srem i32 %i.asx, %i.va                 ; 2 uses
  %i.ata = sdiv i32 %i.asz, %i.bc
  %i.atb = srem i32 %i.asz, %i.bc
  %i.atc = sext i32 %i.asy to i64
  %i.atd = mul i64 %i.bs, %i.atc
  %i.ate = add i64 %i.atd, %i.asw
  %i.atf = mul i32 %i.ata, %i.xr
  %i.atg = mul nsw i32 %i.atb, %i.be
  %i.ath = add nsw i32 %i.atg, %i.atf
  %i.ati = sext i32 %i.ath to i64
  %i.atj = add i64 %i.ate, %i.ati
  %i.atk = shl i64 %i.atj, 3
  %i.atl = load ptr, ptr %9, align 8, !tbaa !37
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 %i.atk ; 2 uses
  %i.atn = load <8 x i16>, ptr %i.atm, align 1, !tbaa !114 ; 2 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atm, i64 16
  %i.atp = load <8 x i16>, ptr %i.ato, align 1, !tbaa !114 ; 2 uses
  %i.atq = shufflevector <8 x i16> %i.atn, <8 x i16> %i.atp, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.atr = shufflevector <8 x i16> %i.atn, <8 x i16> %i.atp, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.atq, ptr %.15177.i74.i, align 1, !tbaa !114
  %i.ats = getelementptr inbounds nuw i8, ptr %.15177.i74.i, i64 16
  store <8 x i16> %i.atr, ptr %i.ats, align 1, !tbaa !114
  %i.att = getelementptr inbounds nuw i8, ptr %.15177.i74.i, i64 32 ; 2 uses
  %i.atu = add nuw nsw i32 %.01108176.i.i, 1      ; 2 uses
  %exitcond290.not.i.i = icmp eq i32 %i.atu, %i.xu
  br i1 %exitcond290.not.i.i, label %.loopexit105.i.i, label %bb.y, !llvm.loop !1969

bb.z:                                             ; preds = %bb.u
  br i1 %i.xp, label %.preheader113.i.i, label %.loopexit112.i.i

.preheader113.i.i:                                ; preds = %bb.z
  br i1 %i.xq, label %.lr.ph156.i.i, label %.preheader111.i.i

.preheader111.i.i:                                ; preds = %.lr.ph156.i.i, %.preheader113.i.i
  %.01111.lcssa.i.i = phi i32 [ 0, %.preheader113.i.i ], [ %i.awa, %.lr.ph156.i.i ] ; 2 uses
  %.17.lcssa.i.i = phi ptr [ %.11181.i.i, %.preheader113.i.i ], [ %i.avz, %.lr.ph156.i.i ] ; 2 uses
  %i.atv = icmp slt i32 %.01111.lcssa.i.i, %.sroa.speculated
  br i1 %i.atv, label %.lr.ph161.i.i, label %.loopexit105.i.i

.lr.ph156.i.i:                                    ; preds = %.preheader113.i.i, %.lr.ph156.i.i
  %.17155.i.i = phi ptr [ %i.avz, %.lr.ph156.i.i ], [ %.11181.i.i, %.preheader113.i.i ] ; 9 uses
  %.01111154.i.i = phi i32 [ %i.awa, %.lr.ph156.i.i ], [ 0, %.preheader113.i.i ] ; 2 uses
  %i.atw = add nsw i32 %.01111154.i.i, %i.ah      ; 3 uses
  %i.atx = add nsw i32 %i.atw, 1                  ; 2 uses
  %i.aty = insertelement <2 x i32> poison, i32 %i.atw, i64 0
  %i.atz = insertelement <2 x i32> %i.aty, i32 %i.atx, i64 1
  %i.aua = srem <2 x i32> %i.atz, %i.yc           ; 3 uses
  %i.aub = srem <2 x i32> %i.aua, %i.ye           ; 2 uses
  %44 = extractelement <2 x i32> %i.aub, i64 0
  %45 = mul nsw i32 %44, %i.be
  %46 = extractelement <2 x i32> %i.aub, i64 1
  %47 = mul nsw i32 %46, %i.be
  %i.auc = insertelement <2 x i32> %i.aua, i32 %i.atw, i64 1
  %i.aud = sdiv <2 x i32> %i.auc, %i.yf
  %i.aue = mul <2 x i32> %i.aud, %i.yh
  %48 = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.aue)
  %49 = add i32 %48, %45
  %50 = insertelement <4 x i32> poison, i32 %49, i64 0
  %i.auf = shufflevector <4 x i32> %50, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aug = add <4 x i32> %i.auf, %i.apu           ; 4 uses
  %i.auh = shufflevector <2 x i32> %i.aua, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.aui = insertelement <2 x i32> %i.auh, i32 %i.atx, i64 1
  %i.auj = sdiv <2 x i32> %i.aui, %i.yf
  %i.auk = mul <2 x i32> %i.auj, %i.yh
  %51 = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.auk)
  %52 = add i32 %51, %47
  %53 = insertelement <4 x i32> poison, i32 %52, i64 0
  %54 = shufflevector <4 x i32> %53, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aul = add <4 x i32> %54, %i.apu              ; 4 uses
  %i.aum = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.05.0.vec.extract.i.i = extractelement <4 x i32> %i.aug, i64 0
  %i.aun = sext i32 %.sroa.05.0.vec.extract.i.i to i64
  %i.auo = getelementptr inbounds i8, ptr %i.aum, i64 %i.aun
  %i.aup = load i8, ptr %i.auo, align 1, !tbaa !114
  store i8 %i.aup, ptr %.17155.i.i, align 1, !tbaa !114
  %i.auq = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.7.16.vec.extract.i.i = extractelement <4 x i32> %i.aul, i64 0
  %i.aur = sext i32 %.sroa.7.16.vec.extract.i.i to i64
  %i.aus = getelementptr inbounds i8, ptr %i.auq, i64 %i.aur
  %i.aut = load i8, ptr %i.aus, align 1, !tbaa !114
  %i.auu = getelementptr inbounds nuw i8, ptr %.17155.i.i, i64 1
  store i8 %i.aut, ptr %i.auu, align 1, !tbaa !114
  %i.auv = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.05.4.vec.extract.i.i = extractelement <4 x i32> %i.aug, i64 1
  %i.auw = sext i32 %.sroa.05.4.vec.extract.i.i to i64
  %i.aux = getelementptr inbounds i8, ptr %i.auv, i64 %i.auw
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !114
  %i.auz = getelementptr inbounds nuw i8, ptr %.17155.i.i, i64 2
  store i8 %i.auy, ptr %i.auz, align 1, !tbaa !114
  %i.ava = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.7.20.vec.extract.i.i = extractelement <4 x i32> %i.aul, i64 1
  %i.avb = sext i32 %.sroa.7.20.vec.extract.i.i to i64
  %i.avc = getelementptr inbounds i8, ptr %i.ava, i64 %i.avb
  %i.avd = load i8, ptr %i.avc, align 1, !tbaa !114
  %i.ave = getelementptr inbounds nuw i8, ptr %.17155.i.i, i64 3
  store i8 %i.avd, ptr %i.ave, align 1, !tbaa !114
  %i.avf = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.05.8.vec.extract.i.i = extractelement <4 x i32> %i.aug, i64 2
  %i.avg = sext i32 %.sroa.05.8.vec.extract.i.i to i64
  %i.avh = getelementptr inbounds i8, ptr %i.avf, i64 %i.avg
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !114
  %i.avj = getelementptr inbounds nuw i8, ptr %.17155.i.i, i64 4
  store i8 %i.avi, ptr %i.avj, align 1, !tbaa !114
  %i.avk = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.7.24.vec.extract.i.i = extractelement <4 x i32> %i.aul, i64 2
  %i.avl = sext i32 %.sroa.7.24.vec.extract.i.i to i64
  %i.avm = getelementptr inbounds i8, ptr %i.avk, i64 %i.avl
  %i.avn = load i8, ptr %i.avm, align 1, !tbaa !114
  %i.avo = getelementptr inbounds nuw i8, ptr %.17155.i.i, i64 5
  store i8 %i.avn, ptr %i.avo, align 1, !tbaa !114
  %i.avp = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.05.12.vec.extract.i.i = extractelement <4 x i32> %i.aug, i64 3
  %i.avq = sext i32 %.sroa.05.12.vec.extract.i.i to i64
  %i.avr = getelementptr inbounds i8, ptr %i.avp, i64 %i.avq
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !114
  %i.avt = getelementptr inbounds nuw i8, ptr %.17155.i.i, i64 6
  store i8 %i.avs, ptr %i.avt, align 1, !tbaa !114
  %i.avu = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.7.28.vec.extract.i.i = extractelement <4 x i32> %i.aul, i64 3
  %i.avv = sext i32 %.sroa.7.28.vec.extract.i.i to i64
  %i.avw = getelementptr inbounds i8, ptr %i.avu, i64 %i.avv
  %i.avx = load i8, ptr %i.avw, align 1, !tbaa !114
  %i.avy = getelementptr inbounds nuw i8, ptr %.17155.i.i, i64 7
  store i8 %i.avx, ptr %i.avy, align 1, !tbaa !114
  %i.avz = getelementptr inbounds nuw i8, ptr %.17155.i.i, i64 8 ; 2 uses
  %i.awa = add nuw nsw i32 %.01111154.i.i, 2      ; 3 uses
  %i.awb = or disjoint i32 %i.awa, 1
  %i.awc = icmp slt i32 %i.awb, %.sroa.speculated
  br i1 %i.awc, label %.lr.ph156.i.i, label %.preheader111.i.i, !llvm.loop !1970

.lr.ph161.i.i:                                    ; preds = %.preheader111.i.i, %.lr.ph161.i.i
  %.18160.i.i = phi ptr [ %i.axj, %.lr.ph161.i.i ], [ %.17.lcssa.i.i, %.preheader111.i.i ] ; 5 uses
  %.11112159.i.i = phi i32 [ %i.axk, %.lr.ph161.i.i ], [ %.01111.lcssa.i.i, %.preheader111.i.i ] ; 2 uses
  %i.awd = add nsw i32 %.11112159.i.i, %i.ah      ; 2 uses
  %i.awe = srem i32 %i.awd, %i.va                 ; 2 uses
  %i.awf = srem i32 %i.awe, %i.bc
  %i.awg = mul nsw i32 %i.awf, %i.be
  %i.awh = insertelement <2 x i32> poison, i32 %i.awe, i64 0
  %i.awi = insertelement <2 x i32> %i.awh, i32 %i.awd, i64 1
  %i.awj = sdiv <2 x i32> %i.awi, %i.yj
  %i.awk = mul <2 x i32> %i.awj, %i.yl
  %i.awl = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.awk)
  %i.awm = add i32 %i.awl, %i.awg
  %i.awn = insertelement <4 x i32> poison, i32 %i.awm, i64 0
  %i.awo = shufflevector <4 x i32> %i.awn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.awp = add <4 x i32> %i.awo, %i.apu           ; 4 uses
  %i.awq = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.03.0.vec.extract.i.i = extractelement <4 x i32> %i.awp, i64 0
  %i.awr = sext i32 %.sroa.03.0.vec.extract.i.i to i64
  %i.aws = getelementptr inbounds i8, ptr %i.awq, i64 %i.awr
  %i.awt = load i8, ptr %i.aws, align 1, !tbaa !114
  store i8 %i.awt, ptr %.18160.i.i, align 1, !tbaa !114
  %i.awu = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.03.4.vec.extract.i.i = extractelement <4 x i32> %i.awp, i64 1
  %i.awv = sext i32 %.sroa.03.4.vec.extract.i.i to i64
  %i.aww = getelementptr inbounds i8, ptr %i.awu, i64 %i.awv
  %i.awx = load i8, ptr %i.aww, align 1, !tbaa !114
  %i.awy = getelementptr inbounds nuw i8, ptr %.18160.i.i, i64 1
  store i8 %i.awx, ptr %i.awy, align 1, !tbaa !114
  %i.awz = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.03.8.vec.extract.i.i = extractelement <4 x i32> %i.awp, i64 2
  %i.axa = sext i32 %.sroa.03.8.vec.extract.i.i to i64
  %i.axb = getelementptr inbounds i8, ptr %i.awz, i64 %i.axa
  %i.axc = load i8, ptr %i.axb, align 1, !tbaa !114
  %i.axd = getelementptr inbounds nuw i8, ptr %.18160.i.i, i64 2
  store i8 %i.axc, ptr %i.axd, align 1, !tbaa !114
  %i.axe = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.03.12.vec.extract.i.i = extractelement <4 x i32> %i.awp, i64 3
  %i.axf = sext i32 %.sroa.03.12.vec.extract.i.i to i64
  %i.axg = getelementptr inbounds i8, ptr %i.axe, i64 %i.axf
  %i.axh = load i8, ptr %i.axg, align 1, !tbaa !114
  %i.axi = getelementptr inbounds nuw i8, ptr %.18160.i.i, i64 3
  store i8 %i.axh, ptr %i.axi, align 1, !tbaa !114
  %i.axj = getelementptr inbounds nuw i8, ptr %.18160.i.i, i64 4 ; 2 uses
  %i.axk = add nuw nsw i32 %.11112159.i.i, 1      ; 2 uses
  %exitcond287.not.i.i = icmp eq i32 %i.axk, %.sroa.speculated
  br i1 %exitcond287.not.i.i, label %.loopexit105.i.i, label %.lr.ph161.i.i, !llvm.loop !1971

.loopexit112.i.i:                                 ; preds = %bb.z
  br i1 %brmerge242.i.i, label %.loopexit105.i.i, label %.lr.ph165.i73.i

.lr.ph165.i73.i:                                  ; preds = %.loopexit112.i.i, %.lr.ph165.i73.i
  %.20164.i.i = phi ptr [ %i.azb, %.lr.ph165.i73.i ], [ %.11181.i.i, %.loopexit112.i.i ] ; 3 uses
  %.01113163.i.i = phi i32 [ %i.azc, %.lr.ph165.i73.i ], [ 0, %.loopexit112.i.i ] ; 2 uses
  %i.axl = add nsw i32 %.01113163.i.i, %i.xw      ; 2 uses
  %i.axm = srem i32 %i.axl, %i.va                 ; 2 uses
  %i.axn = srem i32 %i.axm, %i.bc
  %i.axo = mul nsw i32 %i.axn, %i.be
  %i.axp = insertelement <2 x i32> poison, i32 %i.axm, i64 0
  %i.axq = insertelement <2 x i32> %i.axp, i32 %i.axl, i64 1
  %i.axr = sdiv <2 x i32> %i.axq, %i.xy
  %i.axs = mul <2 x i32> %i.axr, %i.ya
  %i.axt = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.axs)
  %i.axu = add i32 %i.axt, %i.axo
  %i.axv = insertelement <4 x i32> poison, i32 %i.axu, i64 0
  %i.axw = shufflevector <4 x i32> %i.axv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.axx = add <4 x i32> %i.axw, %i.apu
  %i.axy = shl <4 x i32> %i.axx, splat (i32 3)    ; 4 uses
  %i.axz = load ptr, ptr %9, align 8, !tbaa !37   ; 4 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <4 x i32> %i.axy, i64 0
  %i.aya = sext i32 %.sroa.0.0.vec.extract.i.i to i64
  %i.ayb = getelementptr inbounds i8, ptr %i.axz, i64 %i.aya
  %i.ayc = load i64, ptr %i.ayb, align 1, !tbaa !114
  %i.ayd = insertelement <2 x i64> poison, i64 %i.ayc, i64 0
  %.sroa.0.4.vec.extract.i.i = extractelement <4 x i32> %i.axy, i64 1
  %i.aye = sext i32 %.sroa.0.4.vec.extract.i.i to i64
  %i.ayf = getelementptr inbounds i8, ptr %i.axz, i64 %i.aye
  %i.ayg = load i64, ptr %i.ayf, align 1, !tbaa !114
  %i.ayh = insertelement <2 x i64> poison, i64 %i.ayg, i64 0
  %.sroa.0.8.vec.extract.i.i = extractelement <4 x i32> %i.axy, i64 2
  %i.ayi = sext i32 %.sroa.0.8.vec.extract.i.i to i64
  %i.ayj = getelementptr inbounds i8, ptr %i.axz, i64 %i.ayi
  %i.ayk = load i64, ptr %i.ayj, align 1, !tbaa !114
  %i.ayl = insertelement <2 x i64> poison, i64 %i.ayk, i64 0
  %.sroa.0.12.vec.extract.i.i = extractelement <4 x i32> %i.axy, i64 3
  %i.aym = sext i32 %.sroa.0.12.vec.extract.i.i to i64
  %i.ayn = getelementptr inbounds i8, ptr %i.axz, i64 %i.aym
  %i.ayo = load i64, ptr %i.ayn, align 1, !tbaa !114
  %i.ayp = insertelement <2 x i64> poison, i64 %i.ayo, i64 0
  %i.ayq = bitcast <2 x i64> %i.ayd to <8 x i16>
  %i.ayr = bitcast <2 x i64> %i.ayh to <8 x i16>
  %i.ays = shufflevector <8 x i16> %i.ayq, <8 x i16> %i.ayr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ayt = bitcast <2 x i64> %i.ayl to <8 x i16>
  %i.ayu = bitcast <2 x i64> %i.ayp to <8 x i16>
  %i.ayv = shufflevector <8 x i16> %i.ayt, <8 x i16> %i.ayu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ayw = bitcast <8 x i16> %i.ays to <4 x i32>  ; 2 uses
  %i.ayx = bitcast <8 x i16> %i.ayv to <4 x i32>  ; 2 uses
  %i.ayy = shufflevector <4 x i32> %i.ayw, <4 x i32> %i.ayx, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ayz = shufflevector <4 x i32> %i.ayw, <4 x i32> %i.ayx, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.ayy, ptr %.20164.i.i, align 1, !tbaa !114
  %i.aza = getelementptr inbounds nuw i8, ptr %.20164.i.i, i64 16
  store <4 x i32> %i.ayz, ptr %i.aza, align 1, !tbaa !114
  %i.azb = getelementptr inbounds nuw i8, ptr %.20164.i.i, i64 32 ; 2 uses
  %i.azc = add nuw nsw i32 %.01113163.i.i, 1      ; 2 uses
  %exitcond288.not.i.i = icmp eq i32 %i.azc, %i.xu
  br i1 %exitcond288.not.i.i, label %.loopexit105.i.i, label %.lr.ph165.i73.i, !llvm.loop !1972

.loopexit105.i.i:                                 ; preds = %.lr.ph165.i73.i, %.lr.ph161.i.i, %bb.y, %bb.x, %.loopexit112.i.i, %.preheader111.i.i, %.loopexit107.i.i, %.preheader106.i.i
  %.21.i.i = phi ptr [ %.11181.i.i, %.loopexit112.i.i ], [ %.12.lcssa.i75.i, %.preheader106.i.i ], [ %.11181.i.i, %.loopexit107.i.i ], [ %i.att, %bb.y ], [ %i.asu, %bb.x ], [ %.17.lcssa.i.i, %.preheader111.i.i ], [ %i.axj, %.lr.ph161.i.i ], [ %i.azb, %.lr.ph165.i73.i ] ; 2 uses
  %i.azd = add nuw nsw i32 %.11097180.i.i, 4      ; 3 uses
  %i.aze = or disjoint i32 %i.azd, 3
  %i.azf = icmp slt i32 %i.aze, %.sroa.speculated63
  br i1 %i.azf, label %bb.u, label %.preheader103.i.i, !llvm.loop !1973

.preheader92.i.i:                                 ; preds = %.loopexit94.i.i, %.preheader103.i.i
  %.21098.lcssa.i.i = phi i32 [ %.11097.lcssa.i.i, %.preheader103.i.i ], [ %i.bhi, %.loopexit94.i.i ] ; 2 uses
  %.22.lcssa.i.i = phi ptr [ %.11.lcssa.i.i, %.preheader103.i.i ], [ %.33.i.i, %.loopexit94.i.i ]
  %i.azg = icmp slt i32 %.21098.lcssa.i.i, %.sroa.speculated63
  br i1 %i.azg, label %.lr.ph232.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

.lr.ph232.i.i:                                    ; preds = %.preheader92.i.i
  %i.azh = mul i32 %i.ut, %i.bh
  %i.azi = icmp eq i32 %i.uu, 1
  %i.azj = icmp sgt i32 %.sroa.speculated, 1
  %i.azk = mul i32 %i.ut, %i.bf                   ; 4 uses
  %i.azl = icmp ne i32 %i.uu, 8
  %i.azm = lshr i32 %.sroa.speculated, 3
  %i.azn = icmp slt i32 %.sroa.speculated, 8
  %i.azo = sdiv i32 %i.ah, 8
  %brmerge249.i.i = or i1 %i.azn, %i.azl
  %i.azp = insertelement <2 x i32> poison, i32 %i.va, i64 0
  %i.azq = shufflevector <2 x i32> %i.azp, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.azr = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.azs = shufflevector <2 x i32> %i.azr, <2 x i32> poison, <2 x i32> zeroinitializer
  %55 = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %56 = shufflevector <2 x i64> %55, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.ai

bb.aa:                                            ; preds = %.loopexit94.i.i, %.lr.ph214.i.i
  %.22213.i.i = phi ptr [ %.11.lcssa.i.i, %.lr.ph214.i.i ], [ %.33.i.i, %.loopexit94.i.i ] ; 8 uses
  %.21098212.i.i = phi i32 [ %.11097.lcssa.i.i, %.lr.ph214.i.i ], [ %i.bhi, %.loopexit94.i.i ] ; 2 uses
  %i.azt = add nsw i32 %.21098212.i.i, %i.af      ; 2 uses
  %i.azu = add nsw i32 %i.azt, 1
  %i.azv = insertelement <2 x i32> poison, i32 %i.azt, i64 0
  %i.azw = insertelement <2 x i32> %i.azv, i32 %i.azu, i64 1
  %.frozen518.a = freeze <2 x i32> %i.azw         ; 2 uses
  %.frozen519.a = freeze <2 x i32> %i.aog         ; 2 uses
  %i.azx = sdiv <2 x i32> %.frozen518.a, %.frozen519.a ; 2 uses
  %i.azy = mul <2 x i32> %i.azx, %.frozen519.a
  %.decomposed520.a = sub <2 x i32> %.frozen518.a, %i.azy
  %i.azz = mul nsw <2 x i32> %.decomposed520.a, %i.aoe
  %i.baa = mul <2 x i32> %i.azx, %i.aoi           ; 3 uses
  %i.bab = add nsw <2 x i32> %i.azz, %i.baa       ; 8 uses
  %shift352 = shufflevector <2 x i32> %i.baa, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.bac = icmp eq <2 x i32> %i.baa, %shift352
  %i.bad = extractelement <2 x i1> %i.bac, i64 0
  %or.cond5.i.i = and i1 %i.bp, %i.bad
  br i1 %or.cond5.i.i, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.ant, label %.preheader97.i.i, label %.loopexit96.i.i

.preheader97.i.i:                                 ; preds = %bb.ab
  br i1 %i.anu, label %.lr.ph201.i.i, label %.preheader95.i.i

.lr.ph201.i.i:                                    ; preds = %.preheader97.i.i
  %i.bae = extractelement <2 x i32> %i.bab, i64 0
  %i.baf = sext i32 %i.bae to i64                 ; 2 uses
  br label %bb.ac

.preheader95.i.i:                                 ; preds = %bb.ac, %.preheader97.i.i
  %.01114.lcssa.i.i = phi i32 [ 0, %.preheader97.i.i ], [ %i.bbu, %bb.ac ] ; 2 uses
  %.23.lcssa.i.i = phi ptr [ %.22213.i.i, %.preheader97.i.i ], [ %i.bbt, %bb.ac ] ; 2 uses
  %i.bag = icmp slt i32 %.01114.lcssa.i.i, %.sroa.speculated
  br i1 %i.bag, label %.lr.ph206.i72.i, label %.loopexit94.i.i

.lr.ph206.i72.i:                                  ; preds = %.preheader95.i.i
  %i.bah = extractelement <2 x i32> %i.bab, i64 0
  %i.bai = sext i32 %i.bah to i64
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ac, %.lr.ph201.i.i
  %.23200.i.i = phi ptr [ %.22213.i.i, %.lr.ph201.i.i ], [ %i.bbt, %bb.ac ] ; 5 uses
  %.01114199.i.i = phi i32 [ 0, %.lr.ph201.i.i ], [ %i.bbu, %bb.ac ] ; 2 uses
  %i.baj = add nsw i32 %.01114199.i.i, %i.ah      ; 2 uses
  %i.bak = add nsw i32 %i.baj, 1
  %i.bal = insertelement <2 x i32> poison, i32 %i.baj, i64 0
  %i.bam = insertelement <2 x i32> %i.bal, i32 %i.bak, i64 1
  %.frozen521 = freeze <2 x i32> %i.bam           ; 2 uses
  %.frozen522 = freeze <2 x i32> %i.aou           ; 2 uses
  %i.ban = sdiv <2 x i32> %.frozen521, %.frozen522 ; 2 uses
  %i.bao = mul <2 x i32> %i.ban, %.frozen522
  %.decomposed523 = sub <2 x i32> %.frozen521, %i.bao ; 3 uses
  %i.bap = extractelement <2 x i32> %.decomposed523, i64 0
  %i.baq = sdiv i32 %i.bap, %i.bc
  %i.bar = extractelement <2 x i32> %.decomposed523, i64 1
  %i.bas = sdiv i32 %i.bar, %i.bc
  %i.bat = srem <2 x i32> %.decomposed523, %i.aow ; 2 uses
  %i.bau = mul i32 %i.baq, %i.anv
  %57 = extractelement <2 x i32> %i.bat, i64 0
  %58 = mul nsw i32 %57, %i.be
  %i.bav = add nsw i32 %58, %i.bau
  %i.baw = sext i32 %i.bav to i64
  %59 = sext <2 x i32> %i.ban to <2 x i64>
  %60 = mul <2 x i64> %38, %59                    ; 2 uses
  %i.bax = mul i32 %i.bas, %i.anv
  %i.bay = extractelement <2 x i32> %i.bat, i64 1
  %61 = mul nsw i32 %i.bay, %i.be
  %i.baz = add nsw i32 %61, %i.bax
  %i.bba = sext i32 %i.baz to i64
  %i.bbb = load ptr, ptr %9, align 8, !tbaa !37   ; 2 uses
  %i.bbc = extractelement <2 x i64> %60, i64 0
  %i.bbd = getelementptr i8, ptr %i.bbb, i64 %i.bbc
  %i.bbe = getelementptr i8, ptr %i.bbd, i64 %i.baf
  %i.bbf = getelementptr i8, ptr %i.bbe, i64 %i.baw ; 2 uses
  %i.bbg = extractelement <2 x i64> %60, i64 1
  %i.bbh = getelementptr i8, ptr %i.bbb, i64 %i.bbg
  %i.bbi = getelementptr i8, ptr %i.bbh, i64 %i.baf
  %i.bbj = getelementptr i8, ptr %i.bbi, i64 %i.bba ; 2 uses
  %i.bbk = load i8, ptr %i.bbf, align 1, !tbaa !114
  store i8 %i.bbk, ptr %.23200.i.i, align 1, !tbaa !114
  %i.bbl = load i8, ptr %i.bbj, align 1, !tbaa !114
  %i.bbm = getelementptr inbounds nuw i8, ptr %.23200.i.i, i64 1
  store i8 %i.bbl, ptr %i.bbm, align 1, !tbaa !114
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbf, i64 1
  %i.bbo = load i8, ptr %i.bbn, align 1, !tbaa !114
  %i.bbp = getelementptr inbounds nuw i8, ptr %.23200.i.i, i64 2
  store i8 %i.bbo, ptr %i.bbp, align 1, !tbaa !114
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbj, i64 1
  %i.bbr = load i8, ptr %i.bbq, align 1, !tbaa !114
  %i.bbs = getelementptr inbounds nuw i8, ptr %.23200.i.i, i64 3
  store i8 %i.bbr, ptr %i.bbs, align 1, !tbaa !114
  %i.bbt = getelementptr inbounds nuw i8, ptr %.23200.i.i, i64 4 ; 2 uses
  %i.bbu = add nuw nsw i32 %.01114199.i.i, 2      ; 3 uses
  %i.bbv = or disjoint i32 %i.bbu, 1
  %i.bbw = icmp slt i32 %i.bbv, %.sroa.speculated
  br i1 %i.bbw, label %bb.ac, label %.preheader95.i.i, !llvm.loop !1974

bb.ad:                                            ; preds = %bb.ad, %.lr.ph206.i72.i
  %.24205.i.i = phi ptr [ %.23.lcssa.i.i, %.lr.ph206.i72.i ], [ %i.bcq, %bb.ad ] ; 3 uses
  %.11115204.i.i = phi i32 [ %.01114.lcssa.i.i, %.lr.ph206.i72.i ], [ %i.bcr, %bb.ad ] ; 2 uses
  %i.bbx = add nsw i32 %.11115204.i.i, %i.ah      ; 2 uses
  %i.bby = sdiv i32 %i.bbx, %i.va
  %i.bbz = srem i32 %i.bbx, %i.va                 ; 2 uses
  %i.bca = sdiv i32 %i.bbz, %i.bc
  %i.bcb = srem i32 %i.bbz, %i.bc
  %i.bcc = sext i32 %i.bby to i64
  %i.bcd = mul i64 %i.bs, %i.bcc
  %i.bce = mul i32 %i.bca, %i.anv
  %i.bcf = mul nsw i32 %i.bcb, %i.be
  %i.bcg = add nsw i32 %i.bcf, %i.bce
  %i.bch = sext i32 %i.bcg to i64
  %i.bci = load ptr, ptr %9, align 8, !tbaa !37
  %i.bcj = getelementptr i8, ptr %i.bci, i64 %i.bcd
  %i.bck = getelementptr i8, ptr %i.bcj, i64 %i.bai
  %i.bcl = getelementptr i8, ptr %i.bck, i64 %i.bch ; 2 uses
  %i.bcm = load i8, ptr %i.bcl, align 1, !tbaa !114
  store i8 %i.bcm, ptr %.24205.i.i, align 1, !tbaa !114
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcl, i64 1
  %i.bco = load i8, ptr %i.bcn, align 1, !tbaa !114
  %i.bcp = getelementptr inbounds nuw i8, ptr %.24205.i.i, i64 1
  store i8 %i.bco, ptr %i.bcp, align 1, !tbaa !114
  %i.bcq = getelementptr inbounds nuw i8, ptr %.24205.i.i, i64 2 ; 2 uses
  %i.bcr = add nuw nsw i32 %.11115204.i.i, 1      ; 2 uses
  %exitcond293.not.i.i = icmp eq i32 %i.bcr, %.sroa.speculated
  br i1 %exitcond293.not.i.i, label %.loopexit94.i.i, label %bb.ad, !llvm.loop !1975

.loopexit96.i.i:                                  ; preds = %bb.ab
  br i1 %brmerge245.i.i, label %.loopexit94.i.i, label %.lr.ph210.i.i

.lr.ph210.i.i:                                    ; preds = %.loopexit96.i.i
  %i.bcs = extractelement <2 x i32> %i.bab, i64 0
  %i.bct = sext i32 %i.bcs to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph210.i.i
  %.26209.i.i = phi ptr [ %.22213.i.i, %.lr.ph210.i.i ], [ %i.bdm, %bb.ae ] ; 2 uses
  %.01116208.i.i = phi i32 [ 0, %.lr.ph210.i.i ], [ %i.bdn, %bb.ae ] ; 2 uses
  %i.bcu = add nsw i32 %.01116208.i.i, %i.anz     ; 2 uses
  %i.bcv = sdiv i32 %i.bcu, %i.va
  %i.bcw = srem i32 %i.bcu, %i.va                 ; 2 uses
  %i.bcx = sdiv i32 %i.bcw, %i.bc
  %i.bcy = srem i32 %i.bcw, %i.bc
  %i.bcz = sext i32 %i.bcv to i64
  %i.bda = mul i64 %i.bs, %i.bcz
  %i.bdb = add i64 %i.bda, %i.bct
  %i.bdc = mul i32 %i.bcx, %i.anv
  %i.bdd = mul nsw i32 %i.bcy, %i.be
  %i.bde = add nsw i32 %i.bdd, %i.bdc
  %i.bdf = sext i32 %i.bde to i64
  %i.bdg = add i64 %i.bdb, %i.bdf
  %i.bdh = shl i64 %i.bdg, 3
  %i.bdi = load ptr, ptr %9, align 8, !tbaa !37
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdi, i64 %i.bdh
  %i.bdk = load <8 x i16>, ptr %i.bdj, align 1, !tbaa !114
  %i.bdl = shufflevector <8 x i16> %i.bdk, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.bdl, ptr %.26209.i.i, align 1, !tbaa !114
  %i.bdm = getelementptr inbounds nuw i8, ptr %.26209.i.i, i64 16 ; 2 uses
  %i.bdn = add nuw nsw i32 %.01116208.i.i, 1      ; 2 uses
  %exitcond294.not.i.i = icmp eq i32 %i.bdn, %i.any
  br i1 %exitcond294.not.i.i, label %.loopexit94.i.i, label %bb.ae, !llvm.loop !1976

bb.af:                                            ; preds = %bb.aa
  br i1 %i.ant, label %.preheader102.i.i, label %.loopexit101.i.i

.preheader102.i.i:                                ; preds = %bb.af
  br i1 %i.anu, label %.lr.ph187.i71.i.preheader, label %.preheader100.i.i

.lr.ph187.i71.i.preheader:                        ; preds = %.preheader102.i.i
  %i.bdo = shufflevector <2 x i32> %i.bab, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph187.i71.i

.preheader100.i.i:                                ; preds = %.lr.ph187.i71.i, %.preheader102.i.i
  %.01117.lcssa.i.i = phi i32 [ 0, %.preheader102.i.i ], [ %i.bfd, %.lr.ph187.i71.i ] ; 2 uses
  %.28.lcssa.i.i = phi ptr [ %.22213.i.i, %.preheader102.i.i ], [ %i.bfc, %.lr.ph187.i71.i ] ; 2 uses
  %i.bdp = icmp slt i32 %.01117.lcssa.i.i, %.sroa.speculated
  br i1 %i.bdp, label %.lr.ph192.i.i, label %.loopexit94.i.i

.lr.ph192.i.i:                                    ; preds = %.preheader100.i.i
  %i.bdq = extractelement <2 x i32> %i.bab, i64 0
  %i.bdr = extractelement <2 x i32> %i.bab, i64 1
  %i.bds = sext i32 %i.bdq to i64
  %i.bdt = sext i32 %i.bdr to i64
  br label %bb.ag

.lr.ph187.i71.i:                                  ; preds = %.lr.ph187.i71.i.preheader, %.lr.ph187.i71.i
  %.28186.i.i = phi ptr [ %i.bfc, %.lr.ph187.i71.i ], [ %.22213.i.i, %.lr.ph187.i71.i.preheader ] ; 5 uses
  %.01117185.i.i = phi i32 [ %i.bfd, %.lr.ph187.i71.i ], [ 0, %.lr.ph187.i71.i.preheader ] ; 2 uses
  %i.bdu = add nsw i32 %.01117185.i.i, %i.ah      ; 2 uses
  %i.bdv = add nsw i32 %i.bdu, 1
  %i.bdw = insertelement <2 x i32> poison, i32 %i.bdu, i64 0
  %i.bdx = insertelement <2 x i32> %i.bdw, i32 %i.bdv, i64 1
  %.frozen524 = freeze <2 x i32> %i.bdx           ; 2 uses
  %.frozen525 = freeze <2 x i32> %i.aok           ; 2 uses
  %i.bdy = sdiv <2 x i32> %.frozen524, %.frozen525 ; 2 uses
  %i.bdz = mul <2 x i32> %i.bdy, %.frozen525
  %.decomposed526 = sub <2 x i32> %.frozen524, %i.bdz ; 2 uses
  %.frozen527 = freeze <2 x i32> %i.aom           ; 2 uses
  %i.bea = sdiv <2 x i32> %.decomposed526, %.frozen527 ; 2 uses
  %i.beb = mul <2 x i32> %i.bea, %.frozen527
  %.decomposed528 = sub <2 x i32> %.decomposed526, %i.beb
  %62 = load ptr, ptr %9, align 8, !tbaa !37      ; 4 uses
  %i.bec = mul <2 x i32> %i.bea, %i.aoo
  %i.bed = mul nsw <2 x i32> %.decomposed528, %i.aoq
  %i.bee = mul <2 x i32> %i.bdy, %i.aos
  %i.bef = add <2 x i32> %i.bec, %i.bee
  %i.beg = add <2 x i32> %i.bef, %i.bed
  %i.beh = shufflevector <2 x i32> %i.beg, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bei = add <4 x i32> %i.beh, %i.bdo           ; 4 uses
  %i.bej = extractelement <4 x i32> %i.bei, i64 0
  %i.bek = sext i32 %i.bej to i64
  %i.bel = getelementptr inbounds i8, ptr %62, i64 %i.bek
  %i.bem = extractelement <4 x i32> %i.bei, i64 1
  %i.ben = sext i32 %i.bem to i64
  %i.beo = getelementptr inbounds i8, ptr %62, i64 %i.ben
  %i.bep = extractelement <4 x i32> %i.bei, i64 2
  %i.beq = sext i32 %i.bep to i64
  %i.ber = getelementptr inbounds i8, ptr %62, i64 %i.beq
  %i.bes = extractelement <4 x i32> %i.bei, i64 3
  %i.bet = sext i32 %i.bes to i64
  %i.beu = getelementptr inbounds i8, ptr %62, i64 %i.bet
  %i.bev = load i8, ptr %i.bel, align 1, !tbaa !114
  store i8 %i.bev, ptr %.28186.i.i, align 1, !tbaa !114
  %i.bew = load i8, ptr %i.ber, align 1, !tbaa !114
  %i.bex = getelementptr inbounds nuw i8, ptr %.28186.i.i, i64 1
  store i8 %i.bew, ptr %i.bex, align 1, !tbaa !114
  %i.bey = load i8, ptr %i.beo, align 1, !tbaa !114
  %i.bez = getelementptr inbounds nuw i8, ptr %.28186.i.i, i64 2
  store i8 %i.bey, ptr %i.bez, align 1, !tbaa !114
  %i.bfa = load i8, ptr %i.beu, align 1, !tbaa !114
  %i.bfb = getelementptr inbounds nuw i8, ptr %.28186.i.i, i64 3
  store i8 %i.bfa, ptr %i.bfb, align 1, !tbaa !114
  %i.bfc = getelementptr inbounds nuw i8, ptr %.28186.i.i, i64 4 ; 2 uses
  %i.bfd = add nuw nsw i32 %.01117185.i.i, 2      ; 3 uses
  %i.bfe = or disjoint i32 %i.bfd, 1
  %i.bff = icmp slt i32 %i.bfe, %.sroa.speculated
  br i1 %i.bff, label %.lr.ph187.i71.i, label %.preheader100.i.i, !llvm.loop !1977

bb.ag:                                            ; preds = %bb.ag, %.lr.ph192.i.i
  %.29191.i.i = phi ptr [ %.28.lcssa.i.i, %.lr.ph192.i.i ], [ %i.bga, %bb.ag ] ; 3 uses
  %.11118190.i.i = phi i32 [ %.01117.lcssa.i.i, %.lr.ph192.i.i ], [ %i.bgb, %bb.ag ] ; 2 uses
  %i.bfg = add nsw i32 %.11118190.i.i, %i.ah      ; 2 uses
  %i.bfh = sdiv i32 %i.bfg, %i.va
  %i.bfi = srem i32 %i.bfg, %i.va                 ; 2 uses
  %i.bfj = sdiv i32 %i.bfi, %i.bc
  %i.bfk = srem i32 %i.bfi, %i.bc
  %i.bfl = sext i32 %i.bfh to i64
  %i.bfm = mul i64 %i.bs, %i.bfl
  %i.bfn = mul i32 %i.bfj, %i.anv
  %i.bfo = mul nsw i32 %i.bfk, %i.be
  %i.bfp = add nsw i32 %i.bfo, %i.bfn
  %i.bfq = sext i32 %i.bfp to i64                 ; 2 uses
  %i.bfr = load ptr, ptr %9, align 8, !tbaa !37
  %i.bfs = getelementptr i8, ptr %i.bfr, i64 %i.bfm ; 2 uses
  %i.bft = getelementptr i8, ptr %i.bfs, i64 %i.bds
  %i.bfu = getelementptr i8, ptr %i.bft, i64 %i.bfq
  %i.bfv = getelementptr i8, ptr %i.bfs, i64 %i.bdt
  %i.bfw = getelementptr i8, ptr %i.bfv, i64 %i.bfq
  %i.bfx = load i8, ptr %i.bfu, align 1, !tbaa !114
  store i8 %i.bfx, ptr %.29191.i.i, align 1, !tbaa !114
  %i.bfy = load i8, ptr %i.bfw, align 1, !tbaa !114
  %i.bfz = getelementptr inbounds nuw i8, ptr %.29191.i.i, i64 1
  store i8 %i.bfy, ptr %i.bfz, align 1, !tbaa !114
  %i.bga = getelementptr inbounds nuw i8, ptr %.29191.i.i, i64 2 ; 2 uses
  %i.bgb = add nuw nsw i32 %.11118190.i.i, 1      ; 2 uses
  %exitcond291.not.i.i = icmp eq i32 %i.bgb, %.sroa.speculated
  br i1 %exitcond291.not.i.i, label %.loopexit94.i.i, label %bb.ag, !llvm.loop !1978

.loopexit101.i.i:                                 ; preds = %bb.af
  br i1 %or.cond246.i.i, label %.lr.ph197.i.i, label %.loopexit94.i.i

.lr.ph197.i.i:                                    ; preds = %.loopexit101.i.i
  %i.bgc = extractelement <2 x i32> %i.bab, i64 0
  %i.bgd = sext i32 %i.bgc to i64
  %i.bge = extractelement <2 x i32> %i.bab, i64 1
  %i.bgf = sext i32 %i.bge to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph197.i.i
  %.31196.i.i = phi ptr [ %.22213.i.i, %.lr.ph197.i.i ], [ %i.bhg, %bb.ah ] ; 2 uses
  %.31120195.i.i = phi i32 [ 0, %.lr.ph197.i.i ], [ %i.bhh, %bb.ah ] ; 2 uses
  %i.bgg = add nsw i32 %.31120195.i.i, %i.anz     ; 2 uses
  %i.bgh = sdiv i32 %i.bgg, %i.va
  %i.bgi = srem i32 %i.bgg, %i.va                 ; 2 uses
  %i.bgj = sdiv i32 %i.bgi, %i.bc
  %i.bgk = srem i32 %i.bgi, %i.bc
  %i.bgl = sext i32 %i.bgh to i64
  %i.bgm = mul i64 %i.bs, %i.bgl
  %i.bgn = mul i32 %i.bgj, %i.anv
  %i.bgo = mul nsw i32 %i.bgk, %i.be
  %i.bgp = add nsw i32 %i.bgo, %i.bgn
  %i.bgq = sext i32 %i.bgp to i64
  %i.bgr = add i64 %i.bgm, %i.bgq                 ; 2 uses
  %i.bgs = add i64 %i.bgr, %i.bgd
  %i.bgt = shl i64 %i.bgs, 3
  %i.bgu = add i64 %i.bgr, %i.bgf
  %i.bgv = shl i64 %i.bgu, 3
  %i.bgw = load ptr, ptr %9, align 8, !tbaa !37   ; 2 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgw, i64 %i.bgt
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgw, i64 %i.bgv
  %i.bgz = load i64, ptr %i.bgx, align 1, !tbaa !114
  %i.bha = insertelement <2 x i64> poison, i64 %i.bgz, i64 0
  %i.bhb = load i64, ptr %i.bgy, align 1, !tbaa !114
  %i.bhc = insertelement <2 x i64> poison, i64 %i.bhb, i64 0
  %i.bhd = bitcast <2 x i64> %i.bha to <8 x i16>
  %i.bhe = bitcast <2 x i64> %i.bhc to <8 x i16>
  %i.bhf = shufflevector <8 x i16> %i.bhd, <8 x i16> %i.bhe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.bhf, ptr %.31196.i.i, align 1, !tbaa !114
  %i.bhg = getelementptr inbounds nuw i8, ptr %.31196.i.i, i64 16 ; 2 uses
  %i.bhh = add nuw nsw i32 %.31120195.i.i, 1      ; 2 uses
  %exitcond292.not.i.i = icmp eq i32 %i.bhh, %i.any
  br i1 %exitcond292.not.i.i, label %.loopexit94.i.i, label %bb.ah, !llvm.loop !1979

.loopexit94.i.i:                                  ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ad, %.loopexit101.i.i, %.preheader100.i.i, %.loopexit96.i.i, %.preheader95.i.i
  %.33.i.i = phi ptr [ %.22213.i.i, %.loopexit101.i.i ], [ %.22213.i.i, %.loopexit96.i.i ], [ %.23.lcssa.i.i, %.preheader95.i.i ], [ %i.bdm, %bb.ae ], [ %i.bcq, %bb.ad ], [ %.28.lcssa.i.i, %.preheader100.i.i ], [ %i.bga, %bb.ag ], [ %i.bhg, %bb.ah ] ; 2 uses
  %i.bhi = add nuw nsw i32 %.21098212.i.i, 2      ; 3 uses
  %i.bhj = or disjoint i32 %i.bhi, 1
  %i.bhk = icmp slt i32 %i.bhj, %.sroa.speculated63
  br i1 %i.bhk, label %bb.aa, label %.preheader92.i.i, !llvm.loop !1980

bb.ai:                                            ; preds = %.loopexit.i.i, %.lr.ph232.i.i
  %.34231.i.i = phi ptr [ %.22.lcssa.i.i, %.lr.ph232.i.i ], [ %.39.i.i, %.loopexit.i.i ] ; 4 uses
  %.31099230.i.i = phi i32 [ %.21098.lcssa.i.i, %.lr.ph232.i.i ], [ %i.bko, %.loopexit.i.i ] ; 2 uses
  %i.bhl = add nsw i32 %.31099230.i.i, %i.af      ; 2 uses
  %i.bhm = sdiv i32 %i.bhl, %i.uz
  %i.bhn = srem i32 %i.bhl, %i.uz
  %i.bho = mul nsw i32 %i.bhn, %i.bg
  %i.bhp = mul i32 %i.azh, %i.bhm
  %i.bhq = add nsw i32 %i.bho, %i.bhp             ; 3 uses
  br i1 %i.azi, label %.preheader91.i.i, label %.loopexit90.i.i

.preheader91.i.i:                                 ; preds = %bb.ai
  br i1 %i.azj, label %.lr.ph219.i.i, label %.preheader89.i.i

.lr.ph219.i.i:                                    ; preds = %.preheader91.i.i
  %i.bhr = sext i32 %i.bhq to i64                 ; 2 uses
  br label %bb.aj

.preheader89.i.i:                                 ; preds = %bb.aj, %.preheader91.i.i
  %.01109.lcssa.i.i = phi i32 [ 0, %.preheader91.i.i ], [ %i.biz, %bb.aj ] ; 2 uses
  %.35.lcssa.i.i = phi ptr [ %.34231.i.i, %.preheader91.i.i ], [ %i.biy, %bb.aj ] ; 2 uses
  %i.bhs = icmp slt i32 %.01109.lcssa.i.i, %.sroa.speculated
  br i1 %i.bhs, label %.lr.ph224.i.i, label %.loopexit.i.i

.lr.ph224.i.i:                                    ; preds = %.preheader89.i.i
  %i.bht = sext i32 %i.bhq to i64
  br label %bb.ak

bb.aj:                                            ; preds = %bb.aj, %.lr.ph219.i.i
  %.35218.i.i = phi ptr [ %.34231.i.i, %.lr.ph219.i.i ], [ %i.biy, %bb.aj ] ; 3 uses
  %.01109217.i.i = phi i32 [ 0, %.lr.ph219.i.i ], [ %i.biz, %bb.aj ] ; 2 uses
  %i.bhu = add nsw i32 %.01109217.i.i, %i.ah      ; 2 uses
  %i.bhv = add nsw i32 %i.bhu, 1
  %i.bhw = insertelement <2 x i32> poison, i32 %i.bhu, i64 0
  %i.bhx = insertelement <2 x i32> %i.bhw, i32 %i.bhv, i64 1
  %.frozen529 = freeze <2 x i32> %i.bhx           ; 2 uses
  %.frozen530 = freeze <2 x i32> %i.azq           ; 2 uses
  %i.bhy = sdiv <2 x i32> %.frozen529, %.frozen530 ; 2 uses
  %i.bhz = mul <2 x i32> %i.bhy, %.frozen530
  %.decomposed531 = sub <2 x i32> %.frozen529, %i.bhz ; 3 uses
  %i.bia = extractelement <2 x i32> %.decomposed531, i64 0
  %i.bib = sdiv i32 %i.bia, %i.bc
  %i.bic = extractelement <2 x i32> %.decomposed531, i64 1
  %i.bid = sdiv i32 %i.bic, %i.bc
  %i.bie = srem <2 x i32> %.decomposed531, %i.azs ; 2 uses
  %i.bif = mul i32 %i.bib, %i.azk
  %63 = extractelement <2 x i32> %i.bie, i64 0
  %64 = mul nsw i32 %63, %i.be
  %i.big = add nsw i32 %64, %i.bif
  %i.bih = sext i32 %i.big to i64
  %65 = sext <2 x i32> %i.bhy to <2 x i64>
  %66 = mul <2 x i64> %56, %65                    ; 2 uses
  %i.bii = mul i32 %i.bid, %i.azk
  %i.bij = extractelement <2 x i32> %i.bie, i64 1
  %67 = mul nsw i32 %i.bij, %i.be
  %i.bik = add nsw i32 %67, %i.bii
  %i.bil = sext i32 %i.bik to i64
  %i.bim = load ptr, ptr %9, align 8, !tbaa !37   ; 2 uses
  %i.bin = extractelement <2 x i64> %66, i64 0
  %i.bio = getelementptr i8, ptr %i.bim, i64 %i.bin
  %i.bip = getelementptr i8, ptr %i.bio, i64 %i.bhr
  %i.biq = getelementptr i8, ptr %i.bip, i64 %i.bih
  %i.bir = extractelement <2 x i64> %66, i64 1
  %i.bis = getelementptr i8, ptr %i.bim, i64 %i.bir
  %i.bit = getelementptr i8, ptr %i.bis, i64 %i.bhr
  %i.biu = getelementptr i8, ptr %i.bit, i64 %i.bil
  %i.biv = load i8, ptr %i.biq, align 1, !tbaa !114
  store i8 %i.biv, ptr %.35218.i.i, align 1, !tbaa !114
  %i.biw = load i8, ptr %i.biu, align 1, !tbaa !114
  %i.bix = getelementptr inbounds nuw i8, ptr %.35218.i.i, i64 1
  store i8 %i.biw, ptr %i.bix, align 1, !tbaa !114
  %i.biy = getelementptr inbounds nuw i8, ptr %.35218.i.i, i64 2 ; 2 uses
  %i.biz = add nuw nsw i32 %.01109217.i.i, 2      ; 3 uses
  %i.bja = or disjoint i32 %i.biz, 1
  %i.bjb = icmp slt i32 %i.bja, %.sroa.speculated
  br i1 %i.bjb, label %bb.aj, label %.preheader89.i.i, !llvm.loop !1981

bb.ak:                                            ; preds = %bb.ak, %.lr.ph224.i.i
  %.36223.i.i = phi ptr [ %.35.lcssa.i.i, %.lr.ph224.i.i ], [ %i.bjs, %bb.ak ] ; 2 uses
  %.11110222.i.i = phi i32 [ %.01109.lcssa.i.i, %.lr.ph224.i.i ], [ %i.bjt, %bb.ak ] ; 2 uses
  %i.bjc = add nsw i32 %.11110222.i.i, %i.ah      ; 2 uses
  %i.bjd = sdiv i32 %i.bjc, %i.va
  %i.bje = srem i32 %i.bjc, %i.va                 ; 2 uses
  %i.bjf = sdiv i32 %i.bje, %i.bc
  %i.bjg = srem i32 %i.bje, %i.bc
  %i.bjh = sext i32 %i.bjd to i64
  %i.bji = mul i64 %i.bs, %i.bjh
  %i.bjj = mul i32 %i.bjf, %i.azk
  %i.bjk = mul nsw i32 %i.bjg, %i.be
  %i.bjl = add nsw i32 %i.bjk, %i.bjj
  %i.bjm = sext i32 %i.bjl to i64
  %i.bjn = load ptr, ptr %9, align 8, !tbaa !37
  %i.bjo = getelementptr i8, ptr %i.bjn, i64 %i.bji
  %i.bjp = getelementptr i8, ptr %i.bjo, i64 %i.bht
  %i.bjq = getelementptr i8, ptr %i.bjp, i64 %i.bjm
  %i.bjr = load i8, ptr %i.bjq, align 1, !tbaa !114
  store i8 %i.bjr, ptr %.36223.i.i, align 1, !tbaa !114
  %i.bjs = getelementptr inbounds nuw i8, ptr %.36223.i.i, i64 1 ; 2 uses
  %i.bjt = add nuw nsw i32 %.11110222.i.i, 1      ; 2 uses
  %exitcond295.not.i.i = icmp eq i32 %i.bjt, %.sroa.speculated
  br i1 %exitcond295.not.i.i, label %.loopexit.i.i, label %bb.ak, !llvm.loop !1982

.loopexit90.i.i:                                  ; preds = %bb.ai
  br i1 %brmerge249.i.i, label %.loopexit.i.i, label %.lr.ph228.i.i

.lr.ph228.i.i:                                    ; preds = %.loopexit90.i.i
  %i.bju = sext i32 %i.bhq to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph228.i.i
  %.38227.i.i = phi ptr [ %.34231.i.i, %.lr.ph228.i.i ], [ %i.bkm, %bb.al ] ; 2 uses
  %.01095226.i.i = phi i32 [ 0, %.lr.ph228.i.i ], [ %i.bkn, %bb.al ] ; 2 uses
  %i.bjv = add nsw i32 %.01095226.i.i, %i.azo     ; 2 uses
  %i.bjw = sdiv i32 %i.bjv, %i.va
  %i.bjx = srem i32 %i.bjv, %i.va                 ; 2 uses
  %i.bjy = sdiv i32 %i.bjx, %i.bc
  %i.bjz = srem i32 %i.bjx, %i.bc
  %i.bka = sext i32 %i.bjw to i64
  %i.bkb = mul i64 %i.bs, %i.bka
  %i.bkc = add i64 %i.bkb, %i.bju
  %i.bkd = mul i32 %i.bjy, %i.azk
  %i.bke = mul nsw i32 %i.bjz, %i.be
  %i.bkf = add nsw i32 %i.bke, %i.bkd
  %i.bkg = sext i32 %i.bkf to i64
  %i.bkh = add i64 %i.bkc, %i.bkg
  %i.bki = shl i64 %i.bkh, 3
  %i.bkj = load ptr, ptr %9, align 8, !tbaa !37
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkj, i64 %i.bki
  %i.bkl = load i64, ptr %i.bkk, align 1, !tbaa !114
  store i64 %i.bkl, ptr %.38227.i.i, align 1, !tbaa !114
  %i.bkm = getelementptr inbounds nuw i8, ptr %.38227.i.i, i64 8 ; 2 uses
  %i.bkn = add nuw nsw i32 %.01095226.i.i, 1      ; 2 uses
  %exitcond296.not.i.i = icmp eq i32 %i.bkn, %i.azm
  br i1 %exitcond296.not.i.i, label %.loopexit.i.i, label %bb.al, !llvm.loop !1983

.loopexit.i.i:                                    ; preds = %bb.al, %bb.ak, %.loopexit90.i.i, %.preheader89.i.i
  %.39.i.i = phi ptr [ %.34231.i.i, %.loopexit90.i.i ], [ %i.bjs, %bb.ak ], [ %.35.lcssa.i.i, %.preheader89.i.i ], [ %i.bkm, %bb.al ]
  %i.bko = add nuw nsw i32 %.31099230.i.i, 1      ; 2 uses
  %exitcond297.not.i.i = icmp eq i32 %i.bko, %.sroa.speculated63
  br i1 %exitcond297.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %bb.ai, !llvm.loop !1984

_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit: ; preds = %.loopexit.i.i, %..loopexit_crit_edge.i.i, %..loopexit118_crit_edge.us.i.i, %.preheader92.i.i, %.lr.ph206.split.split.i.i, %.lr.ph206.split.us.split.i.i, %.lr.ph206.i.i, %.preheader.i.i, %bb.c, %bb.e, %bb.g
  %i.bkp = load ptr, ptr %i.q, align 8, !tbaa !35 ; 2 uses
  %.not.i37 = icmp eq ptr %i.bkp, null
  br i1 %.not.i37, label %_ZN4ncnn3MatD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit
  %i.bkq = atomicrmw add ptr %i.bkp, i32 -1 acq_rel, align 4
  %i.bkr = icmp eq i32 %i.bkq, 1
  br i1 %i.bkr, label %bb.an, label %_ZN4ncnn3MatD2Ev.exit

bb.an:                                            ; preds = %bb.am
  %i.bks = load ptr, ptr %i.t, align 8, !tbaa !36 ; 3 uses
  %.not3.i38 = icmp eq ptr %i.bks, null
  %i.bkt = load ptr, ptr %16, align 8, !tbaa !37  ; 3 uses
  br i1 %.not3.i38, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bku = load ptr, ptr %i.bks, align 8, !tbaa !29
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bku, i64 24
  %i.bkw = load ptr, ptr %i.bkv, align 8
  invoke void %i.bkw(ptr noundef nonnull align 8 dereferenceable(8) %i.bks, ptr noundef %i.bkt)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ar, !inline_history !0

bb.ap:                                            ; preds = %bb.an
  %.not.i41 = icmp eq ptr %i.bkt, null
  br i1 %.not.i41, label %_ZN4ncnn3MatD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @free(ptr noundef nonnull %i.bkt) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ar:                                            ; preds = %bb.ao
  %i.bkx = landingpad { ptr, i32 }
          catch ptr null
  %i.bky = extractvalue { ptr, i32 } %i.bkx, 0
  call void @__clang_call_terminate(ptr %i.bky) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.am, %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, %bb.ao, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  %i.bkz = add nsw i32 %.0126, 1
  %i.bla = load i32, ptr %i.b, align 4, !tbaa !81
  %.not.not = icmp slt i32 %.0126, %i.bla
  br i1 %.not.not, label %_ZN4ncnn3MatD2Ev.exit36, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge, %bb.a
  ret void

bb.at:                                            ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %_ZN4ncnn3MatD2Ev.exit36
  %i.blb = landingpad { ptr, i32 }
          catch ptr null
  %i.blc = extractvalue { ptr, i32 } %i.blb, 0
  call void @__clang_call_terminate(ptr %i.blc) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined.14(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(72) %12) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !81     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.as

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !81
  %i.h = load i32, ptr %0, align 4, !tbaa !81     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !81
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !81
  %i.k = load i32, ptr %i.a, align 4, !tbaa !81   ; 2 uses
  %.not161 = icmp sgt i32 %i.k, %i.j
  br i1 %.not161, label %._crit_edge165, label %.lr.ph164

.lr.ph164:                                        ; preds = %bb.b
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
end_hunk_1
