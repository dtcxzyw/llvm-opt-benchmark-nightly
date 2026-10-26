Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Colors?download=true
inline.NumInlined: 6654
inline.NumDeleted: 2190
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN3tev8ituth2738toStringENS0_15EColorPrimariesE:bb.a
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.69, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.14.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local <2 x float> @_ZN3tev28limitedRangeForBitsPerSampleEib(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !122
  %i.b = add i32 %0, -17
  %or.cond = icmp ult i32 %i.b, -9
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96
  call void @_ZN4tlog6Logger3logIJRiEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i32 noundef 8, ptr nonnull @.str.97, i64 55, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = add nsw i32 %0, -8                       ; 2 uses
  %i.f = shl nuw nsw i32 16, %i.e
  %i.g = select i1 %1, i32 224, i32 219
  %i.h = shl nuw nsw i32 %i.g, %i.e
  %notmask = shl nsw i32 -1, %0
  %i.i = xor i32 %notmask, -1
  %i.j = uitofp nneg i32 %i.i to float
  %i.k = uitofp nneg i32 %i.h to float
  %i.l = uitofp nneg i32 %i.f to float
  %i.m = fneg float %i.l
  %i.n = insertelement <2 x float> poison, float %i.j, i64 0
  %i.o = insertelement <2 x float> %i.n, float %i.m, i64 1
  %i.p = insertelement <2 x float> poison, float %i.k, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fdiv <2 x float> %i.o, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.09.0 = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.b ], [ %i.r, %bb.c ]
  ret <2 x float> %.sroa.09.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev23convertColorspaceMatrixERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEES7_NS_16ERenderingIntentENS0_8optionalIS4_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.nanogui::Matrix") align 4 captures(none) %0, ptr noundef nonnull align 4 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(32) %2, i32 noundef %3, i64 %4, i8 %5) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
.lr.ph.i.i.i.i:
  %6 = alloca %"struct.nanogui::Matrix", align 8  ; 9 uses
  %7 = alloca %"struct.nanogui::Matrix", align 8  ; 11 uses
  %8 = alloca %"struct.nanogui::Matrix", align 8  ; 11 uses
  %9 = alloca %"struct.nanogui::Matrix", align 8  ; 10 uses
  %10 = alloca %"struct.nanogui::Matrix", align 8 ; 11 uses
  %i.a = bitcast i64 %4 to <2 x float>
  %i.b = bitcast i64 %4 to <2 x float>
  %i.c = load float, ptr %1, align 4, !tbaa !59
  %i.d = load float, ptr %2, align 4, !tbaa !59
  %i.e = fcmp oeq float %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load float, ptr %i.h, align 4
  %i.j = fcmp oeq float %i.g, %i.i
  %.lcssa.i.i.i.i.i.i = select i1 %i.e, i1 %i.j, i1 false
  br i1 %.lcssa.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.1, label %.critedge

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0911.i.i.i.ptr.i.1 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %.0911.i.i.i.ptr.i.1, align 4, !tbaa !59
  %i.m = load float, ptr %i.k, align 4, !tbaa !59
  %i.n = fcmp oeq float %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = load float, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.r = load float, ptr %i.q, align 4
  %i.s = fcmp oeq float %i.p, %i.r
  %.lcssa.i.i.i.i.i.i.1 = select i1 %i.n, i1 %i.s, i1 false
  br i1 %.lcssa.i.i.i.i.i.i.1, label %.lr.ph.i.i.i.i.2, label %.critedge

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph.i.i.i.i.1
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.0911.i.i.i.ptr.i.2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load float, ptr %.0911.i.i.i.ptr.i.2, align 4, !tbaa !59
  %i.v = load float, ptr %i.t, align 4, !tbaa !59
  %i.w = fcmp oeq float %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load float, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fcmp oeq float %i.y, %i.aa
  %.lcssa.i.i.i.i.i.i.2 = select i1 %i.w, i1 %i.ab, i1 false
  br i1 %.lcssa.i.i.i.i.i.i.2, label %.lr.ph.i.i.i.i.3, label %.critedge

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph.i.i.i.i.2
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.0911.i.i.i.ptr.i.3 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load float, ptr %.0911.i.i.i.ptr.i.3, align 4, !tbaa !59
  %i.ae = load float, ptr %i.ac, align 4, !tbaa !59
  %i.af = fcmp oeq float %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ah = load float, ptr %i.ag, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = fcmp oeq float %i.ah, %i.aj
  %.lcssa.i.i.i.i.i.i.3 = select i1 %i.af, i1 %i.ak, i1 false
  br i1 %.lcssa.i.i.i.i.i.i.3, label %bb.a, label %.critedge

bb.a:                                             ; preds = %.lr.ph.i.i.i.i.3
  %i.al = icmp ne i32 %3, 3
  %i.am = trunc nuw i8 %5 to i1
  %or.cond = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !59
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.an, align 4, !tbaa !59
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 1.000000e+00, ptr %i.ao, align 4, !tbaa !59
  br label %bb.j

.critedge:                                        ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3
  %i.ap = trunc nuw i8 %5 to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load <2 x float>, ptr %i.aq, align 4
  %.sroa.02.0.copyload.pre = select i1 %i.ap, <2 x float> %i.a, <2 x float> %.val
  br label %.thread

.thread:                                          ; preds = %.critedge, %bb.a
  %.sroa.02.0.copyload = phi <2 x float> [ %i.b, %bb.a ], [ %.sroa.02.0.copyload.pre, %.critedge ]
  switch i32 %3, label %bb.g [
    i32 2, label %bb.c
    i32 0, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit
    i32 1, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit
    i32 3, label %bb.f
  ]

bb.c:                                             ; preds = %.thread
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !96 ; 7 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !103
  %i.au = and i32 %i.at, 8
  %.not.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !104 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !105 ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.aw, %i.ay
  br i1 %.not12.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.sroa.09.013.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %i.bo, %bb.e ] ; 2 uses
  %i.bd = load ptr, ptr %.sroa.09.013.i.i.i, align 8, !tbaa !108 ; 2 uses
  %i.be = load i8, ptr %i.az, align 8             ; 2 uses
  %i.bf = trunc i8 %i.be to i1                    ; 2 uses
  %i.bg = load ptr, ptr %i.ba, align 8
  %i.bh = select i1 %i.bf, ptr %i.bg, ptr %i.bb
  %i.bi = load i64, ptr %i.bc, align 8
  %i.bj = lshr i8 %i.be, 1
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = select i1 %i.bf, i64 %i.bi, i64 %i.bk
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !65
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr %i.bh, i64 %i.bl, i32 noundef 8, ptr nonnull @.str.29, i64 73), !inline_history !4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bo, %i.ay
  br i1 %.not.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.e

_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit: ; preds = %bb.e, %bb.d, %bb.c, %.thread, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @_ZN3tev8xyzToRgbERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEEf(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %6, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef 1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.bp, align 4, !tbaa !88
  call void @_ZN3tev18adaptWhiteBradfordEN7nanogui5ArrayIfLm2EEES2_(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %7, <2 x float> %.sroa.02.0.copyload, <2 x float> %.sroa.0.0.copyload)
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.bx = load <2 x float>, ptr %6, align 8, !tbaa !59, !noalias !485 ; 3 uses
  %i.by = load <2 x float>, ptr %7, align 8, !tbaa !59, !noalias !485 ; 2 uses
  %i.bz = load float, ptr %i.bs, align 4, !tbaa !59, !noalias !485
  %i.ca = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.cc = shufflevector <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x float> %i.ca, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.cd = load <2 x float>, ptr %i.bv, align 8, !tbaa !59, !noalias !485
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cg = load <4 x float>, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cj = load <2 x float>, ptr %i.br, align 4, !tbaa !59, !noalias !485 ; 3 uses
  %i.ck = shufflevector <2 x float> %i.bx, <2 x float> %i.cj, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.cl = load <2 x float>, ptr %i.bu, align 8, !tbaa !59, !noalias !485 ; 3 uses
  %i.cm = load <2 x float>, ptr %i.ch, align 4, !tbaa !59, !noalias !485 ; 2 uses
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.co = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cp = shufflevector <4 x float> %i.cg, <4 x float> %i.co, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !59, !noalias !485 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @_ZN3tev8rgbToXyzERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEEf(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %8, ptr noundef nonnull align 4 dereferenceable(32) %1, float noundef 1.000000e+00)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cx = load <2 x float>, ptr %i.bq, align 4, !tbaa !59, !noalias !485 ; 4 uses
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cz = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.cy, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> %i.cb, <4 x float> zeroinitializer)
  %i.db = load <2 x float>, ptr %i.bt, align 8, !tbaa !59, !noalias !485 ; 3 uses
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dd = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.dc, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.cc, <4 x float> %i.da)
  %11 = shufflevector <2 x float> %i.bx, <2 x float> %i.cx, <4 x i32> <i32 poison, i32 0, i32 1, i32 3>
  %i.df = load <2 x float>, ptr %i.bw, align 4, !tbaa !59, !noalias !485 ; 4 uses
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> %11, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %i.ce, <4 x float> %i.de) ; 4 uses
  %i.dj = shufflevector <4 x float> %i.ck, <4 x float> %i.dc, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 3, i32 7>
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> %i.cp, <4 x float> %i.dk) ; 2 uses
  %i.dm = shufflevector <2 x float> %i.cl, <2 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.dn = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.do = shufflevector <4 x float> %i.dm, <4 x float> %i.dn, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.dp = insertelement <4 x float> %i.dl, float 0.000000e+00, i64 3
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.cn, <4 x float> %i.dp) ; 5 uses
  %i.dr = load <2 x float>, ptr %i.ci, align 8, !tbaa !59, !noalias !485
  %i.ds = load float, ptr %i.cq, align 4, !tbaa !59, !noalias !485
  %i.dt = extractelement <4 x float> %i.di, i64 0
  %i.du = shufflevector <2 x float> %i.bx, <2 x float> %i.cx, <4 x i32> <i32 3, i32 0, i32 2, i32 poison>
  %i.dv = insertelement <4 x float> %i.du, float 0.000000e+00, i64 3
  %i.dw = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %i.dx = insertelement <4 x float> %i.dw, float -0.000000e+00, i64 3
  %i.dy = shufflevector <2 x float> %i.dr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> %i.dx, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ea = shufflevector <4 x float> %i.di, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 0>
  %i.eb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %i.dz, <4 x float> %i.ea)
  %i.ec = shufflevector <2 x float> %i.cj, <2 x float> %i.db, <4 x i32> <i32 3, i32 0, i32 2, i32 poison>
  %i.ed = insertelement <4 x float> %i.ec, float 0.000000e+00, i64 3
  %i.ee = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.dy, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.ef = insertelement <4 x float> %i.ee, float %i.bz, i64 1
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.eh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ed, <4 x float> %i.eg, <4 x float> %i.eb)
  %i.ei = shufflevector <2 x float> %i.cl, <2 x float> %i.df, <4 x i32> <i32 3, i32 0, i32 2, i32 poison>
  %i.ej = insertelement <4 x float> %i.ei, float 0.000000e+00, i64 3
  %i.ek = shufflevector <4 x float> %i.ce, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 poison, i32 0, i32 0, i32 7>
  %i.el = insertelement <4 x float> %i.ek, float %i.cs, i64 0
  %i.em = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ej, <4 x float> %i.el, <4 x float> %i.eh) ; 5 uses
  %i.en = load <2 x float>, ptr %8, align 8, !tbaa !59, !noalias !486 ; 2 uses
  %i.eo = load <1 x float>, ptr %i.cv, align 4
  %i.ep = shufflevector <4 x float> %i.di, <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.eq = shufflevector <2 x float> %i.en, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.es = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.er, <4 x float> zeroinitializer)
  %i.et = extractelement <4 x float> %i.dq, i64 2
  %i.eu = shufflevector <4 x float> %i.dq, <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 2, i32 5, i32 6, i32 7>
  %i.ev = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.eq, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ew = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %i.ev, <4 x float> %i.es)
  %i.ex = load <2 x float>, ptr %i.cw, align 8, !tbaa !59, !noalias !486 ; 2 uses
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ez = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.em, <4 x float> %i.ey, <4 x float> %i.ew) ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fb = load <4 x float>, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.fd = extractelement <4 x float> %i.em, i64 0
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ff = shufflevector <4 x float> %i.dq, <4 x float> %i.em, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.fg = shufflevector <4 x float> %i.ez, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 3, i32 7>
  %i.fh = shufflevector <2 x float> %i.cj, <2 x float> %i.db, <2 x i32> <i32 0, i32 2>
  %i.fi = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = shufflevector <4 x float> %i.dl, <4 x float> %i.dq, <2 x i32> <i32 3, i32 7>
  %i.fl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> %i.fj, <2 x float> %i.fk)
  %i.fm = shufflevector <2 x float> %i.cl, <2 x float> %i.df, <2 x i32> <i32 0, i32 2>
  %i.fn = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fo, <2 x float> %i.fl) ; 3 uses
  %i.fq = shufflevector <4 x float> %i.em, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.fr = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fr, <2 x float> zeroinitializer)
  %i.ft = shufflevector <4 x float> %i.dq, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.fu = shufflevector <1 x float> %i.eo, <1 x float> poison, <2 x i32> zeroinitializer
  %i.fv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.fu, <2 x float> %i.fs)
  %i.fw = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.fw, <2 x float> %i.fv)
  store <2 x float> %i.fx, ptr %0, align 4, !tbaa !59, !alias.scope !486
  %i.fy = load float, ptr %i.fe, align 8, !tbaa !59, !noalias !486
  %i.fz = load <2 x float>, ptr %i.fc, align 4, !tbaa !59, !noalias !486 ; 2 uses
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gb = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gc = shufflevector <4 x float> %i.fb, <4 x float> %i.gb, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.gd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ff, <4 x float> %i.gc, <4 x float> %i.fg) ; 2 uses
  %i.ge = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.gf = shufflevector <2 x float> %i.fp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> %i.ge, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gh = insertelement <4 x float> %i.gd, float 0.000000e+00, i64 3
  %i.gi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gg, <4 x float> %i.ga, <4 x float> %i.gh) ; 2 uses
  %i.gj = shufflevector <4 x float> %i.ez, <4 x float> %i.gi, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  store <4 x float> %i.gj, ptr %i.ct, align 4, !tbaa !59, !alias.scope !486
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.fy, float 0.000000e+00)
  %i.gm = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.gn = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.go = load float, ptr %i.gm, align 4, !tbaa !59, !noalias !486 ; 2 uses
  %i.gp = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = shufflevector <4 x float> %i.gd, <4 x float> %i.gi, <2 x i32> <i32 3, i32 7>
  %i.gs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.gq, <2 x float> %i.gr)
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.et, float %i.go, float %i.gl)
  %i.gu = load float, ptr %i.gn, align 8, !tbaa !59, !noalias !486 ; 2 uses
  %i.gv = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.gw, <2 x float> %i.gs)
  store <2 x float> %i.gx, ptr %i.cu, align 4, !tbaa !59, !alias.scope !486
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.gu, float %i.gt)
  store float %i.gy, ptr %i.gk, align 4, !tbaa !59, !alias.scope !486
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.j

bb.f:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @_ZN3tev8xyzToRgbERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEEf(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %9, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef 1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @_ZN3tev8rgbToXyzERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEEf(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %10, ptr noundef nonnull align 4 dereferenceable(32) %1, float noundef 1.000000e+00)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hb = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.hc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hd = load float, ptr %i.hc, align 8, !tbaa !59, !noalias !487 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.hg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.hi = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.hk = load <2 x float>, ptr %9, align 8, !tbaa !59, !noalias !487 ; 3 uses
  %i.hl = load float, ptr %i.hb, align 4, !tbaa !59, !noalias !487 ; 2 uses
  %i.hm = load <2 x float>, ptr %10, align 8, !tbaa !59, !noalias !487 ; 2 uses
  %i.hn = load <1 x float>, ptr %i.hf, align 4
  %i.ho = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.hd, i64 0 ; 2 uses
  %i.hp = shufflevector <2 x float> %i.hm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.hr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> %i.hq, <4 x float> zeroinitializer)
  %i.hs = shufflevector <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x float> %i.hp, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ht = load <2 x float>, ptr %i.hi, align 8, !tbaa !59, !noalias !487 ; 2 uses
  %i.hu = shufflevector <2 x float> %i.ht, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.hv = shufflevector <2 x float> %i.hk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hw = shufflevector <4 x float> %i.hv, <4 x float> %i.ho, <4 x i32> <i32 poison, i32 0, i32 1, i32 4>
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.hy = load <4 x float>, ptr %i.hx, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.ia = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ib = load <2 x float>, ptr %i.he, align 4, !tbaa !59, !noalias !487 ; 3 uses
  %i.ic = extractelement <2 x float> %i.ib, i64 0
  %i.id = shufflevector <2 x float> %i.hk, <2 x float> %i.ib, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.if = load <2 x float>, ptr %i.hh, align 8, !tbaa !59, !noalias !487 ; 3 uses
  %i.ig = load float, ptr %i.ia, align 8, !tbaa !59, !noalias !487
  %i.ih = load <2 x float>, ptr %i.hz, align 4, !tbaa !59, !noalias !487 ; 2 uses
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ij = extractelement <2 x float> %i.if, i64 0
  %i.ik = shufflevector <2 x float> %i.ih, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.il = shufflevector <4 x float> %i.hy, <4 x float> %i.ik, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.im = getelementptr inbounds nuw i8, ptr %10, i64 28
  %i.in = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.io = load <2 x float>, ptr %i.hg, align 8, !tbaa !59, !noalias !487 ; 3 uses
  %i.ip = shufflevector <2 x float> %i.io, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.iq = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ip, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ir = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iq, <4 x float> %i.hs, <4 x float> %i.hr)
  %i.is = load <2 x float>, ptr %i.hj, align 4, !tbaa !59, !noalias !487 ; 4 uses
  %i.it = shufflevector <2 x float> %i.is, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.iu = shufflevector <4 x float> %i.it, <4 x float> %i.hw, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.iv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iu, <4 x float> %i.hu, <4 x float> %i.ir) ; 2 uses
  %i.iw = shufflevector <4 x float> %i.id, <4 x float> %i.ip, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ix = shufflevector <4 x float> %i.iv, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 3, i32 7>
  %i.iy = insertelement <2 x float> %i.hk, float %i.hl, i64 1
  %i.iz = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ja = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iy, <2 x float> %i.iz, <2 x float> zeroinitializer)
  %i.jb = shufflevector <2 x float> %i.ib, <2 x float> %i.io, <2 x i32> <i32 0, i32 2>
  %i.jc = shufflevector <1 x float> %i.hn, <1 x float> poison, <2 x i32> zeroinitializer
  %i.jd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jb, <2 x float> %i.jc, <2 x float> %i.ja)
  %i.je = shufflevector <2 x float> %i.if, <2 x float> %i.is, <2 x i32> <i32 0, i32 2>
  %i.jf = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.je, <2 x float> %i.jf, <2 x float> %i.jd)
  store <2 x float> %i.jg, ptr %0, align 4, !tbaa !59, !alias.scope !487
  %i.jh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iw, <4 x float> %i.il, <4 x float> %i.ix) ; 2 uses
  %i.ji = shufflevector <2 x float> %i.if, <2 x float> %i.is, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.jj = insertelement <4 x float> %i.ji, float %i.hl, i64 3
  %i.jk = insertelement <4 x float> %i.jh, float 0.000000e+00, i64 3
  %i.jl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jj, <4 x float> %i.ii, <4 x float> %i.jk) ; 2 uses
  %i.jm = shufflevector <4 x float> %i.iv, <4 x float> %i.jl, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  store <4 x float> %i.jm, ptr %i.gz, align 4, !tbaa !59, !alias.scope !487
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.hd, float %i.ig, float 0.000000e+00)
  %i.jo = load float, ptr %i.im, align 4, !tbaa !59, !noalias !487 ; 2 uses
  %i.jp = extractelement <4 x float> %i.jh, i64 3
  %i.jq = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.jo, float %i.jp)
  %i.jr = insertelement <2 x float> poison, float %i.jo, i64 0
  %i.js = shufflevector <2 x float> %i.jr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jt = shufflevector <4 x float> %i.jl, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.ju = insertelement <2 x float> %i.jt, float %i.jn, i64 1
  %i.jv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.io, <2 x float> %i.js, <2 x float> %i.ju)
  %i.jw = load float, ptr %i.in, align 8, !tbaa !59, !noalias !487 ; 2 uses
  %i.jx = tail call float @llvm.fmuladd.f32(float %i.ij, float %i.jw, float %i.jq)
  store float %i.jx, ptr %i.ha, align 4, !tbaa !59, !alias.scope !487
  %i.jy = insertelement <2 x float> poison, float %i.jw, i64 0
  %i.jz = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ka = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.is, <2 x float> %i.jz, <2 x float> %i.jv)
  store <2 x float> %i.ka, ptr %i.ie, align 4, !tbaa !59, !alias.scope !487
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.j

bb.g:                                             ; preds = %.thread
  %i.kb = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
end_hunk_0
