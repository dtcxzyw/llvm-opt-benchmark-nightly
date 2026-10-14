Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512?download=true
inline.NumInlined: 389
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 154
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 372
begin_hunk_0_@_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined:bb.a
bb.bz:                                            ; preds = %bb.by
  %i.om = getelementptr inbounds nuw i8, ptr %i.lm, i64 48
  %i.on = load <16 x i8>, ptr %i.om, align 16, !tbaa !85
  %i.oo = sext <16 x i8> %i.on to <16 x i16>
  br label %.thread150.3

.thread150.3:                                     ; preds = %bb.bz, %bb.by, %bb.bt, %bb.bs, %bb.bn, %bb.bm, %bb.bh, %.thread150.2
  %i.op = phi <16 x i16> [ zeroinitializer, %.thread150.2 ], [ zeroinitializer, %bb.bh ], [ %i.mi, %bb.bn ], [ %i.mi, %bb.bm ], [ %i.np, %bb.bt ], [ %i.np, %bb.bs ], [ %i.ok, %bb.by ], [ %i.ok, %bb.bz ] ; 3 uses
  %i.oq = phi <16 x i16> [ zeroinitializer, %.thread150.2 ], [ zeroinitializer, %bb.bh ], [ %i.mn, %bb.bn ], [ zeroinitializer, %bb.bm ], [ %i.ny, %bb.bt ], [ zeroinitializer, %bb.bs ], [ zeroinitializer, %bb.by ], [ %i.oo, %bb.bz ]
  %i.or = phi <16 x i16> [ zeroinitializer, %.thread150.2 ], [ zeroinitializer, %bb.bh ], [ %i.mc, %bb.bn ], [ %i.mc, %bb.bm ], [ %i.nf, %bb.bt ], [ %i.nf, %bb.bs ], [ %i.of, %bb.by ], [ %i.of, %bb.bz ] ; 3 uses
  %i.os = phi <16 x i16> [ zeroinitializer, %.thread150.2 ], [ zeroinitializer, %bb.bh ], [ %i.lw, %bb.bn ], [ %i.lw, %bb.bm ], [ %i.mv, %bb.bt ], [ %i.mv, %bb.bs ], [ %i.oa, %bb.by ], [ %i.oa, %bb.bz ]
  %i.ot = add nsw <16 x i16> %i.or, %i.op
  %i.ou = load ptr, ptr %12, align 8, !tbaa !22
  %i.ov = mul i32 %i.t, %i.u
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds [2 x i8], ptr %i.ou, i64 %i.ow
  %.idx = shl nuw nsw i64 %indvars.iv, 5
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 %.idx ; 5 uses
  %i.oz = shl nsw i32 %i.u, 4
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds [2 x i8], ptr %i.oy, i64 %i.pa ; 2 uses
  %i.pc = shl nsw i32 %i.u, 5
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr inbounds [2 x i8], ptr %i.oy, i64 %i.pd ; 2 uses
  %i.pf = mul nsw i32 %i.u, 48
  %i.pg = sext i32 %i.pf to i64
  %i.ph = getelementptr inbounds [2 x i8], ptr %i.oy, i64 %i.pg ; 2 uses
  %i.pi = add nsw <16 x i16> %i.el, %i.li
  %i.pj = sub nsw <16 x i16> %i.eo, %i.pi
  %i.pk = add nsw <16 x i16> %i.li, %i.hx
  %i.pl = sub nsw <16 x i16> %i.li, %i.hx
  %i.pm = add nsw <16 x i16> %i.op, %i.hx
  %i.pn = sub nsw <16 x i16> %i.os, %i.pm
  store <16 x i16> %i.pj, ptr %i.oy, align 32, !tbaa !85
  store <16 x i16> %i.pk, ptr %i.pb, align 32, !tbaa !85
  store <16 x i16> %i.pl, ptr %i.pe, align 32, !tbaa !85
  store <16 x i16> %i.pn, ptr %i.ph, align 32, !tbaa !85
  %i.po = load i32, ptr %3, align 4, !tbaa !66
  %i.pp = shl nsw i32 %i.po, 6
  %i.pq = sext i32 %i.pp to i64                   ; 4 uses
  %i.pr = getelementptr inbounds [2 x i8], ptr %i.oy, i64 %i.pq ; 2 uses
  %i.ps = getelementptr inbounds [2 x i8], ptr %i.pb, i64 %i.pq ; 2 uses
  %i.pt = getelementptr inbounds [2 x i8], ptr %i.pe, i64 %i.pq ; 2 uses
  %i.pu = getelementptr inbounds [2 x i8], ptr %i.ph, i64 %i.pq ; 2 uses
  %i.pv = sub nsw <16 x i16> %i.ep, %i.lj
  %i.pw = add nsw <16 x i16> %i.lj, %i.hy
  %i.px = sub nsw <16 x i16> %i.lj, %i.hy
  %i.py = sub nsw <16 x i16> %i.ot, %i.hy
  store <16 x i16> %i.pv, ptr %i.pr, align 32, !tbaa !85
  store <16 x i16> %i.pw, ptr %i.ps, align 32, !tbaa !85
  store <16 x i16> %i.px, ptr %i.pt, align 32, !tbaa !85
  store <16 x i16> %i.py, ptr %i.pu, align 32, !tbaa !85
  %i.pz = load i32, ptr %3, align 4, !tbaa !66
  %i.qa = shl nsw i32 %i.pz, 6
  %i.qb = sext i32 %i.qa to i64                   ; 4 uses
  %i.qc = getelementptr inbounds [2 x i8], ptr %i.pr, i64 %i.qb ; 2 uses
  %i.qd = getelementptr inbounds [2 x i8], ptr %i.ps, i64 %i.qb ; 2 uses
  %i.qe = getelementptr inbounds [2 x i8], ptr %i.pt, i64 %i.qb ; 2 uses
  %i.qf = getelementptr inbounds [2 x i8], ptr %i.pu, i64 %i.qb ; 2 uses
  %i.qg = add nsw <16 x i16> %i.en, %i.lk
  %i.qh = sub nsw <16 x i16> %i.el, %i.qg
  %i.qi = add nsw <16 x i16> %i.lk, %i.hz
  %i.qj = sub nsw <16 x i16> %i.lk, %i.hz
  %i.qk = add nsw <16 x i16> %i.or, %i.hz
  %i.ql = sub nsw <16 x i16> %i.op, %i.qk
  store <16 x i16> %i.qh, ptr %i.qc, align 32, !tbaa !85
  store <16 x i16> %i.qi, ptr %i.qd, align 32, !tbaa !85
  store <16 x i16> %i.qj, ptr %i.qe, align 32, !tbaa !85
  store <16 x i16> %i.ql, ptr %i.qf, align 32, !tbaa !85
  %i.qm = load i32, ptr %3, align 4, !tbaa !66
  %i.qn = shl nsw i32 %i.qm, 6
  %i.qo = sext i32 %i.qn to i64                   ; 4 uses
  %i.qp = getelementptr inbounds [2 x i8], ptr %i.qc, i64 %i.qo
  %i.qq = getelementptr inbounds [2 x i8], ptr %i.qd, i64 %i.qo
  %i.qr = getelementptr inbounds [2 x i8], ptr %i.qe, i64 %i.qo
  %i.qs = getelementptr inbounds [2 x i8], ptr %i.qf, i64 %i.qo
  %i.qt = add nsw <16 x i16> %i.en, %i.ll
  %i.qu = sub nsw <16 x i16> %i.em, %i.qt
  %i.qv = add nsw <16 x i16> %i.ll, %i.ia
  %i.qw = sub nsw <16 x i16> %i.ll, %i.ia
  %i.qx = add nsw <16 x i16> %i.or, %i.ia
  %i.qy = sub nsw <16 x i16> %i.oq, %i.qx
  store <16 x i16> %i.qu, ptr %i.qp, align 32, !tbaa !85
  store <16 x i16> %i.qv, ptr %i.qq, align 32, !tbaa !85
  store <16 x i16> %i.qw, ptr %i.qr, align 32, !tbaa !85
  store <16 x i16> %i.qy, ptr %i.qs, align 32, !tbaa !85
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qz = load i32, ptr %3, align 4, !tbaa !66    ; 3 uses
  %i.ra = sext i32 %i.qz to i64
  %i.rb = icmp slt i64 %indvars.iv.next, %i.ra
  br i1 %i.rb, label %.noexc, label %._crit_edge, !llvm.loop !2278

._crit_edge:                                      ; preds = %.thread150.3, %.lr.ph.split
  %i.rc = phi i32 [ %i.q, %.lr.ph.split ], [ %i.qz, %.thread150.3 ]
  %i.rd = add i32 %.0164, 1
  %exitcond.not = icmp eq i32 %.0164, %i.j
  br i1 %exitcond.not, label %._crit_edge166, label %.lr.ph.split, !llvm.loop !2279

._crit_edge166:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge166, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !66     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.az

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !66
  %i.h = load i32, ptr %0, align 4, !tbaa !66     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !66
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !66
  %i.k = load i32, ptr %i.a, align 4, !tbaa !66   ; 2 uses
  %.not142 = icmp sgt i32 %i.k, %i.j
  br i1 %.not142, label %._crit_edge, label %_ZN4ncnn3MatD2Ev.exit36.lr.ph

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
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  br label %_ZN4ncnn3MatD2Ev.exit36

_ZN4ncnn3MatD2Ev.exit36:                          ; preds = %_ZN4ncnn3MatD2Ev.exit36.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.0143 = phi i32 [ %i.k, %_ZN4ncnn3MatD2Ev.exit36.lr.ph ], [ %i.bqs, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.ab = load i32, ptr %3, align 4, !tbaa !66    ; 2 uses
  %i.ac = sdiv i32 %.0143, %i.ab                  ; 2 uses
  %i.ad = srem i32 %.0143, %i.ab                  ; 2 uses
  %i.ae = load i32, ptr %4, align 4, !tbaa !66    ; 2 uses
  %i.af = mul nsw i32 %i.ae, %i.ac                ; 15 uses
  %i.ag = load i32, ptr %5, align 4, !tbaa !66    ; 2 uses
  %i.ah = mul i32 %i.ag, %i.ad                    ; 37 uses
  %i.ai = load i32, ptr %6, align 4, !tbaa !66
  %i.aj = sub nsw i32 %i.ai, %i.af
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.aj) ; 24 uses
  %i.ak = load i32, ptr %7, align 4, !tbaa !66
  %i.al = sub i32 %i.ak, %i.ah
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.al) ; 88 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  %i.am = load i32, ptr %i.l, align 4, !tbaa !74, !noalias !2362 ; 2 uses
  %i.an = load ptr, ptr %8, align 8, !tbaa !22, !noalias !2362
  %i.ao = load i64, ptr %i.m, align 8, !tbaa !23, !noalias !2362
  %i.ap = sext i32 %i.ac to i64
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = load i64, ptr %i.n, align 8, !tbaa !64, !noalias !2362 ; 3 uses
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %i.au = load i32, ptr %i.o, align 8, !tbaa !65, !noalias !2362
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !21, !noalias !2362
  %i.aw = sext i32 %i.am to i64                   ; 2 uses
  %i.ax = sext i32 %i.ad to i64
  %i.ay = mul nsw i64 %i.aw, %i.ax
  %i.az = mul i64 %i.ay, %i.ar
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.az
  store ptr %i.ba, ptr %16, align 8, !tbaa !22, !alias.scope !2363
  store ptr null, ptr %i.q, align 8, !tbaa !20, !alias.scope !2363
  store i64 %i.ar, ptr %i.r, align 8, !tbaa !64, !alias.scope !2363
  store i32 %i.au, ptr %i.s, align 8, !tbaa !65, !alias.scope !2363
  store ptr %i.av, ptr %i.t, align 8, !tbaa !21, !alias.scope !2363
  %i.bb = insertelement <4 x i32> <i32 2, i32 poison, i32 1, i32 1>, i32 %i.am, i64 1
  store <4 x i32> %i.bb, ptr %i.u, align 8, !tbaa !66, !alias.scope !2363
  store i32 1, ptr %i.v, align 8, !tbaa !67, !alias.scope !2363
  store i64 %i.aw, ptr %i.w, align 8, !tbaa !23, !alias.scope !2363
  %i.bc = load i32, ptr %10, align 4, !tbaa !66   ; 61 uses
  %i.bd = load i32, ptr %11, align 4, !tbaa !66   ; 5 uses
  %i.be = load i32, ptr %12, align 4, !tbaa !66   ; 37 uses
  %i.bf = load i32, ptr %13, align 4, !tbaa !66   ; 9 uses
  %i.bg = load i32, ptr %14, align 4, !tbaa !66   ; 10 uses
  %i.bh = load i32, ptr %15, align 4, !tbaa !66   ; 9 uses
  %i.bi = invoke noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_vnniEv()
          to label %.noexc46 unwind label %bb.ba

.noexc46:                                         ; preds = %_ZN4ncnn3MatD2Ev.exit36
  %.not.i45 = icmp eq i32 %i.bi, 0
  br i1 %.not.i45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc46
  invoke void @_ZN4ncnn45convolution_im2col_input_tile_int8_avx512vnniERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.af, i32 noundef %.sroa.speculated63, i32 noundef %i.ah, i32 noundef %.sroa.speculated, i32 noundef %i.bc, i32 noundef %i.bd, i32 noundef %i.be, i32 noundef %i.bf, i32 noundef %i.bg, i32 noundef %i.bh)
          to label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit unwind label %bb.ba

bb.d:                                             ; preds = %.noexc46
  %i.bj = invoke noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
          to label %.noexc48 unwind label %bb.ba

.noexc48:                                         ; preds = %bb.d
  %.not68.i = icmp eq i32 %i.bj, 0
  br i1 %.not68.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc48
  invoke void @_ZN4ncnn46convolution_im2col_input_tile_int8_avxvnniint8ERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.af, i32 noundef %.sroa.speculated63, i32 noundef %i.ah, i32 noundef %.sroa.speculated, i32 noundef %i.bc, i32 noundef %i.bd, i32 noundef %i.be, i32 noundef %i.bf, i32 noundef %i.bg, i32 noundef %i.bh)
          to label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit unwind label %bb.ba

bb.f:                                             ; preds = %.noexc48
  %i.bk = invoke noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
          to label %.noexc50 unwind label %bb.ba

.noexc50:                                         ; preds = %bb.f
  %.not69.i = icmp eq i32 %i.bk, 0
  br i1 %.not69.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc50
  invoke void @_ZN4ncnn42convolution_im2col_input_tile_int8_avxvnniERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.af, i32 noundef %.sroa.speculated63, i32 noundef %i.ah, i32 noundef %.sroa.speculated, i32 noundef %i.bc, i32 noundef %i.bd, i32 noundef %i.be, i32 noundef %i.bf, i32 noundef %i.bg, i32 noundef %i.bh)
          to label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit unwind label %bb.ba

bb.h:                                             ; preds = %.noexc50
  %i.bl = icmp eq i32 %i.bc, 1
  %i.bm = icmp eq i32 %i.bd, 1
  %or.cond.i = and i1 %i.bl, %i.bm
  %i.bn = icmp eq i32 %i.be, 1
  %or.cond3.i = and i1 %or.cond.i, %i.bn
  %i.bo = icmp eq i32 %i.bf, 1
  %or.cond5.i = and i1 %or.cond3.i, %i.bo
  %i.bp = icmp eq i32 %i.bg, 1                    ; 5 uses
  %i.bq = icmp eq i32 %i.bh, 1
  %i.br = and i1 %or.cond5.i, %i.bq
  %or.cond9.i = and i1 %i.bp, %i.br
  %.val.i = load ptr, ptr %16, align 8, !tbaa !22 ; 4 uses
  %i.bs = load i64, ptr %i.x, align 8, !tbaa !23  ; 75 uses
  br i1 %or.cond9.i, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.bt = load i32, ptr %i.z, align 8, !tbaa !65  ; 6 uses
  %i.bu = icmp sgt i32 %.sroa.speculated63, 15
  br i1 %i.bu, label %.lr.ph183.i.i, label %.preheader162.i.i

.lr.ph183.i.i:                                    ; preds = %bb.i
  %i.bv = sdiv i32 %i.ah, 8
  %i.bw = sext i32 %i.bv to i64
  %i.bx = lshr i32 %.sroa.speculated, 3
  %i.by = icmp sgt i32 %.sroa.speculated, 7
  %i.bz = shl i64 %i.bs, 3
  %i.ca = sext i32 %i.ah to i64
  %i.cb = icmp sgt i32 %.sroa.speculated, 1
  %i.cc = shl i64 %i.bs, 1                        ; 3 uses
  %i.cd = and i32 %.sroa.speculated, -2           ; 2 uses
  %i.ce = zext nneg i32 %.sroa.speculated63 to i64
  %i.cf = sext i32 %i.af to i64                   ; 2 uses
  %i.cg = add i32 %.sroa.speculated, -2           ; 2 uses
  %i.ch = lshr i32 %i.cg, 1                       ; 2 uses
  %i.ci = add nuw i32 %i.ch, 1                    ; 2 uses
  %i.cj = icmp eq i32 %i.ch, 0
  %unroll_iter = and i32 %i.ci, -2
  %i.ck = and i32 %i.cg, 2
  %lcmp.mod.not.not = icmp eq i32 %i.ck, 0
  %lcmp.mod522 = trunc i32 %i.ci to i1
  br label %bb.j

.preheader162.loopexit.i.i:                       ; preds = %.loopexit164.i.i
  %i.cl = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %.preheader162.i.i

.preheader162.i.i:                                ; preds = %.preheader162.loopexit.i.i, %bb.i
  %.0356.lcssa.i.i = phi i32 [ 0, %bb.i ], [ %i.cl, %.preheader162.loopexit.i.i ] ; 3 uses
  %.0354.lcssa.i.i = phi ptr [ %.val.i, %bb.i ], [ %.5.i.i, %.preheader162.loopexit.i.i ] ; 5 uses
  %i.cm = or disjoint i32 %.0356.lcssa.i.i, 7
  %i.cn = icmp slt i32 %i.cm, %.sroa.speculated63
  br i1 %i.cn, label %.lr.ph205.i.i, label %.preheader158.i.i

.lr.ph205.i.i:                                    ; preds = %.preheader162.i.i
  %i.co = sdiv i32 %i.ah, 8
  %i.cp = sext i32 %i.co to i64
  %i.cq = lshr i32 %.sroa.speculated, 3
  %i.cr = shl i64 %i.bs, 3
  %i.cs = sext i32 %i.ah to i64
  %i.ct = icmp sgt i32 %.sroa.speculated, 1
  %i.cu = shl i64 %i.bs, 1                        ; 3 uses
  %i.cv = and i32 %.sroa.speculated, -2           ; 2 uses
  %i.cw = zext i32 %.0356.lcssa.i.i to i64        ; 6 uses
  %i.cx = sext i32 %.sroa.speculated63 to i64
  %i.cy = sext i32 %i.af to i64                   ; 2 uses
  %invariant.op.i.i = add nsw i64 %i.cx, -7       ; 4 uses
  switch i32 %i.bt, label %.loopexit160.i.preheader.i [
    i32 8, label %.lr.ph205.i.split.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit395.i.us.i.preheader
  ]

_ZN4ncnn3MatD2Ev.exit395.i.us.i.preheader:        ; preds = %.lr.ph205.i.i
  %i.cz = add i32 %.sroa.speculated, -2           ; 2 uses
  %i.da = lshr i32 %i.cz, 1                       ; 2 uses
  %i.db = add nuw i32 %i.da, 1                    ; 2 uses
  %i.dc = icmp eq i32 %i.da, 0
  %unroll_iter530 = and i32 %i.db, -2
  %i.dd = and i32 %i.cz, 2
  %lcmp.mod526.not.not = icmp eq i32 %i.dd, 0
  %lcmp.mod529 = trunc i32 %i.db to i1
  br label %_ZN4ncnn3MatD2Ev.exit395.i.us.i

.loopexit160.i.preheader.i:                       ; preds = %.lr.ph205.i.i
  %i.de = add nuw nsw i64 %i.cw, 8                ; 2 uses
  %smax253.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.de)
  %i.df = xor i64 %i.cw, -1
  %i.dg = add nsw i64 %smax253.i, %i.df
  %i.dh = and i64 %i.dg, -8
  %i.di = add i64 %i.de, %i.dh
  br label %.preheader158.loopexit.i.i

.lr.ph205.i.split.us.i:                           ; preds = %.lr.ph205.i.i
  %i.dj = icmp sgt i32 %.sroa.speculated, 7
  br i1 %i.dj, label %_ZN4ncnn3MatD2Ev.exit396.i.us.us.i, label %_ZN4ncnn3MatD2Ev.exit396.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit396.i.us.preheader.i:        ; preds = %.lr.ph205.i.split.us.i
  %i.dk = add nuw nsw i64 %i.cw, 8                ; 2 uses
  %smax.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.dk)
  %i.dl = xor i64 %i.cw, -1
  %i.dm = add nsw i64 %smax.i, %i.dl
  %i.dn = and i64 %i.dm, -8
  %i.do = add i64 %i.dk, %i.dn
  br label %.preheader158.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit396.i.us.us.i:               ; preds = %.lr.ph205.i.split.us.i, %.loopexit160.i.loopexit.us.us.i
  %indvars.iv298.i.us.us.i = phi i64 [ %indvars.iv.next299.i.us.us.i, %.loopexit160.i.loopexit.us.us.i ], [ %i.cw, %.lr.ph205.i.split.us.i ] ; 2 uses
  %.6204.i.us.us.i = phi ptr [ %i.eu, %.loopexit160.i.loopexit.us.us.i ], [ %.0354.lcssa.i.i, %.lr.ph205.i.split.us.i ]
  %i.dp = load ptr, ptr %9, align 8, !tbaa !22, !noalias !2364
  %i.dq = load i64, ptr %i.x, align 8, !tbaa !23, !noalias !2364
  %i.dr = mul i64 %i.dq, %i.cp
  %i.ds = load i64, ptr %i.aa, align 8, !tbaa !64, !noalias !2364
  %i.dt = mul i64 %i.dr, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dt
  %i.dv = add nsw i64 %indvars.iv298.i.us.us.i, %i.cy
  %i.dw = shl nsw i64 %i.dv, 3
  %i.dx = getelementptr inbounds i8, ptr %i.du, i64 %i.dw
  br label %.lr.ph189.i.us.us.i

.lr.ph189.i.us.us.i:                              ; preds = %.lr.ph189.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit396.i.us.us.i
  %.7188.i.us.us.i = phi ptr [ %i.eu, %.lr.ph189.i.us.us.i ], [ %.6204.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit396.i.us.us.i ] ; 5 uses
  %.0373187.i.us.us.i = phi ptr [ %i.ev, %.lr.ph189.i.us.us.i ], [ %i.dx, %_ZN4ncnn3MatD2Ev.exit396.i.us.us.i ] ; 5 uses
  %.0374186.i.us.us.i = phi i32 [ %i.ew, %.lr.ph189.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit396.i.us.us.i ]
  %i.dy = load <8 x i16>, ptr %.0373187.i.us.us.i, align 1, !tbaa !85 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0373187.i.us.us.i, i64 16
  %i.ea = load <8 x i16>, ptr %i.dz, align 1, !tbaa !85 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0373187.i.us.us.i, i64 32
  %i.ec = load <8 x i16>, ptr %i.eb, align 1, !tbaa !85 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0373187.i.us.us.i, i64 48
  %i.ee = load <8 x i16>, ptr %i.ed, align 1, !tbaa !85 ; 2 uses
  %i.ef = shufflevector <8 x i16> %i.dy, <8 x i16> %i.ea, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.eg = bitcast <8 x i16> %i.ef to <2 x i64>    ; 2 uses
  %i.eh = shufflevector <8 x i16> %i.dy, <8 x i16> %i.ea, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.ei = bitcast <8 x i16> %i.eh to <2 x i64>    ; 2 uses
  %i.ej = shufflevector <8 x i16> %i.ec, <8 x i16> %i.ee, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.ek = bitcast <8 x i16> %i.ej to <2 x i64>    ; 2 uses
  %i.el = shufflevector <8 x i16> %i.ec, <8 x i16> %i.ee, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.em = bitcast <8 x i16> %i.el to <2 x i64>    ; 2 uses
  %i.en = shufflevector <2 x i64> %i.eg, <2 x i64> %i.ek, <2 x i32> <i32 0, i32 2>
  %i.eo = shufflevector <2 x i64> %i.eg, <2 x i64> %i.ek, <2 x i32> <i32 1, i32 3>
  %i.ep = shufflevector <2 x i64> %i.ei, <2 x i64> %i.em, <2 x i32> <i32 0, i32 2>
  %i.eq = shufflevector <2 x i64> %i.ei, <2 x i64> %i.em, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.en, ptr %.7188.i.us.us.i, align 16, !tbaa !85
  %i.er = getelementptr inbounds nuw i8, ptr %.7188.i.us.us.i, i64 16
  store <2 x i64> %i.eo, ptr %i.er, align 16, !tbaa !85
  %i.es = getelementptr inbounds nuw i8, ptr %.7188.i.us.us.i, i64 32
  store <2 x i64> %i.ep, ptr %i.es, align 16, !tbaa !85
  %i.et = getelementptr inbounds nuw i8, ptr %.7188.i.us.us.i, i64 48
  store <2 x i64> %i.eq, ptr %i.et, align 16, !tbaa !85
  %i.eu = getelementptr inbounds nuw i8, ptr %.7188.i.us.us.i, i64 64 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0373187.i.us.us.i, i64 %i.cr
  %i.ew = add nuw nsw i32 %.0374186.i.us.us.i, 1  ; 2 uses
  %exitcond296.not.i.us.us.i = icmp eq i32 %i.ew, %i.cq
  br i1 %exitcond296.not.i.us.us.i, label %.loopexit160.i.loopexit.us.us.i, label %.lr.ph189.i.us.us.i, !llvm.loop !2287

.loopexit160.i.loopexit.us.us.i:                  ; preds = %.lr.ph189.i.us.us.i
  %indvars.iv.next299.i.us.us.i = add nuw nsw i64 %indvars.iv298.i.us.us.i, 8 ; 3 uses
  %i.ex = icmp slt i64 %indvars.iv.next299.i.us.us.i, %invariant.op.i.i
  br i1 %i.ex, label %_ZN4ncnn3MatD2Ev.exit396.i.us.us.i, label %.preheader158.loopexit.i.i, !llvm.loop !2288

end_hunk_0
begin_hunk_1_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %niter550 = phi i32 [ %niter550.next.1, %.lr.ph238.i.i ], [ 0, %.lr.ph238.i.i.preheader ]
  %i.xj = load i8, ptr %.0352236.i.i, align 1, !tbaa !85
  store i8 %i.xj, ptr %.21235.i.i, align 1, !tbaa !85
  %i.xk = getelementptr inbounds nuw i8, ptr %.0352236.i.i, i64 %i.bs ; 2 uses
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !85
  %i.xm = getelementptr inbounds nuw i8, ptr %.21235.i.i, i64 1
  store i8 %i.xl, ptr %i.xm, align 1, !tbaa !85
  %i.xn = getelementptr inbounds nuw i8, ptr %.0352236.i.i, i64 1
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !85
  %i.xp = getelementptr inbounds nuw i8, ptr %.21235.i.i, i64 2
  store i8 %i.xo, ptr %i.xp, align 1, !tbaa !85
  %i.xq = getelementptr i8, ptr %i.xk, i64 1
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !85
  %i.xs = getelementptr inbounds nuw i8, ptr %.21235.i.i, i64 3
  store i8 %i.xr, ptr %i.xs, align 1, !tbaa !85
  %i.xt = getelementptr inbounds nuw i8, ptr %.21235.i.i, i64 4
  %i.xu = getelementptr inbounds nuw i8, ptr %.0352236.i.i, i64 %i.no ; 4 uses
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !85
  store i8 %i.xv, ptr %i.xt, align 1, !tbaa !85
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xu, i64 %i.bs ; 2 uses
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !85
  %i.xy = getelementptr inbounds nuw i8, ptr %.21235.i.i, i64 5
  store i8 %i.xx, ptr %i.xy, align 1, !tbaa !85
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xu, i64 1
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !85
  %i.yb = getelementptr inbounds nuw i8, ptr %.21235.i.i, i64 6
  store i8 %i.ya, ptr %i.yb, align 1, !tbaa !85
  %i.yc = getelementptr i8, ptr %i.xw, i64 1
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !85
  %i.ye = getelementptr inbounds nuw i8, ptr %.21235.i.i, i64 7
  store i8 %i.yd, ptr %i.ye, align 1, !tbaa !85
  %i.yf = getelementptr inbounds nuw i8, ptr %.21235.i.i, i64 8 ; 3 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xu, i64 %i.no ; 3 uses
  %niter550.next.1 = add nuw nsw i32 %niter550, 2 ; 2 uses
  %niter550.ncmp.1.not = icmp eq i32 %niter550.next.1, %unroll_iter549
  br i1 %niter550.ncmp.1.not, label %.preheader151.i.i.loopexit.unr-lcssa, label %.lr.ph238.i.i, !llvm.loop !2322

.lr.ph245.i.i:                                    ; preds = %.lr.ph245.i.i.prol.loopexit, %.lr.ph245.i.i
  %.1244.i.i = phi i32 [ %i.zf, %.lr.ph245.i.i ], [ %.1244.i.i.unr, %.lr.ph245.i.i.prol.loopexit ]
  %.1353243.i.i = phi ptr [ %i.ze, %.lr.ph245.i.i ], [ %.1353243.i.i.unr, %.lr.ph245.i.i.prol.loopexit ] ; 3 uses
  %.22242.i.i = phi ptr [ %i.zd, %.lr.ph245.i.i ], [ %.22242.i.i.unr, %.lr.ph245.i.i.prol.loopexit ] ; 9 uses
  %i.yh = load i8, ptr %.1353243.i.i, align 1, !tbaa !85
  store i8 %i.yh, ptr %.22242.i.i, align 1, !tbaa !85
  %i.yi = getelementptr inbounds nuw i8, ptr %.1353243.i.i, i64 1
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !85
  %i.yk = getelementptr inbounds nuw i8, ptr %.22242.i.i, i64 1
  store i8 %i.yj, ptr %i.yk, align 1, !tbaa !85
  %i.yl = getelementptr inbounds nuw i8, ptr %.22242.i.i, i64 2
  %i.ym = getelementptr inbounds nuw i8, ptr %.1353243.i.i, i64 %i.bs ; 3 uses
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !85
  store i8 %i.yn, ptr %i.yl, align 1, !tbaa !85
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 1
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !85
  %i.yq = getelementptr inbounds nuw i8, ptr %.22242.i.i, i64 3
  store i8 %i.yp, ptr %i.yq, align 1, !tbaa !85
  %i.yr = getelementptr inbounds nuw i8, ptr %.22242.i.i, i64 4
  %i.ys = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.bs ; 3 uses
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !85
  store i8 %i.yt, ptr %i.yr, align 1, !tbaa !85
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 1
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !85
  %i.yw = getelementptr inbounds nuw i8, ptr %.22242.i.i, i64 5
  store i8 %i.yv, ptr %i.yw, align 1, !tbaa !85
  %i.yx = getelementptr inbounds nuw i8, ptr %.22242.i.i, i64 6
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.bs ; 3 uses
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !85
  store i8 %i.yz, ptr %i.yx, align 1, !tbaa !85
  %i.za = getelementptr inbounds nuw i8, ptr %i.yy, i64 1
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !85
  %i.zc = getelementptr inbounds nuw i8, ptr %.22242.i.i, i64 7
  store i8 %i.zb, ptr %i.zc, align 1, !tbaa !85
  %i.zd = getelementptr inbounds nuw i8, ptr %.22242.i.i, i64 8 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yy, i64 %i.bs
  %i.zf = add nuw nsw i32 %.1244.i.i, 4           ; 2 uses
  %exitcond307.not.i.i.3 = icmp eq i32 %i.zf, %.sroa.speculated
  br i1 %exitcond307.not.i.i.3, label %.loopexit152.i.i, label %.lr.ph245.i.i, !llvm.loop !2323

.loopexit152.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph233.i.i
  br i1 %lcmp.mod555.not, label %.loopexit152.i.i, label %.lr.ph233.i.i.epil.preheader

.lr.ph233.i.i.epil.preheader:                     ; preds = %.loopexit152.i.i.loopexit.unr-lcssa, %.lr.ph233.preheader.i.i
  %.19232.i.i.epil.init = phi ptr [ %.18248.i.i, %.lr.ph233.preheader.i.i ], [ %i.wc, %.loopexit152.i.i.loopexit.unr-lcssa ]
  %.0362230.i.i.epil.init = phi ptr [ %i.up, %.lr.ph233.preheader.i.i ], [ %i.wd, %.loopexit152.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod557)
  br label %.lr.ph233.i.i.epil

.lr.ph233.i.i.epil:                               ; preds = %.lr.ph233.i.i.epil, %.lr.ph233.i.i.epil.preheader
  %.19232.i.i.epil = phi ptr [ %i.zo, %.lr.ph233.i.i.epil ], [ %.19232.i.i.epil.init, %.lr.ph233.i.i.epil.preheader ] ; 2 uses
  %.0362230.i.i.epil = phi ptr [ %i.zp, %.lr.ph233.i.i.epil ], [ %.0362230.i.i.epil.init, %.lr.ph233.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph233.i.i.epil ], [ 0, %.lr.ph233.i.i.epil.preheader ]
  %i.zg = load i64, ptr %.0362230.i.i.epil, align 1, !tbaa !85
  %i.zh = insertelement <2 x i64> poison, i64 %i.zg, i64 0
  %i.zi = getelementptr inbounds nuw i8, ptr %.0362230.i.i.epil, i64 8
  %i.zj = load i64, ptr %i.zi, align 1, !tbaa !85
  %i.zk = insertelement <2 x i64> poison, i64 %i.zj, i64 0
  %i.zl = bitcast <2 x i64> %i.zh to <8 x i16>
  %i.zm = bitcast <2 x i64> %i.zk to <8 x i16>
  %i.zn = shufflevector <8 x i16> %i.zl, <8 x i16> %i.zm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.zn, ptr %.19232.i.i.epil, align 1, !tbaa !85
  %i.zo = getelementptr inbounds nuw i8, ptr %.19232.i.i.epil, i64 16 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %.0362230.i.i.epil, i64 %i.nl
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter554
  br i1 %epil.iter.cmp.not, label %.loopexit152.i.i, label %.lr.ph233.i.i.epil, !llvm.loop !2324

.loopexit152.i.i:                                 ; preds = %.lr.ph245.i.i.prol.loopexit, %.lr.ph245.i.i, %.loopexit152.i.i.loopexit.unr-lcssa, %.lr.ph233.i.i.epil, %.preheader151.i.i, %_ZN4ncnn3MatD2Ev.exit392.i.i, %bb.l
  %.23.i.i = phi ptr [ %.18248.i.i, %bb.l ], [ %.21.lcssa.i.i, %.preheader151.i.i ], [ %i.zo, %.lr.ph233.i.i.epil ], [ %.18248.i.i, %_ZN4ncnn3MatD2Ev.exit392.i.i ], [ %i.wc, %.loopexit152.i.i.loopexit.unr-lcssa ], [ %.lcssa516.unr, %.lr.ph245.i.i.prol.loopexit ], [ %i.zd, %.lr.ph245.i.i ] ; 2 uses
  %indvars.iv.next309.i.i = add nuw nsw i64 %indvars.iv308.i.i, 2 ; 3 uses
  %i.zq = icmp slt i64 %indvars.iv.next309.i.i, %invariant.op359.i.i
  br i1 %i.zq, label %bb.l, label %.preheader.loopexit.i.i, !llvm.loop !2325

_ZN4ncnn3MatD2Ev.exit.i.i:                        ; preds = %..loopexit_crit_edge.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i
  %indvars.iv312.i.i = phi i64 [ %i.ud, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %indvars.iv.next313.i.i, %..loopexit_crit_edge.i.i ] ; 2 uses
  %.24263.i.i = phi ptr [ %.18.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %.lcssa518, %..loopexit_crit_edge.i.i ] ; 2 uses
  %i.zr = load ptr, ptr %9, align 8, !tbaa !22, !noalias !2373
  %i.zs = load i64, ptr %i.x, align 8, !tbaa !23, !noalias !2373
  %i.zt = mul i64 %i.zs, %i.sl
  %i.zu = load i64, ptr %i.aa, align 8, !tbaa !64, !noalias !2373
  %i.zv = mul i64 %i.zt, %i.zu
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zr, i64 %i.zv
  %i.zx = getelementptr i8, ptr %i.zw, i64 %indvars.iv312.i.i
  %i.zy = getelementptr i8, ptr %i.zx, i64 %i.ue  ; 2 uses
  br i1 %i.ug, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit.i.i.new

_ZN4ncnn3MatD2Ev.exit.i.i.new:                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i.new
  %.0348258.i.i = phi ptr [ %i.aaw, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %i.zy, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 2 uses
  %.27257.i.i = phi ptr [ %i.aav, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %.24263.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 9 uses
  %niter566 = phi i32 [ %niter566.next.7, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit.i.i ]
  %i.zz = load i8, ptr %.0348258.i.i, align 1, !tbaa !85
  store i8 %i.zz, ptr %.27257.i.i, align 1, !tbaa !85
  %i.aaa = getelementptr inbounds nuw i8, ptr %.27257.i.i, i64 1
  %i.aab = getelementptr inbounds nuw i8, ptr %.0348258.i.i, i64 %i.bs ; 2 uses
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !85
  store i8 %i.aac, ptr %i.aaa, align 1, !tbaa !85
  %i.aad = getelementptr inbounds nuw i8, ptr %.27257.i.i, i64 2
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aab, i64 %i.bs ; 2 uses
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !85
  store i8 %i.aaf, ptr %i.aad, align 1, !tbaa !85
  %i.aag = getelementptr inbounds nuw i8, ptr %.27257.i.i, i64 3
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aae, i64 %i.bs ; 2 uses
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !85
  store i8 %i.aai, ptr %i.aag, align 1, !tbaa !85
  %i.aaj = getelementptr inbounds nuw i8, ptr %.27257.i.i, i64 4
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aah, i64 %i.bs ; 2 uses
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !85
  store i8 %i.aal, ptr %i.aaj, align 1, !tbaa !85
  %i.aam = getelementptr inbounds nuw i8, ptr %.27257.i.i, i64 5
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aak, i64 %i.bs ; 2 uses
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !85
  store i8 %i.aao, ptr %i.aam, align 1, !tbaa !85
  %i.aap = getelementptr inbounds nuw i8, ptr %.27257.i.i, i64 6
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.bs ; 2 uses
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !85
  store i8 %i.aar, ptr %i.aap, align 1, !tbaa !85
  %i.aas = getelementptr inbounds nuw i8, ptr %.27257.i.i, i64 7
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aaq, i64 %i.bs ; 2 uses
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !85
  store i8 %i.aau, ptr %i.aas, align 1, !tbaa !85
  %i.aav = getelementptr inbounds nuw i8, ptr %.27257.i.i, i64 8 ; 3 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aat, i64 %i.bs ; 2 uses
  %niter566.next.7 = add i32 %niter566, 8         ; 2 uses
  %niter566.ncmp.7 = icmp eq i32 %niter566.next.7, %unroll_iter565
  br i1 %niter566.ncmp.7, label %..loopexit_crit_edge.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit.i.i.new, !llvm.loop !2328

..loopexit_crit_edge.i.i.unr-lcssa:               ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i.new
  br i1 %lcmp.mod562.not, label %..loopexit_crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit.i.i
  %.0348258.i.i.epil.init = phi ptr [ %i.zy, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.aaw, %..loopexit_crit_edge.i.i.unr-lcssa ]
  %.27257.i.i.epil.init = phi ptr [ %.24263.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.aav, %..loopexit_crit_edge.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod564)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %.0348258.i.i.epil = phi ptr [ %.0348258.i.i.epil.init, %.epil.preheader ], [ %i.aaz, %bb.m ] ; 2 uses
  %.27257.i.i.epil = phi ptr [ %.27257.i.i.epil.init, %.epil.preheader ], [ %i.aay, %bb.m ] ; 2 uses
  %epil.iter561 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter561.next, %bb.m ]
  %i.aax = load i8, ptr %.0348258.i.i.epil, align 1, !tbaa !85
  store i8 %i.aax, ptr %.27257.i.i.epil, align 1, !tbaa !85
  %i.aay = getelementptr inbounds nuw i8, ptr %.27257.i.i.epil, i64 1 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %.0348258.i.i.epil, i64 %i.bs
  %epil.iter561.next = add i32 %epil.iter561, 1   ; 2 uses
  %epil.iter561.cmp.not = icmp eq i32 %epil.iter561.next, %xtraiter560
  br i1 %epil.iter561.cmp.not, label %..loopexit_crit_edge.i.i, label %bb.m, !llvm.loop !2329

..loopexit_crit_edge.i.i:                         ; preds = %bb.m, %..loopexit_crit_edge.i.i.unr-lcssa
  %.lcssa518 = phi ptr [ %i.aav, %..loopexit_crit_edge.i.i.unr-lcssa ], [ %i.aay, %bb.m ]
  %indvars.iv.next313.i.i = add nuw nsw i64 %indvars.iv312.i.i, 1 ; 2 uses
  %exitcond315.not.i.i = icmp eq i64 %indvars.iv.next313.i.i, %wide.trip.count.i.i
  br i1 %exitcond315.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit.i.i, !llvm.loop !2315

bb.n:                                             ; preds = %bb.h
  %i.aba = load i32, ptr %i.y, align 4, !tbaa !74 ; 11 uses
  %i.abb = load i32, ptr %i.z, align 8, !tbaa !65 ; 10 uses
  %i.abc = add nsw i32 %i.bc, -1
  %i.abd = mul nsw i32 %i.be, %i.abc
  %.neg.i.i = xor i32 %i.abd, -1
  %i.abe = add i32 %i.aba, %.neg.i.i
  %i.abf = sdiv i32 %i.abe, %i.bg                 ; 3 uses
  %i.abg = add nsw i32 %i.abf, 1                  ; 8 uses
  %i.abh = mul nsw i32 %i.bd, %i.bc               ; 48 uses
  %i.abi = icmp eq i32 %i.abf, 0
  br i1 %i.abi, label %_ZN17FastDivider_epu32C2Ej.exit1295.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.abj = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.abf, i1 true) ; 3 uses
  %i.abk = sub nuw nsw i32 32, %i.abj
  %i.abl = icmp eq i32 %i.abj, 0
  %i.abm = shl nuw i32 1, %i.abk
  %i.abn = select i1 %i.abl, i32 0, i32 %i.abm
  %i.abo = sub i32 %i.abn, %i.abg
  %i.abp = zext i32 %i.abo to i64
  %i.abq = shl nuw i64 %i.abp, 32
  %i.abr = zext i32 %i.abg to i64
  %i.abs = udiv i64 %i.abq, %i.abr
  %i.abt = trunc i64 %i.abs to i32
  %i.abu = add i32 %i.abt, 1
  %i.abv = xor i32 %i.abj, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit1295.i.i

_ZN17FastDivider_epu32C2Ej.exit1295.i.i:          ; preds = %bb.o, %bb.n
  %.012.i1292.i.i = phi i32 [ %i.abv, %bb.o ], [ 0, %bb.n ]
  %.011.i1293.i.i = phi i32 [ 1, %bb.o ], [ 0, %bb.n ]
  %.0.i1294.i.i = phi i32 [ %i.abu, %bb.o ], [ 1, %bb.n ]
  %i.abw = insertelement <16 x i32> poison, i32 %.0.i1294.i.i, i64 0
  %i.abx = shufflevector <16 x i32> %i.abw, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.aby = bitcast <16 x i32> %i.abx to <8 x i64> ; 2 uses
  %i.abz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i1293.i.i, i64 0 ; 3 uses
  %i.aca = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i1292.i.i, i64 0 ; 3 uses
  %i.acb = icmp sgt i32 %.sroa.speculated63, 15
  br i1 %i.acb, label %.lr.ph126.i.i, label %.preheader89.i.i

.lr.ph126.i.i:                                    ; preds = %_ZN17FastDivider_epu32C2Ej.exit1295.i.i
  %i.acc = bitcast <16 x i32> %i.abx to <8 x i64>
  %i.acd = and <8 x i64> %i.acc, splat (i64 4294967295) ; 2 uses
  %i.ace = shufflevector <4 x i32> %i.abz, <4 x i32> poison, <16 x i32> zeroinitializer
  %i.acf = insertelement <16 x i32> poison, i32 %i.abg, i64 0
  %i.acg = shufflevector <16 x i32> %i.acf, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ach = insertelement <16 x i32> poison, i32 %i.bg, i64 0
  %i.aci = shufflevector <16 x i32> %i.ach, <16 x i32> poison, <16 x i32> zeroinitializer
  %.scalar.i.i = mul i32 %i.aba, %i.bh
  %i.acj = insertelement <16 x i32> poison, i32 %.scalar.i.i, i64 0
  %i.ack = shufflevector <16 x i32> %i.acj, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.acl = icmp eq i32 %i.abb, 1                  ; 2 uses
  %i.acm = icmp sgt i32 %.sroa.speculated, 1      ; 2 uses
  %i.acn = mul i32 %i.aba, %i.bf                  ; 7 uses
  %i.aco = trunc i64 %i.bs to i32                 ; 3 uses
  %i.acp = icmp ne i32 %i.abb, 8
  %i.acq = sdiv i32 %.sroa.speculated, 8          ; 2 uses
  %i.acr = icmp slt i32 %.sroa.speculated, 8
  %i.acs = sdiv i32 %i.ah, 8                      ; 2 uses
  %brmerge242.i.i = or i1 %i.acr, %i.acp          ; 2 uses
  %i.act = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.acu = insertelement <2 x i32> %i.act, i32 %i.abh, i64 1
  %i.acv = insertelement <2 x i32> poison, i32 %i.acn, i64 0
  %i.acw = insertelement <2 x i32> %i.acv, i32 %i.aco, i64 1
  %i.acx = insertelement <2 x i32> poison, i32 %i.abh, i64 0
  %i.acy = shufflevector <2 x i32> %i.acx, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.acz = insertelement <2 x i32> poison, i32 %i.bc, i64 0 ; 2 uses
  %i.ada = shufflevector <2 x i32> %i.acz, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.adb = insertelement <2 x i32> poison, i32 %i.be, i64 0
  %i.adc = shufflevector <2 x i32> %i.adb, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.add = insertelement <2 x i32> %i.acz, i32 %i.abh, i64 1 ; 2 uses
  %i.ade = insertelement <2 x i32> poison, i32 %i.acn, i64 0
  %i.adf = insertelement <2 x i32> %i.ade, i32 %i.aco, i64 1 ; 2 uses
  %i.adg = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.adh = insertelement <2 x i32> %i.adg, i32 %i.abh, i64 1
  %i.adi = insertelement <2 x i32> poison, i32 %i.acn, i64 0
  %i.adj = insertelement <2 x i32> %i.adi, i32 %i.aco, i64 1
  %17 = insertelement <2 x i32> poison, i32 %i.abh, i64 0
  %18 = shufflevector <2 x i32> %17, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.adk = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.adl = shufflevector <2 x i32> %i.adk, <2 x i32> poison, <2 x i32> zeroinitializer
  %19 = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %20 = shufflevector <2 x i64> %19, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.p

.preheader89.i.i:                                 ; preds = %.loopexit91.i.i, %_ZN17FastDivider_epu32C2Ej.exit1295.i.i
  %.01253.lcssa.i.i = phi i32 [ 0, %_ZN17FastDivider_epu32C2Ej.exit1295.i.i ], [ %i.alu, %.loopexit91.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.val.i, %_ZN17FastDivider_epu32C2Ej.exit1295.i.i ], [ %.10.i.i, %.loopexit91.i.i ] ; 2 uses
  %i.adm = or disjoint i32 %.01253.lcssa.i.i, 7
  %i.adn = icmp slt i32 %i.adm, %.sroa.speculated63
  br i1 %i.adn, label %.lr.ph157.i.i, label %.preheader78.i.i

.lr.ph157.i.i:                                    ; preds = %.preheader89.i.i
  %i.ado = shufflevector <8 x i64> %i.aby, <8 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.adp = and <4 x i64> %i.ado, splat (i64 4294967295) ; 2 uses
  %i.adq = shufflevector <4 x i32> %i.abz, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.adr = insertelement <8 x i32> poison, i32 %i.abg, i64 0
  %i.ads = shufflevector <8 x i32> %i.adr, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.adt = insertelement <8 x i32> poison, i32 %i.bg, i64 0
  %i.adu = shufflevector <8 x i32> %i.adt, <8 x i32> poison, <8 x i32> zeroinitializer
  %.scalar324.i.i = mul i32 %i.aba, %i.bh
  %i.adv = insertelement <8 x i32> poison, i32 %.scalar324.i.i, i64 0
  %i.adw = shufflevector <8 x i32> %i.adv, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.adx = icmp eq i32 %i.abb, 1                  ; 2 uses
  %i.ady = icmp sgt i32 %.sroa.speculated, 1      ; 2 uses
  %i.adz = mul i32 %i.aba, %i.bf                  ; 7 uses
  %i.aea = trunc i64 %i.bs to i32                 ; 3 uses
  %i.aeb = icmp ne i32 %i.abb, 8
  %i.aec = sdiv i32 %.sroa.speculated, 8          ; 2 uses
  %i.aed = icmp slt i32 %.sroa.speculated, 8
  %i.aee = sdiv i32 %i.ah, 8                      ; 2 uses
  %brmerge248.i.i = or i1 %i.aed, %i.aeb          ; 2 uses
  %i.aef = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.aeg = insertelement <2 x i32> %i.aef, i32 %i.abh, i64 1
  %i.aeh = insertelement <2 x i32> poison, i32 %i.adz, i64 0
  %i.aei = insertelement <2 x i32> %i.aeh, i32 %i.aea, i64 1
  %i.aej = insertelement <2 x i32> poison, i32 %i.abh, i64 0
  %i.aek = shufflevector <2 x i32> %i.aej, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ael = insertelement <2 x i32> poison, i32 %i.bc, i64 0 ; 2 uses
  %i.aem = shufflevector <2 x i32> %i.ael, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aen = insertelement <2 x i32> poison, i32 %i.be, i64 0
  %i.aeo = shufflevector <2 x i32> %i.aen, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aep = insertelement <2 x i32> %i.ael, i32 %i.abh, i64 1 ; 2 uses
  %i.aeq = insertelement <2 x i32> poison, i32 %i.adz, i64 0
  %i.aer = insertelement <2 x i32> %i.aeq, i32 %i.aea, i64 1 ; 2 uses
  %i.aes = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.aet = insertelement <2 x i32> %i.aes, i32 %i.abh, i64 1
  %i.aeu = insertelement <2 x i32> poison, i32 %i.adz, i64 0
  %i.aev = insertelement <2 x i32> %i.aeu, i32 %i.aea, i64 1
  %21 = insertelement <2 x i32> poison, i32 %i.abh, i64 0
  %22 = shufflevector <2 x i32> %21, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aew = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.aex = shufflevector <2 x i32> %i.aew, <2 x i32> poison, <2 x i32> zeroinitializer
  %23 = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %24 = shufflevector <2 x i64> %23, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.v

bb.p:                                             ; preds = %.loopexit91.i.i, %.lr.ph126.i.i
  %.0125.i.i = phi ptr [ %.val.i, %.lr.ph126.i.i ], [ %.10.i.i, %.loopexit91.i.i ] ; 8 uses
  %.01253124.i.i = phi i32 [ 0, %.lr.ph126.i.i ], [ %i.alu, %.loopexit91.i.i ] ; 2 uses
  %i.aey = add nsw i32 %.01253124.i.i, %i.af
  %i.aez = insertelement <16 x i32> poison, i32 %i.aey, i64 0
  %i.afa = shufflevector <16 x i32> %i.aez, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.afb = add <16 x i32> %i.afa, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.afc = bitcast <16 x i32> %i.afb to <8 x i64>
  %i.afd = bitcast <16 x i32> %i.afb to <8 x i64>
  %i.afe = and <8 x i64> %i.afd, splat (i64 4294967295)
  %i.aff = mul nuw <8 x i64> %i.afe, %i.acd
  %i.afg = lshr <8 x i64> %i.aff, splat (i64 32)
  %i.afh = lshr <8 x i64> %i.afc, splat (i64 32)
  %i.afi = mul nuw <8 x i64> %i.afh, %i.acd
  %i.afj = bitcast <8 x i64> %i.afi to <16 x i32>
  %i.afk = bitcast <8 x i64> %i.afg to <16 x i32>
  %i.afl = shufflevector <16 x i32> %i.afk, <16 x i32> %i.afj, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31> ; 2 uses
  %i.afm = sub <16 x i32> %i.afb, %i.afl
  %i.afn = lshr <16 x i32> %i.afm, %i.ace
  %i.afo = add <16 x i32> %i.afn, %i.afl
  %i.afp = call <16 x i32> @llvm.x86.avx512.psrl.d.512(<16 x i32> %i.afo, <4 x i32> %i.aca) ; 2 uses
  %i.afq = mul <16 x i32> %i.afp, %i.acg
  %i.afr = sub <16 x i32> %i.afb, %i.afq
  %i.afs = mul <16 x i32> %i.afr, %i.aci          ; 2 uses
  %i.aft = mul <16 x i32> %i.afp, %i.ack          ; 4 uses
  %i.afu = add <16 x i32> %i.afs, %i.aft          ; 4 uses
  %shift = shufflevector <16 x i32> %i.aft, <16 x i32> poison, <16 x i32> <i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afv = icmp eq <16 x i32> %i.aft, %shift
  %i.afw = extractelement <16 x i1> %i.afv, i64 0
  %or.cond.i.i = and i1 %i.bp, %i.afw
  br i1 %or.cond.i.i, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %foldExtExtBinop = add nsw <16 x i32> %i.afs, %i.aft
  %i.afx = extractelement <16 x i32> %foldExtExtBinop, i64 0 ; 3 uses
  br i1 %i.acl, label %.preheader94.i.i, label %.loopexit93.i.i

.preheader94.i.i:                                 ; preds = %bb.q
  br i1 %i.acm, label %.lr.ph113.i.i, label %.preheader92.i.i

.lr.ph113.i.i:                                    ; preds = %.preheader94.i.i
  %i.afy = sext i32 %i.afx to i64                 ; 2 uses
  br label %bb.r

.preheader92.i.i:                                 ; preds = %bb.r, %.preheader94.i.i
  %.01258.lcssa.i.i = phi i32 [ 0, %.preheader94.i.i ], [ %i.agy, %bb.r ] ; 2 uses
  %.1.lcssa.i.i = phi ptr [ %.0125.i.i, %.preheader94.i.i ], [ %i.agx, %bb.r ] ; 2 uses
  %i.afz = icmp slt i32 %.01258.lcssa.i.i, %.sroa.speculated
  br i1 %i.afz, label %.lr.ph118.i.i, label %.loopexit91.i.i

.lr.ph118.i.i:                                    ; preds = %.preheader92.i.i
  %i.aga = sext i32 %i.afx to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.r, %.lr.ph113.i.i
  %.1112.i.i = phi ptr [ %.0125.i.i, %.lr.ph113.i.i ], [ %i.agx, %bb.r ] ; 3 uses
  %.01258111.i.i = phi i32 [ 0, %.lr.ph113.i.i ], [ %i.agy, %bb.r ] ; 2 uses
  %i.agb = add nsw i32 %.01258111.i.i, %i.ah      ; 2 uses
  %i.agc = add nsw i32 %i.agb, 1
  %25 = insertelement <2 x i32> poison, i32 %i.agb, i64 0
  %26 = insertelement <2 x i32> %25, i32 %i.agc, i64 1
  %.frozen = freeze <2 x i32> %26                 ; 2 uses
  %.frozen647 = freeze <2 x i32> %18              ; 2 uses
  %27 = sdiv <2 x i32> %.frozen, %.frozen647      ; 2 uses
  %28 = mul <2 x i32> %27, %.frozen647
  %.decomposed = sub <2 x i32> %.frozen, %28      ; 3 uses
  %29 = extractelement <2 x i32> %.decomposed, i64 0
  %30 = sdiv i32 %29, %i.bc
  %31 = extractelement <2 x i32> %.decomposed, i64 1
  %32 = sdiv i32 %31, %i.bc
  %33 = srem <2 x i32> %.decomposed, %i.adl       ; 2 uses
  %34 = mul i32 %30, %i.acn
  %35 = extractelement <2 x i32> %33, i64 0
  %36 = mul nsw i32 %35, %i.be
  %37 = add nsw i32 %36, %34
  %38 = sext i32 %37 to i64
  %i.agd = sext <2 x i32> %27 to <2 x i64>
  %i.age = mul <2 x i64> %20, %i.agd              ; 2 uses
  %i.agf = mul i32 %32, %i.acn
  %39 = extractelement <2 x i32> %33, i64 1
  %i.agg = mul nsw i32 %39, %i.be
  %i.agh = add nsw i32 %i.agg, %i.agf
  %i.agi = sext i32 %i.agh to i64
  %i.agj = load ptr, ptr %9, align 8, !tbaa !22   ; 2 uses
  %i.agk = extractelement <2 x i64> %i.age, i64 0
  %i.agl = getelementptr i8, ptr %i.agj, i64 %i.agk
  %i.agm = getelementptr i8, ptr %i.agl, i64 %i.afy
  %i.agn = getelementptr i8, ptr %i.agm, i64 %38
  %i.ago = load <16 x i8>, ptr %i.agn, align 1, !tbaa !85 ; 2 uses
  %i.agp = extractelement <2 x i64> %i.age, i64 1
  %i.agq = getelementptr i8, ptr %i.agj, i64 %i.agp
  %i.agr = getelementptr i8, ptr %i.agq, i64 %i.afy
  %i.ags = getelementptr i8, ptr %i.agr, i64 %i.agi
  %i.agt = load <16 x i8>, ptr %i.ags, align 1, !tbaa !85 ; 2 uses
  %i.agu = shufflevector <16 x i8> %i.ago, <16 x i8> %i.agt, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.agv = shufflevector <16 x i8> %i.ago, <16 x i8> %i.agt, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.agu, ptr %.1112.i.i, align 16, !tbaa !85
  %i.agw = getelementptr inbounds nuw i8, ptr %.1112.i.i, i64 16
  store <16 x i8> %i.agv, ptr %i.agw, align 16, !tbaa !85
  %i.agx = getelementptr inbounds nuw i8, ptr %.1112.i.i, i64 32 ; 2 uses
  %i.agy = add nuw nsw i32 %.01258111.i.i, 2      ; 3 uses
  %i.agz = or disjoint i32 %i.agy, 1
  %i.aha = icmp slt i32 %i.agz, %.sroa.speculated
  br i1 %i.aha, label %bb.r, label %.preheader92.i.i, !llvm.loop !2330

bb.s:                                             ; preds = %bb.s, %.lr.ph118.i.i
  %.2117.i.i = phi ptr [ %.1.lcssa.i.i, %.lr.ph118.i.i ], [ %i.ahr, %bb.s ] ; 2 uses
  %.11259116.i.i = phi i32 [ %.01258.lcssa.i.i, %.lr.ph118.i.i ], [ %i.ahs, %bb.s ] ; 2 uses
  %i.ahb = add nsw i32 %.11259116.i.i, %i.ah      ; 2 uses
  %i.ahc = sdiv i32 %i.ahb, %i.abh
  %i.ahd = srem i32 %i.ahb, %i.abh                ; 2 uses
  %i.ahe = sdiv i32 %i.ahd, %i.bc
  %i.ahf = srem i32 %i.ahd, %i.bc
  %i.ahg = sext i32 %i.ahc to i64
  %i.ahh = mul i64 %i.bs, %i.ahg
  %i.ahi = mul i32 %i.ahe, %i.acn
  %i.ahj = mul nsw i32 %i.ahf, %i.be
  %i.ahk = add nsw i32 %i.ahj, %i.ahi
  %i.ahl = sext i32 %i.ahk to i64
  %i.ahm = load ptr, ptr %9, align 8, !tbaa !22
  %i.ahn = getelementptr i8, ptr %i.ahm, i64 %i.ahh
  %i.aho = getelementptr i8, ptr %i.ahn, i64 %i.aga
  %i.ahp = getelementptr i8, ptr %i.aho, i64 %i.ahl
  %i.ahq = load <2 x i64>, ptr %i.ahp, align 1, !tbaa !85
  store <2 x i64> %i.ahq, ptr %.2117.i.i, align 16, !tbaa !85
  %i.ahr = getelementptr inbounds nuw i8, ptr %.2117.i.i, i64 16 ; 2 uses
  %i.ahs = add nuw nsw i32 %.11259116.i.i, 1      ; 2 uses
  %exitcond307.not.i84.i = icmp eq i32 %i.ahs, %.sroa.speculated
  br i1 %exitcond307.not.i84.i, label %.loopexit91.i.i, label %bb.s, !llvm.loop !2331

.loopexit93.i.i:                                  ; preds = %bb.q
  br i1 %brmerge242.i.i, label %.loopexit91.i.i, label %.lr.ph122.i.i

.lr.ph122.i.i:                                    ; preds = %.loopexit93.i.i
  %i.aht = sext i32 %i.afx to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph122.i.i
  %.4121.i.i = phi ptr [ %.0125.i.i, %.lr.ph122.i.i ], [ %i.aiq, %bb.t ] ; 3 uses
  %.01260120.i.i = phi i32 [ 0, %.lr.ph122.i.i ], [ %i.air, %bb.t ] ; 2 uses
  %i.ahu = add nsw i32 %.01260120.i.i, %i.acs     ; 2 uses
  %i.ahv = sdiv i32 %i.ahu, %i.abh
  %i.ahw = srem i32 %i.ahu, %i.abh                ; 2 uses
  %i.ahx = sdiv i32 %i.ahw, %i.bc
  %i.ahy = srem i32 %i.ahw, %i.bc
  %i.ahz = sext i32 %i.ahv to i64
  %i.aia = mul i64 %i.bs, %i.ahz
  %i.aib = add i64 %i.aia, %i.aht
  %i.aic = mul i32 %i.ahx, %i.acn
  %i.aid = mul nsw i32 %i.ahy, %i.be
  %i.aie = add nsw i32 %i.aid, %i.aic
  %i.aif = sext i32 %i.aie to i64
  %i.aig = add i64 %i.aib, %i.aif
  %i.aih = shl i64 %i.aig, 3
  %i.aii = load ptr, ptr %9, align 8, !tbaa !22
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 %i.aih ; 2 uses
  %i.aik = load <32 x i16>, ptr %i.aij, align 1, !tbaa !85 ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aij, i64 64
  %i.aim = load <32 x i16>, ptr %i.ail, align 1, !tbaa !85 ; 2 uses
  %i.ain = shufflevector <32 x i16> %i.aik, <32 x i16> %i.aim, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %i.aio = shufflevector <32 x i16> %i.aik, <32 x i16> %i.aim, <32 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  store <32 x i16> %i.ain, ptr %.4121.i.i, align 1, !tbaa !85
  %i.aip = getelementptr inbounds nuw i8, ptr %.4121.i.i, i64 64
  store <32 x i16> %i.aio, ptr %i.aip, align 1, !tbaa !85
  %i.aiq = getelementptr inbounds nuw i8, ptr %.4121.i.i, i64 128 ; 2 uses
  %i.air = add nuw nsw i32 %.01260120.i.i, 1      ; 2 uses
  %exitcond308.not.i.i = icmp eq i32 %i.air, %i.acq
  br i1 %exitcond308.not.i.i, label %.loopexit91.i.i, label %bb.t, !llvm.loop !2332

bb.u:                                             ; preds = %bb.p
  br i1 %i.acl, label %.preheader99.i.i, label %.loopexit98.i.i

.preheader99.i.i:                                 ; preds = %bb.u
  br i1 %i.acm, label %.lr.ph.i83.i, label %.preheader97.i.i

.preheader97.i.i:                                 ; preds = %.lr.ph.i83.i, %.preheader99.i.i
  %.01261.lcssa.i.i = phi i32 [ 0, %.preheader99.i.i ], [ %i.ajz, %.lr.ph.i83.i ] ; 2 uses
  %.6.lcssa.i81.i = phi ptr [ %.0125.i.i, %.preheader99.i.i ], [ %i.ajy, %.lr.ph.i83.i ] ; 2 uses
  %i.ais = icmp slt i32 %.01261.lcssa.i.i, %.sroa.speculated
  br i1 %i.ais, label %.lr.ph105.i.i, label %.loopexit91.i.i

.lr.ph.i83.i:                                     ; preds = %.preheader99.i.i, %.lr.ph.i83.i
  %.6101.i.i = phi ptr [ %i.ajy, %.lr.ph.i83.i ], [ %.0125.i.i, %.preheader99.i.i ] ; 3 uses
  %.01261100.i.i = phi i32 [ %i.ajz, %.lr.ph.i83.i ], [ 0, %.preheader99.i.i ] ; 2 uses
  %i.ait = add nsw i32 %.01261100.i.i, %i.ah      ; 3 uses
  %i.aiu = add nsw i32 %i.ait, 1                  ; 2 uses
  %i.aiv = insertelement <2 x i32> poison, i32 %i.ait, i64 0
  %i.aiw = insertelement <2 x i32> %i.aiv, i32 %i.aiu, i64 1
  %i.aix = srem <2 x i32> %i.aiw, %i.acy          ; 3 uses
  %i.aiy = srem <2 x i32> %i.aix, %i.ada
  %i.aiz = mul nsw <2 x i32> %i.aiy, %i.adc       ; 2 uses
  %i.aja = insertelement <2 x i32> %i.aix, i32 %i.ait, i64 1
  %i.ajb = sdiv <2 x i32> %i.aja, %i.add
  %i.ajc = mul <2 x i32> %i.ajb, %i.adf           ; 2 uses
  %shift384 = shufflevector <2 x i32> %i.ajc, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop385 = add <2 x i32> %i.ajc, %shift384
  %foldExtExtBinop387 = add <2 x i32> %foldExtExtBinop385, %i.aiz
  %i.ajd = shufflevector <2 x i32> %foldExtExtBinop387, <2 x i32> poison, <16 x i32> zeroinitializer
  %i.aje = add <16 x i32> %i.ajd, %i.afu
  %i.ajf = shufflevector <2 x i32> %i.aix, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.ajg = insertelement <2 x i32> %i.ajf, i32 %i.aiu, i64 1
  %i.ajh = sdiv <2 x i32> %i.ajg, %i.add
  %i.aji = mul <2 x i32> %i.ajh, %i.adf           ; 2 uses
  %i.ajj = shufflevector <2 x i32> %i.aji, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajk = shufflevector <2 x i32> %i.aji, <2 x i32> poison, <16 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajl = add <16 x i32> %i.ajj, %i.ajk
  %i.ajm = shufflevector <16 x i32> %i.ajl, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ajn = shufflevector <2 x i32> %i.aiz, <2 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ajo = add <16 x i32> %i.ajm, %i.ajn
  %i.ajp = add <16 x i32> %i.ajo, %i.afu
  %i.ajq = load ptr, ptr %9, align 8, !tbaa !22   ; 2 uses
  %i.ajr = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.ajq, <16 x i32> %i.aje, <16 x i1> splat (i1 true), i32 1)
  %i.ajs = trunc <16 x i32> %i.ajr to <16 x i8>   ; 2 uses
  %i.ajt = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.ajq, <16 x i32> %i.ajp, <16 x i1> splat (i1 true), i32 1)
  %i.aju = trunc <16 x i32> %i.ajt to <16 x i8>   ; 2 uses
  %i.ajv = shufflevector <16 x i8> %i.ajs, <16 x i8> %i.aju, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ajw = shufflevector <16 x i8> %i.ajs, <16 x i8> %i.aju, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ajv, ptr %.6101.i.i, align 16, !tbaa !85
  %i.ajx = getelementptr inbounds nuw i8, ptr %.6101.i.i, i64 16
  store <16 x i8> %i.ajw, ptr %i.ajx, align 16, !tbaa !85
  %i.ajy = getelementptr inbounds nuw i8, ptr %.6101.i.i, i64 32 ; 2 uses
  %i.ajz = add nuw nsw i32 %.01261100.i.i, 2      ; 3 uses
  %i.aka = or disjoint i32 %i.ajz, 1
  %i.akb = icmp slt i32 %i.aka, %.sroa.speculated
  br i1 %i.akb, label %.lr.ph.i83.i, label %.preheader97.i.i, !llvm.loop !2333

.lr.ph105.i.i:                                    ; preds = %.preheader97.i.i, %.lr.ph105.i.i
  %.7104.i.i = phi ptr [ %i.aks, %.lr.ph105.i.i ], [ %.6.lcssa.i81.i, %.preheader97.i.i ] ; 2 uses
  %.11262103.i.i = phi i32 [ %i.akt, %.lr.ph105.i.i ], [ %.01261.lcssa.i.i, %.preheader97.i.i ] ; 2 uses
  %i.akc = add nsw i32 %.11262103.i.i, %i.ah      ; 2 uses
  %i.akd = srem i32 %i.akc, %i.abh                ; 2 uses
  %i.ake = srem i32 %i.akd, %i.bc
  %i.akf = mul nsw i32 %i.ake, %i.be
  %i.akg = insertelement <2 x i32> poison, i32 %i.akd, i64 0
  %i.akh = insertelement <2 x i32> %i.akg, i32 %i.akc, i64 1
  %i.aki = sdiv <2 x i32> %i.akh, %i.adh
  %i.akj = mul <2 x i32> %i.aki, %i.adj
  %i.akk = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.akj)
  %i.akl = add i32 %i.akk, %i.akf
  %i.akm = insertelement <16 x i32> poison, i32 %i.akl, i64 0
  %i.akn = shufflevector <16 x i32> %i.akm, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ako = add <16 x i32> %i.akn, %i.afu
  %i.akp = load ptr, ptr %9, align 8, !tbaa !22
  %i.akq = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.akp, <16 x i32> %i.ako, <16 x i1> splat (i1 true), i32 1)
  %i.akr = trunc <16 x i32> %i.akq to <16 x i8>
  store <16 x i8> %i.akr, ptr %.7104.i.i, align 16, !tbaa !85
  %i.aks = getelementptr inbounds nuw i8, ptr %.7104.i.i, i64 16 ; 2 uses
  %i.akt = add nuw nsw i32 %.11262103.i.i, 1      ; 2 uses
  %exitcond.not.i82.i = icmp eq i32 %i.akt, %.sroa.speculated
  br i1 %exitcond.not.i82.i, label %.loopexit91.i.i, label %.lr.ph105.i.i, !llvm.loop !2334

.loopexit98.i.i:                                  ; preds = %bb.u
  br i1 %brmerge242.i.i, label %.loopexit91.i.i, label %.lr.ph109.i.i

.lr.ph109.i.i:                                    ; preds = %.loopexit98.i.i, %.lr.ph109.i.i
  %.9108.i.i = phi ptr [ %i.als, %.lr.ph109.i.i ], [ %.0125.i.i, %.loopexit98.i.i ] ; 3 uses
  %.01263107.i.i = phi i32 [ %i.alt, %.lr.ph109.i.i ], [ 0, %.loopexit98.i.i ] ; 2 uses
  %i.aku = add nsw i32 %.01263107.i.i, %i.acs     ; 2 uses
  %i.akv = srem i32 %i.aku, %i.abh                ; 2 uses
  %i.akw = srem i32 %i.akv, %i.bc
  %i.akx = mul nsw i32 %i.akw, %i.be
  %i.aky = insertelement <2 x i32> poison, i32 %i.akv, i64 0
  %i.akz = insertelement <2 x i32> %i.aky, i32 %i.aku, i64 1
  %i.ala = sdiv <2 x i32> %i.akz, %i.acu
  %i.alb = mul <2 x i32> %i.ala, %i.acw
  %i.alc = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.alb)
  %i.ald = add i32 %i.alc, %i.akx
  %i.ale = insertelement <16 x i32> poison, i32 %i.ald, i64 0
  %i.alf = shufflevector <16 x i32> %i.ale, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.alg = add <16 x i32> %i.alf, %i.afu
  %i.alh = shl <16 x i32> %i.alg, splat (i32 3)   ; 2 uses
  %i.ali = load ptr, ptr %9, align 8, !tbaa !22   ; 2 uses
  %i.alj = shufflevector <16 x i32> %i.alh, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.alk = call <8 x i64> @llvm.x86.avx512.mask.gather.dpq.512(<8 x i64> zeroinitializer, ptr %i.ali, <8 x i32> %i.alj, <8 x i1> splat (i1 true), i32 1)
  %i.all = shufflevector <16 x i32> %i.alh, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.alm = call <8 x i64> @llvm.x86.avx512.mask.gather.dpq.512(<8 x i64> zeroinitializer, ptr %i.ali, <8 x i32> %i.all, <8 x i1> splat (i1 true), i32 1)
  %i.aln = bitcast <8 x i64> %i.alk to <32 x i16> ; 2 uses
  %i.alo = bitcast <8 x i64> %i.alm to <32 x i16> ; 2 uses
  %i.alp = shufflevector <32 x i16> %i.aln, <32 x i16> %i.alo, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %i.alq = shufflevector <32 x i16> %i.aln, <32 x i16> %i.alo, <32 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  store <32 x i16> %i.alp, ptr %.9108.i.i, align 1, !tbaa !85
  %i.alr = getelementptr inbounds nuw i8, ptr %.9108.i.i, i64 64
  store <32 x i16> %i.alq, ptr %i.alr, align 1, !tbaa !85
  %i.als = getelementptr inbounds nuw i8, ptr %.9108.i.i, i64 128 ; 2 uses
  %i.alt = add nuw nsw i32 %.01263107.i.i, 1      ; 2 uses
  %exitcond306.not.i80.i = icmp eq i32 %i.alt, %i.acq
  br i1 %exitcond306.not.i80.i, label %.loopexit91.i.i, label %.lr.ph109.i.i, !llvm.loop !2335

.loopexit91.i.i:                                  ; preds = %.lr.ph109.i.i, %.lr.ph105.i.i, %bb.t, %bb.s, %.loopexit98.i.i, %.preheader97.i.i, %.loopexit93.i.i, %.preheader92.i.i
  %.10.i.i = phi ptr [ %.0125.i.i, %.loopexit98.i.i ], [ %.1.lcssa.i.i, %.preheader92.i.i ], [ %.0125.i.i, %.loopexit93.i.i ], [ %i.aiq, %bb.t ], [ %i.ahr, %bb.s ], [ %.6.lcssa.i81.i, %.preheader97.i.i ], [ %i.aks, %.lr.ph105.i.i ], [ %i.als, %.lr.ph109.i.i ] ; 2 uses
  %i.alu = add nuw nsw i32 %.01253124.i.i, 16     ; 3 uses
  %i.alv = or disjoint i32 %i.alu, 15
  %i.alw = icmp slt i32 %i.alv, %.sroa.speculated63
  br i1 %i.alw, label %bb.p, label %.preheader89.i.i, !llvm.loop !2336

.preheader78.i.i:                                 ; preds = %.loopexit80.i.i, %.preheader89.i.i
  %.11254.lcssa.i.i = phi i32 [ %.01253.lcssa.i.i, %.preheader89.i.i ], [ %i.auu, %.loopexit80.i.i ] ; 3 uses
  %.11.lcssa.i.i = phi ptr [ %.0.lcssa.i.i, %.preheader89.i.i ], [ %.21.i.i, %.loopexit80.i.i ] ; 2 uses
  %i.alx = or disjoint i32 %.11254.lcssa.i.i, 3
  %i.aly = icmp slt i32 %i.alx, %.sroa.speculated63
  br i1 %i.aly, label %.lr.ph188.i.i, label %.preheader67.i.i

.lr.ph188.i.i:                                    ; preds = %.preheader78.i.i
  %i.alz = shufflevector <8 x i64> %i.aby, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.ama = and <2 x i64> %i.alz, splat (i64 4294967295) ; 2 uses
  %i.amb = shufflevector <4 x i32> %i.abz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.amc = insertelement <4 x i32> poison, i32 %i.abg, i64 0
  %i.amd = shufflevector <4 x i32> %i.amc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ame = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %i.amf = shufflevector <4 x i32> %i.ame, <4 x i32> poison, <4 x i32> zeroinitializer
  %.scalar325.i.i = mul i32 %i.aba, %i.bh
  %i.amg = insertelement <4 x i32> poison, i32 %.scalar325.i.i, i64 0
  %i.amh = shufflevector <4 x i32> %i.amg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ami = icmp eq i32 %i.abb, 1                  ; 2 uses
  %i.amj = icmp sgt i32 %.sroa.speculated, 1      ; 2 uses
  %i.amk = mul i32 %i.aba, %i.bf                  ; 7 uses
  %i.aml = trunc i64 %i.bs to i32                 ; 3 uses
  %i.amm = icmp ne i32 %i.abb, 8
  %i.amn = sdiv i32 %.sroa.speculated, 8          ; 2 uses
  %i.amo = icmp slt i32 %.sroa.speculated, 8
  %i.amp = sdiv i32 %i.ah, 8                      ; 2 uses
  %brmerge254.i.i = or i1 %i.amo, %i.amm          ; 2 uses
  %i.amq = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.amr = insertelement <2 x i32> %i.amq, i32 %i.abh, i64 1
  %i.ams = insertelement <2 x i32> poison, i32 %i.amk, i64 0
  %i.amt = insertelement <2 x i32> %i.ams, i32 %i.aml, i64 1
  %i.amu = insertelement <2 x i32> poison, i32 %i.abh, i64 0
  %i.amv = shufflevector <2 x i32> %i.amu, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.amw = insertelement <2 x i32> poison, i32 %i.bc, i64 0 ; 2 uses
  %i.amx = shufflevector <2 x i32> %i.amw, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.amy = insertelement <2 x i32> poison, i32 %i.be, i64 0
  %i.amz = shufflevector <2 x i32> %i.amy, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ana = insertelement <2 x i32> %i.amw, i32 %i.abh, i64 1 ; 2 uses
  %i.anb = insertelement <2 x i32> poison, i32 %i.amk, i64 0
  %i.anc = insertelement <2 x i32> %i.anb, i32 %i.aml, i64 1 ; 2 uses
  %i.and = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.ane = insertelement <2 x i32> %i.and, i32 %i.abh, i64 1
  %i.anf = insertelement <2 x i32> poison, i32 %i.amk, i64 0
  %i.ang = insertelement <2 x i32> %i.anf, i32 %i.aml, i64 1
  %i.anh = insertelement <2 x i32> poison, i32 %i.abh, i64 0
  %i.ani = shufflevector <2 x i32> %i.anh, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.anj = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.ank = shufflevector <2 x i32> %i.anj, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.anl = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %i.anm = shufflevector <2 x i64> %i.anl, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.ab

bb.v:                                             ; preds = %.loopexit80.i.i, %.lr.ph157.i.i
  %.11156.i.i = phi ptr [ %.0.lcssa.i.i, %.lr.ph157.i.i ], [ %.21.i.i, %.loopexit80.i.i ] ; 8 uses
  %.11254155.i.i = phi i32 [ %.01253.lcssa.i.i, %.lr.ph157.i.i ], [ %i.auu, %.loopexit80.i.i ] ; 2 uses
  %i.ann = add nsw i32 %.11254155.i.i, %i.af
  %i.ano = insertelement <8 x i32> poison, i32 %i.ann, i64 0
  %i.anp = shufflevector <8 x i32> %i.ano, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.anq = add <8 x i32> %i.anp, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.anr = bitcast <8 x i32> %i.anq to <4 x i64>
  %i.ans = bitcast <8 x i32> %i.anq to <4 x i64>
  %i.ant = and <4 x i64> %i.ans, splat (i64 4294967295)
  %i.anu = mul nuw <4 x i64> %i.ant, %i.adp
  %i.anv = lshr <4 x i64> %i.anu, splat (i64 32)
  %i.anw = lshr <4 x i64> %i.anr, splat (i64 32)
  %i.anx = mul nuw <4 x i64> %i.anw, %i.adp
  %i.any = bitcast <4 x i64> %i.anv to <16 x i16>
  %i.anz = bitcast <4 x i64> %i.anx to <16 x i16>
  %i.aoa = shufflevector <16 x i16> %i.any, <16 x i16> %i.anz, <16 x i32> <i32 0, i32 1, i32 18, i32 19, i32 4, i32 5, i32 22, i32 23, i32 8, i32 9, i32 26, i32 27, i32 12, i32 13, i32 30, i32 31>
  %i.aob = bitcast <16 x i16> %i.aoa to <8 x i32> ; 2 uses
  %i.aoc = sub <8 x i32> %i.anq, %i.aob
  %i.aod = lshr <8 x i32> %i.aoc, %i.adq
  %i.aoe = add <8 x i32> %i.aod, %i.aob
  %i.aof = call <8 x i32> @llvm.x86.avx2.psrl.d(<8 x i32> %i.aoe, <4 x i32> %i.aca) ; 2 uses
  %i.aog = mul <8 x i32> %i.aof, %i.ads
  %i.aoh = sub <8 x i32> %i.anq, %i.aog
  %i.aoi = mul <8 x i32> %i.aoh, %i.adu           ; 2 uses
  %i.aoj = mul <8 x i32> %i.aof, %i.adw           ; 4 uses
  %i.aok = add <8 x i32> %i.aoi, %i.aoj           ; 4 uses
  %shift443 = shufflevector <8 x i32> %i.aoj, <8 x i32> poison, <8 x i32> <i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aol = icmp eq <8 x i32> %i.aoj, %shift443
  %i.aom = extractelement <8 x i1> %i.aol, i64 0
  %or.cond3.i.i = and i1 %i.bp, %i.aom
  br i1 %or.cond3.i.i, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %foldExtExtBinop402 = add nsw <8 x i32> %i.aoi, %i.aoj
  %i.aon = extractelement <8 x i32> %foldExtExtBinop402, i64 0 ; 3 uses
  br i1 %i.adx, label %.preheader83.i.i, label %.loopexit82.i.i

.preheader83.i.i:                                 ; preds = %bb.w
  br i1 %i.ady, label %.lr.ph144.i.i, label %.preheader81.i.i

.lr.ph144.i.i:                                    ; preds = %.preheader83.i.i
  %i.aoo = sext i32 %i.aon to i64                 ; 2 uses
  br label %bb.x

.preheader81.i.i:                                 ; preds = %bb.x, %.preheader83.i.i
  %.01266.lcssa.i.i = phi i32 [ 0, %.preheader83.i.i ], [ %i.apq, %bb.x ] ; 2 uses
  %.12.lcssa.i77.i = phi ptr [ %.11156.i.i, %.preheader83.i.i ], [ %i.app, %bb.x ] ; 2 uses
  %i.aop = icmp slt i32 %.01266.lcssa.i.i, %.sroa.speculated
  br i1 %i.aop, label %.lr.ph149.i.i, label %.loopexit80.i.i

.lr.ph149.i.i:                                    ; preds = %.preheader81.i.i
  %i.aoq = sext i32 %i.aon to i64
  br label %bb.y

bb.x:                                             ; preds = %bb.x, %.lr.ph144.i.i
  %.12143.i.i = phi ptr [ %.11156.i.i, %.lr.ph144.i.i ], [ %i.app, %bb.x ] ; 2 uses
  %.01266142.i.i = phi i32 [ 0, %.lr.ph144.i.i ], [ %i.apq, %bb.x ] ; 2 uses
  %i.aor = add nsw i32 %.01266142.i.i, %i.ah      ; 2 uses
  %i.aos = add nsw i32 %i.aor, 1
  %40 = insertelement <2 x i32> poison, i32 %i.aor, i64 0
  %41 = insertelement <2 x i32> %40, i32 %i.aos, i64 1
  %.frozen648 = freeze <2 x i32> %41              ; 2 uses
  %.frozen649 = freeze <2 x i32> %22              ; 2 uses
  %42 = sdiv <2 x i32> %.frozen648, %.frozen649   ; 2 uses
  %43 = mul <2 x i32> %42, %.frozen649
  %.decomposed650 = sub <2 x i32> %.frozen648, %43 ; 3 uses
  %44 = extractelement <2 x i32> %.decomposed650, i64 0
  %45 = sdiv i32 %44, %i.bc
  %46 = extractelement <2 x i32> %.decomposed650, i64 1
  %47 = sdiv i32 %46, %i.bc
  %48 = srem <2 x i32> %.decomposed650, %i.aex    ; 2 uses
  %49 = mul i32 %45, %i.adz
  %50 = extractelement <2 x i32> %48, i64 0
  %51 = mul nsw i32 %50, %i.be
  %52 = add nsw i32 %51, %49
  %53 = sext i32 %52 to i64
  %i.aot = sext <2 x i32> %42 to <2 x i64>
  %i.aou = mul <2 x i64> %24, %i.aot              ; 2 uses
  %i.aov = mul i32 %47, %i.adz
  %54 = extractelement <2 x i32> %48, i64 1
  %i.aow = mul nsw i32 %54, %i.be
  %i.aox = add nsw i32 %i.aow, %i.aov
  %i.aoy = sext i32 %i.aox to i64
  %i.aoz = load ptr, ptr %9, align 8, !tbaa !22   ; 2 uses
  %i.apa = extractelement <2 x i64> %i.aou, i64 0
  %i.apb = getelementptr i8, ptr %i.aoz, i64 %i.apa
  %i.apc = getelementptr i8, ptr %i.apb, i64 %i.aoo
  %i.apd = getelementptr i8, ptr %i.apc, i64 %53
  %i.ape = load i64, ptr %i.apd, align 1, !tbaa !85
  %i.apf = insertelement <2 x i64> poison, i64 %i.ape, i64 0
  %i.apg = extractelement <2 x i64> %i.aou, i64 1
  %i.aph = getelementptr i8, ptr %i.aoz, i64 %i.apg
  %i.api = getelementptr i8, ptr %i.aph, i64 %i.aoo
  %i.apj = getelementptr i8, ptr %i.api, i64 %i.aoy
  %i.apk = load i64, ptr %i.apj, align 1, !tbaa !85
  %i.apl = insertelement <2 x i64> poison, i64 %i.apk, i64 0
  %i.apm = bitcast <2 x i64> %i.apf to <16 x i8>
  %i.apn = bitcast <2 x i64> %i.apl to <16 x i8>
  %i.apo = shufflevector <16 x i8> %i.apm, <16 x i8> %i.apn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.apo, ptr %.12143.i.i, align 1, !tbaa !85
  %i.app = getelementptr inbounds nuw i8, ptr %.12143.i.i, i64 16 ; 2 uses
  %i.apq = add nuw nsw i32 %.01266142.i.i, 2      ; 3 uses
  %i.apr = or disjoint i32 %i.apq, 1
  %i.aps = icmp slt i32 %i.apr, %.sroa.speculated
  br i1 %i.aps, label %bb.x, label %.preheader81.i.i, !llvm.loop !2337

bb.y:                                             ; preds = %bb.y, %.lr.ph149.i.i
  %.13148.i.i = phi ptr [ %.12.lcssa.i77.i, %.lr.ph149.i.i ], [ %i.aqj, %bb.y ] ; 2 uses
  %.11267147.i.i = phi i32 [ %.01266.lcssa.i.i, %.lr.ph149.i.i ], [ %i.aqk, %bb.y ] ; 2 uses
  %i.apt = add nsw i32 %.11267147.i.i, %i.ah      ; 2 uses
  %i.apu = sdiv i32 %i.apt, %i.abh
  %i.apv = srem i32 %i.apt, %i.abh                ; 2 uses
  %i.apw = sdiv i32 %i.apv, %i.bc
  %i.apx = srem i32 %i.apv, %i.bc
  %i.apy = sext i32 %i.apu to i64
  %i.apz = mul i64 %i.bs, %i.apy
  %i.aqa = mul i32 %i.apw, %i.adz
  %i.aqb = mul nsw i32 %i.apx, %i.be
  %i.aqc = add nsw i32 %i.aqb, %i.aqa
  %i.aqd = sext i32 %i.aqc to i64
  %i.aqe = load ptr, ptr %9, align 8, !tbaa !22
  %i.aqf = getelementptr i8, ptr %i.aqe, i64 %i.apz
  %i.aqg = getelementptr i8, ptr %i.aqf, i64 %i.aoq
  %i.aqh = getelementptr i8, ptr %i.aqg, i64 %i.aqd
  %i.aqi = load i64, ptr %i.aqh, align 1, !tbaa !85
  store i64 %i.aqi, ptr %.13148.i.i, align 1, !tbaa !85
  %i.aqj = getelementptr inbounds nuw i8, ptr %.13148.i.i, i64 8 ; 2 uses
  %i.aqk = add nuw nsw i32 %.11267147.i.i, 1      ; 2 uses
  %exitcond311.not.i78.i = icmp eq i32 %i.aqk, %.sroa.speculated
  br i1 %exitcond311.not.i78.i, label %.loopexit80.i.i, label %bb.y, !llvm.loop !2338

.loopexit82.i.i:                                  ; preds = %bb.w
  br i1 %brmerge248.i.i, label %.loopexit80.i.i, label %.lr.ph153.i.i

.lr.ph153.i.i:                                    ; preds = %.loopexit82.i.i
  %i.aql = sext i32 %i.aon to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph153.i.i
  %.15152.i.i = phi ptr [ %.11156.i.i, %.lr.ph153.i.i ], [ %i.arm, %bb.z ] ; 3 uses
  %.01268151.i.i = phi i32 [ 0, %.lr.ph153.i.i ], [ %i.arn, %bb.z ] ; 2 uses
  %i.aqm = add nsw i32 %.01268151.i.i, %i.aee     ; 2 uses
  %i.aqn = sdiv i32 %i.aqm, %i.abh
  %i.aqo = srem i32 %i.aqm, %i.abh                ; 2 uses
  %i.aqp = sdiv i32 %i.aqo, %i.bc
  %i.aqq = srem i32 %i.aqo, %i.bc
  %i.aqr = sext i32 %i.aqn to i64
  %i.aqs = mul i64 %i.bs, %i.aqr
  %i.aqt = add i64 %i.aqs, %i.aql
  %i.aqu = mul i32 %i.aqp, %i.adz
  %i.aqv = mul nsw i32 %i.aqq, %i.be
  %i.aqw = add nsw i32 %i.aqv, %i.aqu
  %i.aqx = sext i32 %i.aqw to i64
  %i.aqy = add i64 %i.aqt, %i.aqx
  %i.aqz = shl i64 %i.aqy, 3
  %i.ara = load ptr, ptr %9, align 8, !tbaa !22
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 %i.aqz ; 2 uses
  %i.arc = load <16 x i16>, ptr %i.arb, align 1, !tbaa !85 ; 2 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arb, i64 32
  %i.are = load <16 x i16>, ptr %i.ard, align 1, !tbaa !85 ; 2 uses
  %i.arf = shufflevector <16 x i16> %i.arc, <16 x i16> %i.are, <16 x i32> <i32 0, i32 4, i32 16, i32 20, i32 1, i32 5, i32 17, i32 21, i32 8, i32 12, i32 24, i32 28, i32 9, i32 13, i32 25, i32 29>
  %i.arg = shufflevector <16 x i16> %i.arc, <16 x i16> %i.are, <16 x i32> <i32 2, i32 6, i32 18, i32 22, i32 3, i32 7, i32 19, i32 23, i32 10, i32 14, i32 26, i32 30, i32 11, i32 15, i32 27, i32 31>
  %i.arh = bitcast <16 x i16> %i.arf to <8 x i32>
  %i.ari = shufflevector <8 x i32> %i.arh, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.arj = bitcast <16 x i16> %i.arg to <8 x i32>
  %i.ark = shufflevector <8 x i32> %i.arj, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %i.ari, ptr %.15152.i.i, align 1, !tbaa !85
  %i.arl = getelementptr inbounds nuw i8, ptr %.15152.i.i, i64 32
  store <8 x i32> %i.ark, ptr %i.arl, align 1, !tbaa !85
  %i.arm = getelementptr inbounds nuw i8, ptr %.15152.i.i, i64 64 ; 2 uses
  %i.arn = add nuw nsw i32 %.01268151.i.i, 1      ; 2 uses
  %exitcond312.not.i.i = icmp eq i32 %i.arn, %i.aec
  br i1 %exitcond312.not.i.i, label %.loopexit80.i.i, label %bb.z, !llvm.loop !2339

bb.aa:                                            ; preds = %bb.v
  br i1 %i.adx, label %.preheader88.i.i, label %.loopexit87.i.i

.preheader88.i.i:                                 ; preds = %bb.aa
  br i1 %i.ady, label %.lr.ph131.i.i, label %.preheader86.i.i

.preheader86.i.i:                                 ; preds = %.lr.ph131.i.i, %.preheader88.i.i
  %.01269.lcssa.i.i = phi i32 [ 0, %.preheader88.i.i ], [ %i.ass, %.lr.ph131.i.i ] ; 2 uses
  %.17.lcssa.i.i = phi ptr [ %.11156.i.i, %.preheader88.i.i ], [ %i.asr, %.lr.ph131.i.i ] ; 2 uses
  %i.aro = icmp slt i32 %.01269.lcssa.i.i, %.sroa.speculated
  br i1 %i.aro, label %.lr.ph136.i.i, label %.loopexit80.i.i

.lr.ph131.i.i:                                    ; preds = %.preheader88.i.i, %.lr.ph131.i.i
  %.17130.i.i = phi ptr [ %i.asr, %.lr.ph131.i.i ], [ %.11156.i.i, %.preheader88.i.i ] ; 2 uses
  %.01269129.i.i = phi i32 [ %i.ass, %.lr.ph131.i.i ], [ 0, %.preheader88.i.i ] ; 2 uses
  %i.arp = add nsw i32 %.01269129.i.i, %i.ah      ; 3 uses
  %i.arq = add nsw i32 %i.arp, 1                  ; 2 uses
  %i.arr = insertelement <2 x i32> poison, i32 %i.arp, i64 0
  %i.ars = insertelement <2 x i32> %i.arr, i32 %i.arq, i64 1
  %i.art = srem <2 x i32> %i.ars, %i.aek          ; 3 uses
  %i.aru = srem <2 x i32> %i.art, %i.aem
  %i.arv = mul nsw <2 x i32> %i.aru, %i.aeo       ; 2 uses
  %i.arw = insertelement <2 x i32> %i.art, i32 %i.arp, i64 1
  %i.arx = sdiv <2 x i32> %i.arw, %i.aep
  %i.ary = mul <2 x i32> %i.arx, %i.aer           ; 2 uses
  %shift404 = shufflevector <2 x i32> %i.ary, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop405 = add <2 x i32> %i.ary, %shift404
  %foldExtExtBinop407 = add <2 x i32> %foldExtExtBinop405, %i.arv
  %i.arz = shufflevector <2 x i32> %foldExtExtBinop407, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.asa = add <8 x i32> %i.arz, %i.aok
  %i.asb = shufflevector <2 x i32> %i.art, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.asc = insertelement <2 x i32> %i.asb, i32 %i.arq, i64 1
  %i.asd = sdiv <2 x i32> %i.asc, %i.aep
  %i.ase = mul <2 x i32> %i.asd, %i.aer           ; 2 uses
  %i.asf = shufflevector <2 x i32> %i.ase, <2 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.asg = shufflevector <2 x i32> %i.ase, <2 x i32> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ash = add <8 x i32> %i.asf, %i.asg
  %i.asi = shufflevector <8 x i32> %i.ash, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.asj = shufflevector <2 x i32> %i.arv, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ask = add <8 x i32> %i.asi, %i.asj
  %i.asl = add <8 x i32> %i.ask, %i.aok
  %i.asm = load ptr, ptr %9, align 8, !tbaa !22   ; 2 uses
  %i.asn = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.asm, <8 x i32> %i.asa, <8 x i32> splat (i32 -1), i8 1)
  %i.aso = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.asm, <8 x i32> %i.asl, <8 x i32> splat (i32 -1), i8 1)
  %i.asp = shufflevector <8 x i32> %i.asn, <8 x i32> %i.aso, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.asq = trunc <16 x i32> %i.asp to <16 x i8>
  store <16 x i8> %i.asq, ptr %.17130.i.i, align 1, !tbaa !85
  %i.asr = getelementptr inbounds nuw i8, ptr %.17130.i.i, i64 16 ; 2 uses
  %i.ass = add nuw nsw i32 %.01269129.i.i, 2      ; 3 uses
  %i.ast = or disjoint i32 %i.ass, 1
  %i.asu = icmp slt i32 %i.ast, %.sroa.speculated
  br i1 %i.asu, label %.lr.ph131.i.i, label %.preheader86.i.i, !llvm.loop !2340

.lr.ph136.i.i:                                    ; preds = %.preheader86.i.i, %.lr.ph136.i.i
  %.18135.i.i = phi ptr [ %i.ato, %.lr.ph136.i.i ], [ %.17.lcssa.i.i, %.preheader86.i.i ] ; 2 uses
  %.11270134.i.i = phi i32 [ %i.atp, %.lr.ph136.i.i ], [ %.01269.lcssa.i.i, %.preheader86.i.i ] ; 2 uses
  %i.asv = add nsw i32 %.11270134.i.i, %i.ah      ; 2 uses
  %i.asw = srem i32 %i.asv, %i.abh                ; 2 uses
  %i.asx = srem i32 %i.asw, %i.bc
  %i.asy = mul nsw i32 %i.asx, %i.be
  %i.asz = insertelement <2 x i32> poison, i32 %i.asw, i64 0
  %i.ata = insertelement <2 x i32> %i.asz, i32 %i.asv, i64 1
  %i.atb = sdiv <2 x i32> %i.ata, %i.aet
  %i.atc = mul <2 x i32> %i.atb, %i.aev
  %i.atd = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.atc)
  %i.ate = add i32 %i.atd, %i.asy
  %i.atf = insertelement <8 x i32> poison, i32 %i.ate, i64 0
  %i.atg = shufflevector <8 x i32> %i.atf, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ath = add <8 x i32> %i.atg, %i.aok
  %i.ati = load ptr, ptr %9, align 8, !tbaa !22
  %i.atj = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.ati, <8 x i32> %i.ath, <8 x i32> splat (i32 -1), i8 1)
  %i.atk = shufflevector <8 x i32> %i.atj, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atl = trunc <16 x i32> %i.atk to <16 x i8>
  %i.atm = bitcast <16 x i8> %i.atl to <2 x i64>
  %i.atn = extractelement <2 x i64> %i.atm, i64 0
  store i64 %i.atn, ptr %.18135.i.i, align 1, !tbaa !85
  %i.ato = getelementptr inbounds nuw i8, ptr %.18135.i.i, i64 8 ; 2 uses
  %i.atp = add nuw nsw i32 %.11270134.i.i, 1      ; 2 uses
  %exitcond309.not.i.i = icmp eq i32 %i.atp, %.sroa.speculated
  br i1 %exitcond309.not.i.i, label %.loopexit80.i.i, label %.lr.ph136.i.i, !llvm.loop !2341

.loopexit87.i.i:                                  ; preds = %bb.aa
  br i1 %brmerge248.i.i, label %.loopexit80.i.i, label %.lr.ph140.i.i

.lr.ph140.i.i:                                    ; preds = %.loopexit87.i.i, %.lr.ph140.i.i
  %.20139.i.i = phi ptr [ %i.aus, %.lr.ph140.i.i ], [ %.11156.i.i, %.loopexit87.i.i ] ; 3 uses
  %.01271138.i.i = phi i32 [ %i.aut, %.lr.ph140.i.i ], [ 0, %.loopexit87.i.i ] ; 2 uses
  %i.atq = add nsw i32 %.01271138.i.i, %i.aee     ; 2 uses
  %i.atr = srem i32 %i.atq, %i.abh                ; 2 uses
  %i.ats = srem i32 %i.atr, %i.bc
  %i.att = mul nsw i32 %i.ats, %i.be
  %i.atu = insertelement <2 x i32> poison, i32 %i.atr, i64 0
  %i.atv = insertelement <2 x i32> %i.atu, i32 %i.atq, i64 1
  %i.atw = sdiv <2 x i32> %i.atv, %i.aeg
  %i.atx = mul <2 x i32> %i.atw, %i.aei
  %i.aty = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.atx)
  %i.atz = add i32 %i.aty, %i.att
  %i.aua = insertelement <8 x i32> poison, i32 %i.atz, i64 0
  %i.aub = shufflevector <8 x i32> %i.aua, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.auc = add <8 x i32> %i.aub, %i.aok
  %i.aud = shl <8 x i32> %i.auc, splat (i32 3)    ; 2 uses
  %i.aue = load ptr, ptr %9, align 8, !tbaa !22   ; 2 uses
  %i.auf = shufflevector <8 x i32> %i.aud, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aug = call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.aue, <4 x i32> %i.auf, <4 x i64> splat (i64 -1), i8 1)
  %i.auh = shufflevector <8 x i32> %i.aud, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aui = call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.aue, <4 x i32> %i.auh, <4 x i64> splat (i64 -1), i8 1)
  %i.auj = bitcast <4 x i64> %i.aug to <16 x i16> ; 2 uses
  %i.auk = bitcast <4 x i64> %i.aui to <16 x i16> ; 2 uses
  %i.aul = shufflevector <16 x i16> %i.auj, <16 x i16> %i.auk, <16 x i32> <i32 0, i32 4, i32 16, i32 20, i32 1, i32 5, i32 17, i32 21, i32 8, i32 12, i32 24, i32 28, i32 9, i32 13, i32 25, i32 29>
  %i.aum = shufflevector <16 x i16> %i.auj, <16 x i16> %i.auk, <16 x i32> <i32 2, i32 6, i32 18, i32 22, i32 3, i32 7, i32 19, i32 23, i32 10, i32 14, i32 26, i32 30, i32 11, i32 15, i32 27, i32 31>
  %i.aun = bitcast <16 x i16> %i.aul to <8 x i32>
  %i.auo = shufflevector <8 x i32> %i.aun, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.aup = bitcast <16 x i16> %i.aum to <8 x i32>
  %i.auq = shufflevector <8 x i32> %i.aup, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
end_hunk_1
