Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_collision?download=true
inline.NumInlined: 896
inline.NumDeleted: 292
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN13TestCollision24testAxisAlignedCollisionEv:bb.a
  %65 = alloca %"class.core::aabbox3d", align 4   ; 10 uses
  %66 = alloca %"class.core::aabbox3d", align 4   ; 10 uses
  %i.m = alloca float, align 4                    ; 6 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %68 = alloca %"class.std::allocator", align 1   ; 5 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %70 = alloca %"class.std::allocator", align 1   ; 5 uses
  %71 = alloca %"class.core::aabbox3d", align 4   ; 10 uses
  %72 = alloca %"class.core::aabbox3d", align 4   ; 10 uses
  %i.n = alloca float, align 4                    ; 6 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %74 = alloca %"class.std::allocator", align 1   ; 5 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %76 = alloca %"class.std::allocator", align 1   ; 5 uses
  %77 = alloca %"class.core::aabbox3d", align 4   ; 10 uses
  %78 = alloca %"class.core::aabbox3d", align 4   ; 10 uses
  %i.o = alloca float, align 4                    ; 6 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %80 = alloca %"class.std::allocator", align 1   ; 5 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %82 = alloca %"class.std::allocator", align 1   ; 5 uses
  %83 = alloca %"class.core::aabbox3d", align 4   ; 10 uses
  %84 = alloca %"class.core::aabbox3d", align 4   ; 10 uses
  %i.p = alloca float, align 4                    ; 6 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %86 = alloca %"class.std::allocator", align 1   ; 5 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %88 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.az = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 20
  %i.be = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %21, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %21, i64 20
  %i.bj = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.bm = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %22, i64 20
  %i.bo = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %27, i64 20
  %i.bt = getelementptr inbounds nuw i8, ptr %28, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %28, i64 12
  %i.bw = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %28, i64 20
  %i.by = getelementptr inbounds nuw i8, ptr %33, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %33, i64 12
  %i.cb = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %33, i64 20
  %i.cd = getelementptr inbounds nuw i8, ptr %34, i64 4
  %i.ce = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %34, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %34, i64 20
  %i.ci = getelementptr inbounds nuw i8, ptr %37, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %37, i64 12
  %i.cl = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %37, i64 20
  %i.cn = getelementptr inbounds nuw i8, ptr %38, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %38, i64 12
  %i.cq = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %38, i64 20
  %i.cs = getelementptr inbounds nuw i8, ptr %41, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %41, i64 12
  %i.cv = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %41, i64 20
  %i.cx = getelementptr inbounds nuw i8, ptr %42, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %42, i64 12
  %i.da = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %42, i64 20
  %i.dc = getelementptr inbounds nuw i8, ptr %47, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %47, i64 12
  %i.df = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %47, i64 20
  %i.dh = getelementptr inbounds nuw i8, ptr %48, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %48, i64 12
  %i.dk = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %48, i64 20
  %i.dm = getelementptr inbounds nuw i8, ptr %53, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %53, i64 12
  %i.dp = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %53, i64 20
  %i.dr = getelementptr inbounds nuw i8, ptr %54, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %54, i64 12
  %i.du = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %54, i64 20
  %i.dw = getelementptr inbounds nuw i8, ptr %59, i64 4
  %i.dx = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %59, i64 12
  %i.dz = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %59, i64 20
  %i.eb = getelementptr inbounds nuw i8, ptr %60, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %60, i64 12
  %i.ee = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %60, i64 20
  %i.eg = getelementptr inbounds nuw i8, ptr %65, i64 4
  %i.eh = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %65, i64 12
  %i.ej = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %65, i64 20
  %i.el = getelementptr inbounds nuw i8, ptr %66, i64 4
  %i.em = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %66, i64 12
  %i.eo = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %66, i64 20
  %i.eq = getelementptr inbounds nuw i8, ptr %71, i64 4
  %i.er = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %71, i64 12
  %i.et = getelementptr inbounds nuw i8, ptr %71, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %71, i64 20
  %i.ev = getelementptr inbounds nuw i8, ptr %72, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %72, i64 12
  %i.ey = getelementptr inbounds nuw i8, ptr %72, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %72, i64 20
  %i.fa = getelementptr inbounds nuw i8, ptr %77, i64 4
  %i.fb = getelementptr inbounds nuw i8, ptr %77, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %77, i64 12
  %i.fd = getelementptr inbounds nuw i8, ptr %77, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %77, i64 20
  %i.ff = getelementptr inbounds nuw i8, ptr %78, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %78, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %78, i64 12
  %i.fi = getelementptr inbounds nuw i8, ptr %78, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %78, i64 20
  %i.fk = getelementptr inbounds nuw i8, ptr %83, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %83, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %83, i64 12
  %i.fn = getelementptr inbounds nuw i8, ptr %83, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %83, i64 20
  %i.fp = getelementptr inbounds nuw i8, ptr %84, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %84, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %84, i64 12
  %i.fs = getelementptr inbounds nuw i8, ptr %84, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %84, i64 20
  br label %.preheader675

.preheader675:                                    ; preds = %bb.a, %bb.c
  %indvars.iv684 = phi i32 [ -3, %bb.a ], [ %i.fw, %bb.c ] ; 6 uses
  %i.fu = trunc nsw i32 %indvars.iv684 to i16     ; 2 uses
  %i.fv = sitofp i16 %i.fu to float               ; 18 uses
  %i.fw = add nsw i32 %indvars.iv684, 1           ; 3 uses
  %i.fx = sitofp nsz i32 %i.fw to float           ; 10 uses
  %i.fy = add nsw i32 %indvars.iv684, -2
  %i.fz = sitofp nsz i32 %i.fy to float           ; 5 uses
  %i.ga = add nsw i32 %indvars.iv684, -1
  %i.gb = sitofp nsz i32 %i.ga to float           ; 3 uses
  %i.gc = sitofp i16 %i.fu to double              ; 5 uses
  %i.gd = fadd nsz float %i.fv, -1.500000e+00     ; 2 uses
  %i.ge = add nsw i32 %indvars.iv684, 2
  %i.gf = sitofp nsz i32 %i.ge to float           ; 11 uses
  %i.gg = add nsw i32 %indvars.iv684, 3
  %i.gh = sitofp nsz i32 %i.gg to float           ; 3 uses
  %i.gi = fadd nsz float %i.fv, 2.500000e+00      ; 2 uses
  %89 = fadd nsz double %i.gc, 4.200000e+00
  %90 = fptrunc nsz double %89 to float           ; 3 uses
  %91 = fadd nsz double %i.gc, 2.290000e+00
  %i.gj = fptrunc nsz double %91 to float         ; 2 uses
  %92 = fadd nsz double %i.gc, -4.200000e+00
  %i.gk = fptrunc nsz double %92 to float         ; 3 uses
  %93 = insertelement <2 x double> poison, double %i.gc, i64 0
  %94 = shufflevector <2 x double> %93, <2 x double> poison, <2 x i32> zeroinitializer
  %95 = fadd nsz <2 x double> %94, <double 2.300000e+00, double -2.300000e+00>
  %96 = fptrunc <2 x double> %95 to <2 x float>   ; 2 uses
  %i.gl = fadd nsz double %i.gc, -2.290000e+00
  %i.gm = fptrunc nsz double %i.gl to float       ; 2 uses
  %97 = extractelement <2 x float> %96, i64 0
  %98 = extractelement <2 x float> %96, i64 1
  br label %.preheader

bb.b:                                             ; preds = %bb.c
  ret void

.preheader:                                       ; preds = %.preheader675, %bb.d
  %indvars.iv680 = phi i32 [ -3, %.preheader675 ], [ %i.gp, %bb.d ] ; 3 uses
  %i.gn = trunc nsw i32 %indvars.iv680 to i16     ; 2 uses
  %i.go = sitofp i16 %i.gn to float               ; 26 uses
  %i.gp = add nsw i32 %indvars.iv680, 1           ; 3 uses
  %i.gq = sitofp nsz i32 %i.gp to float           ; 15 uses
  %i.gr = sitofp i16 %i.gn to double              ; 5 uses
  %i.gs = fadd nsz float %i.go, 1.500000e+00
  %i.gt = fadd nsz float %i.go, 2.500000e+00
  %i.gu = fadd nsz float %i.go, -1.500000e+00     ; 4 uses
  %i.gv = fadd nsz float %i.go, 5.000000e-01      ; 2 uses
  %i.gw = fadd nsz float %i.go, -5.000000e-01     ; 2 uses
  %i.gx = add nsw i32 %indvars.iv680, 2
  %i.gy = sitofp nsz i32 %i.gx to float           ; 6 uses
  %i.gz = fadd nsz double %i.gr, 2.290000e+00
  %i.ha = fptrunc nsz double %i.gz to float       ; 2 uses
  %i.hb = fadd nsz double %i.gr, 4.200000e+00
  %i.hc = fptrunc nsz double %i.hb to float       ; 3 uses
  %i.hd = fadd nsz double %i.gr, -4.200000e+00
  %i.he = fptrunc nsz double %i.hd to float       ; 3 uses
  %i.hf = fadd nsz double %i.gr, -2.290000e+00
  %i.hg = fptrunc nsz double %i.hf to float       ; 2 uses
  %99 = insertelement <2 x double> poison, double %i.gr, i64 0
  %100 = shufflevector <2 x double> %99, <2 x double> poison, <2 x i32> zeroinitializer
  %101 = fadd nsz <2 x double> %100, <double 2.300000e+00, double -2.300000e+00>
  %102 = fptrunc <2 x double> %101 to <2 x float> ; 2 uses
  %103 = extractelement <2 x float> %102, i64 0
  %104 = extractelement <2 x float> %102, i64 1
  br label %bb.e

bb.c:                                             ; preds = %bb.d
  %exitcond687.not = icmp eq i32 %i.fw, 4
  br i1 %exitcond687.not, label %bb.b, label %.preheader675, !llvm.loop !59

bb.d:                                             ; preds = %bb.fh
  %exitcond683.not = icmp eq i32 %i.gp, 4
  br i1 %exitcond683.not, label %bb.c, label %.preheader, !llvm.loop !60

bb.e:                                             ; preds = %.preheader, %bb.fh
  %indvars.iv = phi i32 [ -3, %.preheader ], [ %i.hj, %bb.fh ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.hh = trunc nsw i32 %indvars.iv to i16        ; 2 uses
  %i.hi = sitofp i16 %i.hh to float               ; 27 uses
  %i.hj = add nsw i32 %indvars.iv, 1              ; 3 uses
  %i.hk = sitofp nsz i32 %i.hj to float           ; 19 uses
  store float %i.fv, ptr %1, align 4, !tbaa !62
  store float %i.go, ptr %i.q, align 4, !tbaa !63
  store float %i.hi, ptr %i.r, align 4, !tbaa !64
  store float %i.fx, ptr %i.s, align 4, !tbaa !62
  store float %i.gq, ptr %i.t, align 4, !tbaa !63
  store float %i.hk, ptr %i.u, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store float %i.fz, ptr %2, align 4, !tbaa !62
  store float %i.go, ptr %i.v, align 4, !tbaa !63
  store float %i.hi, ptr %i.w, align 4, !tbaa !64
  store float %i.gb, ptr %i.x, align 4, !tbaa !62
  store float %i.gq, ptr %i.y, align 4, !tbaa !63
  store float %i.hk, ptr %i.z, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !28
  %i.hl = call noundef signext i8 @_Z20axisAlignedCollisionRKN4core8aabbox3dIfEES3_NS_8vector3dIfEEPf(ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, <2 x float> <float 1.000000e+00, float 0.000000e+00>, float 0.000000e+00, ptr noundef nonnull %i.a)
  %i.hm = icmp eq i8 %i.hl, 0
  br i1 %i.hm, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hn = call ptr @__cxa_allocate_exception(i64 72) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.hn, ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.3, i32 noundef 77)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.hn, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.sink.split

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0341 = phi i1 [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hq = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !17
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.0341, label %.sink.split, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.0341, label %.sink.split, label %bb.s

bb.j:                                             ; preds = %bb.e
  %i.hv = load float, ptr %i.a, align 4, !tbaa !28
  %i.hw = fpext nsz float %i.hv to double
  %i.hx = fadd nsz double %i.hw, -1.000000e+00
  %i.hy = call nsz double @llvm.fabs.f64(double %i.hx)
  %i.hz = fcmp nsz olt double %i.hy, 1.000000e-03
  br i1 %i.hz, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ia = call ptr @__cxa_allocate_exception(i64 72) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462.thread

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.ia, ptr noundef nonnull align 8 %5, ptr noundef nonnull @.str.3, i32 noundef 78)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.ia, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462.thread: ; preds = %bb.k
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.sink.split

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0343 = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.id = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460: ; preds = %bb.n
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !17
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ih) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.0343, label %.sink.split, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.0343, label %.sink.split, label %bb.s

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store float %i.fv, ptr %7, align 4, !tbaa !62
  store float %i.go, ptr %i.aa, align 4, !tbaa !63
  store float %i.hi, ptr %i.ab, align 4, !tbaa !64
  store float %i.fx, ptr %i.ac, align 4, !tbaa !62
  store float %i.gq, ptr %i.ad, align 4, !tbaa !63
  store float %i.hk, ptr %i.ae, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store float %i.fz, ptr %8, align 4, !tbaa !62
  store float %i.go, ptr %i.af, align 4, !tbaa !63
  store float %i.hi, ptr %i.ag, align 4, !tbaa !64
  store float %i.gb, ptr %i.ah, align 4, !tbaa !62
  store float %i.gq, ptr %i.ai, align 4, !tbaa !63
  store float %i.hk, ptr %i.aj, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !28
  %i.ii = call noundef signext i8 @_Z20axisAlignedCollisionRKN4core8aabbox3dIfEES3_NS_8vector3dIfEEPf(ptr noundef nonnull align 4 dereferenceable(24) %7, ptr noundef nonnull align 4 dereferenceable(24) %8, <2 x float> <float -1.000000e+00, float 0.000000e+00>, float 0.000000e+00, ptr noundef nonnull %i.b)
  %i.ij = icmp eq i8 %i.ii, -1
  br i1 %i.ij, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ik = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.q unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465.thread

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.ik, ptr noundef nonnull align 8 %9, ptr noundef nonnull @.str.3, i32 noundef 85)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr nonnull %i.ik, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.t

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.hn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ia, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460 ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462.thread ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462 ]
  %.pn393.pn.ph = phi { ptr, i32 } [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ho, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460 ], [ %i.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462.thread ], [ %i.ic, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462 ]
  call void @__cxa_free_exception(ptr %.sink) #23
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn393.pn = phi { ptr, i32 } [ %i.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ic, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462 ], [ %i.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460 ], [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn393.pn.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.fj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465.thread: ; preds = %bb.p
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q
  %.0349 = phi i1 [ false, %bb.r ], [ true, %bb.q ] ; 2 uses
  %i.im = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.in = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463: ; preds = %bb.t
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !17
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ir) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %.0349, label %bb.u, label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %.0349, label %bb.u, label %bb.v
end_hunk_0
begin_hunk_1_@_ZN13TestCollision24testAxisAlignedCollisionEv:bb.a
  %i.mz = add i64 %i.my, 1
  call void @_ZdlPvm(ptr noundef %i.mv, i64 noundef %i.mz) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  br i1 %.0377, label %.sink.split753, label %bb.cm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  br i1 %.0377, label %.sink.split753, label %bb.cm

bb.cd:                                            ; preds = %bb.by
  %i.na = load float, ptr %i.i, align 4, !tbaa !28
  %i.nb = fpext nsz float %i.na to double
  %i.nc = fadd nsz double %i.nb, -2.500000e+00
  %i.nd = call nsz double @llvm.fabs.f64(double %i.nc)
  %i.ne = fcmp nsz olt double %i.nd, 1.000000e-03
  br i1 %i.ne, label %bb.ci, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.nf = call ptr @__cxa_allocate_exception(i64 72) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %46)
          to label %bb.cf unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498.thread

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.nf, ptr noundef nonnull align 8 %45, ptr noundef nonnull @.str.3, i32 noundef 140)
          to label %bb.cg unwind label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  invoke void @__cxa_throw(ptr nonnull %i.nf, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.ch

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498.thread: ; preds = %bb.ce
  %i.ng = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  br label %.sink.split753

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.0379 = phi i1 [ false, %bb.cg ], [ true, %bb.cf ] ; 2 uses
  %i.nh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ni = load ptr, ptr %45, align 8, !tbaa !16   ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.nk = icmp eq ptr %i.ni, %i.nj
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i496

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i496: ; preds = %bb.ch
  %i.nl = load i64, ptr %i.nj, align 8, !tbaa !17
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nm) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  br i1 %.0379, label %.sink.split753, label %bb.cm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498: ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  br i1 %.0379, label %.sink.split753, label %bb.cm

bb.ci:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #23
  store float %i.fv, ptr %47, align 4, !tbaa !62
  store float %i.go, ptr %i.dc, align 4, !tbaa !63
  store float %i.hi, ptr %i.dd, align 4, !tbaa !64
  store float %i.fx, ptr %i.de, align 4, !tbaa !62
  store float %i.gq, ptr %i.df, align 4, !tbaa !63
  store float %i.hk, ptr %i.dg, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #23
  store float %i.gf, ptr %48, align 4, !tbaa !62
  store float %i.gu, ptr %i.dh, align 4, !tbaa !63
  store float %i.hi, ptr %i.di, align 4, !tbaa !64
  store float %i.gi, ptr %i.dj, align 4, !tbaa !62
  store float %i.gw, ptr %i.dk, align 4, !tbaa !63
  store float %i.hk, ptr %i.dl, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  store float 2.100000e+00, ptr %i.j, align 4, !tbaa !28
  %i.nn = call noundef signext i8 @_Z20axisAlignedCollisionRKN4core8aabbox3dIfEES3_NS_8vector3dIfEEPf(ptr noundef nonnull align 4 dereferenceable(24) %47, ptr noundef nonnull align 4 dereferenceable(24) %48, <2 x float> <float -5.000000e-01, float 3.000000e-01>, float 0.000000e+00, ptr noundef nonnull %i.j)
  %i.no = icmp eq i8 %i.nn, 0
  br i1 %i.no, label %bb.co, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.np = call ptr @__cxa_allocate_exception(i64 72) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %50)
          to label %bb.ck unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501.thread

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.np, ptr noundef nonnull align 8 %49, ptr noundef nonnull @.str.3, i32 noundef 147)
          to label %bb.cl unwind label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  invoke void @__cxa_throw(ptr nonnull %i.np, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.cn

.sink.split753:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i496, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493
  %.sink754 = phi ptr [ %i.ms, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495 ], [ %i.ms, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493 ], [ %i.ms, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495.thread ], [ %i.nf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i496 ], [ %i.nf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498.thread ], [ %i.nf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498 ]
  %.pn421.pn.ph = phi { ptr, i32 } [ %i.mu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495 ], [ %i.mu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493 ], [ %i.mt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495.thread ], [ %i.nh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i496 ], [ %i.ng, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498.thread ], [ %i.nh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498 ]
  call void @__cxa_free_exception(ptr %.sink754) #23
  br label %bb.cm

bb.cm:                                            ; preds = %.sink.split753, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i496, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495
  %.pn421.pn = phi { ptr, i32 } [ %i.mu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493 ], [ %i.nh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498 ], [ %i.nh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i496 ], [ %i.mu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495 ], [ %.pn421.pn.ph, %.sink.split753 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  br label %bb.fj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501.thread: ; preds = %bb.cj
  %i.nq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  br label %.sink.split755

bb.cn:                                            ; preds = %bb.cl, %bb.ck
  %.0385 = phi i1 [ false, %bb.cl ], [ true, %bb.ck ] ; 2 uses
  %i.nr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ns = load ptr, ptr %49, align 8, !tbaa !16   ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  %i.nu = icmp eq ptr %i.ns, %i.nt
  br i1 %i.nu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i499

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i499: ; preds = %bb.cn
  %i.nv = load i64, ptr %i.nt, align 8, !tbaa !17
  %i.nw = add i64 %i.nv, 1
  call void @_ZdlPvm(ptr noundef %i.ns, i64 noundef %i.nw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  br i1 %.0385, label %.sink.split755, label %bb.cx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501: ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  br i1 %.0385, label %.sink.split755, label %bb.cx

bb.co:                                            ; preds = %bb.ci
  %i.nx = load float, ptr %i.j, align 4, !tbaa !28
  %i.ny = fpext nsz float %i.nx to double
  %i.nz = fadd nsz double %i.ny, -2.000000e+00
  %i.oa = call nsz double @llvm.fabs.f64(double %i.nz)
  %i.ob = fcmp nsz olt double %i.oa, 1.000000e-03
  br i1 %i.ob, label %bb.ct, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.oc = call ptr @__cxa_allocate_exception(i64 72) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %52)
          to label %bb.cq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504.thread

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.oc, ptr noundef nonnull align 8 %51, ptr noundef nonnull @.str.3, i32 noundef 148)
          to label %bb.cr unwind label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  invoke void @__cxa_throw(ptr nonnull %i.oc, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.cs

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504.thread: ; preds = %bb.cp
  %i.od = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  br label %.sink.split755

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.0387 = phi i1 [ false, %bb.cr ], [ true, %bb.cq ] ; 2 uses
  %i.oe = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.of = load ptr, ptr %51, align 8, !tbaa !16   ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 2 uses
  %i.oh = icmp eq ptr %i.of, %i.og
  br i1 %i.oh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i502

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i502: ; preds = %bb.cs
  %i.oi = load i64, ptr %i.og, align 8, !tbaa !17
  %i.oj = add i64 %i.oi, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oj) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  br i1 %.0387, label %.sink.split755, label %bb.cx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504: ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  br i1 %.0387, label %.sink.split755, label %bb.cx

bb.ct:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #23
  %i.ok = add nsw i32 %indvars.iv, 2
  %i.ol = sitofp nsz i32 %i.ok to float           ; 6 uses
  store float %i.fv, ptr %53, align 4, !tbaa !62
  store float %i.go, ptr %i.dm, align 4, !tbaa !63
  store float %i.hi, ptr %i.dn, align 4, !tbaa !64
  store float %i.gf, ptr %i.do, align 4, !tbaa !62
  store float %i.gy, ptr %i.dp, align 4, !tbaa !63
  store float %i.ol, ptr %i.dq, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #23
  %i.om = fadd nsz double %i.md, 2.290000e+00
  %i.on = fptrunc nsz double %i.om to float       ; 2 uses
  %i.oo = fadd nsz double %i.md, 4.200000e+00
  %i.op = fptrunc nsz double %i.oo to float       ; 3 uses
  store float %97, ptr %54, align 4, !tbaa !62
  store float %i.ha, ptr %i.dr, align 4, !tbaa !63
  store float %i.on, ptr %i.ds, align 4, !tbaa !64
  store float %90, ptr %i.dt, align 4, !tbaa !62
  store float %i.hc, ptr %i.du, align 4, !tbaa !63
  store float %i.op, ptr %i.dv, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !28
  %i.oq = call noundef signext i8 @_Z20axisAlignedCollisionRKN4core8aabbox3dIfEES3_NS_8vector3dIfEEPf(ptr noundef nonnull align 4 dereferenceable(24) %53, ptr noundef nonnull align 4 dereferenceable(24) %54, <2 x float> splat (float f0xBEAAAAAB), float f0xBEAAAAAB, ptr noundef nonnull %i.k)
  %i.or = icmp eq i8 %i.oq, 0
  br i1 %i.or, label %bb.cz, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.os = call ptr @__cxa_allocate_exception(i64 72) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %55, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %56)
          to label %bb.cv unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit507.thread

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.os, ptr noundef nonnull align 8 %55, ptr noundef nonnull @.str.3, i32 noundef 159)
          to label %bb.cw unwind label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  invoke void @__cxa_throw(ptr nonnull %i.os, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.cy

.sink.split755:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i502, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i499
  %.sink756 = phi ptr [ %i.np, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501 ], [ %i.np, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i499 ], [ %i.np, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501.thread ], [ %i.oc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i502 ], [ %i.oc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504.thread ], [ %i.oc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504 ]
  %.pn426.pn.ph = phi { ptr, i32 } [ %i.nr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501 ], [ %i.nr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i499 ], [ %i.nq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501.thread ], [ %i.oe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i502 ], [ %i.od, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504.thread ], [ %i.oe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504 ]
  call void @__cxa_free_exception(ptr %.sink756) #23
  br label %bb.cx

bb.cx:                                            ; preds = %.sink.split755, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i502, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i499, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501
  %.pn426.pn = phi { ptr, i32 } [ %i.nr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i499 ], [ %i.oe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504 ], [ %i.oe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i502 ], [ %i.nr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501 ], [ %.pn426.pn.ph, %.sink.split755 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #23
  br label %bb.fj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit507.thread: ; preds = %bb.cu
  %i.ot = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #23
  br label %.sink.split757

bb.cy:                                            ; preds = %bb.cw, %bb.cv
  %.0383 = phi i1 [ false, %bb.cw ], [ true, %bb.cv ] ; 2 uses
  %i.ou = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ov = load ptr, ptr %55, align 8, !tbaa !16   ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %i.ox = icmp eq ptr %i.ov, %i.ow
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit507, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i505

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i505: ; preds = %bb.cy
  %i.oy = load i64, ptr %i.ow, align 8, !tbaa !17
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ov, i64 noundef %i.oz) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #23
  br i1 %.0383, label %.sink.split757, label %bb.di

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit507: ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #23
  br i1 %.0383, label %.sink.split757, label %bb.di

bb.cz:                                            ; preds = %bb.ct
  %i.pa = load float, ptr %i.k, align 4, !tbaa !28
  %i.pb = fpext nsz float %i.pa to double
  %i.pc = fadd nsz double %i.pb, -9.000000e-01
  %i.pd = call nsz double @llvm.fabs.f64(double %i.pc)
  %i.pe = fcmp nsz olt double %i.pd, 1.000000e-03
  br i1 %i.pe, label %bb.de, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pf = call ptr @__cxa_allocate_exception(i64 72) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %58)
          to label %bb.db unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510.thread

bb.db:                                            ; preds = %bb.da
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.pf, ptr noundef nonnull align 8 %57, ptr noundef nonnull @.str.3, i32 noundef 160)
          to label %bb.dc unwind label %bb.dd

bb.dc:                                            ; preds = %bb.db
  invoke void @__cxa_throw(ptr nonnull %i.pf, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.dd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510.thread: ; preds = %bb.da
  %i.pg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #23
  br label %.sink.split757

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.0381 = phi i1 [ false, %bb.dc ], [ true, %bb.db ] ; 2 uses
  %i.ph = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.pi = load ptr, ptr %57, align 8, !tbaa !16   ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  %i.pk = icmp eq ptr %i.pi, %i.pj
  br i1 %i.pk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i508

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i508: ; preds = %bb.dd
  %i.pl = load i64, ptr %i.pj, align 8, !tbaa !17
  %i.pm = add i64 %i.pl, 1
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pm) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #23
  br i1 %.0381, label %.sink.split757, label %bb.di

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510: ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #23
  br i1 %.0381, label %.sink.split757, label %bb.di

bb.de:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #23
  store float %i.fv, ptr %59, align 4, !tbaa !62
  store float %i.go, ptr %i.dw, align 4, !tbaa !63
  store float %i.hi, ptr %i.dx, align 4, !tbaa !64
  store float %i.gf, ptr %i.dy, align 4, !tbaa !62
  store float %i.gy, ptr %i.dz, align 4, !tbaa !63
  store float %i.ol, ptr %i.ea, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #23
  store float %i.gj, ptr %60, align 4, !tbaa !62
  store float %103, ptr %i.eb, align 4, !tbaa !63
  store float %i.on, ptr %i.ec, align 4, !tbaa !64
  store float %90, ptr %i.ed, align 4, !tbaa !62
  store float %i.hc, ptr %i.ee, align 4, !tbaa !63
  store float %i.op, ptr %i.ef, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !28
  %i.pn = call noundef signext i8 @_Z20axisAlignedCollisionRKN4core8aabbox3dIfEES3_NS_8vector3dIfEEPf(ptr noundef nonnull align 4 dereferenceable(24) %59, ptr noundef nonnull align 4 dereferenceable(24) %60, <2 x float> splat (float f0xBEAAAAAB), float f0xBEAAAAAB, ptr noundef nonnull %i.l)
  %i.po = icmp eq i8 %i.pn, 1
  br i1 %i.po, label %bb.dk, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.pp = call ptr @__cxa_allocate_exception(i64 72) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %62)
          to label %bb.dg unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513.thread

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.pp, ptr noundef nonnull align 8 %61, ptr noundef nonnull @.str.3, i32 noundef 167)
          to label %bb.dh unwind label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  invoke void @__cxa_throw(ptr nonnull %i.pp, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.dj

.sink.split757:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i508, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit507, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit507.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i505
  %.sink758 = phi ptr [ %i.os, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit507 ], [ %i.os, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i505 ], [ %i.os, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit507.thread ], [ %i.pf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i508 ], [ %i.pf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510.thread ], [ %i.pf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510 ]
  %.pn431.pn.ph = phi { ptr, i32 } [ %i.ou, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit507 ], [ %i.ou, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i505 ], [ %i.ot, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit507.thread ], [ %i.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i508 ], [ %i.pg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510.thread ], [ %i.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510 ]
  call void @__cxa_free_exception(ptr %.sink758) #23
  br label %bb.di

bb.di:                                            ; preds = %.sink.split757, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i508, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i505, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit507
  %.pn431.pn = phi { ptr, i32 } [ %i.ou, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i505 ], [ %i.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510 ], [ %i.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i508 ], [ %i.ou, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit507 ], [ %.pn431.pn.ph, %.sink.split757 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  br label %bb.fj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513.thread: ; preds = %bb.df
  %i.pq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #23
  br label %.sink.split759

bb.dj:                                            ; preds = %bb.dh, %bb.dg
  %.0371 = phi i1 [ false, %bb.dh ], [ true, %bb.dg ] ; 2 uses
  %i.pr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ps = load ptr, ptr %61, align 8, !tbaa !16   ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  %i.pu = icmp eq ptr %i.ps, %i.pt
  br i1 %i.pu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511: ; preds = %bb.dj
  %i.pv = load i64, ptr %i.pt, align 8, !tbaa !17
  %i.pw = add i64 %i.pv, 1
  call void @_ZdlPvm(ptr noundef %i.ps, i64 noundef %i.pw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #23
  br i1 %.0371, label %.sink.split759, label %bb.dt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513: ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #23
  br i1 %.0371, label %.sink.split759, label %bb.dt

bb.dk:                                            ; preds = %bb.de
  %i.px = load float, ptr %i.l, align 4, !tbaa !28
  %i.py = fpext nsz float %i.px to double
  %i.pz = fadd nsz double %i.py, -9.000000e-01
  %i.qa = call nsz double @llvm.fabs.f64(double %i.pz)
  %i.qb = fcmp nsz olt double %i.qa, 1.000000e-03
  br i1 %i.qb, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.qc = call ptr @__cxa_allocate_exception(i64 72) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %64)
          to label %bb.dm unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516.thread

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.qc, ptr noundef nonnull align 8 %63, ptr noundef nonnull @.str.3, i32 noundef 168)
          to label %bb.dn unwind label %bb.do

bb.dn:                                            ; preds = %bb.dm
  invoke void @__cxa_throw(ptr nonnull %i.qc, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.do

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516.thread: ; preds = %bb.dl
  %i.qd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #23
  br label %.sink.split759

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.0369 = phi i1 [ false, %bb.dn ], [ true, %bb.dm ] ; 2 uses
  %i.qe = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.qf = load ptr, ptr %63, align 8, !tbaa !16   ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %i.qh = icmp eq ptr %i.qf, %i.qg
  br i1 %i.qh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514: ; preds = %bb.do
  %i.qi = load i64, ptr %i.qg, align 8, !tbaa !17
  %i.qj = add i64 %i.qi, 1
  call void @_ZdlPvm(ptr noundef %i.qf, i64 noundef %i.qj) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #23
  br i1 %.0369, label %.sink.split759, label %bb.dt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516: ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #23
  br i1 %.0369, label %.sink.split759, label %bb.dt

bb.dp:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #23
  store float %i.fv, ptr %65, align 4, !tbaa !62
  store float %i.go, ptr %i.eg, align 4, !tbaa !63
  store float %i.hi, ptr %i.eh, align 4, !tbaa !64
  store float %i.gf, ptr %i.ei, align 4, !tbaa !62
  store float %i.gy, ptr %i.ej, align 4, !tbaa !63
  store float %i.ol, ptr %i.ek, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #23
  %i.qk = fadd nsz double %i.md, 2.300000e+00
  %i.ql = fptrunc nsz double %i.qk to float
  store float %i.gj, ptr %66, align 4, !tbaa !62
  store float %i.ha, ptr %i.el, align 4, !tbaa !63
  store float %i.ql, ptr %i.em, align 4, !tbaa !64
  store float %90, ptr %i.en, align 4, !tbaa !62
  store float %i.hc, ptr %i.eo, align 4, !tbaa !63
  store float %i.op, ptr %i.ep, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #23
  store float 1.000000e+00, ptr %i.m, align 4, !tbaa !28
  %i.qm = call noundef signext i8 @_Z20axisAlignedCollisionRKN4core8aabbox3dIfEES3_NS_8vector3dIfEEPf(ptr noundef nonnull align 4 dereferenceable(24) %65, ptr noundef nonnull align 4 dereferenceable(24) %66, <2 x float> splat (float f0xBEAAAAAB), float f0xBEAAAAAB, ptr noundef nonnull %i.m)
  %i.qn = icmp eq i8 %i.qm, 2
  br i1 %i.qn, label %bb.dv, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.qo = call ptr @__cxa_allocate_exception(i64 72) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %68)
          to label %bb.dr unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519.thread

bb.dr:                                            ; preds = %bb.dq
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.qo, ptr noundef nonnull align 8 %67, ptr noundef nonnull @.str.3, i32 noundef 175)
          to label %bb.ds unwind label %bb.du

bb.ds:                                            ; preds = %bb.dr
  invoke void @__cxa_throw(ptr nonnull %i.qo, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.du

.sink.split759:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511
  %.sink760 = phi ptr [ %i.pp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513 ], [ %i.pp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511 ], [ %i.pp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513.thread ], [ %i.qc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514 ], [ %i.qc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516.thread ], [ %i.qc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516 ]
  %.pn436.pn.ph = phi { ptr, i32 } [ %i.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513 ], [ %i.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511 ], [ %i.pq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513.thread ], [ %i.qe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514 ], [ %i.qd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516.thread ], [ %i.qe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516 ]
  call void @__cxa_free_exception(ptr %.sink760) #23
  br label %bb.dt

bb.dt:                                            ; preds = %.sink.split759, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513
  %.pn436.pn = phi { ptr, i32 } [ %i.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511 ], [ %i.qe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516 ], [ %i.qe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514 ], [ %i.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513 ], [ %.pn436.pn.ph, %.sink.split759 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #23
  br label %bb.fj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519.thread: ; preds = %bb.dq
  %i.qp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #23
  br label %.sink.split761

bb.du:                                            ; preds = %bb.ds, %bb.dr
  %.0359 = phi i1 [ false, %bb.ds ], [ true, %bb.dr ] ; 2 uses
  %i.qq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.qr = load ptr, ptr %67, align 8, !tbaa !16   ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 2 uses
  %i.qt = icmp eq ptr %i.qr, %i.qs
  br i1 %i.qt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517: ; preds = %bb.du
  %i.qu = load i64, ptr %i.qs, align 8, !tbaa !17
  %i.qv = add i64 %i.qu, 1
  call void @_ZdlPvm(ptr noundef %i.qr, i64 noundef %i.qv) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #23
  br i1 %.0359, label %.sink.split761, label %bb.ee

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519: ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #23
  br i1 %.0359, label %.sink.split761, label %bb.ee

bb.dv:                                            ; preds = %bb.dp
  %i.qw = load float, ptr %i.m, align 4, !tbaa !28
  %i.qx = fpext nsz float %i.qw to double
  %i.qy = fadd nsz double %i.qx, -9.000000e-01
  %i.qz = call nsz double @llvm.fabs.f64(double %i.qy)
  %i.ra = fcmp nsz olt double %i.qz, 1.000000e-03
  br i1 %i.ra, label %bb.ea, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.rb = call ptr @__cxa_allocate_exception(i64 72) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %70)
          to label %bb.dx unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522.thread

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.rb, ptr noundef nonnull align 8 %69, ptr noundef nonnull @.str.3, i32 noundef 176)
          to label %bb.dy unwind label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  invoke void @__cxa_throw(ptr nonnull %i.rb, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.dz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522.thread: ; preds = %bb.dw
  %i.rc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #23
  br label %.sink.split761

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.0357 = phi i1 [ false, %bb.dy ], [ true, %bb.dx ] ; 2 uses
  %i.rd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.re = load ptr, ptr %69, align 8, !tbaa !16   ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  %i.rg = icmp eq ptr %i.re, %i.rf
  br i1 %i.rg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520: ; preds = %bb.dz
  %i.rh = load i64, ptr %i.rf, align 8, !tbaa !17
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %i.re, i64 noundef %i.ri) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #23
  br i1 %.0357, label %.sink.split761, label %bb.ee

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522: ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #23
  br i1 %.0357, label %.sink.split761, label %bb.ee

bb.ea:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #23
  store float %i.fv, ptr %71, align 4, !tbaa !62
  store float %i.go, ptr %i.eq, align 4, !tbaa !63
  store float %i.hi, ptr %i.er, align 4, !tbaa !64
  store float %i.gf, ptr %i.es, align 4, !tbaa !62
  store float %i.gy, ptr %i.et, align 4, !tbaa !63
  store float %i.ol, ptr %i.eu, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #23
  %i.rj = fadd nsz double %i.md, -4.200000e+00
  %i.rk = fptrunc nsz double %i.rj to float       ; 3 uses
  %i.rl = fadd nsz double %i.md, -2.290000e+00
  %i.rm = fptrunc nsz double %i.rl to float       ; 2 uses
  store float %i.gk, ptr %72, align 4, !tbaa !62
  store float %i.he, ptr %i.ev, align 4, !tbaa !63
  store float %i.rk, ptr %i.ew, align 4, !tbaa !64
  store float %98, ptr %i.ex, align 4, !tbaa !62
  store float %i.hg, ptr %i.ey, align 4, !tbaa !63
  store float %i.rm, ptr %i.ez, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #23
  store float 1.710000e+01, ptr %i.n, align 4, !tbaa !28
  %i.rn = call noundef signext i8 @_Z20axisAlignedCollisionRKN4core8aabbox3dIfEES3_NS_8vector3dIfEEPf(ptr noundef nonnull align 4 dereferenceable(24) %71, ptr noundef nonnull align 4 dereferenceable(24) %72, <2 x float> splat (float f0x3E124925), float f0x3E124925, ptr noundef nonnull %i.n)
  %i.ro = icmp eq i8 %i.rn, 0
  br i1 %i.ro, label %bb.eg, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.rp = call ptr @__cxa_allocate_exception(i64 72) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %74)
          to label %bb.ec unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525.thread

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.rp, ptr noundef nonnull align 8 %73, ptr noundef nonnull @.str.3, i32 noundef 183)
          to label %bb.ed unwind label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  invoke void @__cxa_throw(ptr nonnull %i.rp, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.ef

.sink.split761:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517
  %.sink762 = phi ptr [ %i.qo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519 ], [ %i.qo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517 ], [ %i.qo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519.thread ], [ %i.rb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520 ], [ %i.rb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522.thread ], [ %i.rb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522 ]
  %.pn441.pn.ph = phi { ptr, i32 } [ %i.qq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519 ], [ %i.qq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517 ], [ %i.qp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519.thread ], [ %i.rd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520 ], [ %i.rc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522.thread ], [ %i.rd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522 ]
  call void @__cxa_free_exception(ptr %.sink762) #23
  br label %bb.ee

bb.ee:                                            ; preds = %.sink.split761, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519
  %.pn441.pn = phi { ptr, i32 } [ %i.qq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517 ], [ %i.rd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522 ], [ %i.rd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520 ], [ %i.qq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519 ], [ %.pn441.pn.ph, %.sink.split761 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #23
  br label %bb.fj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525.thread: ; preds = %bb.eb
  %i.rq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #23
  br label %.sink.split763

bb.ef:                                            ; preds = %bb.ed, %bb.ec
  %.0347 = phi i1 [ false, %bb.ed ], [ true, %bb.ec ] ; 2 uses
  %i.rr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.rs = load ptr, ptr %73, align 8, !tbaa !16   ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 2 uses
  %i.ru = icmp eq ptr %i.rs, %i.rt
  br i1 %i.ru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i523

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i523: ; preds = %bb.ef
  %i.rv = load i64, ptr %i.rt, align 8, !tbaa !17
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rs, i64 noundef %i.rw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #23
  br i1 %.0347, label %.sink.split763, label %bb.ep

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525: ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #23
  br i1 %.0347, label %.sink.split763, label %bb.ep

bb.eg:                                            ; preds = %bb.ea
  %i.rx = load float, ptr %i.n, align 4, !tbaa !28
  %i.ry = fpext nsz float %i.rx to double
  %i.rz = fadd nsz double %i.ry, -1.610000e+01
  %i.sa = call nsz double @llvm.fabs.f64(double %i.rz)
  %i.sb = fcmp nsz olt double %i.sa, 1.000000e-03
  br i1 %i.sb, label %bb.el, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.sc = call ptr @__cxa_allocate_exception(i64 72) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %75, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %76)
          to label %bb.ei unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528.thread

bb.ei:                                            ; preds = %bb.eh
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.sc, ptr noundef nonnull align 8 %75, ptr noundef nonnull @.str.3, i32 noundef 184)
          to label %bb.ej unwind label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  invoke void @__cxa_throw(ptr nonnull %i.sc, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.ek

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528.thread: ; preds = %bb.eh
  %i.sd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #23
  br label %.sink.split763

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.0345 = phi i1 [ false, %bb.ej ], [ true, %bb.ei ] ; 2 uses
  %i.se = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.sf = load ptr, ptr %75, align 8, !tbaa !16   ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  %i.sh = icmp eq ptr %i.sf, %i.sg
  br i1 %i.sh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i526

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i526: ; preds = %bb.ek
  %i.si = load i64, ptr %i.sg, align 8, !tbaa !17
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sf, i64 noundef %i.sj) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #23
  br i1 %.0345, label %.sink.split763, label %bb.ep

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528: ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #23
  br i1 %.0345, label %.sink.split763, label %bb.ep

bb.el:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #23
  store float %i.fv, ptr %77, align 4, !tbaa !62
  store float %i.go, ptr %i.fa, align 4, !tbaa !63
  store float %i.hi, ptr %i.fb, align 4, !tbaa !64
  store float %i.gf, ptr %i.fc, align 4, !tbaa !62
  store float %i.gy, ptr %i.fd, align 4, !tbaa !63
  store float %i.ol, ptr %i.fe, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #23
  store float %i.gk, ptr %78, align 4, !tbaa !62
  store float %i.he, ptr %i.ff, align 4, !tbaa !63
  store float %i.rk, ptr %i.fg, align 4, !tbaa !64
  store float %i.gm, ptr %i.fh, align 4, !tbaa !62
  store float %104, ptr %i.fi, align 4, !tbaa !63
  store float %i.rm, ptr %i.fj, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #23
  store float 1.700000e+01, ptr %i.o, align 4, !tbaa !28
  %i.sk = call noundef signext i8 @_Z20axisAlignedCollisionRKN4core8aabbox3dIfEES3_NS_8vector3dIfEEPf(ptr noundef nonnull align 4 dereferenceable(24) %77, ptr noundef nonnull align 4 dereferenceable(24) %78, <2 x float> splat (float f0x3E124925), float f0x3E124925, ptr noundef nonnull %i.o)
  %i.sl = icmp eq i8 %i.sk, 1
  br i1 %i.sl, label %bb.er, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.sm = call ptr @__cxa_allocate_exception(i64 72) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %80)
          to label %bb.en unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531.thread

bb.en:                                            ; preds = %bb.em
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.sm, ptr noundef nonnull align 8 %79, ptr noundef nonnull @.str.3, i32 noundef 191)
          to label %bb.eo unwind label %bb.eq

bb.eo:                                            ; preds = %bb.en
  invoke void @__cxa_throw(ptr nonnull %i.sm, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.eq

.sink.split763:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i526, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i523
  %.sink764 = phi ptr [ %i.rp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525 ], [ %i.rp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i523 ], [ %i.rp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525.thread ], [ %i.sc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i526 ], [ %i.sc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528.thread ], [ %i.sc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528 ]
  %.pn446.pn.ph = phi { ptr, i32 } [ %i.rr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525 ], [ %i.rr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i523 ], [ %i.rq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525.thread ], [ %i.se, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i526 ], [ %i.sd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528.thread ], [ %i.se, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528 ]
  call void @__cxa_free_exception(ptr %.sink764) #23
  br label %bb.ep

bb.ep:                                            ; preds = %.sink.split763, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i526, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i523, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525
  %.pn446.pn = phi { ptr, i32 } [ %i.rr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i523 ], [ %i.se, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528 ], [ %i.se, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i526 ], [ %i.rr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525 ], [ %.pn446.pn.ph, %.sink.split763 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #23
  br label %bb.fj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531.thread: ; preds = %bb.em
  %i.sn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #23
  br label %.sink.split765

bb.eq:                                            ; preds = %bb.eo, %bb.en
  %.0296 = phi i1 [ false, %bb.eo ], [ true, %bb.en ] ; 2 uses
  %i.so = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.sp = load ptr, ptr %79, align 8, !tbaa !16   ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 2 uses
  %i.sr = icmp eq ptr %i.sp, %i.sq
  br i1 %i.sr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529: ; preds = %bb.eq
  %i.ss = load i64, ptr %i.sq, align 8, !tbaa !17
  %i.st = add i64 %i.ss, 1
  call void @_ZdlPvm(ptr noundef %i.sp, i64 noundef %i.st) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #23
  br i1 %.0296, label %.sink.split765, label %bb.fa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531: ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #23
  br i1 %.0296, label %.sink.split765, label %bb.fa

bb.er:                                            ; preds = %bb.el
  %i.su = load float, ptr %i.o, align 4, !tbaa !28
  %i.sv = fpext nsz float %i.su to double
  %i.sw = fadd nsz double %i.sv, -1.610000e+01
  %i.sx = call nsz double @llvm.fabs.f64(double %i.sw)
  %i.sy = fcmp nsz olt double %i.sx, 1.000000e-03
  br i1 %i.sy, label %bb.ew, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.sz = call ptr @__cxa_allocate_exception(i64 72) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %81, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %82)
          to label %bb.et unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534.thread

bb.et:                                            ; preds = %bb.es
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.sz, ptr noundef nonnull align 8 %81, ptr noundef nonnull @.str.3, i32 noundef 192)
          to label %bb.eu unwind label %bb.ev

bb.eu:                                            ; preds = %bb.et
  invoke void @__cxa_throw(ptr nonnull %i.sz, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.ev

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534.thread: ; preds = %bb.es
  %i.ta = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #23
  br label %.sink.split765

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.0294 = phi i1 [ false, %bb.eu ], [ true, %bb.et ] ; 2 uses
  %i.tb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.tc = load ptr, ptr %81, align 8, !tbaa !16   ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 2 uses
  %i.te = icmp eq ptr %i.tc, %i.td
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532: ; preds = %bb.ev
  %i.tf = load i64, ptr %i.td, align 8, !tbaa !17
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.tc, i64 noundef %i.tg) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #23
  br i1 %.0294, label %.sink.split765, label %bb.fa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534: ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #23
  br i1 %.0294, label %.sink.split765, label %bb.fa

bb.ew:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #23
  store float %i.fv, ptr %83, align 4, !tbaa !62
  store float %i.go, ptr %i.fk, align 4, !tbaa !63
  store float %i.hi, ptr %i.fl, align 4, !tbaa !64
  store float %i.gf, ptr %i.fm, align 4, !tbaa !62
  store float %i.gy, ptr %i.fn, align 4, !tbaa !63
  store float %i.ol, ptr %i.fo, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #23
  %i.th = fadd nsz double %i.md, -2.300000e+00
  %i.ti = fptrunc nsz double %i.th to float
  store float %i.gk, ptr %84, align 4, !tbaa !62
  store float %i.he, ptr %i.fp, align 4, !tbaa !63
  store float %i.rk, ptr %i.fq, align 4, !tbaa !64
  store float %i.gm, ptr %i.fr, align 4, !tbaa !62
  store float %i.hg, ptr %i.fs, align 4, !tbaa !63
  store float %i.ti, ptr %i.ft, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #23
  store float 1.700000e+01, ptr %i.p, align 4, !tbaa !28
  %i.tj = call noundef signext i8 @_Z20axisAlignedCollisionRKN4core8aabbox3dIfEES3_NS_8vector3dIfEEPf(ptr noundef nonnull align 4 dereferenceable(24) %83, ptr noundef nonnull align 4 dereferenceable(24) %84, <2 x float> splat (float f0x3E124925), float f0x3E124925, ptr noundef nonnull %i.p)
  %i.tk = icmp eq i8 %i.tj, 2
  br i1 %i.tk, label %bb.fc, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.tl = call ptr @__cxa_allocate_exception(i64 72) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %85, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %86)
          to label %bb.ey unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537.thread

bb.ey:                                            ; preds = %bb.ex
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.tl, ptr noundef nonnull align 8 %85, ptr noundef nonnull @.str.3, i32 noundef 199)
          to label %bb.ez unwind label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  invoke void @__cxa_throw(ptr nonnull %i.tl, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.fb

.sink.split765:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529
  %.sink766 = phi ptr [ %i.sm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531 ], [ %i.sm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529 ], [ %i.sm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531.thread ], [ %i.sz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532 ], [ %i.sz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534.thread ], [ %i.sz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534 ]
  %.pn451.pn.ph = phi { ptr, i32 } [ %i.so, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531 ], [ %i.so, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529 ], [ %i.sn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531.thread ], [ %i.tb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532 ], [ %i.ta, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534.thread ], [ %i.tb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534 ]
  call void @__cxa_free_exception(ptr %.sink766) #23
  br label %bb.fa

bb.fa:                                            ; preds = %.sink.split765, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531
  %.pn451.pn = phi { ptr, i32 } [ %i.so, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529 ], [ %i.tb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534 ], [ %i.tb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532 ], [ %i.so, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531 ], [ %.pn451.pn.ph, %.sink.split765 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #23
  br label %bb.fj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537.thread: ; preds = %bb.ex
  %i.tm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #23
  br label %.sink.split767

bb.fb:                                            ; preds = %bb.ez, %bb.ey
  %.0289 = phi i1 [ false, %bb.ez ], [ true, %bb.ey ] ; 2 uses
  %i.tn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.to = load ptr, ptr %85, align 8, !tbaa !16   ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %85, i64 16 ; 2 uses
  %i.tq = icmp eq ptr %i.to, %i.tp
  br i1 %i.tq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535: ; preds = %bb.fb
  %i.tr = load i64, ptr %i.tp, align 8, !tbaa !17
  %i.ts = add i64 %i.tr, 1
  call void @_ZdlPvm(ptr noundef %i.to, i64 noundef %i.ts) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #23
  br i1 %.0289, label %.sink.split767, label %bb.fi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537: ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #23
  br i1 %.0289, label %.sink.split767, label %bb.fi

bb.fc:                                            ; preds = %bb.ew
  %i.tt = load float, ptr %i.p, align 4, !tbaa !28
  %i.tu = fpext nsz float %i.tt to double
  %i.tv = fadd nsz double %i.tu, -1.610000e+01
  %i.tw = call nsz double @llvm.fabs.f64(double %i.tv)
  %i.tx = fcmp nsz olt double %i.tw, 1.000000e-03
  br i1 %i.tx, label %bb.fh, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ty = call ptr @__cxa_allocate_exception(i64 72) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %87, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %88)
          to label %bb.fe unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540.thread

bb.fe:                                            ; preds = %bb.fd
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.ty, ptr noundef nonnull align 8 %87, ptr noundef nonnull @.str.3, i32 noundef 200)
          to label %bb.ff unwind label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  invoke void @__cxa_throw(ptr nonnull %i.ty, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.fg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540.thread: ; preds = %bb.fd
  %i.tz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #23
  br label %.sink.split767

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.0 = phi i1 [ false, %bb.ff ], [ true, %bb.fe ] ; 2 uses
  %i.ua = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ub = load ptr, ptr %87, align 8, !tbaa !16   ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %87, i64 16 ; 2 uses
  %i.ud = icmp eq ptr %i.ub, %i.uc
  br i1 %i.ud, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538: ; preds = %bb.fg
  %i.ue = load i64, ptr %i.uc, align 8, !tbaa !17
  %i.uf = add i64 %i.ue, 1
  call void @_ZdlPvm(ptr noundef %i.ub, i64 noundef %i.uf) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #23
  br i1 %.0, label %.sink.split767, label %bb.fi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540: ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #23
  br i1 %.0, label %.sink.split767, label %bb.fi

bb.fh:                                            ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #23
  %exitcond.not = icmp eq i32 %i.hj, 4
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !61

.sink.split767:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535
  %.sink768 = phi ptr [ %i.tl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537 ], [ %i.tl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535 ], [ %i.tl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537.thread ], [ %i.ty, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538 ], [ %i.ty, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540.thread ], [ %i.ty, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540 ]
  %.pn456.pn.ph = phi { ptr, i32 } [ %i.tn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537 ], [ %i.tn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535 ], [ %i.tm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537.thread ], [ %i.ua, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538 ], [ %i.tz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540.thread ], [ %i.ua, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540 ]
  call void @__cxa_free_exception(ptr %.sink768) #23
  br label %bb.fi

bb.fi:                                            ; preds = %.sink.split767, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537
  %.pn456.pn = phi { ptr, i32 } [ %i.tn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535 ], [ %i.ua, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540 ], [ %i.ua, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538 ], [ %i.tn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537 ], [ %.pn456.pn.ph, %.sink.split767 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #23
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fa, %bb.ep, %bb.ee, %bb.dt, %bb.di, %bb.cx, %bb.cm, %bb.bx, %bb.bq, %bb.bn, %bb.bc, %bb.ar, %bb.ac, %bb.v, %bb.s
  %.pn456.pn.pn = phi { ptr, i32 } [ %.pn456.pn, %bb.fi ], [ %.pn451.pn, %bb.fa ], [ %.pn446.pn, %bb.ep ], [ %.pn441.pn, %bb.ee ], [ %.pn436.pn, %bb.dt ], [ %.pn431.pn, %bb.di ], [ %.pn426.pn, %bb.cx ], [ %.pn421.pn, %bb.cm ], [ %.pn417625, %bb.bx ], [ %.pn415621, %bb.bq ], [ %.pn412.pn, %bb.bn ], [ %.pn407.pn, %bb.bc ], [ %.pn402.pn, %bb.ar ], [ %.pn398599, %bb.ac ], [ %.pn396595, %bb.v ], [ %.pn393.pn, %bb.s ]
  resume { ptr, i32 } %.pn456.pn.pn

bb.fk:                                            ; preds = %bb.ff, %bb.ez, %bb.eu, %bb.eo, %bb.ej, %bb.ed, %bb.dy, %bb.ds, %bb.dn, %bb.dh, %bb.dc, %bb.cw, %bb.cr, %bb.cl, %bb.cg, %bb.cb, %bb.bu, %bb.bm, %bb.bh, %bb.bb, %bb.aw, %bb.aq, %bb.al, %bb.ag, %bb.z, %bb.r, %bb.m, %bb.h
  unreachable
}

declare noundef signext i8 @_Z20axisAlignedCollisionRKN4core8aabbox3dIfEES3_NS_8vector3dIfEEPf(ptr noundef nonnull align 4 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(24), <2 x float>, float, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !29
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.31) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.d, ptr %i.a, align 8, !tbaa !30
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !16
  %i.g = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.g, ptr %i.b, align 8, !tbaa !17
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.i, ptr %i.h, align 1, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !31
  %i.l = load ptr, ptr %0, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef align 8 %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
