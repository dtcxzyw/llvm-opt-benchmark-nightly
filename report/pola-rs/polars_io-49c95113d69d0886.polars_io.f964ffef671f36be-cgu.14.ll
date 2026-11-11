Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.14?download=true
inline.NumInlined: 3784
inline.NumDeleted: 1574
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvYNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache5cache10FILE_CACHE0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBa_:bb.a
  %i.co = icmp eq i64 %i.cn, 1, !dbg !56843
  br i1 %i.co, label %bb.at, label %.thread30.thread.i, !dbg !56843

bb.at:                                            ; preds = %bb.as
  fence acquire, !dbg !56844
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m) #38
          to label %.thread30.thread.i unwind label %bb.z, !dbg !56845, !noalias !56676

.thread30.thread.i:                               ; preds = %bb.at, %bb.as, %.thread30.thread41.i, %bb.an
  %.pn56.pn16.i = phi { ptr, i32 } [ %i.ch, %bb.an ], [ %lpad.thr_comm43.i, %.thread30.thread41.i ], [ %.pn56.ph.i, %bb.as ], [ %.pn56.ph.i, %bb.at ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !56718), !dbg !56829
  call void @llvm.experimental.noalias.scope.decl(metadata !56719), !dbg !56846
  %i.cp = load ptr, ptr %i.n, align 8, !dbg !56847, !alias.scope !56720, !noalias !56676, !nonnull !1521, !noundef !1521
  %i.cq = atomicrmw add ptr %i.cp, i64 -1 release, align 8, !dbg !56848, !noalias !56721
  %i.cr = icmp eq i64 %i.cq, 1, !dbg !56849
  br i1 %i.cr, label %bb.au, label %bb.av, !dbg !56849

bb.au:                                            ; preds = %.thread30.thread.i
  fence acquire, !dbg !56850
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n) #38
          to label %bb.av unwind label %bb.z, !dbg !56851, !noalias !56676

bb.av:                                            ; preds = %bb.au, %.thread30.thread.i, %bb.n
  %.pn56.pn.pn.ph.i = phi { ptr, i32 } [ %i.ag, %bb.n ], [ %.pn56.pn16.i, %bb.au ], [ %.pn56.pn16.i, %.thread30.thread.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !56722), !dbg !56852
  call void @llvm.experimental.noalias.scope.decl(metadata !56723), !dbg !56853
  %i.cs = load ptr, ptr %i.o, align 8, !dbg !56854, !alias.scope !56724, !noalias !56676, !nonnull !1521, !noundef !1521
  %i.ct = atomicrmw add ptr %i.cs, i64 -1 release, align 8, !dbg !56855, !noalias !56725
  %i.cu = icmp eq i64 %i.ct, 1, !dbg !56856
  br i1 %i.cu, label %bb.aw, label %bb.ax, !dbg !56856

bb.aw:                                            ; preds = %bb.av
  fence acquire, !dbg !56857
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicyEE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o) #38
          to label %bb.ax unwind label %bb.z, !dbg !56858, !noalias !56676

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECslpwjCj2YNBy_9polars_io.exit76.i: ; preds = %bb.ay, %bb.ax
  resume { ptr, i32 } %.pn56.pn.pn.pn.ph.i, !dbg !56792

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.e
  %.pn56.pn.pn.pn.ph.i = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %.pn56.pn.pn.ph.i, %bb.aw ], [ %.pn56.pn.pn.ph.i, %bb.av ]
  call void @llvm.experimental.noalias.scope.decl(metadata !56726), !dbg !56859
  call void @llvm.experimental.noalias.scope.decl(metadata !56727), !dbg !56860
  call void @llvm.experimental.noalias.scope.decl(metadata !56728), !dbg !56861
  call void @llvm.experimental.noalias.scope.decl(metadata !56729), !dbg !56862
  %i.cv = load ptr, ptr %i.q, align 8, !dbg !56863, !alias.scope !56730, !noalias !56676, !nonnull !1521, !noundef !1521
  %i.cw = atomicrmw add ptr %i.cv, i64 -1 release, align 8, !dbg !56864, !noalias !56731
  %i.cx = icmp eq i64 %i.cw, 1, !dbg !56865
  br i1 %i.cx, label %bb.ay, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECslpwjCj2YNBy_9polars_io.exit76.i, !dbg !56865

bb.ay:                                            ; preds = %bb.ax
  fence acquire, !dbg !56866
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECslpwjCj2YNBy_9polars_io.exit76.i unwind label %bb.z, !dbg !56867, !noalias !56676

_RNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache5cache10FILE_CACHE0B7_.exit: ; preds = %bb.aq
  %i.cy = load ptr, ptr %i.q, align 8, !dbg !56868, !noalias !56676, !nonnull !1521, !noundef !1521
  %i.cz = load i64, ptr %i.y, align 8, !dbg !56868, !noalias !56676, !noundef !1521
  call void @_RNvMNtNtCslpwjCj2YNBy_9polars_io10file_cache5cacheNtB2_9FileCache13new_unchecked(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %i.cy, i64 noundef %i.cz, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ae), !dbg !56869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !56804, !noalias !56676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !56837, !noalias !56676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !56829, !noalias !56676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !56852, !noalias !56676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !56859, !noalias !56676
  ret void, !dbg !56870
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i64 1, 0) i64 @_RNvYNCNvNvNtCslpwjCj2YNBy_9polars_io7configs29cloud_writer_copy_buffer_size16COPY_BUFFER_SIZE0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBa_() unnamed_addr #4 personality ptr @rust_eh_personality !dbg !56871 !guid !56903 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !56909
  store i64 16777216, ptr %i.f, align 8, !dbg !56910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !56911
  call void @_RINvNtCsh8eZTKRCwoO_3std3env3varReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 36), !dbg !56911
  %i.g = load i64, ptr %i.e, align 8, !dbg !56911, !range !1532, !noundef !1521
  %i.h = trunc nuw i64 %i.g to i1, !dbg !56912
  br i1 %i.h, label %.sink.split.i, label %bb.b, !dbg !56912

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !56913
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !56913
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !56913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !56914
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !56915
  %i.k = load ptr, ptr %i.j, align 8, !dbg !56915, !nonnull !1521, !noundef !1521
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !56916
  %i.m = load i64, ptr %i.l, align 8, !dbg !56916, !noundef !1521
  invoke void @_RNvXs1t_NtNtCscgRAwXFJnXP_4core3num7nonzeroINtB6_7NonZerojENtNtNtBa_3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m)
          to label %bb.d unwind label %bb.c, !dbg !56917

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.d) #37
          to label %.body.i unwind label %bb.l, !dbg !56918

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.c, align 8, !dbg !56919, !range !1600, !noundef !1521
  %i.p = trunc nuw i8 %i.o to i1, !dbg !56919
  br i1 %i.p, label %bb.e, label %bb.f, !dbg !56920, !prof !1631

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !56921
  store ptr %i.d, ptr %i.a, align 8, !dbg !56921
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !56921
  store ptr @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !56921
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #36
          to label %bb.k unwind label %bb.c, !dbg !56922

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !56923
  %i.r = load i64, ptr %i.q, align 8, !dbg !56923, !range !1630, !noundef !1521 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !56924
  store i64 %i.r, ptr %i.f, align 8, !dbg !56925
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i.i unwind label %bb.g, !dbg !56926

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.h, !dbg !56927

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !56926
  unreachable, !dbg !56926

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i unwind label %bb.i, !dbg !56928

.body.i:                                          ; preds = %bb.i, %bb.g, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.w, %bb.i ], [ %i.s, %bb.g ]
  %i.u = load i64, ptr %i.e, align 8, !dbg !56918, !range !1532, !noundef !1521
  %i.v = icmp eq i64 %i.u, 0, !dbg !56918
  br i1 %i.v, label %bb.m, label %bb.n, !dbg !56918

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !56918
  %i.x = load i64, ptr %i.e, align 8, !dbg !56918, !range !1532, !noundef !1521
  %i.y = trunc nuw i64 %i.x to i1, !dbg !56918
  br i1 %i.y, label %.sink.split.i, label %bb.j, !dbg !56918

.sink.split.i:                                    ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i, %bb.a
  %.ph.i = phi i64 [ 16777216, %bb.a ], [ %i.r, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i ]
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32) %i.e), !dbg !56918
  br label %bb.j, !dbg !56918

bb.j:                                             ; preds = %.sink.split.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i
  %i.z = phi i64 [ %i.r, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i ], [ %.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !56918
  %i.aa = call noundef zeroext i1 @_RNvNtCs1LHh8CLbVkQ_11polars_core6config7verbose(), !dbg !56929
  br i1 %i.aa, label %bb.o, label %_RNCNvNvNtCslpwjCj2YNBy_9polars_io7configs29cloud_writer_copy_buffer_size16COPY_BUFFER_SIZE0B7_.exit, !dbg !56929

bb.k:                                             ; preds = %bb.e
  unreachable

bb.l:                                             ; preds = %bb.n, %bb.c
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !56930
  unreachable, !dbg !56930

bb.m:                                             ; preds = %bb.n, %.body.i
  resume { ptr, i32 } %.pn.i, !dbg !56930

bb.n:                                             ; preds = %.body.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32) %i.e) #37
          to label %bb.m unwind label %bb.l, !dbg !56918

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !56931
  store ptr %i.f, ptr %i.b, align 8, !dbg !56931
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !56931
  store ptr @_RNvXsG_NtNtCscgRAwXFJnXP_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt7Display3fmtCslpwjCj2YNBy_9polars_io, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !56931
  call void @_RNvNtNtCsh8eZTKRCwoO_3std2io5stdio7__eprint(ptr noundef nonnull @107, ptr noundef nonnull %i.b), !dbg !56932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !56932
  %.pre.i = load i64, ptr %i.f, align 8, !dbg !56933, !range !1630
  br label %_RNCNvNvNtCslpwjCj2YNBy_9polars_io7configs29cloud_writer_copy_buffer_size16COPY_BUFFER_SIZE0B7_.exit, !dbg !56934

_RNCNvNvNtCslpwjCj2YNBy_9polars_io7configs29cloud_writer_copy_buffer_size16COPY_BUFFER_SIZE0B7_.exit: ; preds = %bb.j, %bb.o
  %i.ac = phi i64 [ %.pre.i, %bb.o ], [ %i.z, %bb.j ], !dbg !56933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !56935
  ret i64 %i.ac, !dbg !56936
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYNCNvNvNtCslpwjCj2YNBy_9polars_io7configs32cloud_writer_coalesce_run_length19COALESCE_RUN_LENGTH0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBa_() unnamed_addr #4 personality ptr @rust_eh_personality !dbg !56937 !guid !57005 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !57014
  store i64 64, ptr %i.e, align 8, !dbg !57015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !57016
  call void @_RINvNtCsh8eZTKRCwoO_3std3env3varReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 39), !dbg !57016
  %i.f = load i64, ptr %i.d, align 8, !dbg !57016, !range !1532, !noundef !1521
  %i.g = trunc nuw i64 %i.f to i1, !dbg !57017
  br i1 %i.g, label %.sink.split.i, label %bb.b, !dbg !57017

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !57018
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !57018
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !57018
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !57019
  %i.j = load ptr, ptr %i.i, align 8, !dbg !57019, !nonnull !1521, !noundef !1521 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !57020
  %i.l = load i64, ptr %i.k, align 8, !dbg !57020, !noundef !1521 ; 2 uses
  switch i64 %i.l, label %thread-pre-split.i.i [
    i64 0, label %.loopexit.thread.i
    i64 1, label %bb.c
  ], !dbg !57021

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.j, align 1, !dbg !57022, !alias.scope !57010, !noundef !1521 ; 2 uses
  switch i8 %i.m, label %bb.d [
    i8 43, label %.loopexit.thread.i
    i8 45, label %.loopexit.thread.i
  ], !dbg !57022

thread-pre-split.i.i:                             ; preds = %bb.b
  %.pr.i.i = load i8, ptr %i.j, align 1, !dbg !57022, !alias.scope !57010
  br label %bb.d, !dbg !57022

bb.d:                                             ; preds = %thread-pre-split.i.i, %bb.c
  %i.n = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.m, %bb.c ], !dbg !57022
  %cond.i.i = icmp eq i8 %i.n, 43, !dbg !57022    ; 2 uses
  %i.o = sext i1 %cond.i.i to i64, !dbg !57022
  %.sroa.15.0.i.i = add nsw i64 %i.l, %i.o, !dbg !57022 ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64, !dbg !57022
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.0.0.idx.i.i, !dbg !57022 ; 2 uses
  %i.p = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.p, label %.preheader.i.i, label %.preheader56.i.i.preheader, !dbg !57023

.preheader.i.i:                                   ; preds = %bb.d
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0, !dbg !57024
  br i1 %.not5366.i.i, label %.loopexit.thread.i, label %.lr.ph.i.i, !dbg !57024

.preheader56.i.i:                                 ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i18, i64 1, !dbg !57025
  %i.r = add nsw i64 %.sroa.15.1.i.i17, -1, !dbg !57025 ; 2 uses
  %.not52.i.not.i = icmp eq i64 %i.r, 0, !dbg !57026
  br i1 %.not52.i.not.i, label %.loopexit.i, label %.preheader56.i.i.preheader, !dbg !57026

.preheader56.i.i.preheader:                       ; preds = %bb.d, %.preheader56.i.i
  %.sroa.0.1.i.i18 = phi ptr [ %i.q, %.preheader56.i.i ], [ %.sroa.0.0.i.i, %bb.d ] ; 2 uses
  %.sroa.15.1.i.i17 = phi i64 [ %i.r, %.preheader56.i.i ], [ %.sroa.15.0.i.i, %bb.d ]
  %.sroa.042.0.i.i16 = phi i64 [ %i.aa, %.preheader56.i.i ], [ 0, %bb.d ]
  %i.s = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i16, i64 10), !dbg !57027 ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1, !dbg !57027
  br i1 %i.t, label %.loopexit.thread.i, label %bb.e, !dbg !57028, !prof !1631

bb.e:                                             ; preds = %.preheader56.i.i.preheader
  %i.u = extractvalue { i64, i1 } %i.s, 0, !dbg !57027 ; 2 uses
  %i.v = load i8, ptr %.sroa.0.1.i.i18, align 1, !dbg !57029, !alias.scope !57010, !noundef !1521
  %i.w = zext i8 %i.v to i32, !dbg !57030
  %i.x = add nsw i32 %i.w, -48, !dbg !57031       ; 2 uses
  %i.y = icmp ugt i32 %i.x, 9, !dbg !57032
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = add i64 %i.u, %i.z                      ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %i.u
  %or.cond.i = select i1 %i.y, i1 true, i1 %i.ab, !dbg !57033, !prof !1801
  br i1 %or.cond.i, label %.loopexit.thread.i, label %.preheader56.i.i, !dbg !57033, !prof !1801

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.f
  %.sroa.0.269.i.i = phi ptr [ %i.ai, %bb.f ], [ %.sroa.0.0.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.ah, %bb.f ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.ak, %bb.f ], [ 0, %.preheader.i.i ]
  %i.ac = load i8, ptr %.sroa.0.269.i.i, align 1, !dbg !57034, !alias.scope !57010, !noundef !1521
  %i.ad = zext i8 %i.ac to i32, !dbg !57035
  %i.ae = add nsw i32 %i.ad, -48, !dbg !57036     ; 2 uses
  %i.af = icmp ugt i32 %i.ae, 9, !dbg !57037
  br i1 %i.af, label %.loopexit.thread.i, label %bb.f, !dbg !57038

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ag = mul i64 %.sroa.042.267.i.i, 10, !dbg !57039
  %i.ah = add nsw i64 %.sroa.15.268.i.i, -1, !dbg !57040 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i, i64 1, !dbg !57040
  %i.aj = zext nneg i32 %i.ae to i64, !dbg !57041
  %i.ak = add i64 %i.ag, %i.aj, !dbg !57042       ; 2 uses
  %.not53.i.i = icmp eq i64 %i.ah, 0, !dbg !57024
  br i1 %.not53.i.i, label %.loopexit.i, label %.lr.ph.i.i, !dbg !57024

bb.g:                                             ; preds = %.loopexit.thread.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i unwind label %bb.h, !dbg !57043

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.i, !dbg !57044

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !57043
  unreachable, !dbg !57043

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.p, !dbg !57045

.loopexit.i:                                      ; preds = %.preheader56.i.i, %bb.f
  %i.ao = phi i64 [ %i.ak, %bb.f ], [ %i.aa, %.preheader56.i.i ], !dbg !57046 ; 4 uses
  %i.ap = icmp ult i64 %i.ao, 2, !dbg !57047
  br i1 %i.ap, label %.loopexit.thread.i, label %bb.j, !dbg !57048, !prof !1744

bb.j:                                             ; preds = %.loopexit.i
  store i64 %i.ao, ptr %i.e, align 8, !dbg !57049
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i.i unwind label %bb.k, !dbg !57050

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.l, !dbg !57051

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !57050
  unreachable, !dbg !57050

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i unwind label %bb.n, !dbg !57052

.loopexit.thread.i:                               ; preds = %bb.e, %.preheader56.i.i.preheader, %.lr.ph.i.i, %.loopexit.i, %.preheader.i.i, %bb.c, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !57053
  store ptr %i.c, ptr %i.a, align 8, !dbg !57053
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !57053
  store ptr @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !57053
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @109, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #36
          to label %bb.m unwind label %bb.g, !dbg !57054

bb.m:                                             ; preds = %.loopexit.thread.i
  unreachable

.body.i:                                          ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i, %bb.n, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %i.au, %bb.n ], [ %i.al, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i ]
  %i.as = load i64, ptr %i.d, align 8, !dbg !57055, !range !1532, !noundef !1521
  %i.at = icmp eq i64 %i.as, 0, !dbg !57055
  br i1 %i.at, label %bb.q, label %bb.r, !dbg !57055

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !57055
  %i.av = load i64, ptr %i.d, align 8, !dbg !57055, !range !1532, !noundef !1521
  %i.aw = trunc nuw i64 %i.av to i1, !dbg !57055
  br i1 %i.aw, label %.sink.split.i, label %bb.o, !dbg !57055

.sink.split.i:                                    ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i, %bb.a
  %.ph.i = phi i64 [ 64, %bb.a ], [ %i.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i ]
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32) %i.d), !dbg !57055
  br label %bb.o, !dbg !57055

bb.o:                                             ; preds = %.sink.split.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i
  %i.ax = phi i64 [ %i.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i ], [ %.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !57055
  %i.ay = call noundef zeroext i1 @_RNvNtCs1LHh8CLbVkQ_11polars_core6config7verbose(), !dbg !57056
  br i1 %i.ay, label %bb.s, label %_RNCNvNvNtCslpwjCj2YNBy_9polars_io7configs32cloud_writer_coalesce_run_length19COALESCE_RUN_LENGTH0B7_.exit, !dbg !57056

bb.p:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i, %bb.r
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body, !dbg !57057

.body:                                            ; preds = %bb.h, %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !57057
  unreachable, !dbg !57057

bb.q:                                             ; preds = %bb.r, %.body.i
  resume { ptr, i32 } %.pn.i, !dbg !57057

bb.r:                                             ; preds = %.body.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32) %i.d) #37
          to label %bb.q unwind label %bb.p, !dbg !57055

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !57058
  store ptr %i.e, ptr %i.b, align 8, !dbg !57058
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !57058
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !57058
  call void @_RNvNtNtCsh8eZTKRCwoO_3std2io5stdio7__eprint(ptr noundef nonnull @111, ptr noundef nonnull %i.b), !dbg !57059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !57059
  %.pre.i = load i64, ptr %i.e, align 8, !dbg !57060
  br label %_RNCNvNvNtCslpwjCj2YNBy_9polars_io7configs32cloud_writer_coalesce_run_length19COALESCE_RUN_LENGTH0B7_.exit, !dbg !57061

_RNCNvNvNtCslpwjCj2YNBy_9polars_io7configs32cloud_writer_coalesce_run_length19COALESCE_RUN_LENGTH0B7_.exit: ; preds = %bb.o, %bb.s
  %i.ba = phi i64 [ %.pre.i, %bb.s ], [ %i.ax, %bb.o ], !dbg !57060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !57062
  ret i64 %i.ba, !dbg !57063
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs1d9mkheQt2j_4http5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error11descriptionCslpwjCj2YNBy_9polars_io(ptr noalias readonly captures(none) %0) unnamed_addr #5 !dbg !57064 !guid !57065 {
bb.a:
  ret { ptr, i64 } { ptr @393, i64 40 }, !dbg !57066
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs1d9mkheQt2j_4http5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error7provideCslpwjCj2YNBy_9polars_io(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 !dbg !57067 !guid !57068 {
bb.a:
  ret void, !dbg !57069
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs1d9mkheQt2j_4http5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error7type_idCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #9 !dbg !57070 !guid !57072 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @394, i64 16, i1 false), !dbg !57074
  ret void, !dbg !57075
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error11descriptionCslpwjCj2YNBy_9polars_io(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 !dbg !57076 !guid !57077 {
bb.a:
  ret { ptr, i64 } { ptr @393, i64 40 }, !dbg !57078
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error7provideCslpwjCj2YNBy_9polars_io(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 !dbg !57079 !guid !57080 {
bb.a:
  ret void, !dbg !57081
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error7type_idCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !57082 !guid !57084 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @395, i64 16, i1 false), !dbg !57086
  ret void, !dbg !57087
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorNtNtCscgRAwXFJnXP_4core5error5Error11descriptionCslpwjCj2YNBy_9polars_io(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 !dbg !57088 !guid !57089 {
bb.a:
  ret { ptr, i64 } { ptr @393, i64 40 }, !dbg !57090
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorNtNtCscgRAwXFJnXP_4core5error5Error6sourceCslpwjCj2YNBy_9polars_io(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 !dbg !57091 !guid !57092 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !57093
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorNtNtCscgRAwXFJnXP_4core5error5Error7provideCslpwjCj2YNBy_9polars_io(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 !dbg !57094 !guid !57095 {
bb.a:
  ret void, !dbg !57096
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorNtNtCscgRAwXFJnXP_4core5error5Error7type_idCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !57097 !guid !57099 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @396, i64 16, i1 false), !dbg !57101
  ret void, !dbg !57102
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCslpwjCj2YNBy_9polars_io(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 !dbg !57103 !guid !57104 {
bb.a:
  ret { ptr, i64 } { ptr @393, i64 40 }, !dbg !57105
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCslpwjCj2YNBy_9polars_io(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 !dbg !57106 !guid !57107 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !57108
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCslpwjCj2YNBy_9polars_io(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 !dbg !57109 !guid !57110 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !57111
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCslpwjCj2YNBy_9polars_io(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 !dbg !57112 !guid !57113 {
bb.a:
  ret void, !dbg !57114
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !57115 !guid !57117 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @397, i64 16, i1 false), !dbg !57119
  ret void, !dbg !57120
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
!56738 = !DILocation(line: 226, column: 20, scope: !56480, inlinedAt: !56476)
!56739 = !DILocation(line: 226, column: 61, scope: !56480, inlinedAt: !56476)
!56740 = !DILocation(line: 227, column: 5, scope: !56471, inlinedAt: !56476)
!56741 = !DILocation(line: 444, column: 20, scope: !56481, inlinedAt: !56490)
!56742 = !DILocation(line: 3937, column: 24, scope: !56491, inlinedAt: !56494)
!56743 = !DILocation(line: 2411, column: 12, scope: !56495, inlinedAt: !56488)
!56744 = !DILocation(line: 2415, column: 38, scope: !56495, inlinedAt: !56488)
!56745 = !DILocation(line: 80, column: 26, scope: !56485, inlinedAt: !56486)
!56746 = !DILocation(line: 18, column: 8, scope: !56496, inlinedAt: !56468)
!56747 = !DILocation(line: 2412, column: 13, scope: !56495, inlinedAt: !56488)
!56748 = !DILocation(line: 22, column: 9, scope: !56496, inlinedAt: !56468)
!56749 = !DILocation(line: 22, column: 44, scope: !56496, inlinedAt: !56468)
!56750 = !DILocation(line: 19, column: 9, scope: !56678, inlinedAt: !56468)
!56751 = !DILocation(line: 19, column: 9, scope: !56496, inlinedAt: !56468)
!56752 = !DILocation(line: 18, column: 5, scope: !56496, inlinedAt: !56468)
!56753 = !DILocation(line: 99, column: 9, scope: !1020, inlinedAt: !56506)
!56754 = !DILocation(line: 101, column: 9, scope: !1020, inlinedAt: !56506)
!56755 = !DILocation(line: 248, column: 11, scope: !1025, inlinedAt: !56502)
!56756 = !DILocation(line: 248, column: 5, scope: !1025, inlinedAt: !56502)
!56757 = !DILocation(line: 250, column: 19, scope: !1025, inlinedAt: !56502)
!56758 = !DILocation(line: 289, column: 56, scope: !56507, inlinedAt: !56501)
!56759 = !DILocation(line: 310, column: 9, scope: !56508, inlinedAt: !56512)
!56760 = !DILocation(line: 23, column: 9, scope: !56513, inlinedAt: !56468)
!56761 = !DILocation(line: 99, column: 9, scope: !1020, inlinedAt: !56522)
!56762 = !DILocation(line: 101, column: 9, scope: !1020, inlinedAt: !56522)
!56763 = !DILocation(line: 248, column: 11, scope: !1025, inlinedAt: !56518)
!56764 = !DILocation(line: 248, column: 5, scope: !1025, inlinedAt: !56518)
!56765 = !DILocation(line: 250, column: 19, scope: !1025, inlinedAt: !56518)
!56766 = !DILocation(line: 289, column: 56, scope: !56523, inlinedAt: !56517)
!56767 = !DILocation(line: 310, column: 9, scope: !56524, inlinedAt: !56528)
!56768 = !DILocation(line: 25, column: 9, scope: !56529, inlinedAt: !56468)
!56769 = !DILocation(line: 444, column: 20, scope: !56481, inlinedAt: !56547)
!56770 = !DILocation(line: 97, column: 21, scope: !56548, inlinedAt: !56539)
!56771 = !DILocation(line: 25, column: 36, scope: !56529, inlinedAt: !56468)
!56772 = !DILocation(line: 25, column: 76, scope: !56529, inlinedAt: !56468)
!56773 = !DILocation(line: 1231, column: 15, scope: !56551, inlinedAt: !56552)
!56774 = !DILocation(line: 1231, column: 9, scope: !56551, inlinedAt: !56552)
!56775 = !DILocation(line: 1233, column: 17, scope: !56551, inlinedAt: !56552)
!56776 = !DILocation(line: 1233, column: 23, scope: !56554, inlinedAt: !56552)
!56777 = !DILocation(line: 1232, column: 16, scope: !56551, inlinedAt: !56552)
!56778 = !DILocation(line: 25, column: 83, scope: !56529, inlinedAt: !56468)
!56779 = !DILocation(line: 25, column: 31, scope: !56529, inlinedAt: !56468)
!56780 = !DILocation(line: 25, column: 24, scope: !56529, inlinedAt: !56468)
!56781 = !DILocation(line: 97, column: 21, scope: !56555, inlinedAt: !56559)
!56782 = !DILocation(line: 26, column: 23, scope: !56557, inlinedAt: !56468)
!56783 = !DILocation(line: 26, column: 12, scope: !56557, inlinedAt: !56468)
!56784 = !DILocation(line: 26, column: 16, scope: !56557, inlinedAt: !56468)
!56785 = !DILocation(line: 27, column: 9, scope: !56686, inlinedAt: !56468)
!56786 = !DILocation(line: 27, column: 9, scope: !56557, inlinedAt: !56468)
!56787 = !DILocation(line: 33, column: 9, scope: !56556, inlinedAt: !56468)
!56788 = !DILocation(line: 444, column: 20, scope: !56481, inlinedAt: !56570)
!56789 = !DILocation(line: 97, column: 21, scope: !56571, inlinedAt: !56562)
!56790 = !DILocation(line: 33, column: 32, scope: !56556, inlinedAt: !56468)
!56791 = !DILocation(line: 31, column: 5, scope: !56556, inlinedAt: !56468)
!56792 = !DILocation(line: 15, column: 60, scope: !56467, inlinedAt: !56468)
!56793 = !DILocation(line: 33, column: 68, scope: !56556, inlinedAt: !56468)
!56794 = !DILocation(line: 1231, column: 15, scope: !56551, inlinedAt: !56574)
!56795 = !DILocation(line: 1231, column: 9, scope: !56551, inlinedAt: !56574)
!56796 = !DILocation(line: 1233, column: 17, scope: !56551, inlinedAt: !56574)
!56797 = !DILocation(line: 1233, column: 23, scope: !56554, inlinedAt: !56574)
!56798 = !DILocation(line: 1232, column: 16, scope: !56551, inlinedAt: !56574)
!56799 = !DILocation(line: 33, column: 75, scope: !56556, inlinedAt: !56468)
!56800 = !DILocation(line: 33, column: 27, scope: !56556, inlinedAt: !56468)
!56801 = !DILocation(line: 33, column: 20, scope: !56556, inlinedAt: !56468)
!56802 = !DILocation(line: 97, column: 21, scope: !56576, inlinedAt: !56580)
!56803 = !DILocation(line: 35, column: 23, scope: !56578, inlinedAt: !56468)
!56804 = !DILocation(line: 53, column: 1, scope: !56556, inlinedAt: !56468)
!56805 = !DILocation(line: 35, column: 12, scope: !56578, inlinedAt: !56468)
!56806 = !DILocation(line: 35, column: 16, scope: !56578, inlinedAt: !56468)
!56807 = !DILocation(line: 36, column: 9, scope: !56700, inlinedAt: !56468)
!56808 = !DILocation(line: 36, column: 9, scope: !56578, inlinedAt: !56468)
!56809 = !DILocation(line: 42, column: 24, scope: !56577, inlinedAt: !56468)
!56810 = !DILocation(line: 44, column: 9, scope: !56577, inlinedAt: !56468)
!56811 = !DILocation(line: 3937, column: 24, scope: !56491, inlinedAt: !56585)
!56812 = !DILocation(line: 2411, column: 12, scope: !56586, inlinedAt: !56583)
!56813 = !DILocation(line: 40, column: 5, scope: !56577, inlinedAt: !56468)
!56814 = !DILocation(line: 444, column: 20, scope: !345, inlinedAt: !56600)
!56815 = !DILocation(line: 3937, column: 24, scope: !56491, inlinedAt: !56604)
!56816 = !DILocation(line: 2411, column: 12, scope: !56605, inlinedAt: !56602)
!56817 = !DILocation(line: 2412, column: 13, scope: !56586, inlinedAt: !56583)
!56818 = !DILocation(line: 99, column: 9, scope: !1020, inlinedAt: !56614)
!56819 = !DILocation(line: 101, column: 9, scope: !1020, inlinedAt: !56614)
!56820 = !DILocation(line: 248, column: 11, scope: !1025, inlinedAt: !56610)
!56821 = !DILocation(line: 248, column: 5, scope: !1025, inlinedAt: !56610)
!56822 = !DILocation(line: 250, column: 19, scope: !1025, inlinedAt: !56610)
!56823 = !DILocation(line: 292, column: 5, scope: !56608, inlinedAt: !56609)
!56824 = !DILocation(line: 284, column: 5, scope: !56608, inlinedAt: !56609)
!56825 = !DILocation(line: 2412, column: 13, scope: !56605, inlinedAt: !56602)
!56826 = !DILocation(line: 289, column: 56, scope: !56615, inlinedAt: !56609)
!56827 = !DILocation(line: 48, column: 6, scope: !56577, inlinedAt: !56468)
!56828 = !DILocation(line: 49, column: 6, scope: !56577, inlinedAt: !56468)
!56829 = !DILocation(line: 53, column: 1, scope: !56513, inlinedAt: !56468)
!56830 = !DILocation(line: 810, column: 1, scope: !342, inlinedAt: !56595)
!56831 = !DILocation(line: 810, column: 1, scope: !343, inlinedAt: !56596)
!56832 = !DILocation(line: 810, column: 1, scope: !344, inlinedAt: !56597)
!56833 = !DILocation(line: 3956, column: 24, scope: !348, inlinedAt: !56617)
!56834 = !DILocation(line: 2814, column: 12, scope: !347, inlinedAt: !56598)
!56835 = !DILocation(line: 4387, column: 24, scope: !24, inlinedAt: !56618)
!56836 = !DILocation(line: 2857, column: 18, scope: !347, inlinedAt: !56598)
!56837 = !DILocation(line: 53, column: 1, scope: !56529, inlinedAt: !56468)
!56838 = !DILocation(line: 810, column: 1, scope: !342, inlinedAt: !56623)
!56839 = !DILocation(line: 810, column: 1, scope: !343, inlinedAt: !56626)
!56840 = !DILocation(line: 810, column: 1, scope: !344, inlinedAt: !56629)
!56841 = !DILocation(line: 444, column: 20, scope: !345, inlinedAt: !56632)
!56842 = !DILocation(line: 3956, column: 24, scope: !348, inlinedAt: !56634)
!56843 = !DILocation(line: 2814, column: 12, scope: !347, inlinedAt: !56630)
!56844 = !DILocation(line: 4387, column: 24, scope: !24, inlinedAt: !56635)
!56845 = !DILocation(line: 2857, column: 18, scope: !347, inlinedAt: !56630)
!56846 = !DILocation(line: 810, column: 1, scope: !835, inlinedAt: !56640)
!56847 = !DILocation(line: 444, column: 20, scope: !846, inlinedAt: !56643)
!56848 = !DILocation(line: 3956, column: 24, scope: !848, inlinedAt: !56645)
!56849 = !DILocation(line: 2814, column: 12, scope: !836, inlinedAt: !56641)
!56850 = !DILocation(line: 4387, column: 24, scope: !24, inlinedAt: !56646)
!56851 = !DILocation(line: 2857, column: 18, scope: !836, inlinedAt: !56641)
!56852 = !DILocation(line: 53, column: 1, scope: !56496, inlinedAt: !56468)
!56853 = !DILocation(line: 810, column: 1, scope: !494, inlinedAt: !56651)
!56854 = !DILocation(line: 444, column: 20, scope: !495, inlinedAt: !56654)
!56855 = !DILocation(line: 3956, column: 24, scope: !498, inlinedAt: !56656)
!56856 = !DILocation(line: 2814, column: 12, scope: !497, inlinedAt: !56652)
!56857 = !DILocation(line: 4387, column: 24, scope: !24, inlinedAt: !56657)
!56858 = !DILocation(line: 2857, column: 18, scope: !497, inlinedAt: !56652)
!56859 = !DILocation(line: 53, column: 1, scope: !56467, inlinedAt: !56468)
!56860 = !DILocation(line: 810, column: 1, scope: !342, inlinedAt: !56662)
!56861 = !DILocation(line: 810, column: 1, scope: !343, inlinedAt: !56665)
!56862 = !DILocation(line: 810, column: 1, scope: !344, inlinedAt: !56668)
!56863 = !DILocation(line: 444, column: 20, scope: !345, inlinedAt: !56671)
!56864 = !DILocation(line: 3956, column: 24, scope: !348, inlinedAt: !56673)
!56865 = !DILocation(line: 2814, column: 12, scope: !347, inlinedAt: !56669)
!56866 = !DILocation(line: 4387, column: 24, scope: !24, inlinedAt: !56674)
!56867 = !DILocation(line: 2857, column: 18, scope: !347, inlinedAt: !56669)
!56868 = !DILocation(line: 52, column: 39, scope: !56577, inlinedAt: !56468)
!56869 = !DILocation(line: 52, column: 14, scope: !56577, inlinedAt: !56468)
!56870 = !DILocation(line: 250, column: 5, scope: !56464)
!56871 = distinct !DISubprogram(name: "call_once<polars_io::configs::cloud_writer_copy_buffer_size::COPY_BUFFER_SIZE::{closure_env#0}, ()>", linkageName: "_RNvYNCNvNvNtCslpwjCj2YNBy_9polars_io7configs29cloud_writer_copy_buffer_size16COPY_BUFFER_SIZE0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBa_", scope: !1587, file: !1584, line: 250, type: !1522, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56872 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNvNtCslpwjCj2YNBy_9polars_io7configs29cloud_writer_copy_buffer_size16COPY_BUFFER_SIZE0B7_", scope: !56905, file: !2184, line: 68, type: !1540, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56873 = distinct !DILocation(line: 250, column: 5, scope: !56871)
!56874 = distinct !DILexicalBlock(scope: !56872, file: !2184, line: 69, column: 9)
!56875 = distinct !DILexicalBlock(scope: !56874, file: !2184, line: 71, column: 78)
!56876 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECslpwjCj2YNBy_9polars_io", scope: !1976, file: !1974, line: 613, type: !1522, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56877 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECslpwjCj2YNBy_9polars_io", scope: !1976, file: !1974, line: 608, type: !1522, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56878 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCslpwjCj2YNBy_9polars_io", scope: !1978, file: !1974, line: 295, type: !1522, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56879 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE6as_ptrCslpwjCj2YNBy_9polars_io", scope: !1977, file: !1927, line: 1939, type: !1522, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56880 = distinct !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE8as_sliceCslpwjCj2YNBy_9polars_io", scope: !1977, file: !1927, line: 1824, type: !1522, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56881 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String6as_str", scope: !1945, file: !1929, line: 1052, type: !1522, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56882 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXsx_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !2077, file: !1929, line: 2822, type: !1522, scopeLine: 2822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56883 = distinct !DILocation(line: 72, column: 17, scope: !56875, inlinedAt: !56873)
!56884 = distinct !DILocation(line: 2823, column: 14, scope: !56882, inlinedAt: !56883)
!56885 = distinct !DILocation(line: 1055, column: 52, scope: !56881, inlinedAt: !56884)
!56886 = distinct !DILocation(line: 1841, column: 76, scope: !56880, inlinedAt: !56885)
!56887 = distinct !DILocation(line: 1942, column: 18, scope: !56879, inlinedAt: !56886)
!56888 = distinct !DILocation(line: 296, column: 20, scope: !56878, inlinedAt: !56887)
!56889 = distinct !DILocation(line: 609, column: 14, scope: !56877, inlinedAt: !56888)
!56890 = distinct !DISubprogram(name: "parse<core::num::nonzero::NonZero<usize>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core3stre5parseINtNtNtB5_3num7nonzero7NonZerojEECslpwjCj2YNBy_9polars_io", scope: !2070, file: !2069, line: 2761, type: !1522, scopeLine: 2761, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56891 = distinct !DILocation(line: 72, column: 19, scope: !56875, inlinedAt: !56873)
!56892 = distinct !DISubprogram(name: "unwrap_or_else<core::num::nonzero::NonZero<usize>, core::num::error::ParseIntError, polars_io::configs::cloud_writer_copy_buffer_size::COPY_BUFFER_SIZE::{closure#0}::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultINtNtNtB5_3num7nonzero7NonZerojENtNtBN_5error13ParseIntErrorE14unwrap_or_elseNCNCNvNvNtCslpwjCj2YNBy_9polars_io7configs29cloud_writer_copy_buffer_size16COPY_BUFFER_SIZE00EB27_", scope: !1611, file: !1609, line: 1616, type: !1522, scopeLine: 1616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56893 = distinct !DILocation(line: 72, column: 43, scope: !56875, inlinedAt: !56873)
!56894 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNCNvNvNtCslpwjCj2YNBy_9polars_io7configs29cloud_writer_copy_buffer_size16COPY_BUFFER_SIZE00B9_", scope: !56907, file: !2184, line: 72, type: !1522, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56895 = distinct !DILexicalBlock(scope: !56894, file: !1568, line: 62, column: 38)
!56896 = distinct !DILexicalBlock(scope: !56892, file: !1609, line: 1622, column: 13)
!56897 = distinct !DILocation(line: 1622, column: 23, scope: !56896, inlinedAt: !56893)
!56898 = distinct !DILocation(line: 75, column: 9, scope: !56874, inlinedAt: !56873)
!56899 = distinct !DILocation(line: 810, column: 1, scope: !391, inlinedAt: !56898)
!56900 = distinct !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !56899)
!56901 = distinct !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !56899)
!56902 = distinct !DILexicalBlock(scope: !56874, file: !1997, line: 224, column: 29)
!56903 = !{i64 -3485822218812981763}
!56904 = !DINamespace(name: "cloud_writer_copy_buffer_size", scope: !2185)
!56905 = !DINamespace(name: "COPY_BUFFER_SIZE", scope: !56904)
!56906 = !DILexicalBlockFile(scope: !56895, file: !2184, discriminator: 0)
!56907 = !DINamespace(name: "{closure#0}", scope: !56905)
!56908 = !DILexicalBlockFile(scope: !56902, file: !2184, discriminator: 0)
!56909 = !DILocation(line: 69, column: 13, scope: !56872, inlinedAt: !56873)
!56910 = !DILocation(line: 69, column: 35, scope: !56872, inlinedAt: !56873)
!56911 = !DILocation(line: 71, column: 24, scope: !56875, inlinedAt: !56873)
!56912 = !DILocation(line: 71, column: 16, scope: !56875, inlinedAt: !56873)
!56913 = !DILocation(line: 71, column: 19, scope: !56875, inlinedAt: !56873)
!56914 = !DILocation(line: 72, column: 17, scope: !56875, inlinedAt: !56873)
!56915 = !DILocation(line: 614, column: 9, scope: !56876, inlinedAt: !56889)
!56916 = !DILocation(line: 1841, column: 86, scope: !56880, inlinedAt: !56885)
!56917 = !DILocation(line: 2762, column: 9, scope: !56890, inlinedAt: !56891)
!56918 = !DILocation(line: 75, column: 9, scope: !56874, inlinedAt: !56873)
!56919 = !DILocation(line: 1620, column: 15, scope: !56892, inlinedAt: !56893)
!56920 = !DILocation(line: 1620, column: 9, scope: !56892, inlinedAt: !56893)
!56921 = !DILocation(line: 73, column: 17, scope: !56906, inlinedAt: !56897)
!56922 = !DILocation(line: 73, column: 17, scope: !56894, inlinedAt: !56897)
!56923 = !DILocation(line: 1621, column: 16, scope: !56892, inlinedAt: !56893)
!56924 = !DILocation(line: 74, column: 14, scope: !56875, inlinedAt: !56873)
!56925 = !DILocation(line: 72, column: 13, scope: !56875, inlinedAt: !56873)
!56926 = !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !56899)
!56927 = !DILocation(line: 810, column: 1, scope: !284, inlinedAt: !56900)
!56928 = !DILocation(line: 810, column: 1, scope: !284, inlinedAt: !56901)
!56929 = !DILocation(line: 77, column: 12, scope: !56874, inlinedAt: !56873)
!56930 = !DILocation(line: 68, column: 69, scope: !56872, inlinedAt: !56873)
!56931 = !DILocation(line: 78, column: 13, scope: !56908, inlinedAt: !56873)
!56932 = !DILocation(line: 78, column: 13, scope: !56874, inlinedAt: !56873)
!56933 = !DILocation(line: 81, column: 9, scope: !56874, inlinedAt: !56873)
!56934 = !DILocation(line: 77, column: 9, scope: !56874, inlinedAt: !56873)
!56935 = !DILocation(line: 82, column: 5, scope: !56872, inlinedAt: !56873)
!56936 = !DILocation(line: 250, column: 5, scope: !56871)
!56937 = distinct !DISubprogram(name: "call_once<polars_io::configs::cloud_writer_coalesce_run_length::COALESCE_RUN_LENGTH::{closure_env#0}, ()>", linkageName: "_RNvYNCNvNvNtCslpwjCj2YNBy_9polars_io7configs32cloud_writer_coalesce_run_length19COALESCE_RUN_LENGTH0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBa_", scope: !1587, file: !1584, line: 250, type: !1522, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56938 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNvNtCslpwjCj2YNBy_9polars_io7configs32cloud_writer_coalesce_run_length19COALESCE_RUN_LENGTH0B7_", scope: !57007, file: !2184, line: 44, type: !1540, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56939 = distinct !DILocation(line: 250, column: 5, scope: !56937)
!56940 = distinct !DILexicalBlock(scope: !56938, file: !2184, line: 45, column: 9)
!56941 = distinct !DILexicalBlock(scope: !56940, file: !2184, line: 47, column: 81)
!56942 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECslpwjCj2YNBy_9polars_io", scope: !1976, file: !1974, line: 613, type: !1522, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56943 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECslpwjCj2YNBy_9polars_io", scope: !1976, file: !1974, line: 608, type: !1522, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56944 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCslpwjCj2YNBy_9polars_io", scope: !1978, file: !1974, line: 295, type: !1522, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56945 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE6as_ptrCslpwjCj2YNBy_9polars_io", scope: !1977, file: !1927, line: 1939, type: !1522, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56946 = distinct !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE8as_sliceCslpwjCj2YNBy_9polars_io", scope: !1977, file: !1927, line: 1824, type: !1522, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56947 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String6as_str", scope: !1945, file: !1929, line: 1052, type: !1522, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56948 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXsx_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !2077, file: !1929, line: 2822, type: !1522, scopeLine: 2822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56949 = distinct !DILocation(line: 48, column: 17, scope: !56941, inlinedAt: !56939)
!56950 = distinct !DILocation(line: 2823, column: 14, scope: !56948, inlinedAt: !56949)
!56951 = distinct !DILocation(line: 1055, column: 52, scope: !56947, inlinedAt: !56950)
!56952 = distinct !DILocation(line: 1841, column: 76, scope: !56946, inlinedAt: !56951)
!56953 = distinct !DILocation(line: 1942, column: 18, scope: !56945, inlinedAt: !56952)
!56954 = distinct !DILocation(line: 296, column: 20, scope: !56944, inlinedAt: !56953)
!56955 = distinct !DILocation(line: 609, column: 14, scope: !56943, inlinedAt: !56954)
!56956 = distinct !DISubprogram(name: "from_ascii_radix", linkageName: "_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix", scope: !57008, file: !2078, line: 1703, type: !1522, scopeLine: 1703, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56957 = distinct !DISubprogram(name: "from_str_radix", linkageName: "_RNvMsv_NtCscgRAwXFJnXP_4core3numj14from_str_radix", scope: !57008, file: !2078, line: 1624, type: !1522, scopeLine: 1624, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56958 = distinct !DISubprogram(name: "from_str", linkageName: "_RNvXsu_NtCscgRAwXFJnXP_4core3numjNtNtNtB7_3str6traits7FromStr8from_str", scope: !57009, file: !2078, line: 1573, type: !1522, scopeLine: 1573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56959 = distinct !DISubprogram(name: "parse<usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core3stre5parsejECslpwjCj2YNBy_9polars_io", scope: !2070, file: !2069, line: 2761, type: !1522, scopeLine: 2761, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56960 = distinct !DILocation(line: 49, column: 18, scope: !56941, inlinedAt: !56939)
!56961 = distinct !DILocation(line: 2762, column: 9, scope: !56959, inlinedAt: !56960)
!56962 = distinct !DILocation(line: 1574, column: 17, scope: !56958, inlinedAt: !56961)
!56963 = distinct !DILocation(line: 1625, column: 17, scope: !56957, inlinedAt: !56962)
!56964 = distinct !{!56964, i1 true, !"_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix"}
!56965 = distinct !{!56965, !56964, !"_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix: argument 1"}
!56966 = distinct !DILexicalBlock(scope: !56956, file: !2078, line: 1716, column: 17)
!56967 = distinct !DISubprogram(name: "can_not_overflow<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3num16can_not_overflowjECslpwjCj2YNBy_9polars_io", scope: !1643, file: !2078, line: 1516, type: !1522, scopeLine: 1516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56968 = distinct !DILexicalBlock(scope: !56966, file: !2078, line: 1718, column: 17)
!56969 = distinct !DILexicalBlock(scope: !56968, file: !2078, line: 1727, column: 17)
!56970 = distinct !DILocation(line: 1738, column: 20, scope: !56969, inlinedAt: !56963)
!56971 = distinct !DILexicalBlock(scope: !56969, file: !2078, line: 1749, column: 63)
!56972 = distinct !DILexicalBlock(scope: !56969, file: !2078, line: 1765, column: 63)
!56973 = distinct !DISubprogram(name: "overflowing_mul", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj15overflowing_mul", scope: !1644, file: !1642, line: 3104, type: !1522, scopeLine: 3104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56974 = distinct !DISubprogram(name: "checked_mul", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_mul", scope: !1644, file: !1642, line: 1214, type: !1522, scopeLine: 1214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56975 = distinct !DILocation(line: 1776, column: 50, scope: !56972, inlinedAt: !56963)
!56976 = distinct !DILocation(line: 1215, column: 31, scope: !56974, inlinedAt: !56975)
!56977 = distinct !DISubprogram(name: "unlikely", linkageName: "_RNvNtCscgRAwXFJnXP_4core10intrinsics8unlikely", scope: !1678, file: !1677, line: 456, type: !1522, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56978 = distinct !DILexicalBlock(scope: !56974, file: !1642, line: 1215, column: 13)
!56979 = distinct !DILocation(line: 1216, column: 16, scope: !56978, inlinedAt: !56975)
!56980 = distinct !DILexicalBlock(scope: !56972, file: !2078, line: 1776, column: 33)
!56981 = distinct !DILocation(line: 1777, column: 69, scope: !56980, inlinedAt: !56963)
!56982 = distinct !DILocation(line: 420, column: 27, scope: !1202, inlinedAt: !56981)
!56983 = distinct !DILocation(line: 1751, column: 69, scope: !56971, inlinedAt: !56963)
!56984 = distinct !DILocation(line: 420, column: 27, scope: !1202, inlinedAt: !56983)
!56985 = distinct !DILexicalBlock(scope: !56971, file: !2078, line: 1751, column: 33)
!56986 = distinct !DILocation(line: 55, column: 9, scope: !56940, inlinedAt: !56939)
!56987 = distinct !DILocation(line: 810, column: 1, scope: !391, inlinedAt: !56986)
!56988 = distinct !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !56987)
!56989 = distinct !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !56987)
!56990 = distinct !DISubprogram(name: "ok<usize, core::num::error::ParseIntError>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE2okCslpwjCj2YNBy_9polars_io", scope: !1611, file: !1609, line: 708, type: !1522, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56991 = distinct !DILocation(line: 50, column: 18, scope: !56941, inlinedAt: !56939)
!56992 = distinct !DISubprogram(name: "filter<usize, polars_io::configs::cloud_writer_coalesce_run_length::COALESCE_RUN_LENGTH::{closure#0}::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE6filterNCNCNvNvNtCslpwjCj2YNBy_9polars_io7configs32cloud_writer_coalesce_run_length19COALESCE_RUN_LENGTH00EB11_", scope: !1581, file: !1557, line: 1578, type: !1522, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56993 = distinct !DILexicalBlock(scope: !56992, file: !1557, line: 1583, column: 31)
!56994 = distinct !DILocation(line: 51, column: 18, scope: !56941, inlinedAt: !56939)
!56995 = distinct !DISubprogram(name: "unwrap_or_else<usize, polars_io::configs::cloud_writer_coalesce_run_length::COALESCE_RUN_LENGTH::{closure#0}::{closure_env#1}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE14unwrap_or_elseNCNCNvNvNtCslpwjCj2YNBy_9polars_io7configs32cloud_writer_coalesce_run_length19COALESCE_RUN_LENGTH0s_0EB1a_", scope: !1581, file: !1557, line: 1061, type: !1522, scopeLine: 1061, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!56996 = distinct !DILocation(line: 52, column: 18, scope: !56941, inlinedAt: !56939)
!56997 = distinct !DILocation(line: 55, column: 9, scope: !56940, inlinedAt: !56939)
!56998 = distinct !DILocation(line: 810, column: 1, scope: !391, inlinedAt: !56997)
!56999 = distinct !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !56998)
!57000 = distinct !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !56998)
!57001 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNCNvNvNtCslpwjCj2YNBy_9polars_io7configs32cloud_writer_coalesce_run_length19COALESCE_RUN_LENGTH0s_0B9_", scope: !57012, file: !2184, line: 52, type: !1522, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!57002 = distinct !DILexicalBlock(scope: !57001, file: !1568, line: 62, column: 38)
!57003 = distinct !DILocation(line: 1067, column: 21, scope: !56995, inlinedAt: !56996)
!57004 = distinct !DILexicalBlock(scope: !56940, file: !1997, line: 224, column: 29)
!57005 = !{i64 -5787452779842792700}
!57006 = !DINamespace(name: "cloud_writer_coalesce_run_length", scope: !2185)
!57007 = !DINamespace(name: "COALESCE_RUN_LENGTH", scope: !57006)
!57008 = !DINamespace(name: "{impl#33}", scope: !1643)
!57009 = !DINamespace(name: "{impl#32}", scope: !1643)
!57010 = !{!56965}
!57011 = !DILexicalBlockFile(scope: !57002, file: !2184, discriminator: 0)
!57012 = !DINamespace(name: "{closure#0}", scope: !57007)
!57013 = !DILexicalBlockFile(scope: !57004, file: !2184, discriminator: 0)
!57014 = !DILocation(line: 45, column: 13, scope: !56938, inlinedAt: !56939)
!57015 = !DILocation(line: 45, column: 28, scope: !56938, inlinedAt: !56939)
!57016 = !DILocation(line: 47, column: 24, scope: !56941, inlinedAt: !56939)
!57017 = !DILocation(line: 47, column: 16, scope: !56941, inlinedAt: !56939)
!57018 = !DILocation(line: 47, column: 19, scope: !56941, inlinedAt: !56939)
!57019 = !DILocation(line: 614, column: 9, scope: !56942, inlinedAt: !56955)
!57020 = !DILocation(line: 1841, column: 86, scope: !56946, inlinedAt: !56951)
!57021 = !DILocation(line: 1711, column: 20, scope: !56956, inlinedAt: !56963)
!57022 = !DILocation(line: 1718, column: 49, scope: !56966, inlinedAt: !56963)
!57023 = !DILocation(line: 1517, column: 5, scope: !56967, inlinedAt: !56970)
!57024 = !DILocation(line: 1749, column: 39, scope: !56971, inlinedAt: !56963)
!57025 = !DILocation(line: 1765, column: 43, scope: !56972, inlinedAt: !56963)
!57026 = !DILocation(line: 1765, column: 39, scope: !56972, inlinedAt: !56963)
!57027 = !DILocation(line: 3105, column: 26, scope: !56973, inlinedAt: !56976)
!57028 = !DILocation(line: 457, column: 8, scope: !56977, inlinedAt: !56979)
!57029 = !DILocation(line: 1777, column: 57, scope: !56980, inlinedAt: !56963)
!57030 = !DILocation(line: 1777, column: 56, scope: !56980, inlinedAt: !56963)
!57031 = !DILocation(line: 2548, column: 13, scope: !1201, inlinedAt: !56982)
!57032 = !DILocation(line: 423, column: 12, scope: !1203, inlinedAt: !56981)
!57033 = !DILocation(line: 1731, column: 25, scope: !56980, inlinedAt: !56963)
!57034 = !DILocation(line: 1751, column: 57, scope: !56971, inlinedAt: !56963)
!57035 = !DILocation(line: 1751, column: 56, scope: !56971, inlinedAt: !56963)
!57036 = !DILocation(line: 2548, column: 13, scope: !1201, inlinedAt: !56984)
!57037 = !DILocation(line: 423, column: 12, scope: !1203, inlinedAt: !56983)
!57038 = !DILocation(line: 1731, column: 25, scope: !56971, inlinedAt: !56963)
!57039 = !DILocation(line: 1750, column: 33, scope: !56971, inlinedAt: !56963)
!57040 = !DILocation(line: 1749, column: 43, scope: !56971, inlinedAt: !56963)
!57041 = !DILocation(line: 1752, column: 72, scope: !56985, inlinedAt: !56963)
!57042 = !DILocation(line: 1752, column: 33, scope: !56985, inlinedAt: !56963)
!57043 = !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !56987)
!57044 = !DILocation(line: 810, column: 1, scope: !284, inlinedAt: !56988)
!57045 = !DILocation(line: 810, column: 1, scope: !284, inlinedAt: !56989)
!57046 = !DILocation(line: 713, column: 9, scope: !56990, inlinedAt: !56991)
!57047 = !DILocation(line: 1583, column: 16, scope: !56993, inlinedAt: !56994)
!57048 = !DILocation(line: 1065, column: 9, scope: !56995, inlinedAt: !56996)
!57049 = !DILocation(line: 48, column: 13, scope: !56941, inlinedAt: !56939)
!57050 = !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !56998)
!57051 = !DILocation(line: 810, column: 1, scope: !284, inlinedAt: !56999)
!57052 = !DILocation(line: 810, column: 1, scope: !284, inlinedAt: !57000)
!57053 = !DILocation(line: 53, column: 21, scope: !57011, inlinedAt: !57003)
!57054 = !DILocation(line: 53, column: 21, scope: !57001, inlinedAt: !57003)
!57055 = !DILocation(line: 55, column: 9, scope: !56940, inlinedAt: !56939)
!57056 = !DILocation(line: 57, column: 12, scope: !56940, inlinedAt: !56939)
!57057 = !DILocation(line: 44, column: 65, scope: !56938, inlinedAt: !56939)
!57058 = !DILocation(line: 58, column: 13, scope: !57013, inlinedAt: !56939)
!57059 = !DILocation(line: 58, column: 13, scope: !56940, inlinedAt: !56939)
!57060 = !DILocation(line: 61, column: 9, scope: !56940, inlinedAt: !56939)
!57061 = !DILocation(line: 57, column: 9, scope: !56940, inlinedAt: !56939)
!57062 = !DILocation(line: 62, column: 5, scope: !56938, inlinedAt: !56939)
!57063 = !DILocation(line: 250, column: 5, scope: !56937)
!57064 = distinct !DISubprogram(name: "description<http::error::Error>", linkageName: "_RNvYNtNtCs1d9mkheQt2j_4http5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error11descriptionCslpwjCj2YNBy_9polars_io", scope: !2275, file: !2273, line: 137, type: !1522, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!57065 = !{i64 -4017529603541549292}
!57066 = !DILocation(line: 139, column: 6, scope: !57064)
!57067 = distinct !DISubprogram(name: "provide<http::error::Error>", linkageName: "_RNvYNtNtCs1d9mkheQt2j_4http5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error7provideCslpwjCj2YNBy_9polars_io", scope: !2275, file: !2273, line: 260, type: !1522, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!57068 = !{i64 -24809336664474349}
!57069 = !DILocation(line: 260, column: 59, scope: !57067)
!57070 = distinct !DISubprogram(name: "type_id<http::error::Error>", linkageName: "_RNvYNtNtCs1d9mkheQt2j_4http5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error7type_idCslpwjCj2YNBy_9polars_io", scope: !2275, file: !2273, line: 122, type: !1522, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!57071 = distinct !DISubprogram(name: "of<http::error::Error>", linkageName: "_RINvMs8_NtCscgRAwXFJnXP_4core3anyNtB6_6TypeId2ofNtNtCs1d9mkheQt2j_4http5error5ErrorECslpwjCj2YNBy_9polars_io", scope: !2278, file: !2276, line: 790, type: !1522, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!57072 = !{i64 -5257730239519516961}
!57073 = !DILocation(line: 126, column: 9, scope: !57070)
!57074 = !DILocation(line: 791, column: 9, scope: !57071, inlinedAt: !57073)
!57075 = !DILocation(line: 127, column: 6, scope: !57070)
!57076 = distinct !DISubprogram(name: "description<std::io::error::Error>", linkageName: "_RNvYNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error11descriptionCslpwjCj2YNBy_9polars_io", scope: !2275, file: !2273, line: 137, type: !1522, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!57077 = !{i64 -8166050410155379719}
!57078 = !DILocation(line: 139, column: 6, scope: !57076)
!57079 = distinct !DISubprogram(name: "provide<std::io::error::Error>", linkageName: "_RNvYNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error7provideCslpwjCj2YNBy_9polars_io", scope: !2275, file: !2273, line: 260, type: !1522, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!57080 = !{i64 -6265558311776325795}
!57081 = !DILocation(line: 260, column: 59, scope: !57079)
!57082 = distinct !DISubprogram(name: "type_id<std::io::error::Error>", linkageName: "_RNvYNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error7type_idCslpwjCj2YNBy_9polars_io", scope: !2275, file: !2273, line: 122, type: !1522, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!57083 = distinct !DISubprogram(name: "of<std::io::error::Error>", linkageName: "_RINvMs8_NtCscgRAwXFJnXP_4core3anyNtB6_6TypeId2ofNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io", scope: !2278, file: !2276, line: 790, type: !1522, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!57084 = !{i64 4469463625663325220}
!57085 = !DILocation(line: 126, column: 9, scope: !57082)
!57086 = !DILocation(line: 791, column: 9, scope: !57083, inlinedAt: !57085)
!57087 = !DILocation(line: 127, column: 6, scope: !57082)
!57088 = distinct !DISubprogram(name: "description<tokio::runtime::task::error::JoinError>", linkageName: "_RNvYNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorNtNtCscgRAwXFJnXP_4core5error5Error11descriptionCslpwjCj2YNBy_9polars_io", scope: !2275, file: !2273, line: 137, type: !1522, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!57089 = !{i64 6606296178038482888}
!57090 = !DILocation(line: 139, column: 6, scope: !57088)
!57091 = distinct !DISubprogram(name: "source<tokio::runtime::task::error::JoinError>", linkageName: "_RNvYNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorNtNtCscgRAwXFJnXP_4core5error5Error6sourceCslpwjCj2YNBy_9polars_io", scope: !2275, file: !2273, line: 111, type: !1522, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!57092 = !{i64 -3970543809865461005}
!57093 = !DILocation(line: 113, column: 6, scope: !57091)
!57094 = distinct !DISubprogram(name: "provide<tokio::runtime::task::error::JoinError>", linkageName: "_RNvYNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorNtNtCscgRAwXFJnXP_4core5error5Error7provideCslpwjCj2YNBy_9polars_io", scope: !2275, file: !2273, line: 260, type: !1522, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!57095 = !{i64 6274894023297436736}
!57096 = !DILocation(line: 260, column: 59, scope: !57094)
!57097 = distinct !DISubprogram(name: "type_id<tokio::runtime::task::error::JoinError>", linkageName: "_RNvYNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorNtNtCscgRAwXFJnXP_4core5error5Error7type_idCslpwjCj2YNBy_9polars_io", scope: !2275, file: !2273, line: 122, type: !1522, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!57098 = distinct !DISubprogram(name: "of<tokio::runtime::task::error::JoinError>", linkageName: "_RINvMs8_NtCscgRAwXFJnXP_4core3anyNtB6_6TypeId2ofNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorECslpwjCj2YNBy_9polars_io", scope: !2278, file: !2276, line: 790, type: !1522, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!57099 = !{i64 -5298777388622726251}
!57100 = !DILocation(line: 126, column: 9, scope: !57097)
!57101 = !DILocation(line: 791, column: 9, scope: !57098, inlinedAt: !57100)
!57102 = !DILocation(line: 127, column: 6, scope: !57097)
!57103 = distinct !DISubprogram(name: "description<alloc::boxed::convert::{impl#17}::from::StringError>", linkageName: "_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCslpwjCj2YNBy_9polars_io", scope: !2275, file: !2273, line: 137, type: !1522, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!57104 = !{i64 -6341460701546121025}
!57105 = !DILocation(line: 139, column: 6, scope: !57103)
!57106 = distinct !DISubprogram(name: "cause<alloc::boxed::convert::{impl#17}::from::StringError>", linkageName: "_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCslpwjCj2YNBy_9polars_io", scope: !2275, file: !2273, line: 147, type: !1522, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!57107 = !{i64 -6178357212241328078}
!57108 = !DILocation(line: 149, column: 6, scope: !57106)
!57109 = distinct !DISubprogram(name: "source<alloc::boxed::convert::{impl#17}::from::StringError>", linkageName: "_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCslpwjCj2YNBy_9polars_io", scope: !2275, file: !2273, line: 111, type: !1522, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!57110 = !{i64 -5916529488668120969}
!57111 = !DILocation(line: 113, column: 6, scope: !57109)
!57112 = distinct !DISubprogram(name: "provide<alloc::boxed::convert::{impl#17}::from::StringError>", linkageName: "_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCslpwjCj2YNBy_9polars_io", scope: !2275, file: !2273, line: 260, type: !1522, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!57113 = !{i64 5161227954954713229}
!57114 = !DILocation(line: 260, column: 59, scope: !57112)
!57115 = distinct !DISubprogram(name: "type_id<alloc::boxed::convert::{impl#17}::from::StringError>", linkageName: "_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCslpwjCj2YNBy_9polars_io", scope: !2275, file: !2273, line: 122, type: !1522, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!57116 = distinct !DISubprogram(name: "of<alloc::boxed::convert::{impl#17}::from::StringError>", linkageName: "_RINvMs8_NtCscgRAwXFJnXP_4core3anyNtB6_6TypeId2ofNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBU_3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB20_4SyncEL_EINtNtB8_7convert4FromNtNtBW_6string6StringE4from11StringErrorECslpwjCj2YNBy_9polars_io", scope: !2278, file: !2276, line: 790, type: !1522, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1521)
!57117 = !{i64 -8532541842691178768}
!57118 = !DILocation(line: 126, column: 9, scope: !57115)
!57119 = !DILocation(line: 791, column: 9, scope: !57116, inlinedAt: !57118)
!57120 = !DILocation(line: 127, column: 6, scope: !57115)
end_hunk_1
