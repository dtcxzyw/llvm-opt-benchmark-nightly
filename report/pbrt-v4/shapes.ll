Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/shapes?download=true
inline.NumInlined: 6411
inline.NumDeleted: 1459
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4pbrt5Curve6CreateEPKNS_9TransformES3_bRKNS_19ParameterDictionaryEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE:._crit_edge.i.i
  %i.np = getelementptr inbounds nuw i8, ptr %30, i64 16
  %.sroa.9401.sroa.4.0..sroa.9401.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 44
  %i.nq = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.nr = shufflevector <2 x float> %i.nq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ns = insertelement <2 x float> poison, float %i.t, i64 0
  %i.nt = shufflevector <2 x float> %i.ns, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph, %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit ] ; 3 uses
  %i.nu = phi i32 [ %i.nk, %.lr.ph ], [ %i.td, %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit ]
  %.095443 = phi i32 [ 0, %.lr.ph ], [ %.196, %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %29, i8 0, i64 48, i1 false)
  %i.nv = load i64, ptr %i.cr, align 8, !tbaa !61
  %i.nw = icmp eq i64 %i.nv, 6
  br i1 %i.nw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread438

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316: ; preds = %bb.bc
  %i.nx = load ptr, ptr %18, align 8, !tbaa !63   ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 1
  %i.nz = xor i32 %i.ny, 1769629026
  %i.oa = getelementptr i8, ptr %i.nx, i64 4
  %i.ob = load i16, ptr %i.oa, align 1
  %i.oc = zext i16 %i.ob to i32
  %i.od = xor i32 %i.oc, 29285
  %i.oe = or i32 %i.nz, %i.od
  %i.of = icmp ne i32 %i.oe, 0
  %i.og = zext i1 %i.of to i32
  %i.oh = icmp eq i32 %i.og, 0
  br i1 %i.oh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread438

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316
  %i.oi = load i32, ptr %i.a, align 4, !tbaa !89  ; 2 uses
  %i.oj = icmp eq i32 %i.oi, 2
  %i.ok = load ptr, ptr %21, align 8, !tbaa !146  ; 2 uses
  %i.ol = sext i32 %.095443 to i64                ; 2 uses
  br i1 %i.oj, label %bb.bd, label %.preheader

.preheader:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread
  %i.om = mul nsw i64 %i.ol, 12
  %scevgep = getelementptr nuw i8, ptr %i.ok, i64 %i.om
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull align 4 dereferenceable(48) %scevgep, i64 48, i1 false)
  br label %.loopexit

bb.bd:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread
  %i.on = getelementptr inbounds nuw [12 x i8], ptr %i.ok, i64 %i.ol ; 6 uses
  %.sroa.019.0.copyload.i = load <2 x float>, ptr %i.on, align 4, !tbaa !28, !noalias !435
  %.sroa.220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %.sroa.220.0.copyload.i = load float, ptr %.sroa.220.0..sroa_idx.i, align 4, !tbaa !28, !noalias !435
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 12
  %.sroa.017.0.copyload.i = load <2 x float>, ptr %i.oo, align 4, !tbaa !28, !noalias !435 ; 2 uses
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.on, i64 20
  %i.op = fmul <2 x float> %.sroa.019.0.copyload.i, splat (float f0x3EAAAAAA)
  %i.oq = fmul <2 x float> %.sroa.017.0.copyload.i, splat (float f0x3F2AAAAB)
  %i.or = fadd <2 x float> %i.op, %i.oq
  %i.os = getelementptr inbounds nuw i8, ptr %i.on, i64 24 ; 2 uses
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %i.os, align 4, !tbaa !28, !noalias !435
  %i.ot = fmul <2 x float> %.sroa.017.0.copyload.i, splat (float f0x3F2AAAAA)
  %i.ou = fmul <2 x float> %.sroa.05.0.copyload.i, splat (float f0x3EAAAAAB)
  %i.ov = fadd <2 x float> %i.ot, %i.ou
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %29, ptr noundef nonnull align 4 dereferenceable(12) %i.on, i64 12, i1 false)
  store <2 x float> %i.or, ptr %.sroa.6395.0..sroa_idx, align 4
  store <2 x float> %i.ov, ptr %.sroa.8.0..sroa_idx, align 8
  %i.ow = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %.sroa.218.0..sroa_idx.i, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !28, !noalias !435 ; 2 uses
  %i.ox = shufflevector <4 x float> %i.ow, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.oy = shufflevector <4 x float> %i.ow, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.oz = insertelement <2 x float> %i.oy, float %.sroa.220.0.copyload.i, i64 0
  %i.pa = fmul <2 x float> %i.oz, <float f0x3EAAAAAA, float f0x3F2AAAAA>
  %i.pb = fmul <2 x float> %i.ox, <float f0x3F2AAAAB, float f0x3EAAAAAB>
  %i.pc = fadd <2 x float> %i.pa, %i.pb
  %i.pd = shufflevector <2 x float> %i.pc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.pd, ptr align 4 %.sroa.7.0..sroa_idx, <4 x i1> <i1 true, i1 false, i1 false, i1 true>)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.os, i64 12, i1 false)
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread438: ; preds = %bb.bc, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316
  %i.pe = load i32, ptr %i.a, align 4, !tbaa !89
  %i.pf = icmp eq i32 %i.pe, 2
  %i.pg = load ptr, ptr %21, align 8, !tbaa !146
  %i.ph = sext i32 %.095443 to i64
  %i.pi = getelementptr inbounds nuw [12 x i8], ptr %i.pg, i64 %i.ph ; 10 uses
  %.sroa.022.0.copyload.i = load <2 x float>, ptr %i.pi, align 4, !noalias !31 ; 2 uses
  %.sroa.223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %.sroa.223.0.copyload.i = load float, ptr %.sroa.223.0..sroa_idx.i, align 4, !noalias !31 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 12
  %.sroa.020.0.copyload.i = load <2 x float>, ptr %i.pj, align 4, !noalias !31 ; 6 uses
  %.sroa.221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pi, i64 20
  %.sroa.221.0.copyload.i = load float, ptr %.sroa.221.0..sroa_idx.i, align 4, !noalias !31 ; 5 uses
  br i1 %i.pf, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread438
  %i.pk = fmul float %.sroa.223.0.copyload.i, 5.000000e-01
  %i.pl = fmul float %.sroa.221.0.copyload.i, 5.000000e-01 ; 2 uses
  %i.pm = fadd float %i.pk, %i.pl                 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pi, i64 24
  %.sroa.07.0.copyload.i = load <2 x float>, ptr %i.pn, align 4, !tbaa !28, !noalias !436
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pi, i64 32
  %.sroa.28.0.copyload.i = load float, ptr %.sroa.28.0..sroa_idx.i, align 4, !tbaa !28, !noalias !436
  %i.po = fmul float %.sroa.28.0.copyload.i, 5.000000e-01
  %i.pp = fadd float %i.pl, %i.po                 ; 2 uses
  %i.pq = fmul float %i.pm, f0x3EAAAAAA
  %i.pr = fmul float %.sroa.221.0.copyload.i, f0x3F2AAAAB
  %i.ps = fadd float %i.pq, %i.pr
  %i.pt = fmul float %.sroa.221.0.copyload.i, f0x3F2AAAAA
  %i.pu = fmul float %i.pp, f0x3EAAAAAB
  %i.pv = fmul <2 x float> %.sroa.020.0.copyload.i, splat (float 5.000000e-01) ; 2 uses
  %i.pw = fmul <2 x float> %.sroa.07.0.copyload.i, splat (float 5.000000e-01)
  %i.px = fadd <2 x float> %i.pv, %i.pw           ; 2 uses
  %i.py = fmul <2 x float> %.sroa.022.0.copyload.i, splat (float 5.000000e-01)
  %i.pz = fmul <2 x float> %.sroa.020.0.copyload.i, splat (float f0x3F2AAAAB)
  %i.qa = fadd <2 x float> %i.py, %i.pv           ; 2 uses
  %i.qb = fmul <2 x float> %i.qa, splat (float f0x3EAAAAAA)
  %i.qc = fadd <2 x float> %i.qb, %i.pz
  %i.qd = fmul <2 x float> %.sroa.020.0.copyload.i, splat (float f0x3F2AAAAA)
  %i.qe = fmul <2 x float> %i.px, splat (float f0x3EAAAAAB)
  %i.qf = fadd <2 x float> %i.qe, %i.qd
  %i.qg = fadd float %i.pu, %i.pt
  store <2 x float> %i.qa, ptr %29, align 8
  store float %i.pm, ptr %.sroa.5394.0..sroa_idx, align 8
  store <2 x float> %i.qc, ptr %.sroa.6395.0..sroa_idx, align 4
  store float %i.ps, ptr %.sroa.7.0..sroa_idx, align 4
  store <2 x float> %i.qf, ptr %.sroa.8.0..sroa_idx, align 8
  store float %i.qg, ptr %.sroa.9.0..sroa_idx, align 8
  store <2 x float> %i.px, ptr %.sroa.10.0..sroa_idx, align 4
  store float %i.pp, ptr %.sroa.9401.sroa.4.0..sroa.9401.0..sroa_idx.sroa_idx, align 4, !tbaa !62
  br label %.loopexit

bb.bf:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread438
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pi, i64 24
  %.sroa.083.0.copyload.i = load <2 x float>, ptr %i.qh, align 4, !noalias !437 ; 3 uses
  %.sroa.6.0..sroa_idx.i362 = getelementptr inbounds nuw i8, ptr %i.pi, i64 32
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i362, align 4, !noalias !437
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pi, i64 36
  %.sroa.081.0.copyload.i = load <2 x float>, ptr %i.qi, align 4, !noalias !437
  %.sroa.482.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pi, i64 44
  %.sroa.482.0.copyload.i = load float, ptr %.sroa.482.0..sroa_idx.i, align 4, !noalias !437
  %i.qj = insertelement <2 x float> poison, float %.sroa.223.0.copyload.i, i64 0
  %i.qk = insertelement <2 x float> %i.qj, float %.sroa.221.0.copyload.i, i64 1
  %i.ql = fmul <2 x float> %i.qk, splat (float f0x3EAAAAAA)
  %i.qm = fmul <2 x float> %.sroa.022.0.copyload.i, splat (float f0x3EAAAAAA)
  %i.qn = fmul <2 x float> %.sroa.020.0.copyload.i, splat (float f0x3F2AAAAB)
  %i.qo = fadd <2 x float> %i.qm, %i.qn
  %i.qp = fmul <2 x float> %.sroa.020.0.copyload.i, splat (float f0x3F2AAAAA)
  %i.qq = fmul <2 x float> %.sroa.083.0.copyload.i, splat (float f0x3EAAAAAB)
  %i.qr = fadd <2 x float> %i.qp, %i.qq           ; 2 uses
  %i.qs = fmul <2 x float> %i.qo, splat (float 5.000000e-01)
  %i.qt = fmul <2 x float> %i.qr, splat (float 5.000000e-01)
  %i.qu = fadd <2 x float> %i.qs, %i.qt
  %i.qv = fmul <2 x float> %.sroa.020.0.copyload.i, splat (float f0x3EAAAAAA)
  %i.qw = fmul <2 x float> %.sroa.083.0.copyload.i, splat (float f0x3F2AAAAB)
  %i.qx = fadd <2 x float> %i.qv, %i.qw           ; 2 uses
  %i.qy = fmul <2 x float> %.sroa.083.0.copyload.i, splat (float f0x3F2AAAAA)
  %i.qz = fmul <2 x float> %.sroa.081.0.copyload.i, splat (float f0x3EAAAAAB)
  %i.ra = fadd <2 x float> %i.qy, %i.qz
  %i.rb = fmul <2 x float> %i.qx, splat (float 5.000000e-01)
  %i.rc = fmul <2 x float> %i.ra, splat (float 5.000000e-01)
  %i.rd = fadd <2 x float> %i.rb, %i.rc
  %i.re = insertelement <2 x float> poison, float %.sroa.221.0.copyload.i, i64 0 ; 2 uses
  %i.rf = insertelement <2 x float> %i.re, float %.sroa.6.0.copyload.i, i64 1 ; 2 uses
  %i.rg = fmul <2 x float> %i.rf, splat (float f0x3F2AAAAB)
  %i.rh = fadd <2 x float> %i.ql, %i.rg           ; 2 uses
  %i.ri = shufflevector <2 x float> %i.rf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.rj = fmul <2 x float> %i.ri, <float f0x3EAAAAAB, float f0x3F2AAAAA>
  %i.rk = insertelement <2 x float> %i.re, float %.sroa.482.0.copyload.i, i64 1
  %i.rl = fmul <2 x float> %i.rk, <float f0x3F2AAAAA, float f0x3EAAAAAB>
  %i.rm = fadd <2 x float> %i.rj, %i.rl           ; 2 uses
  %i.rn = fmul <2 x float> %i.rh, splat (float 5.000000e-01)
  %i.ro = fmul <2 x float> %i.rm, splat (float 5.000000e-01)
  %i.rp = fadd <2 x float> %i.rn, %i.ro           ; 2 uses
  store <2 x float> %i.qu, ptr %29, align 8
  %i.rq = extractelement <2 x float> %i.rp, i64 0
  store float %i.rq, ptr %.sroa.5394.0..sroa_idx, align 8
  store <2 x float> %i.qr, ptr %.sroa.6395.0..sroa_idx, align 4
  %i.rr = extractelement <2 x float> %i.rm, i64 0
  store float %i.rr, ptr %.sroa.7.0..sroa_idx, align 4
  store <2 x float> %i.qx, ptr %.sroa.8.0..sroa_idx, align 8
  %i.rs = extractelement <2 x float> %i.rh, i64 1
  store float %i.rs, ptr %.sroa.9.0..sroa_idx, align 8
  store <2 x float> %i.rd, ptr %.sroa.10.0..sroa_idx, align 4
  %i.rt = extractelement <2 x float> %i.rp, i64 1
  store float %i.rt, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !62
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.bd, %bb.be, %bb.bf
  %.pn123 = phi i32 [ 1, %bb.be ], [ 1, %bb.bf ], [ 2, %bb.bd ], [ %i.oi, %.preheader ]
  %.196 = add nsw i32 %.pn123, %.095443
  %i.ru = load ptr, ptr %26, align 8, !tbaa !159  ; 2 uses
  %i.rv = load ptr, ptr %i.km, align 8, !tbaa !159
  %i.rw = icmp eq ptr %i.ru, %i.rv                ; 2 uses
  %i.rx = getelementptr inbounds nuw [12 x i8], ptr %i.ru, i64 %indvars.iv
  %.sroa.0391.0 = select i1 %i.rw, ptr null, ptr %i.rx
  %.sroa.6.0 = select i1 %i.rw, i64 0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #32
  %i.ry = sitofp i32 %i.nu to float
  %i.rz = trunc nsw i64 %indvars.iv to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.sa = trunc nsw i64 %indvars.iv.next to i32
  %i.sb = insertelement <2 x i32> poison, i32 %i.rz, i64 0
  %i.sc = insertelement <2 x i32> %i.sb, i32 %i.sa, i64 1
  %i.sd = uitofp <2 x i32> %i.sc to <2 x float>
  %i.se = insertelement <2 x float> poison, float %i.ry, i64 0
  %i.sf = shufflevector <2 x float> %i.se, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sg = fdiv <2 x float> %i.sd, %i.sf           ; 2 uses
  %i.sh = fsub <2 x float> splat (float 1.000000e+00), %i.sg
  %i.si = fmul <2 x float> %i.nt, %i.sh
  %i.sj = fmul <2 x float> %i.nr, %i.sg
  %i.sk = fadd <2 x float> %i.sj, %i.si           ; 2 uses
  store ptr %.sroa.0391.0, ptr %31, align 8, !tbaa !159
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !66
  %i.sl = extractelement <2 x float> %i.sk, i64 0
  %i.sm = extractelement <2 x float> %i.sk, i64 1
  invoke void @_ZN4pbrt11CreateCurveEPKNS_9TransformES2_bN4pstd4spanIKNS_6Point3IfEEEEffNS_9CurveTypeENS4_IKNS_7Normal3IfEEEEiNS3_3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::vector") align 8 %30, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr nonnull %29, i64 4, float noundef %i.sl, float noundef %i.sm, i32 noundef %.091, ptr noundef nonnull byval(%"class.pstd::span.62") align 8 %31, i32 noundef %i.mz, i64 %6)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %.loopexit
  %i.sn = load ptr, ptr %i.nj, align 8, !tbaa !109
  %i.so = load i64, ptr %i.nm, align 8, !tbaa !107
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %i.so
  %i.sq = load ptr, ptr %i.nn, align 8, !tbaa !109 ; 2 uses
  %i.sr = load i64, ptr %i.no, align 8, !tbaa !107
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %i.sr
  %i.st = invoke noundef ptr @_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEE6insertIPS2_EES8_PKS2_T_SB_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.sp, ptr noundef %i.sq, ptr noundef %i.ss)
          to label %bb.bh unwind label %bb.bl     ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  store i64 0, ptr %i.no, align 8, !tbaa !107
  %i.su = load ptr, ptr %i.nn, align 8, !tbaa !109 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.su, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.sv = load i64, ptr %i.np, align 8, !tbaa !108
  %i.sw = shl i64 %i.sv, 3
  %i.sx = load ptr, ptr %30, align 8, !tbaa !115  ; 2 uses
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !65
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 24
  %i.ta = load ptr, ptr %i.sz, align 8
  invoke void %i.ta(ptr noundef nonnull align 8 dereferenceable(8) %i.sx, ptr noundef nonnull %i.su, i64 noundef %i.sw, i64 noundef 8)
          to label %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit unwind label %bb.bj, !inline_history !1

bb.bj:                                            ; preds = %bb.bi
  %i.tb = landingpad { ptr, i32 }
          catch ptr null
  %i.tc = extractvalue { ptr, i32 } %i.tb, 0
  call void @__clang_call_terminate(ptr %i.tc) #35
  unreachable

_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  %i.td = load i32, ptr %i.b, align 4, !tbaa !89  ; 2 uses
  %i.te = sext i32 %i.td to i64
  %i.tf = icmp slt i64 %indvars.iv.next, %i.te
  br i1 %i.tf, label %bb.bc, label %.loopexit441, !llvm.loop !426

bb.bk:                                            ; preds = %.loopexit
  %i.tg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bg
  %i.th = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %30) #32
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn124 = phi { ptr, i32 } [ %i.th, %bb.bl ], [ %i.tg, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  call void @_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  br label %.body288

.loopexit441.sink.split:                          ; preds = %bb.ay, %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i302
  %i.ti = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #32
  %i.tj = ptrtoint ptr %i.ti to i64
  store i64 %i.tj, ptr %0, align 8, !tbaa !80
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tk, i8 0, i64 24, i1 false)
  br label %.loopexit441

.loopexit441:                                     ; preds = %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, %.loopexit441.sink.split, %bb.bb
  %i.tl = load ptr, ptr %26, align 8, !tbaa !161  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.tl, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %.loopexit441
  %i.tm = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !165
  %i.to = ptrtoint ptr %i.tn to i64
  %i.tp = ptrtoint ptr %i.tl to i64
  %i.tq = sub i64 %i.to, %i.tp
  call void @_ZdlPvm(ptr noundef nonnull %i.tl, i64 noundef %i.tq) #33
  br label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit: ; preds = %.loopexit441, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  %i.tr = load ptr, ptr %23, align 8, !tbaa !63   ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.tt = icmp eq ptr %i.tr, %i.ts
  br i1 %i.tt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371: ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit
  %i.tu = load i64, ptr %i.ts, align 8, !tbaa !62
  %i.tv = add i64 %i.tu, 1
  call void @_ZdlPvm(ptr noundef %i.tr, i64 noundef %i.tv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373: ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  br label %bb.bp

.body288:                                         ; preds = %bb.al, %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i282, %bb.ba, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, %.body303
  %.pn129 = phi { ptr, i32 } [ %i.nd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314 ], [ %eh.lpad-body304, %.body303 ], [ %i.ni, %bb.ba ], [ %.pn124, %bb.bm ], [ %i.ln, %bb.ap ], [ %i.lb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ], [ %i.kr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i282 ], [ %i.kr, %bb.al ] ; 2 uses
  %i.tw = load ptr, ptr %26, align 8, !tbaa !161  ; 3 uses
  %.not.i.i.i374 = icmp eq ptr %i.tw, null
  br i1 %.not.i.i.i374, label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit375, label %bb.bo

bb.bo:                                            ; preds = %.body288
  %i.tx = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !165
  %i.tz = ptrtoint ptr %i.ty to i64
  %i.ua = ptrtoint ptr %i.tw to i64
  %i.ub = sub i64 %i.tz, %i.ua
  call void @_ZdlPvm(ptr noundef nonnull %i.tw, i64 noundef %i.ub) #33
  br label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit375

_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit375: ; preds = %bb.bo, %.body288, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293
  %.pn129.pn = phi { ptr, i32 } [ %i.li, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293 ], [ %.pn129, %.body288 ], [ %.pn129, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  br label %.body272

.body272:                                         ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i262, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i268, %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit375
  %.pn129.pn.pn = phi { ptr, i32 } [ %.pn129.pn, %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit375 ], [ %i.jp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i262 ], [ %i.jz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i268 ], [ %i.jp, %bb.af ] ; 2 uses
  %i.uc = load ptr, ptr %23, align 8, !tbaa !63   ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ue = icmp eq ptr %i.uc, %i.ud
  br i1 %i.ue, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376: ; preds = %.body272
  %i.uf = load i64, ptr %i.ud, align 8, !tbaa !62
  %i.ug = add i64 %i.uf, 1
  call void @_ZdlPvm(ptr noundef %i.uc, i64 noundef %i.ug) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378: ; preds = %.body272, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257
  %.pn129.pn.pn.pn = phi { ptr, i32 } [ %i.jc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257 ], [ %.pn129.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376 ], [ %.pn129.pn.pn, %.body272 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  br label %bb.br

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i222
  %i.uh = load ptr, ptr %21, align 8, !tbaa !146  ; 3 uses
  %.not.i.i.i379 = icmp eq ptr %i.uh, null
  br i1 %.not.i.i.i379, label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ui = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !168
  %i.uk = ptrtoint ptr %i.uj to i64
  %i.ul = ptrtoint ptr %i.uh to i64
  %i.um = sub i64 %i.uk, %i.ul
  call void @_ZdlPvm(ptr noundef nonnull %i.uh, i64 noundef %i.um) #33
  br label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit:  ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.bt

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378, %.body234, %.body223
  %.pn134 = phi { ptr, i32 } [ %eh.lpad-body224, %.body223 ], [ %.pn129.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378 ], [ %eh.lpad-body235, %.body234 ] ; 2 uses
  %i.un = load ptr, ptr %21, align 8, !tbaa !146  ; 3 uses
  %.not.i.i.i380 = icmp eq ptr %i.un, null
  br i1 %.not.i.i.i380, label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit381, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.uo = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !168
  %i.uq = ptrtoint ptr %i.up to i64
  %i.ur = ptrtoint ptr %i.un to i64
  %i.us = sub i64 %i.uq, %i.ur
  call void @_ZdlPvm(ptr noundef nonnull %i.un, i64 noundef %i.us) #33
  br label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit381

_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit381: ; preds = %bb.bs, %bb.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227
  %.pn134.pn = phi { ptr, i32 } [ %i.gr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ], [ %.pn134, %bb.br ], [ %.pn134, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %.body

bb.bt:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i203
  %i.ut = load ptr, ptr %18, align 8, !tbaa !63   ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.uv = icmp eq ptr %i.ut, %i.uu
  br i1 %i.uv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382: ; preds = %bb.bt
  %i.uw = load i64, ptr %i.uu, align 8, !tbaa !62
  %i.ux = add i64 %i.uw, 1
  call void @_ZdlPvm(ptr noundef %i.ut, i64 noundef %i.ux) #33
end_hunk_0
