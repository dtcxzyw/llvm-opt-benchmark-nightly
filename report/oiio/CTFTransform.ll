inline.NumInlined: 3285
inline.NumDeleted: 896
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriter12writeContentEv:bb.a
  %5 = alloca %"struct.std::pair", align 8        ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca [20 x double], align 16           ; 23 uses
  %i.b = alloca [16 x double], align 16           ; 13 uses
  %i.c = alloca [12 x double], align 16           ; 14 uses
  %i.d = alloca [9 x double], align 16            ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.e, @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriter12writeContentEv:bb.a
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !227
  %i.ff = invoke noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %i.fe)
          to label %bb.at unwind label %bb.bb     ; 8 uses

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriter12writeContentEv:bb.a
          to label %bb.au unwind label %bb.bc

bb.au:                                            ; preds = %bb.at
  %i.fj = fdiv double %i.ff, %i.fi                ; 22 uses
  %i.fk = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_512MatrixOpData8hasAlphaEv(ptr noundef nonnull align 8 dereferenceable(260) %i.bp)
          to label %bb.av unwind label %bb.bc

end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriter12writeContentEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.fm = load ptr, ptr %i.fb, align 8, !tbaa !237 ; 14 uses
  %i.fn = load <2 x double>, ptr %i.fm, align 8, !tbaa !163
  %i.fo = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fq = fmul <2 x double> %i.fp, %i.fn
  store <2 x double> %i.fq, ptr %i.a, align 16, !tbaa !163
end_hunk_3
begin_hunk_4_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriter12writeContentEv:bb.a
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !163
  %9 = fmul double %i.fj, %i.gm
  store double %9, ptr %i.gk, align 16, !tbaa !163
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %11 = getelementptr inbounds nuw i8, ptr %i.bp, i64 224
  %12 = load double, ptr %11, align 8, !tbaa !163
  %13 = fmul double %i.ff, %12
  store double %13, ptr %10, align 8, !tbaa !163
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.go = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %i.gp = load double, ptr %i.go, align 8, !tbaa !163
end_hunk_4
begin_hunk_5_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriter12writeContentEv:bb.a
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fm, i64 88
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !163
  %14 = fmul double %i.fj, %i.hb
  store double %14, ptr %i.gz, align 8, !tbaa !163
  %15 = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %16 = getelementptr inbounds nuw i8, ptr %i.bp, i64 232
  %17 = load double, ptr %16, align 8, !tbaa !163
  %18 = fmul double %i.ff, %17
  store double %18, ptr %15, align 16, !tbaa !163
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fm, i64 96
  %i.he = load double, ptr %i.hd, align 8, !tbaa !163
end_hunk_5
begin_hunk_6_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriter12writeContentEv:bb.a
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fm, i64 120
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !163
  %19 = fmul double %i.fj, %i.hq
  store double %19, ptr %i.ho, align 16, !tbaa !163
  %20 = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %21 = getelementptr inbounds nuw i8, ptr %i.bp, i64 240
  %22 = load double, ptr %21, align 8, !tbaa !163
  %23 = fmul double %i.ff, %22
  store double %23, ptr %20, align 8, !tbaa !163
  %i.hr = load ptr, ptr %i.es, align 8, !tbaa !211, !nonnull !96, !align !212
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_111WriteValuesIPKddEEvRNS_12XmlFormatterET_S6_jNS_8BitDepthEjT0_(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, ptr noundef %i.a, ptr noundef %i.hs, i32 noundef 5)
end_hunk_6
begin_hunk_7_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriter12writeContentEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.jr = load ptr, ptr %i.fb, align 8, !tbaa !237 ; 6 uses
  %i.js = load <2 x double>, ptr %i.jr, align 8, !tbaa !163
  %i.jt = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.ju = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.jv = fmul <2 x double> %i.ju, %i.js
  store <2 x double> %i.jv, ptr %i.c, align 16, !tbaa !163
  %i.jw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !163
  %24 = fmul double %i.fj, %i.jy
  store double %24, ptr %i.jw, align 16, !tbaa !163
  %25 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %26 = load double, ptr %i.fc, align 8, !tbaa !163
  %27 = fmul double %i.ff, %26
  store double %27, ptr %25, align 8, !tbaa !163
  %i.jz = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %i.kb = load <2 x double>, ptr %i.ka, align 8, !tbaa !163
end_hunk_7
begin_hunk_8_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriter12writeContentEv:bb.a
  %i.kd = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !163
  %28 = fmul double %i.fj, %i.kf
  store double %28, ptr %i.kd, align 16, !tbaa !163
  %29 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %30 = getelementptr inbounds nuw i8, ptr %i.bp, i64 224
  %31 = load double, ptr %30, align 8, !tbaa !163
  %32 = fmul double %i.ff, %31
  store double %32, ptr %29, align 8, !tbaa !163
  %i.kg = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jr, i64 64
  %i.ki = load <2 x double>, ptr %i.kh, align 8, !tbaa !163
end_hunk_8
begin_hunk_9_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriter12writeContentEv:bb.a
  %i.kk = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jr, i64 80
  %i.km = load double, ptr %i.kl, align 8, !tbaa !163
  %33 = fmul double %i.fj, %i.km
  store double %33, ptr %i.kk, align 16, !tbaa !163
  %34 = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %35 = getelementptr inbounds nuw i8, ptr %i.bp, i64 232
  %36 = load double, ptr %35, align 8, !tbaa !163
  %37 = fmul double %i.ff, %36
  store double %37, ptr %34, align 8, !tbaa !163
  %i.kn = load ptr, ptr %i.es, align 8, !tbaa !211, !nonnull !96, !align !212
  %i.ko = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_111WriteValuesIPKddEEvRNS_12XmlFormatterET_S6_jNS_8BitDepthEjT0_(ptr noundef nonnull align 8 dereferenceable(16) %i.kn, ptr noundef %i.c, ptr noundef %i.ko, i32 noundef 4)
end_hunk_9
begin_hunk_10_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriter12writeContentEv:bb.a
  %i.kq = load ptr, ptr %i.fb, align 8, !tbaa !237 ; 6 uses
  %i.kr = load <2 x double>, ptr %i.kq, align 8, !tbaa !163
  %i.ks = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.kt = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ku = fmul <2 x double> %i.kt, %i.kr
  store <2 x double> %i.ku, ptr %i.d, align 16, !tbaa !163
  %i.kv = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !163
  %38 = fmul double %i.fj, %i.kx
  store double %38, ptr %i.kv, align 16, !tbaa !163
  %39 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %40 = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %41 = load <2 x double>, ptr %40, align 8, !tbaa !163
  %i.ky = fmul <2 x double> %i.kt, %41
  store <2 x double> %i.ky, ptr %39, align 8, !tbaa !163
  %i.kz = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.la = getelementptr inbounds nuw i8, ptr %i.kq, i64 48
  %42 = load double, ptr %i.la, align 8, !tbaa !163
  %43 = fmul double %i.fj, %42
  store double %43, ptr %i.kz, align 8, !tbaa !163
  %i.lb = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kq, i64 64
  %i.ld = load <2 x double>, ptr %i.lc, align 8, !tbaa !163
end_hunk_10
