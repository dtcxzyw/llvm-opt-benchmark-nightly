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
  %.0143 = phi i32 [ %i.k, %_ZN4ncnn3MatD2Ev.exit36.lr.ph ], [ %i.brd, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
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
  %i.bc = load i32, ptr %10, align 4, !tbaa !66   ; 62 uses
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
  %i.abh = mul nsw i32 %i.bd, %i.bc               ; 51 uses
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
  %i.adk = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %i.adl = shufflevector <2 x i64> %i.adk, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.adm = insertelement <2 x i32> poison, i32 %i.abh, i64 0
  %i.adn = shufflevector <2 x i32> %i.adm, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.p

.preheader89.i.i:                                 ; preds = %.loopexit91.i.i, %_ZN17FastDivider_epu32C2Ej.exit1295.i.i
  %.01253.lcssa.i.i = phi i32 [ 0, %_ZN17FastDivider_epu32C2Ej.exit1295.i.i ], [ %i.amj, %.loopexit91.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.val.i, %_ZN17FastDivider_epu32C2Ej.exit1295.i.i ], [ %.10.i.i, %.loopexit91.i.i ] ; 2 uses
  %i.ado = or disjoint i32 %.01253.lcssa.i.i, 7
  %i.adp = icmp slt i32 %i.ado, %.sroa.speculated63
  br i1 %i.adp, label %.lr.ph157.i.i, label %.preheader78.i.i

.lr.ph157.i.i:                                    ; preds = %.preheader89.i.i
  %i.adq = shufflevector <8 x i64> %i.aby, <8 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.adr = and <4 x i64> %i.adq, splat (i64 4294967295) ; 2 uses
  %i.ads = shufflevector <4 x i32> %i.abz, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.adt = insertelement <8 x i32> poison, i32 %i.abg, i64 0
  %i.adu = shufflevector <8 x i32> %i.adt, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.adv = insertelement <8 x i32> poison, i32 %i.bg, i64 0
  %i.adw = shufflevector <8 x i32> %i.adv, <8 x i32> poison, <8 x i32> zeroinitializer
  %.scalar324.i.i = mul i32 %i.aba, %i.bh
  %i.adx = insertelement <8 x i32> poison, i32 %.scalar324.i.i, i64 0
  %i.ady = shufflevector <8 x i32> %i.adx, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.adz = icmp eq i32 %i.abb, 1                  ; 2 uses
  %i.aea = icmp sgt i32 %.sroa.speculated, 1      ; 2 uses
  %i.aeb = mul i32 %i.aba, %i.bf                  ; 7 uses
  %i.aec = trunc i64 %i.bs to i32                 ; 3 uses
  %i.aed = icmp ne i32 %i.abb, 8
  %i.aee = sdiv i32 %.sroa.speculated, 8          ; 2 uses
  %i.aef = icmp slt i32 %.sroa.speculated, 8
  %i.aeg = sdiv i32 %i.ah, 8                      ; 2 uses
  %brmerge248.i.i = or i1 %i.aef, %i.aed          ; 2 uses
  %i.aeh = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.aei = insertelement <2 x i32> %i.aeh, i32 %i.abh, i64 1
  %i.aej = insertelement <2 x i32> poison, i32 %i.aeb, i64 0
  %i.aek = insertelement <2 x i32> %i.aej, i32 %i.aec, i64 1
  %i.ael = insertelement <2 x i32> poison, i32 %i.abh, i64 0
  %i.aem = shufflevector <2 x i32> %i.ael, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aen = insertelement <2 x i32> poison, i32 %i.bc, i64 0 ; 2 uses
  %i.aeo = shufflevector <2 x i32> %i.aen, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aep = insertelement <2 x i32> poison, i32 %i.be, i64 0
  %i.aeq = shufflevector <2 x i32> %i.aep, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aer = insertelement <2 x i32> %i.aen, i32 %i.abh, i64 1 ; 2 uses
  %i.aes = insertelement <2 x i32> poison, i32 %i.aeb, i64 0
  %i.aet = insertelement <2 x i32> %i.aes, i32 %i.aec, i64 1 ; 2 uses
  %i.aeu = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.aev = insertelement <2 x i32> %i.aeu, i32 %i.abh, i64 1
  %i.aew = insertelement <2 x i32> poison, i32 %i.aeb, i64 0
  %i.aex = insertelement <2 x i32> %i.aew, i32 %i.aec, i64 1
  %17 = insertelement <2 x i32> poison, i32 %i.abh, i64 0
  %18 = shufflevector <2 x i32> %17, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aey = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.aez = shufflevector <2 x i32> %i.aey, <2 x i32> poison, <2 x i32> zeroinitializer
  %19 = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %20 = shufflevector <2 x i64> %19, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.v

bb.p:                                             ; preds = %.loopexit91.i.i, %.lr.ph126.i.i
  %.0125.i.i = phi ptr [ %.val.i, %.lr.ph126.i.i ], [ %.10.i.i, %.loopexit91.i.i ] ; 8 uses
  %.01253124.i.i = phi i32 [ 0, %.lr.ph126.i.i ], [ %i.amj, %.loopexit91.i.i ] ; 2 uses
  %i.afa = add nsw i32 %.01253124.i.i, %i.af
  %i.afb = insertelement <16 x i32> poison, i32 %i.afa, i64 0
  %i.afc = shufflevector <16 x i32> %i.afb, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.afd = add <16 x i32> %i.afc, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.afe = bitcast <16 x i32> %i.afd to <8 x i64>
  %i.aff = bitcast <16 x i32> %i.afd to <8 x i64>
  %i.afg = and <8 x i64> %i.aff, splat (i64 4294967295)
  %i.afh = mul nuw <8 x i64> %i.afg, %i.acd
  %i.afi = lshr <8 x i64> %i.afh, splat (i64 32)
  %i.afj = lshr <8 x i64> %i.afe, splat (i64 32)
  %i.afk = mul nuw <8 x i64> %i.afj, %i.acd
  %i.afl = bitcast <8 x i64> %i.afk to <16 x i32>
  %i.afm = bitcast <8 x i64> %i.afi to <16 x i32>
  %i.afn = shufflevector <16 x i32> %i.afm, <16 x i32> %i.afl, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31> ; 2 uses
  %i.afo = sub <16 x i32> %i.afd, %i.afn
  %i.afp = lshr <16 x i32> %i.afo, %i.ace
  %i.afq = add <16 x i32> %i.afp, %i.afn
  %i.afr = call <16 x i32> @llvm.x86.avx512.psrl.d.512(<16 x i32> %i.afq, <4 x i32> %i.aca) ; 2 uses
  %i.afs = mul <16 x i32> %i.afr, %i.acg
  %i.aft = sub <16 x i32> %i.afd, %i.afs
  %i.afu = mul <16 x i32> %i.aft, %i.aci          ; 2 uses
  %i.afv = mul <16 x i32> %i.afr, %i.ack          ; 4 uses
  %i.afw = add <16 x i32> %i.afu, %i.afv          ; 4 uses
  %shift = shufflevector <16 x i32> %i.afv, <16 x i32> poison, <16 x i32> <i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afx = icmp eq <16 x i32> %i.afv, %shift
  %i.afy = extractelement <16 x i1> %i.afx, i64 0
  %or.cond.i.i = and i1 %i.bp, %i.afy
  br i1 %or.cond.i.i, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %foldExtExtBinop = add nsw <16 x i32> %i.afu, %i.afv
  %i.afz = extractelement <16 x i32> %foldExtExtBinop, i64 0 ; 3 uses
  br i1 %i.acl, label %.preheader94.i.i, label %.loopexit93.i.i

.preheader94.i.i:                                 ; preds = %bb.q
  br i1 %i.acm, label %.lr.ph113.i.i, label %.preheader92.i.i

.lr.ph113.i.i:                                    ; preds = %.preheader94.i.i
  %i.aga = sext i32 %i.afz to i64                 ; 2 uses
  br label %bb.r

.preheader92.i.i:                                 ; preds = %bb.r, %.preheader94.i.i
  %.01258.lcssa.i.i = phi i32 [ 0, %.preheader94.i.i ], [ %i.ahn, %bb.r ] ; 2 uses
  %.1.lcssa.i.i = phi ptr [ %.0125.i.i, %.preheader94.i.i ], [ %i.ahm, %bb.r ] ; 2 uses
  %i.agb = icmp slt i32 %.01258.lcssa.i.i, %.sroa.speculated
  br i1 %i.agb, label %.lr.ph118.i.i, label %.loopexit91.i.i

.lr.ph118.i.i:                                    ; preds = %.preheader92.i.i
  %i.agc = sext i32 %i.afz to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.r, %.lr.ph113.i.i
  %.1112.i.i = phi ptr [ %.0125.i.i, %.lr.ph113.i.i ], [ %i.ahm, %bb.r ] ; 3 uses
  %.01258111.i.i = phi i32 [ 0, %.lr.ph113.i.i ], [ %i.ahn, %bb.r ] ; 2 uses
  %i.agd = add nsw i32 %.01258111.i.i, %i.ah      ; 3 uses
  %i.age = add nsw i32 %i.agd, 1                  ; 2 uses
  %i.agf = srem i32 %i.agd, %i.abh                ; 2 uses
  %i.agg = srem i32 %i.age, %i.abh                ; 2 uses
  %i.agh = sdiv i32 %i.agf, %i.bc
  %i.agi = sdiv i32 %i.agg, %i.bc
  %i.agj = srem i32 %i.agf, %i.bc
  %i.agk = srem i32 %i.agg, %i.bc
  %i.agl = mul i32 %i.agh, %i.acn
  %i.agm = mul nsw i32 %i.agj, %i.be
  %i.agn = add nsw i32 %i.agm, %i.agl
  %i.ago = sext i32 %i.agn to i64
  %i.agp = insertelement <2 x i32> poison, i32 %i.agd, i64 0
  %i.agq = insertelement <2 x i32> %i.agp, i32 %i.age, i64 1
  %i.agr = sdiv <2 x i32> %i.agq, %i.adn
  %i.ags = sext <2 x i32> %i.agr to <2 x i64>
  %i.agt = mul <2 x i64> %i.adl, %i.ags           ; 2 uses
  %i.agu = mul i32 %i.agi, %i.acn
  %i.agv = mul nsw i32 %i.agk, %i.be
  %i.agw = add nsw i32 %i.agv, %i.agu
  %i.agx = sext i32 %i.agw to i64
  %i.agy = load ptr, ptr %9, align 8, !tbaa !22   ; 2 uses
  %i.agz = extractelement <2 x i64> %i.agt, i64 0
  %i.aha = getelementptr i8, ptr %i.agy, i64 %i.agz
  %i.ahb = getelementptr i8, ptr %i.aha, i64 %i.aga
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 %i.ago
  %i.ahd = load <16 x i8>, ptr %i.ahc, align 1, !tbaa !85 ; 2 uses
  %i.ahe = extractelement <2 x i64> %i.agt, i64 1
  %i.ahf = getelementptr i8, ptr %i.agy, i64 %i.ahe
  %i.ahg = getelementptr i8, ptr %i.ahf, i64 %i.aga
  %i.ahh = getelementptr i8, ptr %i.ahg, i64 %i.agx
  %i.ahi = load <16 x i8>, ptr %i.ahh, align 1, !tbaa !85 ; 2 uses
  %i.ahj = shufflevector <16 x i8> %i.ahd, <16 x i8> %i.ahi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ahk = shufflevector <16 x i8> %i.ahd, <16 x i8> %i.ahi, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ahj, ptr %.1112.i.i, align 16, !tbaa !85
  %i.ahl = getelementptr inbounds nuw i8, ptr %.1112.i.i, i64 16
  store <16 x i8> %i.ahk, ptr %i.ahl, align 16, !tbaa !85
  %i.ahm = getelementptr inbounds nuw i8, ptr %.1112.i.i, i64 32 ; 2 uses
  %i.ahn = add nuw nsw i32 %.01258111.i.i, 2      ; 3 uses
  %i.aho = or disjoint i32 %i.ahn, 1
  %i.ahp = icmp slt i32 %i.aho, %.sroa.speculated
  br i1 %i.ahp, label %bb.r, label %.preheader92.i.i, !llvm.loop !2330

bb.s:                                             ; preds = %bb.s, %.lr.ph118.i.i
  %.2117.i.i = phi ptr [ %.1.lcssa.i.i, %.lr.ph118.i.i ], [ %i.aig, %bb.s ] ; 2 uses
  %.11259116.i.i = phi i32 [ %.01258.lcssa.i.i, %.lr.ph118.i.i ], [ %i.aih, %bb.s ] ; 2 uses
  %i.ahq = add nsw i32 %.11259116.i.i, %i.ah      ; 2 uses
  %i.ahr = sdiv i32 %i.ahq, %i.abh
  %i.ahs = srem i32 %i.ahq, %i.abh                ; 2 uses
  %i.aht = sdiv i32 %i.ahs, %i.bc
  %i.ahu = srem i32 %i.ahs, %i.bc
  %i.ahv = sext i32 %i.ahr to i64
  %i.ahw = mul i64 %i.bs, %i.ahv
  %i.ahx = mul i32 %i.aht, %i.acn
  %i.ahy = mul nsw i32 %i.ahu, %i.be
  %i.ahz = add nsw i32 %i.ahy, %i.ahx
  %i.aia = sext i32 %i.ahz to i64
  %i.aib = load ptr, ptr %9, align 8, !tbaa !22
  %i.aic = getelementptr i8, ptr %i.aib, i64 %i.ahw
  %i.aid = getelementptr i8, ptr %i.aic, i64 %i.agc
  %i.aie = getelementptr i8, ptr %i.aid, i64 %i.aia
  %i.aif = load <2 x i64>, ptr %i.aie, align 1, !tbaa !85
  store <2 x i64> %i.aif, ptr %.2117.i.i, align 16, !tbaa !85
  %i.aig = getelementptr inbounds nuw i8, ptr %.2117.i.i, i64 16 ; 2 uses
  %i.aih = add nuw nsw i32 %.11259116.i.i, 1      ; 2 uses
  %exitcond307.not.i84.i = icmp eq i32 %i.aih, %.sroa.speculated
  br i1 %exitcond307.not.i84.i, label %.loopexit91.i.i, label %bb.s, !llvm.loop !2331

.loopexit93.i.i:                                  ; preds = %bb.q
  br i1 %brmerge242.i.i, label %.loopexit91.i.i, label %.lr.ph122.i.i

.lr.ph122.i.i:                                    ; preds = %.loopexit93.i.i
  %i.aii = sext i32 %i.afz to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph122.i.i
  %.4121.i.i = phi ptr [ %.0125.i.i, %.lr.ph122.i.i ], [ %i.ajf, %bb.t ] ; 3 uses
  %.01260120.i.i = phi i32 [ 0, %.lr.ph122.i.i ], [ %i.ajg, %bb.t ] ; 2 uses
  %i.aij = add nsw i32 %.01260120.i.i, %i.acs     ; 2 uses
  %i.aik = sdiv i32 %i.aij, %i.abh
  %i.ail = srem i32 %i.aij, %i.abh                ; 2 uses
  %i.aim = sdiv i32 %i.ail, %i.bc
  %i.ain = srem i32 %i.ail, %i.bc
  %i.aio = sext i32 %i.aik to i64
  %i.aip = mul i64 %i.bs, %i.aio
  %i.aiq = add i64 %i.aip, %i.aii
  %i.air = mul i32 %i.aim, %i.acn
  %i.ais = mul nsw i32 %i.ain, %i.be
  %i.ait = add nsw i32 %i.ais, %i.air
  %i.aiu = sext i32 %i.ait to i64
  %i.aiv = add i64 %i.aiq, %i.aiu
  %i.aiw = shl i64 %i.aiv, 3
  %i.aix = load ptr, ptr %9, align 8, !tbaa !22
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 %i.aiw ; 2 uses
  %i.aiz = load <32 x i16>, ptr %i.aiy, align 1, !tbaa !85 ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiy, i64 64
  %i.ajb = load <32 x i16>, ptr %i.aja, align 1, !tbaa !85 ; 2 uses
  %i.ajc = shufflevector <32 x i16> %i.aiz, <32 x i16> %i.ajb, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %i.ajd = shufflevector <32 x i16> %i.aiz, <32 x i16> %i.ajb, <32 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  store <32 x i16> %i.ajc, ptr %.4121.i.i, align 1, !tbaa !85
  %i.aje = getelementptr inbounds nuw i8, ptr %.4121.i.i, i64 64
  store <32 x i16> %i.ajd, ptr %i.aje, align 1, !tbaa !85
  %i.ajf = getelementptr inbounds nuw i8, ptr %.4121.i.i, i64 128 ; 2 uses
  %i.ajg = add nuw nsw i32 %.01260120.i.i, 1      ; 2 uses
  %exitcond308.not.i.i = icmp eq i32 %i.ajg, %i.acq
  br i1 %exitcond308.not.i.i, label %.loopexit91.i.i, label %bb.t, !llvm.loop !2332

bb.u:                                             ; preds = %bb.p
  br i1 %i.acl, label %.preheader99.i.i, label %.loopexit98.i.i

.preheader99.i.i:                                 ; preds = %bb.u
  br i1 %i.acm, label %.lr.ph.i83.i, label %.preheader97.i.i

.preheader97.i.i:                                 ; preds = %.lr.ph.i83.i, %.preheader99.i.i
  %.01261.lcssa.i.i = phi i32 [ 0, %.preheader99.i.i ], [ %i.ako, %.lr.ph.i83.i ] ; 2 uses
  %.6.lcssa.i81.i = phi ptr [ %.0125.i.i, %.preheader99.i.i ], [ %i.akn, %.lr.ph.i83.i ] ; 2 uses
  %i.ajh = icmp slt i32 %.01261.lcssa.i.i, %.sroa.speculated
  br i1 %i.ajh, label %.lr.ph105.i.i, label %.loopexit91.i.i

.lr.ph.i83.i:                                     ; preds = %.preheader99.i.i, %.lr.ph.i83.i
  %.6101.i.i = phi ptr [ %i.akn, %.lr.ph.i83.i ], [ %.0125.i.i, %.preheader99.i.i ] ; 3 uses
  %.01261100.i.i = phi i32 [ %i.ako, %.lr.ph.i83.i ], [ 0, %.preheader99.i.i ] ; 2 uses
  %i.aji = add nsw i32 %.01261100.i.i, %i.ah      ; 3 uses
  %i.ajj = add nsw i32 %i.aji, 1                  ; 2 uses
  %i.ajk = insertelement <2 x i32> poison, i32 %i.aji, i64 0
  %i.ajl = insertelement <2 x i32> %i.ajk, i32 %i.ajj, i64 1
  %i.ajm = srem <2 x i32> %i.ajl, %i.acy          ; 3 uses
  %i.ajn = srem <2 x i32> %i.ajm, %i.ada
  %i.ajo = mul nsw <2 x i32> %i.ajn, %i.adc       ; 2 uses
  %i.ajp = insertelement <2 x i32> %i.ajm, i32 %i.aji, i64 1
  %i.ajq = sdiv <2 x i32> %i.ajp, %i.add
  %i.ajr = mul <2 x i32> %i.ajq, %i.adf           ; 2 uses
  %shift384 = shufflevector <2 x i32> %i.ajr, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop385 = add <2 x i32> %i.ajr, %shift384
  %foldExtExtBinop387 = add <2 x i32> %foldExtExtBinop385, %i.ajo
  %i.ajs = shufflevector <2 x i32> %foldExtExtBinop387, <2 x i32> poison, <16 x i32> zeroinitializer
  %i.ajt = add <16 x i32> %i.ajs, %i.afw
  %i.aju = shufflevector <2 x i32> %i.ajm, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.ajv = insertelement <2 x i32> %i.aju, i32 %i.ajj, i64 1
  %i.ajw = sdiv <2 x i32> %i.ajv, %i.add
  %i.ajx = mul <2 x i32> %i.ajw, %i.adf           ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.aka = add <16 x i32> %i.ajy, %i.ajz
  %i.akb = shufflevector <16 x i32> %i.aka, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.akc = shufflevector <2 x i32> %i.ajo, <2 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.akd = add <16 x i32> %i.akb, %i.akc
  %i.ake = add <16 x i32> %i.akd, %i.afw
  %i.akf = load ptr, ptr %9, align 8, !tbaa !22   ; 2 uses
  %i.akg = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.akf, <16 x i32> %i.ajt, <16 x i1> splat (i1 true), i32 1)
  %i.akh = trunc <16 x i32> %i.akg to <16 x i8>   ; 2 uses
  %i.aki = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.akf, <16 x i32> %i.ake, <16 x i1> splat (i1 true), i32 1)
  %i.akj = trunc <16 x i32> %i.aki to <16 x i8>   ; 2 uses
  %i.akk = shufflevector <16 x i8> %i.akh, <16 x i8> %i.akj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.akl = shufflevector <16 x i8> %i.akh, <16 x i8> %i.akj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.akk, ptr %.6101.i.i, align 16, !tbaa !85
  %i.akm = getelementptr inbounds nuw i8, ptr %.6101.i.i, i64 16
  store <16 x i8> %i.akl, ptr %i.akm, align 16, !tbaa !85
  %i.akn = getelementptr inbounds nuw i8, ptr %.6101.i.i, i64 32 ; 2 uses
  %i.ako = add nuw nsw i32 %.01261100.i.i, 2      ; 3 uses
  %i.akp = or disjoint i32 %i.ako, 1
  %i.akq = icmp slt i32 %i.akp, %.sroa.speculated
  br i1 %i.akq, label %.lr.ph.i83.i, label %.preheader97.i.i, !llvm.loop !2333

.lr.ph105.i.i:                                    ; preds = %.preheader97.i.i, %.lr.ph105.i.i
  %.7104.i.i = phi ptr [ %i.alh, %.lr.ph105.i.i ], [ %.6.lcssa.i81.i, %.preheader97.i.i ] ; 2 uses
  %.11262103.i.i = phi i32 [ %i.ali, %.lr.ph105.i.i ], [ %.01261.lcssa.i.i, %.preheader97.i.i ] ; 2 uses
  %i.akr = add nsw i32 %.11262103.i.i, %i.ah      ; 2 uses
  %i.aks = srem i32 %i.akr, %i.abh                ; 2 uses
  %i.akt = srem i32 %i.aks, %i.bc
  %i.aku = mul nsw i32 %i.akt, %i.be
  %i.akv = insertelement <2 x i32> poison, i32 %i.aks, i64 0
  %i.akw = insertelement <2 x i32> %i.akv, i32 %i.akr, i64 1
  %i.akx = sdiv <2 x i32> %i.akw, %i.adh
  %i.aky = mul <2 x i32> %i.akx, %i.adj
  %i.akz = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.aky)
  %i.ala = add i32 %i.akz, %i.aku
  %i.alb = insertelement <16 x i32> poison, i32 %i.ala, i64 0
  %i.alc = shufflevector <16 x i32> %i.alb, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ald = add <16 x i32> %i.alc, %i.afw
  %i.ale = load ptr, ptr %9, align 8, !tbaa !22
  %i.alf = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.ale, <16 x i32> %i.ald, <16 x i1> splat (i1 true), i32 1)
  %i.alg = trunc <16 x i32> %i.alf to <16 x i8>
  store <16 x i8> %i.alg, ptr %.7104.i.i, align 16, !tbaa !85
  %i.alh = getelementptr inbounds nuw i8, ptr %.7104.i.i, i64 16 ; 2 uses
  %i.ali = add nuw nsw i32 %.11262103.i.i, 1      ; 2 uses
  %exitcond.not.i82.i = icmp eq i32 %i.ali, %.sroa.speculated
  br i1 %exitcond.not.i82.i, label %.loopexit91.i.i, label %.lr.ph105.i.i, !llvm.loop !2334

.loopexit98.i.i:                                  ; preds = %bb.u
  br i1 %brmerge242.i.i, label %.loopexit91.i.i, label %.lr.ph109.i.i

.lr.ph109.i.i:                                    ; preds = %.loopexit98.i.i, %.lr.ph109.i.i
  %.9108.i.i = phi ptr [ %i.amh, %.lr.ph109.i.i ], [ %.0125.i.i, %.loopexit98.i.i ] ; 3 uses
  %.01263107.i.i = phi i32 [ %i.ami, %.lr.ph109.i.i ], [ 0, %.loopexit98.i.i ] ; 2 uses
  %i.alj = add nsw i32 %.01263107.i.i, %i.acs     ; 2 uses
  %i.alk = srem i32 %i.alj, %i.abh                ; 2 uses
  %i.all = srem i32 %i.alk, %i.bc
  %i.alm = mul nsw i32 %i.all, %i.be
  %i.aln = insertelement <2 x i32> poison, i32 %i.alk, i64 0
  %i.alo = insertelement <2 x i32> %i.aln, i32 %i.alj, i64 1
  %i.alp = sdiv <2 x i32> %i.alo, %i.acu
  %i.alq = mul <2 x i32> %i.alp, %i.acw
  %i.alr = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.alq)
  %i.als = add i32 %i.alr, %i.alm
  %i.alt = insertelement <16 x i32> poison, i32 %i.als, i64 0
  %i.alu = shufflevector <16 x i32> %i.alt, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.alv = add <16 x i32> %i.alu, %i.afw
  %i.alw = shl <16 x i32> %i.alv, splat (i32 3)   ; 2 uses
  %i.alx = load ptr, ptr %9, align 8, !tbaa !22   ; 2 uses
  %i.aly = shufflevector <16 x i32> %i.alw, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.alz = call <8 x i64> @llvm.x86.avx512.mask.gather.dpq.512(<8 x i64> zeroinitializer, ptr %i.alx, <8 x i32> %i.aly, <8 x i1> splat (i1 true), i32 1)
  %i.ama = shufflevector <16 x i32> %i.alw, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amb = call <8 x i64> @llvm.x86.avx512.mask.gather.dpq.512(<8 x i64> zeroinitializer, ptr %i.alx, <8 x i32> %i.ama, <8 x i1> splat (i1 true), i32 1)
  %i.amc = bitcast <8 x i64> %i.alz to <32 x i16> ; 2 uses
  %i.amd = bitcast <8 x i64> %i.amb to <32 x i16> ; 2 uses
  %i.ame = shufflevector <32 x i16> %i.amc, <32 x i16> %i.amd, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %i.amf = shufflevector <32 x i16> %i.amc, <32 x i16> %i.amd, <32 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  store <32 x i16> %i.ame, ptr %.9108.i.i, align 1, !tbaa !85
  %i.amg = getelementptr inbounds nuw i8, ptr %.9108.i.i, i64 64
  store <32 x i16> %i.amf, ptr %i.amg, align 1, !tbaa !85
  %i.amh = getelementptr inbounds nuw i8, ptr %.9108.i.i, i64 128 ; 2 uses
  %i.ami = add nuw nsw i32 %.01263107.i.i, 1      ; 2 uses
  %exitcond306.not.i80.i = icmp eq i32 %i.ami, %i.acq
  br i1 %exitcond306.not.i80.i, label %.loopexit91.i.i, label %.lr.ph109.i.i, !llvm.loop !2335

.loopexit91.i.i:                                  ; preds = %.lr.ph109.i.i, %.lr.ph105.i.i, %bb.t, %bb.s, %.loopexit98.i.i, %.preheader97.i.i, %.loopexit93.i.i, %.preheader92.i.i
  %.10.i.i = phi ptr [ %.0125.i.i, %.loopexit98.i.i ], [ %.1.lcssa.i.i, %.preheader92.i.i ], [ %.0125.i.i, %.loopexit93.i.i ], [ %i.ajf, %bb.t ], [ %i.aig, %bb.s ], [ %.6.lcssa.i81.i, %.preheader97.i.i ], [ %i.alh, %.lr.ph105.i.i ], [ %i.amh, %.lr.ph109.i.i ] ; 2 uses
  %i.amj = add nuw nsw i32 %.01253124.i.i, 16     ; 3 uses
  %i.amk = or disjoint i32 %i.amj, 15
  %i.aml = icmp slt i32 %i.amk, %.sroa.speculated63
  br i1 %i.aml, label %bb.p, label %.preheader89.i.i, !llvm.loop !2336

.preheader78.i.i:                                 ; preds = %.loopexit80.i.i, %.preheader89.i.i
  %.11254.lcssa.i.i = phi i32 [ %.01253.lcssa.i.i, %.preheader89.i.i ], [ %i.avj, %.loopexit80.i.i ] ; 3 uses
  %.11.lcssa.i.i = phi ptr [ %.0.lcssa.i.i, %.preheader89.i.i ], [ %.21.i.i, %.loopexit80.i.i ] ; 2 uses
  %i.amm = or disjoint i32 %.11254.lcssa.i.i, 3
  %i.amn = icmp slt i32 %i.amm, %.sroa.speculated63
  br i1 %i.amn, label %.lr.ph188.i.i, label %.preheader67.i.i

.lr.ph188.i.i:                                    ; preds = %.preheader78.i.i
  %i.amo = shufflevector <8 x i64> %i.aby, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.amp = and <2 x i64> %i.amo, splat (i64 4294967295) ; 2 uses
  %i.amq = shufflevector <4 x i32> %i.abz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.amr = insertelement <4 x i32> poison, i32 %i.abg, i64 0
  %i.ams = shufflevector <4 x i32> %i.amr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.amt = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %i.amu = shufflevector <4 x i32> %i.amt, <4 x i32> poison, <4 x i32> zeroinitializer
  %.scalar325.i.i = mul i32 %i.aba, %i.bh
  %i.amv = insertelement <4 x i32> poison, i32 %.scalar325.i.i, i64 0
  %i.amw = shufflevector <4 x i32> %i.amv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.amx = icmp eq i32 %i.abb, 1                  ; 2 uses
  %i.amy = icmp sgt i32 %.sroa.speculated, 1      ; 2 uses
  %i.amz = mul i32 %i.aba, %i.bf                  ; 7 uses
  %i.ana = trunc i64 %i.bs to i32                 ; 3 uses
  %i.anb = icmp ne i32 %i.abb, 8
  %i.anc = sdiv i32 %.sroa.speculated, 8          ; 2 uses
  %i.and = icmp slt i32 %.sroa.speculated, 8
  %i.ane = sdiv i32 %i.ah, 8                      ; 2 uses
  %brmerge254.i.i = or i1 %i.and, %i.anb          ; 2 uses
  %i.anf = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.ang = insertelement <2 x i32> %i.anf, i32 %i.abh, i64 1
  %i.anh = insertelement <2 x i32> poison, i32 %i.amz, i64 0
  %i.ani = insertelement <2 x i32> %i.anh, i32 %i.ana, i64 1
  %i.anj = insertelement <2 x i32> poison, i32 %i.abh, i64 0
  %i.ank = shufflevector <2 x i32> %i.anj, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.anl = insertelement <2 x i32> poison, i32 %i.bc, i64 0 ; 2 uses
  %i.anm = shufflevector <2 x i32> %i.anl, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ann = insertelement <2 x i32> poison, i32 %i.be, i64 0
  %i.ano = shufflevector <2 x i32> %i.ann, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.anp = insertelement <2 x i32> %i.anl, i32 %i.abh, i64 1 ; 2 uses
  %i.anq = insertelement <2 x i32> poison, i32 %i.amz, i64 0
  %i.anr = insertelement <2 x i32> %i.anq, i32 %i.ana, i64 1 ; 2 uses
  %i.ans = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.ant = insertelement <2 x i32> %i.ans, i32 %i.abh, i64 1
  %i.anu = insertelement <2 x i32> poison, i32 %i.amz, i64 0
  %i.anv = insertelement <2 x i32> %i.anu, i32 %i.ana, i64 1
  %i.anw = insertelement <2 x i32> poison, i32 %i.abh, i64 0
  %i.anx = shufflevector <2 x i32> %i.anw, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.any = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.anz = shufflevector <2 x i32> %i.any, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aoa = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %i.aob = shufflevector <2 x i64> %i.aoa, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.ab

bb.v:                                             ; preds = %.loopexit80.i.i, %.lr.ph157.i.i
  %.11156.i.i = phi ptr [ %.0.lcssa.i.i, %.lr.ph157.i.i ], [ %.21.i.i, %.loopexit80.i.i ] ; 8 uses
  %.11254155.i.i = phi i32 [ %.01253.lcssa.i.i, %.lr.ph157.i.i ], [ %i.avj, %.loopexit80.i.i ] ; 2 uses
  %i.aoc = add nsw i32 %.11254155.i.i, %i.af
  %i.aod = insertelement <8 x i32> poison, i32 %i.aoc, i64 0
  %i.aoe = shufflevector <8 x i32> %i.aod, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aof = add <8 x i32> %i.aoe, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.aog = bitcast <8 x i32> %i.aof to <4 x i64>
  %i.aoh = bitcast <8 x i32> %i.aof to <4 x i64>
  %i.aoi = and <4 x i64> %i.aoh, splat (i64 4294967295)
  %i.aoj = mul nuw <4 x i64> %i.aoi, %i.adr
  %i.aok = lshr <4 x i64> %i.aoj, splat (i64 32)
  %i.aol = lshr <4 x i64> %i.aog, splat (i64 32)
  %i.aom = mul nuw <4 x i64> %i.aol, %i.adr
  %i.aon = bitcast <4 x i64> %i.aok to <16 x i16>
  %i.aoo = bitcast <4 x i64> %i.aom to <16 x i16>
  %i.aop = shufflevector <16 x i16> %i.aon, <16 x i16> %i.aoo, <16 x i32> <i32 0, i32 1, i32 18, i32 19, i32 4, i32 5, i32 22, i32 23, i32 8, i32 9, i32 26, i32 27, i32 12, i32 13, i32 30, i32 31>
  %i.aoq = bitcast <16 x i16> %i.aop to <8 x i32> ; 2 uses
  %i.aor = sub <8 x i32> %i.aof, %i.aoq
  %i.aos = lshr <8 x i32> %i.aor, %i.ads
  %i.aot = add <8 x i32> %i.aos, %i.aoq
  %i.aou = call <8 x i32> @llvm.x86.avx2.psrl.d(<8 x i32> %i.aot, <4 x i32> %i.aca) ; 2 uses
  %i.aov = mul <8 x i32> %i.aou, %i.adu
  %i.aow = sub <8 x i32> %i.aof, %i.aov
  %i.aox = mul <8 x i32> %i.aow, %i.adw           ; 2 uses
  %i.aoy = mul <8 x i32> %i.aou, %i.ady           ; 4 uses
  %i.aoz = add <8 x i32> %i.aox, %i.aoy           ; 4 uses
  %shift443 = shufflevector <8 x i32> %i.aoy, <8 x i32> poison, <8 x i32> <i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apa = icmp eq <8 x i32> %i.aoy, %shift443
  %i.apb = extractelement <8 x i1> %i.apa, i64 0
  %or.cond3.i.i = and i1 %i.bp, %i.apb
  br i1 %or.cond3.i.i, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %foldExtExtBinop402 = add nsw <8 x i32> %i.aox, %i.aoy
  %i.apc = extractelement <8 x i32> %foldExtExtBinop402, i64 0 ; 3 uses
  br i1 %i.adz, label %.preheader83.i.i, label %.loopexit82.i.i

.preheader83.i.i:                                 ; preds = %bb.w
  br i1 %i.aea, label %.lr.ph144.i.i, label %.preheader81.i.i

.lr.ph144.i.i:                                    ; preds = %.preheader83.i.i
  %i.apd = sext i32 %i.apc to i64                 ; 2 uses
  br label %bb.x

.preheader81.i.i:                                 ; preds = %bb.x, %.preheader83.i.i
  %.01266.lcssa.i.i = phi i32 [ 0, %.preheader83.i.i ], [ %i.aqf, %bb.x ] ; 2 uses
  %.12.lcssa.i77.i = phi ptr [ %.11156.i.i, %.preheader83.i.i ], [ %i.aqe, %bb.x ] ; 2 uses
  %i.ape = icmp slt i32 %.01266.lcssa.i.i, %.sroa.speculated
  br i1 %i.ape, label %.lr.ph149.i.i, label %.loopexit80.i.i

.lr.ph149.i.i:                                    ; preds = %.preheader81.i.i
  %i.apf = sext i32 %i.apc to i64
  br label %bb.y

bb.x:                                             ; preds = %bb.x, %.lr.ph144.i.i
  %.12143.i.i = phi ptr [ %.11156.i.i, %.lr.ph144.i.i ], [ %i.aqe, %bb.x ] ; 2 uses
  %.01266142.i.i = phi i32 [ 0, %.lr.ph144.i.i ], [ %i.aqf, %bb.x ] ; 2 uses
  %i.apg = add nsw i32 %.01266142.i.i, %i.ah      ; 2 uses
  %i.aph = add nsw i32 %i.apg, 1
  %21 = insertelement <2 x i32> poison, i32 %i.apg, i64 0
  %22 = insertelement <2 x i32> %21, i32 %i.aph, i64 1
  %.frozen = freeze <2 x i32> %22                 ; 2 uses
  %.frozen647 = freeze <2 x i32> %18              ; 2 uses
  %23 = sdiv <2 x i32> %.frozen, %.frozen647      ; 2 uses
  %24 = mul <2 x i32> %23, %.frozen647
  %.decomposed = sub <2 x i32> %.frozen, %24      ; 3 uses
  %25 = extractelement <2 x i32> %.decomposed, i64 0
  %26 = sdiv i32 %25, %i.bc
  %27 = extractelement <2 x i32> %.decomposed, i64 1
  %28 = sdiv i32 %27, %i.bc
  %29 = srem <2 x i32> %.decomposed, %i.aez       ; 2 uses
  %30 = mul i32 %26, %i.aeb
  %31 = extractelement <2 x i32> %29, i64 0
  %32 = mul nsw i32 %31, %i.be
  %33 = add nsw i32 %32, %30
  %34 = sext i32 %33 to i64
  %i.api = sext <2 x i32> %23 to <2 x i64>
  %i.apj = mul <2 x i64> %20, %i.api              ; 2 uses
  %i.apk = mul i32 %28, %i.aeb
  %35 = extractelement <2 x i32> %29, i64 1
  %i.apl = mul nsw i32 %35, %i.be
  %i.apm = add nsw i32 %i.apl, %i.apk
  %i.apn = sext i32 %i.apm to i64
  %i.apo = load ptr, ptr %9, align 8, !tbaa !22   ; 2 uses
  %i.app = extractelement <2 x i64> %i.apj, i64 0
  %i.apq = getelementptr i8, ptr %i.apo, i64 %i.app
  %i.apr = getelementptr i8, ptr %i.apq, i64 %i.apd
  %i.aps = getelementptr i8, ptr %i.apr, i64 %34
  %i.apt = load i64, ptr %i.aps, align 1, !tbaa !85
  %i.apu = insertelement <2 x i64> poison, i64 %i.apt, i64 0
  %i.apv = extractelement <2 x i64> %i.apj, i64 1
  %i.apw = getelementptr i8, ptr %i.apo, i64 %i.apv
  %i.apx = getelementptr i8, ptr %i.apw, i64 %i.apd
  %i.apy = getelementptr i8, ptr %i.apx, i64 %i.apn
  %i.apz = load i64, ptr %i.apy, align 1, !tbaa !85
  %i.aqa = insertelement <2 x i64> poison, i64 %i.apz, i64 0
  %i.aqb = bitcast <2 x i64> %i.apu to <16 x i8>
  %i.aqc = bitcast <2 x i64> %i.aqa to <16 x i8>
  %i.aqd = shufflevector <16 x i8> %i.aqb, <16 x i8> %i.aqc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.aqd, ptr %.12143.i.i, align 1, !tbaa !85
  %i.aqe = getelementptr inbounds nuw i8, ptr %.12143.i.i, i64 16 ; 2 uses
  %i.aqf = add nuw nsw i32 %.01266142.i.i, 2      ; 3 uses
  %i.aqg = or disjoint i32 %i.aqf, 1
  %i.aqh = icmp slt i32 %i.aqg, %.sroa.speculated
  br i1 %i.aqh, label %bb.x, label %.preheader81.i.i, !llvm.loop !2337

bb.y:                                             ; preds = %bb.y, %.lr.ph149.i.i
  %.13148.i.i = phi ptr [ %.12.lcssa.i77.i, %.lr.ph149.i.i ], [ %i.aqy, %bb.y ] ; 2 uses
  %.11267147.i.i = phi i32 [ %.01266.lcssa.i.i, %.lr.ph149.i.i ], [ %i.aqz, %bb.y ] ; 2 uses
  %i.aqi = add nsw i32 %.11267147.i.i, %i.ah      ; 2 uses
  %i.aqj = sdiv i32 %i.aqi, %i.abh
  %i.aqk = srem i32 %i.aqi, %i.abh                ; 2 uses
  %i.aql = sdiv i32 %i.aqk, %i.bc
  %i.aqm = srem i32 %i.aqk, %i.bc
  %i.aqn = sext i32 %i.aqj to i64
  %i.aqo = mul i64 %i.bs, %i.aqn
  %i.aqp = mul i32 %i.aql, %i.aeb
  %i.aqq = mul nsw i32 %i.aqm, %i.be
  %i.aqr = add nsw i32 %i.aqq, %i.aqp
  %i.aqs = sext i32 %i.aqr to i64
  %i.aqt = load ptr, ptr %9, align 8, !tbaa !22
  %i.aqu = getelementptr i8, ptr %i.aqt, i64 %i.aqo
  %i.aqv = getelementptr i8, ptr %i.aqu, i64 %i.apf
  %i.aqw = getelementptr i8, ptr %i.aqv, i64 %i.aqs
  %i.aqx = load i64, ptr %i.aqw, align 1, !tbaa !85
  store i64 %i.aqx, ptr %.13148.i.i, align 1, !tbaa !85
  %i.aqy = getelementptr inbounds nuw i8, ptr %.13148.i.i, i64 8 ; 2 uses
  %i.aqz = add nuw nsw i32 %.11267147.i.i, 1      ; 2 uses
  %exitcond311.not.i78.i = icmp eq i32 %i.aqz, %.sroa.speculated
  br i1 %exitcond311.not.i78.i, label %.loopexit80.i.i, label %bb.y, !llvm.loop !2338

.loopexit82.i.i:                                  ; preds = %bb.w
  br i1 %brmerge248.i.i, label %.loopexit80.i.i, label %.lr.ph153.i.i

.lr.ph153.i.i:                                    ; preds = %.loopexit82.i.i
  %i.ara = sext i32 %i.apc to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph153.i.i
  %.15152.i.i = phi ptr [ %.11156.i.i, %.lr.ph153.i.i ], [ %i.asb, %bb.z ] ; 3 uses
  %.01268151.i.i = phi i32 [ 0, %.lr.ph153.i.i ], [ %i.asc, %bb.z ] ; 2 uses
  %i.arb = add nsw i32 %.01268151.i.i, %i.aeg     ; 2 uses
  %i.arc = sdiv i32 %i.arb, %i.abh
  %i.ard = srem i32 %i.arb, %i.abh                ; 2 uses
  %i.are = sdiv i32 %i.ard, %i.bc
  %i.arf = srem i32 %i.ard, %i.bc
  %i.arg = sext i32 %i.arc to i64
  %i.arh = mul i64 %i.bs, %i.arg
  %i.ari = add i64 %i.arh, %i.ara
  %i.arj = mul i32 %i.are, %i.aeb
  %i.ark = mul nsw i32 %i.arf, %i.be
  %i.arl = add nsw i32 %i.ark, %i.arj
  %i.arm = sext i32 %i.arl to i64
  %i.arn = add i64 %i.ari, %i.arm
  %i.aro = shl i64 %i.arn, 3
  %i.arp = load ptr, ptr %9, align 8, !tbaa !22
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 %i.aro ; 2 uses
  %i.arr = load <16 x i16>, ptr %i.arq, align 1, !tbaa !85 ; 2 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arq, i64 32
  %i.art = load <16 x i16>, ptr %i.ars, align 1, !tbaa !85 ; 2 uses
  %i.aru = shufflevector <16 x i16> %i.arr, <16 x i16> %i.art, <16 x i32> <i32 0, i32 4, i32 16, i32 20, i32 1, i32 5, i32 17, i32 21, i32 8, i32 12, i32 24, i32 28, i32 9, i32 13, i32 25, i32 29>
  %i.arv = shufflevector <16 x i16> %i.arr, <16 x i16> %i.art, <16 x i32> <i32 2, i32 6, i32 18, i32 22, i32 3, i32 7, i32 19, i32 23, i32 10, i32 14, i32 26, i32 30, i32 11, i32 15, i32 27, i32 31>
  %i.arw = bitcast <16 x i16> %i.aru to <8 x i32>
  %i.arx = shufflevector <8 x i32> %i.arw, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ary = bitcast <16 x i16> %i.arv to <8 x i32>
  %i.arz = shufflevector <8 x i32> %i.ary, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %i.arx, ptr %.15152.i.i, align 1, !tbaa !85
  %i.asa = getelementptr inbounds nuw i8, ptr %.15152.i.i, i64 32
  store <8 x i32> %i.arz, ptr %i.asa, align 1, !tbaa !85
  %i.asb = getelementptr inbounds nuw i8, ptr %.15152.i.i, i64 64 ; 2 uses
  %i.asc = add nuw nsw i32 %.01268151.i.i, 1      ; 2 uses
  %exitcond312.not.i.i = icmp eq i32 %i.asc, %i.aee
  br i1 %exitcond312.not.i.i, label %.loopexit80.i.i, label %bb.z, !llvm.loop !2339

bb.aa:                                            ; preds = %bb.v
  br i1 %i.adz, label %.preheader88.i.i, label %.loopexit87.i.i

.preheader88.i.i:                                 ; preds = %bb.aa
  br i1 %i.aea, label %.lr.ph131.i.i, label %.preheader86.i.i

.preheader86.i.i:                                 ; preds = %.lr.ph131.i.i, %.preheader88.i.i
  %.01269.lcssa.i.i = phi i32 [ 0, %.preheader88.i.i ], [ %i.ath, %.lr.ph131.i.i ] ; 2 uses
  %.17.lcssa.i.i = phi ptr [ %.11156.i.i, %.preheader88.i.i ], [ %i.atg, %.lr.ph131.i.i ] ; 2 uses
  %i.asd = icmp slt i32 %.01269.lcssa.i.i, %.sroa.speculated
  br i1 %i.asd, label %.lr.ph136.i.i, label %.loopexit80.i.i

.lr.ph131.i.i:                                    ; preds = %.preheader88.i.i, %.lr.ph131.i.i
  %.17130.i.i = phi ptr [ %i.atg, %.lr.ph131.i.i ], [ %.11156.i.i, %.preheader88.i.i ] ; 2 uses
  %.01269129.i.i = phi i32 [ %i.ath, %.lr.ph131.i.i ], [ 0, %.preheader88.i.i ] ; 2 uses
  %i.ase = add nsw i32 %.01269129.i.i, %i.ah      ; 3 uses
  %i.asf = add nsw i32 %i.ase, 1                  ; 2 uses
  %i.asg = insertelement <2 x i32> poison, i32 %i.ase, i64 0
  %i.ash = insertelement <2 x i32> %i.asg, i32 %i.asf, i64 1
  %i.asi = srem <2 x i32> %i.ash, %i.aem          ; 3 uses
  %i.asj = srem <2 x i32> %i.asi, %i.aeo
  %i.ask = mul nsw <2 x i32> %i.asj, %i.aeq       ; 2 uses
  %i.asl = insertelement <2 x i32> %i.asi, i32 %i.ase, i64 1
  %i.asm = sdiv <2 x i32> %i.asl, %i.aer
  %i.asn = mul <2 x i32> %i.asm, %i.aet           ; 2 uses
  %shift404 = shufflevector <2 x i32> %i.asn, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop405 = add <2 x i32> %i.asn, %shift404
  %foldExtExtBinop407 = add <2 x i32> %foldExtExtBinop405, %i.ask
  %i.aso = shufflevector <2 x i32> %foldExtExtBinop407, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.asp = add <8 x i32> %i.aso, %i.aoz
  %i.asq = shufflevector <2 x i32> %i.asi, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.asr = insertelement <2 x i32> %i.asq, i32 %i.asf, i64 1
  %i.ass = sdiv <2 x i32> %i.asr, %i.aer
  %i.ast = mul <2 x i32> %i.ass, %i.aet           ; 2 uses
  %i.asu = shufflevector <2 x i32> %i.ast, <2 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.asv = shufflevector <2 x i32> %i.ast, <2 x i32> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.asw = add <8 x i32> %i.asu, %i.asv
  %i.asx = shufflevector <8 x i32> %i.asw, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.asy = shufflevector <2 x i32> %i.ask, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.asz = add <8 x i32> %i.asx, %i.asy
  %i.ata = add <8 x i32> %i.asz, %i.aoz
  %i.atb = load ptr, ptr %9, align 8, !tbaa !22   ; 2 uses
  %i.atc = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.atb, <8 x i32> %i.asp, <8 x i32> splat (i32 -1), i8 1)
  %i.atd = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.atb, <8 x i32> %i.ata, <8 x i32> splat (i32 -1), i8 1)
  %i.ate = shufflevector <8 x i32> %i.atc, <8 x i32> %i.atd, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.atf = trunc <16 x i32> %i.ate to <16 x i8>
  store <16 x i8> %i.atf, ptr %.17130.i.i, align 1, !tbaa !85
  %i.atg = getelementptr inbounds nuw i8, ptr %.17130.i.i, i64 16 ; 2 uses
  %i.ath = add nuw nsw i32 %.01269129.i.i, 2      ; 3 uses
  %i.ati = or disjoint i32 %i.ath, 1
  %i.atj = icmp slt i32 %i.ati, %.sroa.speculated
  br i1 %i.atj, label %.lr.ph131.i.i, label %.preheader86.i.i, !llvm.loop !2340

.lr.ph136.i.i:                                    ; preds = %.preheader86.i.i, %.lr.ph136.i.i
  %.18135.i.i = phi ptr [ %i.aud, %.lr.ph136.i.i ], [ %.17.lcssa.i.i, %.preheader86.i.i ] ; 2 uses
  %.11270134.i.i = phi i32 [ %i.aue, %.lr.ph136.i.i ], [ %.01269.lcssa.i.i, %.preheader86.i.i ] ; 2 uses
  %i.atk = add nsw i32 %.11270134.i.i, %i.ah      ; 2 uses
  %i.atl = srem i32 %i.atk, %i.abh                ; 2 uses
  %i.atm = srem i32 %i.atl, %i.bc
  %i.atn = mul nsw i32 %i.atm, %i.be
  %i.ato = insertelement <2 x i32> poison, i32 %i.atl, i64 0
  %i.atp = insertelement <2 x i32> %i.ato, i32 %i.atk, i64 1
  %i.atq = sdiv <2 x i32> %i.atp, %i.aev
  %i.atr = mul <2 x i32> %i.atq, %i.aex
  %i.ats = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.atr)
  %i.att = add i32 %i.ats, %i.atn
  %i.atu = insertelement <8 x i32> poison, i32 %i.att, i64 0
  %i.atv = shufflevector <8 x i32> %i.atu, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.atw = add <8 x i32> %i.atv, %i.aoz
  %i.atx = load ptr, ptr %9, align 8, !tbaa !22
  %i.aty = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.atx, <8 x i32> %i.atw, <8 x i32> splat (i32 -1), i8 1)
  %i.atz = shufflevector <8 x i32> %i.aty, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aua = trunc <16 x i32> %i.atz to <16 x i8>
  %i.aub = bitcast <16 x i8> %i.aua to <2 x i64>
  %i.auc = extractelement <2 x i64> %i.aub, i64 0
  store i64 %i.auc, ptr %.18135.i.i, align 1, !tbaa !85
  %i.aud = getelementptr inbounds nuw i8, ptr %.18135.i.i, i64 8 ; 2 uses
  %i.aue = add nuw nsw i32 %.11270134.i.i, 1      ; 2 uses
  %exitcond309.not.i.i = icmp eq i32 %i.aue, %.sroa.speculated
  br i1 %exitcond309.not.i.i, label %.loopexit80.i.i, label %.lr.ph136.i.i, !llvm.loop !2341

.loopexit87.i.i:                                  ; preds = %bb.aa
  br i1 %brmerge248.i.i, label %.loopexit80.i.i, label %.lr.ph140.i.i

.lr.ph140.i.i:                                    ; preds = %.loopexit87.i.i, %.lr.ph140.i.i
  %.20139.i.i = phi ptr [ %i.avh, %.lr.ph140.i.i ], [ %.11156.i.i, %.loopexit87.i.i ] ; 3 uses
  %.01271138.i.i = phi i32 [ %i.avi, %.lr.ph140.i.i ], [ 0, %.loopexit87.i.i ] ; 2 uses
  %i.auf = add nsw i32 %.01271138.i.i, %i.aeg     ; 2 uses
  %i.aug = srem i32 %i.auf, %i.abh                ; 2 uses
  %i.auh = srem i32 %i.aug, %i.bc
  %i.aui = mul nsw i32 %i.auh, %i.be
  %i.auj = insertelement <2 x i32> poison, i32 %i.aug, i64 0
  %i.auk = insertelement <2 x i32> %i.auj, i32 %i.auf, i64 1
  %i.aul = sdiv <2 x i32> %i.auk, %i.aei
  %i.aum = mul <2 x i32> %i.aul, %i.aek
  %i.aun = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.aum)
  %i.auo = add i32 %i.aun, %i.aui
  %i.aup = insertelement <8 x i32> poison, i32 %i.auo, i64 0
  %i.auq = shufflevector <8 x i32> %i.aup, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aur = add <8 x i32> %i.auq, %i.aoz
  %i.aus = shl <8 x i32> %i.aur, splat (i32 3)    ; 2 uses
  %i.aut = load ptr, ptr %9, align 8, !tbaa !22   ; 2 uses
  %i.auu = shufflevector <8 x i32> %i.aus, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.auv = call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.aut, <4 x i32> %i.auu, <4 x i64> splat (i64 -1), i8 1)
  %i.auw = shufflevector <8 x i32> %i.aus, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aux = call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.aut, <4 x i32> %i.auw, <4 x i64> splat (i64 -1), i8 1)
  %i.auy = bitcast <4 x i64> %i.auv to <16 x i16> ; 2 uses
  %i.auz = bitcast <4 x i64> %i.aux to <16 x i16> ; 2 uses
  %i.ava = shufflevector <16 x i16> %i.auy, <16 x i16> %i.auz, <16 x i32> <i32 0, i32 4, i32 16, i32 20, i32 1, i32 5, i32 17, i32 21, i32 8, i32 12, i32 24, i32 28, i32 9, i32 13, i32 25, i32 29>
  %i.avb = shufflevector <16 x i16> %i.auy, <16 x i16> %i.auz, <16 x i32> <i32 2, i32 6, i32 18, i32 22, i32 3, i32 7, i32 19, i32 23, i32 10, i32 14, i32 26, i32 30, i32 11, i32 15, i32 27, i32 31>
  %i.avc = bitcast <16 x i16> %i.ava to <8 x i32>
  %i.avd = shufflevector <8 x i32> %i.avc, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ave = bitcast <16 x i16> %i.avb to <8 x i32>
  %i.avf = shufflevector <8 x i32> %i.ave, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %i.avd, ptr %.20139.i.i, align 1, !tbaa !85
  %i.avg = getelementptr inbounds nuw i8, ptr %.20139.i.i, i64 32
  store <8 x i32> %i.avf, ptr %i.avg, align 1, !tbaa !85
  %i.avh = getelementptr inbounds nuw i8, ptr %.20139.i.i, i64 64 ; 2 uses
  %i.avi = add nuw nsw i32 %.01271138.i.i, 1      ; 2 uses
  %exitcond310.not.i.i = icmp eq i32 %i.avi, %i.aee
  br i1 %exitcond310.not.i.i, label %.loopexit80.i.i, label %.lr.ph140.i.i, !llvm.loop !2342

.loopexit80.i.i:                                  ; preds = %.lr.ph140.i.i, %.lr.ph136.i.i, %bb.z, %bb.y, %.loopexit87.i.i, %.preheader86.i.i, %.loopexit82.i.i, %.preheader81.i.i
  %.21.i.i = phi ptr [ %.11156.i.i, %.loopexit87.i.i ], [ %.12.lcssa.i77.i, %.preheader81.i.i ], [ %.11156.i.i, %.loopexit82.i.i ], [ %i.asb, %bb.z ], [ %i.aqy, %bb.y ], [ %.17.lcssa.i.i, %.preheader86.i.i ], [ %i.aud, %.lr.ph136.i.i ], [ %i.avh, %.lr.ph140.i.i ] ; 2 uses
  %i.avj = add nuw nsw i32 %.11254155.i.i, 8      ; 3 uses
  %i.avk = or disjoint i32 %i.avj, 7
  %i.avl = icmp slt i32 %i.avk, %.sroa.speculated63
  br i1 %i.avl, label %bb.v, label %.preheader78.i.i, !llvm.loop !2343

.preheader67.i.i:                                 ; preds = %.loopexit69.i.i, %.preheader78.i.i
  %.21255.lcssa.i.i = phi i32 [ %.11254.lcssa.i.i, %.preheader78.i.i ], [ %i.bew, %.loopexit69.i.i ] ; 3 uses
  %.22.lcssa.i.i = phi ptr [ %.11.lcssa.i.i, %.preheader78.i.i ], [ %.32.i.i, %.loopexit69.i.i ] ; 2 uses
  %i.avm = or disjoint i32 %.21255.lcssa.i.i, 1
  %i.avn = icmp slt i32 %i.avm, %.sroa.speculated63
  br i1 %i.avn, label %.lr.ph220.i.i, label %.preheader56.i.i

.lr.ph220.i.i:                                    ; preds = %.preheader67.i.i
  %i.avo = mul i32 %i.aba, %i.bh
  %i.avp = icmp eq i32 %i.abb, 1                  ; 2 uses
  %i.avq = icmp sgt i32 %.sroa.speculated, 1      ; 2 uses
  %i.avr = mul i32 %i.aba, %i.bf                  ; 7 uses
  %i.avs = trunc i64 %i.bs to i32
  %i.avt = icmp eq i32 %i.abb, 8
  %i.avu = sdiv i32 %.sroa.speculated, 8          ; 2 uses
  %i.avv = sdiv i32 %i.ah, 8                      ; 2 uses
  %i.avw = icmp sgt i32 %.sroa.speculated, 7
  %or.cond258.i.i = and i1 %i.avw, %i.avt         ; 2 uses
  %i.avx = insertelement <2 x i32> poison, i32 %i.bg, i64 0
  %i.avy = shufflevector <2 x i32> %i.avx, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.avz = insertelement <2 x i32> poison, i32 %i.abg, i64 0
  %i.awa = shufflevector <2 x i32> %i.avz, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.awb = insertelement <2 x i32> poison, i32 %i.avo, i64 0
  %i.awc = shufflevector <2 x i32> %i.awb, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.awd = insertelement <2 x i32> poison, i32 %i.abh, i64 0
  %i.awe = shufflevector <2 x i32> %i.awd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.awf = insertelement <2 x i32> poison, i32 %i.bc, i64 0 ; 2 uses
  %i.awg = shufflevector <2 x i32> %i.awf, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.awh = insertelement <2 x i32> %i.awf, i32 %i.abh, i64 1 ; 2 uses
  %i.awi = insertelement <2 x i32> poison, i32 %i.avr, i64 0
  %36 = insertelement <2 x i32> %i.awi, i32 %i.avs, i64 1 ; 2 uses
  %i.awj = insertelement <2 x i32> poison, i32 %i.be, i64 0
  %i.awk = shufflevector <2 x i32> %i.awj, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.awl = insertelement <2 x i32> poison, i32 %i.abh, i64 0
  %i.awm = shufflevector <2 x i32> %i.awl, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.awn = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.awo = shufflevector <2 x i32> %i.awn, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.awp = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %i.awq = shufflevector <2 x i64> %i.awp, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.ah

bb.ab:                                            ; preds = %.loopexit69.i.i, %.lr.ph188.i.i
  %.22187.i.i = phi ptr [ %.11.lcssa.i.i, %.lr.ph188.i.i ], [ %.32.i.i, %.loopexit69.i.i ] ; 8 uses
  %.21255186.i.i = phi i32 [ %.11254.lcssa.i.i, %.lr.ph188.i.i ], [ %i.bew, %.loopexit69.i.i ] ; 2 uses
  %i.awr = add nsw i32 %.21255186.i.i, %i.af
  %i.aws = insertelement <4 x i32> poison, i32 %i.awr, i64 0
  %i.awt = shufflevector <4 x i32> %i.aws, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.awu = add <4 x i32> %i.awt, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.awv = bitcast <4 x i32> %i.awu to <2 x i64>
  %i.aww = bitcast <4 x i32> %i.awu to <2 x i64>
  %i.awx = and <2 x i64> %i.aww, splat (i64 4294967295)
  %i.awy = mul nuw <2 x i64> %i.awx, %i.amp
  %i.awz = lshr <2 x i64> %i.awy, splat (i64 32)
  %i.axa = lshr <2 x i64> %i.awv, splat (i64 32)
  %i.axb = mul nuw <2 x i64> %i.axa, %i.amp
  %i.axc = bitcast <2 x i64> %i.awz to <8 x i16>
  %i.axd = bitcast <2 x i64> %i.axb to <8 x i16>
  %i.axe = shufflevector <8 x i16> %i.axc, <8 x i16> %i.axd, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.axf = bitcast <8 x i16> %i.axe to <4 x i32>  ; 2 uses
  %i.axg = sub <4 x i32> %i.awu, %i.axf
  %i.axh = lshr <4 x i32> %i.axg, %i.amq
  %i.axi = add <4 x i32> %i.axh, %i.axf
  %i.axj = call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.axi, <4 x i32> %i.aca) ; 2 uses
  %i.axk = mul <4 x i32> %i.axj, %i.ams
  %i.axl = sub <4 x i32> %i.awu, %i.axk
  %i.axm = mul <4 x i32> %i.axl, %i.amu           ; 2 uses
  %i.axn = mul <4 x i32> %i.axj, %i.amw           ; 4 uses
  %i.axo = add <4 x i32> %i.axm, %i.axn           ; 4 uses
  %shift442 = shufflevector <4 x i32> %i.axn, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.axp = icmp eq <4 x i32> %i.axn, %shift442
  %i.axq = extractelement <4 x i1> %i.axp, i64 0
  %or.cond5.i.i = and i1 %i.bp, %i.axq
  br i1 %or.cond5.i.i, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %foldExtExtBinop422 = add nsw <4 x i32> %i.axm, %i.axn
  %i.axr = extractelement <4 x i32> %foldExtExtBinop422, i64 0 ; 3 uses
  br i1 %i.amx, label %.preheader72.i.i, label %.loopexit71.i.i

.preheader72.i.i:                                 ; preds = %bb.ac
  br i1 %i.amy, label %.lr.ph175.i.i, label %.preheader70.i.i

.lr.ph175.i.i:                                    ; preds = %.preheader72.i.i
  %i.axs = sext i32 %i.axr to i64                 ; 2 uses
  br label %bb.ad

.preheader70.i.i:                                 ; preds = %bb.ad, %.preheader72.i.i
  %.01272.lcssa.i.i = phi i32 [ 0, %.preheader72.i.i ], [ %i.azl, %bb.ad ] ; 2 uses
  %.23.lcssa.i.i = phi ptr [ %.22187.i.i, %.preheader72.i.i ], [ %i.azk, %bb.ad ] ; 2 uses
  %i.axt = icmp slt i32 %.01272.lcssa.i.i, %.sroa.speculated
  br i1 %i.axt, label %.lr.ph180.i.i, label %.loopexit69.i.i

.lr.ph180.i.i:                                    ; preds = %.preheader70.i.i
  %i.axu = sext i32 %i.axr to i64
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ad, %.lr.ph175.i.i
  %.23174.i.i = phi ptr [ %.22187.i.i, %.lr.ph175.i.i ], [ %i.azk, %bb.ad ] ; 2 uses
  %.01272173.i.i = phi i32 [ 0, %.lr.ph175.i.i ], [ %i.azl, %bb.ad ] ; 2 uses
  %i.axv = add nsw i32 %.01272173.i.i, %i.ah      ; 2 uses
  %i.axw = add nsw i32 %i.axv, 1
  %i.axx = insertelement <2 x i32> poison, i32 %i.axv, i64 0
  %i.axy = insertelement <2 x i32> %i.axx, i32 %i.axw, i64 1
  %.frozen.a = freeze <2 x i32> %i.axy            ; 2 uses
  %.frozen647.a = freeze <2 x i32> %i.anx         ; 2 uses
  %i.axz = sdiv <2 x i32> %.frozen.a, %.frozen647.a ; 2 uses
  %i.aya = mul <2 x i32> %i.axz, %.frozen647.a
  %.decomposed.a = sub <2 x i32> %.frozen.a, %i.aya ; 3 uses
  %i.ayb = extractelement <2 x i32> %.decomposed.a, i64 0
  %i.ayc = sdiv i32 %i.ayb, %i.bc
  %i.ayd = extractelement <2 x i32> %.decomposed.a, i64 1
  %i.aye = sdiv i32 %i.ayd, %i.bc
  %i.ayf = srem <2 x i32> %.decomposed.a, %i.anz  ; 2 uses
  %i.ayg = mul i32 %i.ayc, %i.amz
  %i.ayh = extractelement <2 x i32> %i.ayf, i64 0
  %i.ayi = mul nsw i32 %i.ayh, %i.be
  %i.ayj = add nsw i32 %i.ayi, %i.ayg
  %i.ayk = sext i32 %i.ayj to i64
  %i.ayl = sext <2 x i32> %i.axz to <2 x i64>
  %i.aym = mul <2 x i64> %i.aob, %i.ayl           ; 2 uses
  %i.ayn = mul i32 %i.aye, %i.amz
  %i.ayo = extractelement <2 x i32> %i.ayf, i64 1
  %i.ayp = mul nsw i32 %i.ayo, %i.be
  %i.ayq = add nsw i32 %i.ayp, %i.ayn
  %i.ayr = sext i32 %i.ayq to i64
  %i.ays = load ptr, ptr %9, align 8, !tbaa !22   ; 2 uses
  %i.ayt = extractelement <2 x i64> %i.aym, i64 0
  %i.ayu = getelementptr i8, ptr %i.ays, i64 %i.ayt
  %i.ayv = getelementptr i8, ptr %i.ayu, i64 %i.axs
  %i.ayw = getelementptr i8, ptr %i.ayv, i64 %i.ayk
  %i.ayx = load i64, ptr %i.ayw, align 1, !tbaa !85
  %i.ayy = insertelement <2 x i64> poison, i64 %i.ayx, i64 0
  %i.ayz = extractelement <2 x i64> %i.aym, i64 1
  %i.aza = getelementptr i8, ptr %i.ays, i64 %i.ayz
  %i.azb = getelementptr i8, ptr %i.aza, i64 %i.axs
  %i.azc = getelementptr i8, ptr %i.azb, i64 %i.ayr
  %i.azd = load i64, ptr %i.azc, align 1, !tbaa !85
  %i.aze = insertelement <2 x i64> poison, i64 %i.azd, i64 0
  %i.azf = bitcast <2 x i64> %i.ayy to <16 x i8>
  %i.azg = bitcast <2 x i64> %i.aze to <16 x i8>
  %i.azh = shufflevector <16 x i8> %i.azf, <16 x i8> %i.azg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.azi = bitcast <16 x i8> %i.azh to <2 x i64>
  %i.azj = extractelement <2 x i64> %i.azi, i64 0
  store i64 %i.azj, ptr %.23174.i.i, align 1, !tbaa !85
  %i.azk = getelementptr inbounds nuw i8, ptr %.23174.i.i, i64 8 ; 2 uses
  %i.azl = add nuw nsw i32 %.01272173.i.i, 2      ; 3 uses
  %i.azm = or disjoint i32 %i.azl, 1
  %i.azn = icmp slt i32 %i.azm, %.sroa.speculated
  br i1 %i.azn, label %bb.ad, label %.preheader70.i.i, !llvm.loop !2344

bb.ae:                                            ; preds = %bb.ae, %.lr.ph180.i.i
  %.24179.i.i = phi ptr [ %.23.lcssa.i.i, %.lr.ph180.i.i ], [ %i.bat, %bb.ae ] ; 5 uses
  %.11273178.i.i = phi i32 [ %.01272.lcssa.i.i, %.lr.ph180.i.i ], [ %i.bau, %bb.ae ] ; 2 uses
  %i.azo = add nsw i32 %.11273178.i.i, %i.ah      ; 2 uses
  %i.azp = sdiv i32 %i.azo, %i.abh
  %i.azq = srem i32 %i.azo, %i.abh                ; 2 uses
  %i.azr = sdiv i32 %i.azq, %i.bc
  %i.azs = srem i32 %i.azq, %i.bc
  %i.azt = sext i32 %i.azp to i64
  %i.azu = mul i64 %i.bs, %i.azt
  %i.azv = add i64 %i.azu, %i.axu
  %i.azw = mul i32 %i.azr, %i.amz
  %i.azx = mul nsw i32 %i.azs, %i.be
  %i.azy = add nsw i32 %i.azx, %i.azw
  %i.azz = sext i32 %i.azy to i64
  %i.baa = add i64 %i.azv, %i.azz                 ; 4 uses
  %i.bab = load ptr, ptr %9, align 8, !tbaa !22
  %i.bac = getelementptr inbounds nuw i8, ptr %i.bab, i64 %i.baa
  %i.bad = load i8, ptr %i.bac, align 1, !tbaa !85
  store i8 %i.bad, ptr %.24179.i.i, align 1, !tbaa !85
  %i.bae = load ptr, ptr %9, align 8, !tbaa !22
  %i.baf = getelementptr i8, ptr %i.bae, i64 %i.baa
  %i.bag = getelementptr i8, ptr %i.baf, i64 1
  %i.bah = load i8, ptr %i.bag, align 1, !tbaa !85
  %i.bai = getelementptr inbounds nuw i8, ptr %.24179.i.i, i64 1
  store i8 %i.bah, ptr %i.bai, align 1, !tbaa !85
  %i.baj = load ptr, ptr %9, align 8, !tbaa !22
  %i.bak = getelementptr i8, ptr %i.baj, i64 %i.baa
  %i.bal = getelementptr i8, ptr %i.bak, i64 2
  %i.bam = load i8, ptr %i.bal, align 1, !tbaa !85
  %i.ban = getelementptr inbounds nuw i8, ptr %.24179.i.i, i64 2
  store i8 %i.bam, ptr %i.ban, align 1, !tbaa !85
  %i.bao = load ptr, ptr %9, align 8, !tbaa !22
  %i.bap = getelementptr i8, ptr %i.bao, i64 %i.baa
  %i.baq = getelementptr i8, ptr %i.bap, i64 3
  %i.bar = load i8, ptr %i.baq, align 1, !tbaa !85
  %i.bas = getelementptr inbounds nuw i8, ptr %.24179.i.i, i64 3
  store i8 %i.bar, ptr %i.bas, align 1, !tbaa !85
  %i.bat = getelementptr inbounds nuw i8, ptr %.24179.i.i, i64 4 ; 2 uses
  %i.bau = add nuw nsw i32 %.11273178.i.i, 1      ; 2 uses
  %exitcond315.not.i76.i = icmp eq i32 %i.bau, %.sroa.speculated
  br i1 %exitcond315.not.i76.i, label %.loopexit69.i.i, label %bb.ae, !llvm.loop !2345

.loopexit71.i.i:                                  ; preds = %bb.ac
  br i1 %brmerge254.i.i, label %.loopexit69.i.i, label %.lr.ph184.i.i

.lr.ph184.i.i:                                    ; preds = %.loopexit71.i.i
  %i.bav = sext i32 %i.axr to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.lr.ph184.i.i
  %.26183.i.i = phi ptr [ %.22187.i.i, %.lr.ph184.i.i ], [ %i.bbs, %bb.af ] ; 3 uses
  %.01274182.i.i = phi i32 [ 0, %.lr.ph184.i.i ], [ %i.bbt, %bb.af ] ; 2 uses
  %i.baw = add nsw i32 %.01274182.i.i, %i.ane     ; 2 uses
  %i.bax = sdiv i32 %i.baw, %i.abh
  %i.bay = srem i32 %i.baw, %i.abh                ; 2 uses
  %i.baz = sdiv i32 %i.bay, %i.bc
  %i.bba = srem i32 %i.bay, %i.bc
  %i.bbb = sext i32 %i.bax to i64
  %i.bbc = mul i64 %i.bs, %i.bbb
  %i.bbd = add i64 %i.bbc, %i.bav
  %i.bbe = mul i32 %i.baz, %i.amz
  %i.bbf = mul nsw i32 %i.bba, %i.be
  %i.bbg = add nsw i32 %i.bbf, %i.bbe
  %i.bbh = sext i32 %i.bbg to i64
  %i.bbi = add i64 %i.bbd, %i.bbh
  %i.bbj = shl i64 %i.bbi, 3
  %i.bbk = load ptr, ptr %9, align 8, !tbaa !22
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 %i.bbj ; 2 uses
  %i.bbm = load <8 x i16>, ptr %i.bbl, align 1, !tbaa !85 ; 2 uses
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbl, i64 16
  %i.bbo = load <8 x i16>, ptr %i.bbn, align 1, !tbaa !85 ; 2 uses
  %i.bbp = shufflevector <8 x i16> %i.bbm, <8 x i16> %i.bbo, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.bbq = shufflevector <8 x i16> %i.bbm, <8 x i16> %i.bbo, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.bbp, ptr %.26183.i.i, align 1, !tbaa !85
  %i.bbr = getelementptr inbounds nuw i8, ptr %.26183.i.i, i64 16
  store <8 x i16> %i.bbq, ptr %i.bbr, align 1, !tbaa !85
  %i.bbs = getelementptr inbounds nuw i8, ptr %.26183.i.i, i64 32 ; 2 uses
  %i.bbt = add nuw nsw i32 %.01274182.i.i, 1      ; 2 uses
  %exitcond316.not.i75.i = icmp eq i32 %i.bbt, %i.anc
  br i1 %exitcond316.not.i75.i, label %.loopexit69.i.i, label %bb.af, !llvm.loop !2346

end_hunk_2
begin_hunk_3_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.bfh = sdiv i32 %i.ah, 8
  %brmerge261.i.i = or i1 %i.bfg, %i.bfe
  %i.bfi = insertelement <2 x i32> poison, i32 %i.abh, i64 0
  %i.bfj = shufflevector <2 x i32> %i.bfi, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bfk = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.bfl = shufflevector <2 x i32> %i.bfk, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bfm = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %i.bfn = shufflevector <2 x i64> %i.bfm, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.ap

bb.ah:                                            ; preds = %.loopexit58.i.i, %.lr.ph220.i.i
  %.33219.i.i = phi ptr [ %.22.lcssa.i.i, %.lr.ph220.i.i ], [ %.44.i.i, %.loopexit58.i.i ] ; 8 uses
  %.31256218.i.i = phi i32 [ %.21255.lcssa.i.i, %.lr.ph220.i.i ], [ %i.bnh, %.loopexit58.i.i ] ; 2 uses
  %i.bfo = add nsw i32 %.31256218.i.i, %i.af      ; 2 uses
  %i.bfp = add nsw i32 %i.bfo, 1
  %i.bfq = insertelement <2 x i32> poison, i32 %i.bfo, i64 0
  %i.bfr = insertelement <2 x i32> %i.bfq, i32 %i.bfp, i64 1
  %.frozen648 = freeze <2 x i32> %i.bfr           ; 2 uses
  %.frozen649 = freeze <2 x i32> %i.awa           ; 2 uses
  %i.bfs = sdiv <2 x i32> %.frozen648, %.frozen649 ; 2 uses
  %i.bft = mul <2 x i32> %i.bfs, %.frozen649
  %.decomposed650 = sub <2 x i32> %.frozen648, %i.bft
  %i.bfu = mul nsw <2 x i32> %.decomposed650, %i.avy
  %i.bfv = mul <2 x i32> %i.bfs, %i.awc           ; 3 uses
  %i.bfw = add nsw <2 x i32> %i.bfu, %i.bfv       ; 8 uses
  %shift441 = shufflevector <2 x i32> %i.bfv, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.bfx = icmp eq <2 x i32> %i.bfv, %shift441
  %i.bfy = extractelement <2 x i1> %i.bfx, i64 0
  %or.cond7.i.i = and i1 %i.bp, %i.bfy
  br i1 %or.cond7.i.i, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.avp, label %.preheader61.i.i, label %.loopexit60.i.i

.preheader61.i.i:                                 ; preds = %bb.ai
  br i1 %i.avq, label %.lr.ph207.i.i, label %.preheader59.i.i

.lr.ph207.i.i:                                    ; preds = %.preheader61.i.i
  %i.bfz = extractelement <2 x i32> %i.bfw, i64 0
  %i.bga = sext i32 %i.bfz to i64                 ; 2 uses
  br label %bb.aj

.preheader59.i.i:                                 ; preds = %bb.aj, %.preheader61.i.i
  %.01278.lcssa.i.i = phi i32 [ 0, %.preheader61.i.i ], [ %i.bhu, %bb.aj ] ; 2 uses
  %.34.lcssa.i.i = phi ptr [ %.33219.i.i, %.preheader61.i.i ], [ %i.bht, %bb.aj ] ; 2 uses
  %i.bgb = icmp slt i32 %.01278.lcssa.i.i, %.sroa.speculated
  br i1 %i.bgb, label %.lr.ph212.i.i, label %.loopexit58.i.i

.lr.ph212.i.i:                                    ; preds = %.preheader59.i.i
  %i.bgc = extractelement <2 x i32> %i.bfw, i64 0
  %i.bgd = sext i32 %i.bgc to i64
  br label %bb.ak

bb.aj:                                            ; preds = %bb.aj, %.lr.ph207.i.i
  %.34206.i.i = phi ptr [ %.33219.i.i, %.lr.ph207.i.i ], [ %i.bht, %bb.aj ] ; 5 uses
  %.01278205.i.i = phi i32 [ 0, %.lr.ph207.i.i ], [ %i.bhu, %bb.aj ] ; 2 uses
  %i.bge = add nsw i32 %.01278205.i.i, %i.ah      ; 2 uses
  %i.bgf = add nsw i32 %i.bge, 1
  %i.bgg = insertelement <2 x i32> poison, i32 %i.bge, i64 0
  %i.bgh = insertelement <2 x i32> %i.bgg, i32 %i.bgf, i64 1
  %.frozen651 = freeze <2 x i32> %i.bgh           ; 2 uses
  %.frozen652 = freeze <2 x i32> %i.awm           ; 2 uses
  %i.bgi = sdiv <2 x i32> %.frozen651, %.frozen652 ; 2 uses
  %i.bgj = mul <2 x i32> %i.bgi, %.frozen652
  %.decomposed653 = sub <2 x i32> %.frozen651, %i.bgj ; 3 uses
  %i.bgk = extractelement <2 x i32> %.decomposed653, i64 0
  %i.bgl = sdiv i32 %i.bgk, %i.bc
  %i.bgm = extractelement <2 x i32> %.decomposed653, i64 1
  %i.bgn = sdiv i32 %i.bgm, %i.bc
  %i.bgo = srem <2 x i32> %.decomposed653, %i.awo ; 2 uses
  %i.bgp = mul i32 %i.bgl, %i.avr
  %i.bgq = extractelement <2 x i32> %i.bgo, i64 0
  %i.bgr = mul nsw i32 %i.bgq, %i.be
  %i.bgs = add nsw i32 %i.bgr, %i.bgp
  %i.bgt = sext i32 %i.bgs to i64
  %i.bgu = sext <2 x i32> %i.bgi to <2 x i64>
  %i.bgv = mul <2 x i64> %i.awq, %i.bgu           ; 2 uses
  %i.bgw = mul i32 %i.bgn, %i.avr
  %i.bgx = extractelement <2 x i32> %i.bgo, i64 1
  %i.bgy = mul nsw i32 %i.bgx, %i.be
  %i.bgz = add nsw i32 %i.bgy, %i.bgw
  %i.bha = sext i32 %i.bgz to i64
  %i.bhb = load ptr, ptr %9, align 8, !tbaa !22   ; 2 uses
  %i.bhc = extractelement <2 x i64> %i.bgv, i64 0
  %i.bhd = getelementptr i8, ptr %i.bhb, i64 %i.bhc
  %i.bhe = getelementptr i8, ptr %i.bhd, i64 %i.bga
  %i.bhf = getelementptr i8, ptr %i.bhe, i64 %i.bgt ; 2 uses
  %i.bhg = extractelement <2 x i64> %i.bgv, i64 1
  %i.bhh = getelementptr i8, ptr %i.bhb, i64 %i.bhg
  %i.bhi = getelementptr i8, ptr %i.bhh, i64 %i.bga
  %i.bhj = getelementptr i8, ptr %i.bhi, i64 %i.bha ; 2 uses
  %i.bhk = load i8, ptr %i.bhf, align 1, !tbaa !85
  store i8 %i.bhk, ptr %.34206.i.i, align 1, !tbaa !85
  %i.bhl = load i8, ptr %i.bhj, align 1, !tbaa !85
  %i.bhm = getelementptr inbounds nuw i8, ptr %.34206.i.i, i64 1
  store i8 %i.bhl, ptr %i.bhm, align 1, !tbaa !85
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhf, i64 1
  %i.bho = load i8, ptr %i.bhn, align 1, !tbaa !85
  %i.bhp = getelementptr inbounds nuw i8, ptr %.34206.i.i, i64 2
  store i8 %i.bho, ptr %i.bhp, align 1, !tbaa !85
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhj, i64 1
  %i.bhr = load i8, ptr %i.bhq, align 1, !tbaa !85
  %i.bhs = getelementptr inbounds nuw i8, ptr %.34206.i.i, i64 3
  store i8 %i.bhr, ptr %i.bhs, align 1, !tbaa !85
  %i.bht = getelementptr inbounds nuw i8, ptr %.34206.i.i, i64 4 ; 2 uses
  %i.bhu = add nuw nsw i32 %.01278205.i.i, 2      ; 3 uses
  %i.bhv = or disjoint i32 %i.bhu, 1
  %i.bhw = icmp slt i32 %i.bhv, %.sroa.speculated
  br i1 %i.bhw, label %bb.aj, label %.preheader59.i.i, !llvm.loop !2351

bb.ak:                                            ; preds = %bb.ak, %.lr.ph212.i.i
  %.35211.i.i = phi ptr [ %.34.lcssa.i.i, %.lr.ph212.i.i ], [ %i.biq, %bb.ak ] ; 3 uses
  %.11279210.i.i = phi i32 [ %.01278.lcssa.i.i, %.lr.ph212.i.i ], [ %i.bir, %bb.ak ] ; 2 uses
  %i.bhx = add nsw i32 %.11279210.i.i, %i.ah      ; 2 uses
  %i.bhy = sdiv i32 %i.bhx, %i.abh
  %i.bhz = srem i32 %i.bhx, %i.abh                ; 2 uses
  %i.bia = sdiv i32 %i.bhz, %i.bc
  %i.bib = srem i32 %i.bhz, %i.bc
  %i.bic = sext i32 %i.bhy to i64
  %i.bid = mul i64 %i.bs, %i.bic
  %i.bie = mul i32 %i.bia, %i.avr
  %i.bif = mul nsw i32 %i.bib, %i.be
  %i.big = add nsw i32 %i.bif, %i.bie
  %i.bih = sext i32 %i.big to i64
  %i.bii = load ptr, ptr %9, align 8, !tbaa !22
  %i.bij = getelementptr i8, ptr %i.bii, i64 %i.bid
  %i.bik = getelementptr i8, ptr %i.bij, i64 %i.bgd
  %i.bil = getelementptr i8, ptr %i.bik, i64 %i.bih ; 2 uses
  %i.bim = load i8, ptr %i.bil, align 1, !tbaa !85
  store i8 %i.bim, ptr %.35211.i.i, align 1, !tbaa !85
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bil, i64 1
  %i.bio = load i8, ptr %i.bin, align 1, !tbaa !85
  %i.bip = getelementptr inbounds nuw i8, ptr %.35211.i.i, i64 1
  store i8 %i.bio, ptr %i.bip, align 1, !tbaa !85
  %i.biq = getelementptr inbounds nuw i8, ptr %.35211.i.i, i64 2 ; 2 uses
  %i.bir = add nuw nsw i32 %.11279210.i.i, 1      ; 2 uses
  %exitcond319.not.i.i = icmp eq i32 %i.bir, %.sroa.speculated
  br i1 %exitcond319.not.i.i, label %.loopexit58.i.i, label %bb.ak, !llvm.loop !2352

.loopexit60.i.i:                                  ; preds = %bb.ai
  br i1 %or.cond258.i.i, label %.lr.ph216.i74.i, label %.loopexit58.i.i

.lr.ph216.i74.i:                                  ; preds = %.loopexit60.i.i
  %i.bis = extractelement <2 x i32> %i.bfw, i64 0
  %i.bit = sext i32 %i.bis to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph216.i74.i
  %.37215.i.i = phi ptr [ %.33219.i.i, %.lr.ph216.i74.i ], [ %i.bjm, %bb.al ] ; 2 uses
  %.01280214.i.i = phi i32 [ 0, %.lr.ph216.i74.i ], [ %i.bjn, %bb.al ] ; 2 uses
  %i.biu = add nsw i32 %.01280214.i.i, %i.avv     ; 2 uses
  %i.biv = sdiv i32 %i.biu, %i.abh
  %i.biw = srem i32 %i.biu, %i.abh                ; 2 uses
  %i.bix = sdiv i32 %i.biw, %i.bc
  %i.biy = srem i32 %i.biw, %i.bc
  %i.biz = sext i32 %i.biv to i64
  %i.bja = mul i64 %i.bs, %i.biz
  %i.bjb = add i64 %i.bja, %i.bit
  %i.bjc = mul i32 %i.bix, %i.avr
  %i.bjd = mul nsw i32 %i.biy, %i.be
  %i.bje = add nsw i32 %i.bjd, %i.bjc
  %i.bjf = sext i32 %i.bje to i64
  %i.bjg = add i64 %i.bjb, %i.bjf
  %i.bjh = shl i64 %i.bjg, 3
  %i.bji = load ptr, ptr %9, align 8, !tbaa !22
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bji, i64 %i.bjh
  %i.bjk = load <8 x i16>, ptr %i.bjj, align 1, !tbaa !85
  %i.bjl = shufflevector <8 x i16> %i.bjk, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.bjl, ptr %.37215.i.i, align 1, !tbaa !85
  %i.bjm = getelementptr inbounds nuw i8, ptr %.37215.i.i, i64 16 ; 2 uses
  %i.bjn = add nuw nsw i32 %.01280214.i.i, 1      ; 2 uses
  %exitcond320.not.i.i = icmp eq i32 %i.bjn, %i.avu
  br i1 %exitcond320.not.i.i, label %.loopexit58.i.i, label %bb.al, !llvm.loop !2353

bb.am:                                            ; preds = %bb.ah
  br i1 %i.avp, label %.preheader66.i.i, label %.loopexit65.i.i

.preheader66.i.i:                                 ; preds = %bb.am
  br i1 %i.avq, label %.lr.ph193.i.i.preheader, label %.preheader64.i.i

.lr.ph193.i.i.preheader:                          ; preds = %.preheader66.i.i
  %i.bjo = shufflevector <2 x i32> %i.bfw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph193.i.i

.preheader64.i.i:                                 ; preds = %.lr.ph193.i.i, %.preheader66.i.i
  %.01281.lcssa.i.i = phi i32 [ 0, %.preheader66.i.i ], [ %i.blc, %.lr.ph193.i.i ] ; 2 uses
  %.39.lcssa.i.i = phi ptr [ %.33219.i.i, %.preheader66.i.i ], [ %i.blb, %.lr.ph193.i.i ] ; 2 uses
  %i.bjp = icmp slt i32 %.01281.lcssa.i.i, %.sroa.speculated
  br i1 %i.bjp, label %.lr.ph198.i.i, label %.loopexit58.i.i

.lr.ph198.i.i:                                    ; preds = %.preheader64.i.i
  %i.bjq = extractelement <2 x i32> %i.bfw, i64 0
  %i.bjr = extractelement <2 x i32> %i.bfw, i64 1
  %i.bjs = sext i32 %i.bjq to i64
  %i.bjt = sext i32 %i.bjr to i64
  br label %bb.an

.lr.ph193.i.i:                                    ; preds = %.lr.ph193.i.i.preheader, %.lr.ph193.i.i
  %.39192.i.i = phi ptr [ %i.blb, %.lr.ph193.i.i ], [ %.33219.i.i, %.lr.ph193.i.i.preheader ] ; 5 uses
  %.01281191.i.i = phi i32 [ %i.blc, %.lr.ph193.i.i ], [ 0, %.lr.ph193.i.i.preheader ] ; 2 uses
  %i.bju = add nsw i32 %.01281191.i.i, %i.ah      ; 3 uses
  %i.bjv = add nsw i32 %i.bju, 1                  ; 2 uses
  %i.bjw = insertelement <2 x i32> poison, i32 %i.bju, i64 0
  %i.bjx = insertelement <2 x i32> %i.bjw, i32 %i.bjv, i64 1
  %37 = srem <2 x i32> %i.bjx, %i.awe             ; 3 uses
  %38 = srem <2 x i32> %37, %i.awg
  %39 = insertelement <2 x i32> %37, i32 %i.bju, i64 1
  %i.bjy = sdiv <2 x i32> %39, %i.awh
  %i.bjz = mul <2 x i32> %i.bjy, %36              ; 2 uses
  %40 = shufflevector <2 x i32> %37, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %41 = insertelement <2 x i32> %40, i32 %i.bjv, i64 1
  %i.bka = sdiv <2 x i32> %41, %i.awh
  %i.bkb = mul <2 x i32> %i.bka, %36              ; 2 uses
  %i.bkc = load ptr, ptr %9, align 8, !tbaa !22   ; 4 uses
  %i.bkd = mul nsw <2 x i32> %38, %i.awk
  %42 = shufflevector <2 x i32> %i.bjz, <2 x i32> %i.bkb, <2 x i32> <i32 0, i32 2>
  %43 = shufflevector <2 x i32> %i.bjz, <2 x i32> %i.bkb, <2 x i32> <i32 1, i32 3>
  %i.bke = add <2 x i32> %42, %43
  %i.bkf = add <2 x i32> %i.bke, %i.bkd
  %i.bkg = shufflevector <2 x i32> %i.bkf, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bkh = add <4 x i32> %i.bkg, %i.bjo           ; 4 uses
  %i.bki = extractelement <4 x i32> %i.bkh, i64 0
  %i.bkj = sext i32 %i.bki to i64
  %i.bkk = getelementptr inbounds i8, ptr %i.bkc, i64 %i.bkj
  %i.bkl = extractelement <4 x i32> %i.bkh, i64 1
  %i.bkm = sext i32 %i.bkl to i64
  %i.bkn = getelementptr inbounds i8, ptr %i.bkc, i64 %i.bkm
  %i.bko = extractelement <4 x i32> %i.bkh, i64 2
  %i.bkp = sext i32 %i.bko to i64
  %i.bkq = getelementptr inbounds i8, ptr %i.bkc, i64 %i.bkp
  %i.bkr = extractelement <4 x i32> %i.bkh, i64 3
  %i.bks = sext i32 %i.bkr to i64
  %i.bkt = getelementptr inbounds i8, ptr %i.bkc, i64 %i.bks
  %i.bku = load i8, ptr %i.bkk, align 1, !tbaa !85
  store i8 %i.bku, ptr %.39192.i.i, align 1, !tbaa !85
  %i.bkv = load i8, ptr %i.bkq, align 1, !tbaa !85
  %i.bkw = getelementptr inbounds nuw i8, ptr %.39192.i.i, i64 1
  store i8 %i.bkv, ptr %i.bkw, align 1, !tbaa !85
  %i.bkx = load i8, ptr %i.bkn, align 1, !tbaa !85
  %i.bky = getelementptr inbounds nuw i8, ptr %.39192.i.i, i64 2
  store i8 %i.bkx, ptr %i.bky, align 1, !tbaa !85
  %i.bkz = load i8, ptr %i.bkt, align 1, !tbaa !85
  %i.bla = getelementptr inbounds nuw i8, ptr %.39192.i.i, i64 3
  store i8 %i.bkz, ptr %i.bla, align 1, !tbaa !85
  %i.blb = getelementptr inbounds nuw i8, ptr %.39192.i.i, i64 4 ; 2 uses
  %i.blc = add nuw nsw i32 %.01281191.i.i, 2      ; 3 uses
  %i.bld = or disjoint i32 %i.blc, 1
  %i.ble = icmp slt i32 %i.bld, %.sroa.speculated
  br i1 %i.ble, label %.lr.ph193.i.i, label %.preheader64.i.i, !llvm.loop !2354

bb.an:                                            ; preds = %bb.an, %.lr.ph198.i.i
  %.40197.i.i = phi ptr [ %.39.lcssa.i.i, %.lr.ph198.i.i ], [ %i.blz, %bb.an ] ; 3 uses
  %.11282196.i.i = phi i32 [ %.01281.lcssa.i.i, %.lr.ph198.i.i ], [ %i.bma, %bb.an ] ; 2 uses
  %i.blf = add nsw i32 %.11282196.i.i, %i.ah      ; 2 uses
  %i.blg = sdiv i32 %i.blf, %i.abh
  %i.blh = srem i32 %i.blf, %i.abh                ; 2 uses
  %i.bli = sdiv i32 %i.blh, %i.bc
  %i.blj = srem i32 %i.blh, %i.bc
  %i.blk = sext i32 %i.blg to i64
  %i.bll = mul i64 %i.bs, %i.blk
  %i.blm = mul i32 %i.bli, %i.avr
  %i.bln = mul nsw i32 %i.blj, %i.be
  %i.blo = add nsw i32 %i.bln, %i.blm
  %i.blp = sext i32 %i.blo to i64                 ; 2 uses
  %i.blq = load ptr, ptr %9, align 8, !tbaa !22
  %i.blr = getelementptr i8, ptr %i.blq, i64 %i.bll ; 2 uses
  %i.bls = getelementptr i8, ptr %i.blr, i64 %i.bjs
  %i.blt = getelementptr i8, ptr %i.bls, i64 %i.blp
  %i.blu = getelementptr i8, ptr %i.blr, i64 %i.bjt
  %i.blv = getelementptr i8, ptr %i.blu, i64 %i.blp
  %i.blw = load i8, ptr %i.blt, align 1, !tbaa !85
  store i8 %i.blw, ptr %.40197.i.i, align 1, !tbaa !85
  %i.blx = load i8, ptr %i.blv, align 1, !tbaa !85
  %i.bly = getelementptr inbounds nuw i8, ptr %.40197.i.i, i64 1
  store i8 %i.blx, ptr %i.bly, align 1, !tbaa !85
  %i.blz = getelementptr inbounds nuw i8, ptr %.40197.i.i, i64 2 ; 2 uses
  %i.bma = add nuw nsw i32 %.11282196.i.i, 1      ; 2 uses
  %exitcond317.not.i73.i = icmp eq i32 %i.bma, %.sroa.speculated
  br i1 %exitcond317.not.i73.i, label %.loopexit58.i.i, label %bb.an, !llvm.loop !2355

.loopexit65.i.i:                                  ; preds = %bb.am
  br i1 %or.cond258.i.i, label %.lr.ph203.i.i, label %.loopexit58.i.i

.lr.ph203.i.i:                                    ; preds = %.loopexit65.i.i
  %i.bmb = extractelement <2 x i32> %i.bfw, i64 0
  %i.bmc = sext i32 %i.bmb to i64
  %i.bmd = extractelement <2 x i32> %i.bfw, i64 1
  %i.bme = sext i32 %i.bmd to i64
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph203.i.i
  %.42202.i.i = phi ptr [ %.33219.i.i, %.lr.ph203.i.i ], [ %i.bnf, %bb.ao ] ; 2 uses
  %.31284201.i.i = phi i32 [ 0, %.lr.ph203.i.i ], [ %i.bng, %bb.ao ] ; 2 uses
  %i.bmf = add nsw i32 %.31284201.i.i, %i.avv     ; 2 uses
  %i.bmg = sdiv i32 %i.bmf, %i.abh
  %i.bmh = srem i32 %i.bmf, %i.abh                ; 2 uses
  %i.bmi = sdiv i32 %i.bmh, %i.bc
  %i.bmj = srem i32 %i.bmh, %i.bc
  %i.bmk = sext i32 %i.bmg to i64
  %i.bml = mul i64 %i.bs, %i.bmk
  %i.bmm = mul i32 %i.bmi, %i.avr
  %i.bmn = mul nsw i32 %i.bmj, %i.be
  %i.bmo = add nsw i32 %i.bmn, %i.bmm
  %i.bmp = sext i32 %i.bmo to i64
  %i.bmq = add i64 %i.bml, %i.bmp                 ; 2 uses
  %i.bmr = add i64 %i.bmq, %i.bmc
  %i.bms = shl i64 %i.bmr, 3
  %i.bmt = add i64 %i.bmq, %i.bme
  %i.bmu = shl i64 %i.bmt, 3
  %i.bmv = load ptr, ptr %9, align 8, !tbaa !22   ; 2 uses
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmv, i64 %i.bms
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bmv, i64 %i.bmu
  %i.bmy = load i64, ptr %i.bmw, align 1, !tbaa !85
  %i.bmz = insertelement <2 x i64> poison, i64 %i.bmy, i64 0
  %i.bna = load i64, ptr %i.bmx, align 1, !tbaa !85
  %i.bnb = insertelement <2 x i64> poison, i64 %i.bna, i64 0
  %i.bnc = bitcast <2 x i64> %i.bmz to <8 x i16>
  %i.bnd = bitcast <2 x i64> %i.bnb to <8 x i16>
  %i.bne = shufflevector <8 x i16> %i.bnc, <8 x i16> %i.bnd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.bne, ptr %.42202.i.i, align 1, !tbaa !85
  %i.bnf = getelementptr inbounds nuw i8, ptr %.42202.i.i, i64 16 ; 2 uses
  %i.bng = add nuw nsw i32 %.31284201.i.i, 1      ; 2 uses
  %exitcond318.not.i.i = icmp eq i32 %i.bng, %i.avu
  br i1 %exitcond318.not.i.i, label %.loopexit58.i.i, label %bb.ao, !llvm.loop !2356

.loopexit58.i.i:                                  ; preds = %bb.ao, %bb.an, %bb.al, %bb.ak, %.loopexit65.i.i, %.preheader64.i.i, %.loopexit60.i.i, %.preheader59.i.i
  %.44.i.i = phi ptr [ %.33219.i.i, %.loopexit65.i.i ], [ %.33219.i.i, %.loopexit60.i.i ], [ %.34.lcssa.i.i, %.preheader59.i.i ], [ %i.bjm, %bb.al ], [ %i.biq, %bb.ak ], [ %.39.lcssa.i.i, %.preheader64.i.i ], [ %i.blz, %bb.an ], [ %i.bnf, %bb.ao ] ; 2 uses
  %i.bnh = add nuw nsw i32 %.31256218.i.i, 2      ; 3 uses
  %i.bni = or disjoint i32 %i.bnh, 1
  %i.bnj = icmp slt i32 %i.bni, %.sroa.speculated63
  br i1 %i.bnj, label %bb.ah, label %.preheader56.i.i, !llvm.loop !2357

bb.ap:                                            ; preds = %.loopexit.i.i, %.lr.ph238.i71.i
  %.45237.i.i = phi ptr [ %.33.lcssa.i.i, %.lr.ph238.i71.i ], [ %.50.i.i, %.loopexit.i.i ] ; 4 uses
  %.41257236.i.i = phi i32 [ %.31256.lcssa.i.i, %.lr.ph238.i71.i ], [ %i.bqs, %.loopexit.i.i ] ; 2 uses
  %i.bnk = add nsw i32 %.41257236.i.i, %i.af      ; 2 uses
  %i.bnl = sdiv i32 %i.bnk, %i.abg
  %i.bnm = srem i32 %i.bnk, %i.abg
  %i.bnn = mul nsw i32 %i.bnm, %i.bg
  %i.bno = mul i32 %i.bfa, %i.bnl
  %i.bnp = add nsw i32 %i.bnn, %i.bno             ; 3 uses
  br i1 %i.bfb, label %.preheader55.i.i, label %.loopexit54.i.i

.preheader55.i.i:                                 ; preds = %bb.ap
  br i1 %i.bfc, label %.lr.ph225.i.i, label %.preheader53.i.i

.lr.ph225.i.i:                                    ; preds = %.preheader55.i.i
  %i.bnq = sext i32 %i.bnp to i64                 ; 2 uses
  br label %bb.aq

.preheader53.i.i:                                 ; preds = %bb.aq, %.preheader55.i.i
  %.01264.lcssa.i.i = phi i32 [ 0, %.preheader55.i.i ], [ %i.bpd, %bb.aq ] ; 2 uses
  %.46.lcssa.i.i = phi ptr [ %.45237.i.i, %.preheader55.i.i ], [ %i.bpc, %bb.aq ] ; 2 uses
  %i.bnr = icmp slt i32 %.01264.lcssa.i.i, %.sroa.speculated
  br i1 %i.bnr, label %.lr.ph230.i.i, label %.loopexit.i.i

.lr.ph230.i.i:                                    ; preds = %.preheader53.i.i
  %i.bns = sext i32 %i.bnp to i64
  br label %bb.ar

bb.aq:                                            ; preds = %bb.aq, %.lr.ph225.i.i
  %.46224.i.i = phi ptr [ %.45237.i.i, %.lr.ph225.i.i ], [ %i.bpc, %bb.aq ] ; 3 uses
  %.01264223.i.i = phi i32 [ 0, %.lr.ph225.i.i ], [ %i.bpd, %bb.aq ] ; 2 uses
  %i.bnt = add nsw i32 %.01264223.i.i, %i.ah      ; 2 uses
  %i.bnu = add nsw i32 %i.bnt, 1
  %i.bnv = insertelement <2 x i32> poison, i32 %i.bnt, i64 0
  %i.bnw = insertelement <2 x i32> %i.bnv, i32 %i.bnu, i64 1
  %.frozen659 = freeze <2 x i32> %i.bnw           ; 2 uses
  %.frozen660 = freeze <2 x i32> %i.bfj           ; 2 uses
  %i.bnx = sdiv <2 x i32> %.frozen659, %.frozen660 ; 2 uses
  %i.bny = mul <2 x i32> %i.bnx, %.frozen660
  %.decomposed661 = sub <2 x i32> %.frozen659, %i.bny ; 3 uses
  %i.bnz = extractelement <2 x i32> %.decomposed661, i64 0
  %i.boa = sdiv i32 %i.bnz, %i.bc
  %i.bob = extractelement <2 x i32> %.decomposed661, i64 1
  %i.boc = sdiv i32 %i.bob, %i.bc
  %i.bod = srem <2 x i32> %.decomposed661, %i.bfl ; 2 uses
  %i.boe = mul i32 %i.boa, %i.bfd
  %i.bof = extractelement <2 x i32> %i.bod, i64 0
  %i.bog = mul nsw i32 %i.bof, %i.be
  %i.boh = add nsw i32 %i.bog, %i.boe
  %i.boi = sext i32 %i.boh to i64
  %i.boj = sext <2 x i32> %i.bnx to <2 x i64>
  %i.bok = mul <2 x i64> %i.bfn, %i.boj           ; 2 uses
  %i.bol = mul i32 %i.boc, %i.bfd
  %i.bom = extractelement <2 x i32> %i.bod, i64 1
  %i.bon = mul nsw i32 %i.bom, %i.be
  %i.boo = add nsw i32 %i.bon, %i.bol
  %i.bop = sext i32 %i.boo to i64
  %i.boq = load ptr, ptr %9, align 8, !tbaa !22   ; 2 uses
  %i.bor = extractelement <2 x i64> %i.bok, i64 0
  %i.bos = getelementptr i8, ptr %i.boq, i64 %i.bor
  %i.bot = getelementptr i8, ptr %i.bos, i64 %i.bnq
  %i.bou = getelementptr i8, ptr %i.bot, i64 %i.boi
  %i.bov = extractelement <2 x i64> %i.bok, i64 1
  %i.bow = getelementptr i8, ptr %i.boq, i64 %i.bov
  %i.box = getelementptr i8, ptr %i.bow, i64 %i.bnq
  %i.boy = getelementptr i8, ptr %i.box, i64 %i.bop
  %i.boz = load i8, ptr %i.bou, align 1, !tbaa !85
  store i8 %i.boz, ptr %.46224.i.i, align 1, !tbaa !85
  %i.bpa = load i8, ptr %i.boy, align 1, !tbaa !85
  %i.bpb = getelementptr inbounds nuw i8, ptr %.46224.i.i, i64 1
  store i8 %i.bpa, ptr %i.bpb, align 1, !tbaa !85
  %i.bpc = getelementptr inbounds nuw i8, ptr %.46224.i.i, i64 2 ; 2 uses
  %i.bpd = add nuw nsw i32 %.01264223.i.i, 2      ; 3 uses
  %i.bpe = or disjoint i32 %i.bpd, 1
  %i.bpf = icmp slt i32 %i.bpe, %.sroa.speculated
  br i1 %i.bpf, label %bb.aq, label %.preheader53.i.i, !llvm.loop !2358

bb.ar:                                            ; preds = %bb.ar, %.lr.ph230.i.i
  %.47229.i.i = phi ptr [ %.46.lcssa.i.i, %.lr.ph230.i.i ], [ %i.bpw, %bb.ar ] ; 2 uses
  %.11265228.i.i = phi i32 [ %.01264.lcssa.i.i, %.lr.ph230.i.i ], [ %i.bpx, %bb.ar ] ; 2 uses
  %i.bpg = add nsw i32 %.11265228.i.i, %i.ah      ; 2 uses
  %i.bph = sdiv i32 %i.bpg, %i.abh
  %i.bpi = srem i32 %i.bpg, %i.abh                ; 2 uses
  %i.bpj = sdiv i32 %i.bpi, %i.bc
  %i.bpk = srem i32 %i.bpi, %i.bc
  %i.bpl = sext i32 %i.bph to i64
  %i.bpm = mul i64 %i.bs, %i.bpl
end_hunk_3
