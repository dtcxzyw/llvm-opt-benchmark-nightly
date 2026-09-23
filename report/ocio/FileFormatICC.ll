Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatICC?download=true
inline.NumInlined: 1375
inline.NumDeleted: 458
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN16OpenColorIO_v2_515LocalFileFormat20ApplyParametricCurveEftPKi:bb.a
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !71
  %i.cc = sitofp i32 %i.cb to double
  %i.cd = fmul nnan double %i.cc, f0x3EF0000000000000
  %i.ce = fptrunc double %i.cd to float
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !71
  %i.ch = sitofp i32 %i.cg to double
  %i.ci = fmul nnan double %i.ch, f0x3EF0000000000000
  %i.cj = fptrunc double %i.ci to float
  %i.ck = load i32, ptr %2, align 4, !tbaa !71
  %i.cl = sitofp i32 %i.ck to double
  %i.cm = fmul nnan double %i.cl, f0x3EF0000000000000
  %i.cn = fptrunc double %i.cm to float
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cj, float %.sroa.speculated57, float %i.ce)
  %i.cp = tail call noundef float @powf(float noundef %i.co, float noundef %i.cn) #30
  %i.cq = fadd float %i.cp, %i.bz
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !71
  %i.ct = sitofp i32 %i.cs to double
  %i.cu = fmul nnan double %i.ct, f0x3EF0000000000000
  %i.cv = fptrunc double %i.cu to float
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !71
  %i.cy = sitofp i32 %i.cx to double
  %i.cz = fmul nnan double %i.cy, f0x3EF0000000000000
  %i.da = fptrunc double %i.cz to float
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float %.sroa.speculated57, float %i.cv)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.g, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi float [ %.sroa.speculated57, %bb.a ], [ %i.bo, %bb.h ], [ 0.000000e+00, %bb.b ], [ %i.af, %bb.d ], [ %i.s, %bb.c ], [ %i.ap, %bb.e ], [ %i.bi, %bb.g ], [ %i.cq, %bb.j ], [ %i.db, %bb.k ] ; 2 uses
  %i.dc = fcmp ogt float %.0, 0.000000e+00
  %.sroa.speculated54 = select i1 %i.dc, float %.0, float 0.000000e+00 ; 2 uses
  %i.dd = fcmp ogt float %.sroa.speculated54, 1.000000e+00
  %.sroa.speculated = select i1 %i.dd, float 1.000000e+00, float %.sroa.speculated54
  ret float %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_515LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.26") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i32 %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"struct.SampleICC::IccContent", align 8 ; 14 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 13 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::allocator.0", align 1  ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZN16OpenColorIO_v2_515LocalFileFormat8ReadInfoERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN9SampleICC10IccContentE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(152) %5)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  store i32 1918392666, ptr %i.f, align 4, !tbaa !84
  %i.m = invoke noundef ptr @_ZN9SampleICC10IccContent7LoadTagERSiRK14icTagSignature(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.c unwind label %bb.f       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN9SampleICC13IccTypeReaderE, ptr nonnull @_ZTIN9SampleICC21IccXYZArrayTypeReaderE, i64 0) #30
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.f:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  br label %.body

bb.g:                                             ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %i.o, %bb.d ], [ null, %bb.c ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  store i32 1733843290, ptr %i.g, align 4, !tbaa !84
  %i.s = invoke noundef ptr @_ZN9SampleICC10IccContent7LoadTagERSiRK14icTagSignature(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %bb.h unwind label %bb.j       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = call ptr @__dynamic_cast(ptr nonnull %i.s, ptr nonnull @_ZTIN9SampleICC13IccTypeReaderE, ptr nonnull @_ZTIN9SampleICC21IccXYZArrayTypeReaderE, i64 0) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %.body

bb.k:                                             ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.u, %bb.i ], [ null, %bb.h ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  store i32 1649957210, ptr %i.h, align 4, !tbaa !84
  %i.x = invoke noundef ptr @_ZN9SampleICC10IccContent7LoadTagERSiRK14icTagSignature(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %bb.l unwind label %bb.m       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  br label %.noexc.i

bb.m:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  br label %.body

bb.n:                                             ; preds = %bb.l
  %i.aa = call ptr @__dynamic_cast(ptr nonnull %i.x, ptr nonnull @_ZTIN9SampleICC13IccTypeReaderE, ptr nonnull @_ZTIN9SampleICC21IccXYZArrayTypeReaderE, i64 0) #30 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %i.ab = icmp ne ptr %i.r, null
  %i.ac = icmp ne ptr %i.w, null
  %or.cond = select i1 %i.ab, i1 %i.ac, i1 false
  %i.ad = icmp ne ptr %i.aa, null
  %or.cond3 = select i1 %or.cond, i1 %i.ad, i1 false
  br i1 %or.cond3, label %bb.q, label %.noexc.i

.noexc.i:                                         ; preds = %.thread, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.ae, ptr %7, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store i64 34, ptr %i.e, align 8, !tbaa !56
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc unwind label %bb.o     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.af, ptr %7, align 8, !tbaa !52
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !56  ; 3 uses
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.af, ptr noundef nonnull align 1 dereferenceable(34) @.str.27, i64 34, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  store i8 0, ptr %i.ai, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  invoke void @_ZN16OpenColorIO_v2_515LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.unreachable unwind label %bb.p

.unreachable:                                     ; preds = %.noexc
  unreachable

bb.o:                                             ; preds = %.noexc.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

bb.p:                                             ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %7, align 8, !tbaa !52    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ae
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.p
  %i.an = load i64, ptr %i.ae, align 8, !tbaa !17
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190, %bb.o
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.o ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190 ], [ %i.ak, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %.body

bb.q:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !208
  %i.ar = load ptr, ptr %6, align 8, !tbaa !76    ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !208
  %i.av = insertelement <2 x i32> poison, i32 %i.aq, i64 0
  %i.aw = insertelement <2 x i32> %i.av, i32 %i.au, i64 1
  %i.ax = sitofp <2 x i32> %i.aw to <2 x double>
  %i.ay = fmul nnan <2 x double> %i.ax, splat (double f0x3EF0000000000000)
  store <2 x double> %i.ay, ptr %i.as, align 8, !tbaa !105
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !208
  %i.bb = sitofp i32 %i.ba to double
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !209
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !209
  %i.bh = insertelement <2 x i32> poison, i32 %i.be, i64 0
  %i.bi = insertelement <2 x i32> %i.bh, i32 %i.bg, i64 1
  %i.bj = sitofp <2 x i32> %i.bi to <2 x double>
  %13 = insertelement <4 x double> <double poison, double 1.000000e+00, double poison, double poison>, double %i.bb, i64 0
  %14 = shufflevector <2 x double> %i.bj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %15 = shufflevector <4 x double> %13, <4 x double> %14, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %16 = fmul nnan <4 x double> %15, <double f0x3EF0000000000000, double 0.000000e+00, double f0x3EF0000000000000, double f0x3EF0000000000000>
  store <4 x double> %16, ptr %i.bc, align 8, !tbaa !105
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %17 = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !210
  %i.bn = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !210
  %i.bp = insertelement <2 x i32> poison, i32 %i.bm, i64 0
  %i.bq = insertelement <2 x i32> %i.bp, i32 %i.bo, i64 1
  %i.br = sitofp <2 x i32> %i.bq to <2 x double>
  %18 = shufflevector <2 x double> %i.br, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %19 = load <2 x i32>, ptr %i.bk, align 4, !tbaa !71
  %20 = sitofp <2 x i32> %19 to <2 x double>      ; 2 uses
  %21 = shufflevector <2 x double> %20, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %22 = insertelement <4 x double> %21, double 1.000000e+00, i64 1
  %23 = shufflevector <4 x double> %22, <4 x double> %18, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %24 = fmul nnan <4 x double> %23, <double f0x3EF0000000000000, double 0.000000e+00, double f0x3EF0000000000000, double f0x3EF0000000000000>
  store <4 x double> %24, ptr %17, align 8, !tbaa !105
  %25 = extractelement <2 x double> %20, i64 1
  %26 = fmul nnan double %25, f0x3EF0000000000000
  %27 = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  store double %26, ptr %27, align 8, !tbaa !105
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.bt, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  store i32 1918128707, ptr %i.i, align 4, !tbaa !84
  %i.bu = invoke noundef ptr @_ZN9SampleICC10IccContent7LoadTagERSiRK14icTagSignature(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.r unwind label %bb.u       ; 5 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  store i32 1733579331, ptr %i.j, align 4, !tbaa !84
  %i.bv = invoke noundef ptr @_ZN9SampleICC10IccContent7LoadTagERSiRK14icTagSignature(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %bb.s unwind label %bb.v       ; 6 uses

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #30
  store i32 1649693251, ptr %i.k, align 4, !tbaa !84
  %i.bw = invoke noundef ptr @_ZN9SampleICC10IccContent7LoadTagERSiRK14icTagSignature(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %bb.t unwind label %bb.w       ; 7 uses

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  %i.bx = icmp ne ptr %i.bu, null
  %i.by = icmp ne ptr %i.bv, null
  %or.cond5 = and i1 %i.bx, %i.by
  %i.bz = icmp ne ptr %i.bw, null
  %or.cond7 = and i1 %or.cond5, %i.bz
  br i1 %or.cond7, label %bb.z, label %.noexc.i194

.noexc.i194:                                      ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.ca, ptr %8, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i64 33, ptr %i.d, align 8, !tbaa !56
  %i.cb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc195 unwind label %bb.x  ; 3 uses

.noexc195:                                        ; preds = %.noexc.i194
  store ptr %i.cb, ptr %8, align 8, !tbaa !52
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !56  ; 3 uses
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.cb, ptr noundef nonnull align 1 dereferenceable(33) @.str.28, i64 33, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !47
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cc
  store i8 0, ptr %i.ce, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  invoke void @_ZN16OpenColorIO_v2_515LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.unreachable272 unwind label %bb.y

.unreachable272:                                  ; preds = %.noexc195
  unreachable

bb.u:                                             ; preds = %bb.q
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  br label %.body

bb.v:                                             ; preds = %bb.r
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  br label %.body

bb.w:                                             ; preds = %bb.s
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  br label %.body

bb.x:                                             ; preds = %.noexc.i194
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

bb.y:                                             ; preds = %.noexc195
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %8, align 8, !tbaa !52    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ca
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %bb.y
  %i.cm = load i64, ptr %i.ca, align 8, !tbaa !17
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200, %bb.x
  %.pn165 = phi { ptr, i32 } [ %i.ci, %bb.x ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200 ], [ %i.cj, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.body

bb.z:                                             ; preds = %bb.t
  %i.co = load atomic i8, ptr @_ZGVZNK16OpenColorIO_v2_515LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationEE11strSameTypeB5cxx11 acquire, align 8
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.aa, label %bb.ad, !prof !211

bb.aa:                                            ; preds = %bb.z
  %i.cq = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK16OpenColorIO_v2_515LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationEE11strSameTypeB5cxx11) #30
  %.not = icmp eq i32 %i.cq, 0
  br i1 %.not, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK16OpenColorIO_v2_515LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationEE11strSameTypeB5cxx11, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ac unwind label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.cr = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZNK16OpenColorIO_v2_515LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationEE11strSameTypeB5cxx11, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK16OpenColorIO_v2_515LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationEE11strSameTypeB5cxx11) #30
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa, %bb.z
  %i.cs = load ptr, ptr %i.bu, align 8, !tbaa !21
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = invoke noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.bu)
          to label %bb.ae unwind label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.cw = load ptr, ptr %i.bv, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  br i1 %i.cv, label %bb.af, label %bb.bi

bb.af:                                            ; preds = %bb.ae
  %i.cz = invoke noundef zeroext i1 %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %bb.ag unwind label %bb.ak

bb.ag:                                            ; preds = %bb.af
  br i1 %i.cz, label %bb.ah, label %.invoke

bb.ah:                                            ; preds = %bb.ag
  %i.da = load ptr, ptr %i.bw, align 8, !tbaa !21
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = invoke noundef zeroext i1 %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.bw)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.dd, label %bb.al, label %.invoke

bb.aj:                                            ; preds = %bb.ab
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK16OpenColorIO_v2_515LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationEE11strSameTypeB5cxx11) #30
  br label %.body

bb.ak:                                            ; preds = %.invoke, %bb.bk, %bb.bi, %bb.ah, %bb.af, %bb.ad
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.al:                                            ; preds = %bb.ai
  %i.dg = call ptr @__dynamic_cast(ptr nonnull %i.bu, ptr nonnull @_ZTIN9SampleICC13IccTypeReaderE, ptr nonnull @_ZTIN9SampleICC28IccParametricCurveTypeReaderE, i64 0) #30 ; 4 uses
  %i.dh = call ptr @__dynamic_cast(ptr nonnull %i.bv, ptr nonnull @_ZTIN9SampleICC13IccTypeReaderE, ptr nonnull @_ZTIN9SampleICC28IccParametricCurveTypeReaderE, i64 0) #30 ; 4 uses
  %i.di = call ptr @__dynamic_cast(ptr nonnull %i.bw, ptr nonnull @_ZTIN9SampleICC13IccTypeReaderE, ptr nonnull @_ZTIN9SampleICC28IccParametricCurveTypeReaderE, i64 0) #30 ; 4 uses
  %i.dj = icmp ne ptr %i.dg, null
  %i.dk = icmp ne ptr %i.dh, null
  %or.cond9 = select i1 %i.dj, i1 %i.dk, i1 false
  %i.dl = icmp ne ptr %i.di, null
  %or.cond11 = select i1 %or.cond9, i1 %i.dl, i1 false
  br i1 %or.cond11, label %bb.an, label %.invoke319

bb.am:                                            ; preds = %.invoke319, %bb.ar, %bb.aq, %bb.ap
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.an:                                            ; preds = %bb.al
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 3 uses
  %i.do = load i16, ptr %i.dn, align 8, !tbaa !40 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 3 uses
  %i.dq = load i16, ptr %i.dp, align 8, !tbaa !40
  %.not175 = icmp eq i16 %i.do, %i.dq
  br i1 %.not175, label %bb.ao, label %.invoke319

bb.ao:                                            ; preds = %bb.an
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 3 uses
  %i.ds = load i16, ptr %i.dr, align 8, !tbaa !40
  %.not176 = icmp eq i16 %i.do, %i.ds
  br i1 %.not176, label %bb.ap, label %.invoke319

.invoke319:                                       ; preds = %bb.al, %bb.an, %bb.ao
  invoke void @_ZN16OpenColorIO_v2_515LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK16OpenColorIO_v2_515LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationEE11strSameTypeB5cxx11, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.cont320 unwind label %bb.am

.cont320:                                         ; preds = %.invoke319
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 10 ; 2 uses
end_hunk_0
