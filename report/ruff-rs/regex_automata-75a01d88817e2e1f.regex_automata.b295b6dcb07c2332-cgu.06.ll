Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_automata-75a01d88817e2e1f.regex_automata.b295b6dcb07c2332-cgu.06?download=true
inline.NumInlined: 181
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsC_NtCsfcggljOhZkm_12regex_syntax3hirNtB5_3HirNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata:bb.a
  %i.z = extractvalue { i32, i32 } %i.x, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ab = load i8, ptr %i.aa, align 4, !noalias !36
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = tail call align 8 ptr @_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCsfcggljOhZkm_12regex_syntax3hir3HirENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata(ptr nonnull align 8 %i.ac), !noalias !36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.y, ptr %i.ae, align 8, !alias.scope !35
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %i.z, ptr %.sroa.22.0..sroa_idx.i, align 4, !alias.scope !35
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.ad, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !35
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.w, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !35
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i8 %i.ab, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !35
  br label %_RNvXsG_NtCsfcggljOhZkm_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata.exit

bb.i:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !noalias !37
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = tail call { ptr, i64 } @_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtB7_5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata(ptr nonnull align 8 %i.ai), !noalias !37 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.aj, 1      ; 2 uses
  store ptr %i.ak, ptr %i.a, align 8, !noalias !37
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.al, ptr %i.am, align 8, !noalias !37
  %i.an = invoke align 8 ptr @_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCsfcggljOhZkm_12regex_syntax3hir3HirENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata(ptr nonnull align 8 %i.af)
          to label %_RNvXs1u_NtCsfcggljOhZkm_12regex_syntax3hirNtB6_7CaptureNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata.exit.i unwind label %bb.j, !noalias !37

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxeEEECsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 %i.a) #25
          to label %common.resume unwind label %bb.k, !noalias !37

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !37
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %i.ax, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RNvXs1u_NtCsfcggljOhZkm_12regex_syntax3hirNtB6_7CaptureNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata.exit.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.an, ptr %i.aq, align 8, !alias.scope !35
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.ak, ptr %.sroa.24.0..sroa_idx.i, align 8, !alias.scope !35
  %.sroa.35.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.al, ptr %.sroa.35.0..sroa_idx.i, align 8, !alias.scope !35
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %i.ah, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !35
  br label %_RNvXsG_NtCsfcggljOhZkm_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata.exit

bb.l:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsfcggljOhZkm_12regex_syntax3hir3HirENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.ar), !noalias !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %_RNvXsG_NtCsfcggljOhZkm_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata.exit

bb.m:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsfcggljOhZkm_12regex_syntax3hir3HirENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.at), !noalias !35
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %_RNvXsG_NtCsfcggljOhZkm_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata.exit

_RNvXsG_NtCsfcggljOhZkm_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata.exit: ; preds = %bb.a, %bb.c, %_RNvXsP_NtCsfcggljOhZkm_12regex_syntax3hirNtB5_5ClassNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata.exit.i, %bb.g, %bb.h, %_RNvXs1u_NtCsfcggljOhZkm_12regex_syntax3hirNtB6_7CaptureNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata.exit.i, %bb.l, %bb.m
  %.sink.i = phi i64 [ 9, %bb.m ], [ 8, %bb.l ], [ 7, %_RNvXs1u_NtCsfcggljOhZkm_12regex_syntax3hirNtB6_7CaptureNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata.exit.i ], [ 6, %bb.h ], [ 5, %bb.g ], [ %storemerge.i.i, %_RNvXsP_NtCsfcggljOhZkm_12regex_syntax3hirNtB5_5ClassNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata.exit.i ], [ 3, %bb.c ], [ 2, %bb.a ]
  store i64 %.sink.i, ptr %i.f, align 8, !alias.scope !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = invoke align 8 ptr @_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCsfcggljOhZkm_12regex_syntax3hir11PropertiesIENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_(ptr nonnull align 8 %i.av)
          to label %_RNvXs1L_NtCsfcggljOhZkm_12regex_syntax3hirNtB6_10PropertiesNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata.exit unwind label %bb.n

bb.n:                                             ; preds = %_RNvXsG_NtCsfcggljOhZkm_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfcggljOhZkm_12regex_syntax3hir7HirKindEBF_(ptr nonnull align 8 %i.f) #25
          to label %common.resume unwind label %bb.o

_RNvXs1L_NtCsfcggljOhZkm_12regex_syntax3hirNtB6_10PropertiesNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata.exit: ; preds = %_RNvXsG_NtCsfcggljOhZkm_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.aw, ptr %i.ay, align 8
  ret void

bb.o:                                             ; preds = %bb.n
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsD_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB5_7ByteSetNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB9_(ptr nofree writeonly sret([32 x i8]) align 16 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXsF_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB5_7ByteSetNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB9_(ptr align 16 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr align 8 %1, ptr nonnull @106, i64 7, ptr nonnull @107, i64 4, ptr nonnull %i.a, ptr nonnull align 8 @108)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsP_NtCsfcggljOhZkm_12regex_syntax3hirNtB5_5ClassNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs4_NtNtCsfcggljOhZkm_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_15ClassBytesRangeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB9_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvXs4_NtNtCsfcggljOhZkm_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB9_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %i.b, %bb.c ], [ %i.a, %bb.b ]
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %.sink, i64 32, i1 false)
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsT_NtCsfcggljOhZkm_12regex_syntax3hirNtB5_12ClassUnicodeNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfkBndxG8xzO_14regex_automata(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @_RNvXs4_NtNtCsfcggljOhZkm_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB9_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 8 %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvXs_NtNtCs4NRVxsYgnAr_4core5slice4iterRSRNtNtCsfcggljOhZkm_12regex_syntax3hir3HirNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCsfkBndxG8xzO_14regex_automata(ptr align 8 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB4_4UnitNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr nofree readonly align 2 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [1 x i8], align 1                 ; 2 uses
  %i.d = load i8, ptr %0, align 2
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call { ptr, ptr } @_RNvMs4_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Arguments8from_strCsfkBndxG8xzO_14regex_automata(ptr nonnull @109, i64 3) ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  %i.i = tail call zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_fmtCsfkBndxG8xzO_14regex_automata(ptr align 8 %1, ptr %i.g, ptr %i.h)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1
  store i8 %i.k, ptr %i.c, align 1
  call void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument9new_debugNtNtNtCsfkBndxG8xzO_14regex_automata4util6escape9DebugByteEB11_(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.l = call { ptr, ptr } @_RINvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB6_9Arguments3newKj2_Kj1_ECsfcggljOhZkm_12regex_syntax(ptr nonnull @22, ptr nonnull align 8 %i.b) ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0
  %i.n = extractvalue { ptr, ptr } %i.l, 1
  %i.o = call zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_fmtCsfkBndxG8xzO_14regex_automata(ptr align 8 %1, ptr %i.m, ptr %i.n)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.b ], [ %i.o, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXsa_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB5_6BitSetNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr nofree readonly align 16 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %2 = alloca [32 x i8], align 16                 ; 2 uses
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = alloca [3 x i8], align 4                 ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9debug_set(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr align 8 %1)
  %i.d = call i24 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3ops5rangeINtB5_14RangeInclusivehE3newCsfcggljOhZkm_12regex_syntax(i8 0, i8 -1)
  %i.e = call i24 @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB8_3ops5range14RangeInclusivehENtB2_12IntoIterator9into_iterCsfcggljOhZkm_12regex_syntax(i24 %i.d)
  store i24 %i.e, ptr %i.b, align 4
  %i.f = call { i1, i8 } @_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivehENtNtNtB7_6traits8iterator8Iterator4nextCsfcggljOhZkm_12regex_syntax(ptr nonnull %i.b) ; 2 uses
  %i.g = extractvalue { i1, i8 } %i.f, 0
  br i1 %i.g, label %.lr.ph.a, label %._crit_edge

.lr.ph.a:                                         ; preds = %bb.a, %.backedge
  %i.h = phi { i1, i8 } [ %i.n, %.backedge ], [ %i.f, %bb.a ]
  %i.i = extractvalue { i1, i8 } %i.h, 1          ; 3 uses
  store i8 %i.i, ptr %i.a, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 16 dereferenceable(32) %0, i64 32, i1 false)
  %.lobit.i = lshr i8 %i.i, 7
  %3 = zext nneg i8 %.lobit.i to i64
  %i.j = and i8 %i.i, 127
  %4 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %3
  %5 = load i128, ptr %4, align 16
  %i.k = zext nneg i8 %i.j to i128
  %i.l = shl nuw i128 1, %i.k
  %i.m = and i128 %5, %i.l
  %.not = icmp eq i128 %i.m, 0
  br i1 %.not, label %.backedge, label %bb.b

.backedge:                                        ; preds = %.lr.ph.a, %bb.b
  %i.n = call { i1, i8 } @_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivehENtNtNtB7_6traits8iterator8Iterator4nextCsfcggljOhZkm_12regex_syntax(ptr nonnull %i.b) ; 2 uses
  %i.o = extractvalue { i1, i8 } %i.n, 0
  br i1 %i.o, label %.lr.ph.a, label %._crit_edge

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %i.p = call zeroext i1 @_RNvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugSet6finish(ptr nonnull align 8 %i.c)
  ret i1 %i.p

bb.b:                                             ; preds = %.lr.ph.a
  %i.q = call align 8 ptr @_RNvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugSet5entry(ptr nonnull align 8 %i.c, ptr nonnull %i.a, ptr nonnull align 8 @110) ; 0 uses
  br label %.backedge
}

; Function Attrs: nonlazybind uwtable
define { i1, i8 } @_RNvXsb_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB5_11ByteSetIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr nofree align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre = load i64, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsfkBndxG8xzO_14regex_automata.exit, %bb.a
  %i.c = phi i64 [ %i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsfkBndxG8xzO_14regex_automata.exit ], [ %.pre, %bb.a ] ; 2 uses
  %i.d = icmp ult i64 %i.c, 256                   ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = tail call { i1, i8 } @_RNvXNtNtNtCs4NRVxsYgnAr_4core7convert3num18ptr_try_from_implshINtB6_7TryFromjE8try_fromCsfkBndxG8xzO_14regex_automata(i64 %i.c) ; 2 uses
  %i.f = extractvalue { i1, i8 } %i.e, 0
  %i.g = extractvalue { i1, i8 } %i.e, 1          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br i1 %i.f, label %bb.d, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsfkBndxG8xzO_14regex_automata.exit

bb.d:                                             ; preds = %bb.c
  store i8 %i.g, ptr %i.a, align 1
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr nonnull @25, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @24, ptr nonnull align 8 @111) #27
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsfkBndxG8xzO_14regex_automata.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = load i64, ptr %i.b, align 8
  %i.i = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.i, ptr %i.b, align 8
  %i.j = load ptr, ptr %0, align 8
  %.lobit.i = lshr i8 %i.g, 7
  %i.k = zext nneg i8 %.lobit.i to i64
  %i.l = and i8 %i.g, 127
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k
  %i.n = load i128, ptr %i.m, align 16
  %i.o = zext nneg i8 %i.l to i128
  %i.p = shl nuw i128 1, %i.o
  %i.q = and i128 %i.n, %i.p
  %.not = icmp eq i128 %i.q, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.e:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsfkBndxG8xzO_14regex_automata.exit, %bb.b
  %.sroa.3.0 = phi i8 [ %i.g, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsfkBndxG8xzO_14regex_automata.exit ], [ undef, %bb.b ]
  %i.r = insertvalue { i1, i8 } poison, i1 %i.d, 0
  %i.s = insertvalue { i1, i8 } %i.r, i8 %.sroa.3.0, 1
  ret { i1, i8 } %i.s
}

; Function Attrs: nonlazybind uwtable
define range(i24 0, -254) i24 @_RNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB5_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr nofree align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.pre = load i64, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit, %bb.a
  %i.e = phi i64 [ %i.k, %_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit ], [ %.pre, %bb.a ] ; 2 uses
  %i.f = icmp ult i64 %i.e, 256
  br i1 %i.f, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call { i1, i8 } @_RNvXNtNtNtCs4NRVxsYgnAr_4core7convert3num18ptr_try_from_implshINtB6_7TryFromjE8try_fromCsfkBndxG8xzO_14regex_automata(i64 %i.e) ; 2 uses
  %i.h = extractvalue { i1, i8 } %i.g, 0
  %i.i = extractvalue { i1, i8 } %i.g, 1          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br i1 %i.h, label %bb.d, label %_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit

bb.d:                                             ; preds = %bb.c
  store i8 %i.i, ptr %i.c, align 1
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr nonnull @25, i64 43, ptr nonnull %i.c, ptr nonnull align 8 @24, ptr nonnull align 8 @23) #27
  unreachable

_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.j = load i64, ptr %i.d, align 8
  %i.k = add i64 %i.j, 1                          ; 4 uses
  store i64 %i.k, ptr %i.d, align 8
  %i.l = load ptr, ptr %0, align 8
  %.lobit.i = lshr i8 %i.i, 7
  %i.m = zext nneg i8 %.lobit.i to i64
  %i.n = and i8 %i.i, 127
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.m
  %i.p = load i128, ptr %i.o, align 16
  %i.q = zext nneg i8 %i.n to i128
  %i.r = shl nuw i128 1, %i.q
  %i.s = and i128 %i.p, %i.r
  %.not = icmp eq i128 %i.s, 0
  br i1 %.not, label %bb.b, label %thread-pre-split

.loopexit:                                        ; preds = %bb.b, %_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit3, %_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit5, %thread-pre-split
  %.sroa.4.0 = phi i8 [ %i.aj, %_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit5 ], [ %i.i, %thread-pre-split ], [ %.sroa.01.017, %_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit3 ], [ undef, %bb.b ]
  %.sroa.3.0 = phi i8 [ %i.i, %_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit3 ], [ %i.i, %thread-pre-split ], [ %i.i, %_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit5 ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i8 [ 1, %_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit3 ], [ 1, %thread-pre-split ], [ 1, %_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit5 ], [ 0, %bb.b ]
  %.sroa.4.0.insert.ext = zext i8 %.sroa.4.0 to i24
  %.sroa.4.0.insert.shift = shl nuw i24 %.sroa.4.0.insert.ext, 16
  %.sroa.3.0.insert.ext = zext i8 %.sroa.3.0 to i24
  %.sroa.3.0.insert.shift = shl nuw nsw i24 %.sroa.3.0.insert.ext, 8
  %.sroa.3.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i24
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.insert, %.sroa.0.0.insert.ext
  ret i24 %.sroa.0.0.insert.insert

thread-pre-split:                                 ; preds = %_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit
  %i.t = icmp ult i64 %i.k, 256
  br i1 %i.t, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %thread-pre-split, %_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit5
  %.sroa.01.017 = phi i8 [ %i.aj, %_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit5 ], [ %i.i, %thread-pre-split ]
  %i.u = phi i64 [ %i.al, %_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit5 ], [ %i.k, %thread-pre-split ]
  %i.v = load ptr, ptr %0, align 8
  %i.w = tail call { i1, i8 } @_RNvXNtNtNtCs4NRVxsYgnAr_4core7convert3num18ptr_try_from_implshINtB6_7TryFromjE8try_fromCsfkBndxG8xzO_14regex_automata(i64 %i.u) ; 2 uses
  %i.x = extractvalue { i1, i8 } %i.w, 0
  %i.y = extractvalue { i1, i8 } %i.w, 1          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %i.x, label %bb.e, label %_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit3

bb.e:                                             ; preds = %.lr.ph
  store i8 %i.y, ptr %i.b, align 1
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr nonnull @25, i64 43, ptr nonnull %i.b, ptr nonnull align 8 @24, ptr nonnull align 8 @23) #27
  unreachable

_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit3: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.lobit.i4 = lshr i8 %i.y, 7
  %i.z = zext nneg i8 %.lobit.i4 to i64
  %i.aa = and i8 %i.y, 127
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.z
  %i.ac = load i128, ptr %i.ab, align 16
  %i.ad = zext nneg i8 %i.aa to i128
  %i.ae = shl nuw i128 1, %i.ad
  %i.af = and i128 %i.ac, %i.ae
  %.not6 = icmp eq i128 %i.af, 0
  br i1 %.not6, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit3
  %i.ag = load i64, ptr %i.d, align 8
  %i.ah = tail call { i1, i8 } @_RNvXNtNtNtCs4NRVxsYgnAr_4core7convert3num18ptr_try_from_implshINtB6_7TryFromjE8try_fromCsfkBndxG8xzO_14regex_automata(i64 %i.ag) ; 2 uses
  %i.ai = extractvalue { i1, i8 } %i.ah, 0
  %i.aj = extractvalue { i1, i8 } %i.ah, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %bb.g, label %_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit5

bb.g:                                             ; preds = %bb.f
  store i8 %i.aj, ptr %i.a, align 1
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr nonnull @25, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @24, ptr nonnull align 8 @23) #27
  unreachable

_RNCNvXsc_NtNtCsfkBndxG8xzO_14regex_automata4util8alphabetNtB7_16ByteSetRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit5: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = load i64, ptr %i.d, align 8
  %i.al = add i64 %i.ak, 1                        ; 3 uses
  store i64 %i.al, ptr %i.d, align 8
  %i.am = icmp ult i64 %i.al, 256
  br i1 %i.am, label %.lr.ph, label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXsd_NtCs4NRVxsYgnAr_4core5arrayANtNtNtNtCsfkBndxG8xzO_14regex_automata3nfa8thompson10range_trie10SplitRangej3_INtNtNtB7_3ops5index5IndexINtNtB1S_5range7RangeTojEE5indexBF_(ptr %0, i64 %1, ptr align 8 %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %1, 4
  br i1 %i.a, label %_RNvXs4_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexSNtNtNtNtCsfkBndxG8xzO_14regex_automata3nfa8thompson10range_trie10SplitRangeE5indexB1z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 %1, i64 3, ptr align 8 %2) #27
  unreachable

_RNvXs4_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexSNtNtNtNtCsfkBndxG8xzO_14regex_automata3nfa8thompson10range_trie10SplitRangeE5indexB1z_.exit: ; preds = %bb.a
  %i.b = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.c = insertvalue { ptr, i64 } %i.b, i64 %1, 1
  ret { ptr, i64 } %i.c
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCsfcggljOhZkm_12regex_syntax3hir10PropertiesNtB5_5Debug3fmtCsfkBndxG8xzO_14regex_automata(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %2)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.c = call align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsfcggljOhZkm_12regex_syntax3hir10PropertiesINtNtNtBa_5slice4iter4IterB14_EECsfkBndxG8xzO_14regex_automata(ptr nonnull align 8 %i.a, ptr %0, ptr %i.b)
end_hunk_0
