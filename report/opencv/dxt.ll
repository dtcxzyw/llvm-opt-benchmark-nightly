Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dxt?download=true
inline.NumInlined: 635
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZNK2cv6DFT_R5IfEclEPNS_7ComplexIfEEiiiPKS3_:bb.a
  %i.nn = shufflevector <2 x float> %i.nm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.no = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nn, <2 x float> %i.ne, <2 x float> %i.nl) ; 2 uses
  %i.np = load <2 x float>, ptr %i.mc, align 4, !tbaa !109 ; 2 uses
  %i.nq = load float, ptr %i.mf, align 4, !tbaa !137
  %i.nr = fneg float %i.nq
  %i.ns = insertelement <2 x float> poison, float %i.me, i64 0
  %i.nt = shufflevector <2 x float> %i.ns, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nu = shufflevector <2 x float> %i.np, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nv = insertelement <2 x float> %i.nu, float %i.nr, i64 0
  %i.nw = fmul <2 x float> %i.nt, %i.nv
  %i.nx = insertelement <2 x float> poison, float %i.mb, i64 0
  %i.ny = shufflevector <2 x float> %i.nx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ny, <2 x float> %i.np, <2 x float> %i.nw) ; 2 uses
  %i.oa = fadd <2 x float> %i.no, %i.nz           ; 2 uses
  %i.ob = fsub <2 x float> %i.no, %i.nz           ; 2 uses
  %i.oc = load <2 x float>, ptr %i.lh, align 4, !tbaa !109 ; 2 uses
  %i.od = fadd <2 x float> %i.nc, %i.oa           ; 2 uses
  %i.oe = fadd <2 x float> %i.oc, %i.od
  store <2 x float> %i.oe, ptr %i.lh, align 4, !tbaa !109
  %i.of = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.od, <2 x float> splat (float -2.500000e-01), <2 x float> %i.oc) ; 2 uses
  %i.og = fsub <2 x float> %i.nc, %i.oa
  %i.oh = fmul <2 x float> %i.og, splat (float 5.590170e-01) ; 2 uses
  %i.oi = fadd <2 x float> %i.nd, %i.ob
  %i.oj = fmul <2 x float> %i.oi, <float f0xBF737871, float f0x3F737871> ; 4 uses
  %i.ok = fmul <2 x float> %i.nd, splat (float f0x3EB9FEB1) ; 2 uses
  %i.ol = fsub <2 x float> %i.oj, %i.ok
  %i.om = fadd <2 x float> %i.oj, %i.ok
  %i.on = shufflevector <2 x float> %i.om, <2 x float> %i.ol, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.oo = fsub <2 x float> %i.of, %i.oh
  %i.op = shufflevector <2 x float> %i.oo, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.oq = fmul <2 x float> %i.ob, splat (float f0x3FC4F8C4) ; 2 uses
  %i.or = fsub <2 x float> %i.oj, %i.oq
  %i.os = fadd <2 x float> %i.oj, %i.oq
  %i.ot = shufflevector <2 x float> %i.or, <2 x float> %i.os, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ou = fadd <2 x float> %i.of, %i.oh           ; 2 uses
  %i.ov = fadd <2 x float> %i.ot, %i.ou
  store <2 x float> %i.ov, ptr %i.lk, align 4, !tbaa !109
  %i.ow = fsub <2 x float> %i.ou, %i.ot
  store <2 x float> %i.ow, ptr %i.lj, align 4, !tbaa !109
  %i.ox = fadd <2 x float> %i.on, %i.op
  %i.oy = shufflevector <2 x float> %i.ox, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.oy, ptr %i.li, align 4, !tbaa !109
  %i.oz = fsub <2 x float> %i.op, %i.on
  %i.pa = shufflevector <2 x float> %i.oz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.pa, ptr %i.lv, align 4, !tbaa !109
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next168 = add nsw i64 %indvars.iv167, %i.g
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !495
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL7RealDFTIfEEvRKNS_13OcvDftOptionsEPKT_PS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(65) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"struct.cv::OcvDftOptions", align 8 ; 8 uses
  %6 = alloca %"struct.cv::OcvDftOptions", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !140  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.d = load i8, ptr %i.c, align 2, !tbaa !146, !range !44, !noundef !45 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !143
  %i.h = fptrunc double %i.g to float             ; 11 uses
  %i.i = zext nneg i8 %i.d to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.i ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !142
  %i.m = icmp eq i32 %i.l, %i.b
  br i1 %i.m, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cvL7RealDFTIfEEvRKNS_13OcvDftOptionsEPKT_PS4_, ptr noundef nonnull @.str.1, i32 noundef 1238) #22
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %3, align 8, !tbaa !51     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !52
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.n

bb.e:                                             ; preds = %bb.a
  %i.t = icmp eq i32 %i.b, 1                      ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load float, ptr %1, align 4, !tbaa !109
  %i.v = fmul float %i.u, %i.h
  store float %i.v, ptr %i.j, align 4, !tbaa !109
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %i.b, 2
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load float, ptr %1, align 4, !tbaa !109  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !109 ; 2 uses
  %i.aa = fadd float %i.x, %i.z
  %i.ab = fmul float %i.aa, %i.h
  %i.ac = fsub float %i.x, %i.z
  %i.ad = fmul float %i.ac, %i.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store float %i.ad, ptr %i.ae, align 4, !tbaa !109
  store float %i.ab, ptr %i.j, align 4, !tbaa !109
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.af = and i32 %i.b, 1
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load float, ptr %1, align 4, !tbaa !109
  %i.ah = fmul float %i.ag, %i.h
  store float %i.ah, ptr %2, align 4, !tbaa !136
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store float 0.000000e+00, ptr %i.ai, align 4, !tbaa !137
  %i.aj = icmp sgt i32 %i.b, 1
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !139 ; 2 uses
  %i.am = zext nneg i32 %i.b to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !42
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !109
  %i.as = fmul float %i.ar, %i.h
  %i.at = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !42
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !109
  %i.az = fmul float %i.ay, %i.h
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  store float %i.as, ptr %i.ba, align 4, !tbaa !136
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store float 0.000000e+00, ptr %i.bb, align 4, !tbaa !137
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.at ; 2 uses
  store float %i.az, ptr %i.bc, align 4, !tbaa !136
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store float 0.000000e+00, ptr %i.bd, align 4, !tbaa !137
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.be = icmp samesign ult i64 %indvars.iv.next, %i.am
  br i1 %i.be, label %bb.k, label %._crit_edge, !llvm.loop !502

._crit_edge:                                      ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !tbaa.struct !148
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 50
  store i8 0, ptr %i.bf, align 2, !tbaa !146
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i8 0, ptr %i.bg, align 8, !tbaa !141
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 49
  store i8 1, ptr %i.bh, align 1, !tbaa !144
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double 1.000000e+00, ptr %i.bi, align 8, !tbaa !143
  call fastcc void @_ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_(ptr noundef nonnull align 8 dereferenceable(65) %5, ptr noundef nonnull %2, ptr noundef nonnull %2)
  br i1 %i.e, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.bj = load float, ptr %2, align 4, !tbaa !109
  store float %i.bj, ptr %i.ai, align 4, !tbaa !109
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.q

bb.n:                                             ; preds = %bb.i
  %7 = fmul float %i.h, 5.000000e-01              ; 4 uses
  %i.bk = ashr exact i32 %i.b, 1                  ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !145 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !42
  %i.bo = ashr i32 %i.bn, 1                       ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !tbaa.struct !148
  %i.bp = icmp eq i32 %i.bo, 1                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !145
  %i.bs = zext i1 %i.bp to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bs
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !145
  %.neg = sext i1 %i.bp to i32
  %i.bu = load i32, ptr %6, align 8, !tbaa !22
  %i.bv = add i32 %i.bu, %.neg
  store i32 %i.bv, ptr %6, align 8, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 50
  store i8 0, ptr %i.bw, align 2, !tbaa !146
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i8 0, ptr %i.bx, align 8, !tbaa !141
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 49
  store i8 0, ptr %i.by, align 1, !tbaa !144
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double 1.000000e+00, ptr %i.bz, align 8, !tbaa !143
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 %i.bk, ptr %i.ca, align 4, !tbaa !140
  call fastcc void @_ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_(ptr noundef nonnull align 8 dereferenceable(65) %6, ptr noundef %1, ptr noundef %i.j)
  %i.cb = load ptr, ptr %i.bl, align 8, !tbaa !145 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !42
  %i.cd = shl i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !42
  %i.ce = load float, ptr %i.j, align 4, !tbaa !109 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !109 ; 2 uses
  %i.ch = fsub float %i.ce, %i.cg
  %i.ci = fadd float %i.ce, %i.cg
  %i.cj = fmul float %i.ci, %i.h
  store float %i.cj, ptr %i.j, align 4, !tbaa !109
  %i.ck = fmul float %i.ch, %i.h                  ; 2 uses
  store float %i.ck, ptr %i.cf, align 4, !tbaa !109
  %i.cl = sext i32 %i.bk to i64                   ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cl ; 3 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !109
  %i.co = sext i32 %i.b to i64                    ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %i.j, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 -4     ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !109 ; 2 uses
  store float %i.ck, ptr %i.cq, align 4, !tbaa !109
  %i.cs = icmp sgt i32 %i.bk, 2
  br i1 %i.cs, label %.lr.ph175.preheader, label %._crit_edge176

.lr.ph175.preheader:                              ; preds = %bb.n
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !138
  br label %.lr.ph175

.lr.ph175:                                        ; preds = %.lr.ph175.preheader, %.lr.ph175
  %indvars.iv180 = phi i64 [ 2, %.lr.ph175.preheader ], [ %indvars.iv.next181, %.lr.ph175 ] ; 3 uses
  %.pn169173 = phi ptr [ %i.cu, %.lr.ph175.preheader ], [ %.0, %.lr.ph175 ] ; 2 uses
  %.0160172 = phi float [ %i.cr, %.lr.ph175.preheader ], [ %22, %.lr.ph175 ] ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.pn169173, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv180 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cw = sub nsw i64 %i.co, %indvars.iv180
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cw ; 3 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !109 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn169173, i64 12
  %i.da = load float, ptr %i.cv, align 4, !tbaa !109 ; 2 uses
  %9 = load float, ptr %8, align 4, !tbaa !109    ; 2 uses
  %10 = fsub float %i.cy, %i.da
  %11 = fadd float %.0160172, %9
  %12 = fmul float %7, %10
  %13 = fmul float %7, %11
  %14 = fadd float %i.cy, %i.da
  %15 = fmul float %7, %14                        ; 2 uses
  %16 = fsub float %9, %.0160172
  %17 = fmul float %7, %16                        ; 2 uses
  %i.db = load float, ptr %i.cz, align 4, !tbaa !137
  %i.dc = load <2 x float>, ptr %.0, align 4, !tbaa !109 ; 2 uses
  %i.dd = fneg float %i.db
  %18 = insertelement <2 x float> poison, float %12, i64 0
  %i.de = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dg = insertelement <2 x float> %i.df, float %i.dd, i64 0
  %i.dh = fmul <2 x float> %i.de, %i.dg
  %19 = insertelement <2 x float> poison, float %13, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %i.dc, <2 x float> %i.dh) ; 2 uses
  %21 = getelementptr i8, ptr %i.cx, i64 -4       ; 2 uses
  %22 = load float, ptr %21, align 4, !tbaa !109  ; 2 uses
  %i.dj = extractelement <2 x float> %i.di, i64 0 ; 2 uses
  %23 = fadd float %15, %i.dj
  %24 = getelementptr i8, ptr %i.cv, i64 -4
  store float %23, ptr %24, align 4, !tbaa !109
  %25 = fsub float %15, %i.dj
  store float %25, ptr %21, align 4, !tbaa !109
  %i.dk = extractelement <2 x float> %i.di, i64 1 ; 2 uses
  %26 = fadd float %17, %i.dk
  store float %26, ptr %i.cv, align 4, !tbaa !109
  %27 = fsub float %i.dk, %17
  store float %27, ptr %i.cx, align 4, !tbaa !109
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 2 ; 3 uses
  %i.dl = icmp slt i64 %indvars.iv.next181, %i.cl
  br i1 %i.dl, label %.lr.ph175, label %._crit_edge176.loopexit, !llvm.loop !503

._crit_edge176.loopexit:                          ; preds = %.lr.ph175
  %i.dm = trunc nuw nsw i64 %indvars.iv.next181 to i32
  br label %._crit_edge176

._crit_edge176:                                   ; preds = %._crit_edge176.loopexit, %bb.n
  %.1.lcssa = phi i32 [ 2, %bb.n ], [ %i.dm, %._crit_edge176.loopexit ]
  %.0160.lcssa = phi float [ %i.cr, %bb.n ], [ %22, %._crit_edge176.loopexit ]
  %.not168 = icmp sgt i32 %.1.lcssa, %i.bk
  br i1 %.not168, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge176
  %i.dn = fmul float %i.cn, %i.h
  %i.do = getelementptr i8, ptr %i.cm, i64 -4
  store float %i.dn, ptr %i.do, align 4, !tbaa !109
  %i.dp = fneg float %.0160.lcssa
  %i.dq = fmul float %i.h, %i.dp
  store float %i.dq, ptr %i.cm, align 4, !tbaa !109
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge176
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.p, %bb.m, %bb.f
  %.0161 = phi ptr [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %2, %bb.m ], [ %i.j, %bb.p ] ; 3 uses
  br i1 %i.e, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.dr = and i32 %i.b, 1
  %i.ds = icmp eq i32 %i.dr, 0
  %or.cond = or i1 %i.t, %i.ds
  br i1 %or.cond, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.dt = load float, ptr %.0161, align 4, !tbaa !109
  %i.du = getelementptr inbounds i8, ptr %.0161, i64 -4
  %i.dv = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dt, i64 0
  store <2 x float> %i.dv, ptr %i.du, align 4, !tbaa !109
  %i.dw = icmp sgt i32 %i.b, 1
  br i1 %i.dw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dx = zext nneg i32 %i.b to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.0161, i64 %i.dx
  store float 0.000000e+00, ptr %i.dy, align 4, !tbaa !109
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r, %bb.q
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL7CCSIDFTIfEEvRKNS_13OcvDftOptionsEPKT_PS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(65) %0, ptr nofree noundef captures(address) %1, ptr noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"struct.cv::OcvDftOptions", align 8 ; 9 uses
  %8 = alloca %"struct.cv::OcvDftOptions", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !140  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.d = load i8, ptr %i.c, align 2, !tbaa !146, !range !44, !noundef !45
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !143
  %i.h = fptrunc double %i.g to float             ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !142
  %i.k = icmp eq i32 %i.j, %i.b
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cvL7CCSIDFTIfEEvRKNS_13OcvDftOptionsEPKT_PS4_, ptr noundef nonnull @.str.1, i32 noundef 1358) #22
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !51     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !52
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.af

bb.g:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq ptr %1, %2
  br i1 %.not, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cvL7CCSIDFTIfEEvRKNS_13OcvDftOptionsEPKT_PS4_, ptr noundef nonnull @.str.1, i32 noundef 1362) #22
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

bb.m:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %5, align 8, !tbaa !51     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %bb.m
  %i.x = load i64, ptr %i.v, align 8, !tbaa !52
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242, %bb.l
  %.pn236 = phi { ptr, i32 } [ %i.s, %bb.l ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ], [ %i.t, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.af

bb.n:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !109
  %i.ab = load float, ptr %1, align 4, !tbaa !109
  store float %i.ab, ptr %i.z, align 4, !tbaa !109
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.g
  %.0223 = phi float [ %i.aa, %bb.n ], [ 0.000000e+00, %bb.g ]
  %.0 = phi ptr [ %i.z, %bb.n ], [ %1, %bb.g ]    ; 14 uses
  switch i32 %i.b, label %bb.r [
    i32 1, label %bb.p
    i32 2, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.ac = load float, ptr %.0, align 4, !tbaa !109
  %i.ad = fmul float %i.ac, %i.h
  store float %i.ad, ptr %2, align 4, !tbaa !109
  br label %bb.ac

bb.q:                                             ; preds = %bb.o
  %i.ae = load float, ptr %.0, align 4, !tbaa !109 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !109 ; 2 uses
  %i.ah = fadd float %i.ae, %i.ag
  %i.ai = fmul float %i.ah, %i.h
  %i.aj = fsub float %i.ae, %i.ag
  %i.ak = fmul float %i.aj, %i.h
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.ak, ptr %i.al, align 4, !tbaa !109
  store float %i.ai, ptr %2, align 4, !tbaa !109
  br label %bb.ac

bb.r:                                             ; preds = %bb.o
  %i.am = and i32 %i.b, 1
  %.not239 = icmp eq i32 %i.am, 0
  br i1 %.not239, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds i8, ptr %.0, i64 -4 ; 3 uses
  %i.ao = load float, ptr %.0, align 4, !tbaa !109
  %i.ap = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ao, i64 0
  store <2 x float> %i.ap, ptr %2, align 4, !tbaa !109
  %i.aq = add nsw i32 %i.b, 1                     ; 2 uses
  %i.ar = ashr exact i32 %i.aq, 1                 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
