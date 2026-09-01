Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.12?download=true
inline.NumInlined: 17181
inline.NumDeleted: 6681
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_RINvYINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEINtNtBa_8plumbing6FolderB17_E12consume_iterINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB2D_10take_while9TakeWhileIB2z_IB2z_INtNtNtB2H_5slice4iter4IterNtNtNtB1b_5frame6column6ColumnERNCINvMs0_NtNtB1b_13chunked_array7ndarrayNtNtB4w_9dataframe9DataFrame10to_ndarrayNtNtB1b_9datatypes9Int64TypeE0ERNCINvNvXs2_NtBc_6resultINtNtB2H_6result6ResultppEINtBa_20FromParallelIteratorIB7a_ppEE13from_par_iter2okB17_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE0ENCINvNvXs2_NtBa_10while_someINtB9r_15WhileSomeFolderpEIB1S_INtNtB2H_6option6OptionpEE12consume_iter4someB17_E0ENvMBag_IBae_B17_E6unwrapEECseeLknQCOKOd_13polars_python:bb.a
  %i.ag = trunc nuw i8 %i.af to i1, !dbg !145888
  br i1 %i.ag, label %.loopexit, label %bb.b, !dbg !145888

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit.i, %.thread20
  %.pn18 = phi { ptr, i32 } [ %lpad.phi, %.thread20 ], [ %i.x, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit.i ]
  resume { ptr, i32 } %.pn18, !dbg !146049

bb.o:                                             ; preds = %.thread20
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !146049
  unreachable, !dbg !146049
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEINtNtBa_8plumbing6FolderB17_E12consume_iterINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB2D_10take_while9TakeWhileIB2z_IB2z_INtNtNtB2H_5slice4iter4IterNtNtNtB1b_5frame6column6ColumnERNCINvMs0_NtNtB1b_13chunked_array7ndarrayNtNtB4w_9dataframe9DataFrame10to_ndarrayNtNtB1b_9datatypes9UInt8TypeE0ERNCINvNvXs2_NtBc_6resultINtNtB2H_6result6ResultppEINtBa_20FromParallelIteratorIB7a_ppEE13from_par_iter2okB17_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE0ENCINvNvXs2_NtBa_10while_someINtB9r_15WhileSomeFolderpEIB1S_INtNtB2H_6option6OptionpEE12consume_iter4someB17_E0ENvMBag_IBae_B17_E6unwrapEECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !146050 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !146051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !dbg !146051
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !dbg !146052, !range !1527, !alias.scope !146058, !noalias !146063, !noundef !11
  %i.h = trunc nuw i8 %i.g to i1, !dbg !146052
  br i1 %i.h, label %.loopexit, label %.lr.ph, !dbg !146052

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0..sroa_idx.promoted = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.7.0..sroa_idx.promoted, i64 %.sroa.6.0.copyload), !dbg !146052 ; 2 uses
  br label %bb.b, !dbg !146052

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.val7 = phi i64 [ %.sroa.7.0..sroa_idx.promoted, %.lr.ph ], [ %i.ae, %bb.m ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146065), !dbg !146067
  call void @llvm.experimental.noalias.scope.decl(metadata !146068), !dbg !146070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !146071, !noalias !146072
  call void @llvm.experimental.noalias.scope.decl(metadata !146073), !dbg !146076
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !146077, !noalias !146080
  %i.n = load ptr, ptr %i.e, align 8, !dbg !146082, !alias.scope !146086, !noalias !146091, !nonnull !11, !noundef !11 ; 3 uses
  %i.o = load ptr, ptr %i.i, align 8, !dbg !146093, !alias.scope !146086, !noalias !146091, !nonnull !11, !noundef !11
  %i.p = icmp eq ptr %i.n, %i.o, !dbg !146094
  br i1 %i.p, label %bb.d, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnERNCINvMs0_NtNtB1s_13chunked_array7ndarrayNtNtB1q_9dataframe9DataFrame10to_ndarrayNtNtB1s_9datatypes9UInt8TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !146096

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnERNCINvMs0_NtNtB1s_13chunked_array7ndarrayNtNtB1q_9dataframe9DataFrame10to_ndarrayNtNtB1s_9datatypes9UInt8TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 160, !dbg !146097
  store ptr %i.q, ptr %i.e, align 8, !dbg !146099, !alias.scope !146086, !noalias !146091
  invoke fastcc void @_RNCINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7ndarrayNtNtNtBc_5frame9dataframe9DataFrame10to_ndarrayNtNtBc_9datatypes9UInt8TypeE0CseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.c, ptr noundef nonnull align 16 %i.n) #56
          to label %.noexc unwind label %.thread20.loopexit, !dbg !146100

.noexc:                                           ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnERNCINvMs0_NtNtB1s_13chunked_array7ndarrayNtNtB1q_9dataframe9DataFrame10to_ndarrayNtNtB1s_9datatypes9UInt8TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i
  %.pr.i.i.i = load i64, ptr %i.c, align 8, !dbg !146108, !noalias !146080
  %.not.i.i.i = icmp eq i64 %.pr.i.i.i, 19, !dbg !146108
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !dbg !146111

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !146112, !noalias !146080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !dbg !146114, !noalias !146080
  %i.r = invoke { ptr, ptr } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNvXs2_NtCse67t6KqNqGQ_5rayon6resultINtNtBa_6result6ResultppEINtNtB10_4iter20FromParallelIteratorIB1s_ppEE13from_par_iter2okNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE0INtB6_5FnMutTIB1s_B2R_B3A_EEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.b)
          to label %.noexc8 unwind label %.thread20.loopexit, !dbg !146115 ; 2 uses

.noexc8:                                          ; preds = %bb.c
  %i.s = extractvalue { ptr, ptr } %i.r, 0, !dbg !146115 ; 5 uses
  %i.t = extractvalue { ptr, ptr } %i.r, 1, !dbg !146115 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !146118, !noalias !146080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !146119, !noalias !146080
  store ptr %i.s, ptr %i.d, align 8, !dbg !146120, !noalias !146072
  store ptr %i.t, ptr %i.k, align 8, !dbg !146120, !noalias !146072
  %.val.i.i = load ptr, ptr %i.l, align 8, !dbg !146123, !alias.scope !146125, !noalias !146063, !nonnull !11, !noundef !11 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.s, null, !dbg !146126
  br i1 %.not.i5.i.i, label %.thread.i.i, label %_RNCINvNvXs2_NtNtCse67t6KqNqGQ_5rayon4iter10while_someINtBa_15WhileSomeFolderpEINtNtBc_8plumbing6FolderINtNtCscgRAwXFJnXP_4core6option6OptionpEE12consume_iter4someNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE0CseeLknQCOKOd_13polars_python.exit.i.i, !dbg !146128

.thread.i.i:                                      ; preds = %.noexc8
  store atomic i8 1, ptr %.val.i.i monotonic, align 1, !dbg !146129, !noalias !146063
  br label %.loopexit.sink.split, !dbg !146132

bb.d:                                             ; preds = %.noexc, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !146119, !noalias !146080
  br label %.loopexit.sink.split, !dbg !146134

_RNCINvNvXs2_NtNtCse67t6KqNqGQ_5rayon4iter10while_someINtBa_15WhileSomeFolderpEINtNtBc_8plumbing6FolderINtNtCscgRAwXFJnXP_4core6option6OptionpEE12consume_iter4someNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE0CseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %.noexc8
  %i.u = load atomic i8, ptr %.val.i.i monotonic, align 1, !dbg !146135, !noalias !146063
  %.not1.i.i.i = icmp eq i8 %i.u, 0, !dbg !146138
  br i1 %.not1.i.i.i, label %bb.g, label %bb.e, !dbg !146123

bb.e:                                             ; preds = %_RNCINvNvXs2_NtNtCse67t6KqNqGQ_5rayon4iter10while_someINtBa_15WhileSomeFolderpEINtNtBc_8plumbing6FolderINtNtCscgRAwXFJnXP_4core6option6OptionpEE12consume_iter4someNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE0CseeLknQCOKOd_13polars_python.exit.i.i
  store i8 1, ptr %i.f, align 8, !dbg !146139, !alias.scope !146125, !noalias !146063
  %i.v = atomicrmw sub ptr %i.s, i64 1 release, align 8, !dbg !146140, !noalias !146146
  %i.w = icmp eq i64 %i.v, 1, !dbg !146155
  br i1 %i.w, label %bb.f, label %.loopexit.sink.split, !dbg !146155

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !146156
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #54
          to label %.loopexit.sink.split unwind label %.thread20.loopexit.split-lp, !dbg !146158

.thread20.loopexit:                               ; preds = %bb.c, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnERNCINvMs0_NtNtB1s_13chunked_array7ndarrayNtNtB1q_9dataframe9DataFrame10to_ndarrayNtNtB1s_9datatypes9UInt8TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread20

.thread20.loopexit.split-lp:                      ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread20

.thread20:                                        ; preds = %.thread20.loopexit.split-lp, %.thread20.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.thread20.loopexit ], [ %lpad.loopexit.split-lp, %.thread20.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python(ptr %.sroa.0.0.copyload, i64 %.val7) #50
          to label %bb.n unwind label %bb.o, !dbg !146159

bb.g:                                             ; preds = %_RNCINvNvXs2_NtNtCse67t6KqNqGQ_5rayon4iter10while_someINtBa_15WhileSomeFolderpEINtNtBc_8plumbing6FolderINtNtCscgRAwXFJnXP_4core6option6OptionpEE12consume_iter4someNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE0CseeLknQCOKOd_13polars_python.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !146160, !noalias !146072
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.s, ptr %i.a, align 8, !noalias !146161
  store ptr %i.t, ptr %i.m, align 8, !noalias !146161
  %exitcond.not = icmp eq i64 %.val7, %umax, !dbg !146166
  br i1 %exitcond.not, label %bb.h, label %bb.m, !dbg !146166, !prof !54

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @1419, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1420) #51
          to label %bb.k unwind label %bb.i, !dbg !146169, !noalias !146170

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !146171), !dbg !146174
  call void @llvm.experimental.noalias.scope.decl(metadata !146175), !dbg !146178
  call void @llvm.experimental.noalias.scope.decl(metadata !146180), !dbg !146183
  %i.y = load ptr, ptr %i.a, align 8, !dbg !146185, !alias.scope !146189, !noalias !146161, !nonnull !11, !noundef !11
  %i.z = atomicrmw sub ptr %i.y, i64 1 release, align 8, !dbg !146190, !noalias !146193
  %i.aa = icmp eq i64 %i.z, 1, !dbg !146194
  br i1 %i.aa, label %bb.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit.i, !dbg !146194

bb.j:                                             ; preds = %bb.i
  fence acquire, !dbg !146195
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #54
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.l, !dbg !146197, !noalias !146170

bb.k:                                             ; preds = %bb.h
  unreachable

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit.i, %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !146198, !noalias !146170
  unreachable, !dbg !146198

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.j, %bb.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python(ptr %.sroa.0.0.copyload, i64 %umax) #50
          to label %bb.n unwind label %bb.l, !dbg !146174, !noalias !146170

.loopexit.sink.split:                             ; preds = %.thread.i.i, %bb.e, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !146160, !noalias !146072
  br label %.loopexit, !dbg !146199

.loopexit:                                        ; preds = %bb.m, %.loopexit.sink.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !146199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !146200
  ret void, !dbg !146201

bb.m:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.val7, !dbg !146202 ; 2 uses
  store ptr %i.s, ptr %i.ac, align 8, !dbg !146204, !noalias !146170
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !146204
  store ptr %i.t, ptr %i.ad, align 8, !dbg !146204, !noalias !146170
  %i.ae = add i64 %.val7, 1, !dbg !146207         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !146208
  store i64 %i.ae, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !146209
  %i.af = load i8, ptr %i.f, align 8, !dbg !146052, !range !1527, !alias.scope !146210, !noalias !146063, !noundef !11
  %i.ag = trunc nuw i8 %i.af to i1, !dbg !146052
  br i1 %i.ag, label %.loopexit, label %bb.b, !dbg !146052

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit.i, %.thread20
  %.pn18 = phi { ptr, i32 } [ %lpad.phi, %.thread20 ], [ %i.x, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit.i ]
  resume { ptr, i32 } %.pn18, !dbg !146213

bb.o:                                             ; preds = %.thread20
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !146213
  unreachable, !dbg !146213
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtNtBa_8plumbing6FolderB17_E12consume_iterINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB2L_10take_while9TakeWhileIB2H_IB2H_INtNtB2L_3zip3ZipINtNtNtB2P_3ops5range5RangejEINtNtBc_3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ERNCINvNvXs2_NtBc_6resultINtNtB2P_6result6ResultppEINtBa_20FromParallelIteratorIB8w_ppEE13from_par_iter2okB17_NtNtCsbm5zPlkZccl_4pyo33err5PyErrE0ENCINvNvXs2_NtBa_10while_someINtBaD_15WhileSomeFolderpEIB20_INtNtB2P_6option6OptionpEE12consume_iter4someB17_E0ENvMBbs_IBbq_B17_E6unwrapEEB6W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !146214 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4.i.i.i.i = alloca ptr, align 8          ; 7 uses
  %.sroa.8.i.i.i.i = alloca ptr, align 8          ; 5 uses
  %i.b = alloca [160 x i8], align 16              ; 4 uses
  %i.c = alloca [160 x i8], align 16              ; 6 uses
  %i.d = alloca [160 x i8], align 16              ; 6 uses
  %i.e = alloca [160 x i8], align 16              ; 8 uses
  %i.f = alloca [160 x i8], align 16              ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !146215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false), !dbg !146215
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 4 uses
  %i.i = load i8, ptr %i.h, align 8, !dbg !146216, !range !1527, !alias.scope !146222, !noalias !146227, !noundef !11
  %i.j = trunc nuw i8 %i.i to i1, !dbg !146216
  br i1 %i.j, label %.loopexit, label %.lr.ph, !dbg !146216

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.sroa.9.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.010.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.612.0.copyload = load i64, ptr %.sroa.612.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx.promoted = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.7.0..sroa_idx.promoted, i64 %.sroa.612.0.copyload), !dbg !146216 ; 2 uses
  br label %bb.c, !dbg !146216

bb.b:                                             ; preds = %.body
  br i1 %.sroa.0.3.lpad-body, label %bb.t, label %bb.s, !dbg !146230

.thread:                                          ; preds = %.loopexit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %.val.pre = load ptr, ptr %1, align 8, !dbg !146230, !alias.scope !21011
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !146230, !alias.scope !21011
  br label %bb.t, !dbg !146230

bb.c:                                             ; preds = %.lr.ph, %bb.q
  %i.r = phi i64 [ %.sroa.7.0..sroa_idx.promoted, %.lr.ph ], [ %i.am, %bb.q ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146231), !dbg !146233
  call void @llvm.experimental.noalias.scope.decl(metadata !146234), !dbg !146236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !146237, !noalias !146238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !146239, !noalias !146238
  call void @llvm.experimental.noalias.scope.decl(metadata !146240), !dbg !146243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !146244, !noalias !146247
  call void @llvm.experimental.noalias.scope.decl(metadata !146249), !dbg !146252
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i), !dbg !146253
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i), !dbg !146253
  call void @llvm.experimental.noalias.scope.decl(metadata !146256), !dbg !146259
  call void @llvm.experimental.noalias.scope.decl(metadata !146260), !dbg !146259
  call void @llvm.experimental.noalias.scope.decl(metadata !146262), !dbg !146265
  call void @llvm.experimental.noalias.scope.decl(metadata !146268), !dbg !146265
  call void @llvm.experimental.noalias.scope.decl(metadata !146270), !dbg !146273
  call void @llvm.experimental.noalias.scope.decl(metadata !146278), !dbg !146273
  %i.s = load i64, ptr %i.k, align 8, !dbg !146280, !alias.scope !146282, !noalias !146287, !noundef !11 ; 3 uses
  %i.t = load i64, ptr %i.l, align 8, !dbg !146289, !alias.scope !146290, !noalias !146291, !noundef !11
  %i.u = icmp ult i64 %i.s, %i.t, !dbg !146280
  br i1 %i.u, label %bb.d, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEENtNtNtB8_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !146273

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw i64 %i.s, 1, !dbg !146292
  store i64 %i.v, ptr %i.k, align 8, !dbg !146295, !alias.scope !146296, !noalias !146297
  call void @llvm.experimental.noalias.scope.decl(metadata !146298), !dbg !146301
  %i.w = load ptr, ptr %i.g, align 8, !dbg !146303, !alias.scope !146311, !noalias !146297, !nonnull !11, !noundef !11 ; 4 uses
  %i.x = load ptr, ptr %i.m, align 8, !dbg !146312, !alias.scope !146311, !noalias !146297, !nonnull !11, !noundef !11
  %i.y = icmp eq ptr %i.w, %i.x, !dbg !146314
  br i1 %i.y, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEENtNtNtB8_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i.i, label %bb.e, !dbg !146318

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !146319
  store ptr %i.z, ptr %i.g, align 8, !dbg !146322, !alias.scope !146311, !noalias !146297
  %i.aa = load ptr, ptr %i.w, align 8, !dbg !146323, !noalias !146327, !nonnull !11, !noundef !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !146323
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !146323, !noalias !146327, !nonnull !11, !align !2013, !noundef !11
  store ptr %i.aa, ptr %.sroa.4.i.i.i.i, align 8, !dbg !146328, !alias.scope !146330, !noalias !146331
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEENtNtNtB8_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !146332

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEENtNtNtB8_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink20.i.i.sroa.phi.i.i.i.i = phi ptr [ %.sroa.8.i.i.i.i, %bb.e ], [ %.sroa.4.i.i.i.i, %bb.c ], [ %.sroa.4.i.i.i.i, %bb.d ]
  %.sink.i.i.i.i.i.i = phi ptr [ %i.ac, %bb.e ], [ null, %bb.c ], [ null, %bb.d ]
  store ptr %.sink.i.i.i.i.i.i, ptr %.sink20.i.i.sroa.phi.i.i.i.i, align 8, !dbg !146333, !alias.scope !146330, !noalias !146331
  %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i.i.i.i = load ptr, ptr %.sroa.4.i.i.i.i, align 8, !dbg !146334, !noalias !146337, !noundef !11 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i.i.i.i, null, !dbg !146334
  br i1 %.not.i.i.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ENtNtNtB9_6traits8iterator8Iterator4nextB3Y_.exit.thread.i.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ENtNtNtB9_6traits8iterator8Iterator4nextB3Y_.exit.i.i.i, !dbg !146338

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ENtNtNtB9_6traits8iterator8Iterator4nextB3Y_.exit.thread.i.i.i: ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEENtNtNtB8_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i), !dbg !146339
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i), !dbg !146339
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ERNCINvNvXs2_NtB1N_6resultINtNtBb_6result6ResultppEINtNtB1N_4iter20FromParallelIteratorIB5D_ppEE13from_par_iter2okNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsbm5zPlkZccl_4pyo33err5PyErrE0ENtNtNtB9_6traits8iterator8Iterator4nextB42_.exit.thread.i.i, !dbg !146340

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ENtNtNtB9_6traits8iterator8Iterator4nextB3Y_.exit.i.i.i: ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEENtNtNtB8_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i.i
  %.sroa.8.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload.i.i.i.i = load ptr, ptr %.sroa.8.i.i.i.i, align 8, !dbg !146343, !noalias !146337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !146344, !noalias !146337
  store i64 %i.s, ptr %i.a, align 8, !dbg !146344, !noalias !146337
  store ptr %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i.i.i.i, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !dbg !146344, !noalias !146337
  store ptr %.sroa.8.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !dbg !146344, !noalias !146337
  invoke void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000INtB6_5FnMutTTjINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEEE8call_mutB13_(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc unwind label %.loopexit24, !dbg !146346

.noexc:                                           ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ENtNtNtB9_6traits8iterator8Iterator4nextB3Y_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !146349, !noalias !146337
  %.pr.i.i.i = load i8, ptr %i.c, align 16, !dbg !146350, !noalias !146247
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i), !dbg !146339
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i), !dbg !146339
  %.not.i.i.i = icmp eq i8 %.pr.i.i.i, 33, !dbg !146350
  br i1 %.not.i.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ERNCINvNvXs2_NtB1N_6resultINtNtBb_6result6ResultppEINtNtB1N_4iter20FromParallelIteratorIB5D_ppEE13from_par_iter2okNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsbm5zPlkZccl_4pyo33err5PyErrE0ENtNtNtB9_6traits8iterator8Iterator4nextB42_.exit.thread.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ERNCINvNvXs2_NtB1N_6resultINtNtBb_6result6ResultppEINtNtB1N_4iter20FromParallelIteratorIB5D_ppEE13from_par_iter2okNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsbm5zPlkZccl_4pyo33err5PyErrE0ENtNtNtB9_6traits8iterator8Iterator4nextB42_.exit.i.i, !dbg !146340

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ERNCINvNvXs2_NtB1N_6resultINtNtBb_6result6ResultppEINtNtB1N_4iter20FromParallelIteratorIB5D_ppEE13from_par_iter2okNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsbm5zPlkZccl_4pyo33err5PyErrE0ENtNtNtB9_6traits8iterator8Iterator4nextB42_.exit.thread.i.i: ; preds = %.noexc, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ENtNtNtB9_6traits8iterator8Iterator4nextB3Y_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !146351, !noalias !146247
  br label %.loopexit25, !dbg !146352

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ERNCINvNvXs2_NtB1N_6resultINtNtBb_6result6ResultppEINtNtB1N_4iter20FromParallelIteratorIB5D_ppEE13from_par_iter2okNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsbm5zPlkZccl_4pyo33err5PyErrE0ENtNtNtB9_6traits8iterator8Iterator4nextB42_.exit.i.i: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !146355, !noalias !146247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.b, ptr noundef nonnull align 16 dereferenceable(160) %i.c, i64 160, i1 false), !dbg !146357, !noalias !146247
  invoke void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNvXs2_NtCse67t6KqNqGQ_5rayon6resultINtNtBa_6result6ResultppEINtNtB10_4iter20FromParallelIteratorIB1s_ppEE13from_par_iter2okNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsbm5zPlkZccl_4pyo33err5PyErrE0INtB6_5FnMutTIB1s_B2R_B3I_EEE8call_mutCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.b)
          to label %.noexc4 unwind label %.loopexit24, !dbg !146358

.noexc4:                                          ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ERNCINvNvXs2_NtB1N_6resultINtNtBb_6result6ResultppEINtNtB1N_4iter20FromParallelIteratorIB5D_ppEE13from_par_iter2okNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsbm5zPlkZccl_4pyo33err5PyErrE0ENtNtNtB9_6traits8iterator8Iterator4nextB42_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !146361, !noalias !146247
  %.pr.i.i = load i8, ptr %i.d, align 16, !dbg !146362, !noalias !146238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !146351, !noalias !146247
  %.not.i.i = icmp eq i8 %.pr.i.i, 33, !dbg !146362
  br i1 %.not.i.i, label %.loopexit25, label %bb.f, !dbg !146352

bb.f:                                             ; preds = %.noexc4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.e, ptr noundef nonnull align 16 dereferenceable(160) %i.d, i64 160, i1 false), !dbg !146363, !noalias !146238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !146364, !noalias !146238
  %.val.i.i = load ptr, ptr %i.p, align 8, !dbg !146365, !alias.scope !146367, !noalias !146227, !nonnull !11, !noundef !11 ; 2 uses
  %.val1.i.i = load i8, ptr %i.e, align 16, !dbg !146365, !range !15996, !noalias !146238, !noundef !11 ; 3 uses
  %.not.i2.i.i = icmp eq i8 %.val1.i.i, 32, !dbg !146368
  br i1 %.not.i2.i.i, label %.thread.i.i, label %_RNCINvNvXs2_NtNtCse67t6KqNqGQ_5rayon4iter10while_someINtBa_15WhileSomeFolderpEINtNtBc_8plumbing6FolderINtNtCscgRAwXFJnXP_4core6option6OptionpEE12consume_iter4someNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE0CseeLknQCOKOd_13polars_python.exit.i.i, !dbg !146371

.thread.i.i:                                      ; preds = %bb.f
  store atomic i8 1, ptr %.val.i.i monotonic, align 1, !dbg !146372, !noalias !146227
  store i8 1, ptr %i.h, align 8, !dbg !146376, !alias.scope !146367, !noalias !146227
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_3map3MapIB1b_INtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ERNCINvNvXs2_NtB2i_6resultINtNtBb_6result6ResultppEINtNtB2i_4iter20FromParallelIteratorIB68_ppEE13from_par_iter2okNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsbm5zPlkZccl_4pyo33err5PyErrE0ENCINvNvXs2_NtB6z_10while_someINtB99_15WhileSomeFolderpEINtNtB6z_8plumbing6FolderINtNtBb_6option6OptionpEE12consume_iter4someB7x_E0ENtNtNtB9_6traits8iterator8Iterator4nextB4x_.exit.thread.sink.split.i, !dbg !146377

.loopexit25:                                      ; preds = %.noexc4, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ERNCINvNvXs2_NtB1N_6resultINtNtBb_6result6ResultppEINtNtB1N_4iter20FromParallelIteratorIB5D_ppEE13from_par_iter2okNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsbm5zPlkZccl_4pyo33err5PyErrE0ENtNtNtB9_6traits8iterator8Iterator4nextB42_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !146364, !noalias !146238
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_3map3MapIB1b_INtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ERNCINvNvXs2_NtB2i_6resultINtNtBb_6result6ResultppEINtNtB2i_4iter20FromParallelIteratorIB68_ppEE13from_par_iter2okNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsbm5zPlkZccl_4pyo33err5PyErrE0ENCINvNvXs2_NtB6z_10while_someINtB99_15WhileSomeFolderpEINtNtB6z_8plumbing6FolderINtNtBb_6option6OptionpEE12consume_iter4someB7x_E0ENtNtNtB9_6traits8iterator8Iterator4nextB4x_.exit.thread.sink.split.i, !dbg !146380

_RNCINvNvXs2_NtNtCse67t6KqNqGQ_5rayon4iter10while_someINtBa_15WhileSomeFolderpEINtNtBc_8plumbing6FolderINtNtCscgRAwXFJnXP_4core6option6OptionpEE12consume_iter4someNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE0CseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.f
  %i.ad = load atomic i8, ptr %.val.i.i monotonic, align 1, !dbg !146381, !noalias !146227
  %.not1.i.i.i = icmp eq i8 %i.ad, 0, !dbg !146385
  br i1 %.not1.i.i.i, label %bb.k, label %bb.g, !dbg !146365

bb.g:                                             ; preds = %_RNCINvNvXs2_NtNtCse67t6KqNqGQ_5rayon4iter10while_someINtBa_15WhileSomeFolderpEINtNtBc_8plumbing6FolderINtNtCscgRAwXFJnXP_4core6option6OptionpEE12consume_iter4someNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE0CseeLknQCOKOd_13polars_python.exit.i.i
  store i8 1, ptr %i.h, align 8, !dbg !146376, !alias.scope !146367, !noalias !146227
  call void @llvm.experimental.noalias.scope.decl(metadata !146386), !dbg !146389
  call void @llvm.experimental.noalias.scope.decl(metadata !146390), !dbg !146377
  %i.ae = icmp eq i8 %.val1.i.i, 31, !dbg !146393
  br i1 %i.ae, label %bb.h, label %bb.j, !dbg !146393

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !146393 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146395), !dbg !146393
  call void @llvm.experimental.noalias.scope.decl(metadata !146398), !dbg !146401
  call void @llvm.experimental.noalias.scope.decl(metadata !146403), !dbg !146406
  call void @llvm.experimental.noalias.scope.decl(metadata !146408), !dbg !146411
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !146413, !alias.scope !146417, !noalias !146238, !nonnull !11, !noundef !11
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !dbg !146418, !noalias !146421
  %i.ai = icmp eq i64 %i.ah, 1, !dbg !146422
  br i1 %i.ai, label %bb.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_3map3MapIB1b_INtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ERNCINvNvXs2_NtB2i_6resultINtNtBb_6result6ResultppEINtNtB2i_4iter20FromParallelIteratorIB68_ppEE13from_par_iter2okNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsbm5zPlkZccl_4pyo33err5PyErrE0ENCINvNvXs2_NtB6z_10while_someINtB99_15WhileSomeFolderpEINtNtB6z_8plumbing6FolderINtNtBb_6option6OptionpEE12consume_iter4someB7x_E0ENtNtNtB9_6traits8iterator8Iterator4nextB4x_.exit.thread.sink.split.i, !dbg !146422

bb.i:                                             ; preds = %bb.h
  fence acquire, !dbg !146423
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.af) #54
          to label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_3map3MapIB1b_INtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ERNCINvNvXs2_NtB2i_6resultINtNtBb_6result6ResultppEINtNtB2i_4iter20FromParallelIteratorIB68_ppEE13from_par_iter2okNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsbm5zPlkZccl_4pyo33err5PyErrE0ENCINvNvXs2_NtB6z_10while_someINtB99_15WhileSomeFolderpEINtNtB6z_8plumbing6FolderINtNtBb_6option6OptionpEE12consume_iter4someB7x_E0ENtNtNtB9_6traits8iterator8Iterator4nextB4x_.exit.thread.sink.split.i unwind label %.loopexit.split-lp, !dbg !146425

bb.j:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.e)
          to label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_3map3MapIB1b_INtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ERNCINvNvXs2_NtB2i_6resultINtNtBb_6result6ResultppEINtNtB2i_4iter20FromParallelIteratorIB68_ppEE13from_par_iter2okNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsbm5zPlkZccl_4pyo33err5PyErrE0ENCINvNvXs2_NtB6z_10while_someINtB99_15WhileSomeFolderpEINtNtB6z_8plumbing6FolderINtNtBb_6option6OptionpEE12consume_iter4someB7x_E0ENtNtNtB9_6traits8iterator8Iterator4nextB4x_.exit.thread.sink.split.i unwind label %.loopexit.split-lp, !dbg !146393

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_3map3MapIB1b_INtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ERNCINvNvXs2_NtB2i_6resultINtNtBb_6result6ResultppEINtNtB2i_4iter20FromParallelIteratorIB68_ppEE13from_par_iter2okNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsbm5zPlkZccl_4pyo33err5PyErrE0ENCINvNvXs2_NtB6z_10while_someINtB99_15WhileSomeFolderpEINtNtB6z_8plumbing6FolderINtNtBb_6option6OptionpEE12consume_iter4someB7x_E0ENtNtNtB9_6traits8iterator8Iterator4nextB4x_.exit.thread.sink.split.i: ; preds = %bb.j, %bb.i, %bb.h, %.loopexit25, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !146389, !noalias !146238
  br label %.loopexit, !dbg !146426

.loopexit24:                                      ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ENtNtNtB9_6traits8iterator8Iterator4nextB3Y_.exit.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ERNCINvNvXs2_NtB1N_6resultINtNtBb_6result6ResultppEINtNtB1N_4iter20FromParallelIteratorIB5D_ppEE13from_par_iter2okNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsbm5zPlkZccl_4pyo33err5PyErrE0ENtNtNtB9_6traits8iterator8Iterator4nextB42_.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.i, %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit24, %.loopexit.split-lp, %bb.p
  %.sroa.0.3.lpad-body = phi i1 [ false, %bb.p ], [ true, %.loopexit.split-lp ], [ true, %.loopexit24 ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.p ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit24 ] ; 2 uses
  invoke void @_RNvXsf_NtCse67t6KqNqGQ_5rayon3vecINtB5_10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.g)
          to label %bb.b unwind label %bb.r, !dbg !146427

bb.k:                                             ; preds = %_RNCINvNvXs2_NtNtCse67t6KqNqGQ_5rayon4iter10while_someINtBa_15WhileSomeFolderpEINtNtBc_8plumbing6FolderINtNtCscgRAwXFJnXP_4core6option6OptionpEE12consume_iter4someNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE0CseeLknQCOKOd_13polars_python.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(159) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(159) %.sroa.9.0..sroa_idx3.i, i64 159, i1 false), !dbg !146440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !146389, !noalias !146238
  store i8 %.val1.i.i, ptr %i.f, align 16, !dbg !146441
  %exitcond.not = icmp eq i64 %i.r, %umax, !dbg !146442
  br i1 %exitcond.not, label %bb.l, label %bb.q, !dbg !146442, !prof !54

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @1419, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1420) #51
          to label %bb.n unwind label %bb.m, !dbg !146446, !noalias !146447

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.f) #50
          to label %bb.p unwind label %bb.o, !dbg !146452, !noalias !146453

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.p, %bb.m
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !146454, !noalias !146453
  unreachable, !dbg !146454

bb.p:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECseeLknQCOKOd_13polars_python(ptr %.sroa.010.0.copyload, i64 %umax) #50
          to label %.body unwind label %bb.o, !dbg !146452, !noalias !146453

.loopexit:                                        ; preds = %bb.q, %bb.a, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_3map3MapIB1b_INtNtB7_3zip3ZipINtNtNtBb_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ERNCINvNvXs2_NtB2i_6resultINtNtBb_6result6ResultppEINtNtB2i_4iter20FromParallelIteratorIB68_ppEE13from_par_iter2okNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsbm5zPlkZccl_4pyo33err5PyErrE0ENCINvNvXs2_NtB6z_10while_someINtB99_15WhileSomeFolderpEINtNtB6z_8plumbing6FolderINtNtBb_6option6OptionpEE12consume_iter4someB7x_E0ENtNtNtB9_6traits8iterator8Iterator4nextB4x_.exit.thread.sink.split.i
  invoke void @_RNvXsf_NtCse67t6KqNqGQ_5rayon3vecINtB5_10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_10take_while9TakeWhileIBH_IBH_INtNtBL_3zip3ZipINtNtNtB4_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ERNCINvNvXs2_NtB2D_6resultINtNtB4_6result6ResultppEINtNtB2D_4iter20FromParallelIteratorIB6t_ppEE13from_par_iter2okNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsbm5zPlkZccl_4pyo33err5PyErrE0ENCINvNvXs2_NtB6U_10while_someINtB9u_15WhileSomeFolderpEINtNtB6U_8plumbing6FolderINtNtB4_6option6OptionpEE12consume_iter4someB7S_E0ENvMBaE_IBaC_B7S_E6unwrapEEB4S_.exit9 unwind label %.thread, !dbg !146455

bb.q:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw [160 x i8], ptr %.sroa.010.0.copyload, i64 %i.r, !dbg !146462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.al, ptr noundef nonnull align 16 dereferenceable(160) %i.f, i64 160, i1 false), !dbg !146465, !noalias !146453
  %i.am = add i64 %i.r, 1, !dbg !146466           ; 2 uses
  store i64 %i.am, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !146467
  %i.an = load i8, ptr %i.h, align 8, !dbg !146216, !range !1527, !alias.scope !146468, !noalias !146227, !noundef !11
  %i.ao = trunc nuw i8 %i.an to i1, !dbg !146216
  br i1 %i.ao, label %.loopexit, label %bb.c, !dbg !146216

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_10take_while9TakeWhileIBH_IBH_INtNtBL_3zip3ZipINtNtNtB4_3ops5range5RangejEINtNtCse67t6KqNqGQ_5rayon3vec10SliceDrainINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEERNCNCNCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5arrow7to_rust10to_rust_dfs1_0s_000ERNCINvNvXs2_NtB2D_6resultINtNtB4_6result6ResultppEINtNtB2D_4iter20FromParallelIteratorIB6t_ppEE13from_par_iter2okNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsbm5zPlkZccl_4pyo33err5PyErrE0ENCINvNvXs2_NtB6U_10while_someINtB9u_15WhileSomeFolderpEINtNtB6U_8plumbing6FolderINtNtB4_6option6OptionpEE12consume_iter4someB7S_E0ENvMBaE_IBaC_B7S_E6unwrapEEB4S_.exit9: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !146471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !146472
  ret void, !dbg !146473

bb.r:                                             ; preds = %.body, %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !146474
  unreachable, !dbg !146474

bb.s:                                             ; preds = %bb.t, %bb.b
  %.pn20 = phi { ptr, i32 } [ %.pn21, %bb.t ], [ %eh.lpad-body, %bb.b ]
  resume { ptr, i32 } %.pn20, !dbg !146474

bb.t:                                             ; preds = %.thread, %bb.b
  %.val3 = phi i64 [ %.val3.pre, %.thread ], [ %i.r, %bb.b ], !dbg !146230
  %.val = phi ptr [ %.val.pre, %.thread ], [ %.sroa.010.0.copyload, %bb.b ], !dbg !146230
  %.pn21 = phi { ptr, i32 } [ %i.q, %.thread ], [ %eh.lpad-body, %bb.b ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECseeLknQCOKOd_13polars_python(ptr %.val, i64 %.val3) #50
          to label %bb.s unwind label %bb.r, !dbg !146230
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEINtNtBa_8plumbing6FolderB17_E12consume_iterINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB2R_10take_while9TakeWhileIB2N_IB2N_INtNtNtB2V_5slice4iter4IterNtNtB1b_6column6ColumnERNCNCNvYB17_NtNtCsePnBjWcsLF5_10polars_ops5frame12DataFrameOps11__to_dummiess_00ERNCINvNvXs2_NtBc_6resultINtNtB2V_6result6ResultppEINtBa_20FromParallelIteratorIB6L_ppEE13from_par_iter2okB17_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE0ENCINvNvXs2_NtBa_10while_someINtB92_15WhileSomeFolderpEIB26_INtNtB2V_6option6OptionpEE12consume_iter4someB17_E0ENvMB9R_IB9P_B17_E6unwrapEECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !146475 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !146476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !dbg !146476
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !dbg !146477, !range !1527, !alias.scope !146483, !noalias !146488, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1, !dbg !146477
  br i1 %i.i, label %.loopexit, label %.lr.ph, !dbg !146477

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.9.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.06.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.68.0.copyload = load i64, ptr %.sroa.68.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx.promoted = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.7.0..sroa_idx.promoted, i64 %.sroa.68.0.copyload), !dbg !146477 ; 2 uses
  br label %bb.b, !dbg !146477

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.val3 = phi i64 [ %.sroa.7.0..sroa_idx.promoted, %.lr.ph ], [ %i.v, %bb.k ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146491), !dbg !146493
  call void @llvm.experimental.noalias.scope.decl(metadata !146494), !dbg !146496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !146497, !noalias !146498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !146499, !noalias !146498
end_hunk_0
