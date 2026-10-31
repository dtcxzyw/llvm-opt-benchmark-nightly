Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_collision?download=true
inline.NumInlined: 896
inline.NumDeleted: 292
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN13TestCollision24testAxisAlignedCollisionEv:bb.a
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
  %i.gj = fadd nsz double %i.gc, 4.200000e+00
  %i.gk = fptrunc nsz double %i.gj to float       ; 3 uses
  %i.gl = fadd nsz double %i.gc, 2.290000e+00
  %i.gm = fptrunc nsz double %i.gl to float       ; 2 uses
  %i.gn = fadd nsz double %i.gc, -4.200000e+00
  %i.go = fptrunc nsz double %i.gn to float       ; 3 uses
  %i.gp = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gr = fadd nsz <2 x double> %i.gq, <double 2.300000e+00, double -2.300000e+00>
  %i.gs = fptrunc <2 x double> %i.gr to <2 x float> ; 2 uses
  %i.gt = fadd nsz double %i.gc, -2.290000e+00
  %i.gu = fptrunc nsz double %i.gt to float       ; 2 uses
  %i.gv = extractelement <2 x float> %i.gs, i64 0
  %i.gw = extractelement <2 x float> %i.gs, i64 1
  br label %.preheader

bb.b:                                             ; preds = %bb.c
  ret void

.preheader:                                       ; preds = %.preheader675, %bb.d
  %indvars.iv680 = phi i32 [ -3, %.preheader675 ], [ %i.gz, %bb.d ] ; 3 uses
  %i.gx = trunc nsw i32 %indvars.iv680 to i16     ; 2 uses
  %i.gy = sitofp i16 %i.gx to float               ; 26 uses
  %i.gz = add nsw i32 %indvars.iv680, 1           ; 3 uses
  %i.ha = sitofp nsz i32 %i.gz to float           ; 15 uses
  %i.hb = sitofp i16 %i.gx to double              ; 5 uses
  %i.hc = fadd nsz float %i.gy, 1.500000e+00
  %i.hd = fadd nsz float %i.gy, 2.500000e+00
  %i.he = fadd nsz float %i.gy, -1.500000e+00     ; 4 uses
  %i.hf = fadd nsz float %i.gy, 5.000000e-01      ; 2 uses
  %i.hg = fadd nsz float %i.gy, -5.000000e-01     ; 2 uses
  %i.hh = add nsw i32 %indvars.iv680, 2
  %i.hi = sitofp nsz i32 %i.hh to float           ; 6 uses
  %i.hj = fadd nsz double %i.hb, 2.290000e+00
  %i.hk = fptrunc nsz double %i.hj to float       ; 2 uses
  %i.hl = fadd nsz double %i.hb, 4.200000e+00
  %i.hm = fptrunc nsz double %i.hl to float       ; 3 uses
  %i.hn = fadd nsz double %i.hb, -4.200000e+00
  %i.ho = fptrunc nsz double %i.hn to float       ; 3 uses
  %i.hp = fadd nsz double %i.hb, -2.290000e+00
  %i.hq = fptrunc nsz double %i.hp to float       ; 2 uses
  %i.hr = insertelement <2 x double> poison, double %i.hb, i64 0
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = fadd nsz <2 x double> %i.hs, <double 2.300000e+00, double -2.300000e+00>
  %i.hu = fptrunc <2 x double> %i.ht to <2 x float> ; 2 uses
  %i.hv = extractelement <2 x float> %i.hu, i64 0
  %i.hw = extractelement <2 x float> %i.hu, i64 1
  br label %bb.e

bb.c:                                             ; preds = %bb.d
  %exitcond687.not = icmp eq i32 %i.fw, 4
  br i1 %exitcond687.not, label %bb.b, label %.preheader675, !llvm.loop !59

bb.d:                                             ; preds = %bb.fh
  %exitcond683.not = icmp eq i32 %i.gz, 4
  br i1 %exitcond683.not, label %bb.c, label %.preheader, !llvm.loop !60

bb.e:                                             ; preds = %.preheader, %bb.fh
  %indvars.iv = phi i32 [ -3, %.preheader ], [ %i.hz, %bb.fh ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.hx = trunc nsw i32 %indvars.iv to i16        ; 2 uses
  %i.hy = sitofp i16 %i.hx to float               ; 27 uses
  %i.hz = add nsw i32 %indvars.iv, 1              ; 3 uses
  %i.ia = sitofp nsz i32 %i.hz to float           ; 19 uses
  store float %i.fv, ptr %1, align 4, !tbaa !62
  store float %i.gy, ptr %i.q, align 4, !tbaa !63
  store float %i.hy, ptr %i.r, align 4, !tbaa !64
  store float %i.fx, ptr %i.s, align 4, !tbaa !62
  store float %i.ha, ptr %i.t, align 4, !tbaa !63
  store float %i.ia, ptr %i.u, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store float %i.fz, ptr %2, align 4, !tbaa !62
  store float %i.gy, ptr %i.v, align 4, !tbaa !63
  store float %i.hy, ptr %i.w, align 4, !tbaa !64
  store float %i.gb, ptr %i.x, align 4, !tbaa !62
  store float %i.ha, ptr %i.y, align 4, !tbaa !63
  store float %i.ia, ptr %i.z, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !28
  %i.ib = call noundef signext i8 @_Z20axisAlignedCollisionRKN4core8aabbox3dIfEES3_NS_8vector3dIfEEPf(ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, <2 x float> <float 1.000000e+00, float 0.000000e+00>, float 0.000000e+00, ptr noundef nonnull %i.a)
  %i.ic = icmp eq i8 %i.ib, 0
  br i1 %i.ic, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.id = call ptr @__cxa_allocate_exception(i64 72) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.id, ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.3, i32 noundef 77)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.id, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.sink.split

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0341 = phi i1 [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ig = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !17
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ik) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.0341, label %.sink.split, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.0341, label %.sink.split, label %bb.s

bb.j:                                             ; preds = %bb.e
  %i.il = load float, ptr %i.a, align 4, !tbaa !28
  %i.im = fpext nsz float %i.il to double
  %i.in = fadd nsz double %i.im, -1.000000e+00
  %i.io = call nsz double @llvm.fabs.f64(double %i.in)
  %i.ip = fcmp nsz olt double %i.io, 1.000000e-03
  br i1 %i.ip, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.iq = call ptr @__cxa_allocate_exception(i64 72) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462.thread

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.iq, ptr noundef nonnull align 8 %5, ptr noundef nonnull @.str.3, i32 noundef 78)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.iq, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462.thread: ; preds = %bb.k
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.sink.split

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0343 = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.is = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.it = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460: ; preds = %bb.n
  %i.iw = load i64, ptr %i.iu, align 8, !tbaa !17
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.ix) #22
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
  store float %i.gy, ptr %i.aa, align 4, !tbaa !63
  store float %i.hy, ptr %i.ab, align 4, !tbaa !64
  store float %i.fx, ptr %i.ac, align 4, !tbaa !62
  store float %i.ha, ptr %i.ad, align 4, !tbaa !63
  store float %i.ia, ptr %i.ae, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store float %i.fz, ptr %8, align 4, !tbaa !62
  store float %i.gy, ptr %i.af, align 4, !tbaa !63
  store float %i.hy, ptr %i.ag, align 4, !tbaa !64
  store float %i.gb, ptr %i.ah, align 4, !tbaa !62
  store float %i.ha, ptr %i.ai, align 4, !tbaa !63
  store float %i.ia, ptr %i.aj, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !28
  %i.iy = call noundef signext i8 @_Z20axisAlignedCollisionRKN4core8aabbox3dIfEES3_NS_8vector3dIfEEPf(ptr noundef nonnull align 4 dereferenceable(24) %7, ptr noundef nonnull align 4 dereferenceable(24) %8, <2 x float> <float -1.000000e+00, float 0.000000e+00>, float 0.000000e+00, ptr noundef nonnull %i.b)
  %i.iz = icmp eq i8 %i.iy, -1
  br i1 %i.iz, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ja = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.q unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465.thread

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.ja, ptr noundef nonnull align 8 %9, ptr noundef nonnull @.str.3, i32 noundef 85)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr nonnull %i.ja, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.fk unwind label %bb.t

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460 ], [ %i.iq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462.thread ], [ %i.iq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462 ]
  %.pn393.pn.ph = phi { ptr, i32 } [ %i.if, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.is, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460 ], [ %i.ir, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462.thread ], [ %i.is, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462 ]
  call void @__cxa_free_exception(ptr %.sink) #23
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn393.pn = phi { ptr, i32 } [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.is, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462 ], [ %i.is, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460 ], [ %i.if, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn393.pn.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.fj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465.thread: ; preds = %bb.p
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q
  %.0349 = phi i1 [ false, %bb.r ], [ true, %bb.q ] ; 2 uses
  %i.jc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jd = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463: ; preds = %bb.t
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !17
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jh) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %.0349, label %bb.u, label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465: ; preds = %bb.t
end_hunk_0
