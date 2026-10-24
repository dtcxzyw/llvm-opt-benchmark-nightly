Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_build_config-c843d7c81fc7bf05.pyo3_build_config.db2c6f4b3410c5b0-cgu.0?download=true
inline.NumInlined: 186
inline.NumDeleted: 44
begin_hunk_0_@_RNvMs8_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB5_24InterpreterConfigBuilder8finalize:bb.a
  br label %bb.ap

bb.ap:                                            ; preds = %bb.as, %bb.ao
  ret void

bb.aq:                                            ; preds = %bb.v, %bb.w, %bb.ah, %bb.h, %bb.t, %bb.n
  %.sroa.869.0 = phi i32 [ %.sroa.284.0.copyload, %bb.t ], [ %.sroa.2.0.copyload82, %bb.n ], [ %.sroa.286.0.copyload, %bb.ah ], [ %.sroa.2.0.copyload, %bb.h ], [ %.sroa.2.0.copyload, %bb.w ], [ %.sroa.2.0.copyload, %bb.v ] ; 2 uses
  %.sroa.0.0 = phi i8 [ %.sroa.083.0.copyload, %bb.t ], [ %.sroa.080.0.copyload, %bb.n ], [ %.sroa.085.0.copyload, %bb.ah ], [ %.sroa.011.0.copyload, %bb.h ], [ 0, %bb.w ], [ 1, %bb.v ] ; 2 uses
  %i.bi = trunc nuw i8 %.sroa.0.0 to i1
  %.sroa.03.0.i = trunc i32 %.sroa.869.0 to i1    ; 2 uses
  br i1 %.sroa.03.0.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i64 -9223372036854775805, ptr %i.e, align 8
  %i.bj = invoke zeroext i1 @_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagE6insertB16_(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.e)
          to label %bb.as unwind label %bb.f      ; 0 uses

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bn = load i8, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 177
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 178
  %i.br = load i8, ptr %i.bq, align 2
  %or.cond = or i1 %.sroa.03.0.i, %i.bi
  %not.or.cond = xor i1 %or.cond, true
  %.sroa.019.0 = zext i1 %not.or.cond to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.018.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.018, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.018.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.018, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.018.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.018, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 179
  %i.bx = load i8, ptr %i.bw, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.018.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.018, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bz = load <2 x i32>, ptr %i.bv, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.018, i64 120, i1 false)
  store <2 x i32> %i.bz, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.bn, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 %i.bp, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 %i.br, ptr %.sroa.11.0..sroa_idx, align 2
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 179
  store i8 %.sroa.0.0, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.12.sroa.2.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %.sroa.869.0, ptr %.sroa.12.sroa.2.0..sroa.12.0..sroa_idx.sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %.sroa.019.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.bx, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i8 %i.bl, ptr %.sroa.15.0..sroa_idx, align 2
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_10BuildFlagsEBF_(ptr nonnull align 8 %i.w)
  br label %bb.ap

bb.at:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define range(i40 0, 68719476481) i40 @_RNvMs_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB4_16PythonAbiBuilder10stable_abi(i40 %0, i1 zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 3 uses
  %.sroa.4.0.extract.shift = lshr i40 %0, 32
  %.sroa.4.0.extract.trunc = trunc nuw i40 %.sroa.4.0.extract.shift to i8 ; 2 uses
  %i.i = zext i1 %1 to i8                         ; 2 uses
  store i8 %i.i, ptr %i.h, align 1
  %i.j = icmp ugt i8 %.sroa.4.0.extract.trunc, 15
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.k = phi i8 [ %.pre, %bb.g ], [ %i.i, %bb.a ]
  %.sroa.210.0 = phi i8 [ 15, %bb.g ], [ %.sroa.4.0.extract.trunc, %bb.a ]
  %.sroa.5.0.insert.ext = zext nneg i8 %.sroa.210.0 to i40
  %.sroa.5.0.insert.shift = shl nuw nsw i40 %.sroa.5.0.insert.ext, 32
  %i.l = and i40 %0, 4294901760
  %.sroa.37.0.insert.insert = or disjoint i40 %.sroa.5.0.insert.shift, %i.l
  %.sroa.26.0.insert.ext = zext i8 %i.k to i40
  %.sroa.26.0.insert.shift = shl nuw nsw i40 %.sroa.26.0.insert.ext, 8
  %.sroa.26.0.insert.insert = or disjoint i40 %.sroa.37.0.insert.insert, %.sroa.26.0.insert.shift
  ret i40 %.sroa.26.0.insert.insert

bb.c:                                             ; preds = %bb.a
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9StableAbiEB12_(ptr nonnull sret([16 x i8]) align 8 %i.d, ptr nonnull %i.h) #15
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayhECs5GPH1eSwN50_14target_lexicon(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr nonnull @264) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.n = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj72_Kj2_ECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull @265, ptr nonnull align 8 %i.e) #15 ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0
  %i.p = extractvalue { ptr, ptr } %i.n, 1
  call void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr %i.o, ptr %i.p) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsexYYUdYSQU6_5alloc6string6StringECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.g)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5GPH1eSwN50_14target_lexicon(ptr nonnull align 8 %i.g) #16
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.r = invoke { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj4_Kj1_ECs5GPH1eSwN50_14target_lexicon(ptr nonnull @8, ptr nonnull align 8 %i.b)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr %i.s, ptr %i.t)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5GPH1eSwN50_14target_lexicon(ptr nonnull align 8 %i.g)
  %.pre = load i8, ptr %i.h, align 1
  br label %bb.b

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.i:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i40 257, -65278) i40 @_RNvMs_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB4_16PythonAbiBuilder13free_threaded(i40 %0) unnamed_addr #6 {
bb.a:
  %.sroa.36.0.insert.insert = and i40 %0, -65536
  %.sroa.04.0.insert.insert = or disjoint i40 %.sroa.36.0.insert.insert, 257
  ret i40 %.sroa.04.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i40 2, -65533) i40 @_RNvMs_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB4_16PythonAbiBuilder3new(i8 %0, i8 %1, i8 %2) unnamed_addr #6 {
bb.a:
  %.sroa.5.0.insert.ext = zext i8 %2 to i40
  %.sroa.5.0.insert.shift = shl nuw i40 %.sroa.5.0.insert.ext, 32
  %.sroa.4.0.insert.ext = zext i8 %1 to i40
  %.sroa.4.0.insert.shift = shl nuw nsw i40 %.sroa.4.0.insert.ext, 24
  %.sroa.4.0.insert.insert = or disjoint i40 %.sroa.5.0.insert.shift, %.sroa.4.0.insert.shift
  %.sroa.3.0.insert.ext = zext i8 %0 to i40
  %.sroa.3.0.insert.shift = shl nuw nsw i40 %.sroa.3.0.insert.ext, 16
  %.sroa.3.0.insert.insert = or disjoint i40 %.sroa.4.0.insert.insert, %.sroa.3.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i40 %.sroa.3.0.insert.insert, 2
  ret i40 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB4_16PythonAbiBuilder8finalize(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 13)) %0, i40 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [40 x i8], align 8                ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 2 uses
  %i.g = alloca [16 x i8], align 8                ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [40 x i8], align 8                ; 2 uses
  %i.k = alloca [2 x i8], align 1                 ; 3 uses
  %i.l = alloca [5 x i8], align 8                 ; 5 uses
  store i40 %1, ptr %i.l, align 8
  %i.m = trunc i40 %1 to i8
  %i.n = lshr i40 %1, 8
  %i.o = trunc i40 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.q = lshr i40 %1, 16
  %i.r = trunc i40 %i.q to i8                     ; 2 uses
  %i.s = icmp ne i8 %i.r, 3                       ; 3 uses
  %not. = xor i1 %i.s, true
  %. = zext i1 %not. to i8
  %i.t = tail call { i1, i8 } @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonAbiKindE9unwrap_orBL_(i8 %i.m, i8 %i.o, i1 zeroext %i.s, i8 %.) #15 ; 2 uses
  %i.u = extractvalue { i1, i8 } %i.t, 0          ; 3 uses
  %i.v = extractvalue { i1, i8 } %i.t, 1          ; 3 uses
  %i.w = zext i1 %i.u to i8                       ; 2 uses
  store i8 %i.w, ptr %i.k, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.v, ptr %i.x, align 1
  %.not = xor i1 %i.u, true
  %2 = trunc nuw i8 %i.v to i1                    ; 2 uses
  %or.cond = select i1 %.not, i1 %2, i1 false
  %or.cond10 = select i1 %i.s, i1 true, i1 %or.cond
  br i1 %or.cond10, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %3 = lshr i40 %1, 32
  %4 = trunc nuw i40 %3 to i8
  %5 = lshr i40 %1, 24
  %6 = trunc i40 %5 to i8
  %or.cond9.a = select i1 %i.u, i1 %2, i1 false
  br i1 %or.cond9.a, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonAbiKindEB12_(ptr nonnull sret([16 x i8]) align 8 %i.f, ptr nonnull %i.k) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %i.y = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj73_Kj1_ECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull @266, ptr nonnull align 8 %i.g) #15 ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.y, 0
  %i.aa = extractvalue { ptr, ptr } %i.y, 1
  call void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr %i.z, ptr %i.aa) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoNtNtCsiOEEQt9hBE2_17pyo3_build_config6errors5ErrorE4intoB1p_(ptr nonnull sret([40 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i, ptr nonnull align 8 @267) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit._crit_edge, %bb.b
  %7 = phi i8 [ %.pre13, %_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit._crit_edge ], [ %4, %bb.b ]
  %8 = phi i8 [ %.pre11, %_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit._crit_edge ], [ %6, %bb.b ]
  %9 = phi i8 [ %.pre, %_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit._crit_edge ], [ %i.r, %bb.b ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.w, ptr %i.ab, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.v, ptr %.sroa.2.0..sroa_idx, align 1
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %9, ptr %.sroa.36.0..sroa_idx, align 2
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %8, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %7, ptr %.sroa.5.0..sroa_idx, align 4
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 3 ; 3 uses
  %i.ad = call i8 @_RNvXsX_NtNtCskKLDkoKarTP_4core3cmp5implshNtB7_3Ord3cmpCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull %i.ac, ptr nonnull @268) #15 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ag = call i8 @_RNvXsX_NtNtCskKLDkoKarTP_4core3cmp5implshNtB7_3Ord3cmpCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull %i.af, ptr nonnull getelementptr inbounds nuw (i8, ptr @268, i64 1)) #15
  br label %_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit

_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i.i = phi i8 [ %i.ag, %bb.g ], [ %i.ad, %bb.f ] ; 2 uses
  %.not.i = icmp ne i8 %.sroa.0.0.i.i.i, -2
  %i.ah = icmp slt i8 %.sroa.0.0.i.i.i, 0
  %.sroa.0.0.i = and i1 %.not.i, %i.ah
  br i1 %.sroa.0.0.i, label %bb.h, label %_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit._crit_edge

_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit._crit_edge: ; preds = %_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit
  %.pre = load i8, ptr %i.p, align 2
  %.pre11 = load i8, ptr %i.ac, align 1
  %.phi.trans.insert12 = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.pre13 = load i8, ptr %.phi.trans.insert12, align 4
  br label %bb.e

bb.h:                                             ; preds = %_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltB6_.exit
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionEB12_(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull %i.ac) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.ai = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj5a_Kj1_ECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull @269, ptr nonnull align 8 %i.b) #15 ; 2 uses
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0
  %i.ak = extractvalue { ptr, ptr } %i.ai, 1
  call void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr %i.aj, ptr %i.ak) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoNtNtCsiOEEQt9hBE2_17pyo3_build_config6errors5ErrorE4intoB1p_(ptr nonnull sret([40 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d, ptr nonnull align 8 @270) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsj_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB5_10BuildFlags18from_sysconfigdata(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [48 x i8], align 8                ; 2 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = tail call { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagE3newBS_(ptr nonnull align 8 @145, i64 4) #15 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  call void @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagENtNtNtNtBa_4iter6traits8iterator8Iterator6filterNCNvMsj_BL_NtBL_10BuildFlags18from_sysconfigdata0EBN_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr %i.g, ptr %i.h, ptr align 8 %1) #15
  call void @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagENCNvMsj_B1p_NtB1p_10BuildFlags18from_sysconfigdata0ENtNtNtBa_6traits8iterator8Iterator6clonedB1n_EB1r_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagENCNvMsj_B1L_NtB1L_10BuildFlags18from_sysconfigdata0EENtNtNtBa_6traits8iterator8Iterator7collectINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetB1J_EEB1N_(ptr nonnull sret([48 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = invoke zeroext i1 @_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB6_7HashSetNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagE8containsB13_EB17_(ptr nonnull align 8 %i.e, ptr nonnull align 8 @296)
          to label %bb.c unwind label %bb.b, !noalias !32

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_10BuildFlagsEBF_(ptr nonnull align 8 %i.e) #16
          to label %bb.f unwind label %bb.e, !noalias !32

bb.c:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.d, label %_RNvMsj_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB5_10BuildFlags5fixup.exit

bb.d:                                             ; preds = %bb.c
  store i64 -9223372036854775807, ptr %i.a, align 8, !noalias !32
  %i.k = invoke zeroext i1 @_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagE6insertB16_(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.a)
          to label %_RNvMsj_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB5_10BuildFlags5fixup.exit unwind label %bb.b, !noalias !32 ; 0 uses

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !32
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.j

_RNvMsj_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB5_10BuildFlags5fixup.exit: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsj_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB5_10BuildFlags3new(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  call void @_RNvMNtNtNtCsG258MDvU3F_3std11collections4hash3setINtB2_7HashSetNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagE3newB13_(ptr nonnull sret([48 x i8]) align 8 %i.a) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @_RNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_11starts_with(ptr nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @_RNvMsA_NtCsG258MDvU3F_3std2fsNtB5_8DirEntry9file_name(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %0)
  %i.c = invoke { ptr, i64 } @_RNvXs3_NtNtCsG258MDvU3F_3std3ffi6os_strNtB5_8OsStringNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.b) #16
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.c, 0
  %i.f = extractvalue { ptr, i64 } %i.c, 1
  invoke void @_RNvMsj_NtNtCsG258MDvU3F_3std3ffi6os_strNtB5_5OsStr15to_string_lossyCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.e, i64 %i.f)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.g = invoke { ptr, i64 } @_RNvXs2_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCs5GPH1eSwN50_14target_lexicon(ptr nonnull align 8 %i.a)
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.b) #16
          to label %bb.h unwind label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = extractvalue { ptr, i64 } %i.g, 0
  %i.j = extractvalue { ptr, i64 } %i.g, 1
  %i.k = invoke zeroext i1 @_RINvMNtCskKLDkoKarTP_4core3stre11starts_withReECs5GPH1eSwN50_14target_lexicon(ptr %i.i, i64 %i.j, ptr nonnull @151, i64 15)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.b)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.h, %bb.e ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs5GPH1eSwN50_14target_lexicon(ptr nonnull align 8 %i.a) #16
          to label %bb.l unwind label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs5GPH1eSwN50_14target_lexicon(ptr nonnull align 8 %i.a)
  ret i1 %i.k

bb.k:                                             ; preds = %bb.h, %bb.e, %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.l:                                             ; preds = %bb.h, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13cargo_env_var(ptr sret([24 x i8]) align 8 %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @_RINvNtCsG258MDvU3F_3std3env6var_osReECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %1, i64 %2)
  call void @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE3mapNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13cargo_env_var0EB2c_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a) #15
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @_RNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_15is_pypy_lib_dir(ptr %0, i64 %1, ptr %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  store ptr %0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i64 %1, ptr %i.g, align 8
  %i.h = load i8, ptr %2, align 1
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1
  store ptr %i.j, ptr %i.d, align 8
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayRNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_13PythonVersionEB13_(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.d) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.k = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj7_Kj1_ECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull @297, ptr nonnull align 8 %i.b) #15 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %i.m = extractvalue { ptr, ptr } %i.k, 1
  call void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr %i.l, ptr %i.m) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsexYYUdYSQU6_5alloc6string6StringE4intoCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull @298, i64 6, ptr nonnull align 8 @299) #15
  br label %bb.d
end_hunk_0
