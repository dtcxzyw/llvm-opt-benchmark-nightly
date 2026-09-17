Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/shapes_test?download=true
inline.NumInlined: 2888
inline.NumDeleted: 834
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN24Triangle_SolidAngle_Test8TestBodyEv:bb.a
  %i.k = zext i32 %i.j to i64                     ; 5 uses
  %i.l = uitofp <2 x i32> %i.i to <2 x float>
  %i.m = extractelement <2 x i32> %i.i, i64 1
  %i.n = zext i32 %i.m to i64                     ; 5 uses
  %i.o = fdiv nnan <2 x float> splat (float 1.000000e+00), %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %.sroa.0128.4..sroa_idx257 = getelementptr inbounds nuw i8, ptr %.sroa.0128, i64 4
  %i.w = extractelement <2 x float> %i.o, i64 0
  %i.x = extractelement <2 x float> %i.o, i64 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread148
  %indvars.iv208 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next209, %.thread148 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store float 1.000000e+01, ptr %i.a, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.y = add nuw nsw i64 %indvars.iv208, 100      ; 2 uses
  %i.z = mul i64 %i.y, 9202493588570546565        ; 2 uses
  %i.aa = lshr i64 %i.z, 27
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -9089707755183418291     ; 2 uses
  %i.ad = lshr i64 %i.ac, 33
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = shl nuw nsw i64 %i.y, 1
  %i.ag = or disjoint i64 %i.af, 1                ; 3 uses
  store i64 %i.ag, ptr %i.e, align 8, !tbaa !72
  %i.ah = add i64 %i.ae, %i.ag
  %i.ai = mul i64 %i.ah, 6364136223846793005
  %i.aj = add i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %2, align 8, !tbaa !73
  store ptr %2, ptr %3, align 8, !tbaa !75
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !90
  store ptr @"_ZNSt17_Function_handlerIFfvEZN24Triangle_SolidAngle_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.g, align 8, !tbaa !15
  store ptr @"_ZNSt17_Function_handlerIFfvEZN24Triangle_SolidAngle_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation", ptr %i.f, align 8, !tbaa !13
  %i.ak = invoke noundef ptr @_Z17GetRandomTriangleSt8functionIFfvEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.f       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #32
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %.thread148, label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  %.not.i59 = icmp eq ptr %i.aq, null
  br i1 %.not.i59, label %_ZNSt14_Function_baseD2Ev.exit60, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit60 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #32
  unreachable

bb.i:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0128)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %i.au = load i64, ptr %2, align 8, !tbaa !73    ; 2 uses
  %i.av = mul i64 %i.au, 6364136223846793005
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !72  ; 5 uses
  %i.ax = add i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = mul i64 %i.ax, 6364136223846793005
  %i.az = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %i.ba = insertelement <2 x i64> %i.az, i64 %i.ax, i64 1 ; 3 uses
  %i.bb = lshr <2 x i64> %i.ba, splat (i64 45)
  %i.bc = lshr <2 x i64> %i.ba, splat (i64 27)
  %i.bd = xor <2 x i64> %i.bb, %i.bc
  %i.be = trunc <2 x i64> %i.bd to <2 x i32>      ; 2 uses
  %i.bf = lshr <2 x i64> %i.ba, splat (i64 59)
  %i.bg = trunc nuw nsw <2 x i64> %i.bf to <2 x i32>
  %i.bh = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.be, <2 x i32> %i.be, <2 x i32> %i.bg)
  %i.bi = uitofp <2 x i32> %i.bh to <2 x float>
  %i.bj = fmul nnan <2 x float> %i.bi, splat (float f0x2F800000) ; 2 uses
  %i.bk = fcmp olt <2 x float> %i.bj, splat (float f0x3F7FFFFF)
  %i.bl = select <2 x i1> %i.bk, <2 x float> %i.bj, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.bm = fsub nnan <2 x float> splat (float 1.000000e+00), %i.bl
  %i.bn = fmul nnan <2 x float> %i.bm, splat (float 1.000000e+01)
  %i.bo = fmul nnan <2 x float> %i.bl, splat (float 1.000000e+01)
  %i.bp = fsub <2 x float> %i.bo, %i.bn
  store <2 x float> %i.bp, ptr %.sroa.0128, align 8, !tbaa !17
  %i.bq = add i64 %i.ay, %i.aw                    ; 2 uses
  %i.br = mul i64 %i.bq, 6364136223846793005
  %i.bs = add i64 %i.br, %i.aw                    ; 2 uses
  %i.bt = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %i.bu = insertelement <2 x i64> %i.bt, i64 %i.bq, i64 1 ; 3 uses
  %i.bv = lshr <2 x i64> %i.bu, splat (i64 45)
  %i.bw = lshr <2 x i64> %i.bu, splat (i64 27)
  %i.bx = xor <2 x i64> %i.bv, %i.bw
  %i.by = trunc <2 x i64> %i.bx to <2 x i32>      ; 2 uses
  %i.bz = lshr <2 x i64> %i.bu, splat (i64 59)
  %i.ca = trunc nuw nsw <2 x i64> %i.bz to <2 x i32>
  %i.cb = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.by, <2 x i32> %i.by, <2 x i32> %i.ca)
  %i.cc = uitofp <2 x i32> %i.cb to <2 x float>
  %i.cd = fmul nnan <2 x float> %i.cc, splat (float f0x2F800000) ; 3 uses
  %i.ce = fcmp olt <2 x float> %i.cd, splat (float f0x3F7FFFFF) ; 2 uses
  %i.cf = extractelement <2 x i1> %i.ce, i64 1
  %i.cg = extractelement <2 x float> %i.cd, i64 1
  %.sroa.speculated.i.i62 = select i1 %i.cf, float %i.cg, float f0x3F7FFFFF ; 2 uses
  %i.ch = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i62
  %i.ci = fmul nnan float %i.ch, 1.000000e+01
  %i.cj = fmul nnan float %.sroa.speculated.i.i62, 1.000000e+01
  %i.ck = fsub float %i.cj, %i.ci
  store float %i.ck, ptr %.sroa.12, align 4, !tbaa !106
  %i.cl = mul i64 %i.bs, 6364136223846793005
  %i.cm = add i64 %i.cl, %i.aw                    ; 4 uses
  %i.cn = extractelement <2 x i1> %i.ce, i64 0
  %i.co = extractelement <2 x float> %i.cd, i64 0
  %i.cp = fcmp ule float %i.co, 5.000000e-01
  %.not252 = select i1 %i.cn, i1 %i.cp, i1 false
  %i.cq = select i1 %.not252, float 1.300000e+01, float -1.300000e+01
  %i.cr = mul i64 %i.cm, 6364136223846793005
  %i.cs = add i64 %i.cr, %i.aw
  store i64 %i.cs, ptr %2, align 8, !tbaa !73
  %i.ct = lshr i64 %i.cm, 45
  %i.cu = lshr i64 %i.cm, 27
  %i.cv = xor i64 %i.ct, %i.cu
  %i.cw = trunc i64 %i.cv to i32                  ; 2 uses
  %i.cx = lshr i64 %i.cm, 59
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = call noundef i32 @llvm.fshr.i32(i32 %i.cw, i32 %i.cw, i32 %i.cy)
  %i.da = urem i32 %i.cz, 3
  switch i32 %i.da, label %bb.k [
    i32 0, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit

bb.k:                                             ; preds = %bb.i
  br label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit:           ; preds = %bb.i, %bb.j, %bb.k
  %.0.i = phi ptr [ %.sroa.12, %bb.k ], [ %.sroa.0128.4..sroa_idx, %bb.j ], [ %.sroa.0128, %bb.i ]
  store float %i.cq, ptr %.0.i, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %.sroa.0128.0..sroa.0128.0..sroa.0128.0..sroa.0128.0. = load float, ptr %.sroa.0128, align 8, !tbaa !229
  %.sroa.07.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.0128.0..sroa.0128.0..sroa.0128.0..sroa.0128.0., i64 0
  %.sroa.07.4.vec.insert.i = shufflevector <2 x float> %.sroa.07.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.0128.4..sroa.0128.4..sroa.0128.4..sroa.0128.4. = load float, ptr %.sroa.0128.4..sroa_idx257, align 4, !tbaa !230
  %.sroa.05.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.0128.4..sroa.0128.4..sroa.0128.4..sroa.0128.4., i64 0
  %.sroa.05.4.vec.insert.i = shufflevector <2 x float> %.sroa.05.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.12.0..sroa.12.0..sroa.12.0..sroa.12.8. = load float, ptr %.sroa.12, align 4, !tbaa !106 ; 3 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.12.0..sroa.12.0..sroa.12.0..sroa.12.8., i64 0
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i, ptr %4, align 8
  store <2 x float> %.sroa.05.4.vec.insert.i, ptr %.sroa.4143.0..sroa_idx, align 8
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %.sroa.5144.0..sroa_idx, align 8
  %i.db = udiv i64 -1, %i.k
  %i.dc = sub nuw i64 %i.db, %i.k
  %i.dd = udiv i64 -1, %i.n
  %i.de = sub nuw i64 %i.dd, %i.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit, %bb.bb
  %indvars.iv = phi i64 [ 0, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit ], [ %indvars.iv.next, %bb.bb ] ; 4 uses
  %.0199 = phi double [ 0.000000e+00, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit ], [ %i.gp, %bb.bb ]
  %.not.i63 = icmp eq i64 %indvars.iv, 0
  br i1 %.not.i63, label %_ZN4pbrt14RadicalInverseEim.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.023.i = phi i64 [ %i.df, %.lr.ph.i ], [ %indvars.iv, %bb.l ] ; 3 uses
  %.01922.i = phi i64 [ %i.dg, %.lr.ph.i ], [ 0, %bb.l ]
  %.02021.i = phi float [ %i.dh, %.lr.ph.i ], [ 1.000000e+00, %bb.l ]
  %i.df = udiv i64 %.023.i, %i.k                  ; 2 uses
  %reass.add.i = sub i64 %.01922.i, %i.df
  %reass.mul.i = mul i64 %reass.add.i, %i.k
  %i.dg = add i64 %reass.mul.i, %.023.i           ; 3 uses
  %i.dh = fmul float %i.w, %.02021.i              ; 2 uses
  %i.di = icmp samesign uge i64 %.023.i, %i.k
  %i.dj = icmp ult i64 %i.dg, %i.dc
  %i.dk = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %i.dk, label %.lr.ph.i, label %.lr.ph.i66.preheader, !llvm.loop !226

.lr.ph.i66.preheader:                             ; preds = %.lr.ph.i
  %16 = uitofp i64 %i.dg to float
  %17 = fmul float %i.dh, %16                     ; 2 uses
  %18 = fcmp ogt float %17, f0x3F7FFFFF
  %.sroa.speculated.i64 = select i1 %18, float f0x3F7FFFFF, float %17
  br label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %.lr.ph.i66.preheader, %.lr.ph.i66
  %.023.i67 = phi i64 [ %i.dl, %.lr.ph.i66 ], [ %indvars.iv, %.lr.ph.i66.preheader ] ; 3 uses
  %.01922.i68 = phi i64 [ %i.dm, %.lr.ph.i66 ], [ 0, %.lr.ph.i66.preheader ]
  %.02021.i69 = phi float [ %i.dn, %.lr.ph.i66 ], [ 1.000000e+00, %.lr.ph.i66.preheader ]
  %i.dl = udiv i64 %.023.i67, %i.n                ; 2 uses
  %reass.add.i70 = sub i64 %.01922.i68, %i.dl
  %reass.mul.i71 = mul i64 %reass.add.i70, %i.n
  %i.dm = add i64 %reass.mul.i71, %.023.i67       ; 3 uses
  %i.dn = fmul float %i.x, %.02021.i69            ; 2 uses
  %i.do = icmp samesign uge i64 %.023.i67, %i.n
  %i.dp = icmp ult i64 %i.dm, %i.de
  %i.dq = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %i.dq, label %.lr.ph.i66, label %._crit_edge.loopexit.i72, !llvm.loop !226

._crit_edge.loopexit.i72:                         ; preds = %.lr.ph.i66
  %i.dr = uitofp i64 %i.dm to float
  %i.ds = fmul float %i.dn, %i.dr
  br label %_ZN4pbrt14RadicalInverseEim.exit.thread

_ZN4pbrt14RadicalInverseEim.exit.thread:          ; preds = %bb.l, %._crit_edge.loopexit.i72
  %.sroa.speculated.i64242 = phi float [ %.sroa.speculated.i64, %._crit_edge.loopexit.i72 ], [ 0.000000e+00, %bb.l ]
  %i.dt = phi float [ %i.ds, %._crit_edge.loopexit.i72 ], [ 0.000000e+00, %bb.l ] ; 2 uses
  %i.du = fcmp ogt float %i.dt, f0x3F7FFFFF
  %.sroa.speculated.i73 = select i1 %i.du, float f0x3F7FFFFF, float %i.dt
  %.sroa.0117.0.vec.insert = insertelement <2 x float> poison, float %.sroa.speculated.i64242, i64 0
  %.sroa.0117.4.vec.insert = insertelement <2 x float> %.sroa.0117.0.vec.insert, float %.sroa.speculated.i73, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZNK4pbrt8Triangle6SampleERKNS_18ShapeSampleContextENS_6Point2IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 8 %5, ptr noundef nonnull align 4 dereferenceable(8) %i.ak, ptr noundef nonnull align 4 dereferenceable(52) %4, <2 x float> %.sroa.0117.4.vec.insert)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.dv = load i8, ptr %i.p, align 8, !tbaa !77, !range !53, !noundef !54 ; 2 uses
  store i8 %i.dv, ptr %6, align 8, !tbaa !52
  store ptr null, ptr %i.q, align 8, !tbaa !55
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %_ZN4pstd8optionalIN4pbrt11ShapeSampleEEptEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4pbrt14RadicalInverseEim.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.n unwind label %bb.z

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11)
          to label %bb.o unwind label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.dx = load ptr, ptr %9, align 8, !tbaa !59
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 232, ptr noundef %i.dx)
          to label %bb.p unwind label %bb.ab

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.q unwind label %bb.ac

bb.q:                                             ; preds = %bb.p
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  %i.dy = load ptr, ptr %9, align 8, !tbaa !59    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !65
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.ed = load ptr, ptr %7, align 8, !tbaa !62
  %.not.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ee = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.u

.noexc.i.i:                                       ; preds = %bb.r
  br i1 %i.ee, label %bb.s, label %_ZN7testing7MessageD2Ev.exit

bb.s:                                             ; preds = %.noexc.i.i
  %i.ef = load ptr, ptr %7, align 8, !tbaa !62    ; 3 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %_ZN7testing7MessageD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(128) %i.ef) #29, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.u:                                             ; preds = %bb.r
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #32
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc.i.i, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.em = load ptr, ptr %i.q, align 8, !tbaa !55
  %.not.i.i.i75 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i75, label %.thread154, label %bb.v

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.en = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i76 unwind label %bb.y

.noexc.i.i76:                                     ; preds = %bb.v
  br i1 %i.en, label %bb.w, label %.thread154

bb.w:                                             ; preds = %.noexc.i.i76
  %i.eo = load ptr, ptr %i.q, align 8, !tbaa !55  ; 4 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %.thread154, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !59 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.x
  %i.et = load i64, ptr %i.er, align 8, !tbaa !65
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef 32) #31
  br label %.thread154

bb.y:                                             ; preds = %bb.v
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #32
  unreachable

bb.z:                                             ; preds = %bb.m
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.aa:                                            ; preds = %bb.n
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

bb.ab:                                            ; preds = %bb.o
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.p
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.fa, %bb.ac ], [ %i.ez, %bb.ab ] ; 2 uses
  %i.fb = load ptr, ptr %9, align 8, !tbaa !59    ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.ad
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !65
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %i.ey, %bb.aa ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %.pn, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #29
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %i.ex, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.be

_ZN4pstd8optionalIN4pbrt11ShapeSampleEEptEv.exit: ; preds = %_ZN4pbrt14RadicalInverseEim.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 0, ptr %i.b, align 4, !tbaa !40
  invoke void @_ZN7testing8internal11CmpHelperGTIfiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %_ZN4pstd8optionalIN4pbrt11ShapeSampleEEptEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.fg = load i8, ptr %10, align 8, !tbaa !52, !range !53, !noundef !54
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.av, label %bb.ah

bb.ag:                                            ; preds = %_ZN4pstd8optionalIN4pbrt11ShapeSampleEEptEv.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.bc

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ai unwind label %bb.aq

end_hunk_0
begin_hunk_1_@_ZL21TestReintersectConvexN4pbrt5ShapeERNS_3RNGE:_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit162.2
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %.sroa.5243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %.sroa.6244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %.sroa.7245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %.sroa.8246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %12, i64 256
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %13, i64 256
  br label %.noexc173

.noexc173:                                        ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.preheader, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit
  %.0139278 = phi i32 [ 0, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.preheader ], [ %spec.select153, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit ]
  %.0144277 = phi i32 [ 0, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.preheader ], [ %i.lk, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit ]
  %i.er = load i64, ptr %1, align 8, !tbaa !73    ; 2 uses
  %i.es = mul i64 %i.er, 6364136223846793005
  %i.et = load i64, ptr %i.f, align 8, !tbaa !72  ; 2 uses
  %i.eu = add i64 %i.es, %i.et                    ; 2 uses
  %i.ev = mul i64 %i.eu, 6364136223846793005
  %i.ew = add i64 %i.ev, %i.et
  store i64 %i.ew, ptr %1, align 8, !tbaa !73
  %i.ex = insertelement <2 x i64> poison, i64 %i.eu, i64 0
  %i.ey = insertelement <2 x i64> %i.ex, i64 %i.er, i64 1 ; 3 uses
  %i.ez = lshr <2 x i64> %i.ey, splat (i64 45)
  %i.fa = lshr <2 x i64> %i.ey, splat (i64 27)
  %i.fb = xor <2 x i64> %i.ez, %i.fa
  %i.fc = trunc <2 x i64> %i.fb to <2 x i32>      ; 2 uses
  %i.fd = lshr <2 x i64> %i.ey, splat (i64 59)
  %i.fe = trunc nuw nsw <2 x i64> %i.fd to <2 x i32>
  %i.ff = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.fc, <2 x i32> %i.fc, <2 x i32> %i.fe)
  %i.fg = uitofp <2 x i32> %i.ff to <2 x float>
  %i.fh = fmul nnan <2 x float> %i.fg, splat (float f0x2F800000) ; 3 uses
  %i.fi = fcmp olt <2 x float> %i.fh, splat (float f0x3F7FFFFF) ; 2 uses
  %i.fj = extractelement <2 x i1> %i.fi, i64 1
  %i.fk = extractelement <2 x float> %i.fh, i64 1
  %i.fl = extractelement <2 x i1> %i.fi, i64 0
  %i.fm = extractelement <2 x float> %i.fh, i64 0
  %i.fn = fmul nnan float %i.fk, 2.000000e+00
  %i.fo = fsub float 1.000000e+00, %i.fn
  %i.fp = select i1 %i.fj, float %i.fo, float f0xBF7FFFFE ; 6 uses
  %i.fq = fmul float %i.fp, %i.fp
  %i.fr = fsub float 1.000000e+00, %i.fq          ; 2 uses
  %i.fs = fcmp ogt float %i.fr, 0.000000e+00
  %.sroa.speculated.i.i165 = select i1 %i.fs, float %i.fr, float 0.000000e+00
  %sqrt.i.i166 = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i165) ; 2 uses
  %i.ft = fmul nnan float %i.fm, f0x40C90FDB
  %i.fu = select i1 %i.fl, float %i.ft, float f0x40C90FDA ; 2 uses
  %i.fv = call noundef float @cosf(float noundef %i.fu) #29
  %i.fw = fmul float %i.fv, %sqrt.i.i166          ; 3 uses
  %i.fx = call noundef float @sinf(float noundef %i.fu) #29
  %i.fy = fmul float %i.fx, %sqrt.i.i166          ; 3 uses
  %.sroa.06.0.vec.insert.i = insertelement <2 x float> poison, float %i.fw, i64 0
  %.sroa.06.4.vec.insert.i = insertelement <2 x float> %.sroa.06.0.vec.insert.i, float %i.fy, i64 1
  %.sroa.056.0.copyload = load <2 x float>, ptr %i.eg, align 8 ; 3 uses
  %.sroa.257.0.copyload = load float, ptr %.sroa.257.0..sroa_idx, align 16 ; 3 uses
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %.sroa.056.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %.sroa.056.0.copyload, i64 1
  %i.fz = fmul float %.sroa.257.0.copyload, %i.fp ; 2 uses
  %i.ga = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i, float %i.fy, float %i.fz)
  %i.gb = fneg float %i.fz
  %i.gc = call noundef float @llvm.fma.f32(float %.sroa.257.0.copyload, float %i.fp, float %i.gb)
  %i.gd = fadd float %i.gc, %i.ga
  %i.ge = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i, float %i.fw, float %i.gd)
  %i.gf = fcmp olt float %i.ge, 0.000000e+00      ; 2 uses
  %i.gg = fneg float %i.fw
  %i.gh = fneg float %i.fy
  %i.gi = fneg float %i.fp
  %.sroa.0.0.vec.insert.i.i169 = insertelement <2 x float> poison, float %i.gg, i64 0
  %.sroa.0.4.vec.insert.i.i170 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i169, float %i.gh, i64 1
  %.sroa.0.4.vec.insert.i.pn.i = select i1 %i.gf, <2 x float> %.sroa.0.4.vec.insert.i.i170, <2 x float> %.sroa.06.4.vec.insert.i ; 4 uses
  %.pn.i = select i1 %i.gf, float %i.gi, float %i.fp ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.gj = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %10, <2 x float> %.sroa.056.0.copyload, float %.sroa.257.0.copyload, <2 x float> %.sroa.0.4.vec.insert.i.pn.i, float %.pn.i) ; 2 uses
  %i.gk = load float, ptr %i.eh, align 8, !tbaa !103, !noalias !370
  %i.gl = load ptr, ptr %i.ei, align 16, !tbaa !104, !noalias !371 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit180.2, label %bb.c

bb.c:                                             ; preds = %.noexc173
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.eg, align 8, !noalias !371 ; 2 uses
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.257.0..sroa_idx, align 16, !noalias !371 ; 2 uses
  %.sroa.01.0.vec.extract.i.i.i171 = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 0
  %.sroa.04.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.4.vec.insert.i.pn.i, i64 0
  %.sroa.01.4.vec.extract.i.i.i172 = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 1
  %.sroa.04.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.4.vec.insert.i.pn.i, i64 1
  %i.gm = fmul float %.pn.i, %.sroa.24.0.copyload.i.i ; 2 uses
  %i.gn = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i172, float %.sroa.04.4.vec.extract.i.i.i, float %i.gm)
  %i.go = fneg float %i.gm
  %i.gp = call noundef float @llvm.fma.f32(float %.sroa.24.0.copyload.i.i, float %.pn.i, float %i.go)
  %i.gq = fadd float %i.gn, %i.gp
  %i.gr = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i171, float %.sroa.04.0.vec.extract.i.i.i, float %i.gq)
  %i.gs = fcmp ogt float %i.gr, 0.000000e+00
  %spec.select.idx.i.i = select i1 %i.gs, i64 8, i64 0
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 %spec.select.idx.i.i
  br label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit180.2

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit180.2:      ; preds = %bb.c, %.noexc173
  %storemerge.in.i.i = phi ptr [ %spec.select.i.i, %bb.c ], [ %i.ej, %.noexc173 ]
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.gj, 1
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.gj, 0
  %storemerge.i.i = load i64, ptr %storemerge.in.i.i, align 8, !tbaa !86, !noalias !371
  store <2 x float> %.fca.0.extract.i, ptr %11, align 8
  store float %.fca.1.extract.i, ptr %.sroa.5243.0..sroa_idx, align 8
  store <2 x float> %.sroa.0.4.vec.insert.i.pn.i, ptr %.sroa.6244.0..sroa_idx, align 4
  store float %.pn.i, ptr %.sroa.7245.0..sroa_idx, align 4
  store float %i.gk, ptr %.sroa.8246.0..sroa_idx, align 8
  store i64 %storemerge.i.i, ptr %i.ek, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store float +inf, ptr %i.d, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %11, ptr %5, align 8, !tbaa !88
  store ptr %i.d, ptr %i.el, align 8, !tbaa !90
  %i.gt = load i64, ptr %0, align 8, !tbaa !68    ; 2 uses
  %i.gu = and i64 %i.gt, 144115188075855871
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = lshr i64 %i.gt, 57
  %i.gx = trunc nuw nsw i64 %i.gw to i32
  %i.gy = add nsw i32 %i.gx, -1
  %i.gz = call noundef zeroext i1 @_ZN4pbrt6detail8DispatchIRZNKS_5Shape10IntersectPERKNS_3RayEfEUlT_E_bNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.gv, i32 noundef %i.gy)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store float +inf, ptr %i.c, align 4, !tbaa !17, !noalias !372
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !372
  store ptr %11, ptr %4, align 8, !tbaa !88, !noalias !372
  store ptr %i.c, ptr %i.em, align 8, !tbaa !90, !noalias !372
  %i.ha = load i64, ptr %0, align 8, !tbaa !68, !noalias !373 ; 2 uses
  %i.hb = and i64 %i.ha, 144115188075855871
  %i.hc = inttoptr i64 %i.hb to ptr
  %i.hd = lshr i64 %i.ha, 57
  %i.he = trunc nuw nsw i64 %i.hd to i32
  %i.hf = add nsw i32 %i.he, -1
  call void @_ZN4pbrt6detail8DispatchIRZNKS_5Shape9IntersectERKNS_3RayEfEUlT_E_N4pstd8optionalINS_17ShapeIntersectionEEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS6_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.34") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.hc, i32 noundef %i.hf)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.hg = load i8, ptr %i.en, align 8, !tbaa !92, !range !53, !noundef !54
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.hh = load i64, ptr %i.f, align 8, !tbaa !72  ; 3 uses
  %.promoted274 = load i64, ptr %1, align 8, !tbaa !73 ; 2 uses
  %i.hi = mul i64 %.promoted274, 6364136223846793005
  %i.hj = add i64 %i.hi, %i.hh                    ; 2 uses
  %i.hk = mul i64 %i.hj, 6364136223846793005
  %i.hl = add i64 %i.hk, %i.hh                    ; 4 uses
  %i.hm = insertelement <2 x i64> poison, i64 %i.hj, i64 0
  %i.hn = insertelement <2 x i64> %i.hm, i64 %.promoted274, i64 1 ; 3 uses
  %i.ho = lshr <2 x i64> %i.hn, splat (i64 45)
  %i.hp = lshr <2 x i64> %i.hn, splat (i64 27)
  %i.hq = xor <2 x i64> %i.ho, %i.hp
  %i.hr = trunc <2 x i64> %i.hq to <2 x i32>      ; 2 uses
  %i.hs = lshr <2 x i64> %i.hn, splat (i64 59)
  %i.ht = trunc nuw nsw <2 x i64> %i.hs to <2 x i32>
  %i.hu = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.hr, <2 x i32> %i.hr, <2 x i32> %i.ht)
  %i.hv = uitofp <2 x i32> %i.hu to <2 x float>
  %i.hw = fmul nnan <2 x float> %i.hv, splat (float f0x2F800000) ; 3 uses
  %i.hx = fcmp olt <2 x float> %i.hw, splat (float f0x3F7FFFFF) ; 2 uses
  %i.hy = extractelement <2 x i1> %i.hx, i64 1
  %i.hz = extractelement <2 x float> %i.hw, i64 1
  %.sroa.speculated.i.i178 = select i1 %i.hy, float %i.hz, float f0x3F7FFFFF ; 2 uses
  %i.ia = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i178
  %i.ib = fmul nnan float %.sroa.speculated.i.i178, 8.000000e+00
  %i.ic = fmul nnan float %i.ia, 8.000000e+00
  %i.id = fsub float %i.ib, %i.ic
  %i.ie = fpext float %i.id to double
  %i.if = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ie) #29
  %i.ig = insertelement <2 x double> poison, double %i.if, i64 0
  %i.ih = mul i64 %i.hl, 6364136223846793005
  %i.ii = add i64 %i.ih, %i.hh
  %i.ij = lshr i64 %i.hl, 45
  %i.ik = lshr i64 %i.hl, 27
  %i.il = xor i64 %i.ij, %i.ik
  %i.im = trunc i64 %i.il to i32                  ; 2 uses
  %i.in = lshr i64 %i.hl, 59
  %i.io = trunc nuw nsw i64 %i.in to i32
  %i.ip = call noundef i32 @llvm.fshr.i32(i32 %i.im, i32 %i.im, i32 %i.io)
  %i.iq = uitofp i32 %i.ip to float
  %i.ir = fmul nnan float %i.iq, f0x2F800000      ; 2 uses
  %i.is = fcmp olt float %i.ir, f0x3F7FFFFF
  %i.it = insertelement <2 x i1> %i.hx, i1 %i.is, i64 1
  %i.iu = insertelement <2 x float> %i.hw, float %i.ir, i64 1
  %i.iv = select <2 x i1> %i.it, <2 x float> %i.iu, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.iw = fsub nnan <2 x float> splat (float 1.000000e+00), %i.iv
  %i.ix = fmul nnan <2 x float> %i.iv, splat (float 8.000000e+00)
  %i.iy = fmul nnan <2 x float> %i.iw, splat (float 8.000000e+00)
  %i.iz = fsub <2 x float> %i.ix, %i.iy
  %i.ja = fpext <2 x float> %i.iz to <2 x double> ; 2 uses
  %i.jb = extractelement <2 x double> %i.ja, i64 0
  %i.jc = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.jb) #29
  %i.jd = insertelement <2 x double> %i.ig, double %i.jc, i64 1
  %i.je = fptrunc <2 x double> %i.jd to <2 x float>
  %i.jf = extractelement <2 x double> %i.ja, i64 1
  %i.jg = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.jf) #29
  %i.jh = fptrunc double %i.jg to float
  %i.ji = zext i1 %i.gz to i32
  %spec.select = add nsw i32 %.0139278, %i.ji
  %i.jj = zext nneg i8 %i.hg to i32
  %spec.select151 = add nsw i32 %spec.select, %i.jj
  store i64 %i.ii, ptr %1, align 8, !tbaa !73
  %.sroa.0.sroa.5.0.copyload.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 16
  %.sroa.0.sroa.6.0.copyload.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.jk = fadd float %.sroa.0.sroa.5.0.copyload.i, %.sroa.0.sroa.6.0.copyload.i
  %i.jl = fmul float %i.jk, 5.000000e-01          ; 3 uses
  %i.jm = fsub float %i.jh, %i.jl                 ; 4 uses
  %.sroa.022.0.copyload = load <2 x float>, ptr %i.eg, align 8 ; 3 uses
  %.sroa.223.0.copyload = load float, ptr %.sroa.257.0..sroa_idx, align 16 ; 3 uses
  %.sroa.01.0.vec.extract.i.i187 = extractelement <2 x float> %.sroa.022.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i.i189 = extractelement <2 x float> %.sroa.022.0.copyload, i64 1
  %i.jn = fmul float %i.jm, %.sroa.223.0.copyload ; 2 uses
  %i.jo = fneg float %i.jn
  %i.jp = call noundef float @llvm.fma.f32(float %.sroa.223.0.copyload, float %i.jm, float %i.jo)
  %i.jq = fneg float %i.jm
  %i.jr = load float, ptr %i.eh, align 8, !tbaa !103, !noalias !374
  %i.js = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.jt = load <4 x float>, ptr %10, align 16
  %i.ju = shufflevector <4 x float> %i.jt, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.jv = fadd <2 x float> %i.js, %i.ju
  %i.jw = fmul <2 x float> %i.jv, splat (float 5.000000e-01) ; 3 uses
  %i.jx = fsub <2 x float> %i.je, %i.jw           ; 4 uses
  %i.jy = extractelement <2 x float> %i.jx, i64 1
  %i.jz = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i189, float %i.jy, float %i.jn)
  %i.ka = fadd float %i.jz, %i.jp
  %i.kb = extractelement <2 x float> %i.jx, i64 0
  %i.kc = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i187, float %i.kb, float %i.ka)
  %i.kd = fcmp olt float %i.kc, 0.000000e+00      ; 2 uses
  %i.ke = fneg <2 x float> %i.jx
  %.sroa.0.4.vec.insert.i.pn.i193 = select i1 %i.kd, <2 x float> %i.ke, <2 x float> %i.jx
  %.pn.i194 = select i1 %i.kd, float %i.jq, float %i.jm
  %i.kf = fadd <2 x float> %i.jw, %.sroa.0.4.vec.insert.i.pn.i193
  %i.kg = fadd float %i.jl, %.pn.i194
  %i.kh = fsub <2 x float> %i.kf, %i.jw           ; 4 uses
  %i.ki = fsub float %i.kg, %i.jl                 ; 4 uses
  %i.kj = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %10, <2 x float> %.sroa.022.0.copyload, float %.sroa.223.0.copyload, <2 x float> %i.kh, float %i.ki) ; 2 uses
  %.fca.0.extract.i.i.i = extractvalue { <2 x float>, float } %i.kj, 0
  %.fca.1.extract.i.i.i = extractvalue { <2 x float>, float } %i.kj, 1
  %i.kk = load ptr, ptr %i.ei, align 16, !tbaa !104, !noalias !375 ; 2 uses
  %.not.i.i218 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i218, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit180.2
  %.sroa.03.0.copyload.i.i219 = load <2 x float>, ptr %i.eg, align 8, !noalias !375 ; 2 uses
  %.sroa.24.0.copyload.i.i220 = load float, ptr %.sroa.257.0..sroa_idx, align 16, !noalias !375 ; 2 uses
  %.sroa.01.0.vec.extract.i.i.i221 = extractelement <2 x float> %.sroa.03.0.copyload.i.i219, i64 0
  %.sroa.01.4.vec.extract.i.i.i222 = extractelement <2 x float> %.sroa.03.0.copyload.i.i219, i64 1
  %i.kl = fmul float %i.ki, %.sroa.24.0.copyload.i.i220 ; 2 uses
  %i.km = extractelement <2 x float> %i.kh, i64 1
  %i.kn = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i222, float %i.km, float %i.kl)
  %i.ko = fneg float %i.kl
  %i.kp = call noundef float @llvm.fma.f32(float %.sroa.24.0.copyload.i.i220, float %i.ki, float %i.ko)
  %i.kq = fadd float %i.kn, %i.kp
  %i.kr = extractelement <2 x float> %i.kh, i64 0
  %i.ks = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i221, float %i.kr, float %i.kq)
  %i.kt = fcmp ogt float %i.ks, 0.000000e+00
  %spec.select.idx.i.i223 = select i1 %i.kt, i64 8, i64 0
  %spec.select.i.i224 = getelementptr inbounds nuw i8, ptr %i.kk, i64 %spec.select.idx.i.i223
  br label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit: ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit180.2, %bb.d
  %storemerge.in.i.i225 = phi ptr [ %spec.select.i.i224, %bb.d ], [ %i.ej, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit180.2 ]
  %storemerge.i.i226 = load i64, ptr %storemerge.in.i.i225, align 8, !tbaa !86, !noalias !375
  store <2 x float> %.fca.0.extract.i.i.i, ptr %11, align 8
  store float %.fca.1.extract.i.i.i, ptr %.sroa.5243.0..sroa_idx, align 8
  store <2 x float> %i.kh, ptr %.sroa.6244.0..sroa_idx, align 4
  store float %i.ki, ptr %.sroa.7245.0..sroa_idx, align 4
  store float %i.jr, ptr %.sroa.8246.0..sroa_idx, align 8
  store i64 %storemerge.i.i226, ptr %i.ek, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %11, ptr %3, align 8, !tbaa !88
  store ptr %i.b, ptr %i.eo, align 8, !tbaa !90
  %i.ku = load i64, ptr %0, align 8, !tbaa !68    ; 2 uses
  %i.kv = and i64 %i.ku, 144115188075855871
  %i.kw = inttoptr i64 %i.kv to ptr
  %i.kx = lshr i64 %i.ku, 57
  %i.ky = trunc nuw nsw i64 %i.kx to i32
  %i.kz = add nsw i32 %i.ky, -1
  %i.la = call noundef zeroext i1 @_ZN4pbrt6detail8DispatchIRZNKS_5Shape10IntersectPERKNS_3RayEfEUlT_E_bNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.kw, i32 noundef %i.kz)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.lb = zext i1 %i.la to i32
  %spec.select152 = add nsw i32 %spec.select151, %i.lb
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !17, !noalias !376
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !376
  store ptr %11, ptr %2, align 8, !tbaa !88, !noalias !376
  store ptr %i.a, ptr %i.ep, align 8, !tbaa !90, !noalias !376
  %i.lc = load i64, ptr %0, align 8, !tbaa !68, !noalias !377 ; 2 uses
  %i.ld = and i64 %i.lc, 144115188075855871
  %i.le = inttoptr i64 %i.ld to ptr
  %i.lf = lshr i64 %i.lc, 57
  %i.lg = trunc nuw nsw i64 %i.lf to i32
  %i.lh = add nsw i32 %i.lg, -1
  call void @_ZN4pbrt6detail8DispatchIRZNKS_5Shape9IntersectERKNS_3RayEfEUlT_E_N4pstd8optionalINS_17ShapeIntersectionEEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS6_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.34") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.le, i32 noundef %i.lh)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.li = load i8, ptr %i.eq, align 8, !tbaa !92, !range !53, !noundef !54
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.lj = zext nneg i8 %i.li to i32
  %spec.select153 = add nsw i32 %spec.select152, %i.lj ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.lk = add nuw nsw i32 %.0144277, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.lk, 1000
  br i1 %exitcond.not, label %.loopexit, label %.noexc173, !llvm.loop !366

.loopexit:                                        ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %spec.select153, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL15randomTransformRN4pbrt3RNGE(ptr dead_on_unwind noalias nonnull writable align 4 initializes((0, 128)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %"class.pbrt::Transform", align 4   ; 4 uses
  %3 = alloca %"class.pbrt::Transform", align 4   ; 4 uses
  %4 = alloca %"class.pbrt::Transform", align 4   ; 4 uses
  %5 = alloca %"class.pbrt::Transform", align 4   ; 4 uses
  %6 = alloca %"class.pbrt::Transform", align 4   ; 4 uses
  %7 = alloca %"class.pbrt::Transform", align 4   ; 23 uses
  store float 1.000000e+00, ptr %0, align 4, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.f, align 4, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 4, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 4, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx115.i.i = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.7.0..sroa_idx116.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.13.0..sroa_idx120.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.16.0..sroa_idx121.i.i = getelementptr inbounds nuw i8, ptr %7, i64 28
  %.sroa.18.0..sroa_idx122.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.19.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 36
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 40
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 44
  %.sroa.30.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 68
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 72
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 76
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 84
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 100
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 104
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 108
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 124
  %i.o = load i64, ptr %1, align 8, !tbaa !73     ; 2 uses
  %i.p = mul i64 %i.o, 6364136223846793005
  %i.q = load i64, ptr %i.m, align 8, !tbaa !72   ; 3 uses
  %i.r = add i64 %i.p, %i.q                       ; 2 uses
  %i.s = mul i64 %i.r, 6364136223846793005
  %i.t = add i64 %i.s, %i.q                       ; 4 uses
  %i.u = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %i.v = insertelement <2 x i64> %i.u, i64 %i.r, i64 1 ; 3 uses
  %i.w = lshr <2 x i64> %i.v, splat (i64 45)
  %i.x = lshr <2 x i64> %i.v, splat (i64 27)
  %i.y = xor <2 x i64> %i.w, %i.x
  %i.z = trunc <2 x i64> %i.y to <2 x i32>        ; 2 uses
  %i.aa = lshr <2 x i64> %i.v, splat (i64 59)
  %i.ab = trunc nuw nsw <2 x i64> %i.aa to <2 x i32>
  %i.ac = tail call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.z, <2 x i32> %i.z, <2 x i32> %i.ab)
  %i.ad = uitofp <2 x i32> %i.ac to <2 x float>
  %i.ae = fmul nnan <2 x float> %i.ad, splat (float f0x2F800000) ; 2 uses
  %i.af = fcmp olt <2 x float> %i.ae, splat (float f0x3F7FFFFF)
  %i.ag = select <2 x i1> %i.af, <2 x float> %i.ae, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.ah = fsub nnan <2 x float> splat (float 1.000000e+00), %i.ag
  %i.ai = fmul nnan <2 x float> %i.ag, splat (float 4.000000e+00)
  %i.aj = fmul nnan <2 x float> %i.ah, splat (float 4.000000e+00)
  %i.ak = fsub <2 x float> %i.ai, %i.aj
  %i.al = fpext <2 x float> %i.ak to <2 x double> ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.am) #29
  %i.ao = fptrunc double %i.an to float
  %i.ap = extractelement <2 x double> %i.al, i64 1
  %i.aq = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ap) #29
  %i.ar = fptrunc double %i.aq to float
  %i.as = mul i64 %i.t, 6364136223846793005
end_hunk_1
