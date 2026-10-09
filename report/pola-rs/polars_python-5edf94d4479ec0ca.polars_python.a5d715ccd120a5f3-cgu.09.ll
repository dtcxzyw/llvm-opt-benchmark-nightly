Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.09?download=true
inline.NumInlined: 10559
inline.NumDeleted: 3096
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvMs1_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB7_11PyLazyFrame54___pymethod_scan_from_python_function_schema_function__:bb.a
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !193060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.234.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.532.0..sroa_idx, i64 56, i1 false), !dbg !193059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !193061
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !193060
  store ptr %.sroa.031.0.copyload, ptr %i.s, align 8, !dbg !193060
  store i64 1, ptr %0, align 8, !dbg !193060
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECseeLknQCOKOd_13polars_python.exit48, !dbg !193062

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !193061
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !193034
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !193055
  %i.u = load ptr, ptr %i.t, align 8, !dbg !193055, !nonnull !2739, !noundef !2739
  invoke void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noundef nonnull %i.u, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1168, i64 noundef 7)
          to label %bb.g unwind label %bb.f, !dbg !193034

bb.f:                                             ; preds = %bb.r, %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.g:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.g, align 8, !dbg !193063, !range !2795, !noundef !2739
  %i.x = trunc nuw i64 %i.w to i1, !dbg !193064
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !193065
  %.sroa.037.0.copyload = load ptr, ptr %i.y, align 8, !dbg !193065 ; 5 uses
  br i1 %i.x, label %bb.h, label %bb.i, !dbg !193064

bb.h:                                             ; preds = %bb.g
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !193066
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !193067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.240.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.538.0..sroa_idx, i64 56, i1 false), !dbg !193066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !193068
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !193067
  store ptr %.sroa.037.0.copyload, ptr %i.z, align 8, !dbg !193067
  store i64 1, ptr %0, align 8, !dbg !193067
  %.pre = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !193069
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECseeLknQCOKOd_13polars_python.exit, !dbg !193062

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !193068
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !193055
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !193055, !nonnull !2739, !noundef !2739
  invoke void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentbKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noundef nonnull %i.ab, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1170, i64 noundef 15)
          to label %bb.j unwind label %bb.v, !dbg !193037

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr %i.f, align 8, !dbg !193070, !range !2925, !noundef !2739
  %i.ad = trunc nuw i8 %i.ac to i1, !dbg !193070
  br i1 %i.ad, label %bb.q, label %bb.k, !dbg !193071

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 1, !dbg !193072
  %i.af = load i8, ptr %i.ae, align 1, !dbg !193072, !range !2925, !noundef !2739
  %i.ag = trunc nuw i8 %i.af to i1, !dbg !193072
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !193055
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !193055, !nonnull !2739, !noundef !2739
  invoke void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentbKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.ai, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1171, i64 noundef 7)
          to label %bb.l unwind label %bb.v, !dbg !193038

bb.l:                                             ; preds = %bb.k
  %i.aj = load i8, ptr %i.e, align 8, !dbg !193073, !range !2925, !noundef !2739
  %i.ak = trunc nuw i8 %i.aj to i1, !dbg !193073
  br i1 %i.ak, label %bb.q, label %bb.m, !dbg !193074

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !193075
  %i.am = load i8, ptr %i.al, align 1, !dbg !193075, !range !2925, !noundef !2739
  %i.an = trunc nuw i8 %i.am to i1, !dbg !193075
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !193076, !noalias !193039
  call void @_RNvMNtNtCs7Ga9Brpi21q_11polars_lazy5frame6pythonNtB4_9LazyFrame25scan_from_python_function(ptr noalias noundef nonnull sret([384 x i8]) align 16 captures(address) dereferenceable(384) %i.c, i64 noundef 0, ptr noundef nonnull %.sroa.031.0.copyload, ptr noundef nonnull %.sroa.037.0.copyload, i1 noundef zeroext false, i1 noundef zeroext %i.ag, i1 noundef zeroext %i.an), !dbg !193077
  %.sroa.4.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 8, !dbg !193078
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %.sroa.4.16..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(384) %i.c, i64 384, i1 false), !dbg !193078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !193079, !noalias !193039
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !193080
  store i64 0, ptr %i.d, align 16, !dbg !193081
  %.sroa.5.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !193081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %.sroa.5.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(392) %.sroa.4.i, i64 392, i1 false), !dbg !193081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !193082, !noalias !193043
  call void @_RNvMNtCsbm5zPlkZccl_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameE19create_class_objectB15_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(400) %i.d), !dbg !193083, !noalias !193045
  %i.ao = load i64, ptr %i.b, align 8, !dbg !193082, !range !2795, !noalias !193043, !noundef !2739
  %i.ap = trunc nuw i64 %i.ao to i1, !dbg !193084
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !193085
  %.sroa.553.8.copyload55 = load ptr, ptr %i.aq, align 8, !dbg !193085, !noalias !193046
  br i1 %i.ap, label %bb.n, label %bb.o, !dbg !193084

bb.n:                                             ; preds = %bb.m
  %.sroa.10.8..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !193086
  %.sroa.10.sroa.0.0.copyload61 = load i64, ptr %.sroa.10.8..sroa_idx57, align 8, !dbg !193086, !noalias !193046
  %.sroa.10.sroa.5.0..sroa.10.8..sroa_idx57.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !193086
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !193087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.sroa.5.0..sroa.10.8..sroa_idx57.sroa_idx, i64 48, i1 false), !dbg !193086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !193088, !noalias !193043
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !193087
  store i64 %.sroa.10.sroa.0.0.copyload61, ptr %.sroa.563.0..sroa_idx, align 8, !dbg !193087
  br label %bb.p, !dbg !193089

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !193088, !noalias !193043
  br label %bb.p, !dbg !193090

bb.p:                                             ; preds = %bb.o, %bb.n
  %storemerge = phi i64 [ 1, %bb.n ], [ 0, %bb.o ], !dbg !193091
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !193091
  store ptr %.sroa.553.8.copyload55, ptr %i.ar, align 8, !dbg !193091
  store i64 %storemerge, ptr %0, align 8, !dbg !193091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !193080
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECseeLknQCOKOd_13polars_python.exit48, !dbg !193092

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECseeLknQCOKOd_13polars_python.exit48: ; preds = %bb.b, %bb.u, %bb.t, %bb.d, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !193049
  ret void, !dbg !193092

bb.q:                                             ; preds = %bb.l, %bb.j
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.j ], [ %.sink.sroa.gep79, %bb.l ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !193093
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.as, ptr noundef nonnull align 8 dereferenceable(64) %.sink.sroa.phi, i64 64, i1 false), !dbg !193048
  store i64 1, ptr %0, align 8, !dbg !193093
  %i.at = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !193094 ; 3 uses
  %.val.i.i.i.i = load i64, ptr %i.at, align 8, !dbg !193095, !noundef !2739
  %i.au = icmp sgt i64 %.val.i.i.i.i, 0, !dbg !193096
  br i1 %i.au, label %bb.s, label %bb.r, !dbg !193097, !prof !3064

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.sroa.037.0.copyload)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECseeLknQCOKOd_13polars_python.exit unwind label %bb.f, !dbg !193098

bb.s:                                             ; preds = %bb.q
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.037.0.copyload) #52, !dbg !193099
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECseeLknQCOKOd_13polars_python.exit, !dbg !193100

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.s, %bb.r, %bb.h
  %.pre-phi = phi ptr [ %i.at, %bb.s ], [ %i.at, %bb.r ], [ %.pre, %bb.h ], !dbg !193069
  %.val.i.i.i.i47 = load i64, ptr %.pre-phi, align 8, !dbg !193101, !noundef !2739
  %i.av = icmp sgt i64 %.val.i.i.i.i47, 0, !dbg !193102
  br i1 %i.av, label %bb.u, label %bb.t, !dbg !193103, !prof !3064

bb.t:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECseeLknQCOKOd_13polars_python.exit
  call void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.sroa.031.0.copyload), !dbg !193104
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECseeLknQCOKOd_13polars_python.exit48, !dbg !193104

bb.u:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECseeLknQCOKOd_13polars_python.exit
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.031.0.copyload) #52, !dbg !193105
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECseeLknQCOKOd_13polars_python.exit48, !dbg !193106

bb.v:                                             ; preds = %bb.k, %bb.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECseeLknQCOKOd_13polars_python(ptr nonnull %.sroa.037.0.copyload) #54
          to label %bb.y unwind label %bb.w, !dbg !193055

bb.w:                                             ; preds = %bb.v, %bb.y
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !193107
  unreachable, !dbg !193107

bb.x:                                             ; preds = %bb.y
  resume { ptr, i32 } %.pn.ph, !dbg !193107

bb.y:                                             ; preds = %bb.f, %bb.v
  %.pn.ph = phi { ptr, i32 } [ %lpad.thr_comm, %bb.v ], [ %i.v, %bb.f ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECseeLknQCOKOd_13polars_python(ptr nonnull %.sroa.031.0.copyload) #54
          to label %bb.x unwind label %bb.w, !dbg !193055
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs2_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryTReyEEKj3a_E12get_or_allocCseeLknQCOKOd_13polars_python(ptr noundef nonnull align 8 %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !193108 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true), !dbg !193128 ; 3 uses
  %i.b = lshr exact i64 -9223372036854775808, %i.a, !dbg !193129 ; 3 uses
  %i.c = sub i64 %1, %i.b, !dbg !193130           ; 2 uses
  %i.d = sub nsw i64 58, %i.a, !dbg !193131       ; 2 uses
  %i.e = lshr i64 1152921504606846976, %i.a, !dbg !193132
  %i.f = sub i64 %i.b, %i.e, !dbg !193133
  %i.g = icmp eq i64 %i.c, %i.f, !dbg !193134
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !193134, !prof !2797

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs2_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryTReyEEKj3a_E18alloc_bucket_afterCs80wj1cxFixi_12polars_dtype(ptr noundef nonnull align 8 %0, i64 noundef %1) #56, !dbg !193135
  br label %bb.c, !dbg !193135

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = icmp ult i64 %i.d, 58, !dbg !193136
  tail call void @llvm.assume(i1 %i.h), !dbg !193137
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d, !dbg !193138 ; 2 uses
  %i.j = load atomic ptr, ptr %i.i acquire, align 8, !dbg !193139 ; 2 uses
  %i.k = icmp eq ptr %i.j, null, !dbg !193140
  br i1 %i.k, label %bb.d, label %bb.e, !dbg !193140, !prof !2797

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef ptr @_RINvNtCsaIrsFcbE0XP_6boxcar7buckets21allocate_race_and_getINtNtNtB4_3vec3raw5EntryTReyEEECs80wj1cxFixi_12polars_dtype(ptr noundef nonnull align 8 %i.i, i64 noundef %i.b) #56, !dbg !193141
  br label %bb.e, !dbg !193142

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.0.0 = phi ptr [ %i.l, %bb.d ], [ %i.j, %bb.c ], !dbg !193143
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0, i64 %i.c, !dbg !193144
  ret ptr %i.m, !dbg !193145
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs2_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryTReyEEKj3a_E13get_uncheckedCseeLknQCOKOd_13polars_python(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #14 personality ptr @rust_eh_personality !dbg !193146 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true), !dbg !193166 ; 2 uses
  %i.b = lshr exact i64 -9223372036854775808, %i.a, !dbg !193167
  %i.c = sub i64 %1, %i.b, !dbg !193168
  %i.d = sub nsw i64 58, %i.a, !dbg !193169       ; 2 uses
  %i.e = icmp ult i64 %i.d, 58, !dbg !193170
  tail call void @llvm.assume(i1 %i.e), !dbg !193171
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d, !dbg !193172
  %i.g = load atomic ptr, ptr %i.f monotonic, align 8, !dbg !193173
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.c, !dbg !193174
  ret ptr %i.h, !dbg !193175
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef align 8 ptr @_RNvMs2_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryTReyEEKj3a_E3getCseeLknQCOKOd_13polars_python(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #15 personality ptr @rust_eh_personality !dbg !193176 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true), !dbg !193194 ; 2 uses
  %i.b = lshr exact i64 -9223372036854775808, %i.a, !dbg !193195
  %i.c = sub i64 %1, %i.b, !dbg !193196
  %i.d = sub nsw i64 58, %i.a, !dbg !193197       ; 2 uses
  %i.e = icmp ult i64 %i.d, 58, !dbg !193198
  tail call void @llvm.assume(i1 %i.e), !dbg !193199
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d, !dbg !193200
  %i.g = load atomic ptr, ptr %i.f acquire, align 8, !dbg !193201 ; 2 uses
  %i.h = icmp eq ptr %i.g, null, !dbg !193202
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.c, !dbg !193202
  %.sroa.0.0 = select i1 %i.h, ptr null, ptr %i.i, !dbg !193202
  ret ptr %.sroa.0.0, !dbg !193203
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define hidden noundef range(i64 32, -9223372036854775808) i64 @_RNvMs8_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCseeLknQCOKOd_13polars_python(i64 noundef %0) unnamed_addr #16 !dbg !193204 {
bb.a:
  %i.a = icmp ult i64 %0, 9223372036854775776, !dbg !193207
  tail call void @llvm.assume(i1 %i.a), !dbg !193207
  %i.b = add nuw nsw i64 %0, 32, !dbg !193208
  ret i64 %i.b, !dbg !193209
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11into_static(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !193210 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 16               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [80 x i8], align 16               ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = load i8, ptr %1, align 16, !dbg !193445, !range !3121, !noundef !2739
  switch i8 %i.l, label %default.unreachable45 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.i
    i8 4, label %bb.j
    i8 5, label %bb.k
    i8 6, label %bb.l
    i8 7, label %bb.m
    i8 8, label %bb.n
    i8 9, label %bb.o
    i8 10, label %bb.p
    i8 11, label %bb.q
    i8 12, label %bb.r
    i8 13, label %bb.s
    i8 14, label %bb.t
    i8 15, label %bb.u
    i8 16, label %bb.v
    i8 17, label %bb.w
    i8 18, label %bb.x
    i8 19, label %bb.y
    i8 20, label %bb.z
    i8 21, label %bb.aa
    i8 22, label %bb.ab
    i8 23, label %bb.ac
    i8 24, label %bb.ad
    i8 25, label %bb.ae
    i8 26, label %bb.af
    i8 27, label %bb.ag
    i8 28, label %bb.ah
    i8 29, label %bb.ai
    i8 30, label %bb.au
    i8 31, label %bb.av
    i8 32, label %bb.aw
    i8 33, label %bb.ax
    i8 34, label %bb.ay
  ], !dbg !193446

default.unreachable45:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 16, !dbg !193447
  br label %bb.az, !dbg !193447

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !193448
  br label %bb.az, !dbg !193449

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !193450
  %i.n = load ptr, ptr %i.m, align 8, !dbg !193450, !nonnull !2739, !noundef !2739 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !193450
  %i.p = load i64, ptr %i.o, align 16, !dbg !193450, !noundef !2739 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !193451
  %i.q = icmp eq i64 %i.p, 0, !dbg !193451
  br i1 %i.q, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread24, label %bb.e, !dbg !193451

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread24: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !193452
  br label %bb.ba, !dbg !193453

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ult i64 %i.p, 25, !dbg !193454
  br i1 %i.r, label %bb.g, label %bb.f, !dbg !193454

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.i.i.i.i.i = tail call noundef range(i64 32, 0) i64 @llvm.umax.i64(i64 range(i64 25, 0) %i.p, i64 32), !dbg !193455 ; 2 uses
  %i.s = tail call noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i.i), !dbg !193456, !noalias !193400 ; 3 uses
  %i.t = icmp eq ptr %i.s, null, !dbg !193457
  br i1 %i.t, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i, label %bb.h, !dbg !193458

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !193452
  br label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread, !dbg !193459

bb.g:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.g, i8 0, i64 23, i1 false), !dbg !193460, !noalias !193401
  %i.u = trunc nuw nsw i64 %i.p to i8, !dbg !193461
  %i.v = or disjoint i8 %i.u, -64, !dbg !193462
  %.23..23..23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 23, !dbg !193462
  store i8 %i.v, ptr %.23..23..23..23..23..23..23..23..sroa_idx, align 1, !dbg !193462, !noalias !193401
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr nonnull readonly align 1 %i.n, i64 %i.p, i1 false), !dbg !193463, !noalias !193402
  %.0..0..0..0..0..sroa.02.0.copyload3.i = load ptr, ptr %i.g, align 8, !dbg !193464, !noalias !193403
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !193464
  %.8..8..8..8..8..sroa.6.0.copyload6.i = load i64, ptr %.8..8..8..8..8..sroa_idx, align 8, !dbg !193464, !noalias !193403
  %.16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !193464
  %.16..16..16..16..16..sroa.7.0.copyload9.i = load i64, ptr %.16..16..16..16..16..sroa_idx, align 8, !dbg !193464, !noalias !193403
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i, !dbg !193465

bb.h:                                             ; preds = %bb.f
  %i.w = or i64 %.sroa.0.0.i.i.i.i.i, -2882303761517117440, !dbg !193466
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.n, i64 range(i64 25, 0) %i.p, i1 false), !dbg !193467, !noalias !193404
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i, !dbg !193468

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i: ; preds = %bb.h, %bb.g
  %.sroa.02.0.i = phi ptr [ %i.s, %bb.h ], [ %.0..0..0..0..0..sroa.02.0.copyload3.i, %bb.g ], !dbg !193469
  %.sroa.6.0.i = phi i64 [ %i.p, %bb.h ], [ %.8..8..8..8..8..sroa.6.0.copyload6.i, %bb.g ], !dbg !193469
  %.sroa.7.0.i = phi i64 [ %i.w, %bb.h ], [ %.16..16..16..16..16..sroa.7.0.copyload9.i, %bb.g ], !dbg !193470 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !193452
  %i.x = and i64 %.sroa.7.0.i, -72057594037927936, !dbg !193459
  %or.cond = icmp eq i64 %i.x, -2738188573441261568, !dbg !193459
  br i1 %or.cond, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread, label %bb.ba, !dbg !193459, !prof !2868

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !193471
  br label %bb.az, !dbg !193472

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !193473
  br label %bb.az, !dbg !193474

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !193475
  br label %bb.az, !dbg !193476

bb.l:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !193477
  br label %bb.az, !dbg !193478

bb.m:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !193479
  br label %bb.az, !dbg !193480

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !193481
  br label %bb.az, !dbg !193482

bb.o:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !193483
  br label %bb.az, !dbg !193484

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !193485
  br label %bb.az, !dbg !193486

bb.q:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !193487
  br label %bb.az, !dbg !193488

bb.r:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !193489
  br label %bb.az, !dbg !193490

bb.s:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python
; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extensionNtB2_21ExtensionTypeInstanceNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvNvCsgoxMDlS32XZ_9inventory1__9into_iterNtNtCseeLknQCOKOd_13polars_python9lazyframe33Pyo3MethodsInventoryForPyOptFlagsEBJ_() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRtNtB6_5Debug3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB2_11OwnedObjectNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvNtNtCsbm5zPlkZccl_4pyo35types5tuple16array_into_tupleKj2_ECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCscgRAwXFJnXP_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCscgRAwXFJnXP_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtBa_5slice4iter4IterB14_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeINtNtNtBa_5slice4iter4IterB14_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesRRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtBa_5slice4iter4IterB14_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB15_EINtNtNtBa_5slice4iter4IterB14_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesRTjjNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5slice4iter4IterB14_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneINtB5_14SlicePartialEqBC_E17equal_same_lengthCseeLknQCOKOd_13polars_python(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENtNtBN_5clone5Clone5cloneCseeLknQCOKOd_13polars_python(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionnEENtNtBN_5clone5Clone5cloneCseeLknQCOKOd_13polars_python(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptiondEENtNtBN_5clone5Clone5cloneCseeLknQCOKOd_13polars_python(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtBN_5clone5Clone5cloneCseeLknQCOKOd_13polars_python(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderINtNtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEENtBY_4Read10read_exactB2s_(ptr noalias noundef align 8 dereferenceable(232), ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB2_15DynLiteralValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4exprINtB5_9SpecialEqNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #47

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXNtNtNtCsbm5zPlkZccl_4pyo311conversions3std6optionINtNtCscgRAwXFJnXP_4core6option6OptionyENtNtB8_10conversion12IntoPyObject13into_pyobjectCseeLknQCOKOd_13polars_python(i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils13last_non_nullINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBZ_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvYINtNtNtB4_6series15implementations10SeriesWrapINtNtB4_13chunked_array12ChunkedArrayINtNtB4_9datatypes10ObjectTypeNtNtCseeLknQCOKOd_13polars_python10conversion11ObjectValueEEENtNtB3B_12series_trait11SeriesTrait13last_non_null0EEB5p_(ptr noundef nonnull, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils14first_non_nullINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB10_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvYINtNtNtB4_6series15implementations10SeriesWrapINtNtB4_13chunked_array12ChunkedArrayINtNtB4_9datatypes10ObjectTypeNtNtCseeLknQCOKOd_13polars_python10conversion11ObjectValueEEENtNtB3D_12series_trait11SeriesTrait14first_non_null0EEB5r_(ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder18extend_from_bitmap(ptr noalias noundef align 8 dereferenceable(56), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef align 8 dereferenceable(56), i64 noundef, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder17into_opt_validity(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core6series3ops4nullNtB6_6Series9full_null(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNvCsgoxMDlS32XZ_9inventory1__4IterNtNtCseeLknQCOKOd_13polars_python11lazygroupby36Pyo3MethodsInventoryForPyLazyGroupByENvYB2f_NtNtNtCsbm5zPlkZccl_4pyo35impl_7pyclass16PyClassInventory5itemsENtB4_13SpecAdvanceBy15spec_advance_byB2j_(ptr noalias noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNvCsgoxMDlS32XZ_9inventory1__4IterNtNtCseeLknQCOKOd_13polars_python9lazyframe33Pyo3MethodsInventoryForPyOptFlagsENvYB2f_NtNtNtCsbm5zPlkZccl_4pyo35impl_7pyclass16PyClassInventory5itemsENtB4_13SpecAdvanceBy15spec_advance_byB2j_(ptr noalias noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNvCsgoxMDlS32XZ_9inventory1__4IterNtNtCseeLknQCOKOd_13polars_python9lazyframe34Pyo3MethodsInventoryForPyLazyFrameENvYB2f_NtNtNtCsbm5zPlkZccl_4pyo35impl_7pyclass16PyClassInventory5itemsENtB4_13SpecAdvanceBy15spec_advance_byB2j_(ptr noalias noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNvCsgoxMDlS32XZ_9inventory1__4IterNtNtNtCseeLknQCOKOd_13polars_python4expr8datatype37Pyo3MethodsInventoryForPyDataTypeExprENvYB2f_NtNtNtCsbm5zPlkZccl_4pyo35impl_7pyclass16PyClassInventory5itemsENtB4_13SpecAdvanceBy15spec_advance_byB2l_(ptr noalias noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNvCsgoxMDlS32XZ_9inventory1__4IterNtNtNtCseeLknQCOKOd_13polars_python4expr8selector33Pyo3MethodsInventoryForPySelectorENvYB2f_NtNtNtCsbm5zPlkZccl_4pyo35impl_7pyclass16PyClassInventory5itemsENtB4_13SpecAdvanceBy15spec_advance_byB2l_(ptr noalias noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNvCsgoxMDlS32XZ_9inventory1__4IterNtNtNtCseeLknQCOKOd_13polars_python9lazyframe5visit31Pyo3MethodsInventoryForPyExprIRENvYB2f_NtNtNtCsbm5zPlkZccl_4pyo35impl_7pyclass16PyClassInventory5itemsENtB4_13SpecAdvanceBy15spec_advance_byB2l_(ptr noalias noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNvCsgoxMDlS32XZ_9inventory1__4IterNtNtNtCseeLknQCOKOd_13polars_python9lazyframe5visit36Pyo3MethodsInventoryForNodeTraverserENvYB2f_NtNtNtCsbm5zPlkZccl_4pyo35impl_7pyclass16PyClassInventory5itemsENtB4_13SpecAdvanceBy15spec_advance_byB2l_(ptr noalias noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtCs1d9mkheQt2j_4http5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core5error5Error6source(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(2)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCseeLknQCOKOd_13polars_python4exprNtB5_6PyExprNtNtCsbm5zPlkZccl_4pyo310conversion12IntoPyObject13into_pyobject(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(144)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtCseeLknQCOKOd_13polars_python9dataframeNtB5_11PyDataFrameNtNtCsbm5zPlkZccl_4pyo310conversion12IntoPyObject13into_pyobject(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs4_NtNtNtCsbm5zPlkZccl_4pyo311conversions3std6stringNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtBb_10conversion12IntoPyObject13into_pyobject(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB5_16PyCollectBatchesNtNtCsbm5zPlkZccl_4pyo310conversion12IntoPyObject13into_pyobject(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(400)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtNtCseeLknQCOKOd_13polars_python9lazyframe8exitableNtB5_16PyInProcessQueryNtNtCsbm5zPlkZccl_4pyo310conversion12IntoPyObject13into_pyobject(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsc91YB1gQebm_8bitflags4iterINtB5_9IterNamesNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector11TimeUnitSetE3newCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsn_NtNtCsbm5zPlkZccl_4pyo35types5tupleTINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEjENtNtB9_10conversion12IntoPyObject13into_pyobjectCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsn_NtNtCsbm5zPlkZccl_4pyo35types5tupleTNtNtCseeLknQCOKOd_13polars_python9dataframe11PyDataFrameBF_ENtNtB9_10conversion12IntoPyObject13into_pyobjectBJ_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsn_NtNtCsbm5zPlkZccl_4pyo35types5tupleTttENtNtB9_10conversion12IntoPyObject13into_pyobjectCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i16 noundef, i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXso_NtNtNtCsbm5zPlkZccl_4pyo311conversions3std3numjNtNtBb_10conversion12IntoPyObject13into_pyobject(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsr_NtNtNtCsbm5zPlkZccl_4pyo311conversions3std3numyNtNtBb_10conversion12IntoPyObject13into_pyobject(i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #50

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #47

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #51

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #47

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) #50

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { norecurse nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { inlinehint nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { inlinehint nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { alwaysinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #37 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #40 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #43 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #45 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #46 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #47 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #48 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #49 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #50 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #51 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #52 = { nounwind }
attributes #53 = { noreturn }
attributes #54 = { cold }
attributes #55 = { cold noreturn nounwind }
attributes #56 = { noinline }
attributes #57 = { noinline noreturn }
attributes #58 = { inlinehint }
attributes #59 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!2728, !2729, !2730, !2731}
!llvm.ident = !{!2732}
!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !2733, producer: "clang LLVM (rustc version 1.96.0-nightly (48cc71ee8 2026-03-31))", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = distinct !DISubprogram(name: "from<polars_plan::dsl::expr::Expr>", linkageName: "_RNvXs2_NtCscgRAwXFJnXP_4core7convertNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtB5_4FromBy_E4fromCseeLknQCOKOd_13polars_python", scope: !2744, file: !2741, line: 788, type: !2740, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!2 = distinct !DISubprogram(name: "into<polars_plan::dsl::expr::Expr, polars_plan::dsl::expr::Expr>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtB5_4IntoBy_E4intoCseeLknQCOKOd_13polars_python", scope: !2745, file: !2741, line: 777, type: !2746, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!3 = distinct !DISubprogram(name: "alloc", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5alloc5alloc", scope: !2749, file: !2747, line: 95, type: !2740, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!4 = distinct !DISubprogram(name: "alloc_impl_runtime", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime", scope: !2750, file: !2747, line: 205, type: !2740, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!5 = distinct !DILexicalBlock(scope: !4, file: !2747, line: 209, column: 13)
!6 = distinct !DISubprogram(name: "alloc_impl", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global10alloc_impl", scope: !2750, file: !2747, line: 331, type: !2740, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!7 = distinct !DISubprogram(name: "allocate", linkageName: "_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate", scope: !2751, file: !2747, line: 448, type: !2740, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!8 = distinct !DISubprogram(name: "box_new_uninit", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit", scope: !2753, file: !2752, line: 247, type: !2740, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!9 = distinct !DISubprogram(name: "n_ary<polars_plan::dsl::function_expr::boolean::BooleanFunction>", linkageName: "_RINvMs3_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprNtB6_4Expr5n_aryNtNtNtB8_13function_expr7boolean15BooleanFunctionECseeLknQCOKOd_13polars_python", scope: !2738, file: !2755, line: 562, type: !2740, scopeLine: 562, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!10 = distinct !DILexicalBlock(scope: !9, file: !2755, line: 563, column: 9)
!11 = distinct !DISubprogram(name: "push_mut<polars_plan::dsl::expr::Expr, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE8push_mutCseeLknQCOKOd_13polars_python", scope: !2760, file: !2758, line: 1035, type: !2740, scopeLine: 1035, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!12 = distinct !DILexicalBlock(scope: !11, file: !2758, line: 1037, column: 9)
!13 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, polars_plan::dsl::expr::Expr>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECseeLknQCOKOd_13polars_python", scope: !2793, file: !2791, line: 613, type: !2740, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!14 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, polars_plan::dsl::expr::Expr>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECseeLknQCOKOd_13polars_python", scope: !2793, file: !2791, line: 608, type: !2740, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!15 = distinct !DISubprogram(name: "ptr<polars_plan::dsl::expr::Expr, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE3ptrCseeLknQCOKOd_13polars_python", scope: !2794, file: !2791, line: 295, type: !2740, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!16 = distinct !DISubprogram(name: "as_mut_ptr<polars_plan::dsl::expr::Expr, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE10as_mut_ptrCseeLknQCOKOd_13polars_python", scope: !2760, file: !2758, line: 2023, type: !2740, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!17 = distinct !DILexicalBlock(scope: !12, file: !2758, line: 1044, column: 13)
!18 = distinct !DISubprogram(name: "drop<[core::mem::maybe_uninit::MaybeUninit<polars_plan::dsl::expr::Expr>; 1]>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB5_15PolymorphicIterAINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEj1_ENtNtNtBb_3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python", scope: !2805, file: !2801, line: 78, type: !2740, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!19 = distinct !DISubprogram(name: "drop_in_place<core::array::iter::iter_inner::PolymorphicIter<[core::mem::maybe_uninit::MaybeUninit<polars_plan::dsl::expr::Expr>; 1]>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_5array4iter10iter_inner15PolymorphicIterAINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEj1_EECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2740, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!20 = distinct !DISubprogram(name: "drop<core::array::iter::iter_inner::PolymorphicIter<[core::mem::maybe_uninit::MaybeUninit<polars_plan::dsl::expr::Expr>; 1]>>", linkageName: "_RNvMs_NtNtCscgRAwXFJnXP_4core3mem13manually_dropINtB4_12ManuallyDropINtNtNtNtB8_5array4iter10iter_inner15PolymorphicIterAINtNtB6_12maybe_uninit11MaybeUninitNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEj1_EE4dropCseeLknQCOKOd_13polars_python", scope: !2810, file: !2807, line: 260, type: !2740, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!21 = distinct !DISubprogram(name: "drop<polars_plan::dsl::expr::Expr, 1>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprKj1_ENtNtNtB9_3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python", scope: !2812, file: !2811, line: 332, type: !2740, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!22 = distinct !DISubprogram(name: "drop_in_place<core::array::iter::IntoIter<polars_plan::dsl::expr::Expr, 1>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_5array4iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprKj1_EECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2740, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!23 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<core::array::iter::IntoIter<polars_plan::dsl::expr::Expr, 1>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtB4_5array4iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprKj1_EEECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2740, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!24 = distinct !DISubprogram(name: "n_ary<polars_plan::dsl::function_expr::FunctionExpr>", linkageName: "_RINvMs3_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprNtB6_4Expr5n_aryNtNtB8_13function_expr12FunctionExprECseeLknQCOKOd_13polars_python", scope: !2738, file: !2755, line: 562, type: !2740, scopeLine: 562, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!25 = distinct !DILexicalBlock(scope: !24, file: !2755, line: 563, column: 9)
!26 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<polars_plan::dsl::expr::Expr, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2740, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!27 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<polars_plan::dsl::expr::Expr, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2740, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!28 = distinct !DISubprogram(name: "map_unary<polars_plan::dsl::function_expr::FunctionExpr>", linkageName: "_RINvMs3_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprNtB6_4Expr9map_unaryNtNtB8_13function_expr12FunctionExprECseeLknQCOKOd_13polars_python", scope: !2738, file: !2755, line: 520, type: !2740, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!29 = distinct !DISubprogram(name: "new_uninit<[polars_plan::dsl::expr::Expr; 1]>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxANtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4Exprj1_E10new_uninitCseeLknQCOKOd_13polars_python", scope: !2754, file: !2752, line: 311, type: !2740, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!30 = distinct !DISubprogram(name: "map_binary<polars_plan::dsl::function_expr::FunctionExpr>", linkageName: "_RINvMs3_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprNtB6_4Expr10map_binaryNtNtB8_13function_expr12FunctionExprECseeLknQCOKOd_13polars_python", scope: !2738, file: !2755, line: 524, type: !2740, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!31 = distinct !DISubprogram(name: "new_uninit<[polars_plan::dsl::expr::Expr; 2]>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxANtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4Exprj2_E10new_uninitCseeLknQCOKOd_13polars_python", scope: !2754, file: !2752, line: 311, type: !2740, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!32 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::into_iter::IntoIter<polars_plan::dsl::expr::Expr, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2740, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!33 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<polars_plan::dsl::datatype_expr::DataTypeExpr>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2740, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!34 = distinct !{null}
!35 = distinct !DISubprogram(name: "new<alloc::sync::ArcInner<polars_plan::dsl::expr::Expr>>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEE3newCseeLknQCOKOd_13polars_python", scope: !2754, file: !2752, line: 284, type: !2740, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!36 = distinct !DISubprogram(name: "drop_in_place<alloc::sync::ArcInner<polars_plan::dsl::expr::Expr>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2740, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!37 = distinct !DILexicalBlock(scope: !35, file: !2752, line: 286, column: 9)
!38 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::vec::Vec<polars_plan::dsl::expr::Expr, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2740, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!39 = distinct !DISubprogram(name: "drop_in_place<(alloc::vec::Vec<polars_plan::dsl::expr::Expr, alloc::alloc::Global>, polars_core::chunked_array::ops::sort::options::SortOptions)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort7options11SortOptionsEECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2740, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!40 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<(alloc::vec::Vec<polars_plan::dsl::expr::Expr, alloc::alloc::Global>, polars_core::chunked_array::ops::sort::options::SortOptions)>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort7options11SortOptionsEEECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2740, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!41 = distinct !DISubprogram(name: "dealloc_nonnull", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5alloc15dealloc_nonnull", scope: !2749, file: !2747, line: 127, type: !2740, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!42 = distinct !DISubprogram(name: "deallocate_impl_runtime", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global23deallocate_impl_runtime", scope: !2750, file: !2747, line: 219, type: !2740, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!43 = distinct !DISubprogram(name: "deallocate_impl", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global15deallocate_impl", scope: !2750, file: !2747, line: 343, type: !2740, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!44 = distinct !DISubprogram(name: "deallocate", linkageName: "_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate", scope: !2751, file: !2747, line: 460, type: !2746, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!45 = distinct !DISubprogram(name: "drop<core::mem::maybe_uninit::MaybeUninit<[polars_plan::dsl::expr::Expr; 1]>, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxINtNtNtCscgRAwXFJnXP_4core3mem12maybe_uninit11MaybeUninitANtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4Exprj1_EENtNtNtBO_3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python", scope: !2830, file: !2752, line: 1913, type: !2746, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!46 = distinct !DILexicalBlock(scope: !45, file: !2752, line: 1916, column: 9)
!47 = distinct !DILexicalBlock(scope: !46, file: !2752, line: 1919, column: 13)
!48 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<core::mem::maybe_uninit::MaybeUninit<[polars_plan::dsl::expr::Expr; 1]>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtB4_3mem12maybe_uninit11MaybeUninitANtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4Exprj1_EEECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2746, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!49 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<(alloc::sync::Arc<polars_plan::dsl::expr::Expr, alloc::alloc::Global>, polars_core::chunked_array::ops::sort::options::SortOptions)>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort7options11SortOptionsEEECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2740, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!50 = distinct !DISubprogram(name: "atomic_sub<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_subjjECseeLknQCOKOd_13polars_python", scope: !2834, file: !2832, line: 3950, type: !2740, scopeLine: 3950, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!51 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_sub", scope: !2835, file: !2832, line: 3191, type: !2740, scopeLine: 3191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!52 = distinct !DISubprogram(name: "drop<polars_plan::dsl::expr::Expr, alloc::alloc::Global>", linkageName: "_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python", scope: !2836, file: !2825, line: 2810, type: !2740, scopeLine: 2810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!53 = distinct !DISubprogram(name: "drop_in_place<alloc::sync::Arc<polars_plan::dsl::expr::Expr, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2740, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!54 = distinct !DISubprogram(name: "drop_in_place<(alloc::sync::Arc<polars_plan::dsl::expr::Expr, alloc::alloc::Global>, polars_core::chunked_array::ops::sort::options::SortOptions)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort7options11SortOptionsEECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2740, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!55 = distinct !DISubprogram(name: "fence", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core4sync6atomic5fence", scope: !2834, file: !2832, line: 4383, type: !2740, scopeLine: 4383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!56 = distinct !DISubprogram(name: "or<polars_plan::dsl::expr::Expr>", linkageName: "_RINvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB3_4expr4Expr2orBA_ECseeLknQCOKOd_13polars_python", scope: !2738, file: !2734, line: 995, type: !2740, scopeLine: 995, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!57 = distinct !DISubprogram(name: "last_byte", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr9last_byte", scope: !2840, file: !2837, line: 609, type: !2740, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!58 = distinct !DISubprogram(name: "is_heap_allocated", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr17is_heap_allocated", scope: !2840, file: !2837, line: 446, type: !2740, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!59 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop", scope: !2841, file: !2837, line: 776, type: !2740, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!60 = distinct !DISubprogram(name: "drop_in_place<compact_str::repr::Repr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2740, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!61 = distinct !DISubprogram(name: "drop_in_place<compact_str::CompactString>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2740, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!62 = distinct !DISubprogram(name: "drop_in_place<polars_utils::pl_str::PlSmallStr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2740, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!63 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new", scope: !2840, file: !2837, line: 65, type: !2740, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!64 = distinct !DILexicalBlock(scope: !63, file: !2837, line: 66, column: 9)
!65 = distinct !DISubprogram(name: "try_new<&str>", linkageName: "_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python", scope: !2844, file: !2843, line: 194, type: !2740, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!66 = distinct !DISubprogram(name: "new<&str>", linkageName: "_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString3newReECseeLknQCOKOd_13polars_python", scope: !2844, file: !2843, line: 185, type: !2746, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!67 = distinct !DISubprogram(name: "from", linkageName: "_RNvXsp_Cs7VARH73bmU_11compact_strNtB5_13CompactStringINtNtCscgRAwXFJnXP_4core7convert4FromReE4from", scope: !2845, file: !2843, line: 2124, type: !2740, scopeLine: 2124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!68 = distinct !DISubprogram(name: "from_str", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils6pl_strNtB2_10PlSmallStr8from_str", scope: !2849, file: !2846, line: 56, type: !2740, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!69 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs7_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrINtNtCscgRAwXFJnXP_4core7convert4FromReE4from", scope: !2850, file: !2846, line: 153, type: !2740, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!70 = distinct !DISubprogram(name: "into<&str, polars_utils::pl_str::PlSmallStr>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertReINtB5_4IntoNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE4intoCseeLknQCOKOd_13polars_python", scope: !2745, file: !2741, line: 777, type: !2746, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!71 = distinct !DISubprogram(name: "unwrap_with_msg<compact_str::CompactString, compact_str::ReserveError>", linkageName: "_RNvXs1l_Cs7VARH73bmU_11compact_strINtNtCscgRAwXFJnXP_4core6result6ResultNtB6_13CompactStringNtB6_12ReserveErrorENtB6_13UnwrapWithMsg15unwrap_with_msgCseeLknQCOKOd_13polars_python", scope: !2851, file: !2843, line: 2649, type: !2740, scopeLine: 2649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!72 = distinct !DISubprogram(name: "max<usize>", linkageName: "_RNvYjNtNtCscgRAwXFJnXP_4core3cmp3Ord3maxCseeLknQCOKOd_13polars_python", scope: !2854, file: !2852, line: 1034, type: !2740, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!73 = distinct !DISubprogram(name: "allocate_ptr", linkageName: "_RNvNtNtCs7VARH73bmU_11compact_str4repr4heap12allocate_ptr", scope: !2856, file: !2855, line: 265, type: !2740, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!74 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtNtCs7VARH73bmU_11compact_str4repr4heapNtB2_10HeapBuffer3new", scope: !2857, file: !2855, line: 37, type: !2740, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!75 = distinct !DILexicalBlock(scope: !74, file: !2855, line: 38, column: 9)
!76 = distinct !DILexicalBlock(scope: !73, file: !2855, line: 267, column: 5)
!77 = distinct !DILexicalBlock(scope: !76, file: !2855, line: 268, column: 5)
!78 = distinct !DISubprogram(name: "branch<(compact_str::repr::capacity::Capacity, core::ptr::non_null::NonNull<u8>), compact_str::ReserveError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultTNtNtNtCs7VARH73bmU_11compact_str4repr8capacity8CapacityINtNtNtB7_3ptr8non_null7NonNullhEENtBR_12ReserveErrorENtNtNtB7_3ops9try_trait3Try6branchCseeLknQCOKOd_13polars_python", scope: !2860, file: !2858, line: 2172, type: !2740, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!79 = distinct !DISubprogram(name: "map<compact_str::repr::Repr, compact_str::ReserveError, compact_str::CompactString, fn(compact_str::repr::Repr) -> compact_str::CompactString>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCs7VARH73bmU_11compact_str4repr4ReprNtBM_12ReserveErrorE3mapNtBM_13CompactStringNcB1K_0ECseeLknQCOKOd_13polars_python", scope: !2861, file: !2858, line: 831, type: !2740, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!80 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtNtCs7VARH73bmU_11compact_str4repr6inlineNtB2_12InlineBuffer3new", scope: !2864, file: !2862, line: 23, type: !2740, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!81 = distinct !DILexicalBlock(scope: !80, file: !2862, line: 26, column: 9)
!82 = distinct !DILexicalBlock(scope: !81, file: !2862, line: 27, column: 9)
!83 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 531, type: !2740, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!84 = distinct !DILexicalBlock(scope: !64, file: !2837, line: 72, column: 13)
!85 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs_NtNtCs7VARH73bmU_11compact_str4repr8capacityNtB4_8Capacity3new", scope: !2867, file: !2865, line: 68, type: !2740, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!86 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 531, type: !2740, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!87 = distinct !DISubprogram(name: "copy_from_nonoverlapping<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh24copy_from_nonoverlappingCseeLknQCOKOd_13polars_python", scope: !2765, file: !2762, line: 1379, type: !2740, scopeLine: 1379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!88 = distinct !DILexicalBlock(scope: !75, file: !2855, line: 39, column: 9)
!89 = distinct !DISubprogram(name: "map<compact_str::repr::heap::HeapBuffer, compact_str::ReserveError, compact_str::repr::Repr, fn(compact_str::repr::heap::HeapBuffer) -> compact_str::repr::Repr>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtNtCs7VARH73bmU_11compact_str4repr4heap10HeapBufferNtBO_12ReserveErrorE3mapNtBM_4ReprNvMs0_BM_B1Y_9from_heapECseeLknQCOKOd_13polars_python", scope: !2861, file: !2858, line: 831, type: !2740, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!90 = distinct !DILexicalBlock(scope: !71, file: !2843, line: 2652, column: 13)
!91 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<polars_plan::dsl::expr::Expr>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEE6as_refCseeLknQCOKOd_13polars_python", scope: !2874, file: !2872, line: 440, type: !2740, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!92 = distinct !DISubprogram(name: "inner<polars_plan::dsl::expr::Expr, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE5innerCseeLknQCOKOd_13polars_python", scope: !2827, file: !2825, line: 2104, type: !2740, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!93 = distinct !DISubprogram(name: "into_iter<alloc::string::String, alloc::alloc::Global>", linkageName: "_RNvXsf_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12IntoIterator9into_iterCseeLknQCOKOd_13polars_python", scope: !2761, file: !2758, line: 3918, type: !2740, scopeLine: 3918, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!94 = distinct !DISubprogram(name: "len<alloc::string::String, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtB6_6string6StringE3lenCseeLknQCOKOd_13polars_python", scope: !2760, file: !2758, line: 3023, type: !2740, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!95 = distinct !DILexicalBlock(scope: !94, file: !2758, line: 3024, column: 9)
!96 = distinct !DILexicalBlock(scope: !93, file: !2758, line: 3920, column: 13)
!97 = distinct !DILexicalBlock(scope: !96, file: !2758, line: 3921, column: 13)
!98 = distinct !DILexicalBlock(scope: !97, file: !2758, line: 3922, column: 13)
!99 = distinct !DILexicalBlock(scope: !98, file: !2758, line: 3923, column: 13)
!100 = distinct !DISubprogram(name: "add<alloc::string::String>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtCsgZ49sUHp3tW_5alloc6string6String3addCseeLknQCOKOd_13polars_python", scope: !2765, file: !2762, line: 927, type: !2740, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!101 = distinct !DISubprogram(name: "drop_in_place<polars_plan::dsl::struct_::StructNameSpace>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7struct_15StructNameSpaceECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2740, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!102 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner8capacityCseeLknQCOKOd_13polars_python", scope: !2793, file: !2791, line: 618, type: !2740, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!103 = distinct !DISubprogram(name: "capacity<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8capacityCseeLknQCOKOd_13polars_python", scope: !2794, file: !2791, line: 308, type: !2740, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!104 = distinct !DISubprogram(name: "capacity<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE8capacityCseeLknQCOKOd_13polars_python", scope: !2760, file: !2758, line: 1447, type: !2740, scopeLine: 1447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!105 = distinct !DISubprogram(name: "spare_capacity<alloc::boxed::Box<dyn polars_python::file::FileLike, alloc::alloc::Global>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufwriterINtB4_9BufWriterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EE14spare_capacityB1I_", scope: !2949, file: !2945, line: 452, type: !2740, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!106 = distinct !DISubprogram(name: "write_all<alloc::boxed::Box<dyn polars_python::file::FileLike, alloc::alloc::Global>>", linkageName: "_RNvXs4_NtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufwriterINtB5_9BufWriterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EENtB9_5Write9write_allB1J_", scope: !2950, file: !2945, line: 535, type: !2740, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!107 = distinct !DISubprogram(name: "len<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE3lenCseeLknQCOKOd_13polars_python", scope: !2760, file: !2758, line: 3023, type: !2740, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!108 = distinct !DILexicalBlock(scope: !107, file: !2758, line: 3024, column: 9)
!109 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECseeLknQCOKOd_13polars_python", scope: !2793, file: !2791, line: 613, type: !2740, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!110 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECseeLknQCOKOd_13polars_python", scope: !2793, file: !2791, line: 608, type: !2740, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!111 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCseeLknQCOKOd_13polars_python", scope: !2794, file: !2791, line: 295, type: !2740, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!112 = distinct !DISubprogram(name: "as_mut_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE10as_mut_ptrCseeLknQCOKOd_13polars_python", scope: !2760, file: !2758, line: 2023, type: !2740, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!113 = distinct !DISubprogram(name: "write_to_buffer_unchecked<alloc::boxed::Box<dyn polars_python::file::FileLike, alloc::alloc::Global>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufwriterINtB4_9BufWriterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EE25write_to_buffer_uncheckedB1I_", scope: !2949, file: !2945, line: 439, type: !2740, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!114 = distinct !DILexicalBlock(scope: !113, file: !2945, line: 441, column: 9)
!115 = distinct !DILexicalBlock(scope: !114, file: !2945, line: 442, column: 9)
!116 = distinct !DILexicalBlock(scope: !115, file: !2945, line: 443, column: 9)
!117 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCseeLknQCOKOd_13polars_python", scope: !2765, file: !2762, line: 927, type: !2740, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!118 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 531, type: !2740, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!119 = distinct !DILexicalBlock(scope: !116, file: !2945, line: 445, column: 13)
!120 = distinct !DISubprogram(name: "set_len<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7set_lenCseeLknQCOKOd_13polars_python", scope: !2760, file: !2758, line: 2188, type: !2740, scopeLine: 2188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!121 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtCsgZ49sUHp3tW_5alloc3fmt6format0CseeLknQCOKOd_13polars_python", scope: !2958, file: !2956, line: 659, type: !2746, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!122 = distinct !DISubprogram(name: "map_or_else<&str, alloc::string::String, alloc::fmt::format::{closure_env#0}, fn(&str) -> alloc::string::String>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECseeLknQCOKOd_13polars_python", scope: !2815, file: !2813, line: 1271, type: !2746, scopeLine: 1271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!123 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCseeLknQCOKOd_13polars_python", scope: !2961, file: !2959, line: 152, type: !2740, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!124 = distinct !DILexicalBlock(scope: !123, file: !2959, line: 157, column: 13)
!125 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCseeLknQCOKOd_13polars_python", scope: !2965, file: !2959, line: 20, type: !2740, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!126 = distinct !DILexicalBlock(scope: !125, file: !2959, line: 21, column: 9)
!127 = distinct !DISubprogram(name: "eq<[u8], [u8]>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCseeLknQCOKOd_13polars_python", scope: !2963, file: !2852, line: 2123, type: !2740, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!128 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq", scope: !2973, file: !2970, line: 29, type: !2740, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!129 = distinct !DISubprogram(name: "eq<str, str>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCseeLknQCOKOd_13polars_python", scope: !2963, file: !2852, line: 2123, type: !2746, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!130 = distinct !DISubprogram(name: "drop_in_place<std::io::buffered::bufreader::BufReader<alloc::boxed::Box<dyn polars_python::file::FileLike, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreader9BufReaderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEEB2h_", scope: !2763, file: !2806, line: 810, type: !2740, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!131 = distinct !DISubprogram(name: "drop<[core::mem::maybe_uninit::MaybeUninit<u8>], alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtNtCscgRAwXFJnXP_4core3mem12maybe_uninit11MaybeUninithEENtNtNtBP_3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python", scope: !2830, file: !2752, line: 1913, type: !2746, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!132 = distinct !DILexicalBlock(scope: !131, file: !2752, line: 1916, column: 9)
!133 = distinct !DILexicalBlock(scope: !132, file: !2752, line: 1919, column: 13)
!134 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<[core::mem::maybe_uninit::MaybeUninit<u8>], alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2746, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!135 = distinct !DISubprogram(name: "drop_in_place<std::io::buffered::bufreader::buffer::Buffer>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreader6buffer6BufferECseeLknQCOKOd_13polars_python", scope: !2763, file: !2806, line: 810, type: !2746, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!136 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<dyn polars_python::file::FileLike, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EEB1k_", scope: !2763, file: !2806, line: 810, type: !2746, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!137 = distinct !DISubprogram(name: "size_of_val_raw<dyn polars_python::file::FileLike>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem15size_of_val_rawDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EBN_", scope: !2808, file: !2975, line: 455, type: !2740, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!138 = distinct !DISubprogram(name: "for_value_raw<dyn polars_python::file::FileLike>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core5alloc6layoutNtB3_6Layout13for_value_rawDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EB19_", scope: !2979, file: !2976, line: 253, type: !2740, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!139 = distinct !DISubprogram(name: "drop<dyn polars_python::file::FileLike, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBM_", scope: !2830, file: !2752, line: 1913, type: !2746, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!140 = distinct !DILexicalBlock(scope: !139, file: !2752, line: 1916, column: 9)
!141 = distinct !DILexicalBlock(scope: !140, file: !2752, line: 1919, column: 13)
!142 = distinct !DISubprogram(name: "align_of_val_raw<dyn polars_python::file::FileLike>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem16align_of_val_rawDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EBO_", scope: !2808, file: !2975, line: 594, type: !2740, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!143 = distinct !DISubprogram(name: "of_val_raw<dyn polars_python::file::FileLike>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core3mem9alignmentNtB3_9Alignment10of_val_rawDNtNtCseeLknQCOKOd_13polars_python4file8FileLikeEL_EB1a_", scope: !2983, file: !2981, line: 123, type: !2740, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!144 = distinct !DISubprogram(name: "to_vec<polars_plan::dsl::expr::Expr, alloc::alloc::Global>", linkageName: "_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECseeLknQCOKOd_13polars_python", scope: !2989, file: !2817, line: 410, type: !2740, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!145 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCseeLknQCOKOd_13polars_python", scope: !2793, file: !2791, line: 433, type: !2740, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!146 = distinct !DISubprogram(name: "with_capacity_in<polars_plan::dsl::expr::Expr, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE16with_capacity_inCseeLknQCOKOd_13polars_python", scope: !2794, file: !2791, line: 175, type: !2740, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!147 = distinct !DISubprogram(name: "with_capacity_in<polars_plan::dsl::expr::Expr, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE16with_capacity_inCseeLknQCOKOd_13polars_python", scope: !2760, file: !2758, line: 976, type: !2740, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!148 = distinct !DILexicalBlock(scope: !145, file: !2791, line: 442, column: 13)
!149 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCseeLknQCOKOd_13polars_python", scope: !2793, file: !2791, line: 766, type: !2740, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
end_hunk_1
