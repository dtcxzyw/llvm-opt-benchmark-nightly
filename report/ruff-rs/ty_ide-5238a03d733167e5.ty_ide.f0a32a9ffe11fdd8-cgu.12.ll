Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_ide-5238a03d733167e5.ty_ide.f0a32a9ffe11fdd8-cgu.12?download=true
inline.NumInlined: 1331
inline.NumDeleted: 615
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEEBJ_:bb.a
bb.e:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !2040 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEEBI_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !2041, !nonnull !4, !noundef !4
  %i.k = mul nuw i64 %.val.i.i.i, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !2043
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEEBI_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEEBI_.exit: ; preds = %.lr.ph, %bb.e, %bb.f
  %i.l = icmp eq i64 %i.c, %1
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEEBI_.exit, %bb.a
  ret void

bb.g:                                             ; preds = %.lr.ph20
  %i.m = add i64 %.sroa.0.119, 1                  ; 2 uses
  %i.n = icmp eq i64 %i.m, %1
  br i1 %i.n, label %._crit_edge21, label %.lr.ph20

.body:                                            ; preds = %bb.c, %bb.d
  %i.o = icmp eq i64 %i.c, %1
  br i1 %i.o, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %.body, %bb.g
  %.sroa.0.119 = phi i64 [ %i.m, %bb.g ], [ %i.c, %.body ] ; 2 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.0.119
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEEBI_(ptr noalias noundef align 8 dereferenceable(48) %i.p) #26
          to label %bb.g unwind label %bb.h

._crit_edge21:                                    ; preds = %bb.g, %.body
  resume { ptr, i32 } %i.e

bb.h:                                             ; preds = %.lr.ph20
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringEEBJ_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringEEBI_.exit
  %.sroa.0.08 = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringEEBI_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.0.08 ; 6 uses
  %i.c = add nuw nsw i64 %.sroa.0.08, 1           ; 4 uses
  %i.d = load i64, ptr %i.b, align 8, !range !3, !alias.scope !2056, !noundef !4
  %.not.i.i = icmp eq i64 %i.d, -1
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringEEBI_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document12BodyFragmentNtNtB7_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !2057 ; 2 uses
  %i.f = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.f, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !2058, !nonnull !4, !noundef !4
  %i.h = mul nuw i64 %.val2.i.i.i, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !2059
  br label %.body

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !2057 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringEEBI_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !2058, !nonnull !4, !noundef !4
  %i.k = mul nuw i64 %.val.i.i.i, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !2060
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringEEBI_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringEEBI_.exit: ; preds = %.lr.ph, %bb.e, %bb.f
  %i.l = icmp eq i64 %i.c, %1
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringEEBI_.exit, %bb.a
  ret void

bb.g:                                             ; preds = %.lr.ph20
  %i.m = add i64 %.sroa.0.119, 1                  ; 2 uses
  %i.n = icmp eq i64 %i.m, %1
  br i1 %i.n, label %._crit_edge21, label %.lr.ph20

.body:                                            ; preds = %bb.c, %bb.d
  %i.o = icmp eq i64 %i.c, %1
  br i1 %i.o, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %.body, %bb.g
  %.sroa.0.119 = phi i64 [ %i.m, %bb.g ], [ %i.c, %.body ] ; 2 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.0.119
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringEEBI_(ptr noalias noundef align 8 dereferenceable(48) %i.p) #26
          to label %bb.g unwind label %bb.h

._crit_edge21:                                    ; preds = %bb.g, %.body
  resume { ptr, i32 } %i.e

bb.h:                                             ; preds = %.lr.ph20
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structured7SectionEBK_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structured7SectionEBJ_.exit
  %.sroa.0.08 = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structured7SectionEBJ_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.08 ; 5 uses
  %i.c = add nuw nsw i64 %.sroa.0.08, 1           ; 4 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structured11SectionItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.b, align 8, !alias.scope !2071 ; 2 uses
  %i.e = icmp eq i64 %.val2.i.i, 0
  br i1 %i.e, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i.i = load ptr, ptr %i.f, align 8, !alias.scope !2072, !nonnull !4, !noundef !4
  %i.g = mul nuw i64 %.val2.i.i, 80
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !2073
  br label %.body

bb.d:                                             ; preds = %.lr.ph
  %.val.i.i = load i64, ptr %i.b, align 8, !alias.scope !2071 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i, 0
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structured7SectionEBJ_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i = load ptr, ptr %i.i, align 8, !alias.scope !2072, !nonnull !4, !noundef !4
  %i.j = mul nuw i64 %.val.i.i, 80
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !2074
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structured7SectionEBJ_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structured7SectionEBJ_.exit: ; preds = %bb.d, %bb.e
  %i.k = icmp eq i64 %i.c, %1
  br i1 %i.k, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structured7SectionEBJ_.exit, %bb.a
  ret void

bb.f:                                             ; preds = %.lr.ph20
  %i.l = add i64 %.sroa.0.119, 1                  ; 2 uses
  %i.m = icmp eq i64 %i.l, %1
  br i1 %i.m, label %._crit_edge21, label %.lr.ph20

.body:                                            ; preds = %bb.b, %bb.c
  %i.n = icmp eq i64 %i.c, %1
  br i1 %i.n, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %.body, %bb.f
  %.sroa.0.119 = phi i64 [ %i.l, %bb.f ], [ %i.c, %.body ] ; 2 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.119
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structured7SectionEBJ_(ptr noalias noundef align 8 dereferenceable(40) %i.o) #26
          to label %bb.f unwind label %bb.g

._crit_edge21:                                    ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.d

bb.g:                                             ; preds = %.lr.ph20
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB1a_3map3MapINtNtB4_9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerENCNvMs_B2R_NtB2R_11Completions12into_imports0ENCB3L_s_0ENtB2R_10ImportEditEB2T_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %i.g = mul i64 %i.c, 200                        ; 6 uses
  %i.h = udiv i64 %i.g, 48                        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerENCNvMs_B1M_NtB1M_11Completions12into_imports0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB1M_10ImportEditENCINvNtB8_10filter_map19filter_map_try_foldNtB1M_10CompletionB4G_B45_INtNtBc_6result6ResultB45_zENCB2G_s_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB4G_E0E0B66_EB1O_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noalias noundef nonnull %i.i, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.k, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEEB1s_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerENCNvMs_B2s_NtB2s_11Completions12into_imports0ENCB3m_s_0EEB2u_.exit unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.l = extractvalue { ptr, ptr } %i.j, 1
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = udiv exact i64 %i.o, 48                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.r, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2077)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !2077, !nonnull !4, !noundef !4 ; 4 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !2077, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = ptrtoint ptr %.val1.i to i64
  %i.u = ptrtoint ptr %.val.i to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = udiv exact i64 %i.v, 200                 ; 3 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !2077
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !2077
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !2077
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !2077
  %i.x = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.x, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerE32forget_allocation_drop_remainingBZ_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit.i.i: ; preds = %.lr.ph
  %i.y = icmp eq i64 %i.aa, %i.w
  br i1 %i.y, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerE32forget_allocation_drop_remainingBZ_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit.i.i
  %.sroa.0.0.i.i18 = phi i64 [ %i.aa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.z = getelementptr inbounds nuw [200 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i18
  %i.aa = add nuw nsw i64 %.sroa.0.0.i.i18, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion10CompletionEBF_(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.z)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit.i.i unwind label %bb.e, !noalias !2077

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit7.i.i: ; preds = %.lr.ph20
  %i.ab = add i64 %.sroa.0.1.i.i19, 1             ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.w
  br i1 %i.ac, label %.body, label %.lr.ph20

bb.e:                                             ; preds = %.lr.ph
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = icmp eq i64 %i.aa, %i.w
  br i1 %i.ae, label %.body, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit7.i.i
  %.sroa.0.1.i.i19 = phi i64 [ %i.ab, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit7.i.i ], [ %i.aa, %bb.e ] ; 2 uses
  %i.af = getelementptr inbounds nuw [200 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i19
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion10CompletionEBF_(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.af)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit7.i.i unwind label %bb.f, !noalias !2077

bb.f:                                             ; preds = %.lr.ph20
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !2077
  unreachable

bb.g:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit7.i.i, %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.ad, %bb.e ], [ %i.ad, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit7.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerNtB1M_10ImportEditEEB1O_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #26
          to label %bb.b unwind label %bb.m

_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerE32forget_allocation_drop_remainingBZ_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit.i.i, %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.ai = mul nuw i64 %i.h, 48                    ; 4 uses
  %i.aj = icmp ne i64 %i.g, %i.ai
  %or.cond = select i1 %.not.i, i1 %i.aj, i1 false
  br i1 %or.cond, label %bb.h, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerNtB12_10ImportEditEB14_.exit.thread

_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerNtB12_10ImportEditEB14_.exit.thread: ; preds = %bb.i, %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerE32forget_allocation_drop_remainingBZ_.exit, %bb.j
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.ao, %bb.j ], [ %i.d, %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerE32forget_allocation_drop_remainingBZ_.exit ]
  store i64 %i.h, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.al, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEEB1s_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
  ret void

bb.h:                                             ; preds = %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerE32forget_allocation_drop_remainingBZ_.exit
  %i.am = icmp ult i64 %i.g, 48
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #27
  br label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerNtB12_10ImportEditEB14_.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.an = icmp ule i64 %i.ai, %i.g
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.ai) #27 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.k, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerNtB12_10ImportEditEB14_.exit.thread, !prof !21

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ai) #29
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.b, %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerENCNvMs_B2s_NtB2s_11Completions12into_imports0ENCB3m_s_0EEB2u_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB1a_3map3MapINtNtB4_9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerENCNvMs_B2R_NtB2R_11Completions19into_qualifications0ENCB3L_s_0ENtB2R_10ImportEditEB2T_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %i.g = mul i64 %i.c, 200                        ; 6 uses
  %i.h = udiv i64 %i.g, 48                        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerENCNvMs_B1M_NtB1M_11Completions19into_qualifications0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB1M_10ImportEditENCINvNtB8_10filter_map19filter_map_try_foldNtB1M_10CompletionB4N_B4c_INtNtBc_6result6ResultB4c_zENCB2G_s_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB4N_E0E0B6d_EB1O_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.k, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEEB1s_(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerENCNvMs_B2s_NtB2s_11Completions19into_qualifications0ENCB3m_s_0EEB2u_.exit unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.l = extractvalue { ptr, ptr } %i.j, 1
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = udiv exact i64 %i.o, 48                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.r, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !2080, !nonnull !4, !noundef !4 ; 4 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !2080, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = ptrtoint ptr %.val1.i to i64
  %i.u = ptrtoint ptr %.val.i to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = udiv exact i64 %i.v, 200                 ; 3 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !2080
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !2080
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !2080
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !2080
  %i.x = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.x, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerE32forget_allocation_drop_remainingBZ_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit.i.i: ; preds = %.lr.ph
  %i.y = icmp eq i64 %i.aa, %i.w
  br i1 %i.y, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerE32forget_allocation_drop_remainingBZ_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit.i.i
  %.sroa.0.0.i.i18 = phi i64 [ %i.aa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.z = getelementptr inbounds nuw [200 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i18
  %i.aa = add nuw nsw i64 %.sroa.0.0.i.i18, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion10CompletionEBF_(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.z)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit.i.i unwind label %bb.e, !noalias !2080

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit7.i.i: ; preds = %.lr.ph20
  %i.ab = add i64 %.sroa.0.1.i.i19, 1             ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.w
  br i1 %i.ac, label %.body, label %.lr.ph20

bb.e:                                             ; preds = %.lr.ph
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = icmp eq i64 %i.aa, %i.w
  br i1 %i.ae, label %.body, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit7.i.i
  %.sroa.0.1.i.i19 = phi i64 [ %i.ab, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit7.i.i ], [ %i.aa, %bb.e ] ; 2 uses
  %i.af = getelementptr inbounds nuw [200 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i19
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion10CompletionEBF_(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.af)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit7.i.i unwind label %bb.f, !noalias !2080

bb.f:                                             ; preds = %.lr.ph20
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !2080
  unreachable

bb.g:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit7.i.i, %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.ad, %bb.e ], [ %i.ad, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit7.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerNtB1M_10ImportEditEEB1O_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #26
          to label %bb.b unwind label %bb.m

_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerE32forget_allocation_drop_remainingBZ_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit.i.i, %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.ai = mul nuw i64 %i.h, 48                    ; 4 uses
  %i.aj = icmp ne i64 %i.g, %i.ai
  %or.cond = select i1 %.not.i, i1 %i.aj, i1 false
  br i1 %or.cond, label %bb.h, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerNtB12_10ImportEditEB14_.exit.thread

_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerNtB12_10ImportEditEB14_.exit.thread: ; preds = %bb.i, %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerE32forget_allocation_drop_remainingBZ_.exit, %bb.j
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.ao, %bb.j ], [ %i.d, %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerE32forget_allocation_drop_remainingBZ_.exit ]
  store i64 %i.h, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.al, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEEB1s_(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %1)
  ret void

bb.h:                                             ; preds = %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerE32forget_allocation_drop_remainingBZ_.exit
  %i.am = icmp ult i64 %i.g, 48
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #27
  br label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerNtB12_10ImportEditEB14_.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.an = icmp ule i64 %i.ai, %i.g
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.ai) #27 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.k, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerNtB12_10ImportEditEB14_.exit.thread, !prof !21

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ai) #29
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.b, %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerENCNvMs_B2s_NtB2s_11Completions19into_qualifications0ENCB3m_s_0EEB2u_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerENCNvMs_B2m_NtB2m_11Completions16into_completions0ENtB2m_10CompletionEB2o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerENCNvMs_B1M_NtB1M_11Completions16into_completions0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB1M_10CompletionENCINvNtB12_16in_place_collect24write_in_place_with_dropB4K_E0INtNtBc_6result6ResultB49_zEEB1O_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.aa, %.body ], [ %i.h, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEEB1s_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerENCNvMs_B1Y_NtB1Y_11Completions16into_completions0EEB20_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 200                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2083)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !2083, !nonnull !4, !noundef !4 ; 4 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !2083, !nonnull !4, !noundef !4 ; 2 uses
  %i.q = ptrtoint ptr %.val1.i to i64
  %i.r = ptrtoint ptr %.val.i to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = udiv exact i64 %i.s, 200                 ; 3 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !2083
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !2083
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !alias.scope !2083
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !2083
  %i.u = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.u, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerE32forget_allocation_drop_remainingBZ_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit.i.i: ; preds = %.lr.ph
  %i.v = icmp eq i64 %i.x, %i.t
  br i1 %i.v, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerE32forget_allocation_drop_remainingBZ_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit.i.i
  %.sroa.0.0.i.i10 = phi i64 [ %i.x, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw [200 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i10
  %i.x = add nuw nsw i64 %.sroa.0.0.i.i10, 1      ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion10CompletionEBF_(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.w)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit.i.i unwind label %bb.e, !noalias !2083

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit7.i.i: ; preds = %.lr.ph12
  %i.y = add i64 %.sroa.0.1.i.i11, 1              ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.t
  br i1 %i.z, label %.body, label %.lr.ph12

bb.e:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = icmp eq i64 %i.x, %i.t
  br i1 %i.ab, label %.body, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit7.i.i
  %.sroa.0.1.i.i11 = phi i64 [ %i.y, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit7.i.i ], [ %i.x, %bb.e ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [200 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion10CompletionEBF_(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit7.i.i unwind label %bb.f, !noalias !2083

bb.f:                                             ; preds = %.lr.ph12
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !2083
  unreachable

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit7.i.i, %bb.e
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerNtB1M_10CompletionEEB1O_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #26
          to label %bb.b unwind label %bb.g

_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerE32forget_allocation_drop_remainingBZ_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEBF_.exit.i.i, %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerEEB1s_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskEUeM34gmJU_6ty_ide10completion16CompletionRankerENCNvMs_B1Y_NtB1Y_11Completions16into_completions0EEB20_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskEUeM34gmJU_6ty_ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2086)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !22, !alias.scope !2086, !noundef !4 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2086
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !2086
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !2086
  %i.j = load i64, ptr %i.a, align 8, !range !10, !noalias !2086, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !23, !noalias !2086, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !2086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2086
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #29
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !2086, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2086
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !2086
  %i.q = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !2086
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document12BodyFragmentINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBa_6string6StringEEENtNtNtNtB20_4iter6traits8iterator8Iterator4folduNCINvNtNtB31_8adapters3map8map_foldBW_NtNtNtB11_8markdown10structured11SectionItemuNCNvNtB4l_5numpy7section0NCINvNvB2V_8for_each4callB4j_NCINvMsj_B8_INtB8_3VecB4j_E14extend_trustedINtB3M_3MapBH_B52_EE0E0E0EB13_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 5 uses
  %i.g = alloca [72 x i8], align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvNtCskEUeM34gmJU_6ty_ide6rename6rename:bb.a
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = icmp eq i64 %7, 0
  br i1 %i.o, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide4goto10GotoTargetEBF_(ptr noalias noundef align 8 dereferenceable(56) %i.b)
          to label %bb.i unwind label %bb.c

bb.h:                                             ; preds = %bb.e
  %i.p = invoke { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core12program_fileNtB4_11ProgramFile4file(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %2)
          to label %bb.o unwind label %bb.n       ; 2 uses

.body:                                            ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(32) %i.d) #26
          to label %common.resume unwind label %bb.w

bb.i:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !3663)
  call void @llvm.experimental.noalias.scope.decl(metadata !3664)
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3665)
  call void @llvm.experimental.noalias.scope.decl(metadata !3666)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !3667, !nonnull !4, !noundef !4
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !3667
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECskEUeM34gmJU_6ty_ide.exit.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtCsfaQTJLFXFb5_8arc_swap10ArcSwapAnyINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleEEEE9drop_slowB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECskEUeM34gmJU_6ty_ide.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3668)
  call void @llvm.experimental.noalias.scope.decl(metadata !3669)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !3670, !nonnull !4, !noundef !4
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !3671
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.l, label %common.resume

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %common.resume unwind label %bb.m

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECskEUeM34gmJU_6ty_ide.exit.i: ; preds = %bb.j, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3672)
  call void @llvm.experimental.noalias.scope.decl(metadata !3673)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !3674, !nonnull !4, !noundef !4
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !3675
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECskEUeM34gmJU_6ty_ide.exit13.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECskEUeM34gmJU_6ty_ide.exit13

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %.body, %bb.t, %bb.u, %bb.k, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.t ], [ %i.u, %bb.k ], [ %i.u, %bb.l ], [ %i.am, %bb.u ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECskEUeM34gmJU_6ty_ide.exit13.sink.split: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECskEUeM34gmJU_6ty_ide.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECskEUeM34gmJU_6ty_ide.exit.i11
  %.sink = phi ptr [ %i.ar, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECskEUeM34gmJU_6ty_ide.exit.i11 ], [ %i.z, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECskEUeM34gmJU_6ty_ide.exit.i ]
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECskEUeM34gmJU_6ty_ide.exit13

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECskEUeM34gmJU_6ty_ide.exit13: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECskEUeM34gmJU_6ty_ide.exit13.sink.split, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECskEUeM34gmJU_6ty_ide.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECskEUeM34gmJU_6ty_ide.exit.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide4goto10GotoTargetEBF_(ptr noalias noundef align 8 dereferenceable(56) %i.b) #26
          to label %bb.b unwind label %bb.w

bb.o:                                             ; preds = %bb.h
  %i.af = extractvalue { i32, i32 } %i.p, 0
  %i.ag = extractvalue { i32, i32 } %i.p, 1
  %i.ah = invoke fastcc noundef zeroext i1 @_RNvNtCskEUeM34gmJU_6ty_ide6rename18is_file_in_project(ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %2, i32 noundef %i.af, i32 noundef %i.ag)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %. = select i1 %i.ah, i8 3, i8 2
  invoke void @_RNvNtCskEUeM34gmJU_6ty_ide10references10references(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %2, i32 noundef %3, i32 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b, i8 noundef %.)
          to label %bb.q unwind label %bb.n

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide4goto10GotoTargetEBF_(ptr noalias noundef align 8 dereferenceable(56) %i.b)
          to label %bb.r unwind label %bb.c

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !3676)
  call void @llvm.experimental.noalias.scope.decl(metadata !3677)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3678)
  call void @llvm.experimental.noalias.scope.decl(metadata !3679)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !3680, !nonnull !4, !noundef !4
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !3680
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECskEUeM34gmJU_6ty_ide.exit.i11

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtCsfaQTJLFXFb5_8arc_swap10ArcSwapAnyINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleEEEE9drop_slowB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECskEUeM34gmJU_6ty_ide.exit.i11 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3681)
  call void @llvm.experimental.noalias.scope.decl(metadata !3682)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !3683, !nonnull !4, !noundef !4
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !3684
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.u, label %common.resume

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %common.resume unwind label %bb.v

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECskEUeM34gmJU_6ty_ide.exit.i11: ; preds = %bb.s, %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3685)
  call void @llvm.experimental.noalias.scope.decl(metadata !3686)
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !3687, !nonnull !4, !noundef !4
  %i.at = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !3688
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECskEUeM34gmJU_6ty_ide.exit13.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECskEUeM34gmJU_6ty_ide.exit13

bb.v:                                             ; preds = %bb.u
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.w:                                             ; preds = %bb.b, %bb.n, %.body
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structured5numpy19structured_sections(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [1 x i8], align 1                 ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document5numpy8sections(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %i.o = icmp ult i64 %i.n, 192153584101141163
  call void @llvm.assume(i1 %i.o)
  %.idx = mul nuw nsw i64 %i.n, 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx ; 4 uses
  %i.q = load i64, ptr %i.i, align 8, !range !22, !noundef !4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store ptr %i.p, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3720)
  call void @llvm.experimental.noalias.scope.decl(metadata !3721)
  %i.r = mul i64 %i.q, 48                         ; 6 uses
  %i.s = udiv i64 %i.r, 40                        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3722)
  call void @llvm.experimental.noalias.scope.decl(metadata !3723)
  call void @llvm.experimental.noalias.scope.decl(metadata !3724)
  %.not24.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not24.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i

.body.i:                                          ; preds = %bb.s, %.body.i.i.i.i.i
  %.pn.i = phi { ptr, i32 } [ %i.be, %bb.s ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtB4_6option6OptionNtNtB1u_6string6StringEEENvNtNtNtB2f_8markdown10structured5numpy7sectionEEB2h_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j) #26
          to label %common.resume.i unwind label %bb.y, !noalias !3720

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtBa_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtB1j_8markdown10structured7SectionINtNtNtB2x_3vec13in_place_drop11InPlaceDropB36_EINtNtBa_6result6ResultB3J_zENvNtB38_5numpy7sectionNCINvNtB3O_16in_place_collect24write_in_place_with_dropB36_E0E0B1l_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.x = phi ptr [ %i.l, %.lr.ph.i.i.i.i ], [ %i.y, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtBa_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtB1j_8markdown10structured7SectionINtNtNtB2x_3vec13in_place_drop11InPlaceDropB36_EINtNtBa_6result6ResultB3J_zENvNtB38_5numpy7sectionNCINvNtB3O_16in_place_collect24write_in_place_with_dropB36_E0E0B1l_.exit.i.i.i.i ] ; 7 uses
  %.sroa.4.025.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i ], [ %.pn6.i.i.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtBa_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtB1j_8markdown10structured7SectionINtNtNtB2x_3vec13in_place_drop11InPlaceDropB36_EINtNtBa_6result6ResultB3J_zENvNtB38_5numpy7sectionNCINvNtB3O_16in_place_collect24write_in_place_with_dropB36_E0E0B1l_.exit.i.i.i.i ] ; 6 uses
  %.sroa.012.0.copyload.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !3725 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.5.0.copyload.i.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !3725
  %.sroa.715.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.715.0.copyload.i.i.i.i = load i32, ptr %.sroa.715.0..sroa_idx.i.i.i.i, align 8, !noalias !3725
  %.sroa.816.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %.sroa.816.0.copyload.i.i.i.i = load i32, ptr %.sroa.816.0..sroa_idx.i.i.i.i, align 4, !noalias !3725
  %.sroa.917.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.917.0.copyload.i.i.i.i = load i8, ptr %.sroa.917.0..sroa_idx.i.i.i.i, align 8, !noalias !3725
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3725
  store ptr %i.l, ptr %i.g, align 8, !noalias !3726
  store ptr %.sroa.4.025.i.i.i.i, ptr %i.t, align 8, !noalias !3726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3727
  store i8 %.sroa.917.0.copyload.i.i.i.i, ptr %i.e, align 1, !noalias !3727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3727
  %i.z = icmp eq i64 %.sroa.012.0.copyload.i.i.i.i, -1
  br i1 %i.z, label %.thread.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.413.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.413.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !3728
  %i.aa = trunc nuw i8 %.sroa.5.0.copyload.i.i.i.i to i1
  store i64 %.sroa.012.0.copyload.i.i.i.i, ptr %i.a, align 8, !noalias !3727
  br i1 %i.aa, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document12BodyFragmentINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_6string6StringEEENtNtNtB1I_3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.e, !noalias !3727

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3729, !noalias !3720
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !3730, !noalias !3727 ; 2 uses
  %i.ac = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %.body.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !3731, !noalias !3727, !nonnull !4, !noundef !4
  br label %common.resume.sink.split.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !3730, !noalias !3727 ; 2 uses
  %i.ad = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.ad, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document12BodyFragmentINtNtB4_6option6OptionNtNtBG_6string6StringEEEEB1e_.exit.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !3731, !noalias !3727, !nonnull !4, !noundef !4
  %i.ae = mul nuw i64 %.val.i.i.i.i.i.i.i.i, 72
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !3732
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document12BodyFragmentINtNtB4_6option6OptionNtNtBG_6string6StringEEEEB1e_.exit.i.i.i.i.i.i.i

common.resume.sink.split.i.i.i.i.i.i.i:           ; preds = %bb.l, %bb.f
  %.val2.i8.sink.i.i.i.i.i.i.i = phi i64 [ %.val2.i8.i.i.i.i.i.i.i, %bb.l ], [ %.val2.i.i.i.i.i.i.i.i, %bb.f ]
  %.val3.i9.sink.i.i.i.i.i.i.i = phi ptr [ %.val3.i9.i.i.i.i.i.i.i, %bb.l ], [ %.val3.i.i.i.i.i.i.i.i, %bb.f ]
  %common.resume.op.ph.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %i.ab, %bb.f ]
  %i.af = mul nuw i64 %.val2.i8.sink.i.i.i.i.i.i.i, 72
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i9.sink.i.i.i.i.i.i.i, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !3727
  br label %.body.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document12BodyFragmentINtNtB4_6option6OptionNtNtBG_6string6StringEEEEB1e_.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3727
  br label %.thread.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !3727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3727
  %i.ag = load i64, ptr %i.u, align 8, !noalias !3727, !noundef !4 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 128102389400760776
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document12BodyFragmentINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_6string6StringEEENtNtNtB1I_3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.m unwind label %bb.k, !noalias !3727

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3729, !noalias !3720
  %.val2.i8.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !3733, !noalias !3727 ; 2 uses
  %i.ak = icmp eq i64 %.val2.i8.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %.body.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val3.i9.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !3734, !noalias !3727, !nonnull !4, !noundef !4
  br label %common.resume.sink.split.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.j
  %.val.i11.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !3733, !noalias !3727 ; 2 uses
  %i.al = icmp eq i64 %.val.i11.i.i.i.i.i.i.i, 0
  br i1 %i.al, label %.thread.i.i.i.i.i, label %.thread10.i.i.i.i.i

.thread10.i.i.i.i.i:                              ; preds = %bb.m
  %.val1.i12.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !3734, !noalias !3727, !nonnull !4, !noundef !4
  %i.am = mul nuw i64 %.val.i11.i.i.i.i.i.i.i, 72
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i12.i.i.i.i.i.i.i, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !3735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3727
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtBa_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtB1j_8markdown10structured7SectionINtNtNtB2x_3vec13in_place_drop11InPlaceDropB36_EINtNtBa_6result6ResultB3J_zENvNtB38_5numpy7sectionNCINvNtB3O_16in_place_collect24write_in_place_with_dropB36_E0E0B1l_.exit.i.i.i.i

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3727
  %i.an = load ptr, ptr %i.v, align 8, !noalias !3727, !nonnull !4, !noundef !4 ; 3 uses
  %i.ao = load i64, ptr %i.d, align 8, !range !22, !noalias !3727, !noundef !4
  %i.ap = getelementptr inbounds nuw [72 x i8], ptr %i.an, i64 %i.ag
  store ptr %i.an, ptr %i.b, align 8, !noalias !3727
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3727
  store i64 %i.ao, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3727
  store ptr %i.ap, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3727
  store ptr %i.e, ptr %i.w, align 8, !noalias !3727
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structured11SectionItemEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtB18_8document12BodyFragmentINtNtB2R_6option6OptionNtNtB8_6string6StringEEENCNvNtB14_5numpy7section0EE9from_iterB1a_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %.noexc.i.i.i.i.i unwind label %bb.o, !noalias !3726

.noexc.i.i.i.i.i:                                 ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3727
  invoke void @_RNvMs_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structuredNtB4_7Section3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, i32 noundef %.sroa.715.0.copyload.i.i.i.i, i32 noundef %.sroa.816.0.copyload.i.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.p unwind label %bb.o, !noalias !3726

bb.o:                                             ; preds = %.noexc.i.i.i.i.i, %bb.n
  %i.aq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3729, !noalias !3720
  br label %.body.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document12BodyFragmentINtNtB4_6option6OptionNtNtBG_6string6StringEEEEB1e_.exit.i.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3727
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtBa_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtB1j_8markdown10structured7SectionINtNtNtB2x_3vec13in_place_drop11InPlaceDropB36_EINtNtBa_6result6ResultB3J_zENvNtB38_5numpy7sectionNCINvNtB3O_16in_place_collect24write_in_place_with_dropB36_E0E0B1l_.exit.i.i.i.i

bb.p:                                             ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3727
  %.pr.pre.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !3726
  %i.ar = icmp eq i64 %.pr.pre.i.i.i.i.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3727
  br i1 %i.ar, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtBa_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtB1j_8markdown10structured7SectionINtNtNtB2x_3vec13in_place_drop11InPlaceDropB36_EINtNtBa_6result6ResultB3J_zENvNtB38_5numpy7sectionNCINvNtB3O_16in_place_collect24write_in_place_with_dropB36_E0E0B1l_.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.025.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !3726
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.4.025.i.i.i.i, i64 40
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtBa_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtB1j_8markdown10structured7SectionINtNtNtB2x_3vec13in_place_drop11InPlaceDropB36_EINtNtBa_6result6ResultB3J_zENvNtB38_5numpy7sectionNCINvNtB3O_16in_place_collect24write_in_place_with_dropB36_E0E0B1l_.exit.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.o, %bb.k, %common.resume.sink.split.i.i.i.i.i.i.i, %bb.e
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.aq, %bb.o ], [ %i.ab, %bb.e ], [ %i.aj, %bb.k ], [ %common.resume.op.ph.i.i.i.i.i.i.i, %common.resume.sink.split.i.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structured7SectionEEB1F_(ptr noalias noundef align 8 dereferenceable(16) %i.g) #26
          to label %.body.i unwind label %bb.r, !noalias !3726

bb.r:                                             ; preds = %.body.i.i.i.i.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !3726
  unreachable

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtBa_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtB1j_8markdown10structured7SectionINtNtNtB2x_3vec13in_place_drop11InPlaceDropB36_EINtNtBa_6result6ResultB3J_zENvNtB38_5numpy7sectionNCINvNtB3O_16in_place_collect24write_in_place_with_dropB36_E0E0B1l_.exit.i.i.i.i: ; preds = %bb.q, %bb.p, %.thread.i.i.i.i.i, %.thread10.i.i.i.i.i
  %.pn6.i.i.i.i.i = phi ptr [ %i.as, %bb.q ], [ %.sroa.4.025.i.i.i.i, %.thread10.i.i.i.i.i ], [ %.sroa.4.025.i.i.i.i, %.thread.i.i.i.i.i ], [ %.sroa.4.025.i.i.i.i, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3725
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.p
  br i1 %.not.i.i.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtBa_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtB1j_8markdown10structured7SectionINtNtNtB2x_3vec13in_place_drop11InPlaceDropB36_EINtNtBa_6result6ResultB3J_zENvNtB38_5numpy7sectionNCINvNtB3O_16in_place_collect24write_in_place_with_dropB36_E0E0B1l_.exit.i.i.i.i, %bb.a
  %.val.i.i = phi ptr [ %i.l, %bb.a ], [ %i.p, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtBa_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtB1j_8markdown10structured7SectionINtNtNtB2x_3vec13in_place_drop11InPlaceDropB36_EINtNtBa_6result6ResultB3J_zENvNtB38_5numpy7sectionNCINvNtB3O_16in_place_collect24write_in_place_with_dropB36_E0E0B1l_.exit.i.i.i.i ] ; 2 uses
  %.sroa.4.0.lcssa.i.i.i.i = phi ptr [ %i.l, %bb.a ], [ %.pn6.i.i.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtBa_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtB1j_8markdown10structured7SectionINtNtNtB2x_3vec13in_place_drop11InPlaceDropB36_EINtNtBa_6result6ResultB3J_zENvNtB38_5numpy7sectionNCINvNtB3O_16in_place_collect24write_in_place_with_dropB36_E0E0B1l_.exit.i.i.i.i ]
  %i.au = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i to i64
  %i.av = ptrtoint ptr %i.l to i64
  %i.aw = sub nuw i64 %i.au, %i.av
  %i.ax = udiv exact i64 %i.aw, 40                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3736
  store ptr %i.l, ptr %i.h, align 8, !noalias !3736
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !noalias !3736
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.q, ptr %i.az, align 8, !noalias !3736
  %i.ba = ptrtoint ptr %i.p to i64
  %i.bb = ptrtoint ptr %.val.i.i to i64
  %i.bc = sub nuw i64 %i.ba, %i.bb
  %i.bd = udiv exact i64 %i.bc, 48
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !3737, !noalias !3720
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !alias.scope !3737, !noalias !3720
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3737, !noalias !3720
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3737, !noalias !3720
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEEBJ_(ptr noalias noundef nonnull align 8 %.val.i.i, i64 noundef %i.bd)
          to label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB9_6string6StringEEE32forget_allocation_drop_remainingB12_.exit.i unwind label %bb.s, !noalias !3736

bb.s:                                             ; preds = %bb.w, %.loopexit.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtB4_6option6OptionNtNtBI_6string6StringEENtNtNtB1P_8markdown10structured7SectionEEB1R_(ptr noalias noundef align 8 dereferenceable(24) %i.h) #26
          to label %.body.i unwind label %bb.y, !noalias !3736

_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB9_6string6StringEEE32forget_allocation_drop_remainingB12_.exit.i: ; preds = %.loopexit.i
  %.not.i.i = icmp ne i64 %i.q, 0
  %i.bf = mul nuw i64 %i.s, 40                    ; 4 uses
  %i.bg = icmp ne i64 %i.r, %i.bf
  %or.cond.i = select i1 %.not.i.i, i1 %i.bg, i1 false
  br i1 %or.cond.i, label %bb.t, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtB1e_6option6OptionNtNtB6_6string6StringEEENvNtNtNtB2D_8markdown10structured5numpy7sectionENtB4g_7SectionEB2F_.exit

common.resume.i:                                  ; preds = %.body.i
  resume { ptr, i32 } %.pn.i

bb.t:                                             ; preds = %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB9_6string6StringEEE32forget_allocation_drop_remainingB12_.exit.i
  %i.bh = icmp ult i64 %i.r, 40
  br i1 %i.bh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.r, i64 noundef 8) #27, !noalias !3736
  br label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtB1e_6option6OptionNtNtB6_6string6StringEEENvNtNtNtB2D_8markdown10structured5numpy7sectionENtB4g_7SectionEB2F_.exit

bb.v:                                             ; preds = %bb.t
  %i.bi = icmp ule i64 %i.bf, %i.r
  call void @llvm.assume(i1 %i.bi)
  %i.bj = call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.l, i64 noundef %i.r, i64 noundef 8, i64 noundef %i.bf) #27, !noalias !3736 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.w, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtB1e_6option6OptionNtNtB6_6string6StringEEENvNtNtNtB2D_8markdown10structured5numpy7sectionENtB4g_7SectionEB2F_.exit, !prof !21

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.bf) #29
          to label %bb.x unwind label %bb.s, !noalias !3736

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.s, %.body.i
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !3736
  unreachable

_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtB1e_6option6OptionNtNtB6_6string6StringEEENvNtNtNtB2D_8markdown10structured5numpy7sectionENtB4g_7SectionEB2F_.exit: ; preds = %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB9_6string6StringEEE32forget_allocation_drop_remainingB12_.exit.i, %bb.u, %bb.v
  %.sroa.03.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.u ], [ %i.bj, %bb.v ], [ %i.l, %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB9_6string6StringEEE32forget_allocation_drop_remainingB12_.exit.i ]
  store i64 %i.s, ptr %0, align 8, !alias.scope !3720, !noalias !3721
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0.i, ptr %i.bm, align 8, !alias.scope !3720, !noalias !3721
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ax, ptr %i.bn, align 8, !alias.scope !3720, !noalias !3721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structured6google19structured_sections(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [1 x i8], align 1                 ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6google8sections(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3770)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !3770, !noalias !3769, !noundef !4 ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !alias.scope !3770, !noalias !3769, !nonnull !4, !noundef !4 ; 8 uses
  %i.m = mul i64 %i.k, 48                         ; 6 uses
  %i.n = udiv i64 %i.m, 40                        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3773)
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  %i.q = load ptr, ptr %i.o, align 8, !alias.scope !3774, !noalias !3769, !nonnull !4, !noundef !4 ; 3 uses
  %i.r = load ptr, ptr %i.p, align 8, !alias.scope !3774, !noalias !3769, !nonnull !4, !noundef !4 ; 3 uses
  %.not24.i.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not24.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i

.body.i:                                          ; preds = %bb.s, %.body.i.i.i.i.i
  %.pn.i = phi { ptr, i32 } [ %i.bd, %bb.s ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtB1u_6string6StringEENvNtNtNtB2f_8markdown10structured6google7sectionEEB2h_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i) #26
          to label %common.resume.i unwind label %bb.y, !noalias !3769

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtB1j_8markdown10structured7SectionINtNtNtB2b_3vec13in_place_drop11InPlaceDropB2J_EINtNtBa_6result6ResultB3m_zENvNtB2L_6google7sectionNCINvNtB3r_16in_place_collect24write_in_place_with_dropB2J_E0E0B1l_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.w = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.x, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtB1j_8markdown10structured7SectionINtNtNtB2b_3vec13in_place_drop11InPlaceDropB2J_EINtNtBa_6result6ResultB3m_zENvNtB2L_6google7sectionNCINvNtB3r_16in_place_collect24write_in_place_with_dropB2J_E0E0B1l_.exit.i.i.i.i ] ; 7 uses
  %.sroa.4.025.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i ], [ %.pn6.i.i.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtB1j_8markdown10structured7SectionINtNtNtB2b_3vec13in_place_drop11InPlaceDropB2J_EINtNtBa_6result6ResultB3m_zENvNtB2L_6google7sectionNCINvNtB3r_16in_place_collect24write_in_place_with_dropB2J_E0E0B1l_.exit.i.i.i.i ] ; 6 uses
  %.sroa.012.0.copyload.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !3775 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.5.0.copyload.i.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !3775
  %.sroa.715.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.715.0.copyload.i.i.i.i = load i32, ptr %.sroa.715.0..sroa_idx.i.i.i.i, align 8, !noalias !3775
  %.sroa.816.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %.sroa.816.0.copyload.i.i.i.i = load i32, ptr %.sroa.816.0..sroa_idx.i.i.i.i, align 4, !noalias !3775
  %.sroa.917.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.917.0.copyload.i.i.i.i = load i8, ptr %.sroa.917.0..sroa_idx.i.i.i.i, align 8, !noalias !3775
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3775
  store ptr %i.l, ptr %i.g, align 8, !noalias !3776
  store ptr %.sroa.4.025.i.i.i.i, ptr %i.s, align 8, !noalias !3776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3777
  store i8 %.sroa.917.0.copyload.i.i.i.i, ptr %i.e, align 1, !noalias !3777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3777
  %i.y = icmp eq i64 %.sroa.012.0.copyload.i.i.i.i, -1
  br i1 %i.y, label %.thread.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.413.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.413.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !3778
  %i.z = trunc nuw i8 %.sroa.5.0.copyload.i.i.i.i to i1
  store i64 %.sroa.012.0.copyload.i.i.i.i, ptr %i.a, align 8, !noalias !3777
  br i1 %i.z, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document12BodyFragmentNtNtB7_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.e, !noalias !3777

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.x, ptr %i.p, align 8, !alias.scope !3774, !noalias !3769
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !3779, !noalias !3777 ; 2 uses
  %i.ab = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.ab, label %.body.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !3780, !noalias !3777, !nonnull !4, !noundef !4
  br label %common.resume.sink.split.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !3779, !noalias !3777 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document12BodyFragmentNtNtBG_6string6StringEEEB1e_.exit.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !3780, !noalias !3777, !nonnull !4, !noundef !4
  %i.ad = mul nuw i64 %.val.i.i.i.i.i.i.i.i, 72
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !3781
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document12BodyFragmentNtNtBG_6string6StringEEEB1e_.exit.i.i.i.i.i.i.i

common.resume.sink.split.i.i.i.i.i.i.i:           ; preds = %bb.l, %bb.f
  %.val2.i8.sink.i.i.i.i.i.i.i = phi i64 [ %.val2.i8.i.i.i.i.i.i.i, %bb.l ], [ %.val2.i.i.i.i.i.i.i.i, %bb.f ]
  %.val3.i9.sink.i.i.i.i.i.i.i = phi ptr [ %.val3.i9.i.i.i.i.i.i.i, %bb.l ], [ %.val3.i.i.i.i.i.i.i.i, %bb.f ]
  %common.resume.op.ph.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.l ], [ %i.aa, %bb.f ]
  %i.ae = mul nuw i64 %.val2.i8.sink.i.i.i.i.i.i.i, 72
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i9.sink.i.i.i.i.i.i.i, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !3777
  br label %.body.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document12BodyFragmentNtNtBG_6string6StringEEEB1e_.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3777
  br label %.thread.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !3777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3777
  %i.af = load i64, ptr %i.t, align 8, !noalias !3777, !noundef !4 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 128102389400760776
  call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document12BodyFragmentNtNtB7_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.m unwind label %bb.k, !noalias !3777

bb.k:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.x, ptr %i.p, align 8, !alias.scope !3774, !noalias !3769
  %.val2.i8.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !3782, !noalias !3777 ; 2 uses
  %i.aj = icmp eq i64 %.val2.i8.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %.body.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val3.i9.i.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !3783, !noalias !3777, !nonnull !4, !noundef !4
  br label %common.resume.sink.split.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.j
  %.val.i11.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !3782, !noalias !3777 ; 2 uses
  %i.ak = icmp eq i64 %.val.i11.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %.thread.i.i.i.i.i, label %.thread10.i.i.i.i.i

.thread10.i.i.i.i.i:                              ; preds = %bb.m
  %.val1.i12.i.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !3783, !noalias !3777, !nonnull !4, !noundef !4
  %i.al = mul nuw i64 %.val.i11.i.i.i.i.i.i.i, 72
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i12.i.i.i.i.i.i.i, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !3784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3777
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtB1j_8markdown10structured7SectionINtNtNtB2b_3vec13in_place_drop11InPlaceDropB2J_EINtNtBa_6result6ResultB3m_zENvNtB2L_6google7sectionNCINvNtB3r_16in_place_collect24write_in_place_with_dropB2J_E0E0B1l_.exit.i.i.i.i

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3777
  %i.am = load ptr, ptr %i.u, align 8, !noalias !3777, !nonnull !4, !noundef !4 ; 3 uses
  %i.an = load i64, ptr %i.d, align 8, !range !22, !noalias !3777, !noundef !4
  %i.ao = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %i.af
  store ptr %i.am, ptr %i.b, align 8, !noalias !3777
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3777
  store i64 %i.an, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3777
  store ptr %i.ao, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3777
  store ptr %i.e, ptr %i.v, align 8, !noalias !3777
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structured11SectionItemEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtB18_8document12BodyFragmentNtNtB8_6string6StringEENCNvNtB14_6google7section0EE9from_iterB1a_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %.noexc.i.i.i.i.i unwind label %bb.o, !noalias !3776

.noexc.i.i.i.i.i:                                 ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3777
  invoke void @_RNvMs_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structuredNtB4_7Section26new_with_parameter_heading(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, i32 noundef %.sroa.715.0.copyload.i.i.i.i, i32 noundef %.sroa.816.0.copyload.i.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i1 noundef zeroext true)
          to label %bb.p unwind label %bb.o, !noalias !3776

bb.o:                                             ; preds = %.noexc.i.i.i.i.i, %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store ptr %i.x, ptr %i.p, align 8, !alias.scope !3774, !noalias !3769
  br label %.body.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document12BodyFragmentNtNtBG_6string6StringEEEB1e_.exit.i.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3777
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtB1j_8markdown10structured7SectionINtNtNtB2b_3vec13in_place_drop11InPlaceDropB2J_EINtNtBa_6result6ResultB3m_zENvNtB2L_6google7sectionNCINvNtB3r_16in_place_collect24write_in_place_with_dropB2J_E0E0B1l_.exit.i.i.i.i

bb.p:                                             ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3777
  %.pr.pre.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !3776
  %i.aq = icmp eq i64 %.pr.pre.i.i.i.i.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3777
  br i1 %i.aq, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtB1j_8markdown10structured7SectionINtNtNtB2b_3vec13in_place_drop11InPlaceDropB2J_EINtNtBa_6result6ResultB3m_zENvNtB2L_6google7sectionNCINvNtB3r_16in_place_collect24write_in_place_with_dropB2J_E0E0B1l_.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.025.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !3776
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.4.025.i.i.i.i, i64 40
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtB1j_8markdown10structured7SectionINtNtNtB2b_3vec13in_place_drop11InPlaceDropB2J_EINtNtBa_6result6ResultB3m_zENvNtB2L_6google7sectionNCINvNtB3r_16in_place_collect24write_in_place_with_dropB2J_E0E0B1l_.exit.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.o, %bb.k, %common.resume.sink.split.i.i.i.i.i.i.i, %bb.e
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.ap, %bb.o ], [ %i.aa, %bb.e ], [ %i.ai, %bb.k ], [ %common.resume.op.ph.i.i.i.i.i.i.i, %common.resume.sink.split.i.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structured7SectionEEB1F_(ptr noalias noundef align 8 dereferenceable(16) %i.g) #26
          to label %.body.i unwind label %bb.r, !noalias !3776

bb.r:                                             ; preds = %.body.i.i.i.i.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !3776
  unreachable

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtB1j_8markdown10structured7SectionINtNtNtB2b_3vec13in_place_drop11InPlaceDropB2J_EINtNtBa_6result6ResultB3m_zENvNtB2L_6google7sectionNCINvNtB3r_16in_place_collect24write_in_place_with_dropB2J_E0E0B1l_.exit.i.i.i.i: ; preds = %bb.q, %bb.p, %.thread.i.i.i.i.i, %.thread10.i.i.i.i.i
  %.pn6.i.i.i.i.i = phi ptr [ %i.ar, %bb.q ], [ %.sroa.4.025.i.i.i.i, %.thread10.i.i.i.i.i ], [ %.sroa.4.025.i.i.i.i, %.thread.i.i.i.i.i ], [ %.sroa.4.025.i.i.i.i, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3775
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.q
  br i1 %.not.i.i.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtB1j_8markdown10structured7SectionINtNtNtB2b_3vec13in_place_drop11InPlaceDropB2J_EINtNtBa_6result6ResultB3m_zENvNtB2L_6google7sectionNCINvNtB3r_16in_place_collect24write_in_place_with_dropB2J_E0E0B1l_.exit.i.i.i.i, %bb.a
  %.val.i.i = phi ptr [ %i.r, %bb.a ], [ %i.x, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtB1j_8markdown10structured7SectionINtNtNtB2b_3vec13in_place_drop11InPlaceDropB2J_EINtNtBa_6result6ResultB3m_zENvNtB2L_6google7sectionNCINvNtB3r_16in_place_collect24write_in_place_with_dropB2J_E0E0B1l_.exit.i.i.i.i ] ; 2 uses
  %.sroa.4.0.lcssa.i.i.i.i = phi ptr [ %i.l, %bb.a ], [ %.pn6.i.i.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtB1j_8markdown10structured7SectionINtNtNtB2b_3vec13in_place_drop11InPlaceDropB2J_EINtNtBa_6result6ResultB3m_zENvNtB2L_6google7sectionNCINvNtB3r_16in_place_collect24write_in_place_with_dropB2J_E0E0B1l_.exit.i.i.i.i ]
  %i.at = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i to i64
  %i.au = ptrtoint ptr %i.l to i64
  %i.av = sub nuw i64 %i.at, %i.au
  %i.aw = udiv exact i64 %i.av, 40                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3785
  store ptr %i.l, ptr %i.h, align 8, !noalias !3785
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !noalias !3785
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.k, ptr %i.ay, align 8, !noalias !3785
  %i.az = ptrtoint ptr %i.q to i64
  %i.ba = ptrtoint ptr %.val.i.i to i64
  %i.bb = sub nuw i64 %i.az, %i.ba
  %i.bc = udiv exact i64 %i.bb, 48
  store i64 0, ptr %i.j, align 8, !alias.scope !3786, !noalias !3769
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !alias.scope !3786, !noalias !3769
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !alias.scope !3786, !noalias !3769
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8, !alias.scope !3786, !noalias !3769
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtCscdodAO9FK5_5alloc6string6StringEEBJ_(ptr noalias noundef nonnull align 8 %.val.i.i, i64 noundef %i.bc)
          to label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtB9_6string6StringEE32forget_allocation_drop_remainingB12_.exit.i unwind label %bb.s, !noalias !3785

bb.s:                                             ; preds = %bb.w, %.loopexit.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtBI_6string6StringENtNtNtB1P_8markdown10structured7SectionEEB1R_(ptr noalias noundef align 8 dereferenceable(24) %i.h) #26
          to label %.body.i unwind label %bb.y, !noalias !3785

_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtB9_6string6StringEE32forget_allocation_drop_remainingB12_.exit.i: ; preds = %.loopexit.i
  %.not.i.i = icmp ne i64 %i.k, 0
  %i.be = mul nuw i64 %i.n, 40                    ; 4 uses
  %i.bf = icmp ne i64 %i.m, %i.be
  %or.cond.i = select i1 %.not.i.i, i1 %i.bf, i1 false
  br i1 %or.cond.i, label %bb.t, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtB6_6string6StringEENvNtNtNtB2D_8markdown10structured6google7sectionENtB3S_7SectionEB2F_.exit

common.resume.i:                                  ; preds = %.body.i
  resume { ptr, i32 } %.pn.i

bb.t:                                             ; preds = %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtB9_6string6StringEE32forget_allocation_drop_remainingB12_.exit.i
  %i.bg = icmp ult i64 %i.m, 40
  br i1 %i.bg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.m, i64 noundef 8) #27, !noalias !3785
  br label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtB6_6string6StringEENvNtNtNtB2D_8markdown10structured6google7sectionENtB3S_7SectionEB2F_.exit

bb.v:                                             ; preds = %bb.t
  %i.bh = icmp ule i64 %i.be, %i.m
  call void @llvm.assume(i1 %i.bh)
  %i.bi = call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.l, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.be) #27, !noalias !3785 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.w, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtB6_6string6StringEENvNtNtNtB2D_8markdown10structured6google7sectionENtB3S_7SectionEB2F_.exit, !prof !21

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.be) #29
          to label %bb.x unwind label %bb.s, !noalias !3785

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.s, %.body.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !3785
  unreachable

_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtB6_6string6StringEENvNtNtNtB2D_8markdown10structured6google7sectionENtB3S_7SectionEB2F_.exit: ; preds = %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtB9_6string6StringEE32forget_allocation_drop_remainingB12_.exit.i, %bb.u, %bb.v
  %.sroa.03.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.u ], [ %i.bi, %bb.v ], [ %i.l, %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCskEUeM34gmJU_6ty_ide9docstring8document7SectionNtNtB9_6string6StringEE32forget_allocation_drop_remainingB12_.exit.i ]
  store i64 %i.n, ptr %0, align 8, !alias.scope !3769, !noalias !3770
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0.i, ptr %i.bl, align 8, !alias.scope !3769, !noalias !3770
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aw, ptr %i.bm, align 8, !alias.scope !3769, !noalias !3770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCs56aZGHL6Dc6_7ruff_db5files4FileINtB2_10EquivalentBq_E10equivalentCskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #6 {
bb.a:
  %i.a = load <2 x i32>, ptr %0, align 4
  %i.b = load <2 x i32>, ptr %1, align 4
  %i.c = icmp eq <2 x i32> %i.a, %i.b             ; 2 uses
  %i.d = extractelement <2 x i1> %i.c, i64 0
  %i.e = extractelement <2 x i1> %i.c, i64 1
  %.sroa.0.0.i.i = select i1 %i.e, i1 %i.d, i1 false
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB7_6EitherINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceB1B_EENtNtNtB3l_6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([20 x i8]) align 4 captures(none) dereferenceable(20) initializes((0, 4)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !4
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3793)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.c, i64 20, i1 false), !alias.scope !3794
  store i32 -1, ptr %i.c, align 8, !alias.scope !3795, !noalias !3793
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3797)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3797, !noalias !3796, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3797, !noalias !3796, !nonnull !4, !noundef !4 ; 3 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store ptr %i.i, ptr %i.f, align 8, !alias.scope !3797, !noalias !3796
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.g, i64 20, i1 false), !noalias !3797
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit

bb.e:                                             ; preds = %bb.c
  store i32 -1, ptr %0, align 4, !alias.scope !3796, !noalias !3797
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit: ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB7_6EitherINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceB1B_EENtNtNtB3l_6traits8iterator8Iterator9size_hintCskEUeM34gmJU_6ty_ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !4
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val2 = load i32, ptr %i.c, align 8, !range !26, !noundef !4
  %i.d = icmp ne i32 %.val2, -1
  %i.e = zext i1 %i.d to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.g = ptrtoint ptr %.val1 to i64
  %i.h = ptrtoint ptr %.val to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink3 = phi i64 [ %i.e, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  store i64 %.sink3, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink3, ptr %i.l, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtB7_6string6StringB1i_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskEUeM34gmJU_6ty_ide.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 56
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskEUeM34gmJU_6ty_ide.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskEUeM34gmJU_6ty_ide.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal15EnumLiteralTypebEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskEUeM34gmJU_6ty_ide.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskEUeM34gmJU_6ty_ide.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskEUeM34gmJU_6ty_ide.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal16BytesLiteralTypebEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskEUeM34gmJU_6ty_ide.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskEUeM34gmJU_6ty_ide.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskEUeM34gmJU_6ty_ide.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypebEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskEUeM34gmJU_6ty_ide.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskEUeM34gmJU_6ty_ide.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskEUeM34gmJU_6ty_ide.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketxbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskEUeM34gmJU_6ty_ide.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskEUeM34gmJU_6ty_ide.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskEUeM34gmJU_6ty_ide.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtCskEUeM34gmJU_6ty_ide16NavigationTargetEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskEUeM34gmJU_6ty_ide.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskEUeM34gmJU_6ty_ide.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCskEUeM34gmJU_6ty_ide.exit: ; preds = %bb.a, %bb.b
  ret void
end_hunk_1
