Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/COpenGLExtensionHandler?download=true
inline.NumInlined: 862
inline.NumDeleted: 35
begin_hunk_0_@_ZN5video23COpenGLExtensionHandler14initExtensionsEPNS_15IContextManagerEb:bb.a
  %i.ecp = trunc i32 %i.eco to i8
  %i.ecq = getelementptr inbounds nuw i8, ptr %0, i64 555
  store i8 %i.ecp, ptr %i.ecq, align 1, !tbaa !211
  br label %bb.rf

bb.rf:                                            ; preds = %.sink.split, %bb.re
  %i.ecr = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.ecs = load i8, ptr %i.ecr, align 1, !tbaa !21, !range !24, !noundef !25
  %i.ect = trunc nuw i8 %i.ecs to i1
  br i1 %i.ect, label %.sink.split3162, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.ecu = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ecv = load i8, ptr %i.ecu, align 8, !tbaa !21, !range !24, !noundef !25
  %i.ecw = trunc nuw i8 %i.ecv to i1
  br i1 %i.ecw, label %.sink.split3162, label %bb.rh

.sink.split3162:                                  ; preds = %bb.rg, %bb.rf
  call void @glGetIntegerv(i32 noundef 36063, ptr noundef nonnull %i.dq)
  %i.ecx = load i32, ptr %i.dq, align 4, !tbaa !208
  %i.ecy = trunc i32 %i.ecx to i8
  %i.ecz = getelementptr inbounds nuw i8, ptr %0, i64 554
  store i8 %i.ecy, ptr %i.ecz, align 2, !tbaa !212
  br label %bb.rh

bb.rh:                                            ; preds = %.sink.split3162, %bb.rg
  %i.eda = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @glGetFloatv(i32 noundef 33902, ptr noundef nonnull %i.eda)
  %i.edb = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @glGetFloatv(i32 noundef 33901, ptr noundef nonnull %i.edb)
  %i.edc = getelementptr inbounds nuw i8, ptr %0, i64 36
  call void @glGetFloatv(i32 noundef 2850, ptr noundef nonnull %i.edc)
  %i.edd = getelementptr inbounds nuw i8, ptr %0, i64 44
  call void @glGetFloatv(i32 noundef 2834, ptr noundef nonnull %i.edd)
  %i.ede = load i16, ptr %i.ef, align 4, !tbaa !27
  %i.edf = icmp ugt i16 %i.ede, 199
  br i1 %i.edf, label %bb.ri, label %bb.rk

bb.ri:                                            ; preds = %bb.rh
  %i.edg = call i32 @glGetError()                 ; 0 uses
  %i.edh = call ptr @glGetString(i32 noundef 35724)
  %i.edi = call i32 @glGetError()
  %i.edj = icmp eq i32 %i.edi, 1280
  br i1 %i.edj, label %.sink.split3165, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.edk = call double @strtod(ptr noundef nonnull captures(none) %i.edh, ptr noundef null) #13, !inline_history !34
  %i.edl = fptrunc double %i.edk to float         ; 2 uses
  %i.edm = call float @llvm.floor.f32(float %i.edl) ; 2 uses
  %i.edn = fptosi float %i.edm to i32
  %i.edo = mul nsw i32 %i.edn, 100
  %i.edp = fsub float %i.edl, %i.edm
  %i.edq = fmul float %i.edp, 1.000000e+01
  %i.edr = fadd float %i.edq, 5.000000e-01
  %i.eds = call noundef float @llvm.floor.f32(float %i.edr)
  %i.edt = fptosi float %i.eds to i32
  %i.edu = add nsw i32 %i.edo, %i.edt
  %i.edv = trunc i32 %i.edu to i16
  br label %.sink.split3165

.sink.split3165:                                  ; preds = %bb.ri, %bb.rj
  %.sink = phi i16 [ %i.edv, %bb.rj ], [ 100, %bb.ri ]
  %i.edw = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i16 %.sink, ptr %i.edw, align 2, !tbaa !213
  br label %bb.rk

bb.rk:                                            ; preds = %.sink.split3165, %bb.rh
  %i.edx = load ptr, ptr %i.fu, align 8, !tbaa !45
  %.not696 = icmp eq ptr %i.edx, null
  br i1 %.not696, label %bb.rm, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.edy = load ptr, ptr %i.gj, align 8, !tbaa !46
  %.not697 = icmp eq ptr %i.edy, null
  br i1 %.not697, label %bb.rm, label %bb.rn

bb.rm:                                            ; preds = %bb.rl, %bb.rk
  %i.edz = getelementptr inbounds nuw i8, ptr %0, i64 556
  store i8 1, ptr %i.edz, align 4, !tbaa !30
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.169, i32 noundef 2)
  br label %bb.ro

bb.rn:                                            ; preds = %bb.rl
  %i.eea = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 2 uses
  %i.eeb = load i8, ptr %i.eea, align 4, !tbaa !8
  %.sroa.speculated = call i8 @llvm.umin.i8(i8 %i.eeb, i8 4)
  store i8 %.sroa.speculated, ptr %i.eea, align 4, !tbaa !30
  br label %bb.ro

bb.ro:                                            ; preds = %bb.rn, %bb.rm
  %i.eec = getelementptr inbounds nuw i8, ptr %0, i64 158
  %i.eed = load i8, ptr %i.eec, align 2, !tbaa !21, !range !24, !noundef !25
  %i.eee = trunc nuw i8 %i.eed to i1
  br i1 %i.eee, label %bb.rp, label %bb.rr

bb.rp:                                            ; preds = %bb.ro
  %i.eef = load ptr, ptr %i.bos, align 8, !tbaa !158 ; 2 uses
  %.not.i = icmp eq ptr %i.eef, null
  br i1 %.not.i, label %_ZN5video23COpenGLExtensionHandler15extGlGetQueryivEjjPi.exit, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  call void %i.eef(i32 noundef 35092, i32 noundef 34916, ptr noundef nonnull %i.dq), !inline_history !37
  br label %_ZN5video23COpenGLExtensionHandler15extGlGetQueryivEjjPi.exit

_ZN5video23COpenGLExtensionHandler15extGlGetQueryivEjjPi.exit: ; preds = %bb.rp, %bb.rq
  %i.eeg = load i32, ptr %i.dq, align 4, !tbaa !208
  %i.eeh = icmp sgt i32 %i.eeg, 0
  %i.eei = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eej = zext i1 %i.eeh to i8
  store i8 %i.eej, ptr %i.eei, align 8, !tbaa !214
  br label %bb.ru

bb.rr:                                            ; preds = %bb.ro
  %i.eek = getelementptr inbounds nuw i8, ptr %0, i64 415
  %i.eel = load i8, ptr %i.eek, align 1, !tbaa !21, !range !24, !noundef !25
  %i.eem = trunc nuw i8 %i.eel to i1
  br i1 %i.eem, label %bb.rs, label %bb.rt

bb.rs:                                            ; preds = %bb.rr
  call void @glGetIntegerv(i32 noundef 34916, ptr noundef nonnull %i.dq)
  %i.een = load i32, ptr %i.dq, align 4, !tbaa !208
  %i.eeo = icmp sgt i32 %i.een, 0
  %i.eep = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eeq = zext i1 %i.eeo to i8
  store i8 %i.eeq, ptr %i.eep, align 8, !tbaa !214
  br label %bb.ru

bb.rt:                                            ; preds = %bb.rr
  %i.eer = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.eer, align 8, !tbaa !214
  br label %bb.ru

bb.ru:                                            ; preds = %bb.rs, %bb.rt, %_ZN5video23COpenGLExtensionHandler15extGlGetQueryivEjjPi.exit
  %i.ees = load i16, ptr %i.ef, align 4, !tbaa !27
  %i.eet = icmp ugt i16 %i.ees, 103
  br i1 %i.eet, label %bb.ry, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.eeu = getelementptr inbounds nuw i8, ptr %0, i64 267
  %i.eev = load i8, ptr %i.eeu, align 1, !tbaa !21, !range !24, !noundef !25
  %i.eew = trunc nuw i8 %i.eev to i1
  br i1 %i.eew, label %bb.ry, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.eex = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.eey = load i8, ptr %i.eex, align 4, !tbaa !21, !range !24, !noundef !25
  %i.eez = trunc nuw i8 %i.eey to i1
  br i1 %i.eez, label %bb.ry, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.efa = getelementptr inbounds nuw i8, ptr %0, i64 266
  %i.efb = load i8, ptr %i.efa, align 2, !tbaa !21, !range !24, !noundef !25
  br label %bb.ry

bb.ry:                                            ; preds = %bb.rx, %bb.rw, %bb.rv, %bb.ru
  %i.efc = phi i8 [ 1, %bb.rw ], [ 1, %bb.rv ], [ 1, %bb.ru ], [ %i.efb, %bb.rx ]
  %i.efd = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i8 %i.efc, ptr %i.efd, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq) #13
  ret void

bb.rz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2321, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2318, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2315, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2309, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2303, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2300, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2297, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2294, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2291, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2288, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2273, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2264, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2255, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2249, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2240, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2222, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2186, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2171, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2099, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2096, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2093, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2090, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2087, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2084, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2081, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2078, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2075, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2072, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2069, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2066, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2063, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2060, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2057, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2054, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2051, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2048, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2045, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2042, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2039, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2036, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2033, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2030, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2027, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2024, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2021, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2018, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2015, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2012, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2009, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2006, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2003, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2000, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1997, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1994, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1991, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1988, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1982, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1973, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1970, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1967, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1964, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1961, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1958, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1955, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1952, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1946, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1943, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1940, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1937, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1934, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1931, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1928, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1925, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1922, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1919, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1916, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1913, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1910, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1907, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1904, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1901, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1898, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1895, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1892, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1889, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1886, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1883, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1880, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1877, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1871, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1868, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1865, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1862, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1859, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1856, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1853, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1850, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1847, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1844, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1841, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1838, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1835
  %.pn693.pn = phi { ptr, i32 } [ %.pn693, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2321 ], [ %i.eae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2318 ], [ %.pn689, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2315 ], [ %.pn687, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2312 ], [ %.pn685, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2309 ], [ %.pn683, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2306 ], [ %i.dzb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2303 ], [ %.pn679, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2300 ], [ %i.dyq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2297 ], [ %.pn675, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2294 ], [ %.pn673, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2291 ], [ %i.dxz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2288 ], [ %.pn669, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2285 ], [ %.pn667, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2282 ], [ %.pn665, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2279 ], [ %.pn663, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2276 ], [ %.pn661, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2273 ], [ %.pn659, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2270 ], [ %.pn657, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2267 ], [ %.pn655, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2264 ], [ %.pn653, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2261 ], [ %.pn651, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2258 ], [ %.pn649, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2255 ], [ %.pn647, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2252 ], [ %.pn645, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2249 ], [ %.pn643, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2246 ], [ %.pn641, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2243 ], [ %.pn639, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2240 ], [ %.pn637, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2237 ], [ %i.dtw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2234 ], [ %.pn633, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2231 ], [ %.pn631, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2228 ], [ %.pn629, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2225 ], [ %.pn627, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2222 ], [ %.pn625, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2219 ], [ %.pn623, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2216 ], [ %i.dsh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2213 ], [ %.pn619, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2210 ], [ %.pn617, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2207 ], [ %.pn615, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2204 ], [ %.pn613, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2201 ], [ %.pn611, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2198 ], [ %.pn609, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2195 ], [ %.pn607, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2192 ], [ %.pn605, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2189 ], [ %.pn603, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2186 ], [ %.pn601, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2183 ], [ %.pn599, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2180 ], [ %.pn597, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2177 ], [ %i.dpi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2174 ], [ %i.dpd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2171 ], [ %i.doy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2168 ], [ %i.dot, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2165 ], [ %.pn587, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2162 ], [ %i.doi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2159 ], [ %.pn583, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2156 ], [ %.pn581, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2153 ], [ %.pn579, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2150 ], [ %.pn577, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2147 ], [ %.pn575, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2144 ], [ %.pn573, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2141 ], [ %i.dmt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2138 ], [ %.pn569, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2135 ], [ %i.dmi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2132 ], [ %.pn565, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2129 ], [ %.pn563, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2126 ], [ %.pn561, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2123 ], [ %i.dll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2120 ], [ %i.dlg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2117 ], [ %i.dlb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2114 ], [ %.pn553, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2111 ], [ %.pn551, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2108 ], [ %.pn549, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2105 ], [ %.pn547, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2102 ], [ %.pn545, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2099 ], [ %.pn543, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2096 ], [ %.pn541, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2093 ], [ %.pn539, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2090 ], [ %.pn537, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2087 ], [ %.pn535, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2084 ], [ %.pn533, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2081 ], [ %.pn531, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2078 ], [ %.pn529, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2075 ], [ %.pn527, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2072 ], [ %.pn525, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2069 ], [ %.pn523, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2066 ], [ %.pn521, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2063 ], [ %.pn519, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2060 ], [ %.pn517, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2057 ], [ %.pn515, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2054 ], [ %.pn513, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2051 ], [ %.pn511, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2048 ], [ %.pn509, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2045 ], [ %.pn507, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2042 ], [ %.pn505, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2039 ], [ %.pn503, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2036 ], [ %.pn501, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2033 ], [ %.pn499, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2030 ], [ %.pn497, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2027 ], [ %.pn495, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2024 ], [ %.pn493, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2021 ], [ %.pn491, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2018 ], [ %.pn489, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2015 ], [ %.pn487, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2012 ], [ %.pn485, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2009 ], [ %.pn483, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2006 ], [ %.pn481, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2003 ], [ %.pn479, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2000 ], [ %.pn477, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1997 ], [ %.pn475, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1994 ], [ %.pn473, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1991 ], [ %.pn471, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1988 ], [ %.pn469, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1985 ], [ %i.day, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1982 ], [ %i.dat, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1979 ], [ %i.dao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1976 ], [ %i.daj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1973 ], [ %i.dae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1970 ], [ %i.czz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1967 ], [ %i.czu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1964 ], [ %i.czp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1961 ], [ %i.czk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1958 ], [ %i.czf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1955 ], [ %i.cza, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1952 ], [ %i.cyv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1949 ], [ %.pn443, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1946 ], [ %.pn441, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1943 ], [ %i.cye, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1940 ], [ %i.cxz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1937 ], [ %.pn435, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1934 ], [ %.pn433, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1931 ], [ %.pn431, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1928 ], [ %i.cxc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1925 ], [ %.pn427, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1922 ], [ %.pn425, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1919 ], [ %i.cwl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1916 ], [ %i.cwg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1913 ], [ %.pn419, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1910 ], [ %i.cvv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1907 ], [ %.pn415, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1904 ], [ %i.cvk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1901 ], [ %.pn411, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1898 ], [ %i.cuz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1895 ], [ %.pn407, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1892 ], [ %i.cuo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1889 ], [ %.pn403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1886 ], [ %i.cud, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1883 ], [ %.pn399, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1880 ], [ %i.cts, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1877 ], [ %.pn395, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874 ], [ %i.cth, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1871 ], [ %.pn391, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1868 ], [ %.pn389, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1865 ], [ %.pn387, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1862 ], [ %.pn385, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1859 ], [ %i.cse, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1856 ], [ %.pn381, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1853 ], [ %i.crt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1850 ], [ %.pn377, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1847 ], [ %i.cri, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1844 ], [ %.pn373, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1841 ], [ %.pn371, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1838 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1835 ]
  resume { ptr, i32 } %.pn693.pn
}

declare ptr @glGetString(i32 noundef) local_unnamed_addr #3

declare void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5video23COpenGLExtensionHandler12queryFeatureENS_22E_VIDEO_DRIVER_FEATUREE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1880) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  switch i32 %1, label %bb.aa [
    i32 0, label %bb.ab
    i32 1, label %bb.ab
    i32 2, label %bb.b
    i32 3, label %bb.ab
    i32 4, label %bb.ab
    i32 5, label %bb.c
    i32 6, label %bb.f
    i32 7, label %bb.g
    i32 16, label %bb.g
    i32 10, label %bb.h
    i32 11, label %bb.h
    i32 17, label %bb.h
    i32 14, label %bb.i
    i32 8, label %bb.i
    i32 18, label %bb.i
    i32 20, label %bb.ab
    i32 21, label %bb.j
    i32 22, label %bb.k
    i32 23, label %bb.l
    i32 25, label %bb.ab
    i32 24, label %bb.m
    i32 30, label %bb.n
    i32 26, label %bb.o
    i32 27, label %bb.p
    i32 28, label %bb.p
    i32 29, label %bb.q
    i32 31, label %bb.r
    i32 32, label %bb.s
    i32 33, label %bb.t
    i32 34, label %bb.u
    i32 35, label %bb.ab
    i32 36, label %bb.v
    i32 37, label %bb.w
    i32 38, label %bb.x
    i32 39, label %bb.y
    i32 41, label %bb.z
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.b = load i8, ptr %i.a, align 4, !tbaa !30
  %i.c = icmp ugt i8 %i.b, 1
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29, !range !24, !noundef !25
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 475
  %i.h = load i8, ptr %i.g, align 1, !tbaa !21, !range !24, !noundef !25
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.k = load i8, ptr %i.j, align 8, !range !24
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %i.i, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.ab, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.n = load i8, ptr %i.m, align 1, !tbaa !21, !range !24, !noundef !25
  %i.o = trunc nuw i8 %i.n to i1
  br label %bb.ab

bb.f:                                             ; preds = %bb.a
  %i.p = load i8, ptr %0, align 8, !tbaa !28, !range !24, !noundef !25
  %i.q = trunc nuw i8 %i.p to i1
  br label %bb.ab

bb.g:                                             ; preds = %bb.a, %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 237
  %3 = load i8, ptr %2, align 1, !tbaa !21, !range !24, !noundef !25
  %4 = trunc nuw i8 %3 to i1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 451
  %i.s = load i8, ptr %i.r, align 1, !range !24
  %i.t = trunc nuw i8 %i.s to i1
  %5 = select i1 %4, i1 true, i1 %i.t
  br label %bb.ab

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 133
  %7 = load i8, ptr %6, align 1, !tbaa !21, !range !24, !noundef !25
  %8 = trunc nuw i8 %7 to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.v = load i8, ptr %i.u, align 8, !range !24
  %i.w = trunc nuw i8 %i.v to i1
  %9 = select i1 %8, i1 true, i1 %i.w
  br label %bb.ab

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.y = load i16, ptr %i.x, align 4, !tbaa !27
  %i.z = icmp ugt i16 %i.y, 199
  br label %bb.ab

bb.j:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 214
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !21, !range !24, !noundef !25
  %i.ac = trunc nuw i8 %i.ab to i1
  br label %bb.ab

bb.k:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !21, !range !24, !noundef !25
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.ah = load i8, ptr %i.ag, align 1, !range !24
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = select i1 %i.af, i1 true, i1 %i.ai
  br label %bb.ab

bb.l:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !21, !range !24, !noundef !25
  %i.am = trunc nuw i8 %i.al to i1
  br label %bb.ab

bb.m:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !21, !range !24, !noundef !25
  %i.ap = trunc nuw i8 %i.ao to i1
  br label %bb.ab

bb.n:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 139
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !21, !range !24, !noundef !25
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 290
  %i.au = load i8, ptr %i.at, align 2, !range !24
  %i.av = trunc nuw i8 %i.au to i1
  %or.cond6 = select i1 %i.as, i1 true, i1 %i.av
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 405
  %i.ax = load i8, ptr %i.aw, align 1, !range !24
  %i.ay = trunc nuw i8 %i.ax to i1
  %or.cond9 = select i1 %or.cond6, i1 true, i1 %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 406
  %i.ba = load i8, ptr %i.az, align 2, !range !24
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = select i1 %or.cond9, i1 true, i1 %i.bb
  br label %bb.ab

bb.o:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !21, !range !24, !noundef !25
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 243
  %i.bh = load i8, ptr %i.bg, align 1, !range !24
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = select i1 %i.bf, i1 true, i1 %i.bi
  br label %bb.ab

bb.p:                                             ; preds = %bb.a, %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 281
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !21, !range !24, !noundef !25
  %i.bm = trunc nuw i8 %i.bl to i1
  br label %bb.ab

bb.q:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !21, !range !24, !noundef !25
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.br = load i8, ptr %i.bq, align 1, !range !24
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = select i1 %i.bp, i1 true, i1 %i.bs
  br label %bb.ab

bb.r:                                             ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 158
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !21, !range !24, !noundef !25
  %i.bw = trunc nuw i8 %i.bv to i1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.by = load i8, ptr %i.bx, align 8, !range !24
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = select i1 %i.bw, i1 %i.bz, i1 false
  br label %bb.ab

bb.s:                                             ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cc = load i16, ptr %i.cb, align 4, !tbaa !27
  %i.cd = icmp ugt i16 %i.cc, 100
  br label %bb.ab

bb.t:                                             ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !31, !range !24, !noundef !25
  %i.cg = trunc nuw i8 %i.cf to i1
  br label %bb.ab

bb.u:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ci = load i16, ptr %i.ch, align 4, !tbaa !27
  %i.cj = icmp ugt i16 %i.ci, 103
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 265
  %i.cl = load i8, ptr %i.ck, align 1, !range !24
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = select i1 %i.cj, i1 true, i1 %i.cm
  br label %bb.ab

bb.v:                                             ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cp = load i16, ptr %i.co, align 4, !tbaa !27
  %i.cq = icmp ugt i16 %i.cp, 102
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 203
  %i.cs = load i8, ptr %i.cr, align 1, !range !24
  %i.ct = trunc nuw i8 %i.cs to i1
  %or.cond12 = select i1 %i.cq, i1 true, i1 %i.ct
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 331
  %i.cv = load i8, ptr %i.cu, align 1, !range !24
  %i.cw = trunc nuw i8 %i.cv to i1
  %i.cx = select i1 %or.cond12, i1 true, i1 %i.cw
  br label %bb.ab

bb.w:                                             ; preds = %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 171
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !21, !range !24, !noundef !25
  %i.da = trunc nuw i8 %i.cz to i1
  br label %bb.ab

bb.x:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 393
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !21, !range !24, !noundef !25
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.df = load i8, ptr %i.de, align 2, !range !24
  %i.dg = trunc nuw i8 %i.df to i1
  %i.dh = select i1 %i.dd, i1 true, i1 %i.dg
  br label %bb.ab

bb.y:                                             ; preds = %bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dj = load i16, ptr %i.di, align 4, !tbaa !27
  %i.dk = icmp ugt i16 %i.dj, 301
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 213
  %i.dm = load i8, ptr %i.dl, align 1, !range !24
  %i.dn = trunc nuw i8 %i.dm to i1
  %i.do = select i1 %i.dk, i1 true, i1 %i.dn
  br label %bb.ab

bb.z:                                             ; preds = %bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dq = load i16, ptr %i.dp, align 4, !tbaa !27
  %i.dr = icmp ugt i16 %i.dq, 299
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.dt = load i8, ptr %i.ds, align 4, !range !24
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = select i1 %i.dr, i1 true, i1 %i.du
  br label %bb.ab

bb.aa:                                            ; preds = %bb.a
  br label %bb.ab

bb.ab:                                            ; preds = %bb.c, %bb.e, %bb.d, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.b
  %.0 = phi i1 [ false, %bb.aa ], [ %i.dv, %bb.z ], [ true, %bb.a ], [ %i.c, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ %i.q, %bb.f ], [ %5, %bb.g ], [ %9, %bb.h ], [ %i.z, %bb.i ], [ true, %bb.d ], [ %i.ac, %bb.j ], [ %i.aj, %bb.k ], [ %i.am, %bb.l ], [ %i.o, %bb.e ], [ %i.ap, %bb.m ], [ %i.bc, %bb.n ], [ %i.bj, %bb.o ], [ %i.bm, %bb.p ], [ %i.bt, %bb.q ], [ %i.ca, %bb.r ], [ %i.cd, %bb.s ], [ %i.cg, %bb.t ], [ %i.cn, %bb.u ], [ false, %bb.c ], [ %i.cx, %bb.v ], [ %i.da, %bb.w ], [ %i.dh, %bb.x ], [ %i.do, %bb.y ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}

declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @glGetError() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5video23COpenGLExtensionHandler10getFeatureEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(1880) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video18COpenGLCoreFeatureD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video18COpenGLCoreFeatureD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"bool", !4, i64 0}
!10 = !{!"float", !4, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"_ZTSN5video18COpenGLCoreFeatureE", !9, i64 8, !9, i64 9, !4, i64 10, !4, i64 11, !4, i64 12, !12, i64 16}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"_ZTSN5video23COpenGLExtensionHandlerE", !9, i64 0, !9, i64 1, !4, i64 2, !4, i64 3, !5, i64 4, !5, i64 8, !5, i64 12, !10, i64 16, !4, i64 20, !4, i64 28, !4, i64 36, !4, i64 44, !11, i64 52, !11, i64 54, !9, i64 56, !9, i64 57, !4, i64 58, !13, i64 544, !14, i64 568, !14, i64 576, !14, i64 584, !14, i64 592, !14, i64 600, !14, i64 608, !14, i64 616, !14, i64 624, !14, i64 632, !14, i64 640, !14, i64 648, !14, i64 656, !14, i64 664, !14, i64 672, !14, i64 680, !14, i64 688, !14, i64 696, !14, i64 704, !14, i64 712, !14, i64 720, !14, i64 728, !14, i64 736, !14, i64 744, !14, i64 752, !14, i64 760, !14, i64 768, !14, i64 776, !14, i64 784, !14, i64 792, !14, i64 800, !14, i64 808, !14, i64 816, !14, i64 824, !14, i64 832, !14, i64 840, !14, i64 848, !14, i64 856, !14, i64 864, !14, i64 872, !14, i64 880, !14, i64 888, !14, i64 896, !14, i64 904, !14, i64 912, !14, i64 920, !14, i64 928, !14, i64 936, !14, i64 944, !14, i64 952, !14, i64 960, !14, i64 968, !14, i64 976, !14, i64 984, !14, i64 992, !14, i64 1000, !14, i64 1008, !14, i64 1016, !14, i64 1024, !14, i64 1032, !14, i64 1040, !14, i64 1048, !14, i64 1056, !14, i64 1064, !14, i64 1072, !14, i64 1080, !14, i64 1088, !14, i64 1096, !14, i64 1104, !14, i64 1112, !14, i64 1120, !14, i64 1128, !14, i64 1136, !14, i64 1144, !14, i64 1152, !14, i64 1160, !14, i64 1168, !14, i64 1176, !14, i64 1184, !14, i64 1192, !14, i64 1200, !14, i64 1208, !14, i64 1216, !14, i64 1224, !14, i64 1232, !14, i64 1240, !14, i64 1248, !14, i64 1256, !14, i64 1264, !14, i64 1272, !14, i64 1280, !14, i64 1288, !14, i64 1296, !14, i64 1304, !14, i64 1312, !14, i64 1320, !14, i64 1328, !14, i64 1336, !14, i64 1344, !14, i64 1352, !14, i64 1360, !14, i64 1368, !14, i64 1376, !14, i64 1384, !14, i64 1392, !14, i64 1400, !14, i64 1408, !14, i64 1416, !14, i64 1424, !14, i64 1432, !14, i64 1440, !14, i64 1448, !14, i64 1456, !14, i64 1464, !14, i64 1472, !14, i64 1480, !14, i64 1488, !14, i64 1496, !14, i64 1504, !14, i64 1512, !14, i64 1520, !14, i64 1528, !14, i64 1536, !14, i64 1544, !14, i64 1552, !14, i64 1560, !14, i64 1568, !14, i64 1576, !14, i64 1584, !14, i64 1592, !14, i64 1600, !14, i64 1608, !14, i64 1616, !14, i64 1624, !14, i64 1632, !14, i64 1640, !14, i64 1648, !14, i64 1656, !14, i64 1664, !14, i64 1672, !14, i64 1680, !14, i64 1688, !14, i64 1696, !14, i64 1704, !14, i64 1712, !14, i64 1720, !14, i64 1728, !14, i64 1736, !14, i64 1744, !14, i64 1752, !14, i64 1760, !14, i64 1768, !14, i64 1776, !14, i64 1784, !14, i64 1792, !14, i64 1800, !14, i64 1808, !14, i64 1816, !14, i64 1824, !14, i64 1832, !14, i64 1840, !14, i64 1848, !14, i64 1856, !14, i64 1864, !14, i64 1872}
!16 = !{!15, !5, i64 4}
!17 = !{!15, !5, i64 8}
!18 = !{!15, !5, i64 12}
!19 = !{!"vtable pointer", !3, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!9, !9, i64 0}
!22 = !{!"p1 omnipotent char", !14, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{i8 0, i8 2}
!25 = !{}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!15, !11, i64 52}
!28 = !{!15, !9, i64 0}
!29 = !{!15, !9, i64 57}
!30 = !{!15, !4, i64 556}
!31 = !{!15, !9, i64 552}
!32 = !{!10, !10, i64 0}
!33 = distinct !{!33, !26}
!34 = distinct !{null}
!35 = distinct !{!35, !26}
!36 = distinct !{!36, !26}
!37 = distinct !{null}
!38 = !{!15, !9, i64 1}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!40 = !{!39, !22, i64 0}
!41 = !{!12, !12, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !39, i64 0, !12, i64 8, !4, i64 16}
!43 = !{!42, !22, i64 0}
!44 = !{!42, !12, i64 8}
!45 = !{!15, !14, i64 576}
!46 = !{!15, !14, i64 584}
!47 = !{!15, !14, i64 592}
!48 = !{!15, !14, i64 600}
!49 = !{!15, !14, i64 608}
!50 = !{!15, !14, i64 616}
!51 = !{!15, !14, i64 640}
!52 = !{!15, !14, i64 648}
!53 = !{!15, !14, i64 624}
!54 = !{!15, !14, i64 632}
!55 = !{!15, !14, i64 656}
!56 = !{!15, !14, i64 664}
!57 = !{!15, !14, i64 776}
!58 = !{!15, !14, i64 672}
!59 = !{!15, !14, i64 784}
!60 = !{!15, !14, i64 680}
!61 = !{!15, !14, i64 792}
!62 = !{!15, !14, i64 688}
!63 = !{!15, !14, i64 728}
!64 = !{!15, !14, i64 696}
!65 = !{!15, !14, i64 800}
!66 = !{!15, !14, i64 704}
!67 = !{!15, !14, i64 808}
!68 = !{!15, !14, i64 712}
!69 = !{!15, !14, i64 736}
!70 = !{!15, !14, i64 720}
!71 = !{!15, !14, i64 744}
!72 = !{!15, !14, i64 752}
!73 = !{!15, !14, i64 768}
!74 = !{!15, !14, i64 760}
!75 = !{!15, !14, i64 816}
!76 = !{!15, !14, i64 824}
!77 = !{!15, !14, i64 832}
!78 = !{!15, !14, i64 840}
!79 = !{!15, !14, i64 848}
!80 = !{!15, !14, i64 856}
!81 = !{!15, !14, i64 864}
!82 = !{!15, !14, i64 872}
!83 = !{!15, !14, i64 880}
!84 = !{!15, !14, i64 888}
!85 = !{!15, !14, i64 896}
!86 = !{!15, !14, i64 904}
!87 = !{!15, !14, i64 912}
!88 = !{!15, !14, i64 920}
!89 = !{!15, !14, i64 928}
!90 = !{!15, !14, i64 936}
!91 = !{!15, !14, i64 944}
!92 = !{!15, !14, i64 952}
!93 = !{!15, !14, i64 960}
!94 = !{!15, !14, i64 968}
!95 = !{!15, !14, i64 976}
!96 = !{!15, !14, i64 984}
!97 = !{!15, !14, i64 992}
!98 = !{!15, !14, i64 1000}
!99 = !{!15, !14, i64 1008}
!100 = !{!15, !14, i64 1016}
!101 = !{!15, !14, i64 1024}
!102 = !{!15, !14, i64 1032}
!103 = !{!15, !14, i64 1040}
!104 = !{!15, !14, i64 1048}
!105 = !{!15, !14, i64 1056}
!106 = !{!15, !14, i64 1064}
!107 = !{!15, !14, i64 1072}
!108 = !{!15, !14, i64 1080}
!109 = !{!15, !14, i64 1088}
!110 = !{!15, !14, i64 1096}
!111 = !{!15, !14, i64 1104}
!112 = !{!15, !14, i64 1112}
!113 = !{!15, !14, i64 1120}
!114 = !{!15, !14, i64 1128}
!115 = !{!15, !14, i64 1136}
!116 = !{!15, !14, i64 1144}
!117 = !{!15, !14, i64 1152}
!118 = !{!15, !14, i64 1160}
!119 = !{!15, !14, i64 1168}
!120 = !{!15, !14, i64 1176}
!121 = !{!15, !14, i64 1184}
!122 = !{!15, !14, i64 1192}
!123 = !{!15, !14, i64 1200}
!124 = !{!15, !14, i64 1208}
!125 = !{!15, !14, i64 1216}
!126 = !{!15, !14, i64 1224}
!127 = !{!15, !14, i64 1232}
end_hunk_0
