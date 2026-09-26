Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.14?download=true
inline.NumInlined: 3784
inline.NumDeleted: 1574
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvYNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache5cache10FILE_CACHE0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBa_:bb.a

.thread30.thread.i:                               ; preds = %bb.at, %bb.as, %.thread30.thread41.i, %bb.an, %.thread13.i
  %.pn56.pn16.i = phi { ptr, i32 } [ %i.ak, %.thread13.i ], [ %lpad.thr_comm43.i, %.thread30.thread41.i ], [ %.pn56.ph.i, %bb.as ], [ %.pn56.ph.i, %bb.at ], [ %i.ci, %bb.an ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55857), !dbg !55911
  call void @llvm.experimental.noalias.scope.decl(metadata !55858), !dbg !55985
  %i.cq = load ptr, ptr %i.n, align 8, !dbg !55986, !alias.scope !55859, !noalias !55815, !nonnull !1513, !noundef !1513
  %i.cr = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !dbg !55987, !noalias !55860
  %i.cs = icmp eq i64 %i.cr, 1, !dbg !55988
  br i1 %i.cs, label %bb.au, label %bb.av, !dbg !55988

bb.au:                                            ; preds = %.thread30.thread.i
  fence acquire, !dbg !55989
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n) #38
          to label %bb.av unwind label %bb.z, !dbg !55990, !noalias !55815

bb.av:                                            ; preds = %bb.au, %.thread30.thread.i, %bb.n
  %.pn56.pn.pn.ph.i = phi { ptr, i32 } [ %i.ag, %bb.n ], [ %.pn56.pn16.i, %bb.au ], [ %.pn56.pn16.i, %.thread30.thread.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55861), !dbg !55991
  call void @llvm.experimental.noalias.scope.decl(metadata !55862), !dbg !55992
  %i.ct = load ptr, ptr %i.o, align 8, !dbg !55993, !alias.scope !55863, !noalias !55815, !nonnull !1513, !noundef !1513
  %i.cu = atomicrmw sub ptr %i.ct, i64 1 release, align 8, !dbg !55994, !noalias !55864
  %i.cv = icmp eq i64 %i.cu, 1, !dbg !55995
  br i1 %i.cv, label %bb.aw, label %bb.ax, !dbg !55995

bb.aw:                                            ; preds = %bb.av
  fence acquire, !dbg !55996
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicyEE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o) #38
          to label %bb.ax unwind label %bb.z, !dbg !55997, !noalias !55815

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECslpwjCj2YNBy_9polars_io.exit76.i: ; preds = %bb.ay, %bb.ax
  resume { ptr, i32 } %.pn56.pn.pn.pn.ph.i, !dbg !55932

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.e
  %.pn56.pn.pn.pn.ph.i = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %.pn56.pn.pn.ph.i, %bb.aw ], [ %.pn56.pn.pn.ph.i, %bb.av ]
  call void @llvm.experimental.noalias.scope.decl(metadata !55865), !dbg !55998
  call void @llvm.experimental.noalias.scope.decl(metadata !55866), !dbg !55999
  call void @llvm.experimental.noalias.scope.decl(metadata !55867), !dbg !56000
  call void @llvm.experimental.noalias.scope.decl(metadata !55868), !dbg !56001
  %i.cw = load ptr, ptr %i.q, align 8, !dbg !56002, !alias.scope !55869, !noalias !55815, !nonnull !1513, !noundef !1513
  %i.cx = atomicrmw sub ptr %i.cw, i64 1 release, align 8, !dbg !56003, !noalias !55870
  %i.cy = icmp eq i64 %i.cx, 1, !dbg !56004
  br i1 %i.cy, label %bb.ay, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECslpwjCj2YNBy_9polars_io.exit76.i, !dbg !56004

bb.ay:                                            ; preds = %bb.ax
  fence acquire, !dbg !56005
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECslpwjCj2YNBy_9polars_io.exit76.i unwind label %bb.z, !dbg !56006, !noalias !55815

_RNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache5cache10FILE_CACHE0B7_.exit: ; preds = %bb.aq
  %i.cz = load ptr, ptr %i.q, align 8, !dbg !56007, !noalias !55815, !nonnull !1513, !noundef !1513
  %i.da = load i64, ptr %i.y, align 8, !dbg !56007, !noalias !55815, !noundef !1513
  call void @_RNvMNtNtCslpwjCj2YNBy_9polars_io10file_cache5cacheNtB2_9FileCache13new_unchecked(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %i.cz, i64 noundef %i.da, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ae), !dbg !56008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !55944, !noalias !55815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !55976, !noalias !55815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !55911, !noalias !55815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !55991, !noalias !55815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !55998, !noalias !55815
  ret void, !dbg !56009
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i64 1, 0) i64 @_RNvYNCNvNvNtCslpwjCj2YNBy_9polars_io7configs29cloud_writer_copy_buffer_size16COPY_BUFFER_SIZE0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBa_() unnamed_addr #4 personality ptr @rust_eh_personality !dbg !56010 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !56047
  store i64 16777216, ptr %i.f, align 8, !dbg !56048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !56049
  call void @_RINvNtCsh8eZTKRCwoO_3std3env3varReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 36), !dbg !56049
  %i.g = load i64, ptr %i.e, align 8, !dbg !56049, !range !1524, !noundef !1513
  %i.h = trunc nuw i64 %i.g to i1, !dbg !56050
  br i1 %i.h, label %.sink.split.i, label %bb.b, !dbg !56050

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !56051
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !56051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !56051
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !56052
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !56053
  %i.k = load ptr, ptr %i.j, align 8, !dbg !56053, !nonnull !1513, !noundef !1513
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !56054
  %i.m = load i64, ptr %i.l, align 8, !dbg !56054, !noundef !1513
  invoke void @_RNvXs1t_NtNtCscgRAwXFJnXP_4core3num7nonzeroINtB6_7NonZerojENtNtNtBa_3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m)
          to label %bb.d unwind label %bb.c, !dbg !56055

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.d) #37
          to label %.body.i unwind label %bb.l, !dbg !56056

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.c, align 8, !dbg !56057, !range !1592, !noundef !1513
  %i.p = trunc nuw i8 %i.o to i1, !dbg !56057
  br i1 %i.p, label %bb.e, label %bb.f, !dbg !56058, !prof !1623

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !56059
  store ptr %i.d, ptr %i.a, align 8, !dbg !56059
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !56059
  store ptr @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !56059
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #36
          to label %bb.k unwind label %bb.c, !dbg !56060

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !56061
  %i.r = load i64, ptr %i.q, align 8, !dbg !56061, !range !1622, !noundef !1513 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !56062
  store i64 %i.r, ptr %i.f, align 8, !dbg !56063
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i.i unwind label %bb.g, !dbg !56064

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.h, !dbg !56065

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !56064
  unreachable, !dbg !56064

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i unwind label %bb.i, !dbg !56066

.body.i:                                          ; preds = %bb.i, %bb.g, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.w, %bb.i ], [ %i.s, %bb.g ]
  %i.u = load i64, ptr %i.e, align 8, !dbg !56056, !range !1524, !noundef !1513
  %i.v = icmp eq i64 %i.u, 0, !dbg !56056
  br i1 %i.v, label %bb.m, label %bb.n, !dbg !56056

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !56056
  %i.x = load i64, ptr %i.e, align 8, !dbg !56056, !range !1524, !noundef !1513
  %i.y = trunc nuw i64 %i.x to i1, !dbg !56056
  br i1 %i.y, label %.sink.split.i, label %bb.j, !dbg !56056

.sink.split.i:                                    ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i, %bb.a
  %.ph.i = phi i64 [ 16777216, %bb.a ], [ %i.r, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i ]
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32) %i.e), !dbg !56056
  br label %bb.j, !dbg !56056

bb.j:                                             ; preds = %.sink.split.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i
  %i.z = phi i64 [ %i.r, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i ], [ %.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !56056
  %i.aa = call noundef zeroext i1 @_RNvNtCs1LHh8CLbVkQ_11polars_core6config7verbose(), !dbg !56067
  br i1 %i.aa, label %bb.o, label %_RNCNvNvNtCslpwjCj2YNBy_9polars_io7configs29cloud_writer_copy_buffer_size16COPY_BUFFER_SIZE0B7_.exit, !dbg !56067

bb.k:                                             ; preds = %bb.e
  unreachable

bb.l:                                             ; preds = %bb.n, %bb.c
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !56068
  unreachable, !dbg !56068

bb.m:                                             ; preds = %bb.n, %.body.i
  resume { ptr, i32 } %.pn.i, !dbg !56068

bb.n:                                             ; preds = %.body.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32) %i.e) #37
          to label %bb.m unwind label %bb.l, !dbg !56056

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !56069
  store ptr %i.f, ptr %i.b, align 8, !dbg !56069
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !56069
  store ptr @_RNvXsG_NtNtCscgRAwXFJnXP_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt7Display3fmtCslpwjCj2YNBy_9polars_io, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !56069
  call void @_RNvNtNtCsh8eZTKRCwoO_3std2io5stdio7__eprint(ptr noundef nonnull @107, ptr noundef nonnull %i.b), !dbg !56070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !56070
  %.pre.i = load i64, ptr %i.f, align 8, !dbg !56071, !range !1622
  br label %_RNCNvNvNtCslpwjCj2YNBy_9polars_io7configs29cloud_writer_copy_buffer_size16COPY_BUFFER_SIZE0B7_.exit, !dbg !56072

_RNCNvNvNtCslpwjCj2YNBy_9polars_io7configs29cloud_writer_copy_buffer_size16COPY_BUFFER_SIZE0B7_.exit: ; preds = %bb.j, %bb.o
  %i.ac = phi i64 [ %.pre.i, %bb.o ], [ %i.z, %bb.j ], !dbg !56071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !56073
  ret i64 %i.ac, !dbg !56074
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYNCNvNvNtCslpwjCj2YNBy_9polars_io7configs32cloud_writer_coalesce_run_length19COALESCE_RUN_LENGTH0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBa_() unnamed_addr #4 personality ptr @rust_eh_personality !dbg !56075 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !56153
  store i64 64, ptr %i.e, align 8, !dbg !56154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !56155
  call void @_RINvNtCsh8eZTKRCwoO_3std3env3varReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 39), !dbg !56155
  %i.f = load i64, ptr %i.d, align 8, !dbg !56155, !range !1524, !noundef !1513
  %i.g = trunc nuw i64 %i.f to i1, !dbg !56156
  br i1 %i.g, label %.sink.split.i, label %bb.b, !dbg !56156

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !56157
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !56157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !56157
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !56158
  %i.j = load ptr, ptr %i.i, align 8, !dbg !56158, !nonnull !1513, !noundef !1513 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !56159
  %i.l = load i64, ptr %i.k, align 8, !dbg !56159, !noundef !1513 ; 2 uses
  switch i64 %i.l, label %thread-pre-split.i.i [
    i64 0, label %.loopexit.thread.i
    i64 1, label %bb.c
  ], !dbg !56160

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.j, align 1, !dbg !56161, !alias.scope !56148, !noalias !56149, !noundef !1513 ; 2 uses
  switch i8 %i.m, label %bb.d [
    i8 43, label %.loopexit.thread.i
    i8 45, label %.loopexit.thread.i
  ], !dbg !56161

thread-pre-split.i.i:                             ; preds = %bb.b
  %.pr.i.i = load i8, ptr %i.j, align 1, !dbg !56161, !alias.scope !56148, !noalias !56149
  br label %bb.d, !dbg !56161

bb.d:                                             ; preds = %thread-pre-split.i.i, %bb.c
  %i.n = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.m, %bb.c ], !dbg !56161
  %cond.i.i = icmp eq i8 %i.n, 43, !dbg !56161    ; 2 uses
  %i.o = sext i1 %cond.i.i to i64, !dbg !56161
  %.sroa.15.0.i.i = add nsw i64 %i.l, %i.o, !dbg !56161 ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64, !dbg !56161
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.0.0.idx.i.i, !dbg !56161 ; 2 uses
  %i.p = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.p, label %.preheader.i.i, label %.preheader56.i.i.preheader, !dbg !56162

.preheader.i.i:                                   ; preds = %bb.d
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0, !dbg !56163
  br i1 %.not5366.i.i, label %.loopexit.thread.i, label %.lr.ph.i.i, !dbg !56163

.preheader56.i.i:                                 ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i18, i64 1, !dbg !56164
  %i.r = add nsw i64 %.sroa.15.1.i.i17, -1, !dbg !56164 ; 2 uses
  %.not52.i.not.i = icmp eq i64 %i.r, 0, !dbg !56165
  br i1 %.not52.i.not.i, label %.loopexit.i, label %.preheader56.i.i.preheader, !dbg !56165

.preheader56.i.i.preheader:                       ; preds = %bb.d, %.preheader56.i.i
  %.sroa.0.1.i.i18 = phi ptr [ %i.q, %.preheader56.i.i ], [ %.sroa.0.0.i.i, %bb.d ] ; 2 uses
  %.sroa.15.1.i.i17 = phi i64 [ %i.r, %.preheader56.i.i ], [ %.sroa.15.0.i.i, %bb.d ]
  %.sroa.042.0.i.i16 = phi i64 [ %i.aa, %.preheader56.i.i ], [ 0, %bb.d ]
  %i.s = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i16, i64 10), !dbg !56166 ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1, !dbg !56166
  br i1 %i.t, label %.loopexit.thread.i, label %bb.e, !dbg !56167, !prof !1623

bb.e:                                             ; preds = %.preheader56.i.i.preheader
  %i.u = extractvalue { i64, i1 } %i.s, 0, !dbg !56166 ; 2 uses
  %i.v = load i8, ptr %.sroa.0.1.i.i18, align 1, !dbg !56168, !alias.scope !56148, !noalias !56149, !noundef !1513
  %i.w = zext i8 %i.v to i32, !dbg !56169
  %i.x = add nsw i32 %i.w, -48, !dbg !56170       ; 2 uses
  %i.y = icmp ugt i32 %i.x, 9, !dbg !56171
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = add i64 %i.u, %i.z                      ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %i.u
  %or.cond.i = select i1 %i.y, i1 true, i1 %i.ab, !dbg !56172, !prof !1793
  br i1 %or.cond.i, label %.loopexit.thread.i, label %.preheader56.i.i, !dbg !56172, !prof !1793

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.f
  %.sroa.0.269.i.i = phi ptr [ %i.ai, %bb.f ], [ %.sroa.0.0.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.ah, %bb.f ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.ak, %bb.f ], [ 0, %.preheader.i.i ]
  %i.ac = load i8, ptr %.sroa.0.269.i.i, align 1, !dbg !56173, !alias.scope !56148, !noalias !56149, !noundef !1513
  %i.ad = zext i8 %i.ac to i32, !dbg !56174
  %i.ae = add nsw i32 %i.ad, -48, !dbg !56175     ; 2 uses
  %i.af = icmp ugt i32 %i.ae, 9, !dbg !56176
  br i1 %i.af, label %.loopexit.thread.i, label %bb.f, !dbg !56177

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ag = mul i64 %.sroa.042.267.i.i, 10, !dbg !56178
  %i.ah = add nsw i64 %.sroa.15.268.i.i, -1, !dbg !56179 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i, i64 1, !dbg !56179
  %i.aj = zext nneg i32 %i.ae to i64, !dbg !56180
  %i.ak = add i64 %i.ag, %i.aj, !dbg !56181       ; 2 uses
  %.not53.i.i = icmp eq i64 %i.ah, 0, !dbg !56163
  br i1 %.not53.i.i, label %.loopexit.i, label %.lr.ph.i.i, !dbg !56163

bb.g:                                             ; preds = %.loopexit.thread.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i unwind label %bb.h, !dbg !56182

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.i, !dbg !56183

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !56182
  unreachable, !dbg !56182

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.p, !dbg !56184

.loopexit.i:                                      ; preds = %.preheader56.i.i, %bb.f
  %i.ao = phi i64 [ %i.ak, %bb.f ], [ %i.aa, %.preheader56.i.i ], !dbg !56185 ; 4 uses
  %i.ap = icmp ult i64 %i.ao, 2, !dbg !56186
  br i1 %i.ap, label %.loopexit.thread.i, label %bb.j, !dbg !56187, !prof !1736

bb.j:                                             ; preds = %.loopexit.i
  store i64 %i.ao, ptr %i.e, align 8, !dbg !56188
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i.i unwind label %bb.k, !dbg !56189

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.l, !dbg !56190

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !56189
  unreachable, !dbg !56189

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i unwind label %bb.n, !dbg !56191

.loopexit.thread.i:                               ; preds = %bb.e, %.preheader56.i.i.preheader, %.lr.ph.i.i, %.loopexit.i, %.preheader.i.i, %bb.c, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !56192
  store ptr %i.c, ptr %i.a, align 8, !dbg !56192
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !56192
  store ptr @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !56192
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @109, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #36
          to label %bb.m unwind label %bb.g, !dbg !56193

bb.m:                                             ; preds = %.loopexit.thread.i
  unreachable

.body.i:                                          ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i, %bb.n, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %i.au, %bb.n ], [ %i.al, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i ]
  %i.as = load i64, ptr %i.d, align 8, !dbg !56194, !range !1524, !noundef !1513
  %i.at = icmp eq i64 %i.as, 0, !dbg !56194
  br i1 %i.at, label %bb.q, label %bb.r, !dbg !56194

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !56194
  %i.av = load i64, ptr %i.d, align 8, !dbg !56194, !range !1524, !noundef !1513
  %i.aw = trunc nuw i64 %i.av to i1, !dbg !56194
  br i1 %i.aw, label %.sink.split.i, label %bb.o, !dbg !56194

.sink.split.i:                                    ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i, %bb.a
  %.ph.i = phi i64 [ 64, %bb.a ], [ %i.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i ]
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32) %i.d), !dbg !56194
  br label %bb.o, !dbg !56194

bb.o:                                             ; preds = %.sink.split.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i
  %i.ax = phi i64 [ %i.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i ], [ %.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !56194
  %i.ay = call noundef zeroext i1 @_RNvNtCs1LHh8CLbVkQ_11polars_core6config7verbose(), !dbg !56195
  br i1 %i.ay, label %bb.s, label %_RNCNvNvNtCslpwjCj2YNBy_9polars_io7configs32cloud_writer_coalesce_run_length19COALESCE_RUN_LENGTH0B7_.exit, !dbg !56195

bb.p:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i, %bb.r
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body, !dbg !56196

.body:                                            ; preds = %bb.h, %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !56196
  unreachable, !dbg !56196

bb.q:                                             ; preds = %bb.r, %.body.i
  resume { ptr, i32 } %.pn.i, !dbg !56196

bb.r:                                             ; preds = %.body.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32) %i.d) #37
          to label %bb.q unwind label %bb.p, !dbg !56194

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !56197
  store ptr %i.e, ptr %i.b, align 8, !dbg !56197
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !56197
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !56197
  call void @_RNvNtNtCsh8eZTKRCwoO_3std2io5stdio7__eprint(ptr noundef nonnull @111, ptr noundef nonnull %i.b), !dbg !56198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !56198
  %.pre.i = load i64, ptr %i.e, align 8, !dbg !56199
  br label %_RNCNvNvNtCslpwjCj2YNBy_9polars_io7configs32cloud_writer_coalesce_run_length19COALESCE_RUN_LENGTH0B7_.exit, !dbg !56200

_RNCNvNvNtCslpwjCj2YNBy_9polars_io7configs32cloud_writer_coalesce_run_length19COALESCE_RUN_LENGTH0B7_.exit: ; preds = %bb.o, %bb.s
  %i.ba = phi i64 [ %.pre.i, %bb.s ], [ %i.ax, %bb.o ], !dbg !56199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !56201
  ret i64 %i.ba, !dbg !56202
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs1d9mkheQt2j_4http5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error11descriptionCslpwjCj2YNBy_9polars_io(ptr noalias readonly captures(none) %0) unnamed_addr #5 !dbg !56203 {
bb.a:
  ret { ptr, i64 } { ptr @393, i64 40 }, !dbg !56204
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs1d9mkheQt2j_4http5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error7provideCslpwjCj2YNBy_9polars_io(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 !dbg !56205 {
bb.a:
  ret void, !dbg !56206
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs1d9mkheQt2j_4http5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error7type_idCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #9 !dbg !56207 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @394, i64 16, i1 false), !dbg !56210
  ret void, !dbg !56211
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error11descriptionCslpwjCj2YNBy_9polars_io(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 !dbg !56212 {
bb.a:
  ret { ptr, i64 } { ptr @393, i64 40 }, !dbg !56213
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error7provideCslpwjCj2YNBy_9polars_io(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 !dbg !56214 {
bb.a:
  ret void, !dbg !56215
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error7type_idCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !56216 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @395, i64 16, i1 false), !dbg !56219
  ret void, !dbg !56220
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorNtNtCscgRAwXFJnXP_4core5error5Error11descriptionCslpwjCj2YNBy_9polars_io(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 !dbg !56221 {
bb.a:
  ret { ptr, i64 } { ptr @393, i64 40 }, !dbg !56222
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorNtNtCscgRAwXFJnXP_4core5error5Error6sourceCslpwjCj2YNBy_9polars_io(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 !dbg !56223 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !56224
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorNtNtCscgRAwXFJnXP_4core5error5Error7provideCslpwjCj2YNBy_9polars_io(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 !dbg !56225 {
bb.a:
  ret void, !dbg !56226
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorNtNtCscgRAwXFJnXP_4core5error5Error7type_idCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !56227 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @396, i64 16, i1 false), !dbg !56230
  ret void, !dbg !56231
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCslpwjCj2YNBy_9polars_io(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 !dbg !56232 {
bb.a:
  ret { ptr, i64 } { ptr @393, i64 40 }, !dbg !56233
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCslpwjCj2YNBy_9polars_io(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 !dbg !56234 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !56235
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCslpwjCj2YNBy_9polars_io(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 !dbg !56236 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !56237
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCslpwjCj2YNBy_9polars_io(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 !dbg !56238 {
bb.a:
  ret void, !dbg !56239
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !56240 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @397, i64 16, i1 false), !dbg !56243
  ret void, !dbg !56244
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #16

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsA_NtCs9o5SvTbM2BP_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtCscgRAwXFJnXP_4core3fmt7Display3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCscgRAwXFJnXP_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCscgRAwXFJnXP_4core3fmt3numoNtB4_7Display3fmt(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare hidden void @_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockTNtNtNtCskmDBXs7hs3c_5tokio4sync9semaphore9SemaphoremEE10initializeNCINvB2_11get_or_initNCNvNtCslpwjCj2YNBy_9polars_io8pl_async13get_semaphore0E0zEB2p_(ptr noundef nonnull align 8) unnamed_addr #19

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCINvMs_NtNtCs2mZqlW55729_12polars_utils11async_utils13error_captureINtB1Z_12ErrorCaptureNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE11wrap_futureNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer15internal_writerNtB4k_19InternalCloudWriter3put00uE0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB4q_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK0s_0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB21_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvXs0_NtNtCslpwjCj2YNBy_9polars_io5cloud3dnsNtB21_15CachingResolverNtNtNtCs1lTGjXZLbkb_7reqwest3dns7resolve7Resolve7resolve00EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB25_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNvMs_NtNtCslpwjCj2YNBy_9polars_io10file_cache8evictionNtB1Y_15EvictionManager17run_in_background0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB22_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNvMs_NtNtCslpwjCj2YNBy_9polars_io5cloud11concurrencyNtB1Y_21ConcurrencyController18spawn_control_loop0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB22_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskNCINvMs_NtNtCs2mZqlW55729_12polars_utils11async_utils13error_captureINtBU_12ErrorCaptureNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE11wrap_futureNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer15internal_writerNtB3e_19InternalCloudWriter3put00uE0INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB3k_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(520), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskNCNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK0s_0INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBW_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(160), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskNCNCNvXs0_NtNtCslpwjCj2YNBy_9polars_io5cloud3dnsNtBW_15CachingResolverNtNtNtCs1lTGjXZLbkb_7reqwest3dns7resolve7Resolve7resolve00INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB10_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(368), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskNCNvMs_NtNtCslpwjCj2YNBy_9polars_io10file_cache8evictionNtBT_15EvictionManager17run_in_background0INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBX_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(312), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskNCNvMs_NtNtCslpwjCj2YNBy_9polars_io5cloud11concurrencyNtBT_21ConcurrencyController18spawn_control_loop0INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBX_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(384), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCINvMs_NtNtCs2mZqlW55729_12polars_utils11async_utils13error_captureINtB1Z_12ErrorCaptureNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE11wrap_futureNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer15internal_writerNtB4k_19InternalCloudWriter3put00uE0EEINtNtB1n_4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEEB4q_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK0s_0EEINtNtB1n_4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEEB21_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvXs0_NtNtCslpwjCj2YNBy_9polars_io5cloud3dnsNtB21_15CachingResolverNtNtNtCs1lTGjXZLbkb_7reqwest3dns7resolve7Resolve7resolve00EEINtNtB1n_4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEEB25_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNvMs_NtNtCslpwjCj2YNBy_9polars_io10file_cache8evictionNtB1Y_15EvictionManager17run_in_background0EEINtNtB1n_4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEEB22_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNvMs_NtNtCslpwjCj2YNBy_9polars_io5cloud11concurrencyNtB1Y_21ConcurrencyController18spawn_control_loop0EEINtNtB1n_4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEEB22_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskNCINvMs_NtNtCs2mZqlW55729_12polars_utils11async_utils13error_captureINtBU_12ErrorCaptureNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE11wrap_futureNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer15internal_writerNtB3e_19InternalCloudWriter3put00uE0INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEEB3k_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(520), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskNCNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK0s_0INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEEBW_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(160), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskNCNCNvXs0_NtNtCslpwjCj2YNBy_9polars_io5cloud3dnsNtBW_15CachingResolverNtNtNtCs1lTGjXZLbkb_7reqwest3dns7resolve7Resolve7resolve00INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEEB10_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(368), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskNCNvMs_NtNtCslpwjCj2YNBy_9polars_io10file_cache8evictionNtBT_15EvictionManager17run_in_background0INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEEBX_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(312), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskNCNvMs_NtNtCslpwjCj2YNBy_9polars_io5cloud11concurrencyNtBT_21ConcurrencyController18spawn_control_loop0INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEEBX_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(384), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime10task_hooksNtB2_9TaskHooks5spawn(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6Handle34schedule_option_task_without_yield(ptr noundef nonnull align 8, ptr noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCINvMs_NtNtCs2mZqlW55729_12polars_utils11async_utils13error_captureINtB2z_12ErrorCaptureNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE11wrap_futureNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer15internal_writerNtB4U_19InternalCloudWriter3put00uE0EEEB50_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK0s_0EEEB2B_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvXs0_NtNtCslpwjCj2YNBy_9polars_io5cloud3dnsNtB2B_15CachingResolverNtNtNtCs1lTGjXZLbkb_7reqwest3dns7resolve7Resolve7resolve00EEEB2F_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNvMs_NtNtCslpwjCj2YNBy_9polars_io10file_cache8evictionNtB2y_15EvictionManager17run_in_background0EEEB2C_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNvMs_NtNtCslpwjCj2YNBy_9polars_io5cloud11concurrencyNtB2y_21ConcurrencyController18spawn_control_loop0EEEB2C_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnNCINvMs_NtNtCs2mZqlW55729_12polars_utils11async_utils13error_captureINtB1u_12ErrorCaptureNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE11wrap_futureNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer15internal_writerNtB3P_19InternalCloudWriter3put00uE0EB3V_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(520), i64 noundef range(i64 1, 0), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnNCNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK0s_0EB1w_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(160), i64 noundef range(i64 1, 0), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnNCNCNvXs0_NtNtCslpwjCj2YNBy_9polars_io5cloud3dnsNtB1w_15CachingResolverNtNtNtCs1lTGjXZLbkb_7reqwest3dns7resolve7Resolve7resolve00EB1A_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(368), i64 noundef range(i64 1, 0), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnNCNvMs_NtNtCslpwjCj2YNBy_9polars_io10file_cache8evictionNtB1t_15EvictionManager17run_in_background0EB1x_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(312), i64 noundef range(i64 1, 0), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnNCNvMs_NtNtCslpwjCj2YNBy_9polars_io5cloud11concurrencyNtB1t_21ConcurrencyController18spawn_control_loop0EB1x_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(384), i64 noundef range(i64 1, 0), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCs7tGzs63DEEy_9hashbrown6hasher18DefaultHashBuilderNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull, i1 noundef zeroext, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvMNtNtB6_2fs12open_optionsNtB1w_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00ENtNtBR_8schedule16BlockingScheduleECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleINtNtCscgRAwXFJnXP_4core6result6ResultINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEs_0IB50_B4Z_NtNtB2_5error9JoinErrorEE00ENtNtBR_8schedule16BlockingScheduleECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEEEs_0IB50_B4Z_NtNtB2_5error9JoinErrorEE00ENtNtBR_8schedule16BlockingScheduleECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB3K_5inner17PolarsObjectStore4head0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultNtCs8RKTHBS4OBx_12object_store10ObjectMetaNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00ENtNtBR_8schedule16BlockingScheduleEB3O_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onNCNvNtNtCslpwjCj2YNBy_9polars_io5utils4file16new_cloud_writer0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtB3K_5cloud12cloud_writer6writer11CloudWriterNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00ENtNtBR_8schedule16BlockingScheduleEB3K_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onNCNvXs0_NtNtCslpwjCj2YNBy_9polars_io10file_cache12file_fetcherNtB3K_16CloudFileFetcherNtB3K_11FileFetcher5fetch0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00ENtNtBR_8schedule16BlockingScheduleEB3O_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onNCNvXs1_NtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer13io_trait_wrapNtB3K_22CloudWriterIoTraitWrapNtNtCsh8eZTKRCwoO_3std2io5Write5flushs_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtB5j_5error5ErrorEE00ENtNtBR_8schedule16BlockingScheduleEB3Q_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onNCNvXs1_NtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer13io_trait_wrapNtB3K_22CloudWriterIoTraitWrapNtNtCsh8eZTKRCwoO_3std2io5Write5write0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultjNtNtB5j_5error5ErrorEE00ENtNtBR_8schedule16BlockingScheduleEB3Q_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onNCNvXs2_NtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer13io_trait_wrapNtB3K_22CloudWriterIoTraitWrapNtNtNtB3Q_5utils4file13WritableTrait5close0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00ENtNtBR_8schedule16BlockingScheduleEB3Q_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer13io_trait_wrap16FinishActivePollEs_0INtNtCscgRAwXFJnXP_4core6result6ResultINtNtB58_6option6OptionNtB3E_13PollOperationENtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00ENtNtBR_8schedule16BlockingScheduleEB3K_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCNCNvMs_NtNtCslpwjCj2YNBy_9polars_io10file_cache8evictionNtB2y_15EvictionManager17run_in_background0s_0uE00ENtNtBR_8schedule16BlockingScheduleEB2C_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCNvXNtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2u_16AsyncDynWritableNtNtNtB6_2io11async_write10AsyncWrite10poll_flush0INtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00ENtNtBR_8schedule16BlockingScheduleEB2A_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCNvXNtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2u_16AsyncDynWritableNtNtNtB6_2io11async_write10AsyncWrite10poll_write0INtNtCscgRAwXFJnXP_4core6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEE00ENtNtBR_8schedule16BlockingScheduleEB2A_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

end_hunk_0
begin_hunk_1_@llvm.umin.i8
!55876 = !DILocation(line: 226, column: 36, scope: !55620, inlinedAt: !55616)
!55877 = !DILocation(line: 226, column: 20, scope: !55620, inlinedAt: !55616)
!55878 = !DILocation(line: 226, column: 61, scope: !55620, inlinedAt: !55616)
!55879 = !DILocation(line: 227, column: 5, scope: !55611, inlinedAt: !55616)
!55880 = !DILocation(line: 444, column: 20, scope: !55621, inlinedAt: !55630)
!55881 = !DILocation(line: 3937, column: 24, scope: !55631, inlinedAt: !55634)
!55882 = !DILocation(line: 2411, column: 12, scope: !55635, inlinedAt: !55628)
!55883 = !DILocation(line: 2415, column: 38, scope: !55635, inlinedAt: !55628)
!55884 = !DILocation(line: 80, column: 26, scope: !55625, inlinedAt: !55626)
!55885 = !DILocation(line: 18, column: 8, scope: !55636, inlinedAt: !55608)
!55886 = !DILocation(line: 2412, column: 13, scope: !55635, inlinedAt: !55628)
!55887 = !DILocation(line: 22, column: 9, scope: !55636, inlinedAt: !55608)
!55888 = !DILocation(line: 22, column: 44, scope: !55636, inlinedAt: !55608)
!55889 = !DILocation(line: 19, column: 9, scope: !55817, inlinedAt: !55608)
!55890 = !DILocation(line: 19, column: 9, scope: !55636, inlinedAt: !55608)
!55891 = !DILocation(line: 18, column: 5, scope: !55636, inlinedAt: !55608)
!55892 = !DILocation(line: 99, column: 9, scope: !1021, inlinedAt: !55646)
!55893 = !DILocation(line: 101, column: 9, scope: !1021, inlinedAt: !55646)
!55894 = !DILocation(line: 248, column: 11, scope: !1026, inlinedAt: !55642)
!55895 = !DILocation(line: 248, column: 5, scope: !1026, inlinedAt: !55642)
!55896 = !DILocation(line: 250, column: 19, scope: !1026, inlinedAt: !55642)
!55897 = !DILocation(line: 289, column: 56, scope: !55647, inlinedAt: !55641)
!55898 = !DILocation(line: 310, column: 9, scope: !55648, inlinedAt: !55652)
!55899 = !DILocation(line: 23, column: 9, scope: !55653, inlinedAt: !55608)
!55900 = !DILocation(line: 99, column: 9, scope: !1021, inlinedAt: !55662)
!55901 = !DILocation(line: 101, column: 9, scope: !1021, inlinedAt: !55662)
!55902 = !DILocation(line: 248, column: 11, scope: !1026, inlinedAt: !55658)
!55903 = !DILocation(line: 248, column: 5, scope: !1026, inlinedAt: !55658)
!55904 = !DILocation(line: 250, column: 19, scope: !1026, inlinedAt: !55658)
!55905 = !DILocation(line: 289, column: 56, scope: !55663, inlinedAt: !55657)
!55906 = !DILocation(line: 310, column: 9, scope: !55664, inlinedAt: !55668)
!55907 = !DILocation(line: 25, column: 9, scope: !55669, inlinedAt: !55608)
!55908 = !DILocation(line: 444, column: 20, scope: !55621, inlinedAt: !55687)
!55909 = !DILocation(line: 97, column: 21, scope: !55688, inlinedAt: !55679)
!55910 = !DILocation(line: 25, column: 36, scope: !55669, inlinedAt: !55608)
!55911 = !DILocation(line: 53, column: 1, scope: !55653, inlinedAt: !55608)
!55912 = !DILocation(line: 25, column: 76, scope: !55669, inlinedAt: !55608)
!55913 = !DILocation(line: 1231, column: 15, scope: !55692, inlinedAt: !55693)
!55914 = !DILocation(line: 1231, column: 9, scope: !55692, inlinedAt: !55693)
!55915 = !DILocation(line: 1233, column: 17, scope: !55692, inlinedAt: !55693)
!55916 = !DILocation(line: 1233, column: 23, scope: !55694, inlinedAt: !55693)
!55917 = !DILocation(line: 1232, column: 16, scope: !55692, inlinedAt: !55693)
!55918 = !DILocation(line: 25, column: 83, scope: !55669, inlinedAt: !55608)
!55919 = !DILocation(line: 25, column: 31, scope: !55669, inlinedAt: !55608)
!55920 = !DILocation(line: 25, column: 24, scope: !55669, inlinedAt: !55608)
!55921 = !DILocation(line: 97, column: 21, scope: !55695, inlinedAt: !55699)
!55922 = !DILocation(line: 26, column: 23, scope: !55697, inlinedAt: !55608)
!55923 = !DILocation(line: 26, column: 12, scope: !55697, inlinedAt: !55608)
!55924 = !DILocation(line: 26, column: 16, scope: !55697, inlinedAt: !55608)
!55925 = !DILocation(line: 27, column: 9, scope: !55825, inlinedAt: !55608)
!55926 = !DILocation(line: 27, column: 9, scope: !55697, inlinedAt: !55608)
!55927 = !DILocation(line: 33, column: 9, scope: !55696, inlinedAt: !55608)
!55928 = !DILocation(line: 444, column: 20, scope: !55621, inlinedAt: !55710)
!55929 = !DILocation(line: 97, column: 21, scope: !55711, inlinedAt: !55702)
!55930 = !DILocation(line: 33, column: 32, scope: !55696, inlinedAt: !55608)
!55931 = !DILocation(line: 31, column: 5, scope: !55696, inlinedAt: !55608)
!55932 = !DILocation(line: 15, column: 60, scope: !55607, inlinedAt: !55608)
!55933 = !DILocation(line: 33, column: 68, scope: !55696, inlinedAt: !55608)
!55934 = !DILocation(line: 1231, column: 15, scope: !55692, inlinedAt: !55715)
!55935 = !DILocation(line: 1231, column: 9, scope: !55692, inlinedAt: !55715)
!55936 = !DILocation(line: 1233, column: 17, scope: !55692, inlinedAt: !55715)
!55937 = !DILocation(line: 1233, column: 23, scope: !55694, inlinedAt: !55715)
!55938 = !DILocation(line: 1232, column: 16, scope: !55692, inlinedAt: !55715)
!55939 = !DILocation(line: 33, column: 75, scope: !55696, inlinedAt: !55608)
!55940 = !DILocation(line: 33, column: 27, scope: !55696, inlinedAt: !55608)
!55941 = !DILocation(line: 33, column: 20, scope: !55696, inlinedAt: !55608)
!55942 = !DILocation(line: 97, column: 21, scope: !55716, inlinedAt: !55720)
!55943 = !DILocation(line: 35, column: 23, scope: !55718, inlinedAt: !55608)
!55944 = !DILocation(line: 53, column: 1, scope: !55696, inlinedAt: !55608)
!55945 = !DILocation(line: 35, column: 12, scope: !55718, inlinedAt: !55608)
!55946 = !DILocation(line: 35, column: 16, scope: !55718, inlinedAt: !55608)
!55947 = !DILocation(line: 36, column: 9, scope: !55839, inlinedAt: !55608)
!55948 = !DILocation(line: 36, column: 9, scope: !55718, inlinedAt: !55608)
!55949 = !DILocation(line: 42, column: 24, scope: !55717, inlinedAt: !55608)
!55950 = !DILocation(line: 44, column: 9, scope: !55717, inlinedAt: !55608)
!55951 = !DILocation(line: 3937, column: 24, scope: !55631, inlinedAt: !55725)
!55952 = !DILocation(line: 2411, column: 12, scope: !55726, inlinedAt: !55723)
!55953 = !DILocation(line: 40, column: 5, scope: !55717, inlinedAt: !55608)
!55954 = !DILocation(line: 444, column: 20, scope: !345, inlinedAt: !55740)
!55955 = !DILocation(line: 3937, column: 24, scope: !55631, inlinedAt: !55744)
!55956 = !DILocation(line: 2411, column: 12, scope: !55745, inlinedAt: !55742)
!55957 = !DILocation(line: 2412, column: 13, scope: !55726, inlinedAt: !55723)
!55958 = !DILocation(line: 99, column: 9, scope: !1021, inlinedAt: !55754)
!55959 = !DILocation(line: 101, column: 9, scope: !1021, inlinedAt: !55754)
!55960 = !DILocation(line: 248, column: 11, scope: !1026, inlinedAt: !55750)
!55961 = !DILocation(line: 248, column: 5, scope: !1026, inlinedAt: !55750)
!55962 = !DILocation(line: 250, column: 19, scope: !1026, inlinedAt: !55750)
!55963 = !DILocation(line: 292, column: 5, scope: !55748, inlinedAt: !55749)
!55964 = !DILocation(line: 284, column: 5, scope: !55748, inlinedAt: !55749)
!55965 = !DILocation(line: 2412, column: 13, scope: !55745, inlinedAt: !55742)
!55966 = !DILocation(line: 289, column: 56, scope: !55755, inlinedAt: !55749)
!55967 = !DILocation(line: 48, column: 6, scope: !55717, inlinedAt: !55608)
!55968 = !DILocation(line: 49, column: 6, scope: !55717, inlinedAt: !55608)
!55969 = !DILocation(line: 810, column: 1, scope: !342, inlinedAt: !55735)
!55970 = !DILocation(line: 810, column: 1, scope: !343, inlinedAt: !55736)
!55971 = !DILocation(line: 810, column: 1, scope: !344, inlinedAt: !55737)
!55972 = !DILocation(line: 3956, column: 24, scope: !348, inlinedAt: !55757)
!55973 = !DILocation(line: 2814, column: 12, scope: !347, inlinedAt: !55738)
!55974 = !DILocation(line: 4387, column: 24, scope: !24, inlinedAt: !55758)
!55975 = !DILocation(line: 2857, column: 18, scope: !347, inlinedAt: !55738)
!55976 = !DILocation(line: 53, column: 1, scope: !55669, inlinedAt: !55608)
!55977 = !DILocation(line: 810, column: 1, scope: !342, inlinedAt: !55763)
!55978 = !DILocation(line: 810, column: 1, scope: !343, inlinedAt: !55766)
!55979 = !DILocation(line: 810, column: 1, scope: !344, inlinedAt: !55769)
!55980 = !DILocation(line: 444, column: 20, scope: !345, inlinedAt: !55772)
!55981 = !DILocation(line: 3956, column: 24, scope: !348, inlinedAt: !55774)
!55982 = !DILocation(line: 2814, column: 12, scope: !347, inlinedAt: !55770)
!55983 = !DILocation(line: 4387, column: 24, scope: !24, inlinedAt: !55775)
!55984 = !DILocation(line: 2857, column: 18, scope: !347, inlinedAt: !55770)
!55985 = !DILocation(line: 810, column: 1, scope: !836, inlinedAt: !55780)
!55986 = !DILocation(line: 444, column: 20, scope: !847, inlinedAt: !55783)
!55987 = !DILocation(line: 3956, column: 24, scope: !849, inlinedAt: !55785)
!55988 = !DILocation(line: 2814, column: 12, scope: !837, inlinedAt: !55781)
!55989 = !DILocation(line: 4387, column: 24, scope: !24, inlinedAt: !55786)
!55990 = !DILocation(line: 2857, column: 18, scope: !837, inlinedAt: !55781)
!55991 = !DILocation(line: 53, column: 1, scope: !55636, inlinedAt: !55608)
!55992 = !DILocation(line: 810, column: 1, scope: !494, inlinedAt: !55791)
!55993 = !DILocation(line: 444, column: 20, scope: !495, inlinedAt: !55794)
!55994 = !DILocation(line: 3956, column: 24, scope: !498, inlinedAt: !55796)
!55995 = !DILocation(line: 2814, column: 12, scope: !497, inlinedAt: !55792)
!55996 = !DILocation(line: 4387, column: 24, scope: !24, inlinedAt: !55797)
!55997 = !DILocation(line: 2857, column: 18, scope: !497, inlinedAt: !55792)
!55998 = !DILocation(line: 53, column: 1, scope: !55607, inlinedAt: !55608)
!55999 = !DILocation(line: 810, column: 1, scope: !342, inlinedAt: !55802)
!56000 = !DILocation(line: 810, column: 1, scope: !343, inlinedAt: !55805)
!56001 = !DILocation(line: 810, column: 1, scope: !344, inlinedAt: !55808)
!56002 = !DILocation(line: 444, column: 20, scope: !345, inlinedAt: !55811)
!56003 = !DILocation(line: 3956, column: 24, scope: !348, inlinedAt: !55813)
!56004 = !DILocation(line: 2814, column: 12, scope: !347, inlinedAt: !55809)
!56005 = !DILocation(line: 4387, column: 24, scope: !24, inlinedAt: !55814)
!56006 = !DILocation(line: 2857, column: 18, scope: !347, inlinedAt: !55809)
!56007 = !DILocation(line: 52, column: 39, scope: !55717, inlinedAt: !55608)
!56008 = !DILocation(line: 52, column: 14, scope: !55717, inlinedAt: !55608)
!56009 = !DILocation(line: 250, column: 5, scope: !55604)
!56010 = distinct !DISubprogram(name: "call_once<polars_io::configs::cloud_writer_copy_buffer_size::COPY_BUFFER_SIZE::{closure_env#0}, ()>", linkageName: "_RNvYNCNvNvNtCslpwjCj2YNBy_9polars_io7configs29cloud_writer_copy_buffer_size16COPY_BUFFER_SIZE0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBa_", scope: !1579, file: !1576, line: 250, type: !1514, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56011 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNvNtCslpwjCj2YNBy_9polars_io7configs29cloud_writer_copy_buffer_size16COPY_BUFFER_SIZE0B7_", scope: !56043, file: !2176, line: 68, type: !1532, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56012 = distinct !DILocation(line: 250, column: 5, scope: !56010)
!56013 = distinct !DILexicalBlock(scope: !56011, file: !2176, line: 69, column: 9)
!56014 = distinct !DILexicalBlock(scope: !56013, file: !2176, line: 71, column: 78)
!56015 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECslpwjCj2YNBy_9polars_io", scope: !1968, file: !1966, line: 613, type: !1514, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56016 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECslpwjCj2YNBy_9polars_io", scope: !1968, file: !1966, line: 608, type: !1514, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56017 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCslpwjCj2YNBy_9polars_io", scope: !1970, file: !1966, line: 295, type: !1514, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56018 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE6as_ptrCslpwjCj2YNBy_9polars_io", scope: !1969, file: !1919, line: 1939, type: !1514, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56019 = distinct !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE8as_sliceCslpwjCj2YNBy_9polars_io", scope: !1969, file: !1919, line: 1824, type: !1514, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56020 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String6as_str", scope: !1937, file: !1921, line: 1052, type: !1514, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56021 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXsx_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !2069, file: !1921, line: 2822, type: !1514, scopeLine: 2822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56022 = distinct !DILocation(line: 72, column: 17, scope: !56014, inlinedAt: !56012)
!56023 = distinct !DILocation(line: 2823, column: 14, scope: !56021, inlinedAt: !56022)
!56024 = distinct !DILocation(line: 1055, column: 52, scope: !56020, inlinedAt: !56023)
!56025 = distinct !DILocation(line: 1841, column: 76, scope: !56019, inlinedAt: !56024)
!56026 = distinct !DILocation(line: 1942, column: 18, scope: !56018, inlinedAt: !56025)
!56027 = distinct !DILocation(line: 296, column: 20, scope: !56017, inlinedAt: !56026)
!56028 = distinct !DILocation(line: 609, column: 14, scope: !56016, inlinedAt: !56027)
!56029 = distinct !DISubprogram(name: "parse<core::num::nonzero::NonZero<usize>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core3stre5parseINtNtNtB5_3num7nonzero7NonZerojEECslpwjCj2YNBy_9polars_io", scope: !2062, file: !2061, line: 2761, type: !1514, scopeLine: 2761, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56030 = distinct !DILocation(line: 72, column: 19, scope: !56014, inlinedAt: !56012)
!56031 = distinct !DISubprogram(name: "unwrap_or_else<core::num::nonzero::NonZero<usize>, core::num::error::ParseIntError, polars_io::configs::cloud_writer_copy_buffer_size::COPY_BUFFER_SIZE::{closure#0}::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultINtNtNtB5_3num7nonzero7NonZerojENtNtBN_5error13ParseIntErrorE14unwrap_or_elseNCNCNvNvNtCslpwjCj2YNBy_9polars_io7configs29cloud_writer_copy_buffer_size16COPY_BUFFER_SIZE00EB27_", scope: !1603, file: !1601, line: 1616, type: !1514, scopeLine: 1616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56032 = distinct !DILocation(line: 72, column: 43, scope: !56014, inlinedAt: !56012)
!56033 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNCNvNvNtCslpwjCj2YNBy_9polars_io7configs29cloud_writer_copy_buffer_size16COPY_BUFFER_SIZE00B9_", scope: !56045, file: !2176, line: 72, type: !1514, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56034 = distinct !DILexicalBlock(scope: !56033, file: !1560, line: 62, column: 38)
!56035 = distinct !DILexicalBlock(scope: !56031, file: !1601, line: 1622, column: 13)
!56036 = distinct !DILocation(line: 1622, column: 23, scope: !56035, inlinedAt: !56032)
!56037 = distinct !DILocation(line: 75, column: 9, scope: !56013, inlinedAt: !56012)
!56038 = distinct !DILocation(line: 810, column: 1, scope: !391, inlinedAt: !56037)
!56039 = distinct !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !56038)
!56040 = distinct !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !56038)
!56041 = distinct !DILexicalBlock(scope: !56013, file: !1989, line: 224, column: 29)
!56042 = !DINamespace(name: "cloud_writer_copy_buffer_size", scope: !2177)
!56043 = !DINamespace(name: "COPY_BUFFER_SIZE", scope: !56042)
!56044 = !DILexicalBlockFile(scope: !56034, file: !2176, discriminator: 0)
!56045 = !DINamespace(name: "{closure#0}", scope: !56043)
!56046 = !DILexicalBlockFile(scope: !56041, file: !2176, discriminator: 0)
!56047 = !DILocation(line: 69, column: 13, scope: !56011, inlinedAt: !56012)
!56048 = !DILocation(line: 69, column: 35, scope: !56011, inlinedAt: !56012)
!56049 = !DILocation(line: 71, column: 24, scope: !56014, inlinedAt: !56012)
!56050 = !DILocation(line: 71, column: 16, scope: !56014, inlinedAt: !56012)
!56051 = !DILocation(line: 71, column: 19, scope: !56014, inlinedAt: !56012)
!56052 = !DILocation(line: 72, column: 17, scope: !56014, inlinedAt: !56012)
!56053 = !DILocation(line: 614, column: 9, scope: !56015, inlinedAt: !56028)
!56054 = !DILocation(line: 1841, column: 86, scope: !56019, inlinedAt: !56024)
!56055 = !DILocation(line: 2762, column: 9, scope: !56029, inlinedAt: !56030)
!56056 = !DILocation(line: 75, column: 9, scope: !56013, inlinedAt: !56012)
!56057 = !DILocation(line: 1620, column: 15, scope: !56031, inlinedAt: !56032)
!56058 = !DILocation(line: 1620, column: 9, scope: !56031, inlinedAt: !56032)
!56059 = !DILocation(line: 73, column: 17, scope: !56044, inlinedAt: !56036)
!56060 = !DILocation(line: 73, column: 17, scope: !56033, inlinedAt: !56036)
!56061 = !DILocation(line: 1621, column: 16, scope: !56031, inlinedAt: !56032)
!56062 = !DILocation(line: 74, column: 14, scope: !56014, inlinedAt: !56012)
!56063 = !DILocation(line: 72, column: 13, scope: !56014, inlinedAt: !56012)
!56064 = !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !56038)
!56065 = !DILocation(line: 810, column: 1, scope: !284, inlinedAt: !56039)
!56066 = !DILocation(line: 810, column: 1, scope: !284, inlinedAt: !56040)
!56067 = !DILocation(line: 77, column: 12, scope: !56013, inlinedAt: !56012)
!56068 = !DILocation(line: 68, column: 69, scope: !56011, inlinedAt: !56012)
!56069 = !DILocation(line: 78, column: 13, scope: !56046, inlinedAt: !56012)
!56070 = !DILocation(line: 78, column: 13, scope: !56013, inlinedAt: !56012)
!56071 = !DILocation(line: 81, column: 9, scope: !56013, inlinedAt: !56012)
!56072 = !DILocation(line: 77, column: 9, scope: !56013, inlinedAt: !56012)
!56073 = !DILocation(line: 82, column: 5, scope: !56011, inlinedAt: !56012)
!56074 = !DILocation(line: 250, column: 5, scope: !56010)
!56075 = distinct !DISubprogram(name: "call_once<polars_io::configs::cloud_writer_coalesce_run_length::COALESCE_RUN_LENGTH::{closure_env#0}, ()>", linkageName: "_RNvYNCNvNvNtCslpwjCj2YNBy_9polars_io7configs32cloud_writer_coalesce_run_length19COALESCE_RUN_LENGTH0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBa_", scope: !1579, file: !1576, line: 250, type: !1514, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56076 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNvNtCslpwjCj2YNBy_9polars_io7configs32cloud_writer_coalesce_run_length19COALESCE_RUN_LENGTH0B7_", scope: !56145, file: !2176, line: 44, type: !1532, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56077 = distinct !DILocation(line: 250, column: 5, scope: !56075)
!56078 = distinct !DILexicalBlock(scope: !56076, file: !2176, line: 45, column: 9)
!56079 = distinct !DILexicalBlock(scope: !56078, file: !2176, line: 47, column: 81)
!56080 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECslpwjCj2YNBy_9polars_io", scope: !1968, file: !1966, line: 613, type: !1514, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56081 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECslpwjCj2YNBy_9polars_io", scope: !1968, file: !1966, line: 608, type: !1514, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56082 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCslpwjCj2YNBy_9polars_io", scope: !1970, file: !1966, line: 295, type: !1514, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56083 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE6as_ptrCslpwjCj2YNBy_9polars_io", scope: !1969, file: !1919, line: 1939, type: !1514, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56084 = distinct !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE8as_sliceCslpwjCj2YNBy_9polars_io", scope: !1969, file: !1919, line: 1824, type: !1514, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56085 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String6as_str", scope: !1937, file: !1921, line: 1052, type: !1514, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56086 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXsx_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !2069, file: !1921, line: 2822, type: !1514, scopeLine: 2822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56087 = distinct !DILocation(line: 48, column: 17, scope: !56079, inlinedAt: !56077)
!56088 = distinct !DILocation(line: 2823, column: 14, scope: !56086, inlinedAt: !56087)
!56089 = distinct !DILocation(line: 1055, column: 52, scope: !56085, inlinedAt: !56088)
!56090 = distinct !DILocation(line: 1841, column: 76, scope: !56084, inlinedAt: !56089)
!56091 = distinct !DILocation(line: 1942, column: 18, scope: !56083, inlinedAt: !56090)
!56092 = distinct !DILocation(line: 296, column: 20, scope: !56082, inlinedAt: !56091)
!56093 = distinct !DILocation(line: 609, column: 14, scope: !56081, inlinedAt: !56092)
!56094 = distinct !DISubprogram(name: "from_ascii_radix", linkageName: "_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix", scope: !56146, file: !2070, line: 1703, type: !1514, scopeLine: 1703, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56095 = distinct !DISubprogram(name: "from_str_radix", linkageName: "_RNvMsv_NtCscgRAwXFJnXP_4core3numj14from_str_radix", scope: !56146, file: !2070, line: 1624, type: !1514, scopeLine: 1624, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56096 = distinct !DISubprogram(name: "from_str", linkageName: "_RNvXsu_NtCscgRAwXFJnXP_4core3numjNtNtNtB7_3str6traits7FromStr8from_str", scope: !56147, file: !2070, line: 1573, type: !1514, scopeLine: 1573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56097 = distinct !DISubprogram(name: "parse<usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core3stre5parsejECslpwjCj2YNBy_9polars_io", scope: !2062, file: !2061, line: 2761, type: !1514, scopeLine: 2761, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56098 = distinct !DILocation(line: 49, column: 18, scope: !56079, inlinedAt: !56077)
!56099 = distinct !DILocation(line: 2762, column: 9, scope: !56097, inlinedAt: !56098)
!56100 = distinct !DILocation(line: 1574, column: 17, scope: !56096, inlinedAt: !56099)
!56101 = distinct !DILocation(line: 1625, column: 17, scope: !56095, inlinedAt: !56100)
!56102 = distinct !{!56102, !"_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix"}
!56103 = distinct !{!56103, !56102, !"_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix: argument 1"}
!56104 = distinct !{!56104, !56102, !"_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix: argument 0"}
!56105 = distinct !DILexicalBlock(scope: !56094, file: !2070, line: 1716, column: 17)
!56106 = distinct !DISubprogram(name: "can_not_overflow<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3num16can_not_overflowjECslpwjCj2YNBy_9polars_io", scope: !1635, file: !2070, line: 1516, type: !1514, scopeLine: 1516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56107 = distinct !DILexicalBlock(scope: !56105, file: !2070, line: 1718, column: 17)
!56108 = distinct !DILexicalBlock(scope: !56107, file: !2070, line: 1727, column: 17)
!56109 = distinct !DILocation(line: 1738, column: 20, scope: !56108, inlinedAt: !56101)
!56110 = distinct !DILexicalBlock(scope: !56108, file: !2070, line: 1749, column: 63)
!56111 = distinct !DILexicalBlock(scope: !56108, file: !2070, line: 1765, column: 63)
!56112 = distinct !DISubprogram(name: "overflowing_mul", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj15overflowing_mul", scope: !1636, file: !1634, line: 3104, type: !1514, scopeLine: 3104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56113 = distinct !DISubprogram(name: "checked_mul", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_mul", scope: !1636, file: !1634, line: 1214, type: !1514, scopeLine: 1214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56114 = distinct !DILocation(line: 1776, column: 50, scope: !56111, inlinedAt: !56101)
!56115 = distinct !DILocation(line: 1215, column: 31, scope: !56113, inlinedAt: !56114)
!56116 = distinct !DISubprogram(name: "unlikely", linkageName: "_RNvNtCscgRAwXFJnXP_4core10intrinsics8unlikely", scope: !1670, file: !1669, line: 456, type: !1514, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56117 = distinct !DILexicalBlock(scope: !56113, file: !1634, line: 1215, column: 13)
!56118 = distinct !DILocation(line: 1216, column: 16, scope: !56117, inlinedAt: !56114)
!56119 = distinct !DILexicalBlock(scope: !56111, file: !2070, line: 1776, column: 33)
!56120 = distinct !DILocation(line: 1777, column: 69, scope: !56119, inlinedAt: !56101)
!56121 = distinct !DILocation(line: 420, column: 27, scope: !1203, inlinedAt: !56120)
!56122 = distinct !DILocation(line: 1751, column: 69, scope: !56110, inlinedAt: !56101)
!56123 = distinct !DILocation(line: 420, column: 27, scope: !1203, inlinedAt: !56122)
!56124 = distinct !DILexicalBlock(scope: !56110, file: !2070, line: 1751, column: 33)
!56125 = distinct !DILocation(line: 55, column: 9, scope: !56078, inlinedAt: !56077)
!56126 = distinct !DILocation(line: 810, column: 1, scope: !391, inlinedAt: !56125)
!56127 = distinct !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !56126)
!56128 = distinct !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !56126)
!56129 = distinct !DISubprogram(name: "ok<usize, core::num::error::ParseIntError>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE2okCslpwjCj2YNBy_9polars_io", scope: !1603, file: !1601, line: 708, type: !1514, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56130 = distinct !DILocation(line: 50, column: 18, scope: !56079, inlinedAt: !56077)
!56131 = distinct !DISubprogram(name: "filter<usize, polars_io::configs::cloud_writer_coalesce_run_length::COALESCE_RUN_LENGTH::{closure#0}::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE6filterNCNCNvNvNtCslpwjCj2YNBy_9polars_io7configs32cloud_writer_coalesce_run_length19COALESCE_RUN_LENGTH00EB11_", scope: !1573, file: !1549, line: 1578, type: !1514, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56132 = distinct !DILexicalBlock(scope: !56131, file: !1549, line: 1583, column: 31)
!56133 = distinct !DILocation(line: 51, column: 18, scope: !56079, inlinedAt: !56077)
!56134 = distinct !DISubprogram(name: "unwrap_or_else<usize, polars_io::configs::cloud_writer_coalesce_run_length::COALESCE_RUN_LENGTH::{closure#0}::{closure_env#1}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE14unwrap_or_elseNCNCNvNvNtCslpwjCj2YNBy_9polars_io7configs32cloud_writer_coalesce_run_length19COALESCE_RUN_LENGTH0s_0EB1a_", scope: !1573, file: !1549, line: 1061, type: !1514, scopeLine: 1061, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56135 = distinct !DILocation(line: 52, column: 18, scope: !56079, inlinedAt: !56077)
!56136 = distinct !DILocation(line: 55, column: 9, scope: !56078, inlinedAt: !56077)
!56137 = distinct !DILocation(line: 810, column: 1, scope: !391, inlinedAt: !56136)
!56138 = distinct !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !56137)
!56139 = distinct !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !56137)
!56140 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNCNvNvNtCslpwjCj2YNBy_9polars_io7configs32cloud_writer_coalesce_run_length19COALESCE_RUN_LENGTH0s_0B9_", scope: !56151, file: !2176, line: 52, type: !1514, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56141 = distinct !DILexicalBlock(scope: !56140, file: !1560, line: 62, column: 38)
!56142 = distinct !DILocation(line: 1067, column: 21, scope: !56134, inlinedAt: !56135)
!56143 = distinct !DILexicalBlock(scope: !56078, file: !1989, line: 224, column: 29)
!56144 = !DINamespace(name: "cloud_writer_coalesce_run_length", scope: !2177)
!56145 = !DINamespace(name: "COALESCE_RUN_LENGTH", scope: !56144)
!56146 = !DINamespace(name: "{impl#33}", scope: !1635)
!56147 = !DINamespace(name: "{impl#32}", scope: !1635)
!56148 = !{!56103}
!56149 = !{!56104}
!56150 = !DILexicalBlockFile(scope: !56141, file: !2176, discriminator: 0)
!56151 = !DINamespace(name: "{closure#0}", scope: !56145)
!56152 = !DILexicalBlockFile(scope: !56143, file: !2176, discriminator: 0)
!56153 = !DILocation(line: 45, column: 13, scope: !56076, inlinedAt: !56077)
!56154 = !DILocation(line: 45, column: 28, scope: !56076, inlinedAt: !56077)
!56155 = !DILocation(line: 47, column: 24, scope: !56079, inlinedAt: !56077)
!56156 = !DILocation(line: 47, column: 16, scope: !56079, inlinedAt: !56077)
!56157 = !DILocation(line: 47, column: 19, scope: !56079, inlinedAt: !56077)
!56158 = !DILocation(line: 614, column: 9, scope: !56080, inlinedAt: !56093)
!56159 = !DILocation(line: 1841, column: 86, scope: !56084, inlinedAt: !56089)
!56160 = !DILocation(line: 1711, column: 20, scope: !56094, inlinedAt: !56101)
!56161 = !DILocation(line: 1718, column: 49, scope: !56105, inlinedAt: !56101)
!56162 = !DILocation(line: 1517, column: 5, scope: !56106, inlinedAt: !56109)
!56163 = !DILocation(line: 1749, column: 39, scope: !56110, inlinedAt: !56101)
!56164 = !DILocation(line: 1765, column: 43, scope: !56111, inlinedAt: !56101)
!56165 = !DILocation(line: 1765, column: 39, scope: !56111, inlinedAt: !56101)
!56166 = !DILocation(line: 3105, column: 26, scope: !56112, inlinedAt: !56115)
!56167 = !DILocation(line: 457, column: 8, scope: !56116, inlinedAt: !56118)
!56168 = !DILocation(line: 1777, column: 57, scope: !56119, inlinedAt: !56101)
!56169 = !DILocation(line: 1777, column: 56, scope: !56119, inlinedAt: !56101)
!56170 = !DILocation(line: 2548, column: 13, scope: !1202, inlinedAt: !56121)
!56171 = !DILocation(line: 423, column: 12, scope: !1204, inlinedAt: !56120)
!56172 = !DILocation(line: 1731, column: 25, scope: !56119, inlinedAt: !56101)
!56173 = !DILocation(line: 1751, column: 57, scope: !56110, inlinedAt: !56101)
!56174 = !DILocation(line: 1751, column: 56, scope: !56110, inlinedAt: !56101)
!56175 = !DILocation(line: 2548, column: 13, scope: !1202, inlinedAt: !56123)
!56176 = !DILocation(line: 423, column: 12, scope: !1204, inlinedAt: !56122)
!56177 = !DILocation(line: 1731, column: 25, scope: !56110, inlinedAt: !56101)
!56178 = !DILocation(line: 1750, column: 33, scope: !56110, inlinedAt: !56101)
!56179 = !DILocation(line: 1749, column: 43, scope: !56110, inlinedAt: !56101)
!56180 = !DILocation(line: 1752, column: 72, scope: !56124, inlinedAt: !56101)
!56181 = !DILocation(line: 1752, column: 33, scope: !56124, inlinedAt: !56101)
!56182 = !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !56126)
!56183 = !DILocation(line: 810, column: 1, scope: !284, inlinedAt: !56127)
!56184 = !DILocation(line: 810, column: 1, scope: !284, inlinedAt: !56128)
!56185 = !DILocation(line: 713, column: 9, scope: !56129, inlinedAt: !56130)
!56186 = !DILocation(line: 1583, column: 16, scope: !56132, inlinedAt: !56133)
!56187 = !DILocation(line: 1065, column: 9, scope: !56134, inlinedAt: !56135)
!56188 = !DILocation(line: 48, column: 13, scope: !56079, inlinedAt: !56077)
!56189 = !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !56137)
!56190 = !DILocation(line: 810, column: 1, scope: !284, inlinedAt: !56138)
!56191 = !DILocation(line: 810, column: 1, scope: !284, inlinedAt: !56139)
!56192 = !DILocation(line: 53, column: 21, scope: !56150, inlinedAt: !56142)
!56193 = !DILocation(line: 53, column: 21, scope: !56140, inlinedAt: !56142)
!56194 = !DILocation(line: 55, column: 9, scope: !56078, inlinedAt: !56077)
!56195 = !DILocation(line: 57, column: 12, scope: !56078, inlinedAt: !56077)
!56196 = !DILocation(line: 44, column: 65, scope: !56076, inlinedAt: !56077)
!56197 = !DILocation(line: 58, column: 13, scope: !56152, inlinedAt: !56077)
!56198 = !DILocation(line: 58, column: 13, scope: !56078, inlinedAt: !56077)
!56199 = !DILocation(line: 61, column: 9, scope: !56078, inlinedAt: !56077)
!56200 = !DILocation(line: 57, column: 9, scope: !56078, inlinedAt: !56077)
!56201 = !DILocation(line: 62, column: 5, scope: !56076, inlinedAt: !56077)
!56202 = !DILocation(line: 250, column: 5, scope: !56075)
!56203 = distinct !DISubprogram(name: "description<http::error::Error>", linkageName: "_RNvYNtNtCs1d9mkheQt2j_4http5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error11descriptionCslpwjCj2YNBy_9polars_io", scope: !2267, file: !2265, line: 137, type: !1514, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56204 = !DILocation(line: 139, column: 6, scope: !56203)
!56205 = distinct !DISubprogram(name: "provide<http::error::Error>", linkageName: "_RNvYNtNtCs1d9mkheQt2j_4http5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error7provideCslpwjCj2YNBy_9polars_io", scope: !2267, file: !2265, line: 260, type: !1514, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56206 = !DILocation(line: 260, column: 59, scope: !56205)
!56207 = distinct !DISubprogram(name: "type_id<http::error::Error>", linkageName: "_RNvYNtNtCs1d9mkheQt2j_4http5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error7type_idCslpwjCj2YNBy_9polars_io", scope: !2267, file: !2265, line: 122, type: !1514, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56208 = distinct !DISubprogram(name: "of<http::error::Error>", linkageName: "_RINvMs8_NtCscgRAwXFJnXP_4core3anyNtB6_6TypeId2ofNtNtCs1d9mkheQt2j_4http5error5ErrorECslpwjCj2YNBy_9polars_io", scope: !2270, file: !2268, line: 790, type: !1514, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56209 = !DILocation(line: 126, column: 9, scope: !56207)
!56210 = !DILocation(line: 791, column: 9, scope: !56208, inlinedAt: !56209)
!56211 = !DILocation(line: 127, column: 6, scope: !56207)
!56212 = distinct !DISubprogram(name: "description<std::io::error::Error>", linkageName: "_RNvYNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error11descriptionCslpwjCj2YNBy_9polars_io", scope: !2267, file: !2265, line: 137, type: !1514, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56213 = !DILocation(line: 139, column: 6, scope: !56212)
!56214 = distinct !DISubprogram(name: "provide<std::io::error::Error>", linkageName: "_RNvYNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error7provideCslpwjCj2YNBy_9polars_io", scope: !2267, file: !2265, line: 260, type: !1514, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56215 = !DILocation(line: 260, column: 59, scope: !56214)
!56216 = distinct !DISubprogram(name: "type_id<std::io::error::Error>", linkageName: "_RNvYNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error7type_idCslpwjCj2YNBy_9polars_io", scope: !2267, file: !2265, line: 122, type: !1514, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56217 = distinct !DISubprogram(name: "of<std::io::error::Error>", linkageName: "_RINvMs8_NtCscgRAwXFJnXP_4core3anyNtB6_6TypeId2ofNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io", scope: !2270, file: !2268, line: 790, type: !1514, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56218 = !DILocation(line: 126, column: 9, scope: !56216)
!56219 = !DILocation(line: 791, column: 9, scope: !56217, inlinedAt: !56218)
!56220 = !DILocation(line: 127, column: 6, scope: !56216)
!56221 = distinct !DISubprogram(name: "description<tokio::runtime::task::error::JoinError>", linkageName: "_RNvYNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorNtNtCscgRAwXFJnXP_4core5error5Error11descriptionCslpwjCj2YNBy_9polars_io", scope: !2267, file: !2265, line: 137, type: !1514, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56222 = !DILocation(line: 139, column: 6, scope: !56221)
!56223 = distinct !DISubprogram(name: "source<tokio::runtime::task::error::JoinError>", linkageName: "_RNvYNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorNtNtCscgRAwXFJnXP_4core5error5Error6sourceCslpwjCj2YNBy_9polars_io", scope: !2267, file: !2265, line: 111, type: !1514, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56224 = !DILocation(line: 113, column: 6, scope: !56223)
!56225 = distinct !DISubprogram(name: "provide<tokio::runtime::task::error::JoinError>", linkageName: "_RNvYNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorNtNtCscgRAwXFJnXP_4core5error5Error7provideCslpwjCj2YNBy_9polars_io", scope: !2267, file: !2265, line: 260, type: !1514, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56226 = !DILocation(line: 260, column: 59, scope: !56225)
!56227 = distinct !DISubprogram(name: "type_id<tokio::runtime::task::error::JoinError>", linkageName: "_RNvYNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorNtNtCscgRAwXFJnXP_4core5error5Error7type_idCslpwjCj2YNBy_9polars_io", scope: !2267, file: !2265, line: 122, type: !1514, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56228 = distinct !DISubprogram(name: "of<tokio::runtime::task::error::JoinError>", linkageName: "_RINvMs8_NtCscgRAwXFJnXP_4core3anyNtB6_6TypeId2ofNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorECslpwjCj2YNBy_9polars_io", scope: !2270, file: !2268, line: 790, type: !1514, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56229 = !DILocation(line: 126, column: 9, scope: !56227)
!56230 = !DILocation(line: 791, column: 9, scope: !56228, inlinedAt: !56229)
!56231 = !DILocation(line: 127, column: 6, scope: !56227)
!56232 = distinct !DISubprogram(name: "description<alloc::boxed::convert::{impl#17}::from::StringError>", linkageName: "_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCslpwjCj2YNBy_9polars_io", scope: !2267, file: !2265, line: 137, type: !1514, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56233 = !DILocation(line: 139, column: 6, scope: !56232)
!56234 = distinct !DISubprogram(name: "cause<alloc::boxed::convert::{impl#17}::from::StringError>", linkageName: "_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCslpwjCj2YNBy_9polars_io", scope: !2267, file: !2265, line: 147, type: !1514, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56235 = !DILocation(line: 149, column: 6, scope: !56234)
!56236 = distinct !DISubprogram(name: "source<alloc::boxed::convert::{impl#17}::from::StringError>", linkageName: "_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCslpwjCj2YNBy_9polars_io", scope: !2267, file: !2265, line: 111, type: !1514, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56237 = !DILocation(line: 113, column: 6, scope: !56236)
!56238 = distinct !DISubprogram(name: "provide<alloc::boxed::convert::{impl#17}::from::StringError>", linkageName: "_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCslpwjCj2YNBy_9polars_io", scope: !2267, file: !2265, line: 260, type: !1514, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56239 = !DILocation(line: 260, column: 59, scope: !56238)
!56240 = distinct !DISubprogram(name: "type_id<alloc::boxed::convert::{impl#17}::from::StringError>", linkageName: "_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCslpwjCj2YNBy_9polars_io", scope: !2267, file: !2265, line: 122, type: !1514, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56241 = distinct !DISubprogram(name: "of<alloc::boxed::convert::{impl#17}::from::StringError>", linkageName: "_RINvMs8_NtCscgRAwXFJnXP_4core3anyNtB6_6TypeId2ofNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBU_3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB20_4SyncEL_EINtNtB8_7convert4FromNtNtBW_6string6StringE4from11StringErrorECslpwjCj2YNBy_9polars_io", scope: !2270, file: !2268, line: 790, type: !1514, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56242 = !DILocation(line: 126, column: 9, scope: !56240)
!56243 = !DILocation(line: 791, column: 9, scope: !56241, inlinedAt: !56242)
!56244 = !DILocation(line: 127, column: 6, scope: !56240)
end_hunk_1
